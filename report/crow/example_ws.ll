Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow14CerrLogHandler9timestampB5cxx11Ev:bb.a
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #18

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvRN4crow8responseEEPS3_E9_M_invokeERKSt9_Any_dataS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(352) %1) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  tail call void %i.a(ptr noundef nonnull align 8 dereferenceable(352) %1), !inline_history !1667
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN4crow8responseEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFvRN4crow8responseEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFvRN4crow8responseEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
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
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !324 ; 10 uses
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
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #43 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr %i.b, ptr %i.bh, align 8, !tbaa !273
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bm = and i64 %i.bj, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %i.bn
  %scevgep20 = getelementptr i8, ptr %i.av, i64 %i.bn
  %bound0 = icmp ult ptr %i.bg, %scevgep20
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.av, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.av, i64 %i.br ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.bs = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !273, !alias.scope !1678, !noalias !1676
  %wide.load22 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !273, !alias.scope !1678, !noalias !1676
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !1679, !noalias !1678
  store <2 x i64> %wide.load22, ptr %i.bt, align 8, !tbaa !273, !alias.scope !1679, !noalias !1678
  %i.bu = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !273, !alias.scope !1678, !noalias !1676
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !273, !alias.scope !1678, !noalias !1676
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1674

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader24

.lr.ph.i.i.i.i.i.preheader24:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader24, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader24 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader24 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1677, !noalias !1676
  store i64 %i.bw, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1676, !noalias !1677
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !1677, !noalias !1676
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1675

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bp, %middle.block ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !324
  store ptr %i.bz, ptr %i.aq, align 8, !tbaa !325
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.ca, ptr %i.as, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJEEEEEERS5_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.b

bb.k:                                             ; preds = %.noexc.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #41
  resume { ptr, i32 } %i.cb
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
end_hunk_0
begin_hunk_1_@_ZN4crow9Blueprint15new_rule_taggedILm5EEERNS_11black_magic9argumentsIXT_EE4type6rebindINS_10TaggedRuleEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
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
  store ptr %i.ab, ptr %3, align 8, !tbaa !164, !alias.scope !2660
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !165
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !165, !alias.scope !2660
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !166
  br label %bb.f

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
          to label %.noexc15 unwind label %bb.o   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store ptr %i.aq, ptr %i.cx, align 8, !tbaa !273
  %.not10.i.i.i.i.i = icmp eq ptr %i.cl, %i.ch
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc15
  %i.cy = add i64 %i.cm, -8
  %i.cz = sub i64 %i.cy, %i.cn                    ; 3 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.dc = and i64 %i.cz, -8
  %i.dd = add i64 %i.dc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cw, i64 %i.dd
  %scevgep52 = getelementptr i8, ptr %i.cl, i64 %i.dd
  %bound0 = icmp ult ptr %i.cw, %scevgep52
  %bound1 = icmp ult ptr %i.cl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %i.de = shl i64 %n.vec, 3                       ; 2 uses
  %i.df = getelementptr i8, ptr %i.cw, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cl, i64 %i.de
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.dh ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.cl, i64 %i.dh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  %i.di = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !273, !alias.scope !2663, !noalias !2661
  %wide.load54 = load <2 x i64>, ptr %i.di, align 8, !tbaa !273, !alias.scope !2663, !noalias !2661
  %i.dj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !2664, !noalias !2663
  store <2 x i64> %wide.load54, ptr %i.dj, align 8, !tbaa !273, !alias.scope !2664, !noalias !2663
  %i.dk = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !273, !alias.scope !2663, !noalias !2661
  store <2 x ptr> splat (ptr null), ptr %i.dk, align 8, !tbaa !273, !alias.scope !2663, !noalias !2661
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !2656

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.preheader56:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.df, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  %i.dm = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2662, !noalias !2661
  store i64 %i.dm, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2661, !noalias !2662
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2662, !noalias !2661
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, %i.ch
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2657

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cw, %.noexc15 ], [ %i.df, %middle.block ], [ %i.do, %.lr.ph.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.co) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !324
  store ptr %i.dp, ptr %i.cg, align 8, !tbaa !325
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dq, ptr %i.ci, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.j
  %i.dr = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.aa
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit
  %i.dt = load i64, ptr %i.aa, align 8, !tbaa !165
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret ptr %i.aq

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.e
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.n
  %i.dy = load i64, ptr %i.e, align 8, !tbaa !165
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.o:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.aa
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.o
  %i.ed = load i64, ptr %i.aa, align 8, !tbaa !165
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn = phi { ptr, i32 } [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ea, %bb.o ]
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
end_hunk_1
begin_hunk_2_@_ZN4crow10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIZNS_4CrowIJEE14add_static_dirEvEUlRNS_8responseES6_E_EEvOT_:bb.a
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
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #43 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr %i.b, ptr %i.bh, align 8, !tbaa !273
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bm = and i64 %i.bj, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %i.bn
  %scevgep15 = getelementptr i8, ptr %i.av, i64 %i.bn
  %bound0 = icmp ult ptr %i.bg, %scevgep15
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.av, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.av, i64 %i.br ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  %i.bs = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !273, !alias.scope !2767, !noalias !2765
  %wide.load17 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !273, !alias.scope !2767, !noalias !2765
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !273, !alias.scope !2768, !noalias !2767
  store <2 x i64> %wide.load17, ptr %i.bt, align 8, !tbaa !273, !alias.scope !2768, !noalias !2767
  %i.bu = getelementptr i8, ptr %next.gep16, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep16, align 8, !tbaa !273, !alias.scope !2767, !noalias !2765
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !273, !alias.scope !2767, !noalias !2765
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !2763

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader19

.lr.ph.i.i.i.i.i.preheader19:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader19, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2766, !noalias !2765
  store i64 %i.bw, ptr %.012.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2765, !noalias !2766
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !273, !alias.scope !2766, !noalias !2765
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2764

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bp, %middle.block ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #41
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !324
  store ptr %i.bz, ptr %i.aq, align 8, !tbaa !325
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.ca, ptr %i.as, align 8, !tbaa !326
  br label %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEERS5_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4crow8BaseRuleESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPNS1_10TaggedRuleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.b

bb.k:                                             ; preds = %.noexc.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #41
  resume { ptr, i32 } %i.cb
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
end_hunk_2
begin_hunk_3_@_ZN4crow7requestaSEOS0_:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !164 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !164 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 6 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr                ; 2 uses
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26
  br i1 %i.cs, label %bb.u, label %.thread.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit26
  br i1 %i.cs, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !166 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  tail call void @llvm.assume(i1 %i.cv)
  %.not21.i30 = icmp eq ptr %1, %0
  br i1 %.not21.i30, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35, label %bb.v, !prof !316

bb.v:                                             ; preds = %bb.u
  switch i64 %i.cu, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !165
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
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !1437 ; 3 uses
  %.not11 = icmp eq ptr %i.al, %i.am
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = ptrtoint ptr %i.m to i64                ; 2 uses
  %2 = ptrtoaddr ptr %i.am to i64
  %3 = ptrtoaddr ptr %i.al to i64
  %i.ao = add i64 %2, -8
  %i.ap = sub i64 %i.ao, %3                       ; 3 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 104
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.as = and i64 %i.ap, -8
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %scevgep = getelementptr i8, ptr %i.at, i64 8
  %scevgep23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %bound0 = icmp ult ptr %i.al, %scevgep23
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.au = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au
  %i.aw = load ptr, ptr %0, align 8, !tbaa !164, !alias.scope !3196
  %broadcast.splatinsert24 = insertelement <2 x ptr> poison, ptr %i.aw, i64 0
  %broadcast.splat25 = shufflevector <2 x ptr> %broadcast.splatinsert24, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ax = ptrtoint <2 x ptr> %broadcast.splat25 to <2 x i64>
  %i.ay = sub <2 x i64> %i.ax, %broadcast.splat   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.az ; 3 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !551, !alias.scope !3197, !noalias !3196
  %wide.load26 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !551, !alias.scope !3197, !noalias !3196
  %wide.gep = getelementptr inbounds i8, <2 x ptr> %wide.load, <2 x i64> %i.ay
  %wide.gep27 = getelementptr inbounds i8, <2 x ptr> %wide.load26, <2 x i64> %i.ay
  store <2 x ptr> %wide.gep, ptr %next.gep, align 8, !tbaa !551, !alias.scope !3197, !noalias !3196
  store <2 x ptr> %wide.gep27, ptr %i.ba, align 8, !tbaa !551, !alias.scope !3197, !noalias !3196
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !3194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.08.012.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph ], [ %i.av, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret ptr %0

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.08.012 = phi ptr [ %i.bh, %scalar.ph ], [ %.sroa.08.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !164
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.an
  %i.bf = load ptr, ptr %.sroa.08.012, align 8, !tbaa !551
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.be
  store ptr %i.bg, ptr %.sroa.08.012, align 8, !tbaa !551
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.am
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

end_hunk_3
