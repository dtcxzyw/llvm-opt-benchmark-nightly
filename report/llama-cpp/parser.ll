Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/parser?download=true
inline.NumInlined: 3913
inline.NumDeleted: 1903
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0

; Function Attrs: mustprogress uwtable
define void @_ZN5jinja17parse_from_tokensERKNS_12lexer_resultE(ptr dead_on_unwind noalias writable sret(%"struct.jinja::program") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.jinja::parser", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %1, ptr %2, align 8, !tbaa !178
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !30
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.h, ptr %i.a, align 8, !tbaa !33
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !31
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.k, ptr %i.e, align 8, !tbaa !34
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN5jinja6parserC2ERKSt6vectorINS_5tokenESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !34
  store i8 %i.m, ptr %i.l, align 1, !tbaa !34
  br label %_ZN5jinja6parserC2ERKSt6vectorINS_5tokenESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZN5jinja6parserC2ERKSt6vectorINS_5tokenESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5jinja6parserC2ERKSt6vectorINS_5tokenESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !32
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN5jinja6parser5parseEv(ptr dead_on_unwind writable sret(%"struct.jinja::program") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5jinja6parserC2ERKSt6vectorINS_5tokenESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZN5jinja6parserD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !34
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %_ZN5jinja6parserD2Ev.exit

_ZN5jinja6parserD2Ev.exit:                        ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.e:                                             ; preds = %_ZN5jinja6parserC2ERKSt6vectorINS_5tokenESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %_ZN5jinja6parserD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.e
  %i.y = load i64, ptr %i.e, align 8, !tbaa !34
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZN5jinja6parserD2Ev.exit5

_ZN5jinja6parserD2Ev.exit5:                       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5jinja6parser5parseEv(ptr dead_on_unwind noalias writable sret(%"struct.jinja::program") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 8 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %1, align 8, !tbaa !35, !nonnull !36, !align !37 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48
  %i.k = icmp ult i64 %i.b, %i.j
  br i1 %i.k, label %.lr.ph, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev.exit

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit
  %i.n = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ] ; 11 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.c
  %i.q = load i64, ptr %3, align 8, !tbaa !43
  store i64 %i.q, ptr %i.p, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i, %i.w  ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i7 = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i7)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = load i64, ptr %3, align 8, !tbaa !43
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !43
  store ptr null, ptr %3, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc9
  %i.af = add i64 %i.s, -8
  %i.ag = sub i64 %i.af, %i.t                     ; 3 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aj = and i64 %i.ag, -8
  %i.ak = add i64 %i.aj, 8                        ; 2 uses
  %i.al = getelementptr i8, ptr %i.ac, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.n, i64 %i.ak
  %bound0 = icmp ult ptr %i.ac, %i.am
  %bound1 = icmp ult ptr %i.n, %i.al
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.n, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.aq ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.n, i64 %i.aq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.ar = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !43, !alias.scope !190
  %wide.load27 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !43, !alias.scope !190
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !191, !noalias !192
  store <2 x i64> %wide.load27, ptr %i.as, align 8, !tbaa !43, !alias.scope !191, !noalias !192
  %4 = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !43, !alias.scope !190
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !43, !alias.scope !190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader29

.lr.ph.i.i.i.i.preheader29:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader29, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader29 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader29 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.au = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !189
  store i64 %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !188
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !189
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.o
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !186

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ac, %.noexc9 ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.u) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.f
  store ptr %i.ac, ptr %2, align 8, !tbaa !50
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa ; 3 uses
  store ptr %i.ay, ptr %i.m, align 8, !tbaa !51
  %.pr = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i
  %i.bc = phi ptr [ %i.n, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ac, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.ac, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ] ; 2 uses
  %i.bd = phi ptr [ %i.o, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ay, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.ay, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ] ; 2 uses
  %i.be = phi ptr [ %i.r, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ax, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.ax, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !29
  %i.bg = load ptr, ptr %1, align 8, !tbaa !35, !nonnull !36, !align !37 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 48
  %i.bo = icmp ult i64 %i.bf, %i.bn
  br i1 %i.bo, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev.exit, !llvm.loop !187

bb.g:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit6

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %.not.i4 = icmp eq ptr %i.bq, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit6, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i5

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i5: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit6

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit6: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i5, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.g ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp30, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.bu = phi ptr [ null, %bb.a ], [ %i.bd, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ]
  %i.bv = phi ptr [ null, %bb.a ], [ %i.be, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ]
  %i.bw = phi ptr [ null, %bb.a ], [ %i.bc, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ]
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja7programE, i64 16), ptr %0, align 8, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bu, ptr %i.bz, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  switch i32 %i.f, label %bb.l [
    i32 25, label %bb.b
    i32 1, label %bb.f
    i32 8, label %bb.j
    i32 10, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5jinja6parser4nextEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30, !noalias !201 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja17comment_statementE, i64 16), ptr %i.i, align 8, !tbaa !53, !noalias !201
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !30, !noalias !201
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !31, !noalias !201 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !201 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !201
  store i64 %i.n, ptr %i.b, align 8, !tbaa !33, !noalias !201
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.e, !noalias !201 ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  store ptr %i.p, ptr %i.j, align 8, !tbaa !31, !noalias !201
  %i.q = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !201
  store i64 %i.q, ptr %i.k, align 8, !tbaa !34, !noalias !201
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i, %bb.b
  %i.r = phi ptr [ %i.p, %.noexc.i.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt10unique_ptrIN5jinja17comment_statementESt14default_deleteIS1_EED2Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !34, !noalias !201
  store i8 %i.s, ptr %i.r, align 1, !tbaa !34, !noalias !201
  br label %_ZNSt10unique_ptrIN5jinja17comment_statementESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false), !noalias !201
  br label %_ZNSt10unique_ptrIN5jinja17comment_statementESt14default_deleteIS1_EED2Ev.exit

common.resume:                                    ; preds = %bb.n, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.ar, %bb.i ], [ %i.bd, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.t = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN5jinja6parser21parse_jinja_statementEv:._crit_edge.i.i
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %_ZN5jinja5tokenD2Ev.exit306
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !34
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %_ZN5jinja5tokenD2Ev.exit306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %38, i64 23
  %i.kf = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  br label %._crit_edge.i.i310

._crit_edge.i.i310:                               ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  store ptr %i.jx, ptr %38, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.jx, ptr noundef nonnull align 1 dereferenceable(7) @.str.46, i64 7, i1 false)
  store i64 7, ptr %i.jy, align 8, !tbaa !32
  store i8 0, ptr %i.ke, align 1, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %i.kg = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.bb ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i310
  store ptr %i.kg, ptr %37, align 8, !tbaa !66
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  store ptr %i.kh, ptr %i.ka, align 8, !tbaa !67
  %i.ki = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %38, ptr noundef nonnull %i.jz, ptr noundef nonnull %i.kg)
          to label %bb.bd unwind label %bb.bb

bb.bb:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i310
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kk = load ptr, ptr %37, align 8, !tbaa !66   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i5.i, label %.body, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kl = load ptr, ptr %i.ka, align 8, !tbaa !67
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kk to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.ko) #28
  br label %.body

bb.bd:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  store ptr %i.ki, ptr %i.kb, align 8, !tbaa !68
  %i.kp = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.be unwind label %bb.bo

bb.be:                                            ; preds = %bb.bd
  %i.kq = load ptr, ptr %37, align 8, !tbaa !66   ; 3 uses
  %i.kr = load ptr, ptr %i.kb, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kq, %i.kr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.be, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.kq, %bb.be ] ; 3 uses
  %i.ks = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !34
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i314 = icmp eq ptr %i.kx, %i.kr
  br i1 %.not.i.i.i314, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %37, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.be
  %i.ky = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.kq, %bb.be ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.kz = load ptr, ptr %i.ka, align 8, !tbaa !67
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lc) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bf
  %i.ld = load ptr, ptr %38, align 8, !tbaa !31   ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.kf
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.lf = load i64, ptr %i.kf, align 8, !tbaa !34
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br i1 %i.kp, label %bb.bq, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %39, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.bh unwind label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %i.lh = load ptr, ptr %i.kc, align 8, !tbaa !46 ; 6 uses
  %i.li = load ptr, ptr %i.kd, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.lh, %i.li
  br i1 %.not.i.i, label %bb.bi, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.bh
  %i.lj = load i64, ptr %39, align 8, !tbaa !43
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !43
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store ptr %i.lk, ptr %i.kc, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit322

bb.bi:                                            ; preds = %bb.bh
  %i.ll = load ptr, ptr %36, align 8, !tbaa !50   ; 10 uses
  %i.lm = ptrtoint ptr %i.lh to i64               ; 2 uses
  %i.ln = ptrtoint ptr %i.ll to i64               ; 2 uses
  %i.lo = sub i64 %i.lm, %i.ln                    ; 4 uses
  %i.lp = icmp eq i64 %i.lo, 9223372036854775800
  br i1 %i.lp, label %bb.bj, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc484 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc484:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bi
  %i.lq = ashr exact i64 %i.lo, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.lq, i64 1)
  %i.lr = add nsw i64 %.sroa.speculated.i.i, %i.lq ; 2 uses
  %i.ls = icmp ult i64 %i.lr, %i.lq
  %i.lt = call i64 @llvm.umin.i64(i64 %i.lr, i64 1152921504606846975)
  %i.lu = select i1 %i.ls, i64 1152921504606846975, i64 %i.lt ; 3 uses
  %.not.i.i482 = icmp ne i64 %i.lu, 0
  call void @llvm.assume(i1 %.not.i.i482)
  %i.lv = shl nuw nsw i64 %i.lu, 3
  %i.lw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lv) #30
          to label %.noexc485 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc485:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lo
  %i.ly = load i64, ptr %39, align 8, !tbaa !43
  store i64 %i.ly, ptr %i.lx, align 8, !tbaa !43
  store ptr null, ptr %39, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.ll, %i.lh
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc485
  %i.lz = add i64 %i.lm, -8
  %i.ma = sub i64 %i.lz, %i.ln                    ; 3 uses
  %i.mb = lshr i64 %i.ma, 3
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %min.iters.check752 = icmp ult i64 %i.ma, 56
  br i1 %min.iters.check752, label %.lr.ph.i.i.i.i.preheader770, label %vector.memcheck753

vector.memcheck753:                               ; preds = %.lr.ph.i.i.i.i.preheader
  %i.md = and i64 %i.ma, -8
  %i.me = add i64 %i.md, 8                        ; 2 uses
  %i.mf = getelementptr i8, ptr %i.lw, i64 %i.me
  %i.mg = getelementptr i8, ptr %i.ll, i64 %i.me
  %bound0754 = icmp ult ptr %i.lw, %i.mg
  %bound1755 = icmp ult ptr %i.ll, %i.mf
  %found.conflict756 = and i1 %bound0754, %bound1755
  br i1 %found.conflict756, label %.lr.ph.i.i.i.i.preheader770, label %vector.ph757

vector.ph757:                                     ; preds = %vector.memcheck753
  %n.vec758 = and i64 %i.mc, 4611686018427387900  ; 3 uses
  %i.mh = shl i64 %n.vec758, 3                    ; 2 uses
  %i.mi = getelementptr i8, ptr %i.lw, i64 %i.mh  ; 2 uses
  %i.mj = getelementptr i8, ptr %i.ll, i64 %i.mh
  br label %vector.body759

vector.body759:                                   ; preds = %vector.body759, %vector.ph757
  %index760 = phi i64 [ 0, %vector.ph757 ], [ %index.next765, %vector.body759 ] ; 2 uses
  %i.mk = shl i64 %index760, 3                    ; 2 uses
  %next.gep761 = getelementptr i8, ptr %i.lw, i64 %i.mk ; 2 uses
  %next.gep762 = getelementptr i8, ptr %i.ll, i64 %i.mk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.ml = getelementptr i8, ptr %next.gep762, i64 16
  %wide.load763 = load <2 x i64>, ptr %next.gep762, align 8, !tbaa !43, !alias.scope !251
  %wide.load764 = load <2 x i64>, ptr %i.ml, align 8, !tbaa !43, !alias.scope !251
  %i.mm = getelementptr i8, ptr %next.gep761, i64 16
  store <2 x i64> %wide.load763, ptr %next.gep761, align 8, !tbaa !43, !alias.scope !252, !noalias !253
  store <2 x i64> %wide.load764, ptr %i.mm, align 8, !tbaa !43, !alias.scope !252, !noalias !253
  %69 = getelementptr i8, ptr %next.gep762, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep762, align 8, !tbaa !43, !alias.scope !251
  store <2 x ptr> splat (ptr null), ptr %69, align 8, !tbaa !43, !alias.scope !251
  %index.next765 = add nuw i64 %index760, 4       ; 2 uses
  %i.mn = icmp eq i64 %index.next765, %n.vec758
  br i1 %i.mn, label %middle.block766, label %vector.body759, !llvm.loop !220

middle.block766:                                  ; preds = %vector.body759
  %cmp.n767 = icmp eq i64 %i.mc, %n.vec758
  br i1 %cmp.n767, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader770

.lr.ph.i.i.i.i.preheader770:                      ; preds = %vector.memcheck753, %.lr.ph.i.i.i.i.preheader, %middle.block766
  %.012.i.i.i.i.ph = phi ptr [ %i.lw, %vector.memcheck753 ], [ %i.lw, %.lr.ph.i.i.i.i.preheader ], [ %i.mi, %middle.block766 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ll, %vector.memcheck753 ], [ %i.ll, %.lr.ph.i.i.i.i.preheader ], [ %i.mj, %middle.block766 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader770, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.mq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader770 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.mp, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader770 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.mo = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !250
  store i64 %i.mo, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !249
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !250
  %i.mp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i483 = icmp eq ptr %i.mp, %i.lh
  br i1 %.not.i.i.i.i483, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !221

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block766, %.noexc485
  %.0.lcssa.i.i.i.i = phi ptr [ %i.lw, %.noexc485 ], [ %i.mi, %middle.block766 ], [ %i.mq, %.lr.ph.i.i.i.i ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ll, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lo) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.bk
  store ptr %i.lw, ptr %36, align 8, !tbaa !50
  store ptr %i.mr, ptr %i.kc, align 8, !tbaa !46
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lu
  store ptr %i.ms, ptr %i.kd, align 8, !tbaa !51
  %.pr = load ptr, ptr %39, align 8, !tbaa !43    ; 3 uses
  %.not.i320 = icmp eq ptr %.pr, null
  br i1 %.not.i320, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit322, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i321

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i321: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.mt = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit322

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit322: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %._crit_edge.i.i310, !llvm.loop !222

bb.bl:                                            ; preds = %bb.ax
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bm:                                            ; preds = %bb.ay
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

bb.bn:                                            ; preds = %bb.az
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mz = load ptr, ptr %34, align 8, !tbaa !31   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.bn
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !34
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323, %bb.bm
  %.pn86 = phi { ptr, i32 } [ %i.mx, %bb.bm ], [ %i.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323 ], [ %i.my, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.ch

bb.bo:                                            ; preds = %bb.bd
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #27
  br label %.body

.body:                                            ; preds = %bb.bc, %bb.bb, %bb.bo
  %.pn88 = phi { ptr, i32 } [ %i.ne, %bb.bo ], [ %i.kj, %bb.bb ], [ %i.kj, %bb.bc ]
  %i.nf = load ptr, ptr %38, align 8, !tbaa !31   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %.body
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !34
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.nj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.cg

bb.bp:                                            ; preds = %bb.bg
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit331

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nl = load ptr, ptr %39, align 8, !tbaa !43   ; 3 uses
  %.not.i329 = icmp eq ptr %i.nl, null
  br i1 %.not.i329, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit331, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i330

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i330: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !53
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit331

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit331: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i330, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bp
  %.pn99 = phi { ptr, i32 } [ %i.nk, %bb.bp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i330 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %bb.cg

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5jinja6parser6expectENS_5token4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.jinja::token") align 8 %40, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %bb.bs unwind label %bb.bz

bb.bs:                                            ; preds = %bb.br
  %i.np = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !31 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZN5jinja5tokenD2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332: ; preds = %bb.bs
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !34
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #28
  br label %_ZN5jinja5tokenD2Ev.exit334

_ZN5jinja5tokenD2Ev.exit334:                      ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332
  %i.nv = load ptr, ptr %41, align 8, !tbaa !31   ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %_ZN5jinja5tokenD2Ev.exit334
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !34
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %_ZN5jinja5tokenD2Ev.exit334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %44)
          to label %bb.bt unwind label %bb.ca

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  invoke void @_ZN5jinja6parser17expect_identifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.oa = load ptr, ptr %43, align 8, !tbaa !31   ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.oc = icmp eq ptr %i.oa, %i.ob
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %bb.bu
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !34
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.oe) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %47)
          to label %bb.bv unwind label %bb.cc
end_hunk_1
begin_hunk_2_@_ZN5jinja6parser21parse_jinja_statementEv:._crit_edge.i.i
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %_ZN5jinja5tokenD2Ev.exit387
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !34
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %_ZN5jinja5tokenD2Ev.exit387, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  %i.sc = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %58, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %58, i64 25
  %i.sk = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  br label %._crit_edge.i.i391

._crit_edge.i.i391:                               ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #27
  store ptr %i.sc, ptr %58, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.sc, ptr noundef nonnull align 1 dereferenceable(9) @.str.48, i64 9, i1 false)
  store i64 9, ptr %i.sd, align 8, !tbaa !32
  store i8 0, ptr %i.sj, align 1, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %i.sl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i397 unwind label %bb.cy ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i397: ; preds = %._crit_edge.i.i391
  store ptr %i.sl, ptr %57, align 8, !tbaa !66
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  store ptr %i.sm, ptr %i.sf, align 8, !tbaa !67
  %i.sn = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %58, ptr noundef nonnull %i.se, ptr noundef nonnull %i.sl)
          to label %bb.da unwind label %bb.cy

bb.cy:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i397, %._crit_edge.i.i391
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sp = load ptr, ptr %57, align 8, !tbaa !66   ; 3 uses
  %.not.i.i5.i395 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i5.i395, label %.body398, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.sq = load ptr, ptr %i.sf, align 8, !tbaa !67
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = ptrtoint ptr %i.sp to i64
  %i.st = sub i64 %i.sr, %i.ss
  call void @_ZdlPvm(ptr noundef nonnull %i.sp, i64 noundef %i.st) #28
  br label %.body398

bb.da:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i397
  store ptr %i.sn, ptr %i.sg, align 8, !tbaa !68
  %i.su = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %57)
          to label %bb.db unwind label %bb.dk

bb.db:                                            ; preds = %bb.da
  %i.sv = load ptr, ptr %57, align 8, !tbaa !66   ; 3 uses
  %i.sw = load ptr, ptr %i.sg, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i401 = icmp eq ptr %i.sv, %i.sw
  br i1 %.not4.i.i.i401, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i409, label %.lr.ph.i.i.i402

.lr.ph.i.i.i402:                                  ; preds = %bb.db, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i405
  %.05.i.i.i403 = phi ptr [ %i.tc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i405 ], [ %i.sv, %bb.db ] ; 3 uses
  %i.sx = load ptr, ptr %.05.i.i.i403, align 8, !tbaa !31 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.05.i.i.i403, i64 16 ; 2 uses
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i404: ; preds = %.lr.ph.i.i.i402
  %i.ta = load i64, ptr %i.sy, align 8, !tbaa !34
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.tb) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i405

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i405: ; preds = %.lr.ph.i.i.i402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i404
  %i.tc = getelementptr inbounds nuw i8, ptr %.05.i.i.i403, i64 32 ; 2 uses
  %.not.i.i.i406 = icmp eq ptr %i.tc, %i.sw
  br i1 %.not.i.i.i406, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i407, label %.lr.ph.i.i.i402, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i407: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i405
  %.pr.i408 = load ptr, ptr %57, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i409

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i409: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i407, %bb.db
  %i.td = phi ptr [ %.pr.i408, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i407 ], [ %i.sv, %bb.db ] ; 3 uses
  %.not.i.i1.i410 = icmp eq ptr %i.td, null
  br i1 %.not.i.i1.i410, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit413, label %bb.dc

bb.dc:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i409
  %i.te = load ptr, ptr %i.sf, align 8, !tbaa !67
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %i.td to i64
  %i.th = sub i64 %i.tf, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.th) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit413

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit413: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i409, %bb.dc
  %i.ti = load ptr, ptr %58, align 8, !tbaa !31   ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.sk
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit413
  %i.tk = load i64, ptr %i.sk, align 8, !tbaa !34
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  br i1 %i.su, label %bb.dm, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %59, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.de unwind label %bb.dl

bb.de:                                            ; preds = %bb.dd
  %i.tm = load ptr, ptr %i.sh, align 8, !tbaa !46 ; 6 uses
  %i.tn = load ptr, ptr %i.si, align 16, !tbaa !51
  %.not.i.i417 = icmp eq ptr %i.tm, %i.tn
  br i1 %.not.i.i417, label %bb.df, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit419.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit419.thread: ; preds = %bb.de
  %i.to = load i64, ptr %59, align 8, !tbaa !43
  store i64 %i.to, ptr %i.tm, align 8, !tbaa !43
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store ptr %i.tp, ptr %i.sh, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit422

bb.df:                                            ; preds = %bb.de
  %i.tq = load ptr, ptr %56, align 16, !tbaa !50  ; 10 uses
  %i.tr = ptrtoint ptr %i.tm to i64               ; 2 uses
  %i.ts = ptrtoint ptr %i.tq to i64               ; 2 uses
  %i.tt = sub i64 %i.tr, %i.ts                    ; 4 uses
  %i.tu = icmp eq i64 %i.tt, 9223372036854775800
  br i1 %i.tu, label %bb.dg, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i486

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc504 unwind label %.loopexit.split-lp548.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc504:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i486: ; preds = %bb.df
  %i.tv = ashr exact i64 %i.tt, 3                 ; 3 uses
  %.sroa.speculated.i.i487 = call i64 @llvm.umax.i64(i64 %i.tv, i64 1)
  %i.tw = add nsw i64 %.sroa.speculated.i.i487, %i.tv ; 2 uses
  %i.tx = icmp ult i64 %i.tw, %i.tv
  %i.ty = call i64 @llvm.umin.i64(i64 %i.tw, i64 1152921504606846975)
  %i.tz = select i1 %i.tx, i64 1152921504606846975, i64 %i.ty ; 3 uses
  %.not.i.i488 = icmp ne i64 %i.tz, 0
  call void @llvm.assume(i1 %.not.i.i488)
  %i.ua = shl nuw nsw i64 %i.tz, 3
  %i.ub = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ua) #30
          to label %.noexc505 unwind label %.loopexit.split-lp548.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc505:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i486
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.tt
  %i.ud = load i64, ptr %59, align 8, !tbaa !43
  store i64 %i.ud, ptr %i.uc, align 8, !tbaa !43
  store ptr null, ptr %59, align 8, !tbaa !43
  %.not10.i.i.i.i489 = icmp eq ptr %i.tq, %i.tm
  br i1 %.not10.i.i.i.i489, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i501, label %.lr.ph.i.i.i.i490.preheader

.lr.ph.i.i.i.i490.preheader:                      ; preds = %.noexc505
  %i.ue = add i64 %i.tr, -8
  %i.uf = sub i64 %i.ue, %i.ts                    ; 3 uses
  %i.ug = lshr i64 %i.uf, 3
  %i.uh = add nuw nsw i64 %i.ug, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.uf, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i490.preheader771, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i490.preheader
  %i.ui = and i64 %i.uf, -8
  %i.uj = add i64 %i.ui, 8                        ; 2 uses
  %i.uk = getelementptr i8, ptr %i.ub, i64 %i.uj
  %i.ul = getelementptr i8, ptr %i.tq, i64 %i.uj
  %bound0 = icmp ult ptr %i.ub, %i.ul
  %bound1 = icmp ult ptr %i.tq, %i.uk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i490.preheader771, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uh, 4611686018427387900     ; 3 uses
  %i.um = shl i64 %n.vec, 3                       ; 2 uses
  %i.un = getelementptr i8, ptr %i.ub, i64 %i.um  ; 2 uses
  %i.uo = getelementptr i8, ptr %i.tq, i64 %i.um
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.up = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ub, i64 %i.up ; 2 uses
  %next.gep741 = getelementptr i8, ptr %i.tq, i64 %i.up ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.uq = getelementptr i8, ptr %next.gep741, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep741, align 8, !tbaa !43, !alias.scope !259
  %wide.load742 = load <2 x i64>, ptr %i.uq, align 8, !tbaa !43, !alias.scope !259
  %i.ur = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !260, !noalias !261
  store <2 x i64> %wide.load742, ptr %i.ur, align 8, !tbaa !43, !alias.scope !260, !noalias !261
  %70 = getelementptr i8, ptr %next.gep741, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep741, align 8, !tbaa !43, !alias.scope !259
  store <2 x ptr> splat (ptr null), ptr %70, align 8, !tbaa !43, !alias.scope !259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.us = icmp eq i64 %index.next, %n.vec
  br i1 %i.us, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i501, label %.lr.ph.i.i.i.i490.preheader771

.lr.ph.i.i.i.i490.preheader771:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i490.preheader, %middle.block
  %.012.i.i.i.i491.ph = phi ptr [ %i.ub, %vector.memcheck ], [ %i.ub, %.lr.ph.i.i.i.i490.preheader ], [ %i.un, %middle.block ]
  %.0911.i.i.i.i492.ph = phi ptr [ %i.tq, %vector.memcheck ], [ %i.tq, %.lr.ph.i.i.i.i490.preheader ], [ %i.uo, %middle.block ]
  br label %.lr.ph.i.i.i.i490

.lr.ph.i.i.i.i490:                                ; preds = %.lr.ph.i.i.i.i490.preheader771, %.lr.ph.i.i.i.i490
  %.012.i.i.i.i491 = phi ptr [ %i.uv, %.lr.ph.i.i.i.i490 ], [ %.012.i.i.i.i491.ph, %.lr.ph.i.i.i.i490.preheader771 ] ; 2 uses
  %.0911.i.i.i.i492 = phi ptr [ %i.uu, %.lr.ph.i.i.i.i490 ], [ %.0911.i.i.i.i492.ph, %.lr.ph.i.i.i.i490.preheader771 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ut = load i64, ptr %.0911.i.i.i.i492, align 8, !tbaa !43, !alias.scope !258
  store i64 %i.ut, ptr %.012.i.i.i.i491, align 8, !tbaa !43, !alias.scope !257
  store ptr null, ptr %.0911.i.i.i.i492, align 8, !tbaa !43, !alias.scope !258
  %i.uu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i492, i64 8 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i491, i64 8 ; 2 uses
  %.not.i.i.i.i493 = icmp eq ptr %i.uu, %i.tm
  br i1 %.not.i.i.i.i493, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i501, label %.lr.ph.i.i.i.i490, !llvm.loop !235

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i501: ; preds = %.lr.ph.i.i.i.i490, %middle.block, %.noexc505
  %.0.lcssa.i.i.i.i495 = phi ptr [ %i.ub, %.noexc505 ], [ %i.un, %middle.block ], [ %i.uv, %.lr.ph.i.i.i.i490 ]
  %i.uw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i495, i64 8
  %.not.i23.i503 = icmp eq ptr %i.tq, null
  br i1 %.not.i23.i503, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit419, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i501
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tt) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit419

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit419: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i501, %bb.dh
  store ptr %i.ub, ptr %56, align 16, !tbaa !50
  store ptr %i.uw, ptr %i.sh, align 8, !tbaa !46
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %i.tz
  store ptr %i.ux, ptr %i.si, align 16, !tbaa !51
  %.pr540 = load ptr, ptr %59, align 8, !tbaa !43 ; 3 uses
  %.not.i420 = icmp eq ptr %.pr540, null
  br i1 %.not.i420, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit422, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i421

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i421: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit419
  %i.uy = load ptr, ptr %.pr540, align 8, !tbaa !53
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load ptr, ptr %i.uz, align 8
  call void %i.va(ptr noundef nonnull align 8 dereferenceable(16) %.pr540) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit422

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit422: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit419.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit419, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i421
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  br label %._crit_edge.i.i391, !llvm.loop !236

bb.di:                                            ; preds = %_ZN5jinjaL7is_typeINS_10identifierEEEbRKSt10unique_ptrINS_9statementESt14default_deleteIS3_EE.exit370.thread
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425

bb.dj:                                            ; preds = %bb.cw
  %i.vc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vd = load ptr, ptr %54, align 8, !tbaa !31   ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.vf = icmp eq ptr %i.vd, %i.ve
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423: ; preds = %bb.dj
  %i.vg = load i64, ptr %i.ve, align 8, !tbaa !34
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423, %bb.di
  %.pn70 = phi { ptr, i32 } [ %i.vb, %bb.di ], [ %i.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423 ], [ %i.vc, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  br label %bb.eb

bb.dk:                                            ; preds = %bb.da
  %i.vi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %57) #27
  br label %.body398

.body398:                                         ; preds = %bb.cz, %bb.cy, %bb.dk
  %.pn72 = phi { ptr, i32 } [ %i.vi, %bb.dk ], [ %i.so, %bb.cy ], [ %i.so, %bb.cz ]
  %i.vj = load ptr, ptr %58, align 8, !tbaa !31   ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.vl = icmp eq ptr %i.vj, %i.vk
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426: ; preds = %.body398
  %i.vm = load i64, ptr %i.vk, align 8, !tbaa !34
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %.body398, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  br label %bb.ea

bb.dl:                                            ; preds = %bb.dd
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit431

.loopexit.split-lp548.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i486, %bb.dg
  %lpad.loopexit.split-lp773 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vp = load ptr, ptr %59, align 8, !tbaa !43   ; 3 uses
  %.not.i429 = icmp eq ptr %i.vp, null
  br i1 %.not.i429, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit431, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i430

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i430: ; preds = %.loopexit.split-lp548.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !53
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8
  call void %i.vs(ptr noundef nonnull align 8 dereferenceable(16) %i.vp) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit431

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit431: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i430, %.loopexit.split-lp548.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dl
  %.pn81 = phi { ptr, i32 } [ %i.vo, %bb.dl ], [ %lpad.loopexit.split-lp773, %.loopexit.split-lp548.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp773, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i430 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  br label %bb.ea

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %bb.dn unwind label %bb.dt

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN5jinja6parser6expectENS_5token4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.jinja::token") align 8 %60, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(32) %61)
          to label %bb.do unwind label %bb.du

bb.do:                                            ; preds = %bb.dn
  %i.vt = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !31 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 2 uses
  %i.vw = icmp eq ptr %i.vu, %i.vv
  br i1 %i.vw, label %_ZN5jinja5tokenD2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432: ; preds = %bb.do
  %i.vx = load i64, ptr %i.vv, align 8, !tbaa !34
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vy) #28
  br label %_ZN5jinja5tokenD2Ev.exit434

_ZN5jinja5tokenD2Ev.exit434:                      ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i432
  %i.vz = load ptr, ptr %61, align 8, !tbaa !31   ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.wb = icmp eq ptr %i.vz, %i.wa
  br i1 %i.wb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %_ZN5jinja5tokenD2Ev.exit434
  %i.wc = load i64, ptr %i.wa, align 8, !tbaa !34
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %_ZN5jinja5tokenD2Ev.exit434, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %64)
          to label %bb.dp unwind label %bb.dv

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  invoke void @_ZN5jinja6parser17expect_identifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.dq unwind label %bb.dw

bb.dq:                                            ; preds = %bb.dp
  %i.we = load ptr, ptr %63, align 8, !tbaa !31   ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.wg = icmp eq ptr %i.we, %i.wf
  br i1 %i.wg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %bb.dq
  %i.wh = load i64, ptr %i.wf, align 8, !tbaa !34
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %67)
          to label %bb.dr unwind label %bb.dx

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
  invoke void @_ZN5jinja6parser6expectENS_5token4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.jinja::token") align 8 %65, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.ds unwind label %bb.dy

end_hunk_2
begin_hunk_3_@_ZN5jinja6parser19parse_set_statementEm:bb.a
  %i.t = icmp eq ptr %i.s, %i.j
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5jinja5tokenD2Ev.exit
  %i.u = load i64, ptr %i.j, align 8, !tbaa !34
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5jinja5tokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 22
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.w, ptr %9, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.w, ptr noundef nonnull align 1 dereferenceable(6) @.str.55, i64 6, i1 false)
  store i64 6, ptr %i.x, align 8, !tbaa !32
  store i8 0, ptr %i.ad, align 2, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.g ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i29
  store ptr %i.af, ptr %8, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !67
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %9, ptr noundef nonnull %i.y, ptr noundef nonnull %i.af)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i29
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !66    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i5.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #28
  br label %.body

bb.i:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !68
  %i.ao = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %8, align 8, !tbaa !66    ; 3 uses
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ap, %bb.j ] ; 3 uses
  %i.ar = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !34
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.aq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.j
  %i.ax = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ap, %bb.j ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  %i.bc = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ae
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.be = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %i.ao, label %._crit_edge.i.i50, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 6 uses
  %i.bh = load ptr, ptr %i.ac, align 16, !tbaa !51
  %.not.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i, label %bb.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.m
  %i.bi = load i64, ptr %10, align 8, !tbaa !43
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.ab, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %4, align 16, !tbaa !50   ; 10 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 4 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.o, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i106 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i106)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #30
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  %i.bx = load i64, ptr %10, align 8, !tbaa !43
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !43
  store ptr null, ptr %10, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc109
  %i.by = add i64 %i.bl, -8
  %i.bz = sub i64 %i.by, %i.bm                    ; 3 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader178, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cc = and i64 %i.bz, -8
  %i.cd = add i64 %i.cc, 8                        ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bv, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.bk, i64 %i.cd
  %bound0 = icmp ult ptr %i.bv, %i.cf
  %bound1 = icmp ult ptr %i.bk, %i.ce
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cg = shl i64 %n.vec, 3                       ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bv, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bk, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.cj ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.bk, i64 %i.cj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.ck = getelementptr i8, ptr %next.gep175, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep175, align 8, !tbaa !43, !alias.scope !364
  %wide.load176 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !43, !alias.scope !364
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !365, !noalias !366
  store <2 x i64> %wide.load176, ptr %i.cl, align 8, !tbaa !43, !alias.scope !365, !noalias !366
  %16 = getelementptr i8, ptr %next.gep175, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep175, align 8, !tbaa !43, !alias.scope !364
  store <2 x ptr> splat (ptr null), ptr %16, align 8, !tbaa !43, !alias.scope !364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader178

.lr.ph.i.i.i.i.preheader178:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader178, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader178 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader178 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.cn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !363
  store i64 %i.cn, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !362
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !363
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.co, %i.bg
  br i1 %.not.i.i.i.i107, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !356

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc109
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bv, %.noexc109 ], [ %i.ch, %middle.block ], [ %i.cp, %.lr.ph.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.p
  store ptr %i.bv, ptr %4, align 16, !tbaa !50
  store ptr %i.cq, ptr %i.ab, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cr, ptr %i.ac, align 16, !tbaa !51
  %.pr = load ptr, ptr %10, align 8, !tbaa !43    ; 3 uses
  %.not.i38 = icmp eq ptr %.pr, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i39

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i39: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.cs = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %._crit_edge.i.i29, !llvm.loop !357

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.j
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.q
  %i.cy = load i64, ptr %i.j, align 8, !tbaa !34
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.thread

bb.r:                                             ; preds = %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  br label %.body

.body:                                            ; preds = %bb.h, %bb.g, %bb.r
  %.pn16 = phi { ptr, i32 } [ %i.da, %bb.r ], [ %i.ai, %bb.g ], [ %i.ai, %bb.h ]
  %i.db = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.body
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !34
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.thread

bb.s:                                             ; preds = %bb.l
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit49

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.o
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %10, align 8, !tbaa !43   ; 3 uses
  %.not.i47 = icmp eq ptr %i.dh, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit49, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i48

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i48: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit49

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit49: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i48, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s
  %.pn23 = phi { ptr, i32 } [ %i.dg, %bb.s ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp179, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.thread

._crit_edge.i.i50:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dl, ptr %12, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dl, ptr noundef nonnull align 1 dereferenceable(11) @.str.32, i64 11, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 11, ptr %i.dm, align 8, !tbaa !32
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 27
  store i8 0, ptr %i.dn, align 1, !tbaa !34
  invoke void @_ZN5jinja6parser6expectENS_5token4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.jinja::token") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %._crit_edge.i.i50
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !31 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN5jinja5tokenD2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %bb.t
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !34
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #28
  br label %_ZN5jinja5tokenD2Ev.exit56

_ZN5jinja5tokenD2Ev.exit56:                       ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  %i.du = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dl
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZN5jinja5tokenD2Ev.exit56
  %i.dw = load i64, ptr %i.dl, align 8, !tbaa !34
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZN5jinja5tokenD2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.dy, ptr %13, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dy, ptr noundef nonnull align 1 dereferenceable(6) @.str.55, i64 6, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 6, ptr %i.dz, align 8, !tbaa !32
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i8 0, ptr %i.ea, align 2, !tbaa !34
  invoke void @_ZN5jinja6parser17expect_identifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.eb = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dy
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.u
  %i.ed = load i64, ptr %i.dy, align 8, !tbaa !34
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %._crit_edge.i.i73

bb.v:                                             ; preds = %._crit_edge.i.i50
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dl
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.v
  %i.ei = load i64, ptr %i.dl, align 8, !tbaa !34
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
end_hunk_3
begin_hunk_4_@_ZN5jinja6parser18parse_if_statementEm:._crit_edge.i.i
  store i64 4, ptr %i.o, align 8, !tbaa !32
  store i8 0, ptr %i.aa, align 4, !tbaa !34
  store ptr %i.q, ptr %i.p, align 8, !tbaa !30
  store i32 1702063205, ptr %i.q, align 8
  store i64 4, ptr %i.r, align 8, !tbaa !32
  store i8 0, ptr %i.ab, align 4, !tbaa !34
  store ptr %i.t, ptr %i.s, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.t, ptr noundef nonnull align 1 dereferenceable(5) @.str.36, i64 5, i1 false)
  store i64 5, ptr %i.u, align 8, !tbaa !32
  store i8 0, ptr %i.ac, align 1, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.al = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i78
  store ptr %i.al, ptr %8, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store ptr %i.am, ptr %i.w, align 8, !tbaa !67
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %9, ptr noundef nonnull %i.v, ptr noundef nonnull %i.al)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i78
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %8, align 8, !tbaa !66    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i5.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #28
  br label %.body

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  store ptr %i.an, ptr %i.x, align 8, !tbaa !68
  %i.au = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %8, align 8, !tbaa !66    ; 3 uses
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.av, %bb.e ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !34
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.e
  %i.bd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.av, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ae
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ag
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.bo = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.1
  %i.bq = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ah
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.1
  %i.bs = load i64, ptr %i.ah, align 8, !tbaa !34
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %i.au, label %._crit_edge.i.i107, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h
  %i.bu = load i64, ptr %10, align 8, !tbaa !43
  store i64 %i.bu, ptr %i.ak, align 8, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.y, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.bw = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.bx = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 4 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc252 unwind label %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc252:                                        ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i251 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i251)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #30
          to label %.noexc253 unwind label %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc253:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  %i.ci = load i64, ptr %10, align 8, !tbaa !43
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !43
  store ptr null, ptr %10, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc253
  %i.cj = add i64 %i.bw, -8
  %i.ck = sub i64 %i.cj, %i.bx                    ; 3 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader515, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cn = and i64 %i.ck, -8
  %i.co = add i64 %i.cn, 8                        ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cg, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.ai, i64 %i.co
  %bound0 = icmp ult ptr %i.cg, %i.cq
  %bound1 = icmp ult ptr %i.ai, %i.cp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader515, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.cr = shl i64 %n.vec, 3                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ai, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cu ; 2 uses
  %next.gep468 = getelementptr i8, ptr %i.ai, i64 %i.cu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.cv = getelementptr i8, ptr %next.gep468, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep468, align 8, !tbaa !43, !alias.scope !398
  %wide.load469 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !43, !alias.scope !398
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !399, !noalias !400
  store <2 x i64> %wide.load469, ptr %i.cw, align 8, !tbaa !43, !alias.scope !399, !noalias !400
  %21 = getelementptr i8, ptr %next.gep468, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep468, align 8, !tbaa !43, !alias.scope !398
  store <2 x ptr> splat (ptr null), ptr %21, align 8, !tbaa !43, !alias.scope !398
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader515

.lr.ph.i.i.i.i.preheader515:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cs, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader515, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader515 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader515 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.cy = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !397
  store i64 %i.cy, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !396
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !397
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, %i.aj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !376

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc253
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cg, %.noexc253 ], [ %i.cs, %middle.block ], [ %i.da, %.lr.ph.i.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.ai, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.by) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.k
  store ptr %i.cg, ptr %6, align 8, !tbaa !50
  store ptr %i.db, ptr %i.y, align 8, !tbaa !46
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce ; 3 uses
  store ptr %i.dc, ptr %i.z, align 8, !tbaa !51
  %.pr = load ptr, ptr %10, align 8, !tbaa !43    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.dd = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i
  %i.dg = phi ptr [ %i.ai, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.cg, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.cg, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  %i.dh = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.dc, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.dc, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  %i.di = phi ptr [ %i.bv, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.db, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.db, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %._crit_edge.i.i78, !llvm.loop !377

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.a
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.l
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !34
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ax

bb.m:                                             ; preds = %bb.d
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  br label %.body

.body:                                            ; preds = %bb.c, %bb.b, %bb.m
  %.pn54 = phi { ptr, i32 } [ %i.do, %bb.m ], [ %i.ao, %bb.b ], [ %i.ao, %bb.c ]
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !31 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.body
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !34
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !34
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.1
  %i.eb = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.1
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !34
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.aw

bb.n:                                             ; preds = %bb.g
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit106

.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.j
  %lpad.loopexit.split-lp517 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %10, align 8, !tbaa !43   ; 3 uses
  %.not.i104 = icmp eq ptr %i.eh, null
  br i1 %.not.i104, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit106, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i105

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i105: ; preds = %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit106

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit106: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i105, %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn74 = phi { ptr, i32 } [ %i.eg, %bb.n ], [ %lpad.loopexit.split-lp517, %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp517, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.aw

._crit_edge.i.i107:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.el, ptr %12, align 8, !tbaa !30
  store i32 1718185061, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.em, align 8, !tbaa !32
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i8 0, ptr %i.en, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.eo = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i113 unwind label %bb.o ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i113: ; preds = %._crit_edge.i.i107
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.eo, ptr %11, align 8, !tbaa !66
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !67
  %i.es = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %12, ptr noundef nonnull %i.ep, ptr noundef nonnull %i.eo)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i113, %._crit_edge.i.i107
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %11, align 8, !tbaa !66   ; 3 uses
  %.not.i.i5.i111 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i5.i111, label %.body114, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !67
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #28
  br label %.body114

bb.q:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i113
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.fa, align 8, !tbaa !68
  %i.fb = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.fc = load ptr, ptr %11, align 8, !tbaa !66   ; 3 uses
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i117 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not4.i.i.i117, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i125, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %bb.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121
  %.05.i.i.i119 = phi ptr [ %i.fj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121 ], [ %i.fc, %bb.r ] ; 3 uses
  %i.fe = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !31 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120: ; preds = %.lr.ph.i.i.i118
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !34
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121: ; preds = %.lr.ph.i.i.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 32 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.fj, %i.fd
  br i1 %.not.i.i.i122, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i123, label %.lr.ph.i.i.i118, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i123: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121
  %.pr.i124 = load ptr, ptr %11, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i125

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i125: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i123, %bb.r
  %i.fk = phi ptr [ %.pr.i124, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i123 ], [ %i.fc, %bb.r ] ; 3 uses
  %.not.i.i1.i126 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i1.i126, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i125
  %i.fl = load ptr, ptr %i.er, align 8, !tbaa !67
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fo) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i125, %bb.s
  %i.fp = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !34
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br i1 %i.fb, label %bb.t, label %._crit_edge.i.i145

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !29 ; 2 uses
  %i.fw = add i64 %i.fv, 2
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZN5jinja6parser18parse_if_statementEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.fv)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !46 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 16, !tbaa !51
  %.not.i.i133 = icmp eq ptr %i.fy, %i.ga
  br i1 %.not.i.i133, label %bb.v, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit135.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit135.thread: ; preds = %bb.u
  %i.gb = load i64, ptr %13, align 8, !tbaa !43
  store i64 %i.gb, ptr %i.fy, align 8, !tbaa !43
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.gc, ptr %i.fx, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit138

bb.v:                                             ; preds = %bb.u
  %i.gd = load ptr, ptr %7, align 16, !tbaa !50   ; 7 uses
  %i.ge = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gg = sub i64 %i.ge, %i.gf                    ; 4 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775800
  br i1 %i.gh, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i254

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc272 unwind label %bb.aa

.noexc272:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i254: ; preds = %bb.v
  %i.gi = ashr exact i64 %i.gg, 3                 ; 3 uses
  %.sroa.speculated.i.i255 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gj = add nsw i64 %.sroa.speculated.i.i255, %i.gi ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.gi
  %i.gl = call i64 @llvm.umin.i64(i64 %i.gj, i64 1152921504606846975)
  %i.gm = select i1 %i.gk, i64 1152921504606846975, i64 %i.gl ; 3 uses
  %.not.i.i256 = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %.not.i.i256)
  %i.gn = shl nuw nsw i64 %i.gm, 3
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #30
          to label %.noexc273 unwind label %bb.aa ; 7 uses

.noexc273:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i254
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gg
  %i.gq = load i64, ptr %13, align 8, !tbaa !43
  store i64 %i.gq, ptr %i.gp, align 8, !tbaa !43
  store ptr null, ptr %13, align 8, !tbaa !43
  %.not10.i.i.i.i257 = icmp eq ptr %i.gd, %i.fy
  br i1 %.not10.i.i.i.i257, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i269, label %.lr.ph.i.i.i.i258.preheader

.lr.ph.i.i.i.i258.preheader:                      ; preds = %.noexc273
  %i.gr = add i64 %i.ge, -8
  %i.gs = sub i64 %i.gr, %i.gf                    ; 2 uses
  %i.gt = lshr i64 %i.gs, 3
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check498 = icmp ult i64 %i.gs, 24
  br i1 %min.iters.check498, label %.lr.ph.i.i.i.i258.preheader512, label %vector.ph499

vector.ph499:                                     ; preds = %.lr.ph.i.i.i.i258.preheader
  %n.vec500 = and i64 %i.gu, 4611686018427387900  ; 3 uses
  %i.gv = shl i64 %n.vec500, 3                    ; 2 uses
  %i.gw = getelementptr i8, ptr %i.go, i64 %i.gv  ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gd, i64 %i.gv
  br label %vector.body501

vector.body501:                                   ; preds = %vector.body501, %vector.ph499
  %index502 = phi i64 [ 0, %vector.ph499 ], [ %index.next507, %vector.body501 ] ; 2 uses
  %i.gy = shl i64 %index502, 3                    ; 2 uses
  %next.gep503 = getelementptr i8, ptr %i.go, i64 %i.gy ; 2 uses
  %next.gep504 = getelementptr i8, ptr %i.gd, i64 %i.gy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.gz = getelementptr i8, ptr %next.gep504, i64 16
  %wide.load505 = load <2 x i64>, ptr %next.gep504, align 8, !tbaa !43, !alias.scope !402
  %wide.load506 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !43, !alias.scope !402
  %i.ha = getelementptr i8, ptr %next.gep503, i64 16
  store <2 x i64> %wide.load505, ptr %next.gep503, align 8, !tbaa !43, !alias.scope !401
  store <2 x i64> %wide.load506, ptr %i.ha, align 8, !tbaa !43, !alias.scope !401
  %22 = getelementptr i8, ptr %next.gep504, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep504, align 8, !tbaa !43, !alias.scope !402
  store <2 x ptr> splat (ptr null), ptr %22, align 8, !tbaa !43, !alias.scope !402
  %index.next507 = add nuw i64 %index502, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next507, %n.vec500
  br i1 %i.hb, label %middle.block508, label %vector.body501, !llvm.loop !381

middle.block508:                                  ; preds = %vector.body501
  %cmp.n509 = icmp eq i64 %i.gu, %n.vec500
  br i1 %cmp.n509, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i269, label %.lr.ph.i.i.i.i258.preheader512

.lr.ph.i.i.i.i258.preheader512:                   ; preds = %.lr.ph.i.i.i.i258.preheader, %middle.block508
  %.012.i.i.i.i259.ph = phi ptr [ %i.go, %.lr.ph.i.i.i.i258.preheader ], [ %i.gw, %middle.block508 ]
  %.0911.i.i.i.i260.ph = phi ptr [ %i.gd, %.lr.ph.i.i.i.i258.preheader ], [ %i.gx, %middle.block508 ]
  br label %.lr.ph.i.i.i.i258

.lr.ph.i.i.i.i258:                                ; preds = %.lr.ph.i.i.i.i258.preheader512, %.lr.ph.i.i.i.i258
  %.012.i.i.i.i259 = phi ptr [ %i.he, %.lr.ph.i.i.i.i258 ], [ %.012.i.i.i.i259.ph, %.lr.ph.i.i.i.i258.preheader512 ] ; 2 uses
  %.0911.i.i.i.i260 = phi ptr [ %i.hd, %.lr.ph.i.i.i.i258 ], [ %.0911.i.i.i.i260.ph, %.lr.ph.i.i.i.i258.preheader512 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.hc = load i64, ptr %.0911.i.i.i.i260, align 8, !tbaa !43, !alias.scope !402
  store i64 %i.hc, ptr %.012.i.i.i.i259, align 8, !tbaa !43, !alias.scope !401
  store ptr null, ptr %.0911.i.i.i.i260, align 8, !tbaa !43, !alias.scope !402
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i260, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 8 ; 2 uses
  %.not.i.i.i.i261 = icmp eq ptr %i.hd, %i.fy
  br i1 %.not.i.i.i.i261, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i269, label %.lr.ph.i.i.i.i258, !llvm.loop !382

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i269: ; preds = %.lr.ph.i.i.i.i258, %middle.block508, %.noexc273
  %.0.lcssa.i.i.i.i263 = phi ptr [ %i.go, %.noexc273 ], [ %i.gw, %middle.block508 ], [ %i.he, %.lr.ph.i.i.i.i258 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i263, i64 8
  %.not.i23.i271 = icmp eq ptr %i.gd, null
  br i1 %.not.i23.i271, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit135, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i269
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gg) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit135

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit135: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i269, %bb.x
  store ptr %i.go, ptr %7, align 16, !tbaa !50
  store ptr %i.hf, ptr %i.fx, align 8, !tbaa !46
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gm
  store ptr %i.hg, ptr %i.fz, align 16, !tbaa !51
  %.pr315 = load ptr, ptr %13, align 8, !tbaa !43 ; 3 uses
  %.not.i136 = icmp eq ptr %.pr315, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit138, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i137

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i137: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit135
  %i.hh = load ptr, ptr %.pr315, align 8, !tbaa !53
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %.pr315) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit138

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit138: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit135.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit135, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.loopexit

bb.y:                                             ; preds = %bb.q
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #27
  br label %.body114

.body114:                                         ; preds = %bb.p, %bb.o, %bb.y
  %.pn59 = phi { ptr, i32 } [ %i.hk, %bb.y ], [ %i.et, %bb.o ], [ %i.et, %bb.p ]
  %i.hl = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %.body114
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !34
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %.body114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.aw

bb.z:                                             ; preds = %bb.t
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit144

bb.aa:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i254, %bb.w
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %13, align 8, !tbaa !43   ; 3 uses
  %.not.i142 = icmp eq ptr %i.hs, null
  br i1 %.not.i142, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit144, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i143

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i143: ; preds = %bb.aa
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !53
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit144

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit144: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i143, %bb.aa, %bb.z
  %.pn72 = phi { ptr, i32 } [ %i.hq, %bb.z ], [ %i.hr, %bb.aa ], [ %i.hr, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.aw

._crit_edge.i.i145:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.hw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.hw, ptr %15, align 8, !tbaa !30
  store i32 1702063205, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 4, ptr %i.hx, align 8, !tbaa !32
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i8 0, ptr %i.hy, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.hz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i151 unwind label %bb.ab ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i151: ; preds = %._crit_edge.i.i145
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.hz, ptr %14, align 8, !tbaa !66
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !67
  %i.id = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %15, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.hz)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i151, %._crit_edge.i.i145
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %14, align 8, !tbaa !66   ; 3 uses
  %.not.i.i5.i149 = icmp eq ptr %i.if, null
  br i1 %.not.i.i5.i149, label %.body152, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ig = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !67
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #28
  br label %.body152

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i151
  %i.il = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.id, ptr %i.il, align 8, !tbaa !68
  %i.im = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.ae unwind label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.in = load ptr, ptr %14, align 8, !tbaa !66   ; 3 uses
  %i.io = load ptr, ptr %i.il, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i155 = icmp eq ptr %i.in, %i.io
  br i1 %.not4.i.i.i155, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i163, label %.lr.ph.i.i.i156

.lr.ph.i.i.i156:                                  ; preds = %bb.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i159
  %.05.i.i.i157 = phi ptr [ %i.iu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i159 ], [ %i.in, %bb.ae ] ; 3 uses
  %i.ip = load ptr, ptr %.05.i.i.i157, align 8, !tbaa !31 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i157, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i158: ; preds = %.lr.ph.i.i.i156
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !34
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i159

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i159: ; preds = %.lr.ph.i.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i158
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i.i.i157, i64 32 ; 2 uses
  %.not.i.i.i160 = icmp eq ptr %i.iu, %i.io
  br i1 %.not.i.i.i160, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i161, label %.lr.ph.i.i.i156, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i161: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i159
  %.pr.i162 = load ptr, ptr %14, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i163

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i163: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i161, %bb.ae
  %i.iv = phi ptr [ %.pr.i162, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i161 ], [ %i.in, %bb.ae ] ; 3 uses
  %.not.i.i1.i164 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i1.i164, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit167, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i163
  %i.iw = load ptr, ptr %i.ic, align 8, !tbaa !67
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.iz) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit167

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit167: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i163, %bb.af
  %i.ja = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit167
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !34
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #28
end_hunk_4
begin_hunk_5_@_ZN5jinja6parser18parse_if_statementEm:._crit_edge.i.i
  %i.js = icmp eq ptr %i.jr, %i.ji
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZN5jinja5tokenD2Ev.exit177
  %i.jt = load i64, ptr %i.ji, align 8, !tbaa !34
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZN5jinja5tokenD2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.jv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %19, i64 21
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  br label %._crit_edge.i.i181

._crit_edge.i.i181:                               ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  store ptr %i.jv, ptr %19, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.jv, ptr noundef nonnull align 1 dereferenceable(5) @.str.36, i64 5, i1 false)
  store i64 5, ptr %i.jw, align 8, !tbaa !32
  store i8 0, ptr %i.kc, align 1, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ke = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i187 unwind label %bb.ah ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i187: ; preds = %._crit_edge.i.i181
  store ptr %i.ke, ptr %18, align 8, !tbaa !66
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  store ptr %i.kf, ptr %i.jy, align 8, !tbaa !67
  %i.kg = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %19, ptr noundef nonnull %i.jx, ptr noundef nonnull %i.ke)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i187, %._crit_edge.i.i181
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ki = load ptr, ptr %18, align 8, !tbaa !66   ; 3 uses
  %.not.i.i5.i185 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i5.i185, label %.body188, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kj = load ptr, ptr %i.jy, align 8, !tbaa !67
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.ki to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.km) #28
  br label %.body188

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i187
  store ptr %i.kg, ptr %i.jz, align 8, !tbaa !68
  %i.kn = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.ko = load ptr, ptr %18, align 8, !tbaa !66   ; 3 uses
  %i.kp = load ptr, ptr %i.jz, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i191 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not4.i.i.i191, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199, label %.lr.ph.i.i.i192

.lr.ph.i.i.i192:                                  ; preds = %bb.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195
  %.05.i.i.i193 = phi ptr [ %i.kv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195 ], [ %i.ko, %bb.ak ] ; 3 uses
  %i.kq = load ptr, ptr %.05.i.i.i193, align 8, !tbaa !31 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i193, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i194: ; preds = %.lr.ph.i.i.i192
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !34
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195: ; preds = %.lr.ph.i.i.i192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i194
  %i.kv = getelementptr inbounds nuw i8, ptr %.05.i.i.i193, i64 32 ; 2 uses
  %.not.i.i.i196 = icmp eq ptr %i.kv, %i.kp
  br i1 %.not.i.i.i196, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i197, label %.lr.ph.i.i.i192, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i197: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195
  %.pr.i198 = load ptr, ptr %18, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i197, %bb.ak
  %i.kw = phi ptr [ %.pr.i198, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i197 ], [ %i.ko, %bb.ak ] ; 3 uses
  %.not.i.i1.i200 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i1.i200, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199
  %i.kx = load ptr, ptr %i.jy, align 8, !tbaa !67
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kw to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.la) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199, %bb.al
  %i.lb = load ptr, ptr %19, align 8, !tbaa !31   ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.kd
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203
  %i.ld = load i64, ptr %i.kd, align 8, !tbaa !34
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br i1 %i.kn, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.lf = load ptr, ptr %i.ka, align 8, !tbaa !46 ; 6 uses
  %i.lg = load ptr, ptr %i.kb, align 16, !tbaa !51
  %.not.i.i207 = icmp eq ptr %i.lf, %i.lg
  br i1 %.not.i.i207, label %bb.ao, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit209.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit209.thread: ; preds = %bb.an
  %i.lh = load i64, ptr %20, align 8, !tbaa !43
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !43
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %i.li, ptr %i.ka, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit212

bb.ao:                                            ; preds = %bb.an
  %i.lj = load ptr, ptr %7, align 16, !tbaa !50   ; 10 uses
  %i.lk = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.ll = ptrtoint ptr %i.lj to i64               ; 2 uses
  %i.lm = sub i64 %i.lk, %i.ll                    ; 4 uses
  %i.ln = icmp eq i64 %i.lm, 9223372036854775800
  br i1 %i.ln, label %bb.ap, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i275

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc293 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc293:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i275: ; preds = %bb.ao
  %i.lo = ashr exact i64 %i.lm, 3                 ; 3 uses
  %.sroa.speculated.i.i276 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1)
  %i.lp = add nsw i64 %.sroa.speculated.i.i276, %i.lo ; 2 uses
  %i.lq = icmp ult i64 %i.lp, %i.lo
  %i.lr = call i64 @llvm.umin.i64(i64 %i.lp, i64 1152921504606846975)
  %i.ls = select i1 %i.lq, i64 1152921504606846975, i64 %i.lr ; 3 uses
  %.not.i.i277 = icmp ne i64 %i.ls, 0
  call void @llvm.assume(i1 %.not.i.i277)
  %i.lt = shl nuw nsw i64 %i.ls, 3
  %i.lu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lt) #30
          to label %.noexc294 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc294:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i275
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lm
  %i.lw = load i64, ptr %20, align 8, !tbaa !43
  store i64 %i.lw, ptr %i.lv, align 8, !tbaa !43
  store ptr null, ptr %20, align 8, !tbaa !43
  %.not10.i.i.i.i278 = icmp eq ptr %i.lj, %i.lf
  br i1 %.not10.i.i.i.i278, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i290, label %.lr.ph.i.i.i.i279.preheader

.lr.ph.i.i.i.i279.preheader:                      ; preds = %.noexc294
  %i.lx = add i64 %i.lk, -8
  %i.ly = sub i64 %i.lx, %i.ll                    ; 3 uses
  %i.lz = lshr i64 %i.ly, 3
  %i.ma = add nuw nsw i64 %i.lz, 1                ; 2 uses
  %min.iters.check479 = icmp ult i64 %i.ly, 56
  br i1 %min.iters.check479, label %.lr.ph.i.i.i.i279.preheader513, label %vector.memcheck480

vector.memcheck480:                               ; preds = %.lr.ph.i.i.i.i279.preheader
  %i.mb = and i64 %i.ly, -8
  %i.mc = add i64 %i.mb, 8                        ; 2 uses
  %i.md = getelementptr i8, ptr %i.lu, i64 %i.mc
  %i.me = getelementptr i8, ptr %i.lj, i64 %i.mc
  %bound0481 = icmp ult ptr %i.lu, %i.me
  %bound1482 = icmp ult ptr %i.lj, %i.md
  %found.conflict483 = and i1 %bound0481, %bound1482
  br i1 %found.conflict483, label %.lr.ph.i.i.i.i279.preheader513, label %vector.ph484

vector.ph484:                                     ; preds = %vector.memcheck480
  %n.vec485 = and i64 %i.ma, 4611686018427387900  ; 3 uses
  %i.mf = shl i64 %n.vec485, 3                    ; 2 uses
  %i.mg = getelementptr i8, ptr %i.lu, i64 %i.mf  ; 2 uses
  %i.mh = getelementptr i8, ptr %i.lj, i64 %i.mf
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph484
  %index487 = phi i64 [ 0, %vector.ph484 ], [ %index.next492, %vector.body486 ] ; 2 uses
  %i.mi = shl i64 %index487, 3                    ; 2 uses
  %next.gep488 = getelementptr i8, ptr %i.lu, i64 %i.mi ; 2 uses
  %next.gep489 = getelementptr i8, ptr %i.lj, i64 %i.mi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.mj = getelementptr i8, ptr %next.gep489, i64 16
  %wide.load490 = load <2 x i64>, ptr %next.gep489, align 8, !tbaa !43, !alias.scope !405
  %wide.load491 = load <2 x i64>, ptr %i.mj, align 8, !tbaa !43, !alias.scope !405
  %i.mk = getelementptr i8, ptr %next.gep488, i64 16
  store <2 x i64> %wide.load490, ptr %next.gep488, align 8, !tbaa !43, !alias.scope !406, !noalias !407
  store <2 x i64> %wide.load491, ptr %i.mk, align 8, !tbaa !43, !alias.scope !406, !noalias !407
  %23 = getelementptr i8, ptr %next.gep489, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep489, align 8, !tbaa !43, !alias.scope !405
  store <2 x ptr> splat (ptr null), ptr %23, align 8, !tbaa !43, !alias.scope !405
  %index.next492 = add nuw i64 %index487, 4       ; 2 uses
  %i.ml = icmp eq i64 %index.next492, %n.vec485
  br i1 %i.ml, label %middle.block493, label %vector.body486, !llvm.loop !389

middle.block493:                                  ; preds = %vector.body486
  %cmp.n494 = icmp eq i64 %i.ma, %n.vec485
  br i1 %cmp.n494, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i290, label %.lr.ph.i.i.i.i279.preheader513

.lr.ph.i.i.i.i279.preheader513:                   ; preds = %vector.memcheck480, %.lr.ph.i.i.i.i279.preheader, %middle.block493
  %.012.i.i.i.i280.ph = phi ptr [ %i.lu, %vector.memcheck480 ], [ %i.lu, %.lr.ph.i.i.i.i279.preheader ], [ %i.mg, %middle.block493 ]
  %.0911.i.i.i.i281.ph = phi ptr [ %i.lj, %vector.memcheck480 ], [ %i.lj, %.lr.ph.i.i.i.i279.preheader ], [ %i.mh, %middle.block493 ]
  br label %.lr.ph.i.i.i.i279

.lr.ph.i.i.i.i279:                                ; preds = %.lr.ph.i.i.i.i279.preheader513, %.lr.ph.i.i.i.i279
  %.012.i.i.i.i280 = phi ptr [ %i.mo, %.lr.ph.i.i.i.i279 ], [ %.012.i.i.i.i280.ph, %.lr.ph.i.i.i.i279.preheader513 ] ; 2 uses
  %.0911.i.i.i.i281 = phi ptr [ %i.mn, %.lr.ph.i.i.i.i279 ], [ %.0911.i.i.i.i281.ph, %.lr.ph.i.i.i.i279.preheader513 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.mm = load i64, ptr %.0911.i.i.i.i281, align 8, !tbaa !43, !alias.scope !404
  store i64 %i.mm, ptr %.012.i.i.i.i280, align 8, !tbaa !43, !alias.scope !403
  store ptr null, ptr %.0911.i.i.i.i281, align 8, !tbaa !43, !alias.scope !404
  %i.mn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i281, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i280, i64 8 ; 2 uses
  %.not.i.i.i.i282 = icmp eq ptr %i.mn, %i.lf
  br i1 %.not.i.i.i.i282, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i290, label %.lr.ph.i.i.i.i279, !llvm.loop !390

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i290: ; preds = %.lr.ph.i.i.i.i279, %middle.block493, %.noexc294
  %.0.lcssa.i.i.i.i284 = phi ptr [ %i.lu, %.noexc294 ], [ %i.mg, %middle.block493 ], [ %i.mo, %.lr.ph.i.i.i.i279 ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i284, i64 8
  %.not.i23.i292 = icmp eq ptr %i.lj, null
  br i1 %.not.i23.i292, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit209, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i290
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lm) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit209

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit209: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i290, %bb.aq
  store ptr %i.lu, ptr %7, align 16, !tbaa !50
  store ptr %i.mp, ptr %i.ka, align 8, !tbaa !46
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.ls
  store ptr %i.mq, ptr %i.kb, align 16, !tbaa !51
  %.pr317 = load ptr, ptr %20, align 8, !tbaa !43 ; 3 uses
  %.not.i210 = icmp eq ptr %.pr317, null
  br i1 %.not.i210, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit212, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i211

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i211: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit209
  %i.mr = load ptr, ptr %.pr317, align 8, !tbaa !53
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(16) %.pr317) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit212

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit212: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit209.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit209, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %._crit_edge.i.i181, !llvm.loop !391

bb.ar:                                            ; preds = %bb.ad
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #27
  br label %.body152

.body152:                                         ; preds = %bb.ac, %bb.ab, %bb.ar
  %.pn62 = phi { ptr, i32 } [ %i.mu, %bb.ar ], [ %i.ie, %bb.ab ], [ %i.ie, %bb.ac ]
  %i.mv = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %.body152
  %i.my = load i64, ptr %i.mw, align 8, !tbaa !34
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.mz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %.body152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.aw

bb.as:                                            ; preds = %._crit_edge.i.i171
  %i.na = landingpad { ptr, i32 }
          cleanup
  %i.nb = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.ji
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.as
  %i.nd = load i64, ptr %i.ji, align 8, !tbaa !34
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.aw

bb.at:                                            ; preds = %bb.aj
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #27
  br label %.body188

.body188:                                         ; preds = %bb.ai, %bb.ah, %bb.at
  %.pn67 = phi { ptr, i32 } [ %i.nf, %bb.at ], [ %i.kh, %bb.ah ], [ %i.kh, %bb.ai ]
  %i.ng = load ptr, ptr %19, align 8, !tbaa !31   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %.body188
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !34
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %.body188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.aw

bb.au:                                            ; preds = %bb.am
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit224

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i275, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = load ptr, ptr %20, align 8, !tbaa !43   ; 3 uses
  %.not.i222 = icmp eq ptr %i.nm, null
  br i1 %.not.i222, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit224, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i223

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i223: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !53
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit224

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit224: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i223, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au
  %.pn70 = phi { ptr, i32 } [ %i.nl, %bb.au ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i223 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.aw

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit138
  %i.nq = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30
          to label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit247 unwind label %bb.av ; 9 uses

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit247: ; preds = %.loopexit
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja12if_statementE, i64 16), ptr %i.nq, align 8, !tbaa !53, !noalias !408
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = load i64, ptr %3, align 8, !tbaa !43, !noalias !408
  store i64 %i.ns, ptr %i.nr, align 8, !tbaa !43, !noalias !408
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.nu = load ptr, ptr %6, align 8, !tbaa !50, !noalias !408
  store ptr %i.nu, ptr %i.nt, align 8, !tbaa !50, !noalias !408
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  store ptr %i.ak, ptr %i.nv, align 8, !tbaa !46, !noalias !408
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 40
  store ptr %i.aj, ptr %i.nw, align 8, !tbaa !51, !noalias !408
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nq, i64 48
  %i.ny = load <2 x ptr>, ptr %7, align 16, !tbaa !69, !noalias !408
  store <2 x ptr> %i.ny, ptr %i.nx, align 8, !tbaa !69, !noalias !408
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 64
  %i.oa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ob = load ptr, ptr %i.oa, align 16, !tbaa !51, !noalias !408
  store ptr %i.ob, ptr %i.nz, align 8, !tbaa !51, !noalias !408
  %i.oc = load ptr, ptr %1, align 8, !tbaa !35, !noalias !409, !nonnull !36, !align !37
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !41, !noalias !409
  %i.oe = getelementptr inbounds nuw [48 x i8], ptr %i.od, i64 %2
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.og = load i64, ptr %i.of, align 8, !tbaa !57, !noalias !409
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i64 %i.og, ptr %i.oh, align 8, !tbaa !59, !noalias !409
  store ptr %i.nq, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.av:                                            ; preds = %.loopexit
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.2
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit106 ], [ %i.oi, %bb.av ], [ %.pn72, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit144 ], [ %.pn70, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit224 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.na, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.2 ]
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %bb.aw ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  %i.oj = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %.not.i248 = icmp eq ptr %i.oj, null
  br i1 %.not.i248, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit250, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i249

end_hunk_5
begin_hunk_6_@_ZN5jinja6parser21parse_macro_statementEm:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5jinja5tokenD2Ev.exit
  %i.l = load i64, ptr %i.a, align 8, !tbaa !34
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5jinja5tokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = phi ptr [ %i.cm, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %i.x = phi ptr [ %i.cn, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.y = phi ptr [ %i.co, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.n, ptr %9, align 8, !tbaa !30
  store i64 8030590355653291621, ptr %i.n, align 8
  store i64 8, ptr %i.o, align 8, !tbaa !32
  store i8 0, ptr %i.u, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.z = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.c ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i23
  store ptr %i.z, ptr %8, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !67
  %i.ab = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %9, ptr noundef nonnull %i.p, ptr noundef nonnull %i.z)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i23
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %8, align 8, !tbaa !66    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i5.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #28
  br label %.body

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !68
  %i.ai = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %8, align 8, !tbaa !66    ; 3 uses
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !68  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %bb.f ] ; 3 uses
  %i.al = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.ak
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  %i.aw = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.v
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ay = load i64, ptr %i.v, align 8, !tbaa !34
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %i.ai, label %bb.q, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i, label %bb.j, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i
  %i.ba = load i64, ptr %10, align 8, !tbaa !43
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.s, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bc = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.bd = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.j
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i67 = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i67)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #30
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  %i.bo = load i64, ptr %10, align 8, !tbaa !43
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !43
  store ptr null, ptr %10, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc69
  %i.bp = add i64 %i.bc, -8
  %i.bq = sub i64 %i.bp, %i.bd                    ; 3 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader139, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bt = and i64 %i.bq, -8
  %i.bu = add i64 %i.bt, 8                        ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.w, i64 %i.bu
  %bound0 = icmp ult ptr %i.bm, %i.bw
  %bound1 = icmp ult ptr %i.w, %i.bv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.w, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.ca ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.w, i64 %i.ca ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.cb = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep136, align 8, !tbaa !43, !alias.scope !425
  %wide.load137 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !43, !alias.scope !425
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !426, !noalias !427
  store <2 x i64> %wide.load137, ptr %i.cc, align 8, !tbaa !43, !alias.scope !426, !noalias !427
  %11 = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep136, align 8, !tbaa !43, !alias.scope !425
  store <2 x ptr> splat (ptr null), ptr %11, align 8, !tbaa !43, !alias.scope !425
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader139

.lr.ph.i.i.i.i.preheader139:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader139, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader139 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader139 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.ce = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !424
  store i64 %i.ce, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !423
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !424
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cf, %i.x
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !417

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc69
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bm, %.noexc69 ], [ %i.by, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.be) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.l
  store ptr %i.bm, ptr %7, align 8, !tbaa !50
  store ptr %i.ch, ptr %i.s, align 8, !tbaa !46
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 3 uses
  store ptr %i.ci, ptr %i.t, align 8, !tbaa !51
  %.pr = load ptr, ptr %10, align 8, !tbaa !43    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.cj = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i
  %i.cm = phi ptr [ %i.w, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.bm, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.bm, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  %i.cn = phi ptr [ %i.x, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ci, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.ci, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  %i.co = phi ptr [ %i.bb, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ch, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.ch, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %._crit_edge.i.i23, !llvm.loop !418

bb.m:                                             ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.a
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !34
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.t

bb.o:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  br label %.body

.body:                                            ; preds = %bb.d, %bb.c, %bb.o
  %.pn15 = phi { ptr, i32 } [ %i.cv, %bb.o ], [ %i.ac, %bb.c ], [ %i.ac, %bb.d ]
  %i.cw = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %.body
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !34
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.k
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %10, align 8, !tbaa !43   ; 3 uses
  %.not.i38 = icmp eq ptr %i.dc, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i39

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i39: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !53
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i39, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn18 = phi { ptr, i32 } [ %i.db, %bb.p ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp140, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.dg = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30
          to label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit63 unwind label %bb.r ; 9 uses

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit63: ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja15macro_statementE, i64 16), ptr %i.dg, align 8, !tbaa !53, !noalias !428
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %3, align 8, !tbaa !43, !noalias !428
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !43, !noalias !428
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dk = load <2 x ptr>, ptr %4, align 16, !tbaa !69, !noalias !428
  store <2 x ptr> %i.dk, ptr %i.dj, align 8, !tbaa !69, !noalias !428
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !51, !noalias !428
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !51, !noalias !428
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !428
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dp = load ptr, ptr %7, align 8, !tbaa !50, !noalias !428
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !50, !noalias !428
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  store ptr %i.y, ptr %i.dq, align 8, !tbaa !46, !noalias !428
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  store ptr %i.x, ptr %i.dr, align 8, !tbaa !51, !noalias !428
  %i.ds = load ptr, ptr %1, align 8, !tbaa !35, !noalias !429, !nonnull !36, !align !37
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41, !noalias !429
  %i.du = getelementptr inbounds nuw [48 x i8], ptr %i.dt, i64 %2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !57, !noalias !429
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !59, !noalias !429
  store ptr %i.dg, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.r:                                             ; preds = %bb.q
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit40 ], [ %i.dy, %bb.r ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.s ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %bb.t ], [ %i.cp, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.dz = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %.not.i64 = icmp eq ptr %i.dz, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i65: ; preds = %bb.u
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit66: ; preds = %bb.u, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn18.pn.pn.pn
}
end_hunk_6
begin_hunk_7_@_ZN5jinja6parser19parse_for_statementEm:._crit_edge.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 22
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %._crit_edge.i.i78

._crit_edge.i.i78:                                ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.bi = phi ptr [ %i.ec, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ] ; 11 uses
  %i.bj = phi ptr [ %i.ed, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ] ; 6 uses
  %i.bk = phi ptr [ %i.ee, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr %i.at, ptr %11, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.at, ptr noundef nonnull align 1 dereferenceable(6) @.str.41, i64 6, i1 false)
  store i64 6, ptr %i.au, align 8, !tbaa !32
  store i8 0, ptr %i.bd, align 2, !tbaa !34
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !30
  store i32 1702063205, ptr %i.aw, align 8
  store i64 4, ptr %i.ax, align 8, !tbaa !32
  store i8 0, ptr %i.be, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.bl = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.k ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i78
  store ptr %i.bl, ptr %10, align 8, !tbaa !66
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store ptr %i.bm, ptr %i.az, align 8, !tbaa !67
  %i.bn = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %11, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bl)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i78
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %10, align 8, !tbaa !66   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i5.i, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !67
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #28
  br label %.body

bb.m:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  store ptr %i.bn, ptr %i.ba, align 8, !tbaa !68
  %i.bu = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %10, align 8, !tbaa !66   ; 3 uses
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bv, %bb.n ] ; 3 uses
  %i.bx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !34
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cc, %i.bw
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.n
  %i.cd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bv, %bb.n ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !67
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ch) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.o
  %i.ci = load ptr, ptr %i.bf, align 8, !tbaa !31 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bg
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ck = load i64, ptr %i.bg, align 8, !tbaa !34
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  %i.cm = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bh
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.co = load i64, ptr %i.bh, align 8, !tbaa !34
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %i.bu, label %._crit_edge.i.i103, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %.not.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i, label %bb.r, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.q
  %i.cq = load i64, ptr %12, align 8, !tbaa !43
  store i64 %i.cq, ptr %i.bk, align 8, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %i.cr, ptr %i.bb, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.cs = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.s, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc216 unwind label %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc216:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.r
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i215 = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i215)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #30
          to label %.noexc217 unwind label %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  %i.de = load i64, ptr %12, align 8, !tbaa !43
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !43
  store ptr null, ptr %12, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc217
  %i.df = add i64 %i.cs, -8
  %i.dg = sub i64 %i.df, %i.ct                    ; 3 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader417, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dj = and i64 %i.dg, -8
  %i.dk = add i64 %i.dj, 8                        ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dc, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.bi, i64 %i.dk
  %bound0 = icmp ult ptr %i.dc, %i.dm
  %bound1 = icmp ult ptr %i.bi, %i.dl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader417, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.dc, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.bi, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dc, i64 %i.dq ; 2 uses
  %next.gep387 = getelementptr i8, ptr %i.bi, i64 %i.dq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.dr = getelementptr i8, ptr %next.gep387, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep387, align 8, !tbaa !43, !alias.scope !454
  %wide.load388 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !43, !alias.scope !454
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !455, !noalias !456
  store <2 x i64> %wide.load388, ptr %i.ds, align 8, !tbaa !43, !alias.scope !455, !noalias !456
  %20 = getelementptr i8, ptr %next.gep387, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep387, align 8, !tbaa !43, !alias.scope !454
  store <2 x ptr> splat (ptr null), ptr %20, align 8, !tbaa !43, !alias.scope !454
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader417

.lr.ph.i.i.i.i.preheader417:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader417, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader417 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader417 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.du = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !453
  store i64 %i.du, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !452
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !453
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dv, %i.bj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !437

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc217
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dc, %.noexc217 ], [ %i.do, %middle.block ], [ %i.dw, %.lr.ph.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.cu) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.t
  store ptr %i.dc, ptr %8, align 8, !tbaa !50
  store ptr %i.dx, ptr %i.bb, align 8, !tbaa !46
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da ; 3 uses
  store ptr %i.dy, ptr %i.bc, align 8, !tbaa !51
  %.pr = load ptr, ptr %12, align 8, !tbaa !43    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.dz = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i
  %i.ec = phi ptr [ %i.bi, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.dc, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.dc, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  %i.ed = phi ptr [ %i.bj, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.dy, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.dy, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  %i.ee = phi ptr [ %i.cr, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.dx, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.dx, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %._crit_edge.i.i78, !llvm.loop !438

bb.u:                                             ; preds = %bb.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit211

bb.v:                                             ; preds = %_ZN5jinja6parser16parse_expressionEv.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ag
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.v
  %i.ej = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.au

bb.w:                                             ; preds = %bb.m
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  br label %.body

.body:                                            ; preds = %bb.l, %bb.k, %bb.w
  %.pn44 = phi { ptr, i32 } [ %i.el, %bb.w ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ]
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !31 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %.body
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !34
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  %i.es = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !34
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit102

.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.s
  %lpad.loopexit.split-lp419 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  %.not.i100 = icmp eq ptr %i.ey, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit102, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i101

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i101: ; preds = %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !53
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit102

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit102: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i101, %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %.pn58 = phi { ptr, i32 } [ %i.ex, %bb.x ], [ %lpad.loopexit.split-lp419, %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp419, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.at

._crit_edge.i.i103:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.fc, ptr %14, align 8, !tbaa !30
  store i32 1702063205, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 4, ptr %i.fd, align 8, !tbaa !32
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i8 0, ptr %i.fe, align 4, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ff = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i109 unwind label %bb.y ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i109: ; preds = %._crit_edge.i.i103
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.ff, ptr %13, align 8, !tbaa !66
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !67
  %i.fj = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %14, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ff)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i109, %._crit_edge.i.i103
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %13, align 8, !tbaa !66   ; 3 uses
  %.not.i.i5.i107 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i5.i107, label %.body110, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !67
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #28
  br label %.body110

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i109
  %i.fr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.fj, ptr %i.fr, align 8, !tbaa !68
  %i.fs = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ab unwind label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.ft = load ptr, ptr %13, align 8, !tbaa !66   ; 3 uses
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i113 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not4.i.i.i113, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i121, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %bb.ab, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117
  %.05.i.i.i115 = phi ptr [ %i.ga, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117 ], [ %i.ft, %bb.ab ] ; 3 uses
  %i.fv = load ptr, ptr %.05.i.i.i115, align 8, !tbaa !31 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i115, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i116

end_hunk_7
begin_hunk_8_@_ZN5jinja6parser19parse_for_statementEm:._crit_edge.i.i
  %i.gx = icmp eq ptr %i.gw, %i.gn
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZN5jinja5tokenD2Ev.exit135
  %i.gy = load i64, ptr %i.gn, align 8, !tbaa !34
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZN5jinja5tokenD2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %18, i64 22
  %i.hi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  br label %._crit_edge.i.i139

._crit_edge.i.i139:                               ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  store ptr %i.ha, ptr %18, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ha, ptr noundef nonnull align 1 dereferenceable(6) @.str.41, i64 6, i1 false)
  store i64 6, ptr %i.hb, align 8, !tbaa !32
  store i8 0, ptr %i.hh, align 2, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.hj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i145 unwind label %bb.ae ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i145: ; preds = %._crit_edge.i.i139
  store ptr %i.hj, ptr %17, align 8, !tbaa !66
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %i.hk, ptr %i.hd, align 8, !tbaa !67
  %i.hl = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %18, ptr noundef nonnull %i.hc, ptr noundef nonnull %i.hj)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i145, %._crit_edge.i.i139
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = load ptr, ptr %17, align 8, !tbaa !66   ; 3 uses
  %.not.i.i5.i143 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i5.i143, label %.body146, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ho = load ptr, ptr %i.hd, align 8, !tbaa !67
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #28
  br label %.body146

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i145
  store ptr %i.hl, ptr %i.he, align 8, !tbaa !68
  %i.hs = invoke noundef zeroext i1 @_ZNK5jinja6parser12is_statementERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.ht = load ptr, ptr %17, align 8, !tbaa !66   ; 3 uses
  %i.hu = load ptr, ptr %i.he, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i149 = icmp eq ptr %i.ht, %i.hu
  br i1 %.not4.i.i.i149, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i157, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %bb.ah, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i153
  %.05.i.i.i151 = phi ptr [ %i.ia, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i153 ], [ %i.ht, %bb.ah ] ; 3 uses
  %i.hv = load ptr, ptr %.05.i.i.i151, align 8, !tbaa !31 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i151, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i152: ; preds = %.lr.ph.i.i.i150
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !34
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i153

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i153: ; preds = %.lr.ph.i.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i152
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i151, i64 32 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.ia, %i.hu
  br i1 %.not.i.i.i154, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i155, label %.lr.ph.i.i.i150, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i155: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i153
  %.pr.i156 = load ptr, ptr %17, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i157

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i157: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i155, %bb.ah
  %i.ib = phi ptr [ %.pr.i156, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i155 ], [ %i.ht, %bb.ah ] ; 3 uses
  %.not.i.i1.i158 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i1.i158, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit161, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i157
  %i.ic = load ptr, ptr %i.hd, align 8, !tbaa !67
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.if) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit161

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit161: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i157, %bb.ai
  %i.ig = load ptr, ptr %18, align 8, !tbaa !31   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.hi
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit161
  %i.ii = load i64, ptr %i.hi, align 8, !tbaa !34
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br i1 %i.hs, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  invoke void @_ZN5jinja6parser9parse_anyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.ik = load ptr, ptr %i.hf, align 8, !tbaa !46 ; 6 uses
  %i.il = load ptr, ptr %i.hg, align 16, !tbaa !51
  %.not.i.i165 = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i.i165, label %bb.al, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit167.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit167.thread: ; preds = %bb.ak
  %i.im = load i64, ptr %19, align 8, !tbaa !43
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !43
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.in, ptr %i.hf, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit170

bb.al:                                            ; preds = %bb.ak
  %i.io = load ptr, ptr %9, align 16, !tbaa !50   ; 10 uses
  %i.ip = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.iq = ptrtoint ptr %i.io to i64               ; 2 uses
  %i.ir = sub i64 %i.ip, %i.iq                    ; 4 uses
  %i.is = icmp eq i64 %i.ir, 9223372036854775800
  br i1 %i.is, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i218

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i218: ; preds = %bb.al
  %i.it = ashr exact i64 %i.ir, 3                 ; 3 uses
  %.sroa.speculated.i.i219 = call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i219, %i.it ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  %i.iw = call i64 @llvm.umin.i64(i64 %i.iu, i64 1152921504606846975)
  %i.ix = select i1 %i.iv, i64 1152921504606846975, i64 %i.iw ; 3 uses
  %.not.i.i220 = icmp ne i64 %i.ix, 0
  call void @llvm.assume(i1 %.not.i.i220)
  %i.iy = shl nuw nsw i64 %i.ix, 3
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #30
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc237:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i218
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ir
  %i.jb = load i64, ptr %19, align 8, !tbaa !43
  store i64 %i.jb, ptr %i.ja, align 8, !tbaa !43
  store ptr null, ptr %19, align 8, !tbaa !43
  %.not10.i.i.i.i221 = icmp eq ptr %i.io, %i.ik
  br i1 %.not10.i.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i233, label %.lr.ph.i.i.i.i222.preheader

.lr.ph.i.i.i.i222.preheader:                      ; preds = %.noexc237
  %i.jc = add i64 %i.ip, -8
  %i.jd = sub i64 %i.jc, %i.iq                    ; 3 uses
  %i.je = lshr i64 %i.jd, 3
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check398 = icmp ult i64 %i.jd, 56
  br i1 %min.iters.check398, label %.lr.ph.i.i.i.i222.preheader416, label %vector.memcheck399

vector.memcheck399:                               ; preds = %.lr.ph.i.i.i.i222.preheader
  %i.jg = and i64 %i.jd, -8
  %i.jh = add i64 %i.jg, 8                        ; 2 uses
  %i.ji = getelementptr i8, ptr %i.iz, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.io, i64 %i.jh
  %bound0400 = icmp ult ptr %i.iz, %i.jj
  %bound1401 = icmp ult ptr %i.io, %i.ji
  %found.conflict402 = and i1 %bound0400, %bound1401
  br i1 %found.conflict402, label %.lr.ph.i.i.i.i222.preheader416, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck399
  %n.vec404 = and i64 %i.jf, 4611686018427387900  ; 3 uses
  %i.jk = shl i64 %n.vec404, 3                    ; 2 uses
  %i.jl = getelementptr i8, ptr %i.iz, i64 %i.jk  ; 2 uses
  %i.jm = getelementptr i8, ptr %i.io, i64 %i.jk
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next411, %vector.body405 ] ; 2 uses
  %i.jn = shl i64 %index406, 3                    ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.iz, i64 %i.jn ; 2 uses
  %next.gep408 = getelementptr i8, ptr %i.io, i64 %i.jn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.jo = getelementptr i8, ptr %next.gep408, i64 16
  %wide.load409 = load <2 x i64>, ptr %next.gep408, align 8, !tbaa !43, !alias.scope !459
  %wide.load410 = load <2 x i64>, ptr %i.jo, align 8, !tbaa !43, !alias.scope !459
  %i.jp = getelementptr i8, ptr %next.gep407, i64 16
  store <2 x i64> %wide.load409, ptr %next.gep407, align 8, !tbaa !43, !alias.scope !460, !noalias !461
  store <2 x i64> %wide.load410, ptr %i.jp, align 8, !tbaa !43, !alias.scope !460, !noalias !461
  %21 = getelementptr i8, ptr %next.gep408, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep408, align 8, !tbaa !43, !alias.scope !459
  store <2 x ptr> splat (ptr null), ptr %21, align 8, !tbaa !43, !alias.scope !459
  %index.next411 = add nuw i64 %index406, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next411, %n.vec404
  br i1 %i.jq, label %middle.block412, label %vector.body405, !llvm.loop !445

middle.block412:                                  ; preds = %vector.body405
  %cmp.n413 = icmp eq i64 %i.jf, %n.vec404
  br i1 %cmp.n413, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i233, label %.lr.ph.i.i.i.i222.preheader416

.lr.ph.i.i.i.i222.preheader416:                   ; preds = %vector.memcheck399, %.lr.ph.i.i.i.i222.preheader, %middle.block412
  %.012.i.i.i.i223.ph = phi ptr [ %i.iz, %vector.memcheck399 ], [ %i.iz, %.lr.ph.i.i.i.i222.preheader ], [ %i.jl, %middle.block412 ]
  %.0911.i.i.i.i224.ph = phi ptr [ %i.io, %vector.memcheck399 ], [ %i.io, %.lr.ph.i.i.i.i222.preheader ], [ %i.jm, %middle.block412 ]
  br label %.lr.ph.i.i.i.i222

.lr.ph.i.i.i.i222:                                ; preds = %.lr.ph.i.i.i.i222.preheader416, %.lr.ph.i.i.i.i222
  %.012.i.i.i.i223 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i222 ], [ %.012.i.i.i.i223.ph, %.lr.ph.i.i.i.i222.preheader416 ] ; 2 uses
  %.0911.i.i.i.i224 = phi ptr [ %i.js, %.lr.ph.i.i.i.i222 ], [ %.0911.i.i.i.i224.ph, %.lr.ph.i.i.i.i222.preheader416 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.jr = load i64, ptr %.0911.i.i.i.i224, align 8, !tbaa !43, !alias.scope !458
  store i64 %i.jr, ptr %.012.i.i.i.i223, align 8, !tbaa !43, !alias.scope !457
  store ptr null, ptr %.0911.i.i.i.i224, align 8, !tbaa !43, !alias.scope !458
  %i.js = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i224, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i223, i64 8 ; 2 uses
  %.not.i.i.i.i225 = icmp eq ptr %i.js, %i.ik
  br i1 %.not.i.i.i.i225, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i233, label %.lr.ph.i.i.i.i222, !llvm.loop !446

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i233: ; preds = %.lr.ph.i.i.i.i222, %middle.block412, %.noexc237
  %.0.lcssa.i.i.i.i227 = phi ptr [ %i.iz, %.noexc237 ], [ %i.jl, %middle.block412 ], [ %i.jt, %.lr.ph.i.i.i.i222 ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i227, i64 8
  %.not.i23.i235 = icmp eq ptr %i.io, null
  br i1 %.not.i23.i235, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit167, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i233
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.ir) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit167

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit167: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i233, %bb.an
  store ptr %i.iz, ptr %9, align 16, !tbaa !50
  store ptr %i.ju, ptr %i.hf, align 8, !tbaa !46
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ix
  store ptr %i.jv, ptr %i.hg, align 16, !tbaa !51
  %.pr256 = load ptr, ptr %19, align 8, !tbaa !43 ; 3 uses
  %.not.i168 = icmp eq ptr %.pr256, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit170, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i169

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i169: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit167
  %i.jw = load ptr, ptr %.pr256, align 8, !tbaa !53
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %.pr256) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit170

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit170: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit167.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit167, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %._crit_edge.i.i139, !llvm.loop !447

bb.ao:                                            ; preds = %bb.aa
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #27
  br label %.body110

.body110:                                         ; preds = %bb.z, %bb.y, %bb.ao
  %.pn48 = phi { ptr, i32 } [ %i.jz, %bb.ao ], [ %i.fk, %bb.y ], [ %i.fk, %bb.z ]
  %i.ka = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %.body110
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !34
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %.body110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.at

bb.ap:                                            ; preds = %._crit_edge.i.i129
  %i.kf = landingpad { ptr, i32 }
          cleanup
  %i.kg = load ptr, ptr %16, align 8, !tbaa !31   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.gn
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.ap
  %i.ki = load i64, ptr %i.gn, align 8, !tbaa !34
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.at

bb.aq:                                            ; preds = %bb.ag
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #27
  br label %.body146

.body146:                                         ; preds = %bb.af, %bb.ae, %bb.aq
  %.pn53 = phi { ptr, i32 } [ %i.kk, %bb.aq ], [ %i.hm, %bb.ae ], [ %i.hm, %bb.af ]
  %i.kl = load ptr, ptr %18, align 8, !tbaa !31   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %.body146
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !34
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %.body146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.at

bb.ar:                                            ; preds = %bb.aj
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit182

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i218, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = load ptr, ptr %19, align 8, !tbaa !43   ; 3 uses
  %.not.i180 = icmp eq ptr %i.kr, null
  br i1 %.not.i180, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit182, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i181

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i181: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !53
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit182

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit182: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i181, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar
  %.pn56 = phi { ptr, i32 } [ %i.kq, %bb.ar ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.at

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.kv = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30
          to label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit208 unwind label %bb.as ; 10 uses

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit208: ; preds = %.loopexit
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja13for_statementE, i64 16), ptr %i.kv, align 8, !tbaa !53, !noalias !462
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load i64, ptr %3, align 8, !tbaa !43, !noalias !462
  store i64 %i.kx, ptr %i.kw, align 8, !tbaa !43, !noalias !462
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kz = load i64, ptr %5, align 8, !tbaa !43, !noalias !462
  store i64 %i.kz, ptr %i.ky, align 8, !tbaa !43, !noalias !462
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.lb = load ptr, ptr %8, align 8, !tbaa !50, !noalias !462
  store ptr %i.lb, ptr %i.la, align 8, !tbaa !50, !noalias !462
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  store ptr %i.bk, ptr %i.lc, align 8, !tbaa !46, !noalias !462
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  store ptr %i.bj, ptr %i.ld, align 8, !tbaa !51, !noalias !462
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  %i.lf = load <2 x ptr>, ptr %9, align 16, !tbaa !69, !noalias !462
  store <2 x ptr> %i.lf, ptr %i.le, align 8, !tbaa !69, !noalias !462
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kv, i64 72
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.li = load ptr, ptr %i.lh, align 16, !tbaa !51, !noalias !462
  store ptr %i.li, ptr %i.lg, align 8, !tbaa !51, !noalias !462
  %i.lj = load ptr, ptr %1, align 8, !tbaa !35, !noalias !463, !nonnull !36, !align !37
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !41, !noalias !463
  %i.ll = getelementptr inbounds nuw [48 x i8], ptr %i.lk, i64 %2
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !57, !noalias !463
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !59, !noalias !463
  store ptr %i.kv, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.as:                                            ; preds = %.loopexit
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.1
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit102 ], [ %.pn56, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit182 ], [ %i.lp, %bb.as ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.1 ]
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.at ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5jinja6parser10parse_argsEv:._crit_edge.i.i
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.z

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit57
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60

.loopexit:                                        ; preds = %bb.c, %bb.e, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.sroa.082.0.ph = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ %i.bd, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EEaSEOS4_.exit ], [ %.sroa.082.1, %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ null, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit32

bb.j:                                             ; preds = %_ZN5jinja6parser16parse_expressionEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !43    ; 3 uses
  %.not.i30 = icmp eq ptr %i.az, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit32, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i31

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i31: ; preds = %bb.j
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i31, %bb.j, %bb.i
  %.pn17 = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread90: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EEaSEOS4_.exit unwind label %bb.m, !inline_history !4

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread90
  %i.bd = load ptr, ptr %5, align 8, !tbaa !43    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.be = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EEaSEOS4_.exit
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !56
  %i.bg = icmp eq i32 %i.bf, 5
  br i1 %i.bg, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !29  ; 2 uses
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.n, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN5jinja6parser16parse_expressionEv.exit41 unwind label %bb.n, !inline_history !4

_ZN5jinja6parser16parse_expressionEv.exit41:      ; preds = %bb.l
  %i.bj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit48 unwind label %bb.o ; 5 uses

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit48: ; preds = %_ZN5jinja6parser16parse_expressionEv.exit41
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja27keyword_argument_expressionE, i64 16), ptr %i.bj, align 8, !tbaa !53, !noalias !483
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = ptrtoint ptr %i.bd to i64
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !43, !noalias !483
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load i64, ptr %6, align 8, !tbaa !43, !noalias !483
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !43, !noalias !483
  store ptr null, ptr %6, align 8, !tbaa !43, !noalias !483
  %i.bo = load ptr, ptr %1, align 8, !tbaa !35, !noalias !484, !nonnull !36, !align !37
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41, !noalias !484
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.bp, i64 %i.bh
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !57, !noalias !484
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !59, !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.p

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread90
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60

bb.n:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit51

bb.o:                                             ; preds = %_ZN5jinja6parser16parse_expressionEv.exit41
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i49 = icmp eq ptr %i.bx, null
  br i1 %.not.i49, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit51, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i50

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i50: ; preds = %bb.o
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit51: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i50, %bb.o, %bb.n
  %.pn15 = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bw, %bb.o ], [ %i.bw, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.w

bb.p:                                             ; preds = %bb.k, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit48, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit
  %.sroa.082.1 = phi ptr [ %i.ai, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit ], [ %i.bj, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit48 ], [ %i.bd, %bb.k ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = ptrtoint ptr %.sroa.082.1 to i64
  store i64 %i.cb, ptr %i.s, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !46
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.r:                                             ; preds = %bb.p
  %i.cd = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.ce = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 4 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.s, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc76 unwind label %.loopexit.split-lp

.noexc76:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.r
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i.i74 = icmp ne i64 %i.cl, 0
  call void @llvm.assume(i1 %.not.i.i74)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #30
          to label %.noexc77 unwind label %.loopexit ; 11 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  %i.cp = ptrtoint ptr %.sroa.082.1 to i64
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc77
  %i.cq = add i64 %i.cd, -8
  %i.cr = sub i64 %i.cq, %i.ce                    ; 3 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cr, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cu = and i64 %i.cr, -8
  %i.cv = add i64 %i.cu, 8                        ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cn, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.q, i64 %i.cv
  %bound0 = icmp ult ptr %i.cn, %i.cx
  %bound1 = icmp ult ptr %i.q, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ct, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cn, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.q, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cn, i64 %i.db ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.q, i64 %i.db ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.dc = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep123, align 8, !tbaa !43, !alias.scope !487
  %wide.load124 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !43, !alias.scope !487
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !488, !noalias !489
  store <2 x i64> %wide.load124, ptr %i.dd, align 8, !tbaa !43, !alias.scope !488, !noalias !489
  %9 = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep123, align 8, !tbaa !43, !alias.scope !487
  store <2 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !43, !alias.scope !487
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !478

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader126

.lr.ph.i.i.i.i.preheader126:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cn, %vector.memcheck ], [ %i.cn, %.lr.ph.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader126, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader126 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader126 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.df = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !486
  store i64 %i.df, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !485
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !486
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.dg, %i.r
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !479

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc77
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cn, %.noexc77 ], [ %i.cz, %middle.block ], [ %i.dh, %.lr.ph.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i, label %.noexc52, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.cf) #28
  br label %.noexc52

.noexc52:                                         ; preds = %bb.t, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.cn, ptr %0, align 8, !tbaa !50
  store ptr %i.di, ptr %i.o, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl ; 2 uses
  store ptr %i.dj, ptr %i.p, align 8, !tbaa !51
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc52, %bb.q
  %i.dk = phi ptr [ %i.cn, %.noexc52 ], [ %i.q, %bb.q ]
  %i.dl = phi ptr [ %i.dj, %.noexc52 ], [ %i.r, %bb.q ]
  %i.dm = phi ptr [ %i.di, %.noexc52 ], [ %i.cc, %bb.q ]
  %i.dn = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !56
  %i.dp = icmp eq i32 %i.do, 16
  br i1 %i.dp, label %bb.v, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit57.backedge

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit57.backedge: ; preds = %bb.u, %bb.v
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit57, !llvm.loop !480

bb.v:                                             ; preds = %bb.u
  %i.dq = load i64, ptr %i.n, align 8, !tbaa !29
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.n, align 8, !tbaa !29
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit57.backedge

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit51
  %.sroa.082.2 = phi ptr [ %i.bd, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit51 ], [ %.sroa.082.0.ph, %.loopexit ], [ %.sroa.082.1, %.loopexit.split-lp ] ; 3 uses
  %.pn19 = phi { ptr, i32 } [ %.pn15, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit51 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i58 = icmp eq ptr %.sroa.082.2, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i59

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i59: ; preds = %bb.w
  %i.ds = load ptr, ptr %.sroa.082.2, align 8, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.082.2) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60

._crit_edge.i.i61:                                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.dv, ptr %8, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dv, ptr noundef nonnull align 1 dereferenceable(10) @.str.98, i64 10, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 10, ptr %i.dw, align 8, !tbaa !32
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i8 0, ptr %i.dx, align 2, !tbaa !34
  invoke void @_ZN5jinja6parser6expectENS_5token4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.jinja::token") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i61
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN5jinja5tokenD2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.x
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !34
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #28
  br label %_ZN5jinja5tokenD2Ev.exit67

_ZN5jinja5tokenD2Ev.exit67:                       ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65
  %i.ee = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dv
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN5jinja5tokenD2Ev.exit67
  %i.eg = load i64, ptr %i.dv, align 8, !tbaa !34
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN5jinja5tokenD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void

bb.y:                                             ; preds = %._crit_edge.i.i61
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dv
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.y
  %i.el = load i64, ptr %i.dv, align 8, !tbaa !34
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60: ; preds = %bb.m, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit32, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i59, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn19, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i59 ], [ %.pn19, %bb.w ], [ %i.bu, %bb.m ], [ %.pn17, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit32 ]
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit60 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  resume { ptr, i32 } %.pn19.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !69
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  store ptr %i.h, ptr %i.d, align 8, !tbaa !51
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !490
  br label %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, %bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.p) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5jinja6parser24parse_primary_expressionEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
end_hunk_9
begin_hunk_10_@_ZN5jinja6parser24parse_primary_expressionEv:bb.a
  br label %_ZNSt10unique_ptrIN5jinja10identifierESt14default_deleteIS1_EED2Ev.exit

bb.al:                                            ; preds = %.noexc.i.i.i.i65
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 48) #28, !noalias !537
  br label %.body

_ZNSt10unique_ptrIN5jinja10identifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge.i.i.i.i.i64, %bb.aj, %bb.ak
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !537 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !32, !noalias !537
  %i.eb = load ptr, ptr %i.dp, align 8, !tbaa !31, !noalias !537
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz
  store i8 0, ptr %i.ec, align 1, !tbaa !34, !noalias !537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !537
  %i.ed = load ptr, ptr %1, align 8, !tbaa !35, !noalias !538, !nonnull !36, !align !37
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !41, !noalias !538
  %i.ef = getelementptr inbounds nuw [48 x i8], ptr %i.ee, i64 %i.h
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !57, !noalias !538
  %i.ei = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !59, !noalias !538
  store ptr %i.do, ptr %0, align 8, !tbaa !61
  br label %bb.bz

bb.am:                                            ; preds = %_ZN5jinja5tokenC2ERKS0_.exit
  invoke void @_ZN5jinja6parser25parse_expression_sequenceEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext false)
          to label %._crit_edge.i.i71 unwind label %bb.ao

._crit_edge.i.i71:                                ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ej, ptr %5, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ej, ptr noundef nonnull align 1 dereferenceable(10) @.str.98, i64 10, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.ek, align 8, !tbaa !32
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.el, align 2, !tbaa !34
  invoke void @_ZN5jinja6parser6expectENS_5token4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.jinja::token") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %._crit_edge.i.i71
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !31 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZN5jinja5tokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.an
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !34
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #28
  br label %_ZN5jinja5tokenD2Ev.exit

_ZN5jinja5tokenD2Ev.exit:                         ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.es = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ej
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZN5jinja5tokenD2Ev.exit
  %i.eu = load i64, ptr %i.ej, align 8, !tbaa !34
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZN5jinja5tokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bz

bb.ao:                                            ; preds = %bb.ai, %bb.m, %bb.v, %bb.am
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %._crit_edge.i.i71
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ej
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ap
  %i.fa = load i64, ptr %i.ej, align 8, !tbaa !34
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.fc = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %.not.i80 = icmp eq ptr %i.fc, null
  br i1 %.not.i80, label %.body, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #27, !inline_history !0
  br label %.body

bb.aq:                                            ; preds = %_ZN5jinja5tokenC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge, %bb.aq
  %i.fi = phi ptr [ null, %bb.aq ], [ %i.ha, %.backedge ] ; 11 uses
  %i.fj = phi ptr [ null, %bb.aq ], [ %i.hb, %.backedge ] ; 6 uses
  %i.fk = phi ptr [ null, %bb.aq ], [ %i.hc, %.backedge ] ; 4 uses
  %i.fl = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.as unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !56
  %i.fn = icmp eq i32 %i.fm, 13
  br i1 %i.fn, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN5jinja6parser16parse_expressionEv.exit unwind label %bb.az, !inline_history !4

_ZN5jinja6parser16parse_expressionEv.exit:        ; preds = %bb.at
  %.not.i.i = icmp eq ptr %i.fk, %i.fj
  br i1 %.not.i.i, label %bb.au, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN5jinja6parser16parse_expressionEv.exit
  %i.fo = load i64, ptr %7, align 8, !tbaa !43
  store i64 %i.fo, ptr %i.fk, align 8, !tbaa !43
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  store ptr %i.fp, ptr %i.fg, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit87

bb.au:                                            ; preds = %_ZN5jinja6parser16parse_expressionEv.exit
  %i.fq = ptrtoint ptr %i.fj to i64               ; 2 uses
  %i.fr = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 4 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.av, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc164 unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc164:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.au
  %i.fu = ashr exact i64 %i.fs, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fu, i64 1)
  %i.fv = add nsw i64 %.sroa.speculated.i.i, %i.fu ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fu
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 1152921504606846975)
  %i.fy = select i1 %i.fw, i64 1152921504606846975, i64 %i.fx ; 3 uses
  %.not.i.i163 = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i163)
  %i.fz = shl nuw nsw i64 %i.fy, 3
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #30
          to label %.noexc165 unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fs
  %i.gc = load i64, ptr %7, align 8, !tbaa !43
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !43
  store ptr null, ptr %7, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc165
  %i.gd = add i64 %i.fq, -8
  %i.ge = sub i64 %i.gd, %i.fr                    ; 3 uses
  %i.gf = lshr i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ge, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader318, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.gh = and i64 %i.ge, -8
  %i.gi = add i64 %i.gh, 8                        ; 2 uses
  %i.gj = getelementptr i8, ptr %i.ga, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.fi, i64 %i.gi
  %bound0 = icmp ult ptr %i.ga, %i.gk
  %bound1 = icmp ult ptr %i.fi, %i.gj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader318, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gg, 4611686018427387900     ; 3 uses
  %i.gl = shl i64 %n.vec, 3                       ; 2 uses
  %i.gm = getelementptr i8, ptr %i.ga, i64 %i.gl  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.fi, i64 %i.gl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.go = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ga, i64 %i.go ; 2 uses
  %next.gep314 = getelementptr i8, ptr %i.fi, i64 %i.go ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.gp = getelementptr i8, ptr %next.gep314, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep314, align 8, !tbaa !43, !alias.scope !541
  %wide.load315 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !43, !alias.scope !541
  %i.gq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !542, !noalias !543
  store <2 x i64> %wide.load315, ptr %i.gq, align 8, !tbaa !43, !alias.scope !542, !noalias !543
  %18 = getelementptr i8, ptr %next.gep314, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep314, align 8, !tbaa !43, !alias.scope !541
  store <2 x ptr> splat (ptr null), ptr %18, align 8, !tbaa !43, !alias.scope !541
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !513

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader318

.lr.ph.i.i.i.i.preheader318:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ga, %vector.memcheck ], [ %i.ga, %.lr.ph.i.i.i.i.preheader ], [ %i.gm, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fi, %vector.memcheck ], [ %i.fi, %.lr.ph.i.i.i.i.preheader ], [ %i.gn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader318, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader318 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader318 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.gs = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !540
  store i64 %i.gs, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !539
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !540
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gt, %i.fj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !514

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc165
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ga, %.noexc165 ], [ %i.gm, %middle.block ], [ %i.gu, %.lr.ph.i.i.i.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.fi, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fs) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.aw
  store ptr %i.ga, ptr %6, align 8, !tbaa !50
  store ptr %i.gv, ptr %i.fg, align 8, !tbaa !46
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fy ; 3 uses
  store ptr %i.gw, ptr %i.fh, align 8, !tbaa !51
  %.pr = load ptr, ptr %7, align 8, !tbaa !43     ; 3 uses
  %.not.i85 = icmp eq ptr %.pr, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i86: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.gx = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i86
  %i.ha = phi ptr [ %i.fi, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ga, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.ga, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i86 ]
  %i.hb = phi ptr [ %i.fj, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.gw, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.gw, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i86 ]
  %i.hc = phi ptr [ %i.fp, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.gv, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ], [ %i.gv, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.hd = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.ax unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit87
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !56
  %i.hf = icmp eq i32 %i.he, 16
  br i1 %i.hf, label %bb.ay, label %.backedge

bb.ay:                                            ; preds = %bb.ax
  %i.hg = load i64, ptr %i.g, align 8, !tbaa !29
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.g, align 8, !tbaa !29
  br label %.backedge

.backedge:                                        ; preds = %bb.ay, %bb.ax
  br label %bb.ar, !llvm.loop !515

bb.az:                                            ; preds = %bb.at
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit92

.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.av
  %lpad.loopexit.split-lp323 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = load ptr, ptr %7, align 8, !tbaa !43    ; 3 uses
  %.not.i90 = icmp eq ptr %i.hj, null
  br i1 %.not.i90, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit92, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i91

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i91: ; preds = %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !53
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit92

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit92: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i91, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.az
  %.pn35 = phi { ptr, i32 } [ %i.hi, %bb.az ], [ %lpad.loopexit.split-lp323, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp323, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.loopexit.split-lp197

bb.ba:                                            ; preds = %bb.as
  %i.hn = load i64, ptr %i.g, align 8, !tbaa !29
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr %i.g, align 8, !tbaa !29
  %i.hp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev.exit unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.ba
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja13array_literalE, i64 16), ptr %i.hp, align 8, !tbaa !53, !noalias !544
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %6, align 8, !tbaa !50, !noalias !544
  store ptr %i.hr, ptr %i.hq, align 8, !tbaa !50, !noalias !544
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  store ptr %i.fk, ptr %i.hs, align 8, !tbaa !46, !noalias !544
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  store ptr %i.fj, ptr %i.ht, align 8, !tbaa !51, !noalias !544
  %i.hu = load ptr, ptr %1, align 8, !tbaa !35, !noalias !545, !nonnull !36, !align !37
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !41, !noalias !545
  %i.hw = getelementptr inbounds nuw [48 x i8], ptr %i.hv, i64 %i.h
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !57, !noalias !545
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !59, !noalias !545
  store ptr %i.hp, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bz

.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit87, %bb.ba
  %lpad.loopexit.split-lp320 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp197

.loopexit.split-lp197:                            ; preds = %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit92
  %.pn37 = phi { ptr, i32 } [ %.pn35, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit92 ], [ %lpad.loopexit.split-lp320, %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body

bb.bb:                                            ; preds = %_ZN5jinja5tokenC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 26
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit133, %bb.bb
  %i.ii = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.bd unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !56
  %i.ik = icmp eq i32 %i.ij, 15
  br i1 %i.ik, label %bb.bq, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN5jinja6parser16parse_expressionEv.exit98 unwind label %bb.bj, !inline_history !4

_ZN5jinja6parser16parse_expressionEv.exit98:      ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr %i.ia, ptr %11, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ia, ptr noundef nonnull align 1 dereferenceable(10) @.str.101, i64 10, i1 false)
  store i64 10, ptr %i.ib, align 8, !tbaa !32
  store i8 0, ptr %i.ih, align 2, !tbaa !34
  invoke void @_ZN5jinja6parser6expectENS_5token4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.jinja::token") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 18, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bf unwind label %bb.bk

bb.bf:                                            ; preds = %_ZN5jinja6parser16parse_expressionEv.exit98
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !31 ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.id
  br i1 %i.im, label %_ZN5jinja5tokenD2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103: ; preds = %bb.bf
  %i.in = load i64, ptr %i.id, align 8, !tbaa !34
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #28
  br label %_ZN5jinja5tokenD2Ev.exit105

_ZN5jinja5tokenD2Ev.exit105:                      ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103
  %i.ip = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ia
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZN5jinja5tokenD2Ev.exit105
  %i.ir = load i64, ptr %i.ia, align 8, !tbaa !34
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZN5jinja5tokenD2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN5jinja6parser16parse_expressionEv.exit110 unwind label %bb.bl, !inline_history !4
end_hunk_10
begin_hunk_11_@_ZN5jinja6parser21parse_call_expressionESt10unique_ptrINS_9statementESt14default_deleteIS2_EE:bb.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !31
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !30
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !32   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !31
  %i.q = load i64, ptr %i.k, align 8, !tbaa !34
  store i64 %i.q, ptr %i.i, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !32
  store ptr %i.k, ptr %i.h, align 8, !tbaa !31
  store i64 0, ptr %i.s, align 8, !tbaa !32
  store i8 0, ptr %i.k, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5jinja6parser25parse_expression_sequenceEb(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5jinja6parser24parse_primary_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i unwind label %bb.k, !inline_history !4

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit unwind label %bb.l ; 4 uses

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.f = load i64, ptr %4, align 8, !tbaa !43
  store i64 %i.f, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !50
  store ptr %i.g, ptr %i.c, align 8, !tbaa !46
  store ptr %i.g, ptr %i.d, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.h = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %_ZNK5jinja6parser2isENS_5token4typeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5jinja6parser2isENS_5token4typeE.exit:        ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = icmp eq i32 %i.i, 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5jinja6parser2isENS_5token4typeE.exit, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit30
  %i.k = phi ptr [ %i.g, %_ZNK5jinja6parser2isENS_5token4typeE.exit ], [ %i.bc, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit30 ] ; 6 uses
  %.pre77 = phi ptr [ %i.g, %_ZNK5jinja6parser2isENS_5token4typeE.exit ], [ %i.bd, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit30 ] ; 6 uses
  %.pre = phi ptr [ %i.e, %_ZNK5jinja6parser2isENS_5token4typeE.exit ], [ %i.be, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit30 ] ; 17 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.l, align 8, !tbaa !56
  %i.n = icmp eq i32 %i.m, 16
  br i1 %i.n, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !29
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5jinja6parser24parse_primary_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN5jinja6parser16parse_expressionEv.exit24 unwind label %bb.m

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN5jinja6parser16parse_expressionEv.exit24 unwind label %bb.m, !inline_history !4

_ZN5jinja6parser16parse_expressionEv.exit24:      ; preds = %bb.h, %bb.g
  %.not.i.i25 = icmp eq ptr %.pre77, %i.k
  br i1 %.not.i.i25, label %bb.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27.thread: ; preds = %_ZN5jinja6parser16parse_expressionEv.exit24
  %i.q = load i64, ptr %5, align 8, !tbaa !43
  store i64 %i.q, ptr %.pre77, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %.pre77, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit30

bb.i:                                             ; preds = %_ZN5jinja6parser16parse_expressionEv.exit24
  %i.s = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.t = ptrtoint ptr %.pre to i64                ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i42

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc60 unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i42: ; preds = %bb.i
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i43 = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i43, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i44 = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i44)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30
          to label %.noexc61 unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = load i64, ptr %5, align 8, !tbaa !43
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !43
  store ptr null, ptr %5, align 8, !tbaa !43
  %.not10.i.i.i.i45 = icmp eq ptr %.pre, %i.k
  br i1 %.not10.i.i.i.i45, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27, label %.lr.ph.i.i.i.i46.preheader

.lr.ph.i.i.i.i46.preheader:                       ; preds = %.noexc61
  %i.af = add i64 %i.s, -8
  %i.ag = sub i64 %i.af, %i.t                     ; 3 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i46.preheader129, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i46.preheader
  %i.aj = and i64 %i.ag, -8
  %i.ak = add i64 %i.aj, 8                        ; 2 uses
  %i.al = getelementptr i8, ptr %i.ac, i64 %i.ak
  %i.am = getelementptr i8, ptr %.pre, i64 %i.ak
  %bound0 = icmp ult ptr %i.ac, %i.am
  %bound1 = icmp ult ptr %.pre, %i.al
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i46.preheader129, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %.pre, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.aq ; 2 uses
  %next.gep126 = getelementptr i8, ptr %.pre, i64 %i.aq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.ar = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep126, align 8, !tbaa !43, !alias.scope !574
  %wide.load127 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !43, !alias.scope !574
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !575, !noalias !576
  store <2 x i64> %wide.load127, ptr %i.as, align 8, !tbaa !43, !alias.scope !575, !noalias !576
  %6 = getelementptr i8, ptr %next.gep126, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep126, align 8, !tbaa !43, !alias.scope !574
  store <2 x ptr> splat (ptr null), ptr %6, align 8, !tbaa !43, !alias.scope !574
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !565

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27, label %.lr.ph.i.i.i.i46.preheader129

.lr.ph.i.i.i.i46.preheader129:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i46.preheader, %middle.block
  %.012.i.i.i.i47.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i46.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.i48.ph = phi ptr [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i46.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.lr.ph.i.i.i.i46.preheader129, %.lr.ph.i.i.i.i46
  %.012.i.i.i.i47 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i46 ], [ %.012.i.i.i.i47.ph, %.lr.ph.i.i.i.i46.preheader129 ] ; 2 uses
  %.0911.i.i.i.i48 = phi ptr [ %i.av, %.lr.ph.i.i.i.i46 ], [ %.0911.i.i.i.i48.ph, %.lr.ph.i.i.i.i46.preheader129 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.au = load i64, ptr %.0911.i.i.i.i48, align 8, !tbaa !43, !alias.scope !573
  store i64 %i.au, ptr %.012.i.i.i.i47, align 8, !tbaa !43, !alias.scope !572
  store ptr null, ptr %.0911.i.i.i.i48, align 8, !tbaa !43, !alias.scope !573
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i48, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i47, i64 8 ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.av, %i.k
  br i1 %.not.i.i.i.i49, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27, label %.lr.ph.i.i.i.i46, !llvm.loop !566

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27: ; preds = %.lr.ph.i.i.i.i46, %middle.block, %.noexc61
  %.0.lcssa.i.i.i.i51 = phi ptr [ %i.ac, %.noexc61 ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i46 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i51, i64 8 ; 3 uses
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.u) #28
  store ptr %i.ac, ptr %3, align 8, !tbaa !50
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa ; 3 uses
  store ptr %i.ay, ptr %i.d, align 8, !tbaa !51
  %.pr65 = load ptr, ptr %5, align 8, !tbaa !43   ; 3 uses
  %.not.i28 = icmp eq ptr %.pr65, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit30, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i29

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i29: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27
  %i.az = load ptr, ptr %.pr65, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.pr65) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit30

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit30: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i29
  %i.bc = phi ptr [ %i.k, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27.thread ], [ %i.ay, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27 ], [ %i.ay, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i29 ]
  %i.bd = phi ptr [ %i.r, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27.thread ], [ %i.ax, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27 ], [ %i.ax, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i29 ]
  %i.be = phi ptr [ %.pre, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27.thread ], [ %i.ac, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit27 ], [ %i.ac, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.d, !llvm.loop !567

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit33

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !43    ; 3 uses
  %.not.i31 = icmp eq ptr %i.bh, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit33, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i32

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i32: ; preds = %bb.l
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit33

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit33: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i32, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.bg, %bb.l ], [ %i.bg, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit36

.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i42, %bb.j
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !43    ; 3 uses
  %.not.i34 = icmp eq ptr %i.bm, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit36, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i35

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i35: ; preds = %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit36

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit36: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i35, %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %.pn16 = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp131, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bq = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja13tuple_literalE, i64 16), ptr %i.bq, align 8, !tbaa !53, !noalias !577
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %.pre, ptr %i.br, align 8, !tbaa !50, !noalias !577
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %.pre77, ptr %i.bs, align 8, !tbaa !46, !noalias !577
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %i.k, ptr %i.bt, align 8, !tbaa !51, !noalias !577
  %i.bu = load ptr, ptr %1, align 8, !tbaa !35, !noalias !578, !nonnull !36, !align !37
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !41, !noalias !578
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !57, !noalias !578
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !59, !noalias !578
  store ptr %i.bq, ptr %0, align 8, !tbaa !61
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev.exit

.critedge:                                        ; preds = %bb.n
  %i.ca = load i64, ptr %.pre, align 8, !tbaa !43
  store i64 %i.ca, ptr %0, align 8, !tbaa !43
  store ptr null, ptr %.pre, align 8, !tbaa !43
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre77
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread89, label %.lr.ph.i.i.i

.lr.ph.i.i.ithread-pre-split:                     ; preds = %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr = load ptr, ptr %i.cf, align 8, !tbaa !43
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %.lr.ph.i.i.ithread-pre-split
  %i.cb = phi ptr [ %.pr, %.lr.ph.i.i.ithread-pre-split ], [ null, %.critedge ] ; 3 uses
  %.05.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.ithread-pre-split ], [ %.pre, %.critedge ]
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #27, !inline_history !8
  br label %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cf, %.pre77
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread89, label %.lr.ph.i.i.ithread-pre-split, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread89: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %.critedge
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %.pre to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cj) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPSt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.thread89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit36, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit33
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit33 ], [ %.pn16, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit36 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn16.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN5jinja6parser27parse_logical_or_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !30
  store i16 26217, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 2, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.c, align 2, !tbaa !34
  %i.d = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %.noexc18 unwind label %bb.j

.noexc18:                                         ; preds = %._crit_edge.i.i
end_hunk_11
begin_hunk_12_@_ZN5jinja6parser23parse_member_expressionESt10unique_ptrINS_9statementESt14default_deleteIS2_EE:bb.a
bb.y:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit31

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EEaSEOS4_.exit16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.040.0 = phi ptr [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cp, %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EEaSEOS4_.exit16 ] ; 2 uses
  %i.cr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit24 unwind label %bb.aa ; 6 uses

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit24: ; preds = %bb.z
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja17member_expressionE, i64 16), ptr %i.cr, align 8, !tbaa !53, !noalias !649
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %2, align 8, !tbaa !43, !noalias !649
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !43, !noalias !649
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = ptrtoint ptr %.sroa.040.0 to i64
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !43, !noalias !649
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store i8 %i.bz, ptr %i.cw, align 8, !tbaa !651, !noalias !649
  %i.cx = load ptr, ptr %1, align 8, !tbaa !35, !noalias !652, !nonnull !36, !align !37
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !41, !noalias !652
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.cy, i64 %i.c
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.db = load i64, ptr %i.da, align 8, !tbaa !57, !noalias !652
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !59, !noalias !652
  store ptr %i.cr, ptr %2, align 8, !tbaa !43
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.e
  br i1 %i.de, label %_ZN5jinja5tokenD2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit24
  %i.df = load i64, ptr %i.e, align 8, !tbaa !34
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #28
  br label %_ZN5jinja5tokenD2Ev.exit28

_ZN5jinja5tokenD2Ev.exit28:                       ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pre = load i64, ptr %i.b, align 8, !tbaa !29
  br label %bb.b, !llvm.loop !648

bb.aa:                                            ; preds = %bb.z
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.sroa.040.1 = phi ptr [ %.sroa.040.0, %bb.aa ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ] ; 3 uses
  %.pn6 = phi { ptr, i32 } [ %i.dh, %bb.aa ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ] ; 2 uses
  %.not.i29 = icmp eq ptr %.sroa.040.1, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit31, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i30

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i30: ; preds = %bb.ab
  %i.di = load ptr, ptr %.sroa.040.1, align 8, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.1) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit31: ; preds = %bb.y, %bb.v, %bb.ab, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i30
  %.pn648 = phi { ptr, i32 } [ %.pn6, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i30 ], [ %.pn6, %bb.ab ], [ %i.cq, %bb.y ], [ %i.cj, %bb.v ]
  %i.dl = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.e
  br i1 %i.dm, label %_ZN5jinja5tokenD2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32: ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit31
  %i.dn = load i64, ptr %i.e, align 8, !tbaa !34
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #28
  br label %_ZN5jinja5tokenD2Ev.exit35

_ZN5jinja5tokenD2Ev.exit35:                       ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume

bb.ac:                                            ; preds = %bb.i
  %i.dp = load i64, ptr %2, align 8, !tbaa !43
  store i64 %i.dp, ptr %0, align 8, !tbaa !43
  store ptr null, ptr %2, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5jinja6parser33parse_member_expression_argumentsEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 10 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.sink.split, %bb.a
  %.ph215 = phi ptr [ %.ph, %.sink.split ], [ null, %bb.a ]
  %.ph216 = phi ptr [ %.ph152, %.sink.split ], [ null, %bb.a ]
  %.ph217 = phi ptr [ %.ph153, %.sink.split ], [ null, %bb.a ]
  %.ph218 = phi ptr [ %.ph154, %.sink.split ], [ null, %bb.a ]
  %.07.ph = phi i1 [ true, %.sink.split ], [ false, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.o
  %i.e = phi ptr [ %i.ch, %bb.o ], [ %.ph215, %.outer ] ; 8 uses
  %i.f = phi ptr [ %i.ci, %bb.o ], [ %.ph216, %.outer ] ; 22 uses
  %i.g = phi ptr [ %i.cj, %bb.o ], [ %.ph217, %.outer ] ; 5 uses
  %i.h = phi ptr [ %i.ck, %bb.o ], [ %.ph218, %.outer ] ; 11 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = icmp eq i32 %i.j, 13
  br i1 %i.k, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.l, align 8, !tbaa !56
  %i.n = icmp eq i32 %i.m, 18
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.h, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !46
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.p = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc51:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i, %i.t  ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i50 = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i50)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 11 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i64 0, ptr %i.aa, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc52
  %i.ab = add i64 %i.p, -8
  %i.ac = sub i64 %i.ab, %i.q                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader210, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.af = and i64 %i.ac, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %i.ah = getelementptr i8, ptr %i.z, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ag
  %bound0 = icmp ult ptr %i.z, %i.ai
  %bound1 = icmp ult ptr %i.f, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader210, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.z, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.f, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.am ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.f, i64 %i.am ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.an = getelementptr i8, ptr %next.gep181, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep181, align 8, !tbaa !43, !alias.scope !680
  %wide.load182 = load <2 x i64>, ptr %i.an, align 8, !tbaa !43, !alias.scope !680
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !681, !noalias !682
  store <2 x i64> %wide.load182, ptr %i.ao, align 8, !tbaa !43, !alias.scope !681, !noalias !682
  %4 = getelementptr i8, ptr %next.gep181, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep181, align 8, !tbaa !43, !alias.scope !680
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !43, !alias.scope !680
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader210

.lr.ph.i.i.i.i.preheader210:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader210, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader210 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader210 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.aq = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !679
  store i64 %i.aq, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !678
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !679
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !660

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc52
  %.0.lcssa.i.i.i.i = phi ptr [ %i.z, %.noexc52 ], [ %i.ak, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i, label %.noexc, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.r) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.z, ptr %2, align 8, !tbaa !50
  store ptr %i.at, ptr %i.c, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x ; 3 uses
  store ptr %i.au, ptr %i.d, align 8, !tbaa !51
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN5jinja6parser19parse_if_expressionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN5jinja6parser16parse_expressionEv.exit unwind label %bb.p, !inline_history !4

_ZN5jinja6parser16parse_expressionEv.exit:        ; preds = %bb.k
  %.not.i.i17 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i17, label %bb.l, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19.thread

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19.thread: ; preds = %_ZN5jinja6parser16parse_expressionEv.exit
  %i.av = load i64, ptr %3, align 8, !tbaa !43
  store i64 %i.av, ptr %i.h, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !46
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit22

bb.l:                                             ; preds = %_ZN5jinja6parser16parse_expressionEv.exit
  %i.ax = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ay = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i53

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #29
          to label %.noexc71 unwind label %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i53: ; preds = %bb.l
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i54 = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i54, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i55 = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i55)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #30
          to label %.noexc72 unwind label %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc72:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load i64, ptr %3, align 8, !tbaa !43
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !43
  store ptr null, ptr %3, align 8, !tbaa !43
  %.not10.i.i.i.i56 = icmp eq ptr %i.f, %i.g
  br i1 %.not10.i.i.i.i56, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i68, label %.lr.ph.i.i.i.i57.preheader

.lr.ph.i.i.i.i57.preheader:                       ; preds = %.noexc72
  %i.bk = add i64 %i.ax, -8
  %i.bl = sub i64 %i.bk, %i.ay                    ; 3 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check192 = icmp ult i64 %i.bl, 56
  br i1 %min.iters.check192, label %.lr.ph.i.i.i.i57.preheader211, label %vector.memcheck193

vector.memcheck193:                               ; preds = %.lr.ph.i.i.i.i57.preheader
  %i.bo = and i64 %i.bl, -8
  %i.bp = add i64 %i.bo, 8                        ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.f, i64 %i.bp
  %bound0194 = icmp ult ptr %i.bh, %i.br
  %bound1195 = icmp ult ptr %i.f, %i.bq
  %found.conflict196 = and i1 %bound0194, %bound1195
  br i1 %found.conflict196, label %.lr.ph.i.i.i.i57.preheader211, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck193
  %n.vec198 = and i64 %i.bn, 4611686018427387900  ; 3 uses
  %i.bs = shl i64 %n.vec198, 3                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bh, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.f, i64 %i.bs
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph197
  %index200 = phi i64 [ 0, %vector.ph197 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %i.bv = shl i64 %index200, 3                    ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.bh, i64 %i.bv ; 2 uses
  %next.gep202 = getelementptr i8, ptr %i.f, i64 %i.bv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.bw = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load203 = load <2 x i64>, ptr %next.gep202, align 8, !tbaa !43, !alias.scope !685
  %wide.load204 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !43, !alias.scope !685
  %i.bx = getelementptr i8, ptr %next.gep201, i64 16
  store <2 x i64> %wide.load203, ptr %next.gep201, align 8, !tbaa !43, !alias.scope !686, !noalias !687
  store <2 x i64> %wide.load204, ptr %i.bx, align 8, !tbaa !43, !alias.scope !686, !noalias !687
  %5 = getelementptr i8, ptr %next.gep202, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep202, align 8, !tbaa !43, !alias.scope !685
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !43, !alias.scope !685
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.by, label %middle.block206, label %vector.body199, !llvm.loop !667

middle.block206:                                  ; preds = %vector.body199
  %cmp.n207 = icmp eq i64 %i.bn, %n.vec198
  br i1 %cmp.n207, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i68, label %.lr.ph.i.i.i.i57.preheader211

.lr.ph.i.i.i.i57.preheader211:                    ; preds = %vector.memcheck193, %.lr.ph.i.i.i.i57.preheader, %middle.block206
  %.012.i.i.i.i58.ph = phi ptr [ %i.bh, %vector.memcheck193 ], [ %i.bh, %.lr.ph.i.i.i.i57.preheader ], [ %i.bt, %middle.block206 ]
  %.0911.i.i.i.i59.ph = phi ptr [ %i.f, %vector.memcheck193 ], [ %i.f, %.lr.ph.i.i.i.i57.preheader ], [ %i.bu, %middle.block206 ]
  br label %.lr.ph.i.i.i.i57

.lr.ph.i.i.i.i57:                                 ; preds = %.lr.ph.i.i.i.i57.preheader211, %.lr.ph.i.i.i.i57
  %.012.i.i.i.i58 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i57 ], [ %.012.i.i.i.i58.ph, %.lr.ph.i.i.i.i57.preheader211 ] ; 2 uses
  %.0911.i.i.i.i59 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i57 ], [ %.0911.i.i.i.i59.ph, %.lr.ph.i.i.i.i57.preheader211 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.bz = load i64, ptr %.0911.i.i.i.i59, align 8, !tbaa !43, !alias.scope !684
  store i64 %i.bz, ptr %.012.i.i.i.i58, align 8, !tbaa !43, !alias.scope !683
  store ptr null, ptr %.0911.i.i.i.i59, align 8, !tbaa !43, !alias.scope !684
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i59, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.ca, %i.g
  br i1 %.not.i.i.i.i60, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i68, label %.lr.ph.i.i.i.i57, !llvm.loop !668

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i68: ; preds = %.lr.ph.i.i.i.i57, %middle.block206, %.noexc72
  %.0.lcssa.i.i.i.i62 = phi ptr [ %i.bh, %.noexc72 ], [ %i.bt, %middle.block206 ], [ %i.cb, %.lr.ph.i.i.i.i57 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i62, i64 8 ; 3 uses
  %.not.i23.i70 = icmp eq ptr %i.f, null
  br i1 %.not.i23.i70, label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.az) #28
  br label %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19

_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i68, %bb.n
  store ptr %i.bh, ptr %2, align 8, !tbaa !50
  store ptr %i.cc, ptr %i.c, align 8, !tbaa !46
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf ; 5 uses
  store ptr %i.cd, ptr %i.d, align 8, !tbaa !51
  %.pr = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i21: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19
  %i.ce = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19.thread, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i21
  %i.ch = phi ptr [ %i.e, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19.thread ], [ %i.cd, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19 ], [ %i.cd, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i21 ] ; 2 uses
  %i.ci = phi ptr [ %i.f, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19.thread ], [ %i.bh, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19 ], [ %i.bh, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i21 ] ; 2 uses
  %i.cj = phi ptr [ %i.g, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19.thread ], [ %i.cd, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19 ], [ %i.cd, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i21 ] ; 2 uses
  %i.ck = phi ptr [ %i.aw, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19.thread ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit19 ], [ %i.cc, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i21 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.cl = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5jinja6parser4peekEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit22
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !56
  %i.cn = icmp eq i32 %i.cm, 18
  br i1 %i.cn, label %.sink.split, label %bb.b, !llvm.loop !669

bb.p:                                             ; preds = %bb.k
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit27

.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5jinja9statementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i53, %bb.m
  %lpad.loopexit.split-lp213 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %.not.i25 = icmp eq ptr %i.cp, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit27, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i26

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i26: ; preds = %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit27

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit27: ; preds = %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i26, %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn = phi { ptr, i32 } [ %i.co, %bb.p ], [ %lpad.loopexit.split-lp213, %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp213, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit47

.sink.split:                                      ; preds = %bb.o, %.noexc, %bb.g
  %.ph = phi ptr [ %i.au, %.noexc ], [ %i.e, %bb.g ], [ %i.ch, %bb.o ]
  %.ph152 = phi ptr [ %i.z, %.noexc ], [ %i.f, %bb.g ], [ %i.ci, %bb.o ]
  %.ph153 = phi ptr [ %i.au, %.noexc ], [ %i.e, %bb.g ], [ %i.cj, %bb.o ]
  %.ph154 = phi ptr [ %i.at, %.noexc ], [ %i.o, %bb.g ], [ %i.ck, %bb.o ]
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.a, align 8, !tbaa !29
  br label %.outer, !llvm.loop !669

bb.q:                                             ; preds = %bb.c
  %i.cv = load ptr, ptr %2, align 8, !tbaa !69    ; 14 uses
  br i1 %.07.ph, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.cw = ptrtoint ptr %i.h to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %.not = icmp eq ptr %i.h, %i.cv
  br i1 %.not, label %.thread90, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load i64, ptr %i.cv, align 8, !tbaa !43
  %i.da = inttoptr i64 %i.cz to ptr               ; 3 uses
  store ptr null, ptr %i.cv, align 8, !tbaa !43
  %i.db = icmp ugt i64 %i.cy, 8
  br i1 %i.db, label %bb.t, label %.thread90

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !43
  %i.de = inttoptr i64 %i.dd to ptr               ; 2 uses
  store ptr null, ptr %i.dc, align 8, !tbaa !43
  %.not97 = icmp eq i64 %i.cy, 16
  br i1 %.not97, label %.thread90, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !43
  %i.dh = inttoptr i64 %i.dg to ptr
  store ptr null, ptr %i.df, align 8, !tbaa !43
  br label %.thread90

.thread90:                                        ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.079.095 = phi ptr [ %i.de, %bb.u ], [ %i.de, %bb.t ], [ null, %bb.s ], [ null, %bb.r ] ; 4 uses
  %.sroa.081.08893 = phi ptr [ %i.da, %bb.u ], [ %i.da, %bb.t ], [ %i.da, %bb.s ], [ null, %bb.r ] ; 4 uses
  %.sroa.077.0 = phi ptr [ %i.dh, %bb.u ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.r ] ; 4 uses
  %i.di = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit38 unwind label %bb.v ; 6 uses

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit38: ; preds = %.thread90
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5jinja16slice_expressionE, i64 16), ptr %i.di, align 8, !tbaa !53, !noalias !688
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = ptrtoint ptr %.sroa.081.08893 to i64
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !43, !noalias !688
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dm = ptrtoint ptr %.sroa.079.095 to i64
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !43, !noalias !688
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.do = ptrtoint ptr %.sroa.077.0 to i64
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !43, !noalias !688
  %i.dp = load ptr, ptr %1, align 8, !tbaa !35, !noalias !689, !nonnull !36, !align !37
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !41, !noalias !689
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.dq, i64 %i.b
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !57, !noalias !689
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !59, !noalias !689
  store ptr %i.di, ptr %0, align 8, !tbaa !61
  br label %bb.z

bb.v:                                             ; preds = %.thread90
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i39 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit41, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i40

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i40: ; preds = %bb.v
  %i.dw = load ptr, ptr %.sroa.077.0, align 8, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.077.0) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit41

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit41: ; preds = %bb.v, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i40
  %.not.i42 = icmp eq ptr %.sroa.079.095, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit44, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i43: ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit41
  %i.dz = load ptr, ptr %.sroa.079.095, align 8, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.079.095) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit44

_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit44: ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit41, %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i43
  %.not.i45 = icmp eq ptr %.sroa.081.08893, null
  br i1 %.not.i45, label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit47, label %_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i46

_ZNKSt14default_deleteIN5jinja9statementEEclEPS1_.exit.i46: ; preds = %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit44
  %i.ec = load ptr, ptr %.sroa.081.08893, align 8, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.081.08893) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN5jinja9statementESt14default_deleteIS1_EED2Ev.exit47

bb.w:                                             ; preds = %bb.q
  %i.ef = icmp eq ptr %i.cv, %i.h
  br i1 %i.ef, label %bb.x, label %bb.y

end_hunk_12
