Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNSt17_Function_handlerIFvRN4crow8responseEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN4crow8responseEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !179
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN4crow8responseEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFvRN4crow8responseEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFvRN4crow8responseEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !179
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN4crow8responseEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFvRN4crow8responseEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFvRN4crow8responseEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(184) ptr @_ZN4crow6Router8new_ruleINS_10TaggedRuleIJEEEEERDaRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #43 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !160
  %i.d = load ptr, ptr %1, align 8, !tbaa !164    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.f, ptr %i.a, align 8, !tbaa !162
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %3, align 8, !tbaa !164
  %i.i = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.i, ptr %i.c, align 8, !tbaa !165
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !165
  store i8 %i.k, ptr %i.j, align 1, !tbaa !165
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !166
  %i.n = load ptr, ptr %3, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !164    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.m, align 8, !tbaa !166  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.c, align 8, !tbaa !165
  store i64 %i.v, ptr %i.p, align 8, !tbaa !165
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.w = phi ptr [ %i.p, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.x = phi i64 [ %i.s, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.m, align 8, !tbaa !166
  store i8 0, ptr %i.c, align 8, !tbaa !165
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !166
  store i8 0, ptr %i.z, align 8, !tbaa !165
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 2, ptr %i.ab, align 8, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !160
  %i.ae = icmp eq ptr %i.w, %i.p
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.af = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.w, ptr %i.ac, align 8, !tbaa !164
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !165
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.x, ptr %i.ai, align 8, !tbaa !166
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.al, align 8, !tbaa !166
  store i8 0, ptr %i.ak, align 8, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i8 0, ptr %i.am, align 8, !tbaa !255
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4crow10TaggedRuleIJEEE, i64 16), ptr %i.b, align 8, !tbaa !257
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3576 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !325 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3592 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !326
  %.not.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !273
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !325
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJEEEEEERS5_DpOT_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !324 ; 7 uses
  %i.aw = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #43 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr %i.b, ptr %i.bh, align 8, !tbaa !273
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bg, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bp ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.av, i64 %i.bp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %i.bq = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !273, !alias.scope !1674
  %wide.load21 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !273, !alias.scope !1674
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !1673
  store <2 x i64> %wide.load21, ptr %i.br, align 8, !tbaa !273, !alias.scope !1673
  %4 = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !273, !alias.scope !1674
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !273, !alias.scope !1674
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !1671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1674
  store i64 %i.bt, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1673
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1674
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1672

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bn, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !324
  store ptr %i.bw, ptr %i.aq, align 8, !tbaa !325
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bx, ptr %i.as, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJEEEEEERS5_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.b

bb.k:                                             ; preds = %.noexc.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #41
  resume { ptr, i32 } %i.by
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4crow10TaggedRuleIJEEE, i64 16), ptr %0, align 8, !tbaa !257
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN4crow8BaseRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJEED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4crow10TaggedRuleIJEEE, i64 16), ptr %0, align 8, !tbaa !257
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4crow10TaggedRuleIJEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN4crow10TaggedRuleIJEED2Ev.exit unwind label %bb.c, !inline_history !1675 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #42, !inline_history !1675
  unreachable

_ZN4crow10TaggedRuleIJEED2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZN4crow8BaseRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(184) %0) #40, !inline_history !1675
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJEE8validateEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %.not.i.not = icmp eq i64 %i.c, 0
  br i1 %.not.i.not, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.256, i64 noundef 0, i64 noundef 0) #39
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.e = load i8, ptr %i.d, align 1, !tbaa !165
  %.not = icmp eq i8 %i.e, 47
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.253)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #40
  br label %bb.p

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !244
  %.not.i.i.not = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !166
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, ptr @.str.241, ptr @.str.254
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull %i.o)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.255)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
          to label %bb.q unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.thread: ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !164    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.v = load i64, ptr %i.t, align 8, !tbaa !165
  %i.w = add i64 %i.v, 1
end_hunk_0
begin_hunk_1_@_ZN4crow6ServerINS_4CrowIJEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJEE3runEv:bb.a
_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit:           ; preds = %bb.c, %bb.d
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.bz

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.ce

bb.f:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !1084
  %i.l = trunc i32 %i.k to i16
  %i.m = add i16 %i.l, -1                         ; 4 uses
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %.not95 = icmp eq i16 %i.m, 0                   ; 2 uses
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.o

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = zext i16 %i.m to i64                     ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !357  ; 3 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !356  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 5                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.s
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ab = sub nuw nsw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ab)
  br label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ac = icmp ugt i64 %i.z, %i.s
  br i1 %i.ac, label %bb.i, label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i ], [ %i.ad, %bb.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #42
  unreachable

_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.u
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !357
  br label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit

_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1093 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !361 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.s
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit
  %i.at = sub nuw nsw i64 %i.s, %i.ar
  tail call void @_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.at)
  br label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit

bb.m:                                             ; preds = %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit
  %i.au = icmp ugt i64 %i.ar, %i.s
  br i1 %i.au, label %bb.n, label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.s ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.am, %i.av
  br i1 %.not.i.i38, label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN4crow6detail10task_timerES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4crow6detail10task_timerES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.n
  store ptr %i.av, ptr %i.al, align 8, !tbaa !1093
  br label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit: ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPPN4crow6detail10task_timerES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store i32 0, ptr %5, align 4
  br i1 %.not95, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.v

bb.o:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %.01288 = phi i32 [ 0, %.lr.ph ], [ %i.cm, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %i.bb = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43 ; 4 uses
  invoke void @_ZN4asio10io_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !380 ; 6 uses
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !383
  %.not.i39 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !382
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.be, ptr %i.p, align 8, !tbaa !380
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.r:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !379 ; 10 uses
  %i.bg = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.s, label %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #43 ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  store ptr %i.bb, ptr %i.br, align 8, !tbaa !382
  %.not10.i.i.i.i.i = icmp eq ptr %i.bf, %i.bc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = add i64 %i.bg, -8
  %i.bt = sub i64 %i.bs, %i.bh                    ; 3 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bt, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader165, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bw = and i64 %i.bt, -8
  %i.bx = add i64 %i.bw, 8                        ; 2 uses
  %i.by = getelementptr i8, ptr %i.bq, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.bf, i64 %i.bx
  %bound0 = icmp ult ptr %i.bq, %i.bz
  %bound1 = icmp ult ptr %i.bf, %i.by
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader165, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bv, 4611686018427387900     ; 3 uses
  %i.ca = shl i64 %n.vec, 3                       ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bq, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bf, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.cd ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.bf, i64 %i.cd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  %i.ce = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep162, align 8, !tbaa !382, !alias.scope !2592
  %wide.load163 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !382, !alias.scope !2592
  %i.cf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !382, !alias.scope !2593, !noalias !2594
  store <2 x i64> %wide.load163, ptr %i.cf, align 8, !tbaa !382, !alias.scope !2593, !noalias !2594
  %14 = getelementptr i8, ptr %next.gep162, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep162, align 8, !tbaa !382, !alias.scope !2592
  store <2 x ptr> splat (ptr null), ptr %14, align 8, !tbaa !382, !alias.scope !2592
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !2578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader165

.lr.ph.i.i.i.i.i.preheader165:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader165, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader165 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader165 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  %i.ch = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2591
  store i64 %i.ch, ptr %.012.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2590
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2591
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ci, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2579

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bq, %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cb, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bq, ptr %i.o, align 8, !tbaa !379
  store ptr %i.ck, ptr %i.p, align 8, !tbaa !380
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.cl, ptr %i.q, align 8, !tbaa !383
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %bb.q, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cm = add nuw nsw i32 %.01288, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !2580

bb.u:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 16) #41
  br label %bb.ce

._crit_edge91:                                    ; preds = %_ZNSt14__basic_futureIvED2Ev.exit, %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !244
  %.not.i.i40.not = icmp eq ptr %i.cp, null
  br i1 %.not.i.i40.not, label %bb.an, label %bb.ai

bb.v:                                             ; preds = %.lr.ph90, %_ZNSt14__basic_futureIvED2Ev.exit
  %.089 = phi i16 [ 0, %.lr.ph90 ], [ %i.dl, %_ZNSt14__basic_futureIvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store ptr %0, ptr %7, align 8, !tbaa !1096
  store i16 %.089, ptr %i.aw, align 8, !tbaa !1097
  store ptr %5, ptr %i.ax, align 8, !tbaa !1098
  invoke void @_ZSt5asyncIZN4crow6ServerINS0_4CrowIJEEENS0_18UnixSocketAcceptorENS0_17UnixSocketAdaptorEJEE3runEvEUlvE_JEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSA_IT0_E4typeEEE4typeEESt6launchOSB_DpOSE_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !1101 ; 5 uses
  %i.cr = load ptr, ptr %i.az, align 8, !tbaa !1102
  %.not.i.i41 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i41, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr null, ptr %i.cs, align 8, !tbaa !312
  %i.ct = load <2 x ptr>, ptr %6, align 16, !tbaa !179
  store ptr null, ptr %i.ba, align 8, !tbaa !312
  store <2 x ptr> %i.ct, ptr %i.cq, align 8, !tbaa !179
  store ptr null, ptr %6, align 16, !tbaa !1105
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.cu, ptr %i.ay, align 8, !tbaa !1101
  br label %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit

bb.y:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit unwind label %bb.ag

_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.x, %bb.y
  %i.cv = load ptr, ptr %i.ba, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i43 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i43, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cw, align 8, !tbaa !314
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !315
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !257
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #40, !inline_history !108
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !257
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #40, !inline_history !108
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i44 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i44, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i = phi i32 [ %i.cz, %bb.ac ], [ %i.dj, %bb.ad ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dk, label %bb.ae, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !316

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #40
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.dl = add nuw i16 %.089, 1                    ; 2 uses
  %exitcond100.not = icmp eq i16 %i.dl, %i.m
  br i1 %exitcond100.not, label %._crit_edge91, label %bb.v, !llvm.loop !2581

bb.af:                                            ; preds = %bb.v
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn31 = phi { ptr, i32 } [ %i.dn, %bb.ag ], [ %i.dm, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.cd

bb.ai:                                            ; preds = %._crit_edge91
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !1106 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i, label %bb.an

_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i: ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ds = mul nuw nsw i64 %i.dp, 1000000          ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !398 ; 2 uses
  %i.du = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #40 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, -1
  %i.dw = sub nuw nsw i64 9223372036854775807, %i.du
  %i.dx = icmp samesign ult i64 %i.dw, %i.ds
  %or.cond = select i1 %i.dv, i1 %i.dx, i1 false
  %i.dy = add nsw i64 %i.du, %i.ds
  %.sroa.0.0.i.i.i = select i1 %or.cond, i64 9223372036854775807, i64 %i.dy
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !395, !range !274, !noundef !275
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !410, !nonnull !275, !align !411
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.eg = invoke noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.ed, ptr noundef nonnull align 8 dereferenceable(48) %i.ee, ptr noundef nonnull align 8 dereferenceable(40) %i.ef, i64 noundef -1)
          to label %.noexc45 unwind label %bb.al  ; 0 uses

.noexc45:                                         ; preds = %bb.aj
  store i8 0, ptr %i.dz, align 8, !tbaa !395
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc45, %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4crow6ServerINS_4CrowIJEEENS_11TCPAcceptorENS_13SocketAdaptorEJEE3runEv:bb.a
_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit:           ; preds = %bb.c, %bb.d
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.by

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.cd

bb.f:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !1119
  %i.k = trunc i32 %i.j to i16
  %i.l = add i16 %i.k, -1                         ; 4 uses
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %.not94 = icmp eq i16 %i.l, 0                   ; 2 uses
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.o

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = zext i16 %i.l to i64                     ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !357  ; 3 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !356  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 5                   ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.r
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.aa = sub nuw nsw i64 %i.r, %i.y
  tail call void @_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.aa)
  br label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ab = icmp ugt i64 %i.y, %i.r
  br i1 %i.ab, label %bb.i, label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.r ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, %i.ac
  br i1 %.not.i.i, label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i ], [ %i.ac, %bb.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #42
  unreachable

_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEEvPT_.exit.i.i.i.i
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !357
  br label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit

_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1093 ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !361 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3                 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.r
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit
  %i.as = sub nuw nsw i64 %i.r, %i.aq
  tail call void @_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef %i.as)
  br label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit

bb.m:                                             ; preds = %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE6resizeEm.exit
  %i.at = icmp ugt i64 %i.aq, %i.r
  br i1 %i.at, label %bb.n, label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.r ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.al, %i.au
  br i1 %.not.i.i38, label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN4crow6detail10task_timerES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4crow6detail10task_timerES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.n
  store ptr %i.au, ptr %i.ak, align 8, !tbaa !1093
  br label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit: ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPPN4crow6detail10task_timerES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store i32 0, ptr %5, align 4
  br i1 %.not94, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.v

bb.o:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %.01287 = phi i32 [ 0, %.lr.ph ], [ %i.cl, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %i.ba = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43 ; 4 uses
  invoke void @_ZN4asio10io_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !380 ; 6 uses
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !383
  %.not.i39 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !382
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bd, ptr %i.o, align 8, !tbaa !380
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.r:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !379 ; 10 uses
  %i.bf = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.s, label %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #43 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store ptr %i.ba, ptr %i.bq, align 8, !tbaa !382
  %.not10.i.i.i.i.i = icmp eq ptr %i.be, %i.bb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = add i64 %i.bf, -8
  %i.bs = sub i64 %i.br, %i.bg                    ; 3 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader164, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bv = and i64 %i.bs, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bp, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.be, i64 %i.bw
  %bound0 = icmp ult ptr %i.bp, %i.by
  %bound1 = icmp ult ptr %i.be, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader164, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 3 uses
  %i.bz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bp, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.be, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.cc ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.be, i64 %i.cc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %i.cd = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep161, align 8, !tbaa !382, !alias.scope !2638
  %wide.load162 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !382, !alias.scope !2638
  %i.ce = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !382, !alias.scope !2639, !noalias !2640
  store <2 x i64> %wide.load162, ptr %i.ce, align 8, !tbaa !382, !alias.scope !2639, !noalias !2640
  %14 = getelementptr i8, ptr %next.gep161, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep161, align 8, !tbaa !382, !alias.scope !2638
  store <2 x ptr> splat (ptr null), ptr %14, align 8, !tbaa !382, !alias.scope !2638
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !2630

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader164

.lr.ph.i.i.i.i.i.preheader164:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader164, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader164 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader164 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2637
  store i64 %i.cg, ptr %.012.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2636
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2637
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.bb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2631

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bp, %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ca, %middle.block ], [ %i.ci, %.lr.ph.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bp, ptr %i.n, align 8, !tbaa !379
  store ptr %i.cj, ptr %i.o, align 8, !tbaa !380
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.ck, ptr %i.p, align 8, !tbaa !383
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %bb.q, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cl = add nuw nsw i32 %.01287, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !2632

bb.u:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 16) #41
  br label %bb.cd

._crit_edge90:                                    ; preds = %_ZNSt14__basic_futureIvED2Ev.exit, %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !244
  %.not.i.i40.not = icmp eq ptr %i.co, null
  br i1 %.not.i.i40.not, label %bb.am, label %bb.ai

bb.v:                                             ; preds = %.lr.ph89, %_ZNSt14__basic_futureIvED2Ev.exit
  %.088 = phi i16 [ 0, %.lr.ph89 ], [ %i.dk, %_ZNSt14__basic_futureIvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store ptr %0, ptr %7, align 8, !tbaa !1126
  store i16 %.088, ptr %i.av, align 8, !tbaa !1127
  store ptr %5, ptr %i.aw, align 8, !tbaa !1098
  invoke void @_ZSt5asyncIZN4crow6ServerINS0_4CrowIJEEENS0_11TCPAcceptorENS0_13SocketAdaptorEJEE3runEvEUlvE_JEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSA_IT0_E4typeEEE4typeEESt6launchOSB_DpOSE_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.ax, align 8, !tbaa !1101 ; 5 uses
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !1102
  %.not.i.i41 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i41, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr null, ptr %i.cr, align 8, !tbaa !312
  %i.cs = load <2 x ptr>, ptr %6, align 16, !tbaa !179
  store ptr null, ptr %i.az, align 8, !tbaa !312
  store <2 x ptr> %i.cs, ptr %i.cp, align 8, !tbaa !179
  store ptr null, ptr %6, align 16, !tbaa !1105
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.ct, ptr %i.ax, align 8, !tbaa !1101
  br label %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit

bb.y:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit unwind label %bb.ag

_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.x, %bb.y
  %i.cu = load ptr, ptr %i.az, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i43 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i43, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cv, align 8, !tbaa !314
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !315
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !257
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #40, !inline_history !108
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !257
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #40, !inline_history !108
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i44 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i44, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i = phi i32 [ %i.cy, %bb.ac ], [ %i.di, %bb.ad ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.ae, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !316

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #40
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.dk = add nuw i16 %.088, 1                    ; 2 uses
  %exitcond99.not = icmp eq i16 %i.dk, %i.l
  br i1 %exitcond99.not, label %._crit_edge90, label %bb.v, !llvm.loop !2633

bb.af:                                            ; preds = %bb.v
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn31 = phi { ptr, i32 } [ %i.dm, %bb.ag ], [ %i.dl, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.cc

bb.ai:                                            ; preds = %._crit_edge90
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !1106 ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i, label %bb.am

_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i: ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.dr = mul nuw nsw i64 %i.do, 1000000          ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !398 ; 2 uses
  %i.dt = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #40 ; 3 uses
  %i.du = icmp sgt i64 %i.dt, -1
  %i.dv = sub nuw nsw i64 9223372036854775807, %i.dt
  %i.dw = icmp samesign ult i64 %i.dv, %i.dr
  %or.cond = select i1 %i.du, i1 %i.dw, i1 false
  %i.dx = add nsw i64 %i.dt, %i.dr
  %.sroa.0.0.i.i.i = select i1 %or.cond, i64 9223372036854775807, i64 %i.dx
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !395, !range !274, !noundef !275
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !410, !nonnull !275, !align !411
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ef = invoke noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.ec, ptr noundef nonnull align 8 dereferenceable(48) %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %i.ee, i64 noundef -1)
          to label %.noexc45 unwind label %bb.ax  ; 0 uses

.noexc45:                                         ; preds = %bb.aj
  store i8 0, ptr %i.dy, align 8, !tbaa !395
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc45, %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4crow9Blueprint15new_rule_taggedILm5EEERNS_11black_magic9argumentsIXT_EE4type6rebindINS_10TaggedRuleEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !166
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.aj = phi i64 [ %i.af, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !166, !alias.scope !2658
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !164
  store i64 0, ptr %i.ak, align 8, !tbaa !166
  store i8 0, ptr %i.ac, align 8, !tbaa !165
  %i.am = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !165
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.aq = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #43
          to label %bb.g unwind label %bb.o       ; 17 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !164   ; 3 uses
  %i.at = icmp eq ptr %i.as, %i.aa
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.g
  %i.au = load i64, ptr %i.al, align 8, !tbaa !166 ; 4 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !166
  store ptr %i.aa, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.al, align 8, !tbaa !166
  store i8 0, ptr %i.aa, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ba = load <2 x i64>, ptr %i.al, align 8, !tbaa !165
  %.pre = load i64, ptr %i.al, align 8, !tbaa !166 ; 2 uses
  store <2 x i64> %i.ba, ptr %i.az, align 8, !tbaa !165
  store ptr %i.aa, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.al, align 8, !tbaa !166
  store i8 0, ptr %i.aa, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bc = icmp eq ptr %i.as, %i.ar
  br i1 %i.bc, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bd = phi ptr [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.be = phi ptr [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.bf = phi i64 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bi = load i64, ptr %i.ar, align 8, !tbaa !165
  store i64 %i.bi, ptr %i.bb, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.h
  %i.bj = phi ptr [ %i.bd, %bb.h ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ] ; 3 uses
  %i.bk = phi ptr [ %i.be, %bb.h ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.bl = phi i64 [ %i.bf, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ] ; 3 uses
  %i.bm = phi ptr [ %i.bd, %bb.h ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ] ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !164
  store i64 0, ptr %i.bk, align 8, !tbaa !166
  store i8 0, ptr %i.ar, align 8, !tbaa !165
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !160
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 0, ptr %i.bp, align 8, !tbaa !166
  store i8 0, ptr %i.bo, align 8, !tbaa !165
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 2, ptr %i.bq, align 8, !tbaa !254
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 3 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !160
  %i.bt = icmp eq ptr %i.bm, %i.bj
  br i1 %i.bt, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bu = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.bm, ptr %i.br, align 8, !tbaa !164
  %i.bw = load i64, ptr %i.bj, align 8, !tbaa !165
  store i64 %i.bw, ptr %i.bs, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store i64 %i.bl, ptr %i.bx, align 8, !tbaa !166
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 2 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !160
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store i64 0, ptr %i.ca, align 8, !tbaa !166
  store i8 0, ptr %i.bz, align 8, !tbaa !165
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store i8 0, ptr %i.cb, align 8, !tbaa !255
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE, i64 16), ptr %i.aq, align 8, !tbaa !257
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !325 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !326
  %.not.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store ptr %i.aq, ptr %i.ch, align 8, !tbaa !273
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !325
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !324 ; 7 uses
  %i.cm = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 4 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
          to label %.noexc14 unwind label %bb.o

.noexc14:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #43
          to label %.noexc15 unwind label %bb.o   ; 7 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store ptr %i.aq, ptr %i.cx, align 8, !tbaa !273
  %.not10.i.i.i.i.i = icmp eq ptr %i.cl, %i.ch
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc15
  %i.cy = add i64 %i.cm, -8
  %i.cz = sub i64 %i.cy, %i.cn                    ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %i.dc = shl i64 %n.vec, 3                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cw, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.cl, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.df ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.cl, i64 %i.df ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.dg = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !273, !alias.scope !2660
  %wide.load53 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !273, !alias.scope !2660
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !2659
  store <2 x i64> %wide.load53, ptr %i.dh, align 8, !tbaa !273, !alias.scope !2659
  %6 = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !273, !alias.scope !2660
  store <2 x ptr> splat (ptr null), ptr %6, align 8, !tbaa !273, !alias.scope !2660
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !2654

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader55

.lr.ph.i.i.i.i.i.preheader55:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader55, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.dj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2660
  store i64 %i.dj, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2659
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2660
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, %i.ch
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2655

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cw, %.noexc15 ], [ %i.dd, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.co) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !324
  store ptr %i.dm, ptr %i.cg, align 8, !tbaa !325
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dn, ptr %i.ci, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.j
  %i.do = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.aa
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit
  %i.dq = load i64, ptr %i.aa, align 8, !tbaa !165
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret ptr %i.aq

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.e
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.n
  %i.dv = load i64, ptr %i.e, align 8, !tbaa !165
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.o:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.aa
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.o
  %i.ea = load i64, ptr %i.aa, align 8, !tbaa !165
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn = phi { ptr, i32 } [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.dx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.633", align 16 ; 10 uses
  %3 = alloca %class.anon.639, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !160
  %i.b = load ptr, ptr %1, align 8, !tbaa !164    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !164
  %i.i = load i64, ptr %i.c, align 8, !tbaa !165
  store i64 %i.i, ptr %i.a, align 8, !tbaa !165
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !166
  br label %_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit

_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 4 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.m, align 8, !tbaa !166
  store ptr %i.c, ptr %1, align 8, !tbaa !164
  store i64 0, ptr %i.l, align 8, !tbaa !166
  store i8 0, ptr %i.c, align 8, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.o, align 8
  %i.p = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #43
          to label %.noexc unwind label %bb.g     ; 5 uses

.noexc:                                           ; preds = %_ZZN4crow4CrowIJEE13add_blueprintEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.j, %i.a
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc
  %i.s = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.t, i1 false)
  br label %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  store ptr %i.j, ptr %i.p, align 8, !tbaa !164
  %i.u = load i64, ptr %i.a, align 8, !tbaa !165
  store i64 %i.u, ptr %i.q, align 8, !tbaa !165
  br label %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i

_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.k, ptr %i.w, align 8, !tbaa !166
  store ptr %i.a, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.m, align 8, !tbaa !166
  store i8 0, ptr %i.a, align 8, !tbaa !165
  store ptr %i.p, ptr %2, align 16, !tbaa !179
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !178
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.n, align 8, !tbaa !165
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !179
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !179 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %i.v, align 16, !tbaa !179
  store ptr @_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_E9_M_invokeERKSt9_Any_dataS2_S4_OSA_, ptr %i.y, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit

bb.d:                                             ; preds = %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE13add_blueprintEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #42
  unreachable

bb.f:                                             ; preds = %bb.d
  %.pre6 = load ptr, ptr %3, align 8, !tbaa !164  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.ae = icmp eq ptr %.pre6, %i.a
  br i1 %i.ae, label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE13add_blueprintEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_:bb.a
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i4: ; preds = %bb.g
  %i.aj = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %bb.g
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !165
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.al) #41
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit5

_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(184) ptr @_ZN4crow6Router8new_ruleINS_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEERDaRKS8_(ptr noundef nonnull align 8 dereferenceable(3656) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #43 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !160
  %i.d = load ptr, ptr %1, align 8, !tbaa !164    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.f, ptr %i.a, align 8, !tbaa !162
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %3, align 8, !tbaa !164
  %i.i = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.i, ptr %i.c, align 8, !tbaa !165
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !165
  store i8 %i.k, ptr %i.j, align 1, !tbaa !165
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !166
  %i.n = load ptr, ptr %3, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !164    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.m, align 8, !tbaa !166  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.c, align 8, !tbaa !165
  store i64 %i.v, ptr %i.p, align 8, !tbaa !165
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.w = phi ptr [ %i.p, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.x = phi i64 [ %i.s, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.m, align 8, !tbaa !166
  store i8 0, ptr %i.c, align 8, !tbaa !165
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !166
  store i8 0, ptr %i.z, align 8, !tbaa !165
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 2, ptr %i.ab, align 8, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !160
  %i.ae = icmp eq ptr %i.w, %i.p
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.af = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.w, ptr %i.ac, align 8, !tbaa !164
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !165
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.x, ptr %i.ai, align 8, !tbaa !166
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !160
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.al, align 8, !tbaa !166
  store i8 0, ptr %i.ak, align 8, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i8 0, ptr %i.am, align 8, !tbaa !255
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE, i64 16), ptr %i.b, align 8, !tbaa !257
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3576 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !325 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3592 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !326
  %.not.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !273
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !325
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !324 ; 7 uses
  %i.aw = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #43 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr %i.b, ptr %i.bh, align 8, !tbaa !273
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bg, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bp ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.av, i64 %i.bp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %i.bq = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !273, !alias.scope !2759
  %wide.load16 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !273, !alias.scope !2759
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !2758
  store <2 x i64> %wide.load16, ptr %i.br, align 8, !tbaa !273, !alias.scope !2758
  %4 = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !273, !alias.scope !2759
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !273, !alias.scope !2759
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2756

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.preheader18:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2759
  store i64 %i.bt, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2758
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2759
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2757

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bn, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !324
  store ptr %i.bw, ptr %i.aq, align 8, !tbaa !325
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bx, ptr %i.as, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.b

bb.k:                                             ; preds = %.noexc.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #41
  resume { ptr, i32 } %i.by
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_E9_M_invokeERKSt9_Any_dataS2_S4_OSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  tail call void @_ZSt13__invoke_implIvRZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS0_4CrowIJEE14add_static_dirEvEUlRNS0_8responseES7_E_EEvOT_EUlRNS0_7requestESD_S7_E_JSI_SD_S7_EESF_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_EUlRNS_7requestESC_S6_E_, ptr %0, align 8, !tbaa !991
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %i.a, ptr %0, align 8, !tbaa !179
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS1_4CrowIJEE14add_static_dirEvEUlRNS1_8responseES8_E_EEvOT_EUlRNS1_7requestESE_S8_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvRZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS0_4CrowIJEE14add_static_dirEvEUlRNS0_8responseES7_E_EEvOT_EUlRNS0_7requestESD_S7_E_JSI_SD_S7_EESF_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !160
  %i.b = load ptr, ptr %3, align 8, !tbaa !164    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166  ; 4 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.j, align 8, !tbaa !166
  store ptr %i.c, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.i, align 8, !tbaa !166
  store i8 0, ptr %i.c, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !160
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.n = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !165
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !166 ; 2 uses
  store <2 x i64> %i.n, ptr %i.m, align 8, !tbaa !165
  store ptr %i.c, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.l, align 8, !tbaa !166
  store i8 0, ptr %i.c, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !160
  %i.p = icmp eq ptr %i.b, %i.a
  br i1 %i.p, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.r = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.s = phi i64 [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.b, ptr %4, align 8, !tbaa !164
  %i.v = load i64, ptr %i.a, align 8, !tbaa !165
  store i64 %i.v, ptr %i.o, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.w = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.q, %bb.b ] ; 4 uses
  %i.x = phi ptr [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.r, %bb.b ]
  %i.y = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !166
  store ptr %i.a, ptr %5, align 8, !tbaa !164
  store i64 0, ptr %i.x, align 8, !tbaa !166
  store i8 0, ptr %i.a, align 8, !tbaa !165
  invoke void @_ZZN4crow4CrowIJEE14add_static_dirEvENKUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clES3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.w
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !165
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.w
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !165
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #41
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !165
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
end_hunk_4
