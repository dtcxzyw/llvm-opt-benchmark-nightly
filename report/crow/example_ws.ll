Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNSt17_Function_handlerIFvRN4crow8responseEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:bb.a
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
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !324 ; 10 uses
  %i.aw = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
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
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #43 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr %i.b, ptr %i.bh, align 8, !tbaa !273
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bm = add i64 %i.aw, -8
  %i.bn = sub i64 %i.bm, %i.ax
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bo, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %i.bp
  %scevgep20 = getelementptr i8, ptr %i.av, i64 %i.bp
  %bound0 = icmp ult ptr %i.bg, %scevgep20
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %4 = shl i64 %n.vec, 3                          ; 2 uses
  %5 = getelementptr i8, ptr %i.bg, i64 %4        ; 2 uses
  %6 = getelementptr i8, ptr %i.av, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bq ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.av, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.br = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !273, !alias.scope !1678, !noalias !1676
  %wide.load22 = load <2 x i64>, ptr %i.br, align 8, !tbaa !273, !alias.scope !1678, !noalias !1676
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !1679, !noalias !1678
  store <2 x i64> %wide.load22, ptr %i.bs, align 8, !tbaa !273, !alias.scope !1679, !noalias !1678
  %i.bt = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !273, !alias.scope !1678, !noalias !1676
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !273, !alias.scope !1678, !noalias !1676
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !1674

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader24

.lr.ph.i.i.i.i.i.preheader24:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %5, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %6, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader24, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader24 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader24 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1677, !noalias !1676
  store i64 %i.bv, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1676, !noalias !1677
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1677, !noalias !1676
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1675

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %5, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !324
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !325
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bz, ptr %i.as, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJEEEEEERS5_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.b

bb.k:                                             ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #41
  resume { ptr, i32 } %i.ca
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
          to label %_ZN4crow10TaggedRuleIJEED2Ev.exit unwind label %bb.c, !inline_history !1680 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #42, !inline_history !1680
  unreachable

_ZN4crow10TaggedRuleIJEED2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZN4crow8BaseRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(184) %0) #40, !inline_history !1680
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
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.m ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !160, !alias.scope !1850, !noalias !1851
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !164, !alias.scope !1851, !noalias !1850 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !166, !alias.scope !1851, !noalias !1850 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !1852
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !164, !alias.scope !1850, !noalias !1851
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !165, !alias.scope !1851, !noalias !1850
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !165, !alias.scope !1850, !noalias !1851
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !166, !alias.scope !1851, !noalias !1850
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !166, !alias.scope !1850, !noalias !1851
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !164, !alias.scope !1851, !noalias !1850
  store i64 0, ptr %i.bc, align 8, !tbaa !166, !alias.scope !1851, !noalias !1850
  store i8 0, ptr %i.au, align 8, !tbaa !165, !alias.scope !1851, !noalias !1850
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !43

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !571
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #41
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !569
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !570
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !571
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !648  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !276  ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !39
  br label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !312  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !314
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !315
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !257
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #40, !inline_history !30
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !257
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #40, !inline_history !30
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i2 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i4 = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ab, label %bb.k, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail20initiate_async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEclIZN4crow9websocket10ConnectionINS9_13SocketAdaptorENS9_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_St6vectorINS_12const_bufferESaISL_EENS0_14transfer_all_tEEEvOT_RKT0_OT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::detail::write_op", align 8 ; 19 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1857, !nonnull !275, !align !411
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %i.a, ptr %4, align 8, !tbaa !681
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !598  ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !604    ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread, label %bb.b

_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr null, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !599
  store ptr null, ptr %i.i, align 8, !tbaa !598
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br label %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.h, 9223372036854775792
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.c, !prof !316

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #43 ; 3 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !604
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !599
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !605
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !44

_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.r, ptr %5, align 8, !tbaa !598
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ 0, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i ]
  %.sroa.02.07.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i.i, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !162
  %i.t = add i64 %.sroa.3.0.copyload.i.i.i.i, %.08.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i5, label %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !45

_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread
  %i.v = phi ptr [ %i.k, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread ], [ %i.p, %.lr.ph.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %.0.lcssa.i.i.i.i, ptr %i.w, align 8, !tbaa !686
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.x, align 8, !tbaa !690
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load <2 x ptr>, ptr %1, align 8, !tbaa !179
  store ptr null, ptr %i.aa, align 8, !tbaa !312
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !179
  store ptr null, ptr %1, align 8, !tbaa !583
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !179
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44
  invoke void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EclESO_mi(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 0, ptr nonnull %i.af, i64 noundef 0, i32 noundef 1)
          to label %_ZN4asio6detail14start_write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EEvRT_RKT0_RKT1_RT2_RT3_.exit unwind label %bb.d, !inline_history !1853

bb.d:                                             ; preds = %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #40, !inline_history !1853
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %i.ag

_ZN4asio6detail14start_write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EEvRT_RKT0_RKT1_RT2_RT3_.exit: ; preds = %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !648 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail14start_write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EEvRT_RKT0_RKT1_RT2_RT3_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !276 ; 2 uses
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.an = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.al, %bb.f ], [ %i.an, %bb.g ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.h, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !257
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #40, !inline_history !1854
  br label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZN4asio6detail14start_write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EEvRT_RKT0_RKT1_RT2_RT3_.exit
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !312 ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i.i, label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.at, align 8, !tbaa !314
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !315
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !257
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #40, !inline_history !1855
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !257
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #40, !inline_history !1855
  br label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i2.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i2.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.m:                                             ; preds = %bb.k
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4.i.i = phi i32 [ %i.aw, %bb.l ], [ %i.bg, %bb.m ]
  %i.bh = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.bh, label %bb.n, label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i, !prof !316

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #40
  br label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i

_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.j, %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !604 ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_ED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !599
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #41
  br label %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_ED2Ev.exit

_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_ED2Ev.exit: ; preds = %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_13SocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EclESO_mi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::error_code", align 8   ; 3 uses
  %6 = alloca %"struct.asio::detail::prepared_buffers", align 8 ; 8 uses
  store i32 %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %4, ptr %i.b, align 8, !tbaa !690
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i11

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0
  %i.c = select i1 %.not.i.i, i64 65536, i64 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !603, !noalias !1863
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre24 = load ptr, ptr %.phi.trans.insert23, align 8, !tbaa !603, !noalias !1863
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre26 = load i64, ptr %.phi.trans.insert25, align 8, !tbaa !691, !noalias !1863
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread, %bb.b
  %i.d = phi i64 [ %.pre26, %bb.b ], [ %i.bq, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ]
  %i.e = phi ptr [ %.pre24, %bb.b ], [ %i.ao, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ] ; 3 uses
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.am, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ]
  %.0 = phi i64 [ %i.c, %bb.b ], [ 65536, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ] ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !692, !nonnull !275, !align !411 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %6, i8 0, i64 264, i1 false), !alias.scope !1863
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.d ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 3 uses
  %i.j = icmp ne ptr %i.h, %i.e
  %i.k = icmp ne i64 %.0, 0
  %or.cond20.i = and i1 %i.k, %i.j
  br i1 %or.cond20.i, label %.lr.ph.preheader.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7prepareEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !693, !noalias !1863 ; 2 uses
  %.sroa.0.0.copyload.peel.i = load ptr, ptr %i.h, align 8, !tbaa !179, !noalias !1863
  %.sroa.4.0..sroa_idx9.peel.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0.copyload.peel.i = load i64, ptr %.sroa.4.0..sroa_idx9.peel.i, align 8, !tbaa !162, !noalias !1863 ; 3 uses
  %spec.select.i.peel.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.4.0.copyload.peel.i) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.peel.i, i64 %spec.select.i.peel.i
  %i.o = sub nuw i64 %.sroa.4.0.copyload.peel.i, %spec.select.i.peel.i
  %spec.select.i6.peel.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !179, !alias.scope !1863
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %spec.select.i6.peel.i, ptr %.sroa.4.0..sroa_idx.peel.i, align 8, !tbaa !162, !alias.scope !1863
  %i.p = sub nsw i64 %.0, %spec.select.i6.peel.i  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.as

bb.ak:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %_ZNSt8weak_ptrIvEC2ERKS0_.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #40
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.al ], [ %i.dv, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br i1 %.not.i.i.i, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 3 uses
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i25 = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i25, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !276 ; 2 uses
  %i.ea = add nsw i32 %i.dz, -1
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

bb.ap:                                            ; preds = %bb.an
  %i.eb = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i27 = phi i32 [ %i.dz, %bb.ao ], [ %i.eb, %bb.ap ]
  %i.ec = icmp eq i32 %.0.i.i.i.i27, 1
  br i1 %i.ec, label %bb.aq, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26
  %i.ed = load ptr, ptr %i.ab, align 8, !tbaa !257
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #40, !inline_history !39
  br label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28

_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28: ; preds = %.loopexit, %.loopexit.split-lp, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26, %bb.am, %bb.k
  %.pn8 = phi { ptr, i32 } [ %.pn, %bb.aq ], [ %i.av, %bb.k ], [ %.pn, %bb.am ], [ %.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eg = load ptr, ptr %3, align 8, !tbaa !604   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit30, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !599
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #41
  br label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit30

_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit30: ; preds = %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %.pn8

bb.as:                                            ; preds = %bb.b, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !648  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !276  ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !39
  br label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !312  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !314
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !315
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !257
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #40, !inline_history !76
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !257
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #40, !inline_history !76
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i2 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i4 = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ab, label %bb.k, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail20initiate_async_writeINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEEEclIZN4crow9websocket10ConnectionINS9_17UnixSocketAdaptorENS9_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_St6vectorINS_12const_bufferESaISL_EENS0_14transfer_all_tEEEvOT_RKT0_OT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::detail::write_op.419", align 8 ; 19 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2162, !nonnull !275, !align !411
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %i.a, ptr %4, align 8, !tbaa !881
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !598  ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !604    ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread, label %bb.b

_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr null, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !599
  store ptr null, ptr %i.i, align 8, !tbaa !598
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br label %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.h, 9223372036854775792
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.c, !prof !316

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #43 ; 3 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !604
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !599
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !605
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !44

_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.r, ptr %5, align 8, !tbaa !598
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ 0, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i ]
  %.sroa.02.07.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i.i, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !162
  %i.t = add i64 %.sroa.3.0.copyload.i.i.i.i, %.08.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i5, label %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !45

_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread
  %i.v = phi ptr [ %i.k, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread ], [ %i.p, %.lr.ph.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EEC2ERKS3_.exit.i.i.thread ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %.0.lcssa.i.i.i.i, ptr %i.w, align 8, !tbaa !686
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.x, align 8, !tbaa !884
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load <2 x ptr>, ptr %1, align 8, !tbaa !179
  store ptr null, ptr %i.aa, align 8, !tbaa !312
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !179
  store ptr null, ptr %1, align 8, !tbaa !852
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !179
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44
  invoke void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EclESO_mi(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 0, ptr nonnull %i.af, i64 noundef 0, i32 noundef 1)
          to label %_ZN4asio6detail14start_write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EEvRT_RKT0_RKT1_RT2_RT3_.exit unwind label %bb.d, !inline_history !2158

bb.d:                                             ; preds = %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #40, !inline_history !2158
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %i.ag

_ZN4asio6detail14start_write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EEvRT_RKT0_RKT1_RT2_RT3_.exit: ; preds = %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EC2ERS6_RKSA_RSG_RSR_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !648 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail14start_write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EEvRT_RKT0_RKT1_RT2_RT3_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !276 ; 2 uses
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.an = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.al, %bb.f ], [ %i.an, %bb.g ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.h, label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !257
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #40, !inline_history !2159
  br label %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZN4asio6detail14start_write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EEvRT_RKT0_RKT1_RT2_RT3_.exit
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !312 ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i.i, label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.at, align 8, !tbaa !314
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !315
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !257
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #40, !inline_history !2160
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !257
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #40, !inline_history !2160
  br label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i2.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i2.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.m:                                             ; preds = %bb.k
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4.i.i = phi i32 [ %i.aw, %bb.l ], [ %i.bg, %bb.m ]
  %i.bh = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.bh, label %bb.n, label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i, !prof !316

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #40
  br label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i

_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.j, %_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !604 ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_ED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !599
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #41
  br label %_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_ED2Ev.exit

_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_ED2Ev.exit: ; preds = %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE8do_writeEvENUlRKSt10error_codemE_D2Ev.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEESt6vectorINS_12const_bufferESaIS8_EEN9__gnu_cxx17__normal_iteratorIPKS8_SA_EENS0_14transfer_all_tEZN4crow9websocket10ConnectionINSH_17UnixSocketAdaptorENSH_4CrowIJEEEE8do_writeEvEUlRKSt10error_codemE_EclESO_mi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::error_code", align 8   ; 3 uses
  %6 = alloca %"struct.asio::detail::prepared_buffers", align 8 ; 8 uses
  store i32 %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %4, ptr %i.b, align 8, !tbaa !884
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i11

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0
  %i.c = select i1 %.not.i.i, i64 65536, i64 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !603, !noalias !2168
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre24 = load ptr, ptr %.phi.trans.insert23, align 8, !tbaa !603, !noalias !2168
  %.phi.trans.insert25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre26 = load i64, ptr %.phi.trans.insert25, align 8, !tbaa !691, !noalias !2168
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread, %bb.b
  %i.d = phi i64 [ %.pre26, %bb.b ], [ %i.bq, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ]
  %i.e = phi ptr [ %.pre24, %bb.b ], [ %i.ao, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ] ; 3 uses
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.am, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ]
  %.0 = phi i64 [ %i.c, %bb.b ], [ 65536, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7consumeEm.exit.thread ] ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !885, !nonnull !275, !align !411 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %6, i8 0, i64 264, i1 false), !alias.scope !2168
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.d ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 3 uses
  %i.j = icmp ne ptr %i.h, %i.e
  %i.k = icmp ne i64 %.0, 0
  %or.cond20.i = and i1 %i.k, %i.j
  br i1 %or.cond20.i, label %.lr.ph.preheader.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt6vectorIS2_SaIS2_EEN9__gnu_cxx17__normal_iteratorIPKS2_S5_EEE7prepareEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4asio12const_bufferESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !693, !noalias !2168 ; 2 uses
  %.sroa.0.0.copyload.peel.i = load ptr, ptr %i.h, align 8, !tbaa !179, !noalias !2168
  %.sroa.4.0..sroa_idx9.peel.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0.copyload.peel.i = load i64, ptr %.sroa.4.0..sroa_idx9.peel.i, align 8, !tbaa !162, !noalias !2168 ; 3 uses
  %spec.select.i.peel.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.4.0.copyload.peel.i) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.peel.i, i64 %spec.select.i.peel.i
  %i.o = sub nuw i64 %.sroa.4.0.copyload.peel.i, %spec.select.i.peel.i
  %spec.select.i6.peel.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.0) ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !179, !alias.scope !2168
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %spec.select.i6.peel.i, ptr %.sroa.4.0..sroa_idx.peel.i, align 8, !tbaa !162, !alias.scope !2168
  %i.p = sub nsw i64 %.0, %spec.select.i6.peel.i  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4crow8mustache10template_t5parseEv:._crit_edge.i.i
.preheader919:                                    ; preds = %.preheader920, %.preheader919
  %.0783 = phi i64 [ %i.dz, %.preheader919 ], [ %i.cy, %.preheader920 ] ; 3 uses
  %i.dz = add i64 %.0783, -1                      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !165
  %i.ec = icmp eq i8 %i.eb, 32
  br i1 %i.ec, label %.preheader919, label %bb.z, !llvm.loop !2363

bb.z:                                             ; preds = %.preheader919
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !2420 ; 3 uses
  %i.ee = load ptr, ptr %i.l, align 8, !tbaa !998
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = sdiv exact i64 %i.eh, 20
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  %.not.i275 = icmp eq ptr %.sroa.11.02307, %.sroa.22.02308
  br i1 %.not.i275, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %i.ej, ptr %.sroa.11.02307, align 4, !tbaa !276
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.ek = ptrtoint ptr %.sroa.11.02307 to i64
  %i.el = ptrtoint ptr %.sroa.0.02306 to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 6 uses
  %i.en = icmp eq i64 %i.em, 9223372036854775804
  br i1 %i.en, label %bb.ac, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
          to label %.noexc278 unwind label %.loopexit.split-lp983

.noexc278:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.eo = ashr exact i64 %i.em, 2                 ; 3 uses
  %.sroa.speculated.i.i.i276 = call i64 @llvm.umax.i64(i64 %i.eo, i64 1)
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i276, %i.eo ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  %i.er = call i64 @llvm.umin.i64(i64 %i.ep, i64 2305843009213693951)
  %i.es = select i1 %i.eq, i64 2305843009213693951, i64 %i.er ; 3 uses
  %.not.i.i.i277 = icmp ne i64 %i.es, 0
  call void @llvm.assume(i1 %.not.i.i.i277)
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #43
          to label %.noexc279 unwind label %.loopexit982 ; 4 uses

.noexc279:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.em ; 2 uses
  store i32 %i.ej, ptr %i.ev, align 4, !tbaa !276
  %i.ew = icmp sgt i64 %i.em, 0
  br i1 %i.ew, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ad:                                            ; preds = %.noexc279
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eu, ptr align 4 %.sroa.0.02306, i64 %i.em, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ad, %.noexc279
  %.not.i17.i.i = icmp eq ptr %.sroa.0.02306, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.02306, i64 noundef %i.em) #41
  %.pre1533.pre.a = load ptr, ptr %i.m, align 8, !tbaa !2420
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %.pre1533.a = phi ptr [ %.pre1533.pre.a, %bb.ae ], [ %i.ed, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.es
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.aa
  %i.ey = phi ptr [ %.pre1533.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ed, %bb.aa ] ; 11 uses
  %.sroa.0.7 = phi ptr [ %i.eu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.02306, %bb.aa ] ; 4 uses
  %.pn912 = phi ptr [ %i.ev, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.02307, %bb.aa ]
  %.sroa.22.7 = phi ptr [ %i.ex, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.22.02308, %bb.aa ] ; 4 uses
  %.sroa.11.3 = getelementptr inbounds nuw i8, ptr %.pn912, i64 4 ; 2 uses
  %i.ez = load ptr, ptr %i.n, align 8, !tbaa !999
  %.not.i280 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i280, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit
  store i8 0, ptr %i.ey, align 4, !tbaa !2421
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store i8 35, ptr %i.fa, align 1, !tbaa !2422
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fc = trunc i64 %storemerge221 to i32
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !1055
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fe = trunc i64 %.0783 to i32
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !1056
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !1057
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i32 3, ptr %i.fg, align 4, !tbaa !1058
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  store ptr %i.fh, ptr %i.m, align 8, !tbaa !2420
  br label %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE12emplace_backIJcNS1_10ActionTypeEiiEEERS2_DpOT_.exit

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit
  %i.fi = load ptr, ptr %i.l, align 8, !tbaa !998 ; 5 uses
  %i.fj = ptrtoint ptr %i.ey to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 4 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775800
  br i1 %i.fm, label %bb.ah, label %_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i450

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
          to label %.noexc468 unwind label %.loopexit.split-lp988

.noexc468:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i450: ; preds = %bb.ag
  %i.fn = sdiv exact i64 %i.fl, 20                ; 3 uses
  %.sroa.speculated.i.i451 = call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i451, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 461168601842738790)
  %i.fr = select i1 %i.fp, i64 461168601842738790, i64 %i.fq ; 3 uses
  %.not.i.i452 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i452)
  %i.fs = mul nuw nsw i64 %i.fr, 20
  %i.ft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #43
          to label %.noexc469 unwind label %.loopexit987 ; 5 uses

.noexc469:                                        ; preds = %_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i450
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl ; 6 uses
  store i8 0, ptr %i.fu, align 4, !tbaa !2421
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  store i8 35, ptr %i.fv, align 1, !tbaa !2422
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fx = trunc i64 %storemerge221 to i32
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !1055
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fz = trunc i64 %.0783 to i32
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !1056
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.ga, align 4, !tbaa !1057
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i32 3, ptr %i.gb, align 4, !tbaa !1058
  %.not10.i.i.i.i453 = icmp eq ptr %i.fi, %i.ey
  br i1 %.not10.i.i.i.i453, label %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i465, label %.lr.ph.i.i.i.i454

.lr.ph.i.i.i.i454:                                ; preds = %.noexc469, %.lr.ph.i.i.i.i454
  %.012.i.i.i.i455 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i454 ], [ %i.ft, %.noexc469 ] ; 2 uses
  %.0911.i.i.i.i456 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i454 ], [ %i.fi, %.noexc469 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i455, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i456, i64 20, i1 false), !tbaa.struct !2424, !alias.scope !2428
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i456, i64 20 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i455, i64 20 ; 2 uses
  %.not.i.i.i.i457 = icmp eq ptr %i.gc, %i.ey
  br i1 %.not.i.i.i.i457, label %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i465, label %.lr.ph.i.i.i.i454, !llvm.loop !2358

_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i465: ; preds = %.lr.ph.i.i.i.i454, %.noexc469
  %.0.lcssa.i.i.i.i459 = phi ptr [ %i.ft, %.noexc469 ], [ %i.gd, %.lr.ph.i.i.i.i454 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i459, i64 20
  %.not.i36.i467 = icmp eq ptr %i.fi, null
  br i1 %.not.i36.i467, label %.noexc282, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i465
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fl) #41
  br label %.noexc282

.noexc282:                                        ; preds = %bb.ai, %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i465
  store ptr %i.ft, ptr %i.l, align 8, !tbaa !998
  store ptr %i.ge, ptr %i.m, align 8, !tbaa !2420
  %i.gf = getelementptr inbounds nuw [20 x i8], ptr %i.ft, i64 %i.fr
  store ptr %i.gf, ptr %i.n, align 8, !tbaa !999
  br label %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE12emplace_backIJcNS1_10ActionTypeEiiEEERS2_DpOT_.exit

.loopexit982:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit984 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp983:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp985 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit987:                                     ; preds = %_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i450
  %lpad.loopexit989 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp988:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp990 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader922:                                    ; preds = %bb.y, %.preheader922
  %.1792 = phi i64 [ %storemerge205, %.preheader922 ], [ %i.cv, %bb.y ]
  %storemerge205 = add i64 %.1792, 1              ; 12 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dt, i64 %storemerge205
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !165
  %i.gi = icmp eq i8 %i.gh, 32
  br i1 %i.gi, label %.preheader922, label %.preheader921, !llvm.loop !2367

.preheader921:                                    ; preds = %.preheader922
  %43 = getelementptr inbounds nuw i8, ptr %i.dt, i64 %storemerge205
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader921, %bb.aj
  %.1784 = phi i64 [ %i.gj, %bb.aj ], [ %i.cy, %.preheader921 ] ; 5 uses
  %i.gj = add i64 %.1784, -1                      ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !165
  %i.gm = icmp eq i8 %i.gl, 32
  br i1 %i.gm, label %bb.aj, label %bb.ak, !llvm.loop !2368

bb.ak:                                            ; preds = %bb.aj
  %i.gn = icmp eq ptr %.sroa.0.02306, %.sroa.11.02307
  br i1 %i.gn, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.go = call ptr @__cxa_allocate_exception(i64 40) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.363, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  %i.gp = sub i64 %.1784, %storemerge205
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %storemerge205, i64 noundef %i.gp)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288.thread

bb.an:                                            ; preds = %bb.am
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4crow8mustache26invalid_template_exceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.go, ptr nonnull @_ZTIN4crow8mustache26invalid_template_exceptionE, ptr nonnull @_ZN4crow8mustache26invalid_template_exceptionD2Ev) #39
          to label %bb.gv unwind label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread: ; preds = %bb.al
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.aq:                                            ; preds = %bb.an
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.0121 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = load ptr, ptr %7, align 8, !tbaa !164   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.ar
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !165
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283, %bb.aq
  %.pn217 = phi { ptr, i32 } [ %i.gr, %bb.aq ], [ %i.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ %i.gs, %bb.ar ] ; 4 uses
  %.1122 = phi i1 [ true, %bb.aq ], [ %.0121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ %.0121, %bb.ar ] ; 2 uses
  %i.gy = load ptr, ptr %10, align 8, !tbaa !164  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !165
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  %i.hd = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288.thread: ; preds = %bb.am
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  %i.hh = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288.thread
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !165
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #41
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288
  %i.hm = load i64, ptr %i.he, align 8, !tbaa !165
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hn) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br i1 %.1122, label %bb.as, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br i1 %.1122, label %bb.as, label %.body

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289.thread
  %.pn217.pn.pn807.ph = phi { ptr, i32 } [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289.thread ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291.thread ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %.pn217.pn.pn807 = phi { ptr, i32 } [ %.pn217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %.pn217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.pn217.pn.pn807.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.go) #40
  br label %.body

bb.at:                                            ; preds = %bb.ak
  %i.ho = getelementptr inbounds i8, ptr %.sroa.11.02307, i64 -4 ; 5 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !276
  %i.hq = sext i32 %i.hp to i64
  %i.hr = load ptr, ptr %i.l, align 8, !tbaa !998 ; 5 uses
  %i.hs = getelementptr inbounds nuw [20 x i8], ptr %i.hr, i64 %i.hq ; 7 uses
  %i.ht = sub i64 %.1784, %storemerge205          ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !1055 ; 2 uses
  %i.hw = sext i32 %i.hv to i64                   ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !1056
  %i.hz = sub nsw i32 %i.hy, %i.hv
  %i.ia = sext i32 %i.hz to i64
  %i.ib = load i64, ptr %i.o, align 8, !tbaa !166 ; 5 uses
  %i.ic = icmp ugt i64 %storemerge205, %i.ib
  br i1 %i.ic, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.at
  %i.id = icmp ult i64 %i.ib, %i.hw
  br i1 %i.id, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit13.i

.invoke:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %bb.at
  %i.ie = phi i64 [ %storemerge205, %bb.at ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.377, i64 noundef %i.ie, i64 noundef %i.ib) #39
          to label %.cont unwind label %bb.bd

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit13.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.if = sub nuw i64 %i.ib, %storemerge205
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ht, i64 %i.if) ; 3 uses
  %i.ig = sub nuw i64 %i.ib, %i.hw
  %spec.select.i14.i = call noundef i64 @llvm.umin.i64(i64 %i.ia, i64 %i.ig) ; 3 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %spec.select.i14.i, i64 %spec.select.i.i) ; 2 uses
  %i.ih = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.ih, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit13.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.hw
  %bcmp = call i32 @bcmp(ptr nonnull %43, ptr %i.ii, i64 %.sroa.speculated.i)
  %.not.i292 = icmp eq i32 %bcmp, 0
  %.not206 = icmp eq i64 %spec.select.i.i, %spec.select.i14.i
  %or.cond = and i1 %.not206, %.not.i292
  br i1 %or.cond, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit13.i
  %.not206.old = icmp eq i64 %spec.select.i.i, %spec.select.i14.i
  br i1 %.not206.old, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.il = call ptr @__cxa_allocate_exception(i64 40) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.364, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318.thread

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm.exit.thread
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !2422
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i8 noundef signext %i.in)
          to label %bb.av unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315.thread

bb.av:                                            ; preds = %bb.au
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.365)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  %i.io = load i32, ptr %i.ij, align 4, !tbaa !1055 ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = load i32, ptr %i.ik, align 4, !tbaa !1056
  %i.ir = sub nsw i32 %i.iq, %i.io
  %i.is = sext i32 %i.ir to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.ip, i64 noundef %i.is)
end_hunk_3
begin_hunk_4_@_ZN4crow8mustache10template_t5parseEv:._crit_edge.i.i
  store i8 61, ptr %i.wb, align 1, !tbaa !2422
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wd = trunc i64 %i.vy to i32
  store i32 %i.wd, ptr %i.wc, align 4, !tbaa !1055
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wf = trunc i64 %i.cy to i32
  store i32 %i.wf, ptr %i.we, align 4, !tbaa !1056
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  store i32 0, ptr %i.wg, align 4, !tbaa !1057
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  store i32 0, ptr %i.wh, align 4, !tbaa !1058
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 20
  store ptr %i.wi, ptr %i.m, align 8, !tbaa !2420
  br label %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE12emplace_backIJRcNS1_10ActionTypeERmS8_EEERS2_DpOT_.exit362

bb.dg:                                            ; preds = %bb.de
  %i.wj = load ptr, ptr %i.l, align 8, !tbaa !998 ; 5 uses
  %i.wk = ptrtoint ptr %i.vz to i64
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = sub i64 %i.wk, %i.wl                    ; 4 uses
  %i.wn = icmp eq i64 %i.wm, 9223372036854775800
  br i1 %i.wn, label %bb.dh, label %_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i586

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
          to label %.noexc604 unwind label %.loopexit.split-lp933

.noexc604:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i586: ; preds = %bb.dg
  %i.wo = sdiv exact i64 %i.wm, 20                ; 3 uses
  %.sroa.speculated.i.i587 = call i64 @llvm.umax.i64(i64 %i.wo, i64 1)
  %i.wp = add nsw i64 %.sroa.speculated.i.i587, %i.wo ; 2 uses
  %i.wq = icmp ult i64 %i.wp, %i.wo
  %i.wr = call i64 @llvm.umin.i64(i64 %i.wp, i64 461168601842738790)
  %i.ws = select i1 %i.wq, i64 461168601842738790, i64 %i.wr ; 3 uses
  %.not.i.i588 = icmp ne i64 %i.ws, 0
  call void @llvm.assume(i1 %.not.i.i588)
  %i.wt = mul nuw nsw i64 %i.ws, 20
  %i.wu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wt) #43
          to label %.noexc605 unwind label %.loopexit932 ; 5 uses

.noexc605:                                        ; preds = %_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i586
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wm ; 6 uses
  store i8 0, ptr %i.wv, align 4, !tbaa !2421
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 1
  store i8 61, ptr %i.ww, align 1, !tbaa !2422
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  %i.wy = trunc i64 %i.vy to i32
  store i32 %i.wy, ptr %i.wx, align 4, !tbaa !1055
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.xa = trunc i64 %i.cy to i32
  store i32 %i.xa, ptr %i.wz, align 4, !tbaa !1056
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wv, i64 12
  store i32 0, ptr %i.xb, align 4, !tbaa !1057
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store i32 0, ptr %i.xc, align 4, !tbaa !1058
  %.not10.i.i.i.i589 = icmp eq ptr %i.wj, %i.vz
  br i1 %.not10.i.i.i.i589, label %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i601, label %.lr.ph.i.i.i.i590

.lr.ph.i.i.i.i590:                                ; preds = %.noexc605, %.lr.ph.i.i.i.i590
  %.012.i.i.i.i591 = phi ptr [ %i.xe, %.lr.ph.i.i.i.i590 ], [ %i.wu, %.noexc605 ] ; 2 uses
  %.0911.i.i.i.i592 = phi ptr [ %i.xd, %.lr.ph.i.i.i.i590 ], [ %i.wj, %.noexc605 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i591, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i592, i64 20, i1 false), !tbaa.struct !2424, !alias.scope !2435
  %i.xd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i592, i64 20 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i591, i64 20 ; 2 uses
  %.not.i.i.i.i593 = icmp eq ptr %i.xd, %i.vz
  br i1 %.not.i.i.i.i593, label %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i601, label %.lr.ph.i.i.i.i590, !llvm.loop !2358

_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i601: ; preds = %.lr.ph.i.i.i.i590, %.noexc605
  %.0.lcssa.i.i.i.i595 = phi ptr [ %i.wu, %.noexc605 ], [ %i.xe, %.lr.ph.i.i.i.i590 ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i595, i64 20
  %.not.i36.i603 = icmp eq ptr %i.wj, null
  br i1 %.not.i36.i603, label %.noexc361, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i601
  call void @_ZdlPvm(ptr noundef nonnull %i.wj, i64 noundef %i.wm) #41
  %.pre.pre = load ptr, ptr %i.i, align 8, !tbaa !164
  br label %.noexc361

.noexc361:                                        ; preds = %bb.di, %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i601
  %.pre = phi ptr [ %.pre.pre, %bb.di ], [ %i.dt, %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i601 ]
  store ptr %i.wu, ptr %i.l, align 8, !tbaa !998
  store ptr %i.xf, ptr %i.m, align 8, !tbaa !2420
  %i.xg = getelementptr inbounds nuw [20 x i8], ptr %i.wu, i64 %i.ws
  store ptr %i.xg, ptr %i.n, align 8, !tbaa !999
  br label %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE12emplace_backIJRcNS1_10ActionTypeERmS8_EEERS2_DpOT_.exit362

_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE12emplace_backIJRcNS1_10ActionTypeERmS8_EEERS2_DpOT_.exit362: ; preds = %.noexc361, %bb.df
  %i.xh = phi ptr [ %.pre, %.noexc361 ], [ %i.dt, %bb.df ] ; 5 uses
  %i.xi = add i64 %i.cy, -1                       ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !165
  %.not182 = icmp eq i8 %i.xk, 61
  br i1 %.not182, label %.preheader2023, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE12emplace_backIJRcNS1_10ActionTypeERmS8_EEERS2_DpOT_.exit362
  %i.xl = call ptr @__cxa_allocate_exception(i64 40) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #40
  %i.xm = sub i64 %i.xi, %i.vy
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.vy, i64 noundef %i.xm)
          to label %bb.dk unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.thread

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull @.str.368, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.dl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.thread

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN4crow8mustache26invalid_template_exceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.xl, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  invoke void @__cxa_throw(ptr nonnull %i.xl, ptr nonnull @_ZTIN4crow8mustache26invalid_template_exceptionE, ptr nonnull @_ZN4crow8mustache26invalid_template_exceptionD2Ev) #39
          to label %bb.gv unwind label %bb.dn

.loopexit932:                                     ; preds = %_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i586
  %lpad.loopexit934 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp933:                            ; preds = %bb.dh
  %lpad.loopexit.split-lp935 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.thread: ; preds = %bb.dj
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split2019

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.0108 = phi i1 [ false, %bb.dm ], [ true, %bb.dl ] ; 2 uses
  %i.xo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xp = load ptr, ptr %24, align 8, !tbaa !164  ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.xr = icmp eq ptr %i.xp, %i.xq
  br i1 %i.xr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %bb.dn
  %i.xs = load i64, ptr %i.xq, align 8, !tbaa !165
  %i.xt = add i64 %i.xs, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363
  %i.xu = load ptr, ptr %25, align 8, !tbaa !164  ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.xw = icmp eq ptr %i.xu, %i.xv
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.thread: ; preds = %bb.dk
  %i.xx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xy = load ptr, ptr %25, align 8, !tbaa !164  ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ya = icmp eq ptr %i.xy, %i.xz
  br i1 %i.ya, label %.sink.split2019, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.thread
  %i.yb = load i64, ptr %i.xz, align 8, !tbaa !165
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yc) #41
  br label %.sink.split2019

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
  %i.yd = load i64, ptr %i.xv, align 8, !tbaa !165
  %i.ye = add i64 %i.yd, 1
  call void @_ZdlPvm(ptr noundef %i.xu, i64 noundef %i.ye) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  br i1 %.0108, label %bb.do, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  br i1 %.0108, label %bb.do, label %.body

.sink.split2019:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366.thread
  %.pn195.pn841.ph = phi { ptr, i32 } [ %i.xx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366.thread ], [ %i.xn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.thread ], [ %i.xx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  br label %bb.do

bb.do:                                            ; preds = %.sink.split2019, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368
  %.pn195.pn841 = phi { ptr, i32 } [ %i.xo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %i.xo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.pn195.pn841.ph, %.sink.split2019 ]
  call void @__cxa_free_exception(ptr %i.xl) #40
  br label %.body

.preheader2023:                                   ; preds = %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE12emplace_backIJRcNS1_10ActionTypeERmS8_EEERS2_DpOT_.exit362, %.preheader2023
  %.6797 = phi i64 [ %i.yi, %.preheader2023 ], [ %i.vy, %_ZNSt6vectorIN4crow8mustache6ActionESaIS2_EE12emplace_backIJRcNS1_10ActionTypeERmS8_EEERS2_DpOT_.exit362 ] ; 8 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.6797
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !165
  %i.yh = icmp eq i8 %i.yg, 32
  %i.yi = add i64 %.6797, 1
  br i1 %i.yh, label %.preheader2023, label %.preheader931, !llvm.loop !2398

.preheader931:                                    ; preds = %.preheader2023
  %44 = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.6797 ; 2 uses
  %i.yj = add i64 %i.cy, -2
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %.preheader931
  %.6789 = phi i64 [ %i.yn, %bb.dp ], [ %i.yj, %.preheader931 ] ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.6789
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !165
  %i.ym = icmp eq i8 %i.yl, 32
  %i.yn = add i64 %.6789, -1
  br i1 %i.ym, label %bb.dp, label %bb.dq, !llvm.loop !2399

bb.dq:                                            ; preds = %bb.dp
  %i.yo = add i64 %.6789, 1                       ; 3 uses
  %i.yp = icmp ult i64 %.6797, %i.yo
  br i1 %i.yp, label %.lr.ph, label %.critedge247

.lr.ph:                                           ; preds = %bb.dq, %bb.fi
  %.01051297 = phi i64 [ %i.ada, %bb.fi ], [ %.6797, %bb.dq ] ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.01051297
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !165
  %i.ys = icmp eq i8 %i.yr, 32
  br i1 %i.ys, label %bb.dr, label %bb.fi

bb.dr:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.yt = load i64, ptr %i.o, align 8, !tbaa !166, !noalias !2436 ; 3 uses
  %i.yu = icmp ugt i64 %.6797, %i.yt
  br i1 %i.yu, label %bb.ds, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.ds:                                            ; preds = %bb.dr
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.273, i64 noundef %.6797, i64 noundef %i.yt) #39
          to label %.noexc369 unwind label %.loopexit.split-lp938

.noexc369:                                        ; preds = %bb.ds
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.dr
  store ptr %i.p, ptr %26, align 8, !tbaa !160, !alias.scope !2436
  %i.yv = call i64 @llvm.umin.i64(i64 %.01051297, i64 %i.yt)
  %spec.select.i.i.i = sub nuw i64 %i.yv, %.6797  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40, !noalias !2436
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !162, !noalias !2436
  %i.yw = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.yw, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.yx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc370 unwind label %.loopexit937 ; 2 uses

.noexc370:                                        ; preds = %.noexc10.i.i
  store ptr %i.yx, ptr %26, align 8, !tbaa !164, !alias.scope !2436
  %i.yy = load i64, ptr %i.b, align 8, !tbaa !162, !noalias !2436
  store i64 %i.yy, ptr %i.p, align 8, !tbaa !165, !alias.scope !2436
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.yz = phi ptr [ %i.yx, %.noexc370 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.du [
    i64 1, label %bb.dt
    i64 0, label %bb.dv
  ]

bb.dt:                                            ; preds = %._crit_edge.i.i.i
  %i.za = load i8, ptr %44, align 1, !tbaa !165
  store i8 %i.za, ptr %i.yz, align 1, !tbaa !165
  br label %bb.dv

bb.du:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yz, ptr nonnull align 1 %44, i64 %spec.select.i.i.i, i1 false)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %._crit_edge.i.i.i
  %i.zb = load i64, ptr %i.b, align 8, !tbaa !162, !noalias !2436 ; 2 uses
  store i64 %i.zb, ptr %i.q, align 8, !tbaa !166, !alias.scope !2436
  %i.zc = load ptr, ptr %26, align 8, !tbaa !164, !alias.scope !2436
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.zb
  store i8 0, ptr %i.zd, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40, !noalias !2436
  %i.ze = load ptr, ptr %1, align 8, !tbaa !164   ; 6 uses
  %i.zf = icmp eq ptr %i.ze, %i.c
  %i.zg = load ptr, ptr %26, align 8, !tbaa !164  ; 5 uses
  %i.zh = icmp eq ptr %i.zg, %i.p                 ; 2 uses
  br i1 %i.zf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.dv
  br i1 %i.zh, label %bb.dw, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.dv
  br i1 %i.zh, label %bb.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.dw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.zi = load i64, ptr %i.q, align 8, !tbaa !166 ; 3 uses
  %i.zj = icmp ult i64 %i.zi, 16
  call void @llvm.assume(i1 %i.zj)
  switch i64 %i.zi, label %bb.dy [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.dx
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.zk = load i8, ptr %i.zg, align 1, !tbaa !165
  store i8 %i.zk, ptr %i.ze, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ze, ptr align 1 %i.zg, i64 %i.zi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.zl = load i64, ptr %i.q, align 8, !tbaa !166 ; 2 uses
  store i64 %i.zl, ptr %i.d, align 8, !tbaa !166
  %i.zm = load ptr, ptr %1, align 8, !tbaa !164
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.zl
  store i8 0, ptr %i.zn, align 1, !tbaa !165
  %.pre.i372 = load ptr, ptr %26, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.zg, ptr %1, align 8, !tbaa !164
  %i.zo = load <2 x i64>, ptr %i.q, align 8, !tbaa !165
  store <2 x i64> %i.zo, ptr %i.d, align 8, !tbaa !165
  br label %bb.ea

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.zp = load i64, ptr %i.c, align 8, !tbaa !165
  store ptr %i.zg, ptr %1, align 8, !tbaa !164
  %i.zq = load <2 x i64>, ptr %i.q, align 8, !tbaa !165
  store <2 x i64> %i.zq, ptr %i.d, align 8, !tbaa !165
  %.not.i371 = icmp eq ptr %i.ze, null
  br i1 %.not.i371, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ze, ptr %26, align 8, !tbaa !164
  store i64 %i.zp, ptr %i.p, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %26, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.dz, %bb.ea
  %i.zr = phi ptr [ %.pre.i372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ze, %bb.dz ], [ %i.p, %bb.ea ]
  store i64 0, ptr %i.q, align 8, !tbaa !166
  store i8 0, ptr %i.zr, align 1, !tbaa !165
  %i.zs = load ptr, ptr %26, align 8, !tbaa !164  ; 2 uses
  %i.zt = icmp eq ptr %i.zs, %i.p
  br i1 %i.zt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.zu = load i64, ptr %i.p, align 8, !tbaa !165
  %i.zv = add i64 %i.zu, 1
  call void @_ZdlPvm(ptr noundef %i.zs, i64 noundef %i.zv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  %i.zw = load ptr, ptr %i.i, align 8, !tbaa !164 ; 2 uses
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  %.1106 = phi i64 [ %.01051297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ %i.aaa, %bb.eb ] ; 7 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 %.1106
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !165
  %i.zz = icmp eq i8 %i.zy, 32
  %i.aaa = add i64 %.1106, 1
  br i1 %i.zz, label %bb.eb, label %bb.ed, !llvm.loop !2402

.loopexit937:                                     ; preds = %.noexc10.i.i
  %lpad.loopexit939 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp938:                            ; preds = %bb.ds
  %lpad.loopexit.split-lp940 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit.split-lp938, %.loopexit937
  %lpad.phi941 = phi { ptr, i32 } [ %lpad.loopexit939, %.loopexit937 ], [ %lpad.loopexit.split-lp940, %.loopexit.split-lp938 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %.body

bb.ed:                                            ; preds = %bb.eb
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 %.1106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %i.aac = load i64, ptr %i.o, align 8, !tbaa !166, !noalias !2437 ; 3 uses
  %i.aad = icmp ugt i64 %.1106, %i.aac
  br i1 %i.aad, label %bb.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i376

bb.ee:                                            ; preds = %bb.ed
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.273, i64 noundef %.1106, i64 noundef %i.aac) #39
          to label %.noexc380 unwind label %.loopexit.split-lp943

.noexc380:                                        ; preds = %bb.ee
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i376: ; preds = %bb.ed
  %i.aae = sub i64 %i.yo, %.1106
  store ptr %i.r, ptr %27, align 8, !tbaa !160, !alias.scope !2437
  %i.aaf = sub nuw i64 %i.aac, %.1106
  %spec.select.i.i.i377 = call noundef i64 @llvm.umin.i64(i64 %i.aae, i64 %i.aaf) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2437
  store i64 %spec.select.i.i.i377, ptr %i.a, align 8, !tbaa !162, !noalias !2437
  %i.aag = icmp ugt i64 %spec.select.i.i.i377, 15
  br i1 %i.aag, label %.noexc10.i.i379, label %._crit_edge.i.i.i378

.noexc10.i.i379:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i376
  %i.aah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc381 unwind label %.loopexit942 ; 2 uses

end_hunk_4
begin_hunk_5_@_ZN4crow6ServerINS_4CrowIJEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJEE3runEv:bb.a
  br i1 %.not.i, label %_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %3, ptr noundef nonnull @.str.443, i64 noundef 38)
          to label %_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit unwind label %bb.e ; 0 uses

_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit:           ; preds = %bb.c, %bb.d
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.ca

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.cf

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
  %.01288 = phi i32 [ 0, %.lr.ph ], [ %i.cj, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
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
  %i.bg = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64               ; 3 uses
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
  %i.bt = sub i64 %i.bs, %i.bh                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bt, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader165, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bq, i64 8
  %i.bw = add i64 %i.bg, -8
  %i.bx = sub i64 %i.bw, %i.bh
  %i.by = and i64 %i.bx, -8                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep, i64 %i.by
  %scevgep160 = getelementptr i8, ptr %i.bf, i64 8
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.by
  %bound0 = icmp ult ptr %i.bq, %scevgep161
  %bound1 = icmp ult ptr %i.bf, %scevgep159
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader165, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bv, 4611686018427387900     ; 3 uses
  %14 = shl i64 %n.vec, 3                         ; 2 uses
  %15 = getelementptr i8, ptr %i.bq, i64 %14      ; 2 uses
  %16 = getelementptr i8, ptr %i.bf, i64 %14
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bz ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.bf, i64 %i.bz ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  %i.ca = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep162, align 8, !tbaa !382, !alias.scope !2593, !noalias !2591
  %wide.load163 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !382, !alias.scope !2593, !noalias !2591
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !382, !alias.scope !2594, !noalias !2593
  store <2 x i64> %wide.load163, ptr %i.cb, align 8, !tbaa !382, !alias.scope !2594, !noalias !2593
  %i.cc = getelementptr i8, ptr %next.gep162, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep162, align 8, !tbaa !382, !alias.scope !2593, !noalias !2591
  store <2 x ptr> splat (ptr null), ptr %i.cc, align 8, !tbaa !382, !alias.scope !2593, !noalias !2591
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !2579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader165

.lr.ph.i.i.i.i.i.preheader165:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader ], [ %15, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.i.preheader ], [ %16, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader165, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader165 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader165 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  %i.ce = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2592, !noalias !2591
  store i64 %i.ce, ptr %.012.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2591, !noalias !2592
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2592, !noalias !2591
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cf, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2580

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bq, %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %15, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bq, ptr %i.o, align 8, !tbaa !379
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !380
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.ci, ptr %i.q, align 8, !tbaa !383
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %bb.q, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cj = add nuw nsw i32 %.01288, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cj, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !2581

bb.u:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 16) #41
  br label %bb.cf

._crit_edge91:                                    ; preds = %_ZNSt14__basic_futureIvED2Ev.exit, %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !244
  %.not.i.i40.not = icmp eq ptr %i.cm, null
  br i1 %.not.i.i40.not, label %bb.ao, label %bb.ai

bb.v:                                             ; preds = %.lr.ph90, %_ZNSt14__basic_futureIvED2Ev.exit
  %.089 = phi i16 [ 0, %.lr.ph90 ], [ %i.di, %_ZNSt14__basic_futureIvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store ptr %0, ptr %7, align 8, !tbaa !1096
  store i16 %.089, ptr %i.aw, align 8, !tbaa !1097
  store ptr %5, ptr %i.ax, align 8, !tbaa !1098
  invoke void @_ZSt5asyncIZN4crow6ServerINS0_4CrowIJEEENS0_18UnixSocketAcceptorENS0_17UnixSocketAdaptorEJEE3runEvEUlvE_JEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSA_IT0_E4typeEEE4typeEESt6launchOSB_DpOSE_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr %i.ay, align 8, !tbaa !1101 ; 5 uses
  %i.co = load ptr, ptr %i.az, align 8, !tbaa !1102
  %.not.i.i41 = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i41, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr null, ptr %i.cp, align 8, !tbaa !312
  %i.cq = load <2 x ptr>, ptr %6, align 16, !tbaa !179
  store ptr null, ptr %i.ba, align 8, !tbaa !312
  store <2 x ptr> %i.cq, ptr %i.cn, align 8, !tbaa !179
  store ptr null, ptr %6, align 16, !tbaa !1105
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.cr, ptr %i.ay, align 8, !tbaa !1101
  br label %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit

bb.y:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit unwind label %bb.ag

_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.x, %bb.y
  %i.cs = load ptr, ptr %i.ba, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i43 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i43, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ct, align 8, !tbaa !314
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !315
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !257
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #40, !inline_history !108
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !257
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #40, !inline_history !108
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i44 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i44, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i = phi i32 [ %i.cw, %bb.ac ], [ %i.dg, %bb.ad ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.ae, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !316

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #40
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.di = add nuw i16 %.089, 1                    ; 2 uses
  %exitcond100.not = icmp eq i16 %i.di, %i.m
  br i1 %exitcond100.not, label %._crit_edge91, label %bb.v, !llvm.loop !2582

bb.af:                                            ; preds = %bb.v
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn31 = phi { ptr, i32 } [ %i.dk, %bb.ag ], [ %i.dj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ce

bb.ai:                                            ; preds = %._crit_edge91
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !1106 ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i, label %bb.ao

_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i: ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.dp = mul nuw nsw i64 %i.dm, 1000000          ; 2 uses
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !398 ; 2 uses
  %i.dr = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #40 ; 3 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  %i.dt = sub nuw nsw i64 9223372036854775807, %i.dr
  %i.du = icmp samesign ult i64 %i.dt, %i.dp
  %or.cond = select i1 %i.ds, i1 %i.du, i1 false
  %i.dv = add nsw i64 %i.dr, %i.dp
  %.sroa.0.0.i.i.i = select i1 %or.cond, i64 9223372036854775807, i64 %i.dv
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !395, !range !274, !noundef !275
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !410, !nonnull !275, !align !411
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ed = invoke noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.ea, ptr noundef nonnull align 8 dereferenceable(48) %i.eb, ptr noundef nonnull align 8 dereferenceable(40) %i.ec, i64 noundef -1)
          to label %.noexc45 unwind label %bb.am  ; 0 uses

.noexc45:                                         ; preds = %bb.aj
  store i8 0, ptr %i.dw, align 8, !tbaa !395
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc45, %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.ee, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store ptr %0, ptr %8, align 8, !tbaa !1108
  %i.ef = load ptr, ptr %i.do, align 8, !tbaa !398
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 456
end_hunk_5
begin_hunk_6_@_ZN4crow6ServerINS_4CrowIJEEENS_11TCPAcceptorENS_13SocketAdaptorEJEE3runEv:bb.a
  br i1 %.not.i, label %_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %3, ptr noundef nonnull @.str.443, i64 noundef 38)
          to label %_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit unwind label %bb.e ; 0 uses

_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit:           ; preds = %bb.c, %bb.d
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.bz

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.ce

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
  %.01287 = phi i32 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
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
  %i.bf = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 3 uses
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
  %i.bs = sub i64 %i.br, %i.bg                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader164, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bp, i64 8
  %i.bv = add i64 %i.bf, -8
  %i.bw = sub i64 %i.bv, %i.bg
  %i.bx = and i64 %i.bw, -8                       ; 2 uses
  %scevgep158 = getelementptr i8, ptr %scevgep, i64 %i.bx
  %scevgep159 = getelementptr i8, ptr %i.be, i64 8
  %scevgep160 = getelementptr i8, ptr %scevgep159, i64 %i.bx
  %bound0 = icmp ult ptr %i.bp, %scevgep160
  %bound1 = icmp ult ptr %i.be, %scevgep158
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader164, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 3 uses
  %14 = shl i64 %n.vec, 3                         ; 2 uses
  %15 = getelementptr i8, ptr %i.bp, i64 %14      ; 2 uses
  %16 = getelementptr i8, ptr %i.be, i64 %14
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.by ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.be, i64 %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %i.bz = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep161, align 8, !tbaa !382, !alias.scope !2638, !noalias !2636
  %wide.load162 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !382, !alias.scope !2638, !noalias !2636
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !382, !alias.scope !2639, !noalias !2638
  store <2 x i64> %wide.load162, ptr %i.ca, align 8, !tbaa !382, !alias.scope !2639, !noalias !2638
  %i.cb = getelementptr i8, ptr %next.gep161, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep161, align 8, !tbaa !382, !alias.scope !2638, !noalias !2636
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !382, !alias.scope !2638, !noalias !2636
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !2630

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader164

.lr.ph.i.i.i.i.i.preheader164:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i.i.i.i.preheader ], [ %15, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %16, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader164, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader164 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader164 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2637, !noalias !2636
  store i64 %i.cd, ptr %.012.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2636, !noalias !2637
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !382, !alias.scope !2637, !noalias !2636
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2631

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bp, %_ZNKSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %15, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bp, ptr %i.n, align 8, !tbaa !379
  store ptr %i.cg, ptr %i.o, align 8, !tbaa !380
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !383
  br label %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %bb.q, %_ZNSt6vectorISt10unique_ptrIN4asio10io_contextESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.ci = add nuw nsw i32 %.01287, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ci, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !2632

bb.u:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 16) #41
  br label %bb.ce

._crit_edge90:                                    ; preds = %_ZNSt14__basic_futureIvED2Ev.exit, %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE6resizeEm.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !244
  %.not.i.i40.not = icmp eq ptr %i.cl, null
  br i1 %.not.i.i40.not, label %bb.an, label %bb.ai

bb.v:                                             ; preds = %.lr.ph89, %_ZNSt14__basic_futureIvED2Ev.exit
  %.088 = phi i16 [ 0, %.lr.ph89 ], [ %i.dh, %_ZNSt14__basic_futureIvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store ptr %0, ptr %7, align 8, !tbaa !1126
  store i16 %.088, ptr %i.av, align 8, !tbaa !1127
  store ptr %5, ptr %i.aw, align 8, !tbaa !1098
  invoke void @_ZSt5asyncIZN4crow6ServerINS0_4CrowIJEEENS0_11TCPAcceptorENS0_13SocketAdaptorEJEE3runEvEUlvE_JEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSA_IT0_E4typeEEE4typeEESt6launchOSB_DpOSE_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.cm = load ptr, ptr %i.ax, align 8, !tbaa !1101 ; 5 uses
  %i.cn = load ptr, ptr %i.ay, align 8, !tbaa !1102
  %.not.i.i41 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i41, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr null, ptr %i.co, align 8, !tbaa !312
  %i.cp = load <2 x ptr>, ptr %6, align 16, !tbaa !179
  store ptr null, ptr %i.az, align 8, !tbaa !312
  store <2 x ptr> %i.cp, ptr %i.cm, align 8, !tbaa !179
  store ptr null, ptr %6, align 16, !tbaa !1105
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cq, ptr %i.ax, align 8, !tbaa !1101
  br label %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit

bb.y:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit unwind label %bb.ag

_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.x, %bb.y
  %i.cr = load ptr, ptr %i.az, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i43 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i43, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cs, align 8, !tbaa !314
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !315
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !257
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #40, !inline_history !108
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !257
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #40, !inline_history !108
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i44 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i44, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i = phi i32 [ %i.cv, %bb.ac ], [ %i.df, %bb.ad ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.ae, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !316

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #40
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE9push_backEOS1_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.dh = add nuw i16 %.088, 1                    ; 2 uses
  %exitcond99.not = icmp eq i16 %i.dh, %i.l
  br i1 %exitcond99.not, label %._crit_edge90, label %bb.v, !llvm.loop !2633

bb.af:                                            ; preds = %bb.v
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn31 = phi { ptr, i32 } [ %i.dj, %bb.ag ], [ %i.di, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.cd

bb.ai:                                            ; preds = %._crit_edge90
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !1106 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i, label %bb.an

_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i: ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.do = mul nuw nsw i64 %i.dl, 1000000          ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !398 ; 2 uses
  %i.dq = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #40 ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  %i.ds = sub nuw nsw i64 9223372036854775807, %i.dq
  %i.dt = icmp samesign ult i64 %i.ds, %i.do
  %or.cond = select i1 %i.dr, i1 %i.dt, i1 false
  %i.du = add nsw i64 %i.dq, %i.do
  %.sroa.0.0.i.i.i = select i1 %or.cond, i64 9223372036854775807, i64 %i.du
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !395, !range !274, !noundef !275
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !410, !nonnull !275, !align !411
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ec = invoke noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %i.eb, i64 noundef -1)
          to label %.noexc45 unwind label %bb.al  ; 0 uses

.noexc45:                                         ; preds = %bb.aj
  store i8 0, ptr %i.dv, align 8, !tbaa !395
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc45, %_ZN4asio6detail18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS4_EEE3addERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERKSC_.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.ed, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  store ptr %0, ptr %8, align 8, !tbaa !1129
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !398
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 456
end_hunk_6
begin_hunk_7_@_ZN4crow6ServerINS_4CrowIJEEENS_11TCPAcceptorENS_13SocketAdaptorEJEE3runEv:bb.a
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !257
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.ha) #40, !inline_history !2635
  br label %.body

bb.bp:                                            ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bq unwind label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  %.sroa.0.0.copyload.i.i = load i64, ptr %13, align 8, !tbaa !162
  %.not.i72 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i72, label %_ZNSt6threadD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt9terminatev() #42
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.he = load ptr, ptr %4, align 8, !tbaa !1115  ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1101 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.he, %i.hg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadD2Ev.exit, %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hy, %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i ], [ %i.he, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.hj, align 8, !tbaa !314
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !315
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !257
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #40, !inline_history !109
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !257
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #40, !inline_history !109
  br label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hm, %bb.bv ], [ %i.hw, %bb.bw ]
  %i.hx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.hx, label %bb.bx, label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i, !prof !316

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #40
  br label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i:       ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bt, %.lr.ph.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.hy, %i.hg
  br i1 %.not.i.i.i73, label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !110

_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !1115
  br label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6threadD2Ev.exit
  %i.hz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.he, %_ZNSt6threadD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !1102
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #41
  br label %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit

_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.bz

bb.bz:                                            ; preds = %bb.b, %_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit, %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit
  ret void

bb.ca:                                            ; preds = %bb.bm
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cb:                                            ; preds = %bb.bp
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %.sroa.0.0.copyload.i.i74 = load i64, ptr %13, align 8, !tbaa !162
  %.not.i75 = icmp eq i64 %.sroa.0.0.copyload.i.i74, 0
  br i1 %.not.i75, label %.body, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZSt9terminatev() #42
  unreachable

.body:                                            ; preds = %bb.cb, %bb.ca, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %bb.bo
  %.pn29 = phi { ptr, i32 } [ %i.gz, %bb.bo ], [ %i.if, %bb.ca ], [ %i.gz, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.ig, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.cd

bb.cd:                                            ; preds = %.body, %bb.bl, %bb.bk, %bb.be, %bb.ay, %bb.am, %bb.al, %bb.ah
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.ah ], [ %.pn29, %.body ], [ %i.fu, %bb.ay ], [ %i.gr, %bb.bl ], [ %.pn27, %bb.bk ], [ %.pn.pn.pn, %bb.be ], [ %i.eh, %bb.am ], [ %i.eg, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZNSt6vectorISt6futureIvESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ce

bb.ce:                                            ; preds = %bb.u, %bb.cd, %bb.e
  %.pn36 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.cj, %bb.u ], [ %.pn31.pn, %bb.cd ]
  resume { ptr, i32 } %.pn36
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4crow7utilityL14normalize_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %.8.val, ptr %i.a, align 8, !tbaa !162
  %i.c = icmp ugt i64 %.8.val, 15
  br i1 %i.c, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !164
  %i.e = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.e, ptr %i.b, align 8, !tbaa !165
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.f = phi ptr [ %i.d, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %.8.val, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = load i8, ptr %.0.val, align 1, !tbaa !165
  store i8 %i.g, ptr %i.f, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %.0.val, i64 %.8.val, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !166
  %i.j = load ptr, ptr %0, align 8, !tbaa !164
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.l = load ptr, ptr %0, align 8, !tbaa !164    ; 44 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !166  ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %.not6.i = icmp samesign eq i64 %i.m, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %1 = and i64 %i.m, 24
  %n.vec = and i64 %i.m, -32                      ; 4 uses
  %2 = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue99, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue99 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 3 uses
  %i.o = getelementptr i8, ptr %i.l, i64 %index
  %next.gep6 = getelementptr i8, ptr %i.o, i64 1
  %i.p = getelementptr i8, ptr %i.l, i64 %index
  %next.gep7 = getelementptr i8, ptr %i.p, i64 2
  %i.q = getelementptr i8, ptr %i.l, i64 %index
  %next.gep8 = getelementptr i8, ptr %i.q, i64 3
  %i.r = getelementptr i8, ptr %i.l, i64 %index
  %next.gep9 = getelementptr i8, ptr %i.r, i64 4
  %i.s = getelementptr i8, ptr %i.l, i64 %index
  %next.gep10 = getelementptr i8, ptr %i.s, i64 5
  %i.t = getelementptr i8, ptr %i.l, i64 %index
  %next.gep11 = getelementptr i8, ptr %i.t, i64 6
  %i.u = getelementptr i8, ptr %i.l, i64 %index
  %next.gep12 = getelementptr i8, ptr %i.u, i64 7
  %i.v = getelementptr i8, ptr %i.l, i64 %index
  %next.gep13 = getelementptr i8, ptr %i.v, i64 8
  %i.w = getelementptr i8, ptr %i.l, i64 %index
  %next.gep14 = getelementptr i8, ptr %i.w, i64 9
  %i.x = getelementptr i8, ptr %i.l, i64 %index
  %next.gep15 = getelementptr i8, ptr %i.x, i64 10
  %i.y = getelementptr i8, ptr %i.l, i64 %index
  %next.gep16 = getelementptr i8, ptr %i.y, i64 11
  %i.z = getelementptr i8, ptr %i.l, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.z, i64 12
  %i.aa = getelementptr i8, ptr %i.l, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.aa, i64 13
  %i.ab = getelementptr i8, ptr %i.l, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.ab, i64 14
  %i.ac = getelementptr i8, ptr %i.l, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.ac, i64 15
  %i.ad = getelementptr i8, ptr %i.l, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.ad, i64 16
  %i.ae = getelementptr i8, ptr %i.l, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.ae, i64 17
  %i.af = getelementptr i8, ptr %i.l, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.af, i64 18
  %i.ag = getelementptr i8, ptr %i.l, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.ag, i64 19
  %i.ah = getelementptr i8, ptr %i.l, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.ah, i64 20
  %i.ai = getelementptr i8, ptr %i.l, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.ai, i64 21
  %i.aj = getelementptr i8, ptr %i.l, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.aj, i64 22
  %i.ak = getelementptr i8, ptr %i.l, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.ak, i64 23
  %i.al = getelementptr i8, ptr %i.l, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.al, i64 24
  %i.am = getelementptr i8, ptr %i.l, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.am, i64 25
  %i.an = getelementptr i8, ptr %i.l, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.an, i64 26
  %i.ao = getelementptr i8, ptr %i.l, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.ao, i64 27
  %i.ap = getelementptr i8, ptr %i.l, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.ap, i64 28
  %i.aq = getelementptr i8, ptr %i.l, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.aq, i64 29
  %i.ar = getelementptr i8, ptr %i.l, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.ar, i64 30
  %i.as = getelementptr i8, ptr %i.l, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.as, i64 31
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !165
  %wide.load37 = load <16 x i8>, ptr %i.at, align 1, !tbaa !165
  %i.au = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.av = icmp eq <16 x i8> %wide.load37, splat (i8 92) ; 16 uses
  %i.aw = extractelement <16 x i1> %i.au, i64 0
  br i1 %i.aw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !165
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ax = extractelement <16 x i1> %i.au, i64 1
  br i1 %i.ax, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue
  store i8 47, ptr %next.gep6, align 1, !tbaa !165
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue
  %i.ay = extractelement <16 x i1> %i.au, i64 2
  br i1 %i.ay, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  store i8 47, ptr %next.gep7, align 1, !tbaa !165
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.az = extractelement <16 x i1> %i.au, i64 3
  br i1 %i.az, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  store i8 47, ptr %next.gep8, align 1, !tbaa !165
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.ba = extractelement <16 x i1> %i.au, i64 4
  br i1 %i.ba, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  store i8 47, ptr %next.gep9, align 1, !tbaa !165
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.bb = extractelement <16 x i1> %i.au, i64 5
  br i1 %i.bb, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  store i8 47, ptr %next.gep10, align 1, !tbaa !165
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.bc = extractelement <16 x i1> %i.au, i64 6
  br i1 %i.bc, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  store i8 47, ptr %next.gep11, align 1, !tbaa !165
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.bd = extractelement <16 x i1> %i.au, i64 7
  br i1 %i.bd, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  store i8 47, ptr %next.gep12, align 1, !tbaa !165
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.be = extractelement <16 x i1> %i.au, i64 8
  br i1 %i.be, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  store i8 47, ptr %next.gep13, align 1, !tbaa !165
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.bf = extractelement <16 x i1> %i.au, i64 9
  br i1 %i.bf, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  store i8 47, ptr %next.gep14, align 1, !tbaa !165
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.bg = extractelement <16 x i1> %i.au, i64 10
  br i1 %i.bg, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  store i8 47, ptr %next.gep15, align 1, !tbaa !165
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.bh = extractelement <16 x i1> %i.au, i64 11
  br i1 %i.bh, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i8 47, ptr %next.gep16, align 1, !tbaa !165
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.bi = extractelement <16 x i1> %i.au, i64 12
  br i1 %i.bi, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i8 47, ptr %next.gep17, align 1, !tbaa !165
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.bj = extractelement <16 x i1> %i.au, i64 13
  br i1 %i.bj, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i8 47, ptr %next.gep18, align 1, !tbaa !165
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.bk = extractelement <16 x i1> %i.au, i64 14
  br i1 %i.bk, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  store i8 47, ptr %next.gep19, align 1, !tbaa !165
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.bl = extractelement <16 x i1> %i.au, i64 15
  br i1 %i.bl, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  store i8 47, ptr %next.gep20, align 1, !tbaa !165
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.bm = extractelement <16 x i1> %i.av, i64 0
  br i1 %i.bm, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  store i8 47, ptr %next.gep21, align 1, !tbaa !165
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.bn = extractelement <16 x i1> %i.av, i64 1
  br i1 %i.bn, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  store i8 47, ptr %next.gep22, align 1, !tbaa !165
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.bo = extractelement <16 x i1> %i.av, i64 2
  br i1 %i.bo, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i8 47, ptr %next.gep23, align 1, !tbaa !165
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.bp = extractelement <16 x i1> %i.av, i64 3
  br i1 %i.bp, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  store i8 47, ptr %next.gep24, align 1, !tbaa !165
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.bq = extractelement <16 x i1> %i.av, i64 4
  br i1 %i.bq, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  store i8 47, ptr %next.gep25, align 1, !tbaa !165
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.br = extractelement <16 x i1> %i.av, i64 5
  br i1 %i.br, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store i8 47, ptr %next.gep26, align 1, !tbaa !165
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.bs = extractelement <16 x i1> %i.av, i64 6
  br i1 %i.bs, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  store i8 47, ptr %next.gep27, align 1, !tbaa !165
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bt = extractelement <16 x i1> %i.av, i64 7
  br i1 %i.bt, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i8 47, ptr %next.gep28, align 1, !tbaa !165
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.bu = extractelement <16 x i1> %i.av, i64 8
  br i1 %i.bu, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i8 47, ptr %next.gep29, align 1, !tbaa !165
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.bv = extractelement <16 x i1> %i.av, i64 9
  br i1 %i.bv, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i8 47, ptr %next.gep30, align 1, !tbaa !165
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.bw = extractelement <16 x i1> %i.av, i64 10
  br i1 %i.bw, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 47, ptr %next.gep31, align 1, !tbaa !165
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.bx = extractelement <16 x i1> %i.av, i64 11
  br i1 %i.bx, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 47, ptr %next.gep32, align 1, !tbaa !165
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.by = extractelement <16 x i1> %i.av, i64 12
  br i1 %i.by, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 47, ptr %next.gep33, align 1, !tbaa !165
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.bz = extractelement <16 x i1> %i.av, i64 13
  br i1 %i.bz, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 47, ptr %next.gep34, align 1, !tbaa !165
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.ca = extractelement <16 x i1> %i.av, i64 14
  br i1 %i.ca, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 47, ptr %next.gep35, align 1, !tbaa !165
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.cb = extractelement <16 x i1> %i.av, i64 15
  br i1 %i.cb, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 47, ptr %next.gep36, align 1, !tbaa !165
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !2640

middle.block:                                     ; preds = %pred.store.continue99
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %1, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !2643

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.m, -8                    ; 3 uses
  %3 = getelementptr i8, ptr %i.l, i64 %n.vec100
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue126, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %pred.store.continue126 ] ; 9 uses
  %next.gep102 = getelementptr i8, ptr %i.l, i64 %index101 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.l, i64 %index101
  %next.gep103 = getelementptr i8, ptr %i.cd, i64 1
  %i.ce = getelementptr i8, ptr %i.l, i64 %index101
  %next.gep104 = getelementptr i8, ptr %i.ce, i64 2
  %i.cf = getelementptr i8, ptr %i.l, i64 %index101
  %next.gep105 = getelementptr i8, ptr %i.cf, i64 3
  %i.cg = getelementptr i8, ptr %i.l, i64 %index101
  %next.gep106 = getelementptr i8, ptr %i.cg, i64 4
  %i.ch = getelementptr i8, ptr %i.l, i64 %index101
  %next.gep107 = getelementptr i8, ptr %i.ch, i64 5
  %i.ci = getelementptr i8, ptr %i.l, i64 %index101
  %next.gep108 = getelementptr i8, ptr %i.ci, i64 6
  %i.cj = getelementptr i8, ptr %i.l, i64 %index101
  %next.gep109 = getelementptr i8, ptr %i.cj, i64 7
  %wide.load110 = load <8 x i8>, ptr %next.gep102, align 1, !tbaa !165
  %i.ck = icmp eq <8 x i8> %wide.load110, splat (i8 92) ; 8 uses
  %i.cl = extractelement <8 x i1> %i.ck, i64 0
  br i1 %i.cl, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep102, align 1, !tbaa !165
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %vec.epilog.vector.body
  %i.cm = extractelement <8 x i1> %i.ck, i64 1
  br i1 %i.cm, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue112
  store i8 47, ptr %next.gep103, align 1, !tbaa !165
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue112
  %i.cn = extractelement <8 x i1> %i.ck, i64 2
  br i1 %i.cn, label %pred.store.if115, label %pred.store.continue116

pred.store.if115:                                 ; preds = %pred.store.continue114
  store i8 47, ptr %next.gep104, align 1, !tbaa !165
  br label %pred.store.continue116

pred.store.continue116:                           ; preds = %pred.store.if115, %pred.store.continue114
  %i.co = extractelement <8 x i1> %i.ck, i64 3
  br i1 %i.co, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %pred.store.continue116
  store i8 47, ptr %next.gep105, align 1, !tbaa !165
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %pred.store.continue116
  %i.cp = extractelement <8 x i1> %i.ck, i64 4
  br i1 %i.cp, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  store i8 47, ptr %next.gep106, align 1, !tbaa !165
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %i.cq = extractelement <8 x i1> %i.ck, i64 5
  br i1 %i.cq, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  store i8 47, ptr %next.gep107, align 1, !tbaa !165
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.cr = extractelement <8 x i1> %i.ck, i64 6
  br i1 %i.cr, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  store i8 47, ptr %next.gep108, align 1, !tbaa !165
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %i.cs = extractelement <8 x i1> %i.ck, i64 7
  br i1 %i.cs, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  store i8 47, ptr %next.gep109, align 1, !tbaa !165
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %index.next127 = add nuw i64 %index101, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next127, %n.vec100
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2641

vec.epilog.middle.block:                          ; preds = %pred.store.continue126
  %cmp.n128 = icmp eq i64 %i.m, %n.vec100
  br i1 %cmp.n128, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.ph = phi ptr [ %i.l, %iter.check ], [ %2, %vec.epilog.iter.check ], [ %3, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.sroa.02.07.i = phi ptr [ %i.cw, %bb.e ], [ %.sroa.02.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cu = load i8, ptr %.sroa.02.07.i, align 1, !tbaa !165
  %i.cv = icmp eq i8 %i.cu, 92
  br i1 %i.cv, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %.sroa.02.07.i, align 1, !tbaa !165
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.cw, %i.n
  br i1 %.not.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %.lr.ph.i, !llvm.loop !2642

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit: ; preds = %bb.e, %vec.epilog.middle.block, %middle.block
  %.pr = load i64, ptr %i.i, align 8, !tbaa !166  ; 6 uses
  %i.cx = icmp eq i64 %.pr, 0
  br i1 %i.cx, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit
  %i.cy = load ptr, ptr %0, align 8, !tbaa !164   ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 %.pr
  %i.da = getelementptr i8, ptr %i.cz, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !165
  %.not = icmp eq i8 %i.db, 47
  br i1 %.not, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dc = add i64 %.pr, 1                         ; 3 uses
  %i.dd = icmp eq ptr %i.cy, %i.b
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.de = icmp ult i64 %.pr, 16
  call void @llvm.assume(i1 %i.de)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.df = load i64, ptr %i.b, align 8, !tbaa !165
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dg = phi i64 [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.dh = icmp ugt i64 %i.dc, %i.dg
  br i1 %i.dh, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.di = phi ptr [ %.pre.i.i, %.noexc ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.pr
  store i8 47, ptr %i.dj, align 1, !tbaa !165
  store i64 %i.dc, ptr %i.i, align 8, !tbaa !166
  %i.dk = load ptr, ptr %0, align 8, !tbaa !164
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dc
  store i8 0, ptr %i.dl, align 1, !tbaa !165
  br label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %0, align 8, !tbaa !164   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.b
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !165
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.dm

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(184) ptr @_ZN4crow9Blueprint15new_rule_taggedILm5EEERNS_11black_magic9argumentsIXT_EE4type6rebindINS_10TaggedRuleEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 47, ptr %i.a, align 1, !tbaa !165, !noalias !2658
  %i.b = load ptr, ptr %0, align 8, !tbaa !164, !noalias !2658
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !166, !noalias !2658 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !160, !alias.scope !2659
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !166, !alias.scope !2659
  store i8 0, ptr %i.e, align 8, !tbaa !165, !alias.scope !2659
  %i.g = add i64 %i.d, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !166, !alias.scope !2659
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !166, !alias.scope !2659
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.237) #39
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !164, !alias.scope !2659 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !165, !alias.scope !2659
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #41
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166, !noalias !2660 ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !166, !noalias !2660
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.237) #39
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !164, !noalias !2660
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.y, i64 noundef %i.u)
          to label %.noexc5 unwind label %bb.n    ; 6 uses

.noexc5:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !160, !alias.scope !2660
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !164 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !166 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc5
end_hunk_7
begin_hunk_8_@_ZN4crow9Blueprint15new_rule_taggedILm5EEERNS_11black_magic9argumentsIXT_EE4type6rebindINS_10TaggedRuleEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.aj = phi i64 [ %i.af, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !166, !alias.scope !2660
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
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !324 ; 10 uses
  %i.cm = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 3 uses
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
          to label %.noexc15 unwind label %bb.o   ; 10 uses

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
  %min.iters.check = icmp ult i64 %i.cz, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.dc = add i64 %i.cm, -8
  %i.dd = sub i64 %i.dc, %i.cn
  %i.de = and i64 %i.dd, -8
  %i.df = add i64 %i.de, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cw, i64 %i.df
  %scevgep52 = getelementptr i8, ptr %i.cl, i64 %i.df
  %bound0 = icmp ult ptr %i.cw, %scevgep52
  %bound1 = icmp ult ptr %i.cl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %6 = shl i64 %n.vec, 3                          ; 2 uses
  %7 = getelementptr i8, ptr %i.cw, i64 %6        ; 2 uses
  %8 = getelementptr i8, ptr %i.cl, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.dg ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.cl, i64 %i.dg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  %i.dh = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !273, !alias.scope !2663, !noalias !2661
  %wide.load54 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !273, !alias.scope !2663, !noalias !2661
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !2664, !noalias !2663
  store <2 x i64> %wide.load54, ptr %i.di, align 8, !tbaa !273, !alias.scope !2664, !noalias !2663
  %i.dj = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !273, !alias.scope !2663, !noalias !2661
  store <2 x ptr> splat (ptr null), ptr %i.dj, align 8, !tbaa !273, !alias.scope !2663, !noalias !2661
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !2656

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.preheader56:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.i.preheader ], [ %7, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.i.preheader ], [ %8, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  %i.dl = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2662, !noalias !2661
  store i64 %i.dl, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2661, !noalias !2662
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2662, !noalias !2661
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dm, %i.ch
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2657

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cw, %.noexc15 ], [ %7, %middle.block ], [ %i.dn, %.lr.ph.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.co) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !324
  store ptr %i.do, ptr %i.cg, align 8, !tbaa !325
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dp, ptr %i.ci, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.j
  %i.dq = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.aa
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit
  %i.ds = load i64, ptr %i.aa, align 8, !tbaa !165
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret ptr %i.aq

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.e
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.n
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !165
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.o:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.aa
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.o
  %i.ec = load i64, ptr %i.aa, align 8, !tbaa !165
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn = phi { ptr, i32 } [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.dz, %bb.o ]
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

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !tbaa !165
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre6, i64 noundef %i.ag) #41
end_hunk_8
begin_hunk_9_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_:bb.a
  %i.k = load i32, ptr %0, align 4, !tbaa !276
  store i32 %i.k, ptr %i.i, align 4, !tbaa !276
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !276
  %i.x = load i32, ptr %i.v, align 4, !tbaa !276
  %i.y = icmp slt i32 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !276
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !276
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !112

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !276
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !276
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !276 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !276
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !113

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.ar, align 4, !tbaa !276
  %i.as = icmp sgt i64 %i.m, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2734

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !276 ; 5 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !276 ; 5 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !276 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr %0, align 4, !tbaa !276
  store i32 %i.az, ptr %0, align 4, !tbaa !276
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !276
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp slt i32 %i.ay, %i.bb
  %i.bf = load i32, ptr %0, align 4, !tbaa !276   ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %0, align 4, !tbaa !276
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !276
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ay, ptr %0, align 4, !tbaa !276
  store i32 %i.bf, ptr %i.f, align 4, !tbaa !276
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bg = icmp slt i32 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %0, align 4, !tbaa !276
  store i32 %i.ay, ptr %0, align 4, !tbaa !276
  store i32 %i.bh, ptr %i.f, align 4, !tbaa !276
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp slt i32 %i.az, %i.bb
  %i.bj = load i32, ptr %0, align 4, !tbaa !276   ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.bb, ptr %0, align 4, !tbaa !276
  store i32 %i.bj, ptr %i.ax, align 4, !tbaa !276
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.az, ptr %0, align 4, !tbaa !276
  store i32 %i.bj, ptr %i.aw, align 4, !tbaa !276
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !276   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !276 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !2735

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.bo = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !276 ; 2 uses
  %i.bp = icmp slt i32 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !2736

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bo, ptr %.sroa.010.1.i.i, align 4, !tbaa !276
  store i32 %i.bl, ptr %.sroa.0.1.i.i, align 4, !tbaa !276
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !2737

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 16
  br i1 %i.bu, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2733

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i.a, label %bb.g

.lr.ph.i.a:                                       ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i.a
  %.sroa.0.018.i.idx = phi i64 [ 4, %.lr.ph.i.a ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i.a ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i32, ptr %.sroa.0.018.i.ptr, align 4, !tbaa !276 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !276    ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !568

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !276
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.pn17.i, align 4, !tbaa !276 ; 2 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i32 %i.l, ptr %.sroa.04.08.i.i, align 4, !tbaa !276
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !276 ; 2 uses
  %i.n = icmp slt i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2738

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !276
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !2739

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.05.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit ] ; 5 uses
  %i.p = load i32, ptr %.sroa.0.05.i, align 4, !tbaa !276 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !276 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.s = phi i32 [ %i.t, %.lr.ph.i.i8 ], [ %i.q, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i32 %i.s, ptr %.sroa.04.08.i.i10, align 4, !tbaa !276
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -4 ; 2 uses
  %i.t = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !276 ; 2 uses
  %i.u = icmp slt i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !2738

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i32 %i.p, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !276
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %.not.i7 = icmp eq ptr %i.v, %1
  br i1 %.not.i7, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !2740

bb.g:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not16.i14
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %bb.g ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %bb.g ] ; 4 uses
  %i.x = load i32, ptr %.sroa.0.018.i16, align 4, !tbaa !276 ; 4 uses
  %i.y = load i32, ptr %0, align 4, !tbaa !276    ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.aa = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !568

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 8
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ab, 4
  br i1 %i.ah, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 4
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !276
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aj = load i32, ptr %.pn17.i17, align 4, !tbaa !276 ; 2 uses
  %i.ak = icmp slt i32 %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.al = phi i32 [ %i.am, %.lr.ph.i.i22 ], [ %i.aj, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i32 %i.al, ptr %.sroa.04.08.i.i24, align 4, !tbaa !276
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.0.i.i25, align 4, !tbaa !276 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !2738

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i32 %i.x, ptr %.sink.i19, align 4, !tbaa !276
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 4 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !2739

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !276  ; 2 uses
  %i.r = icmp slt i64 %.08.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !276
  %i.y = load i32, ptr %i.w, align 4, !tbaa !276
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !276
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !276
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !112

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !276 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

end_hunk_9
begin_hunk_10_@_ZZN4crow6Router24internal_add_rule_objectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8BaseRuleERKmRSt6vectorIPNS_9BlueprintESaISF_EEENKUliE_clEi:bb.a
bb.k:                                             ; preds = %bb.j
  br i1 %.not.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !165
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2754, !nonnull !275
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !715, !range !274, !noundef !275
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %.critedge22

bb.m:                                             ; preds = %.critedge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2755, !nonnull !275, !align !411
  %i.ca = load ptr, ptr %i.ap, align 8, !tbaa !2751, !nonnull !275, !align !411
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !162 ; 2 uses
  %.not.not19 = icmp eq i64 %i.cb, -1             ; 3 uses
  br i1 %.not.not19, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2752, !nonnull !275, !align !411
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !322
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cb
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1065 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ch, ptr %3, align 8, !tbaa !160, !alias.scope !2756
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !164, !noalias !2756 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !166, !noalias !2756 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2756
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !162, !noalias !2756
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i.i28, label %._crit_edge.i.i.i27

.noexc.i.i28:                                     ; preds = %bb.n
  %i.cm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cm, ptr %3, align 8, !tbaa !164, !alias.scope !2756
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !2756
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !165, !alias.scope !2756
  br label %._crit_edge.i.i.i27

._crit_edge.i.i.i27:                              ; preds = %.noexc.i.i28, %bb.n
  %i.co = phi ptr [ %i.cm, %.noexc.i.i28 ], [ %i.ch, %bb.n ] ; 2 uses
  switch i64 %i.ck, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNK4crow9Blueprint6prefixB5cxx11Ev.exit29
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i27
  %i.cp = load i8, ptr %i.ci, align 1, !tbaa !165
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !165
  br label %_ZNK4crow9Blueprint6prefixB5cxx11Ev.exit29

bb.p:                                             ; preds = %._crit_edge.i.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.ci, i64 %i.ck, i1 false)
  br label %_ZNK4crow9Blueprint6prefixB5cxx11Ev.exit29

_ZNK4crow9Blueprint6prefixB5cxx11Ev.exit29:       ; preds = %._crit_edge.i.i.i27, %bb.o, %bb.p
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !2756 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !166, !alias.scope !2756
  %i.cs = load ptr, ptr %3, align 8, !tbaa !164, !alias.scope !2756
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 0, ptr %i.ct, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2756
  %i.cu = load i64, ptr %i.cr, align 8, !tbaa !166
  %i.cv = trunc i64 %i.cu to i32
  %.pre41 = load ptr, ptr %i.ap, align 8, !tbaa !2751
  %.pre42 = load i64, ptr %.pre41, align 8, !tbaa !162
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %_ZNK4crow9Blueprint6prefixB5cxx11Ev.exit29
  %i.cw = phi i64 [ %.pre42, %_ZNK4crow9Blueprint6prefixB5cxx11Ev.exit29 ], [ -1, %bb.m ]
  %i.cx = phi i32 [ %i.cv, %_ZNK4crow9Blueprint6prefixB5cxx11Ev.exit29 ], [ 0, %bb.m ]
  invoke void @_ZN4crow4Trie3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjm(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef 1, i32 noundef %i.cx, i64 noundef %i.cw)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  br i1 %.not.not19, label %.critedge22, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.s
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !165
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %.critedge22

bb.t:                                             ; preds = %bb.j
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.not, label %.critedge24, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.u
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !165
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %.critedge24

bb.v:                                             ; preds = %bb.q
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.not19, label %.critedge24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.w
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !165
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %.critedge24

.critedge22:                                      ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %.critedge
  ret void

.critedge24:                                      ; preds = %bb.v, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.pn = phi { ptr, i32 } [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.dd, %bb.t ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.dj, %bb.v ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !240    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !276
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !276
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %2, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !242
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #39
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #43 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !276
  %i.y = add nsw i64 %1, -1                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !276
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = icmp sgt i64 %i.f, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ac = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #41
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !240
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !241
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.633", align 16 ; 10 uses
  %3 = alloca %class.anon.655, align 8            ; 9 uses
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
  br label %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !164
  %i.i = load i64, ptr %i.c, align 8, !tbaa !165
  store i64 %i.i, ptr %i.a, align 8, !tbaa !165
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !166
  br label %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit

_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
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

.noexc:                                           ; preds = %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.j, %i.a
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc
  %i.s = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.t, i1 false)
  br label %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  store ptr %i.j, ptr %i.p, align 8, !tbaa !164
  %i.u = load i64, ptr %i.a, align 8, !tbaa !165
  store i64 %i.u, ptr %i.q, align 8, !tbaa !165
  br label %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i

_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
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
  store ptr @_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !179
  store <2 x ptr> %i.z, ptr %i.v, align 16, !tbaa !179
  store ptr @_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_E9_M_invokeERKSt9_Any_dataS2_S4_OSA_, ptr %i.y, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit

bb.d:                                             ; preds = %_ZNSt8functionIFvRN4crow7requestERNS0_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IZNS0_10TaggedRuleIJSA_EEclIZNS0_4CrowIJEE14add_static_dirEvEUlS4_SA_E_EEvOT_EUlS2_S4_SA_E_vEESL_.exit.i
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
  br i1 %i.ae, label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !tbaa !165
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre6, i64 noundef %i.ag) #41
  br label %_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit

_ZZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_ENUlRNS_7requestESC_S6_E_D2Ev.exit: ; preds = %bb.f, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.g:                                             ; preds = %_ZZN4crow4CrowIJEE14add_static_dirEvENUlRNS_8responseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_C2EOSA_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq ptr %i.j, %i.a
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
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !324 ; 10 uses
  %i.aw = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
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
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #43 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr %i.b, ptr %i.bh, align 8, !tbaa !273
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bm = add i64 %i.aw, -8
  %i.bn = sub i64 %i.bm, %i.ax
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bo, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %i.bp
  %scevgep15 = getelementptr i8, ptr %i.av, i64 %i.bp
  %bound0 = icmp ult ptr %i.bg, %scevgep15
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %4 = shl i64 %n.vec, 3                          ; 2 uses
  %5 = getelementptr i8, ptr %i.bg, i64 %4        ; 2 uses
  %6 = getelementptr i8, ptr %i.av, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bq ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.av, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  %i.br = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !273, !alias.scope !2767, !noalias !2765
  %wide.load17 = load <2 x i64>, ptr %i.br, align 8, !tbaa !273, !alias.scope !2767, !noalias !2765
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !2768, !noalias !2767
  store <2 x i64> %wide.load17, ptr %i.bs, align 8, !tbaa !273, !alias.scope !2768, !noalias !2767
  %i.bt = getelementptr i8, ptr %next.gep16, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep16, align 8, !tbaa !273, !alias.scope !2767, !noalias !2765
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !273, !alias.scope !2767, !noalias !2765
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !2763

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader19

.lr.ph.i.i.i.i.i.preheader19:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %5, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %6, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader19, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2766, !noalias !2765
  store i64 %i.bv, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2765, !noalias !2766
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2766, !noalias !2765
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2764

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %5, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !324
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !325
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bz, ptr %i.as, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.b

bb.k:                                             ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #41
  resume { ptr, i32 } %i.ca
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
  %i.an = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %.body
end_hunk_10
begin_hunk_11_@_ZN4asio6detail13epoll_reactor16descriptor_state10perform_ioEj:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret ptr %i.bd

bb.ah:                                            ; preds = %.loopexit.split-lp
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #40 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit27

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit27: ; preds = %.loopexit.split-lp, %bb.ah
  call void @_ZN4asio6detail13epoll_reactor32perform_io_cleanup_on_block_exitD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail13epoll_reactor32perform_io_cleanup_on_block_exitD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1206
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !429
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !1205
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !427, !nonnull !275, !align !411
  invoke void @_ZN4asio6detail9scheduler25post_deferred_completionsERNS0_8op_queueINS0_19scheduler_operationEEE(ptr noundef nonnull align 8 dereferenceable(256) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.e unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !1205
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !427, !nonnull !275, !align !411
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.0.i.sink.in.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.d ]
  %.0.i.sink.i = load ptr, ptr %.0.i.sink.in.i, align 8, !tbaa !448, !nonnull !275, !noundef !275 ; 3 uses
  %i.m = load ptr, ptr %.0.i.sink.i, align 8, !tbaa !447
  %i.n = icmp eq ptr %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 16
  br i1 %i.n, label %_ZN4asio6detail9scheduler25compensating_work_startedEv.exit, label %.lr.ph.i.i

_ZN4asio6detail9scheduler25compensating_work_startedEv.exit: ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !449, !nonnull !275, !noundef !275
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !676
  %i.t = add nsw i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !676
  br label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail9scheduler25compensating_work_startedEv.exit, %bb.b, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !429  ; 2 uses
  %.not5.i = icmp eq ptr %i.v, null
  br i1 %.not5.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %i.z = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ae, %bb.i ] ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !415 ; 2 uses
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !429
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.w, align 8, !tbaa !430
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.z, align 8, !tbaa !415
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store i32 0, ptr %1, align 8, !tbaa !285
  store ptr %i.y, ptr %i.x, align 8, !tbaa !286
  invoke void %i.ad(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
          to label %bb.i unwind label %bb.j, !inline_history !14

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !429 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #42
  unreachable

_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit: ; preds = %bb.i, %bb.e
  ret void

bb.k:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4asio6detail18signal_set_service12pipe_read_op10do_performEPNS0_10reactor_opE(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !1199 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !276
  %i.c = call i64 @read(i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 4)
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = load i32, ptr %i.a, align 4, !tbaa !276  ; 2 uses
  %or.cond = icmp ult i32 %i.e, 65
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN4asio6detail18signal_set_service14deliver_signalEi(i32 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = call i64 @read(i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 4)
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !3028

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail18signal_set_service12pipe_read_op11do_completeEPvPNS0_19scheduler_operationERKSt10error_codem(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail18signal_set_service14deliver_signalEi(i32 noundef %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  %2 = alloca %"class.asio::detail::op_queue.154", align 8 ; 12 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4asio6detail16get_signal_stateEvE5state) #40 ; 0 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !1196 ; 2 uses
  %.not37 = icmp eq ptr %i.b, null
  br i1 %.not37, label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit29, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph40, %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit
  %.02238 = phi ptr [ %i.b, %.lr.ph40 ], [ %i.af, %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.02238, i64 64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.c
  %.01934 = load ptr, ptr %i.g, align 8, !tbaa !478 ; 2 uses
  %.not2435 = icmp eq ptr %.01934, null
  br i1 %.not2435, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.h = phi ptr [ %i.aa, %bb.d ], [ null, %bb.b ] ; 3 uses
  %.01936 = phi ptr [ %.019, %bb.d ], [ %.01934, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01936, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1202 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !470  ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.lr.ph
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 %0, ptr %i.m, align 8, !tbaa !1208
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !415  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit, label %thread-pre-split

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.01936, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1209
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !1209
  br label %bb.d

_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit: ; preds = %._crit_edge
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.t = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4asio6detail16get_signal_stateEvE5state) #40 ; 0 uses
  resume { ptr, i32 } %i.s

thread-pre-split:                                 ; preds = %.preheader, %thread-pre-split
  %i.u = phi ptr [ %i.y, %thread-pre-split ], [ %i.n, %.preheader ] ; 4 uses
  %i.v = phi ptr [ %i.u, %thread-pre-split ], [ %i.k, %.preheader ] ; 5 uses
  %i.w = phi ptr [ %i.v, %thread-pre-split ], [ %i.h, %.preheader ] ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !415
  %.not.i27 = icmp eq ptr %i.w, null
  %..i = select i1 %.not.i27, ptr %2, ptr %i.w
  store ptr %i.v, ptr %..i, align 8, !tbaa !432
  store ptr %i.v, ptr %i.d, align 8, !tbaa !430
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 %0, ptr %i.x, align 8, !tbaa !1208
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !415  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit, label %thread-pre-split

.loopexit:                                        ; preds = %thread-pre-split, %.preheader
  %.lcssa49 = phi ptr [ %i.h, %.preheader ], [ %i.v, %thread-pre-split ] ; 2 uses
  %.lcssa = phi ptr [ %i.k, %.preheader ], [ %i.u, %thread-pre-split ] ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !471
  %.not.i2746 = icmp eq ptr %.lcssa49, null
  %..i47 = select i1 %.not.i2746, ptr %2, ptr %.lcssa49
  store ptr %.lcssa, ptr %..i47, align 8, !tbaa !432
  store ptr %.lcssa, ptr %i.d, align 8, !tbaa !430
  store ptr null, ptr %i.j, align 8, !tbaa !470
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %i.aa = phi ptr [ %.lcssa, %.loopexit ], [ %i.h, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.01936, i64 24
  %.019 = load ptr, ptr %i.ab, align 8, !tbaa !478 ; 2 uses
  %.not24 = icmp eq ptr %.019, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !3029

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.02238, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !484, !nonnull !275, !align !411
  invoke void @_ZN4asio6detail9scheduler25post_deferred_completionsERNS0_8op_queueINS0_19scheduler_operationEEE(ptr noundef nonnull align 8 dereferenceable(256) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %.02238, i64 584
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1197 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !429   ; 2 uses
  %.not5.i = icmp eq ptr %i.ag, null
  br i1 %.not5.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %i.ai = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.an, %bb.i ] ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !415 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !429
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.d, align 8, !tbaa !430
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.ai, align 8, !tbaa !415
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store i32 0, ptr %1, align 8, !tbaa !285
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !286
  invoke void %i.am(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
          to label %bb.i unwind label %bb.j, !inline_history !14

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.an = load ptr, ptr %2, align 8, !tbaa !429   ; 2 uses
  %.not.i28 = icmp eq ptr %i.an, null
  br i1 %.not.i28, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #42
  unreachable

_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit: ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit29, label %bb.b, !llvm.loop !3030

_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit29: ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, %bb.a
  %i.aq = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4asio6detail16get_signal_stateEvE5state) #40 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail18signal_set_service14remove_serviceEPS1_(ptr noundef %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4asio6detail16get_signal_stateEvE5state) #40 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1197
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1198
  %.not26 = icmp ne ptr %i.e, null
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4asio6detail16get_signal_stateEvE5state, i64 56), align 8
  %i.g = icmp eq ptr %i.f, %0
  %or.cond = select i1 %.not26, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE6unlockEv.exit, label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit31

_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE6unlockEv.exit: ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !1199
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4asio6detail16get_signal_stateEvE5state) #40 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1200, !nonnull !275, !align !411
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @_ZN4asio6detail13epoll_reactor30deregister_internal_descriptorEiRPNS1_16descriptor_stateE(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !1200, !nonnull !275, !align !411 ; 5 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !489  ; 5 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE4lockEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE6unlockEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = load i8, ptr %i.o, align 8, !tbaa !419, !range !274, !noundef !275
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  br i1 %i.q, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.s = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #40 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 200 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !490
  %i.v = icmp eq ptr %i.u, %i.n
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !489  ; 4 uses
  br i1 %i.v, label %bb.e, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit._crit_edge.i.i

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  store ptr %i.x, ptr %i.t, align 8, !tbaa !490
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit._crit_edge.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit._crit_edge.i.i: ; preds = %bb.e, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !489  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit._crit_edge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !489
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit._crit_edge.i.i
  %.not12.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not12.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !489
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !489
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 208 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !491
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !489
  store ptr null, ptr %i.y, align 8, !tbaa !489
  store ptr %i.n, ptr %i.ad, align 8, !tbaa !491
  br i1 %i.q, label %bb.i, label %_ZN4asio6detail13epoll_reactor21free_descriptor_stateEPNS1_16descriptor_stateE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #40 ; 0 uses
  br label %_ZN4asio6detail13epoll_reactor21free_descriptor_stateEPNS1_16descriptor_stateE.exit.i

_ZN4asio6detail13epoll_reactor21free_descriptor_stateEPNS1_16descriptor_stateE.exit.i: ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.l, align 8, !tbaa !489
  br label %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE4lockEv.exit

_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE4lockEv.exit: ; preds = %_ZN4asio6detail13epoll_reactor21free_descriptor_stateEPNS1_16descriptor_stateE.exit.i, %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE6unlockEv.exit
  %i.ah = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4asio6detail16get_signal_stateEvE5state) #40 ; 0 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !1196 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %0
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !1197 ; 5 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE4lockEv.exit
  store ptr %.pre.pre, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !1196
  br label %bb.k

_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEED2Ev.exit: ; preds = %bb.r, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4asio6detail16get_signal_stateEvE5state) #40 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %bb.j, %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE4lockEv.exit
  %i.al = phi ptr [ %.pre.pre, %bb.j ], [ %i.ai, %_ZN4asio6detail11scoped_lockINS0_18posix_static_mutexEE4lockEv.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1198 ; 3 uses
  %.not27 = icmp eq ptr %i.an, null
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 584
  store ptr %.pre.pre, ptr %i.ao, align 8, !tbaa !1197
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not28 = icmp eq ptr %.pre.pre, null
  br i1 %.not28, label %bb.o, label %bb.n

end_hunk_11
begin_hunk_12_@_ZNSt6vectorISt6futureIvESaIS1_EED2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #40, !inline_history !3047
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !257
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #40, !inline_history !3047
  br label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #40
  br label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i

_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i:         ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !110

_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1115
  br label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6futureIvESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1102
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #41
  br label %_ZNSt12_Vector_baseISt6futureIvESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseISt6futureIvESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !356    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !358
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEmS8_ET_SA_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEmS8_ET_SA_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 5                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !357
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #39
  unreachable

_ZNKSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 5
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #43 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %_ZSt19__relocate_object_aISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.u, %_ZNKSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3052, !noalias !3053
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3055, !alias.scope !3053, !noalias !3052
  store ptr %i.z, ptr %i.x, align 8, !tbaa !3055, !alias.scope !3052, !noalias !3053
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !244, !alias.scope !3053, !noalias !3052 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2EOS7_.exit.i.i.i.i

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2EOS7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !178, !alias.scope !3056
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !244, !alias.scope !3052, !noalias !3053
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !3053, !noalias !3052
  br label %_ZSt19__relocate_object_aISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2EOS7_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !3051

_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE13_M_deallocateEPS8_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !358
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #41
  br label %_ZNSt12_Vector_baseISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE13_M_deallocateEPS8_m.exit37

_ZNSt12_Vector_baseISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE13_M_deallocateEPS8_m.exit37: ; preds = %_ZNSt6vectorISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !356
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %1
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !357
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aj, ptr %i.h, align 8, !tbaa !358
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEmS8_ET_SA_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEESaIS8_EE13_M_deallocateEPS8_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1093 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !361    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
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
  store ptr null, ptr %i.b, align 8, !tbaa !1230
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !1230
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %2, %_ZSt6fill_nIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !1093
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIPN4crow6detail10task_timerESaIS3_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #39
  unreachable

_ZNKSt6vectorIPN4crow6detail10task_timerESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #43 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 3 uses
  store ptr null, ptr %i.x, align 8, !tbaa !1230
  %i.y = add nsw i64 %1, -1                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN4crow6detail10task_timerESaIS3_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !1230
  br label %_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN4crow6detail10task_timerESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ab = icmp sgt i64 %i.f, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN4crow6detail10task_timerESaIS3_EE13_M_deallocateEPS3_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ac = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #41
  br label %_ZNSt12_Vector_baseIPN4crow6detail10task_timerESaIS3_EE13_M_deallocateEPS3_m.exit36

_ZNSt12_Vector_baseIPN4crow6detail10task_timerESaIS3_EE13_M_deallocateEPS3_m.exit36: ; preds = %_ZNSt6vectorIPN4crow6detail10task_timerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !361
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !1093
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !362
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN4crow6detail10task_timerEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN4crow6detail10task_timerESaIS3_EE13_M_deallocateEPS3_m.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1101 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1115   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
  unreachable

_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !179
  store ptr null, ptr %i.r, align 8, !tbaa !312
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !179
  store ptr null, ptr %2, align 8, !tbaa !1105
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !179, !alias.scope !3065, !noalias !3064
  store ptr null, ptr %i.t, align 8, !tbaa !312, !alias.scope !3065, !noalias !3064
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !179, !alias.scope !3064, !noalias !3065
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !1105, !alias.scope !3065, !noalias !3064
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3060

_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !179, !alias.scope !3067, !noalias !3066
  store ptr null, ptr %i.y, align 8, !tbaa !312, !alias.scope !3067, !noalias !3066
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !179, !alias.scope !3066, !noalias !3067
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !1105, !alias.scope !3067, !noalias !3066
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3060

_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1102
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #41
  br label %_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1115
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !1101
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !1102
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt10error_codeRKSt15error_condition(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286  ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !285
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1) #40, !inline_history !3068
  br i1 %i.g, label %_ZSteqRKSt10error_codeRKSt15error_condition.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3070 ; 2 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !3071
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.j) #40, !inline_history !3068
  %i.o = xor i1 %i.n, true
  br label %_ZSteqRKSt10error_codeRKSt15error_condition.exit

_ZSteqRKSt10error_codeRKSt15error_condition.exit: ; preds = %bb.a, %bb.b
  %i.p = phi i1 [ false, %bb.a ], [ %i.o, %bb.b ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_12
begin_hunk_13_@_ZN4crow7requestaSEOS0_:bb.a
  store i8 %i.cw, ptr %i.cn, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.cq, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31: ; preds = %bb.x, %bb.w, %bb.v
  %i.cx = load i64, ptr %i.ct, align 8, !tbaa !166 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !166
  %i.cz = load ptr, ptr %i.cl, align 8, !tbaa !164
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !165
  %.pre.i32 = load ptr, ptr %i.cm, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

.thread.i34:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !164
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !166
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !166
  %i.de = load i64, ptr %i.cr, align 8, !tbaa !165
  store i64 %i.de, ptr %i.co, align 8, !tbaa !165
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27
  %i.df = load i64, ptr %i.co, align 8, !tbaa !165
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !164
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !166
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !166
  %i.dj = load i64, ptr %i.cr, align 8, !tbaa !165
  store i64 %i.dj, ptr %i.co, align 8, !tbaa !165
  %.not.i29 = icmp eq ptr %i.cn, null
  br i1 %.not.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !164
  store i64 %i.df, ptr %i.cr, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28, %.thread.i34
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31, %bb.y, %bb.z
  %i.dk = phi ptr [ %.pre.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31 ], [ %i.cn, %bb.y ], [ %i.cr, %bb.z ], [ %i.cq, %bb.u ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 0, ptr %i.dl, align 8, !tbaa !166
  store i8 0, ptr %i.dk, align 1, !tbaa !165
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN4crow12query_stringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1399 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1400
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !1437
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !1437
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1400
  store ptr %i.i, ptr %i.e, align 8, !tbaa !1400
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.l) #41
  br label %_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit

_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit:              ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !164    ; 7 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !164    ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.r = icmp eq ptr %i.m, %i.q                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit
  br i1 %i.r, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt6vectorIPcSaIS0_EEaSEOS2_.exit
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !166  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !316

bb.d:                                             ; preds = %bb.c
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.m, align 1, !tbaa !165
  store i8 %i.v, ptr %i.n, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.m, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !166  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !166
  %i.y = load ptr, ptr %0, align 8, !tbaa !164
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !165
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %0, align 8, !tbaa !164
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !166
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !166
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !165
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !165
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !165
  store ptr %i.m, ptr %0, align 8, !tbaa !164
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !166
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !166
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !165
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !165
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %1, align 8, !tbaa !164
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %1, align 8, !tbaa !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.aj = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.m, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !166
  store i8 0, ptr %i.aj, align 1, !tbaa !165
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !1437 ; 8 uses
  %i.am = ptrtoaddr ptr %i.al to i64              ; 2 uses
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !1437 ; 3 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %.not11 = icmp eq ptr %i.al, %i.an
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.aq = add i64 %i.ao, -8
  %i.ar = sub i64 %i.aq, %i.am                    ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 104
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = add i64 %i.ao, -8
  %i.av = sub i64 %i.au, %i.am
  %i.aw = and i64 %i.av, -8
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 8
  %scevgep23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %bound0 = icmp ult ptr %i.al, %scevgep23
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %2 = shl i64 %n.vec, 3
  %3 = getelementptr i8, ptr %i.al, i64 %2
  %i.ay = load ptr, ptr %0, align 8, !tbaa !164, !alias.scope !3196
  %broadcast.splatinsert24 = insertelement <2 x ptr> poison, ptr %i.ay, i64 0
  %broadcast.splat25 = shufflevector <2 x ptr> %broadcast.splatinsert24, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.az = ptrtoint <2 x ptr> %broadcast.splat25 to <2 x i64>
  %i.ba = sub <2 x i64> %i.az, %broadcast.splat   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.bb ; 3 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !551, !alias.scope !3197, !noalias !3196
  %wide.load26 = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !551, !alias.scope !3197, !noalias !3196
  %wide.gep = getelementptr inbounds i8, <2 x ptr> %wide.load, <2 x i64> %i.ba
  %wide.gep27 = getelementptr inbounds i8, <2 x ptr> %wide.load26, <2 x i64> %i.ba
  store <2 x ptr> %wide.gep, ptr %next.gep, align 8, !tbaa !551, !alias.scope !3197, !noalias !3196
  store <2 x ptr> %wide.gep27, ptr %i.bc, align 8, !tbaa !551, !alias.scope !3197, !noalias !3196
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !3194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.08.012.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph ], [ %3, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret ptr %0

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.08.012 = phi ptr [ %i.bj, %scalar.ph ], [ %.sroa.08.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !164
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ap
  %i.bh = load ptr, ptr %.sroa.08.012, align 8, !tbaa !551
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.bg
  store ptr %i.bi, ptr %.sroa.08.012, align 8, !tbaa !551
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.an
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !3195
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE7do_readEvENUlRKSt10error_codemE_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !125
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !125
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferEZN4crow10ConnectionINS4_17UnixSocketAdaptorENS4_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEEEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.asio::detail::reactive_socket_recv_op<asio::mutable_buffer, (lambda at /opt-bench/work/crow/Crow/include/crow/http_connection.h:396:15), asio::any_io_executor>::ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr %4, ptr %6, align 8, !tbaa !1440
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !448  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !449
  br label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 168, i64 noundef 8) ; 18 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1441
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !1442
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %1, align 8, !tbaa !485
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !488
  store ptr null, ptr %i.g, align 8, !tbaa !415
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE11do_completeEPvPNS0_19scheduler_operationESB_m, ptr %i.m, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !671
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !705
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr @_ZN4asio6detail28reactive_socket_recv_op_baseINS_14mutable_bufferEE10do_performEPNS0_10reactor_opE, ptr %i.q, align 8, !tbaa !707
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i32 %i.j, ptr %i.r, align 8, !tbaa !774
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store i8 %i.l, ptr %i.s, align 4, !tbaa !775
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !605
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 %3, ptr %i.u, align 8, !tbaa !776
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr null, ptr %i.w, align 8, !tbaa !312
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load <2 x ptr>, ptr %4, align 8, !tbaa !179
  store ptr null, ptr %i.x, align 8, !tbaa !312
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !179
  store ptr null, ptr %4, align 8, !tbaa !1233
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !350
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !572
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !714
  %i.af = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ae()
          to label %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i unwind label %bb.e, !inline_history !3198

_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i: ; preds = %bb.c, %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit
  %i.ag = phi ptr [ @_ZTIv, %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS3_17UnixSocketAdaptorENS3_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEE3ptr8allocateERSC_.exit ], [ %i.af, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !657 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE
  br i1 %i.aj, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !165
  %.not.i3.i.i.i = icmp eq i8 %i.ak, 42
  br i1 %.not.i3.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.i.i.i

_ZNKSt9type_infoeqERKS_.exit.i.i.i:               ; preds = %bb.d
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(52) @_ZTSN4asio10io_context19basic_executor_typeISaIvELm0EEE) #40, !inline_history !3199
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i

_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i:        ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %_ZNK4asio9execution6detail17any_executor_base11target_typeEv.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.ao, align 8, !tbaa !574
  br label %bb.f

_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i:       ; preds = %_ZNKSt9type_infoeqERKS_.exit.i.i.i, %bb.d
  invoke void @_ZNK14asio_prefer_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail16outstanding_work9tracked_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SE_SG_vvvvvvvE11result_typeEE4typeEOSE_OSF_(ptr dead_on_unwind nonnull writable sret(%"class.asio::any_io_executor") align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 1 dereferenceable(1) @_ZN14asio_prefer_fn15static_instanceINS_4implEE8instanceE, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4asio9execution6detail18outstanding_work_tILi0EE7trackedE)
          to label %bb.f unwind label %bb.e, !inline_history !3199

bb.e:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i, %bb.c
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #42, !inline_history !3199
  unreachable

bb.f:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread.i.i.i, %_ZNKSt9type_infoeqERKS_.exit.thread5.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !1442
  %i.ar = and i32 %3, 1                           ; 2 uses
  %i.as = shl nuw nsw i32 %i.ar, 1
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = load i8, ptr %i.k, align 4, !tbaa !488
  %i.av = and i8 %i.au, 16
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !777
  %i.ay = icmp eq i64 %i.ax, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = phi i1 [ false, %bb.f ], [ %i.ay, %bb.g ]
  invoke void @_ZN4asio6detail28reactive_socket_service_base8start_opINS0_23reactive_socket_recv_opINS_14mutable_bufferEZN4crow10ConnectionINS5_17UnixSocketAdaptorENS5_4CrowIJEEEJEE7do_readEvEUlRKSt10error_codemE_NS_15any_io_executorEEEEEvRNS1_24base_implementation_typeEiPT_bbbPKvPNSt9enable_ifIXsr7is_sameINS_29associated_immediate_executorINSJ_12handler_typeENSJ_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.as, ptr noundef nonnull %i.g, i1 noundef zeroext false, i1 noundef zeroext %i.at, i1 noundef zeroext %i.az, ptr noundef nonnull %5, ptr noundef null)
end_hunk_13
begin_hunk_14_@_ZN4crow8qs_parseEPcPS0_mb:bb.a

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.w
  %.03649 = phi i64 [ %i.ar, %bb.w ], [ 0, %.lr.ph51.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03649
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !551  ; 2 uses
  %i.p = tail call i64 @strcspn(ptr noundef %i.o, ptr noundef nonnull @.str.468) #45
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !165
  switch i8 %i.r, label %bb.h [
    i8 38, label %bb.g
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph51, %.lr.ph51
  store i8 0, ptr %i.q, align 1, !tbaa !165
  br label %bb.w

bb.h:                                             ; preds = %.lr.ph51
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.v ], [ 0, %bb.h ] ; 3 uses
  %.0.i = phi i32 [ %i.ap, %bb.v ], [ 0, %bb.h ]  ; 4 uses
  %i.t = sext i32 %.0.i to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !165   ; 2 uses
  switch i8 %i.v, label %bb.u [
    i8 61, label %_ZN4crow9qs_decodeEPc.exit
    i8 35, label %_ZN4crow9qs_decodeEPc.exit
    i8 38, label %_ZN4crow9qs_decodeEPc.exit
    i8 0, label %_ZN4crow9qs_decodeEPc.exit
    i8 43, label %bb.v
    i8 37, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.u, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !165
  %.fr137.i = freeze i8 %i.x                      ; 7 uses
  %i.y = icmp eq i8 %.fr137.i, 0
  br i1 %i.y, label %_ZN4crow9qs_decodeEPc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %.0.i, 2                     ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !165
  %.fr138.i = freeze i8 %i.ac                     ; 7 uses
  %i.ad = icmp eq i8 %.fr138.i, 0
  br i1 %i.ad, label %_ZN4crow9qs_decodeEPc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add i8 %.fr137.i, -48                   ; 2 uses
  %or.cond.i = icmp ult i8 %i.ae, 10              ; 2 uses
  br i1 %or.cond.i, label %.critedge116.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.l
  switch i8 %.fr137.i, label %_ZN4crow9qs_decodeEPc.exit [
    i8 102, label %.critedge116.i
    i8 101, label %.critedge116.i
    i8 100, label %.critedge116.i
    i8 99, label %.critedge116.i
    i8 98, label %.critedge116.i
    i8 97, label %.critedge116.i
    i8 70, label %.critedge116.i
    i8 69, label %.critedge116.i
    i8 68, label %.critedge116.i
    i8 67, label %.critedge116.i
    i8 66, label %.critedge116.i
    i8 65, label %.critedge116.i
  ]

.critedge116.i:                                   ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.l
  %i.af = add i8 %.fr138.i, -48                   ; 2 uses
  %or.cond117.i = icmp ult i8 %i.af, 10           ; 2 uses
  br i1 %or.cond117.i, label %.critedge121.i, label %switch.early.test134.i

switch.early.test134.i:                           ; preds = %.critedge116.i
  switch i8 %.fr138.i, label %_ZN4crow9qs_decodeEPc.exit [
    i8 102, label %.critedge121.i
    i8 101, label %.critedge121.i
    i8 100, label %.critedge121.i
    i8 99, label %.critedge121.i
    i8 98, label %.critedge121.i
    i8 97, label %.critedge121.i
    i8 70, label %.critedge121.i
    i8 69, label %.critedge121.i
    i8 68, label %.critedge121.i
    i8 67, label %.critedge121.i
    i8 66, label %.critedge121.i
    i8 65, label %.critedge121.i
  ]

.critedge121.i:                                   ; preds = %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %switch.early.test134.i, %.critedge116.i
  br i1 %or.cond.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.critedge121.i
  %i.ag = add nsw i8 %.fr137.i, -65
  %or.cond123.i = icmp ult i8 %i.ag, 6
  br i1 %or.cond123.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %narrow109.i = add nsw i8 %.fr137.i, -55
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ah = icmp samesign ugt i8 %.fr137.i, 96
  %narrow.i = add nsw i8 %.fr137.i, -87
  %spec.select128.i = select i1 %i.ah, i8 %narrow.i, i8 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.critedge121.i
  %i.ai = phi i8 [ %spec.select128.i, %bb.o ], [ %narrow109.i, %bb.n ], [ %i.ae, %.critedge121.i ]
  %i.aj = shl nuw i8 %i.ai, 4
  br i1 %or.cond117.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = add nsw i8 %.fr138.i, -65
  %or.cond126.i = icmp ult i8 %i.ak, 6
  br i1 %or.cond126.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %narrow112.i = add nsw i8 %.fr138.i, -55
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.al = icmp samesign ugt i8 %.fr138.i, 96
  %narrow111.i = add nsw i8 %.fr138.i, -87
  %spec.select129.i = select i1 %i.al, i8 %narrow111.i, i8 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %i.am = phi i8 [ %spec.select129.i, %bb.s ], [ %narrow112.i, %bb.r ], [ %i.af, %bb.p ]
  %i.an = add nuw i8 %i.am, %i.aj
  br label %bb.v

bb.u:                                             ; preds = %bb.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.i
  %.sink.i = phi i8 [ %i.an, %bb.t ], [ %i.v, %bb.u ], [ 32, %bb.i ]
  %.1.i = phi i32 [ %i.z, %bb.t ], [ %.0.i, %bb.u ], [ %.0.i, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.ao, align 1, !tbaa !165
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ap = add nsw i32 %.1.i, 1
  br label %bb.i, !llvm.loop !3233

_ZN4crow9qs_decodeEPc.exit:                       ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.j, %bb.k, %switch.early.test.i, %switch.early.test134.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  store i8 0, ptr %i.aq, align 1, !tbaa !165
  br label %bb.w

bb.w:                                             ; preds = %bb.g, %_ZN4crow9qs_decodeEPc.exit
  %i.ar = add nuw i64 %.03649, 1                  ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ar, %.2.ph
  br i1 %exitcond56.not, label %.loopexit, label %.lr.ph51, !llvm.loop !3234

.loopexit:                                        ; preds = %bb.w, %bb.d, %bb.b
  %.039 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %.2.ph, %bb.w ]
  ret i64 %.039
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPcSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1452 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1399   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1400
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
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
  store ptr null, ptr %i.b, align 8, !tbaa !551
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !551
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %2, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !1452
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #39
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #43 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 3 uses
  store ptr null, ptr %i.x, align 8, !tbaa !551
  %i.y = add nsw i64 %1, -1                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !551
  br label %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ab = icmp sgt i64 %i.f, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ac = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #41
  br label %_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m.exit36

_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m.exit36: ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !1399
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !1452
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !1400
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPcmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPcSaIS0_EE13_M_deallocateEPS0_m.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPcSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1437   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1437 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.238) #39
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 4 uses
  %i.k = icmp samesign ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %bb.d, !prof !1133

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, label %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread: ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !551
  store ptr %i.m, ptr %i.i, align 8, !tbaa !551
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1400
  store ptr %i.i, ptr %0, align 8, !tbaa !1399
  store ptr %i.j, ptr %i.b, align 8, !tbaa !1452
  store ptr %i.j, ptr %i.n, align 8, !tbaa !1400
  br label %bb.e

_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i:        ; preds = %bb.b, %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.09) #40 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit unwind label %bb.f

_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1400
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !1399
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !1452
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !1400
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %i.t = phi ptr [ %i.o, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.v) #41
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %bb.e, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIPcSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ true, %bb.e ]
  ret i1 %.0

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEE10handle_urlEv(ptr noundef nonnull align 8 dereferenceable(5176) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.857", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1388
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4616 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1453, !nonnull !275, !align !411
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  call void @_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.857") align 8 %1, ptr noundef nonnull align 8 dereferenceable(3656) %i.f, ptr noundef nonnull align 8 dereferenceable(280) %i.d, ptr noundef nonnull align 8 dereferenceable(352) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1398
  store ptr null, ptr %1, align 8, !tbaa !1398
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !1398 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !1398
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.a
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.i) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 144) #41
  %.pr = load ptr, ptr %1, align 8, !tbaa !1398   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EEaSEOS4_.exit
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %.pr) #40
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 144) #41
  br label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !1398 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1465
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit
  %i.m = load i8, ptr %i.j, align 8, !tbaa !1466, !range !274, !noundef !275
  %i.n = trunc nuw i8 %i.m to i1
end_hunk_14
