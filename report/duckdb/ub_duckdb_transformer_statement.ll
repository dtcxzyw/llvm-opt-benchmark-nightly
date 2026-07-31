inline.NumInlined: 9726
inline.NumDeleted: 5291
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb11Transformer17TransformNameListB5cxx11ERN17duckdb_libpgquery6PGListE:bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !7   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

bb.c:                                             ; preds = %.lr.ph
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !19
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.177) #24
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.i, ptr %i.a, align 8, !tbaa !21
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !23
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.l, ptr %i.g, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPcEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !10
  store i8 %i.n, ptr %i.m, align 1, !tbaa !10
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPcEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPcEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPcEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.b, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JPcEEEvPT_DpOT0_.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19AddToMultiStatementERKNS_10unique_ptrINS_14MultiStatementESt14default_deleteIS1_ELb1EEENS0_INS_9AlterInfoES2_IS7_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.2", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25, !noalias !26 ; 3 uses
  invoke void @_ZN6duckdb14AlterStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %_ZN6duckdb9make_uniqINS_14AlterStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !26

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit11, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit11 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !26
  br label %common.resume

_ZN6duckdb9make_uniqINS_14AlterStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !29, !alias.scope !26
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14AlterStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_14AlterStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !31
  store ptr null, ptr %1, align 8, !tbaa !31
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !31
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_9AlterInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb9AlterInfoEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9AlterInfoEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(113) %i.f) #23, !inline_history !35
  br label %_ZN6duckdb10unique_ptrINS_9AlterInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9AlterInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb9AlterInfoEEclEPS1_.exit.i.i.i.i.i
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14MultiStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.g       ; 3 uses

bb.d:                                             ; preds = %_ZN6duckdb10unique_ptrINS_9AlterInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !29     ; 5 uses
  store ptr null, ptr %2, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.e, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.d
  %i.q = ptrtoint ptr %i.l to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !36
  br label %_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !42   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #25
          to label %.noexc4 unwind label %bb.h    ; 12 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.l to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !40
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc4
  %i.ag = sub i64 %i.t, %i.u
  %i.ah = add i64 %i.ag, -8                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ak = add i64 %i.t, -8
  %i.al = sub i64 %i.ak, %i.u
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.an
  %scevgep25 = getelementptr i8, ptr %i.s, i64 %i.an
  %bound0 = icmp ult ptr %i.ad, %scevgep25
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.s, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.as = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !40, !alias.scope !48, !noalias !43
  %wide.load27 = load <2 x i64>, ptr %i.as, align 8, !tbaa !40, !alias.scope !48, !noalias !43
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !40, !alias.scope !51, !noalias !48
  store <2 x i64> %wide.load27, ptr %i.at, align 8, !tbaa !40, !alias.scope !51, !noalias !48
  %i.au = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !40, !alias.scope !48, !noalias !43
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !40, !alias.scope !48, !noalias !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.i.preheader29:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader29 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader29 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !40, !alias.scope !46, !noalias !43
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !40, !alias.scope !43, !noalias !46
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !40, !alias.scope !46, !noalias !43
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !56

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc4
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc4 ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit.thread22, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit.thread22: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !42
  store ptr %i.az, ptr %i.m, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !29 ; 3 uses
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !42
  store ptr %i.az, ptr %i.m, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.bb, ptr %i.o, align 8, !tbaa !39
  %.not.i5 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14AlterStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14AlterStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  %i.bc = load ptr, ptr %.pre.pre, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(128) %.pre.pre) #23, !inline_history !57
  br label %_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit.thread22, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14AlterStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.g:                                             ; preds = %_ZN6duckdb10unique_ptrINS_9AlterInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZN6duckdb9make_uniqINS_14AlterStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit8

bb.h:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i6 = icmp eq ptr %i.l, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i7: ; preds = %bb.h
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #23, !inline_history !58
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit8: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i7, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.g ], [ %i.bg, %bb.h ], [ %i.bg, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i7 ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %.not.i9 = icmp eq ptr %i.bk, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit11, label %_ZNKSt14default_deleteIN6duckdb14AlterStatementEEclEPS1_.exit.i10

_ZNKSt14default_deleteIN6duckdb14AlterStatementEEclEPS1_.exit.i10: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #23, !inline_history !57
  br label %_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit11

_ZNSt10unique_ptrIN6duckdb14AlterStatementESt14default_deleteIS1_EED2Ev.exit11: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit8, %_ZNKSt14default_deleteIN6duckdb14AlterStatementEEclEPS1_.exit.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_14AlterStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14AlterStatementESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14AlterStatementESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

end_hunk_0
begin_hunk_1_@_ZN6duckdb25AddUpdateToMultiStatementERKNS_10unique_ptrINS_14MultiStatementESt14default_deleteIS1_ELb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_14AlterEntryDataERKNS0_INS_16ParsedExpressionES2_ISI_ELb1EEE:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.e
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12BaseTableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.af

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20 unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20: ; preds = %bb.f
  %i.ac = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12BaseTableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.af

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit21 unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit21: ; preds = %bb.g
  %i.af = load ptr, ptr %5, align 8, !tbaa !140   ; 4 uses
  store ptr null, ptr %5, align 8, !tbaa !140
  %i.ag = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15UpdateStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.ag

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142 ; 3 uses
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !142
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ai) #23, !inline_history !143
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.am = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25
          to label %.noexc unwind label %bb.ah    ; 3 uses

.noexc:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb13UpdateSetInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %bb.j unwind label %bb.i, !noalias !144

bb.i:                                             ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.am) #26, !noalias !144
  br label %.body

bb.j:                                             ; preds = %.noexc
  store ptr %i.am, ptr %6, align 8, !tbaa !147, !alias.scope !144
  %i.ao = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.ai      ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18
  %.not.i22 = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i22, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !19
  %i.au = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !21
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.ai  ; 2 uses

.noexc23:                                         ; preds = %.noexc.i.i
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !23
  %i.az = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.az, ptr %i.at, align 8, !tbaa !10
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc23, %bb.l
  %i.ba = phi ptr [ %i.ay, %.noexc23 ], [ %i.at, %bb.l ] ; 2 uses
  switch i64 %i.aw, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !10
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !25
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.bh, ptr %i.ap, align 8, !tbaa !15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.o:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ai

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.o
  %i.bj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.p unwind label %bb.ai      ; 3 uses

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.q unwind label %bb.aj      ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.bl)
          to label %bb.r unwind label %bb.aj

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !148 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !149
  %.not.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i, label %bb.s, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.r
  %i.bt = load i64, ptr %7, align 8, !tbaa !150
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !150
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !152 ; 10 uses
  %i.bw = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64               ; 3 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc25 unwind label %bb.ak

.noexc25:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #25
          to label %.noexc26 unwind label %bb.ak  ; 10 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  %i.ci = load i64, ptr %7, align 8, !tbaa !150
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !150
  store ptr null, ptr %7, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bq
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc26
  %i.cj = sub i64 %i.bw, %i.bx
  %i.ck = add i64 %i.cj, -8                       ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader119, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cn = add i64 %i.bw, -8
  %i.co = sub i64 %i.cn, %i.bx
  %i.cp = and i64 %i.co, -8
  %i.cq = add i64 %i.cp, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cg, i64 %i.cq
  %scevgep92 = getelementptr i8, ptr %i.bv, i64 %i.cq
  %bound0 = icmp ult ptr %i.cg, %scevgep92
  %bound1 = icmp ult ptr %i.bv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader119, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.cr = shl i64 %n.vec, 3                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bv, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cu ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.bv, i64 %i.cu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.cv = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep93, align 8, !tbaa !150, !alias.scope !158, !noalias !153
  %wide.load94 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !150, !alias.scope !158, !noalias !153
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !161, !noalias !158
  store <2 x i64> %wide.load94, ptr %i.cw, align 8, !tbaa !150, !alias.scope !161, !noalias !158
  %i.cx = getelementptr i8, ptr %next.gep93, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep93, align 8, !tbaa !150, !alias.scope !158, !noalias !153
  store <2 x ptr> splat (ptr null), ptr %i.cx, align 8, !tbaa !150, !alias.scope !158, !noalias !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader119

.lr.ph.i.i.i.i.i.i.i.preheader119:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader119, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader119 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader119 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.cz = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !156, !noalias !153
  store i64 %i.cz, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !153, !noalias !156
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !156, !noalias !153
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.da, %i.bq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !164

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc26
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.noexc26 ], [ %i.cs, %middle.block ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.u
  store ptr %i.cg, ptr %i.bk, align 8, !tbaa !152
  store ptr %i.dc, ptr %i.bp, align 8, !tbaa !148
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.dd, ptr %i.br, align 8, !tbaa !149
  %.pr = load ptr, ptr %7, align 8, !tbaa !150    ; 3 uses
  %.not.i27 = icmp eq ptr %.pr, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.de = load ptr, ptr %.pr, align 8, !tbaa !33
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.dh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15UpdateStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.v unwind label %bb.ai

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 160 ; 3 uses
  %i.dj = load ptr, ptr %6, align 8, !tbaa !147
  store ptr null, ptr %6, align 8, !tbaa !147
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !147 ; 2 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !147
  %.not.i.i.i.i.i28 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i28, label %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNKSt14default_deleteIN6duckdb13UpdateSetInfoEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull %i.dk)
  br label %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.v, %bb.w
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14MultiStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.x unwind label %bb.ai      ; 3 uses

bb.x:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 120 ; 2 uses
  %i.dn = load ptr, ptr %4, align 8, !tbaa !65    ; 5 uses
  store ptr null, ptr %4, align 8, !tbaa !65
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 128 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !36 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 136 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !39
  %.not.i.i29 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = ptrtoint ptr %i.dn to i64
  store i64 %i.ds, ptr %i.dp, align 8, !tbaa !40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !36
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !42 ; 10 uses
  %i.dv = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.aa, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc39 unwind label %bb.al

.noexc39:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i30 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i30, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i.i31 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i.i31)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #25
          to label %.noexc40 unwind label %bb.al  ; 10 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  %i.eh = ptrtoint ptr %i.dn to i64
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !40
  %.not10.i.i.i.i.i.i.i32 = icmp eq ptr %i.du, %i.dp
  br i1 %.not10.i.i.i.i.i.i.i32, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i33.preheader

.lr.ph.i.i.i.i.i.i.i33.preheader:                 ; preds = %.noexc40
  %i.ei = sub i64 %i.dv, %i.dw
  %i.ej = add i64 %i.ei, -8                       ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check103 = icmp ult i64 %i.ej, 152
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.i33.preheader118, label %vector.memcheck96

vector.memcheck96:                                ; preds = %.lr.ph.i.i.i.i.i.i.i33.preheader
  %i.em = add i64 %i.dv, -8
  %i.en = sub i64 %i.em, %i.dw
  %i.eo = and i64 %i.en, -8
  %i.ep = add i64 %i.eo, 8                        ; 2 uses
  %scevgep97 = getelementptr i8, ptr %i.ef, i64 %i.ep
  %scevgep98 = getelementptr i8, ptr %i.du, i64 %i.ep
  %bound099 = icmp ult ptr %i.ef, %scevgep98
  %bound1100 = icmp ult ptr %i.du, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i.i.i.i.i.i.i33.preheader118, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %n.vec106 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.eq = shl i64 %n.vec106, 3                    ; 2 uses
  %i.er = getelementptr i8, ptr %i.ef, i64 %i.eq  ; 2 uses
  %i.es = getelementptr i8, ptr %i.du, i64 %i.eq
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next113, %vector.body107 ] ; 2 uses
  %i.et = shl i64 %index108, 3                    ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.ef, i64 %i.et ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.du, i64 %i.et ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.eu = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load111 = load <2 x i64>, ptr %next.gep110, align 8, !tbaa !40, !alias.scope !171, !noalias !166
  %wide.load112 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !40, !alias.scope !171, !noalias !166
  %i.ev = getelementptr i8, ptr %next.gep109, i64 16
  store <2 x i64> %wide.load111, ptr %next.gep109, align 8, !tbaa !40, !alias.scope !174, !noalias !171
  store <2 x i64> %wide.load112, ptr %i.ev, align 8, !tbaa !40, !alias.scope !174, !noalias !171
  %i.ew = getelementptr i8, ptr %next.gep110, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep110, align 8, !tbaa !40, !alias.scope !171, !noalias !166
  store <2 x ptr> splat (ptr null), ptr %i.ew, align 8, !tbaa !40, !alias.scope !171, !noalias !166
  %index.next113 = add nuw i64 %index108, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.ex, label %middle.block114, label %vector.body107, !llvm.loop !176

middle.block114:                                  ; preds = %vector.body107
  %cmp.n115 = icmp eq i64 %i.el, %n.vec106
  br i1 %cmp.n115, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i33.preheader118

.lr.ph.i.i.i.i.i.i.i33.preheader118:              ; preds = %vector.memcheck96, %.lr.ph.i.i.i.i.i.i.i33.preheader, %middle.block114
  %.012.i.i.i.i.i.i.i34.ph = phi ptr [ %i.ef, %vector.memcheck96 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i33.preheader ], [ %i.er, %middle.block114 ]
  %.0911.i.i.i.i.i.i.i35.ph = phi ptr [ %i.du, %vector.memcheck96 ], [ %i.du, %.lr.ph.i.i.i.i.i.i.i33.preheader ], [ %i.es, %middle.block114 ]
  br label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %.lr.ph.i.i.i.i.i.i.i33.preheader118, %.lr.ph.i.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i.i34 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.012.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i33.preheader118 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i35 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.0911.i.i.i.i.i.i.i35.ph, %.lr.ph.i.i.i.i.i.i.i33.preheader118 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ey = load i64, ptr %.0911.i.i.i.i.i.i.i35, align 8, !tbaa !40, !alias.scope !169, !noalias !166
  store i64 %i.ey, ptr %.012.i.i.i.i.i.i.i34, align 8, !tbaa !40, !alias.scope !166, !noalias !169
  store ptr null, ptr %.0911.i.i.i.i.i.i.i35, align 8, !tbaa !40, !alias.scope !169, !noalias !166
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i35, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i36 = icmp eq ptr %i.ez, %i.dp
  br i1 %.not.i.i.i.i.i.i.i36, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !177

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %middle.block114, %.noexc40
  %.0.lcssa.i.i.i.i.i.i.i37 = phi ptr [ %i.ef, %.noexc40 ], [ %i.er, %middle.block114 ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i33 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i37, i64 8
  %.not.i23.i.i.i38 = icmp eq ptr %i.du, null
  br i1 %.not.i23.i.i.i38, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.du) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ab, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ef, ptr %i.dm, align 8, !tbaa !42
  store ptr %i.fb, ptr %i.do, align 8, !tbaa !36
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.fc, ptr %i.dq, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.y, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.fd = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %.not.i42 = icmp eq ptr %i.fd, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  call void @_ZNKSt14default_deleteIN6duckdb13UpdateSetInfoEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.fd)
  br label %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.fe = load ptr, ptr %5, align 8, !tbaa !140   ; 3 uses
  %.not.i43 = icmp eq ptr %i.fe, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !33
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(208) %i.fe) #23, !inline_history !178
  br label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.fi = load ptr, ptr %4, align 8, !tbaa !65    ; 3 uses
  %.not.i44 = icmp eq ptr %i.fi, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN6duckdb15UpdateStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15UpdateStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15UpdateStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !33
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(249) %i.fi) #23, !inline_history !179
  br label %_ZNSt10unique_ptrIN6duckdb15UpdateStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15UpdateStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15UpdateStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.ad:                                            ; preds = %_ZN6duckdb9make_uniqINS_15UpdateStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ae:                                            ; preds = %bb.c
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit58

bb.af:                                            ; preds = %bb.g, %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.d
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit47

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit21
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i45 = icmp eq ptr %i.af, null
  br i1 %.not.i45, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit47, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i46

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i46: ; preds = %bb.ag
  %i.fq = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.af) #23, !inline_history !180
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit47

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.o, %.noexc.i.i, %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.j
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit53

bb.aj:                                            ; preds = %bb.q, %bb.p
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50

bb.ak:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.t
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %7, align 8, !tbaa !150   ; 3 uses
  %.not.i48 = icmp eq ptr %i.fx, null
  br i1 %.not.i48, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i49

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i49: ; preds = %bb.ak
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !33
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(56) %i.fx) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i49, %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.fv, %bb.aj ], [ %i.fw, %bb.ak ], [ %i.fw, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit53

bb.al:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.aa
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i51 = icmp eq ptr %i.dn, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit53, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i52

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i52: ; preds = %bb.al
  %i.gc = load ptr, ptr %i.dn, align 8, !tbaa !33
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.dn) #23, !inline_history !58
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit53

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit53: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i52, %bb.al, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50, %bb.ai
  %.pn14 = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit50 ], [ %i.fu, %bb.ai ], [ %i.gb, %bb.al ], [ %i.gb, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i52 ] ; 2 uses
  %i.gf = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %.not.i54 = icmp eq ptr %i.gf, null
  br i1 %.not.i54, label %.body, label %bb.am

end_hunk_1
begin_hunk_2_@_ZN6duckdb11Transformer25TransformColumnDefinitionERN17duckdb_libpgquery11PGColumnDefE:bb.a
  br i1 %.0, label %bb.ak, label %bb.bf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.0, label %bb.ak, label %bb.bf

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn55187 = phi { ptr, i32 } [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.thread ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ]
  call void @__cxa_free_exception(ptr %i.bl) #23
  br label %bb.bf

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.bv = load ptr, ptr %i.ah, align 8, !tbaa !353
  invoke void @_ZN6duckdb11Transformer18TransformCollationB5cxx11ENS_12optional_ptrIN17duckdb_libpgquery15PGCollateClauseELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull align 8 poison, ptr %i.bv)
          to label %bb.am unwind label %bb.ax

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  store ptr %i.bw, ptr %19, align 8, !tbaa !19
  %i.bx = load ptr, ptr %16, align 8, !tbaa !23   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.bz, ptr %i.b, align 8, !tbaa !21
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %.noexc.i90, label %._crit_edge.i.i89

.noexc.i90:                                       ; preds = %bb.am
  %i.cb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc91 unwind label %bb.ay  ; 2 uses

.noexc91:                                         ; preds = %.noexc.i90
  store ptr %i.cb, ptr %19, align 8, !tbaa !23
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.cc, ptr %i.bw, align 8, !tbaa !10
  br label %._crit_edge.i.i89

._crit_edge.i.i89:                                ; preds = %.noexc91, %bb.am
  %i.cd = phi ptr [ %i.cb, %.noexc91 ], [ %i.bw, %bb.am ] ; 2 uses
  switch i64 %i.bz, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i89
  %i.ce = load i8, ptr %i.bx, align 1, !tbaa !10
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !10
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i89
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !25
  %i.ch = load ptr, ptr %19, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %19)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cj = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc92 unwind label %bb.ba  ; 3 uses

.noexc92:                                         ; preds = %bb.aq
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %18) #23, !noalias !355
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.cj, ptr noundef nonnull %3)
          to label %bb.as unwind label %bb.ar, !noalias !355

bb.ar:                                            ; preds = %.noexc92
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !355
  call void @_ZdlPv(ptr noundef nonnull %i.cj) #26, !noalias !355
  br label %.body

bb.as:                                            ; preds = %.noexc92
  store ptr %i.cj, ptr %17, align 8, !tbaa !358, !alias.scope !355
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #23
  %i.cl = load ptr, ptr %19, align 8, !tbaa !23   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bw
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ConstantExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %._crit_edge.i.i96 unwind label %bb.bc ; 2 uses

._crit_edge.i.i96:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.co, ptr %20, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.co, ptr noundef nonnull align 1 dereferenceable(9) @.str.53, i64 9, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i64 9, ptr %i.cp, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 25
  store i8 0, ptr %i.cq, align 1, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %.not21.i.i = icmp eq ptr %20, %i.cr
  br i1 %.not21.i.i, label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, !prof !59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %._crit_edge.i.i96
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cs, ptr noundef nonnull align 1 dereferenceable(9) @.str.53, i64 9, i1 false)
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !25 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !25
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 0, ptr %i.cw, align 1, !tbaa !10
  %.pre.i.i = load ptr, ptr %20, align 8, !tbaa !23
  br label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.cx = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.co, %._crit_edge.i.i96 ]
  store i64 0, ptr %i.cp, align 8, !tbaa !25
  store i8 0, ptr %i.cx, align 1, !tbaa !10
  %i.cy = load ptr, ptr %20, align 8, !tbaa !23   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.co
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.da = getelementptr inbounds nuw i8, ptr %i.bd, i64 152 ; 2 uses
  %i.db = load ptr, ptr %17, align 8, !tbaa !358  ; 5 uses
  store ptr null, ptr %17, align 8, !tbaa !358
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bd, i64 160 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !148 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bd, i64 168 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !149
  %.not.i.i105 = icmp eq ptr %i.dd, %i.df
  br i1 %.not.i.i105, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.dg = ptrtoint ptr %i.db to i64
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !150
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !152 ; 10 uses
  %i.dj = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.av, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc107 unwind label %bb.bd

.noexc107:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.dn = ashr exact i64 %i.dl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 1152921504606846975)
  %i.dr = select i1 %i.dp, i64 1152921504606846975, i64 %i.dq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #25
          to label %.noexc108 unwind label %bb.bd ; 10 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl
  %i.dv = ptrtoint ptr %i.db to i64
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.di, %i.dd
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc108
  %i.dw = sub i64 %i.dj, %i.dk
  %i.dx = add i64 %i.dw, -8                       ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dx, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader227, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ea = add i64 %i.dj, -8
  %i.eb = sub i64 %i.ea, %i.dk
  %i.ec = and i64 %i.eb, -8
  %i.ed = add i64 %i.ec, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dt, i64 %i.ed
  %scevgep223 = getelementptr i8, ptr %i.di, i64 %i.ed
  %bound0 = icmp ult ptr %i.dt, %scevgep223
  %bound1 = icmp ult ptr %i.di, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dz, 4611686018427387900     ; 3 uses
  %i.ee = shl i64 %n.vec, 3                       ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.di, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eh ; 2 uses
  %next.gep224 = getelementptr i8, ptr %i.di, i64 %i.eh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.ei = getelementptr i8, ptr %next.gep224, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep224, align 8, !tbaa !150, !alias.scope !365, !noalias !360
  %wide.load225 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !150, !alias.scope !365, !noalias !360
  %i.ej = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !368, !noalias !365
  store <2 x i64> %wide.load225, ptr %i.ej, align 8, !tbaa !150, !alias.scope !368, !noalias !365
  %i.ek = getelementptr i8, ptr %next.gep224, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep224, align 8, !tbaa !150, !alias.scope !365, !noalias !360
  store <2 x ptr> splat (ptr null), ptr %i.ek, align 8, !tbaa !150, !alias.scope !365, !noalias !360
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader227

.lr.ph.i.i.i.i.i.i.i.preheader227:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ef, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.di, %vector.memcheck ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader227, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader227 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader227 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.em = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !363, !noalias !360
  store i64 %i.em, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !360, !noalias !363
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !363, !noalias !360
  %i.en = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i106 = icmp eq ptr %i.en, %i.dd
  br i1 %.not.i.i.i.i.i.i.i106, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !371

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc108
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.noexc108 ], [ %i.ef, %middle.block ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.di) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dt, ptr %i.da, align 8, !tbaa !152
  store ptr %i.ep, ptr %i.dc, align 8, !tbaa !148
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.eq, ptr %i.de, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.at, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.er = load i64, ptr %10, align 8, !tbaa !150
  store i64 %i.er, ptr %22, align 8, !tbaa !150
  store ptr null, ptr %10, align 8, !tbaa !150
  invoke void @_ZN6duckdb11LogicalType7UNBOUNDENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %21, ptr noundef nonnull %22)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i113 unwind label %bb.be

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i113: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.es = load i8, ptr %21, align 8, !tbaa !343
  store i8 %i.es, ptr %5, align 8, !tbaa !343
  %i.et = getelementptr inbounds nuw i8, ptr %21, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !351
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !351
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ey = load <2 x ptr>, ptr %i.ex, align 8, !tbaa !352
  %i.ez = load <2 x ptr>, ptr %i.ew, align 8, !tbaa !352
  store <2 x ptr> %i.ey, ptr %i.ew, align 8, !tbaa !352
  store <2 x ptr> %i.ez, ptr %i.ex, align 8, !tbaa !352
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #23
  %i.fa = load ptr, ptr %22, align 8, !tbaa !150  ; 3 uses
  %.not.i119 = icmp eq ptr %i.fa, null
  br i1 %.not.i119, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit121, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i120

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i120: ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i113
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !33
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(56) %i.fa) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit121

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit121: ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i113, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.fe = load ptr, ptr %17, align 8, !tbaa !358  ; 3 uses
  %.not.i122 = icmp eq ptr %i.fe, null
  br i1 %.not.i122, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit121
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !33
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(120) %i.fe) #23, !inline_history !372
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit121, %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.fi = load ptr, ptr %16, align 8, !tbaa !23   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.fi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.fl = load ptr, ptr %10, align 8, !tbaa !150  ; 3 uses
  %.not.i126 = icmp eq ptr %i.fl, null
  br i1 %.not.i126, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit128, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i127

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !33
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(56) %i.fl) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit128

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bi

bb.ax:                                            ; preds = %bb.al
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.ay:                                            ; preds = %.noexc.i90
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.az:                                            ; preds = %bb.ap
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aq
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.ba
  %eh.lpad-body = phi { ptr, i32 } [ %i.fs, %bb.ba ], [ %i.ck, %bb.ar ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #23
  br label %bb.bb

bb.bb:                                            ; preds = %.body, %bb.az
  %.pn46 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.fr, %bb.az ] ; 2 uses
  %i.ft = load ptr, ptr %19, align 8, !tbaa !23   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.bw
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.ft) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.ay
  %.pn46.pn = phi { ptr, i32 } [ %i.fq, %bb.ay ], [ %.pn46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn46, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit140

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit134

bb.bd:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.av
end_hunk_2
begin_hunk_3_@_ZNK6duckdb10unique_ptrINS_13CallStatementESt14default_deleteIS1_ELb1EEptEv:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13CallStatementESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer19TransformCheckpointERN17duckdb_libpgquery16PGCheckPointStmtE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.35") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %4 = alloca %"class.duckdb::vector.62", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.duckdb::unique_ptr.425", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::unique_ptr.435", align 8 ; 12 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !478, !range !204, !noundef !205
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.d, ptr @.str.13, ptr @.str.14
  store ptr %i.e, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.f = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13CallStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %bb.c unwind label %bb.b, !noalias !480

bb.b:                                             ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #26, !noalias !480
  br label %.body

bb.c:                                             ; preds = %.noexc
  store ptr %i.f, ptr %5, align 8, !tbaa !470, !alias.scope !480
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRPKcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.435") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18FunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.e unwind label %bb.r       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef %i.k, ptr noundef nonnull @.str.15, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.r ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.e
  %i.m = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18FunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.f unwind label %bb.r       ; 2 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull @.str.16, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17 unwind label %bb.r ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !483
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.v, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17
  %i.t = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18FunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.h unwind label %bb.r       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !483
  invoke void @_ZN6duckdb5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.v)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.w = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc18 unwind label %bb.t   ; 6 uses

.noexc18:                                         ; preds = %bb.i
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %7) #23, !noalias !484
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.w, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.j, !noalias !484

bb.j:                                             ; preds = %.noexc18
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !484
  call void @_ZdlPv(ptr noundef nonnull %i.w) #26, !noalias !484
  br label %.body19

bb.k:                                             ; preds = %.noexc18
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 168 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !149
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = ptrtoint ptr %i.w to i64
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !152 ; 10 uses
  %i.af = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.n, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc21 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit29

.noexc21:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #25
          to label %.noexc22 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit29 ; 10 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %i.ar = ptrtoint ptr %i.w to i64
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc22
  %i.as = sub i64 %i.af, %i.ag
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aw = add i64 %i.af, -8
  %i.ax = sub i64 %i.aw, %i.ag
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.az
  %scevgep68 = getelementptr i8, ptr %i.ae, i64 %i.az
  %bound0 = icmp ult ptr %i.ap, %scevgep68
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bd ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.ae, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.be = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep69, align 8, !tbaa !150, !alias.scope !492, !noalias !487
  %wide.load70 = load <2 x i64>, ptr %i.be, align 8, !tbaa !150, !alias.scope !492, !noalias !487
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !495, !noalias !492
  store <2 x i64> %wide.load70, ptr %i.bf, align 8, !tbaa !150, !alias.scope !495, !noalias !492
  %i.bg = getelementptr i8, ptr %next.gep69, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep69, align 8, !tbaa !150, !alias.scope !492, !noalias !487
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !150, !alias.scope !492, !noalias !487
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader72

.lr.ph.i.i.i.i.i.i.i.preheader72:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader72, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader72 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader72 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !490, !noalias !487
  store i64 %i.bi, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !487, !noalias !490
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !490, !noalias !487
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !498

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc22
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.noexc22 ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !152
  store ptr %i.bl, ptr %i.y, align 8, !tbaa !148
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bm, ptr %i.aa, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.l
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit42

bb.r:                                             ; preds = %bb.f, %bb.e, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit39

bb.s:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body19

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit29: ; preds = %bb.n, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(56) %i.w) #23, !inline_history !165
  br label %.body19

.body19:                                          ; preds = %bb.t, %bb.j, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit29
  %.pn = phi { ptr, i32 } [ %i.bs, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit29 ], [ %i.br, %bb.t ], [ %i.x, %bb.j ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.body19, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body19 ], [ %i.bq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit39

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17
  %i.bw = load ptr, ptr %6, align 8, !tbaa !499   ; 4 uses
  store ptr null, ptr %6, align 8, !tbaa !499
  %i.bx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13CallStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 120 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !150 ; 3 uses
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !150
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit32, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.w
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(56) %i.bz) #23, !inline_history !275
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.w
  %i.cd = load ptr, ptr %5, align 8, !tbaa !470
  store ptr null, ptr %5, align 8, !tbaa !470
  store ptr %i.cd, ptr %0, align 8, !tbaa !256
  %i.ce = load ptr, ptr %6, align 8, !tbaa !499   ; 3 uses
  %.not.i33 = icmp eq ptr %i.ce, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt10unique_ptrIN6duckdb13CallStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(209) %i.ce) #23, !inline_history !501
  %.pr = load ptr, ptr %5, align 8, !tbaa !470    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i34 = icmp eq ptr %.pr, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN6duckdb13CallStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13CallStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13CallStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ci = load ptr, ptr %.pr, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %.pr) #23, !inline_history !477
  br label %_ZNSt10unique_ptrIN6duckdb13CallStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13CallStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13CallStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cl = load ptr, ptr %4, align 8, !tbaa !152   ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !148 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb13CallStatementESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.cl, %_ZNSt10unique_ptrIN6duckdb13CallStatementESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.co = load ptr, ptr %.05.i.i.i, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i35, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i36

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(56) %i.co) #23, !inline_history !307
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

end_hunk_3
begin_hunk_4_@_ZN6duckdb11Transformer21TransformCopyDatabaseERN17duckdb_libpgquery18PGCopyDatabaseStmtE:bb.a
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNSt10unique_ptrIN6duckdb21CopyDatabaseStatementESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit
  %i.g = icmp eq ptr %i.c, @.str.33
  br i1 %i.g, label %_ZNSt10unique_ptrIN6duckdb21CopyDatabaseStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit28

_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit28:      ; preds = %bb.c
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(5) @.str.33) #27
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNSt10unique_ptrIN6duckdb21CopyDatabaseStatementESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit28
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ao unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2478 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2477 = phi { ptr, i32 } [ %.pn2478, %bb.h ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb21CopyDatabaseStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit, %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit28
  %storemerge = phi i32 [ 0, %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit ], [ 1, %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit28 ], [ 0, %bb.b ], [ 1, %bb.c ]
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !726
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN6duckdb9make_uniqINS_21CopyDatabaseStatementEJRPKcS4_RNS_16CopyDatabaseTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.616") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.r = load ptr, ptr %7, align 8, !tbaa !728
  store ptr %i.r, ptr %0, align 8, !tbaa !256
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.an

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.s = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25, !noalias !730 ; 3 uses
  invoke void @_ZN6duckdb15PragmaStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %_ZN6duckdb9make_uniqINS_15PragmaStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.k, !noalias !730

common.resume:                                    ; preds = %bb.i, %_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit65, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.k ], [ %.pn2477, %bb.i ], [ %.pn20.pn.pn, %_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit65 ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #26, !noalias !730
  br label %common.resume

_ZN6duckdb9make_uniqINS_15PragmaStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.j
  store ptr %i.s, ptr %8, align 8, !tbaa !733, !alias.scope !730
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15PragmaStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.l unwind label %bb.af

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_15PragmaStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10PragmaInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.m unwind label %bb.af      ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef 0, i64 noundef %i.z, ptr noundef nonnull @.str.35, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.af ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.m
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15PragmaStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.n unwind label %bb.af

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10PragmaInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.o unwind label %bb.af      ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !735
  invoke void @_ZN6duckdb5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef %i.ag)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ah = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc unwind label %bb.ah    ; 6 uses

.noexc:                                           ; preds = %bb.p
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %9) #23, !noalias !736
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ah, ptr noundef nonnull %4)
          to label %bb.r unwind label %bb.q, !noalias !736

bb.q:                                             ; preds = %.noexc
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23, !noalias !736
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #26, !noalias !736
  br label %.body

bb.r:                                             ; preds = %.noexc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23, !noalias !736
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !148 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !149
  %.not.i29 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i29, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !152 ; 10 uses
  %i.ap = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.u, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc30 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit59

.noexc30:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #25
          to label %.noexc31 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit59 ; 10 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store ptr %i.ah, ptr %i.ba, align 8, !tbaa !254
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc31
  %i.bb = sub i64 %i.ap, %i.aq
  %i.bc = add i64 %i.bb, -8                       ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader121, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.bf = add i64 %i.ap, -8
  %i.bg = sub i64 %i.bf, %i.aq
  %i.bh = and i64 %i.bg, -8
  %i.bi = add i64 %i.bh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bi
  %scevgep94 = getelementptr i8, ptr %i.ao, i64 %i.bi
  %bound0 = icmp ult ptr %i.az, %scevgep94
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.az, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ao, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bm ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.ao, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.bn = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !tbaa !150, !alias.scope !744, !noalias !739
  %wide.load96 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !150, !alias.scope !744, !noalias !739
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !747, !noalias !744
  store <2 x i64> %wide.load96, ptr %i.bo, align 8, !tbaa !150, !alias.scope !747, !noalias !744
  %i.bp = getelementptr i8, ptr %next.gep95, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep95, align 8, !tbaa !150, !alias.scope !744, !noalias !739
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !150, !alias.scope !744, !noalias !739
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !749

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.preheader121:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !742, !noalias !739
  store i64 %i.br, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !739, !noalias !742
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !742, !noalias !739
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.ak
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !750

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc31
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.az, %.noexc31 ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.az, ptr %i.ae, align 8, !tbaa !152
  store ptr %i.bu, ptr %i.aj, align 8, !tbaa !148
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bv, ptr %i.al, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.s, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15PragmaStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120
  %i.by = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10PragmaInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.x unwind label %bb.af      ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !751
  invoke void @_ZN6duckdb5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef %i.cb)
          to label %bb.y unwind label %bb.aj

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cc = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc33 unwind label %bb.ak  ; 6 uses

.noexc33:                                         ; preds = %bb.y
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %10) #23, !noalias !752
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.cc, ptr noundef nonnull %3)
          to label %bb.aa unwind label %bb.z, !noalias !752

bb.z:                                             ; preds = %.noexc33
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !752
  call void @_ZdlPv(ptr noundef nonnull %i.cc) #26, !noalias !752
  br label %.body34

bb.aa:                                            ; preds = %.noexc33
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !148 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !149
  %.not.i37 = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !254
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !152 ; 10 uses
  %i.ck = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.ad, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i38

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc50 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit62

.noexc50:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i38: ; preds = %bb.ac
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i39 = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i39, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i.i40 = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i.i40)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #25
          to label %.noexc51 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit62 ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i38
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm
  store ptr %i.cc, ptr %i.cv, align 8, !tbaa !254
  %.not10.i.i.i.i.i.i41 = icmp eq ptr %i.cj, %i.cf
  br i1 %.not10.i.i.i.i.i.i41, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i42.preheader:                   ; preds = %.noexc51
  %i.cw = sub i64 %i.ck, %i.cl
  %i.cx = add i64 %i.cw, -8                       ; 2 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.cx, 152
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.i.i42.preheader120, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.lr.ph.i.i.i.i.i.i42.preheader
  %i.da = add i64 %i.ck, -8
  %i.db = sub i64 %i.da, %i.cl
  %i.dc = and i64 %i.db, -8
  %i.dd = add i64 %i.dc, 8                        ; 2 uses
  %scevgep99 = getelementptr i8, ptr %i.cu, i64 %i.dd
  %scevgep100 = getelementptr i8, ptr %i.cj, i64 %i.dd
  %bound0101 = icmp ult ptr %i.cu, %scevgep100
  %bound1102 = icmp ult ptr %i.cj, %scevgep99
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph.i.i.i.i.i.i42.preheader120, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %n.vec108 = and i64 %i.cz, 4611686018427387900  ; 3 uses
  %i.de = shl i64 %n.vec108, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cj, i64 %i.de
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.dh = shl i64 %index110, 3                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.cu, i64 %i.dh ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.cj, i64 %i.dh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.di = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113 = load <2 x i64>, ptr %next.gep112, align 8, !tbaa !150, !alias.scope !760, !noalias !755
  %wide.load114 = load <2 x i64>, ptr %i.di, align 8, !tbaa !150, !alias.scope !760, !noalias !755
  %i.dj = getelementptr i8, ptr %next.gep111, i64 16
  store <2 x i64> %wide.load113, ptr %next.gep111, align 8, !tbaa !150, !alias.scope !763, !noalias !760
  store <2 x i64> %wide.load114, ptr %i.dj, align 8, !tbaa !150, !alias.scope !763, !noalias !760
  %i.dk = getelementptr i8, ptr %next.gep112, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep112, align 8, !tbaa !150, !alias.scope !760, !noalias !755
  store <2 x ptr> splat (ptr null), ptr %i.dk, align 8, !tbaa !150, !alias.scope !760, !noalias !755
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.dl, label %middle.block116, label %vector.body109, !llvm.loop !765

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.cz, %n.vec108
  br i1 %cmp.n117, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42.preheader120

.lr.ph.i.i.i.i.i.i42.preheader120:                ; preds = %vector.memcheck98, %.lr.ph.i.i.i.i.i.i42.preheader, %middle.block116
  %.012.i.i.i.i.i.i43.ph = phi ptr [ %i.cu, %vector.memcheck98 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i42.preheader ], [ %i.df, %middle.block116 ]
  %.0911.i.i.i.i.i.i44.ph = phi ptr [ %i.cj, %vector.memcheck98 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i42.preheader ], [ %i.dg, %middle.block116 ]
  br label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %.lr.ph.i.i.i.i.i.i42.preheader120, %.lr.ph.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i43 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i42 ], [ %.012.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i42.preheader120 ] ; 2 uses
  %.0911.i.i.i.i.i.i44 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i42.preheader120 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.dm = load i64, ptr %.0911.i.i.i.i.i.i44, align 8, !tbaa !150, !alias.scope !758, !noalias !755
  store i64 %i.dm, ptr %.012.i.i.i.i.i.i43, align 8, !tbaa !150, !alias.scope !755, !noalias !758
  store ptr null, ptr %.0911.i.i.i.i.i.i44, align 8, !tbaa !150, !alias.scope !758, !noalias !755
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i44, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.dn, %i.cf
  br i1 %.not.i.i.i.i.i.i45, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !766

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i42, %middle.block116, %.noexc51
  %.0.lcssa.i.i.i.i.i.i47 = phi ptr [ %i.cu, %.noexc51 ], [ %i.df, %middle.block116 ], [ %i.do, %.lr.ph.i.i.i.i.i.i42 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i47, i64 8
  %.not.i23.i.i48 = icmp eq ptr %i.cj, null
  br i1 %.not.i23.i.i48, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i49, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i46
  call void @_ZdlPv(ptr noundef nonnull %i.cj) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i49

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i49: ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i46
  store ptr %i.cu, ptr %i.bz, align 8, !tbaa !152
  store ptr %i.dp, ptr %i.ce, align 8, !tbaa !148
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.dq, ptr %i.cg, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i49, %bb.ab
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.dr = load ptr, ptr %8, align 8, !tbaa !733
  store ptr %i.dr, ptr %0, align 8, !tbaa !256
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.an

bb.af:                                            ; preds = %bb.m, %bb.w, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.l, %_ZN6duckdb9make_uniqINS_15PragmaStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.p
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit59: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(120) %i.ah) #23, !inline_history !372
  br label %.body

.body:                                            ; preds = %bb.ah, %bb.q, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit59
  %.pn = phi { ptr, i32 } [ %i.dv, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit59 ], [ %i.du, %bb.ah ], [ %i.ai, %bb.q ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #23
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.dt, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.am

bb.aj:                                            ; preds = %bb.x
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.y
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit62: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i38, %bb.ad
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(120) %i.cc) #23, !inline_history !372
  br label %.body34

.body34:                                          ; preds = %bb.ak, %bb.z, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit62
  %.pn20 = phi { ptr, i32 } [ %i.eb, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit62 ], [ %i.ea, %bb.ak ], [ %i.cd, %bb.z ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #23
  br label %bb.al

bb.al:                                            ; preds = %.body34, %bb.aj
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %.body34 ], [ %i.dz, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai, %bb.af
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.al ], [ %i.ds, %bb.af ], [ %.pn.pn, %bb.ai ]
  %i.ef = load ptr, ptr %8, align 8, !tbaa !733   ; 3 uses
  %.not.i63 = icmp eq ptr %i.ef, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit65, label %_ZNKSt14default_deleteIN6duckdb15PragmaStatementEEclEPS1_.exit.i64

_ZNKSt14default_deleteIN6duckdb15PragmaStatementEEclEPS1_.exit.i64: ; preds = %bb.am
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(128) %i.ef) #23, !inline_history !767
  br label %_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit65

_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit65: ; preds = %bb.am, %_ZNKSt14default_deleteIN6duckdb15PragmaStatementEEclEPS1_.exit.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.an:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15PragmaStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb21CopyDatabaseStatementESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.ao:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_21CopyDatabaseStatementEJRPKcS4_RNS_16CopyDatabaseTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.616") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #25 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !19
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.177) #24
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
end_hunk_4
begin_hunk_5_@_ZN6duckdb11Transformer22TransformCreateTableAsERN17duckdb_libpgquery19PGCreateTableAsStmtE:bb.a
  %i.cc = load <2 x ptr>, ptr %19, align 16, !tbaa !387
  store <2 x ptr> %i.cc, ptr %i.bw, align 8, !tbaa !387
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !149
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !149
  %.not4.i.i.i.i.i.i106 = icmp eq ptr %i.bx, %i.bz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i106, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i113, label %.lr.ph.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i107:                            ; preds = %bb.ao, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i111
  %.05.i.i.i.i.i.i108 = phi ptr [ %i.cj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i111 ], [ %i.bx, %bb.ao ] ; 2 uses
  %i.cf = load ptr, ptr %.05.i.i.i.i.i.i108, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i.i.i.i.i.i109 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i109, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i111, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i110

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i110: ; preds = %.lr.ph.i.i.i.i.i.i107
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(56) %i.cf) #23, !inline_history !788
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i111

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i111: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i110, %.lr.ph.i.i.i.i.i.i107
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i108, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i112 = icmp eq ptr %i.cj, %i.bz
  br i1 %.not.i.i.i.i.i.i112, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i113, label %.lr.ph.i.i.i.i.i.i107, !llvm.loop !308

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i113: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i111, %bb.ao
  %.not.i.i1.i.i.i.i114 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i.i.i.i114, label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit115, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i113
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #26
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit115

_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit115: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i113, %bb.ap
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !783 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !790
  %.not63 = icmp eq ptr %i.cm, null
  br i1 %.not63, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit115
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ar unwind label %bb.am

bb.ar:                                            ; preds = %bb.aq
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 544
  %i.cp = load ptr, ptr %i.ag, align 8, !tbaa !783
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !790
  invoke void @_ZN6duckdb11Transformer21TransformTableOptionsERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS9_ELb1EEENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SC_EEENS_12optional_ptrIN17duckdb_libpgquery6PGListELb1EEEb(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr %i.cr, i1 noundef zeroext false)
          to label %._crit_edge319 unwind label %bb.am

._crit_edge319:                                   ; preds = %bb.ar
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !783
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge319, %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit115
  %i.cs = phi ptr [ %.pre, %._crit_edge319 ], [ %i.ck, %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit115 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !791, !range !204, !noundef !205
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.at, label %bb.cf

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.cw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.au unwind label %bb.bt     ; 4 uses

bb.au:                                            ; preds = %bb.at
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 1, ptr %i.cx, align 8, !tbaa !795, !noalias !792
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb13LimitModifierE, i64 16), ptr %i.cw, align 8, !tbaa !33, !noalias !792
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false), !noalias !792
  store ptr %i.cw, ptr %20, align 8, !tbaa !798, !alias.scope !792
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %21, i64 noundef 0)
          to label %bb.av unwind label %bb.bu

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cz = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc117 unwind label %bb.bv ; 5 uses

.noexc117:                                        ; preds = %bb.av
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %21) #23, !noalias !800
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.cz, ptr noundef nonnull %6)
          to label %bb.ax unwind label %bb.aw, !noalias !800

bb.aw:                                            ; preds = %.noexc117
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #23, !noalias !800
  call void @_ZdlPv(ptr noundef nonnull %i.cz) #26, !noalias !800
  br label %.body118

bb.ax:                                            ; preds = %.noexc117
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #23, !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.db = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ay unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit168

bb.ay:                                            ; preds = %bb.ax
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !150 ; 3 uses
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !150
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !33
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(56) %i.dd) #23, !inline_history !275
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ay, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.dh = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #25
          to label %.noexc121 unwind label %bb.bx ; 3 uses

.noexc121:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.dh)
          to label %bb.ba unwind label %bb.az, !noalias !803

bb.az:                                            ; preds = %.noexc121
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dh) #26, !noalias !803
  br label %.body122

bb.ba:                                            ; preds = %.noexc121
  store ptr %i.dh, ptr %22, align 8, !tbaa !806, !alias.scope !803
  %i.dj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bb unwind label %bb.by     ; 3 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %20, align 8, !tbaa !798  ; 5 uses
  store ptr null, ptr %20, align 8, !tbaa !798
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !808 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !811
  %.not.i.i = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dq = ptrtoint ptr %i.dl to i64
  store i64 %i.dq, ptr %i.dn, align 8, !tbaa !812
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dr, ptr %i.dm, align 8, !tbaa !808
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ds = load ptr, ptr %i.dk, align 8, !tbaa !814 ; 10 uses
  %i.dt = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.du = ptrtoint ptr %i.ds to i64               ; 3 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 3 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.be, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc124 unwind label %bb.bz

.noexc124:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bd
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #25
          to label %.noexc125 unwind label %bb.bz ; 10 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dv
  %i.ef = ptrtoint ptr %i.dl to i64
  store i64 %i.ef, ptr %i.ee, align 8, !tbaa !812
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ds, %i.dn
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc125
  %i.eg = sub i64 %i.dt, %i.du
  %i.eh = add i64 %i.eg, -8                       ; 2 uses
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eh, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader429, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ek = add i64 %i.dt, -8
  %i.el = sub i64 %i.ek, %i.du
  %i.em = and i64 %i.el, -8
  %i.en = add i64 %i.em, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ed, i64 %i.en
  %scevgep399 = getelementptr i8, ptr %i.ds, i64 %i.en
  %bound0 = icmp ult ptr %i.ed, %scevgep399
  %bound1 = icmp ult ptr %i.ds, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader429, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ej, 4611686018427387900     ; 3 uses
  %i.eo = shl i64 %n.vec, 3                       ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ed, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ds, i64 %i.eo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.er = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ed, i64 %i.er ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.ds, i64 %i.er ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.es = getelementptr i8, ptr %next.gep400, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep400, align 8, !tbaa !812, !alias.scope !820, !noalias !815
  %wide.load401 = load <2 x i64>, ptr %i.es, align 8, !tbaa !812, !alias.scope !820, !noalias !815
  %i.et = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !812, !alias.scope !823, !noalias !820
  store <2 x i64> %wide.load401, ptr %i.et, align 8, !tbaa !812, !alias.scope !823, !noalias !820
  %i.eu = getelementptr i8, ptr %next.gep400, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep400, align 8, !tbaa !812, !alias.scope !820, !noalias !815
  store <2 x ptr> splat (ptr null), ptr %i.eu, align 8, !tbaa !812, !alias.scope !820, !noalias !815
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader429

.lr.ph.i.i.i.i.i.i.i.preheader429:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ed, %vector.memcheck ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ep, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ds, %vector.memcheck ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader429, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader429 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader429 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.ew = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !818, !noalias !815
  store i64 %i.ew, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !815, !noalias !818
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !818, !noalias !815
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.dn
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !826

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc125
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ed, %.noexc125 ], [ %i.ep, %middle.block ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ed, ptr %i.dk, align 8, !tbaa !814
  store ptr %i.ez, ptr %i.dm, align 8, !tbaa !808
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb
  store ptr %i.fa, ptr %i.do, align 8, !tbaa !811
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.fb = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #25
          to label %.noexc128 unwind label %bb.ca ; 5 uses

.noexc128:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit
  %i.fc = load i64, ptr %17, align 8, !tbaa !827, !noalias !829
  store i64 %i.fc, ptr %4, align 8, !tbaa !827, !noalias !829
  store ptr null, ptr %17, align 8, !tbaa !827, !noalias !829
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.fd, ptr %5, align 8, !tbaa !19, !noalias !829
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.fe, align 8, !tbaa !25, !noalias !829
  store i8 0, ptr %i.fd, align 8, !tbaa !10, !noalias !829
  invoke void @_ZN6duckdb11SubqueryRefC1ENS_10unique_ptrINS_15SelectStatementESt14default_deleteIS2_ELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.fb, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.bg unwind label %bb.bh, !noalias !829

bb.bg:                                            ; preds = %.noexc128
  %i.ff = load ptr, ptr %5, align 8, !tbaa !23, !noalias !829 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.fd
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.ff) #26, !noalias !829
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fh = load ptr, ptr %4, align 8, !tbaa !827, !noalias !829 ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i127, label %bb.bi, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !33, !noalias !829
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !829
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(128) %i.fh) #23, !noalias !829, !inline_history !832
  br label %bb.bi

bb.bh:                                            ; preds = %.noexc128
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %5, align 8, !tbaa !23, !noalias !829 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fd
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef %i.fm) #26, !noalias !829
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.fo = load ptr, ptr %4, align 8, !tbaa !827, !noalias !829 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.fo, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !33, !noalias !829
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !829
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fo) #23, !noalias !829, !inline_history !832
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i7.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  call void @_ZdlPv(ptr noundef nonnull %i.fb) #26, !noalias !829
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit171

bb.bi:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bj unwind label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit177

bb.bj:                                            ; preds = %bb.bi
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 144 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !142 ; 3 uses
  store ptr %i.fb, ptr %i.ft, align 8, !tbaa !142
  %.not.i.i.i.i.i131 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i131, label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.bj
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !33
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.fu) #23, !inline_history !143
  br label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bj, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i
  %i.fy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bk unwind label %bb.by     ; 3 uses

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.fz = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25
          to label %.noexc137 unwind label %bb.cb ; 6 uses

.noexc137:                                        ; preds = %bb.bk
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ga, ptr %3, align 8, !tbaa !19, !noalias !833
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.gb, align 8, !tbaa !25, !noalias !833
  store i8 0, ptr %i.ga, align 8, !tbaa !10, !noalias !833
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.fz, ptr noundef nonnull %3)
          to label %bb.bl unwind label %bb.bm, !noalias !833

bb.bl:                                            ; preds = %.noexc137
  %i.gc = load ptr, ptr %3, align 8, !tbaa !23, !noalias !833 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ga
  br i1 %i.gd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.gc) #26, !noalias !833
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136

bb.bm:                                            ; preds = %.noexc137
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %3, align 8, !tbaa !23, !noalias !833 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ga
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.gf) #26, !noalias !833
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.fz) #26, !noalias !833
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 120 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 128 ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !148 ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 136 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !149
  %.not.i.i140 = icmp eq ptr %i.gj, %i.gl
  br i1 %.not.i.i140, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136
  %i.gm = ptrtoint ptr %i.fz to i64
  store i64 %i.gm, ptr %i.gj, align 8, !tbaa !150
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %i.gn, ptr %i.gi, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136
  %i.go = load ptr, ptr %i.gh, align 8, !tbaa !152 ; 10 uses
  %i.gp = ptrtoint ptr %i.gj to i64               ; 3 uses
  %i.gq = ptrtoint ptr %i.go to i64               ; 3 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 3 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.bp, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc150 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit183

.noexc150:                                        ; preds = %bb.bp
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bo
  %i.gt = ashr exact i64 %i.gr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i141 = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i141, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 1152921504606846975)
  %i.gx = select i1 %i.gv, i64 1152921504606846975, i64 %i.gw ; 3 uses
  %.not.i.i.i.i142 = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i142)
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #25
          to label %.noexc151 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit183 ; 10 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr
  %i.hb = ptrtoint ptr %i.fz to i64
  store i64 %i.hb, ptr %i.ha, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i143 = icmp eq ptr %i.go, %i.gj
  br i1 %.not10.i.i.i.i.i.i.i143, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i144.preheader

.lr.ph.i.i.i.i.i.i.i144.preheader:                ; preds = %.noexc151
  %i.hc = sub i64 %i.gp, %i.gq
  %i.hd = add i64 %i.hc, -8                       ; 2 uses
  %i.he = lshr i64 %i.hd, 3
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.hd, 152
  br i1 %min.iters.check410, label %.lr.ph.i.i.i.i.i.i.i144.preheader427, label %vector.memcheck403

vector.memcheck403:                               ; preds = %.lr.ph.i.i.i.i.i.i.i144.preheader
  %i.hg = add i64 %i.gp, -8
  %i.hh = sub i64 %i.hg, %i.gq
  %i.hi = and i64 %i.hh, -8
  %i.hj = add i64 %i.hi, 8                        ; 2 uses
  %scevgep404 = getelementptr i8, ptr %i.gz, i64 %i.hj
  %scevgep405 = getelementptr i8, ptr %i.go, i64 %i.hj
  %bound0406 = icmp ult ptr %i.gz, %scevgep405
  %bound1407 = icmp ult ptr %i.go, %scevgep404
  %found.conflict408 = and i1 %bound0406, %bound1407
  br i1 %found.conflict408, label %.lr.ph.i.i.i.i.i.i.i144.preheader427, label %vector.ph411

vector.ph411:                                     ; preds = %vector.memcheck403
  %n.vec413 = and i64 %i.hf, 4611686018427387900  ; 3 uses
  %i.hk = shl i64 %n.vec413, 3                    ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gz, i64 %i.hk  ; 2 uses
  %i.hm = getelementptr i8, ptr %i.go, i64 %i.hk
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph411
  %index415 = phi i64 [ 0, %vector.ph411 ], [ %index.next420, %vector.body414 ] ; 2 uses
  %i.hn = shl i64 %index415, 3                    ; 2 uses
  %next.gep416 = getelementptr i8, ptr %i.gz, i64 %i.hn ; 2 uses
  %next.gep417 = getelementptr i8, ptr %i.go, i64 %i.hn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.ho = getelementptr i8, ptr %next.gep417, i64 16
  %wide.load418 = load <2 x i64>, ptr %next.gep417, align 8, !tbaa !150, !alias.scope !841, !noalias !836
  %wide.load419 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !150, !alias.scope !841, !noalias !836
  %i.hp = getelementptr i8, ptr %next.gep416, i64 16
  store <2 x i64> %wide.load418, ptr %next.gep416, align 8, !tbaa !150, !alias.scope !844, !noalias !841
  store <2 x i64> %wide.load419, ptr %i.hp, align 8, !tbaa !150, !alias.scope !844, !noalias !841
  %i.hq = getelementptr i8, ptr %next.gep417, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep417, align 8, !tbaa !150, !alias.scope !841, !noalias !836
  store <2 x ptr> splat (ptr null), ptr %i.hq, align 8, !tbaa !150, !alias.scope !841, !noalias !836
  %index.next420 = add nuw i64 %index415, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next420, %n.vec413
  br i1 %i.hr, label %middle.block421, label %vector.body414, !llvm.loop !846

middle.block421:                                  ; preds = %vector.body414
  %cmp.n422 = icmp eq i64 %i.hf, %n.vec413
  br i1 %cmp.n422, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i144.preheader427

.lr.ph.i.i.i.i.i.i.i144.preheader427:             ; preds = %vector.memcheck403, %.lr.ph.i.i.i.i.i.i.i144.preheader, %middle.block421
  %.012.i.i.i.i.i.i.i145.ph = phi ptr [ %i.gz, %vector.memcheck403 ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i144.preheader ], [ %i.hl, %middle.block421 ]
  %.0911.i.i.i.i.i.i.i146.ph = phi ptr [ %i.go, %vector.memcheck403 ], [ %i.go, %.lr.ph.i.i.i.i.i.i.i144.preheader ], [ %i.hm, %middle.block421 ]
  br label %.lr.ph.i.i.i.i.i.i.i144

.lr.ph.i.i.i.i.i.i.i144:                          ; preds = %.lr.ph.i.i.i.i.i.i.i144.preheader427, %.lr.ph.i.i.i.i.i.i.i144
  %.012.i.i.i.i.i.i.i145 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i.i144 ], [ %.012.i.i.i.i.i.i.i145.ph, %.lr.ph.i.i.i.i.i.i.i144.preheader427 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i146 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i.i.i144 ], [ %.0911.i.i.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i.i.i144.preheader427 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.hs = load i64, ptr %.0911.i.i.i.i.i.i.i146, align 8, !tbaa !150, !alias.scope !839, !noalias !836
  store i64 %i.hs, ptr %.012.i.i.i.i.i.i.i145, align 8, !tbaa !150, !alias.scope !836, !noalias !839
  store ptr null, ptr %.0911.i.i.i.i.i.i.i146, align 8, !tbaa !150, !alias.scope !839, !noalias !836
  %i.ht = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i146, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i145, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i147 = icmp eq ptr %i.ht, %i.gj
  br i1 %.not.i.i.i.i.i.i.i147, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i144, !llvm.loop !847

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i144, %middle.block421, %.noexc151
  %.0.lcssa.i.i.i.i.i.i.i148 = phi ptr [ %i.gz, %.noexc151 ], [ %i.hl, %middle.block421 ], [ %i.hu, %.lr.ph.i.i.i.i.i.i.i144 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i148, i64 8
  %.not.i23.i.i.i149 = icmp eq ptr %i.go, null
  br i1 %.not.i23.i.i.i149, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.go) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.gz, ptr %i.gh, align 8, !tbaa !152
  store ptr %i.hv, ptr %i.gi, align 8, !tbaa !148
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hw, ptr %i.gk, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  %i.hx = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
          to label %bb.br unwind label %bb.cc     ; 14 uses

bb.br:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i8 1, ptr %i.hy, align 8, !tbaa !851, !noalias !848
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i8 0, i64 16, i1 false), !noalias !848
  store ptr %i.ib, ptr %i.ia, align 8, !tbaa !569, !noalias !848
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  store i64 1, ptr %i.ic, align 8, !tbaa !568, !noalias !848
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false), !noalias !848
  store float 1.000000e+00, ptr %i.ie, align 8, !tbaa !321, !noalias !848
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false), !noalias !848
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 88
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 104 ; 2 uses
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !19, !noalias !848
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  store i64 0, ptr %i.ii, align 8, !tbaa !25, !noalias !848
  store i8 0, ptr %i.ih, align 8, !tbaa !10, !noalias !848
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %i.hx, align 8, !tbaa !33, !noalias !848
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 120
  store ptr null, ptr %i.ij, align 8, !tbaa !852, !noalias !848
  store ptr %i.hx, ptr %23, align 8, !tbaa !827, !alias.scope !848
  %i.ik = load ptr, ptr %22, align 8, !tbaa !806  ; 4 uses
  store ptr null, ptr %22, align 8, !tbaa !806
  %i.il = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bs unwind label %bb.cd

bb.bs:                                            ; preds = %bb.br
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 120 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !525 ; 3 uses
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !525
  %.not.i.i.i.i.i157 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i157, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.bs
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !33
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.in) #23, !inline_history !719
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.bs
  %i.ir = load ptr, ptr %23, align 8, !tbaa !827
  store ptr null, ptr %23, align 8, !tbaa !827
  %i.is = load ptr, ptr %17, align 8, !tbaa !827  ; 3 uses
  store ptr %i.ir, ptr %17, align 8, !tbaa !827
  %.not.i.i.i.i.i159 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i159, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(128) %i.is) #23, !inline_history !853
  %.pr = load ptr, ptr %23, align 8, !tbaa !827   ; 3 uses
  %.not.i160 = icmp eq ptr %.pr, null
  br i1 %.not.i160, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.iw = load ptr, ptr %.pr, align 8, !tbaa !33
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(128) %.pr) #23, !inline_history !854
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.iz = load ptr, ptr %22, align 8, !tbaa !806  ; 3 uses
  %.not.i161 = icmp eq ptr %i.iz, null
  br i1 %.not.i161, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !33
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(240) %i.iz) #23, !inline_history !855
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.jd = load ptr, ptr %20, align 8, !tbaa !798  ; 3 uses
  %.not.i162 = icmp eq ptr %i.jd, null
  br i1 %.not.i162, label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !33
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(32) %i.jd) #23, !inline_history !856
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %.pre320 = load ptr, ptr %i.ag, align 8, !tbaa !783
  br label %bb.cf

bb.bt:                                            ; preds = %bb.at
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit195

bb.bu:                                            ; preds = %bb.au
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.av
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body118
end_hunk_5
begin_hunk_6_@_ZNK6duckdb10unique_ptrINS_8DropInfoESt14default_deleteIS1_ELb1EEptEv:bb.a
bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_8DropInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_19ExtraDropSecretInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1204   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_19ExtraDropSecretInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_19ExtraDropSecretInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer15TransformImportERN17duckdb_libpgquery12PGImportStmtE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.625") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25, !noalias !1222 ; 3 uses
  invoke void @_ZN6duckdb15PragmaStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %_ZN6duckdb9make_uniqINS_15PragmaStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1222

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb15PragmaStatementEEclEPS1_.exit.i, %bb.r, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn.pn.pn, %bb.r ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb15PragmaStatementEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !1222
  br label %common.resume

_ZN6duckdb9make_uniqINS_15PragmaStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !733, !alias.scope !1222
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15PragmaStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_15PragmaStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10PragmaInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.d unwind label %bb.n       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull @.str.87, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.d
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15PragmaStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10PragmaInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.f unwind label %bb.n       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1225
  invoke void @_ZN6duckdb5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.o)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.p = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc unwind label %bb.p     ; 6 uses

.noexc:                                           ; preds = %bb.g
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) #23, !noalias !1227
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.p, ptr noundef nonnull %3)
          to label %bb.i unwind label %bb.h, !noalias !1227

bb.h:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !1227
  call void @_ZdlPv(ptr noundef nonnull %i.p) #26, !noalias !1227
  br label %.body

bb.i:                                             ; preds = %.noexc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !148  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.p, ptr %i.s, align 8, !tbaa !254
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.r, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !152  ; 10 uses
  %i.x = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit14

.noexc9:                                          ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #25
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit14 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store ptr %i.p, ptr %i.ai, align 8, !tbaa !254
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.w, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc10
  %i.aj = sub i64 %i.x, %i.y
  %i.ak = add i64 %i.aj, -8                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.an = add i64 %i.x, -8
  %i.ao = sub i64 %i.an, %i.y
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.aq
  %scevgep22 = getelementptr i8, ptr %i.w, i64 %i.aq
  %bound0 = icmp ult ptr %i.ah, %scevgep22
  %bound1 = icmp ult ptr %i.w, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.w, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.w, i64 %i.au ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.av = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !150, !alias.scope !1235, !noalias !1230
  %wide.load24 = load <2 x i64>, ptr %i.av, align 8, !tbaa !150, !alias.scope !1235, !noalias !1230
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !1238, !noalias !1235
  store <2 x i64> %wide.load24, ptr %i.aw, align 8, !tbaa !150, !alias.scope !1238, !noalias !1235
  %i.ax = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !150, !alias.scope !1235, !noalias !1230
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !150, !alias.scope !1235, !noalias !1230
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.i.preheader26:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader26 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1233, !noalias !1230
  store i64 %i.az, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1230, !noalias !1233
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1233, !noalias !1230
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1241

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc10 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.w) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !152
  store ptr %i.bc, ptr %i.r, align 8, !tbaa !148
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr %i.t, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_18ConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.n:                                             ; preds = %bb.d, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.c, %_ZN6duckdb9make_uniqINS_15PragmaStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit14: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(120) %i.p) #23, !inline_history !372
  br label %.body

.body:                                            ; preds = %bb.p, %bb.h, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit14
  %.pn = phi { ptr, i32 } [ %i.bh, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit14 ], [ %i.bg, %bb.p ], [ %i.q, %bb.h ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.be, %bb.n ] ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !733   ; 3 uses
  %.not.i15 = icmp eq ptr %i.bl, null
  br i1 %.not.i15, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb15PragmaStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15PragmaStatementEEclEPS1_.exit.i: ; preds = %bb.r
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #23, !inline_history !767
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer19TransformValuesListEPN17duckdb_libpgquery6PGListE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.53") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.896", align 8 ; 10 uses
  %4 = alloca %"class.duckdb::optional_ptr.156", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::vector.62", align 16 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #25, !noalias !1242 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 6, ptr %i.b, align 8, !tbaa !113, !noalias !1242
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !19, !noalias !1242
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !25, !noalias !1242
  store i8 0, ptr %i.d, align 8, !tbaa !10, !noalias !1242
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !135, !noalias !1242
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !136, !noalias !1242
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false), !noalias !1242
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb17ExpressionListRefE, i64 16), ptr %i.a, align 8, !tbaa !33, !noalias !1242
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, i8 0, i64 72, i1 false), !noalias !1242
  store ptr %i.a, ptr %3, align 8, !tbaa !1245, !alias.scope !1242
  %.013.in28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.01329 = load ptr, ptr %.013.in28, align 8, !tbaa !7 ; 2 uses
  %.not30 = icmp eq ptr %.01329, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.a
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.t unwind label %bb.u       ; 2 uses

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %.01331 = phi ptr [ %.01329, %.lr.ph ], [ %.013, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.m = load ptr, ptr %.01331, align 8, !tbaa !10
  store ptr %i.m, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %4, align 8, !tbaa !237
  invoke void @_ZN6duckdb11Transformer23TransformExpressionListERN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1247
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1247
end_hunk_6
begin_hunk_7_@_ZN6duckdb11Transformer24TransformMergeIntoActionERN17duckdb_libpgquery13PGMatchActionE:bb.a
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.av, %bb.ac ] ; 3 uses
  %i.bd = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bd) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.ax
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !258

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %bb.ac
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.av) #26
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.ad
  %i.bh = load ptr, ptr %6, align 16, !tbaa !243  ; 3 uses
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bh, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bj) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !258

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 16, !tbaa !243
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  %i.bn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bh, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ag

bb.af:                                            ; preds = %_ZN6duckdb11Transformer22TransformInsertColumnsB5cxx11ERN17duckdb_libpgquery6PGListE.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.af
  %.pn32 = phi { ptr, i32 } [ %i.bo, %bb.af ], [ %i.as, %bb.ab ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bf

bb.ag:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1369 ; 2 uses
  %.not34 = icmp eq ptr %i.bq, null
  br i1 %.not34, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ai unwind label %bb.n

bb.ai:                                            ; preds = %bb.ah
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  invoke void @_ZN6duckdb11Transformer23TransformExpressionListERN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.aj unwind label %bb.n

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !1363
  %i.bv = invoke noundef zeroext i8 @_ZN6duckdb11Transformer20TransformColumnOrderEN17duckdb_libpgquery19PGInsertColumnOrderE(ptr nonnull align 8 poison, i32 noundef %i.bu)
          to label %bb.ak unwind label %bb.n

bb.ak:                                            ; preds = %bb.aj
  %i.bw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.al unwind label %bb.n

bb.al:                                            ; preds = %bb.ak
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !1364
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !1370, !range !204, !noundef !205
  %i.ca = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.am unwind label %bb.n

bb.am:                                            ; preds = %bb.al
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 73
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !1371
  br label %bb.be

bb.an:                                            ; preds = %bb.g
  %i.cc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ao unwind label %bb.n

bb.ao:                                            ; preds = %bb.an
  store i8 3, ptr %i.cc, align 8, !tbaa !1359
  br label %bb.be

bb.ap:                                            ; preds = %bb.g
  %i.cd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aq unwind label %bb.n

bb.aq:                                            ; preds = %bb.ap
  store i8 4, ptr %i.cd, align 8, !tbaa !1359
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1372
  %.not28 = icmp eq ptr %i.cf, null
  br i1 %.not28, label %bb.be, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.as unwind label %bb.n      ; 3 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !1372
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ch)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 56 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !148 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !149
  %.not.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i.i, label %bb.au, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.at
  %i.cn = load i64, ptr %7, align 8, !tbaa !150
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !150
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit52

bb.au:                                            ; preds = %bb.at
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !152 ; 10 uses
  %i.cq = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.av, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #25
          to label %.noexc49 unwind label %bb.ay  ; 10 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  %i.dc = load i64, ptr %7, align 8, !tbaa !150
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !150
  store ptr null, ptr %7, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.ck
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc49
  %i.dd = sub i64 %i.cq, %i.cr
  %i.de = add i64 %i.dd, -8                       ; 2 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader94, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dh = add i64 %i.cq, -8
  %i.di = sub i64 %i.dh, %i.cr
  %i.dj = and i64 %i.di, -8
  %i.dk = add i64 %i.dj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.da, i64 %i.dk
  %scevgep90 = getelementptr i8, ptr %i.cp, i64 %i.dk
  %bound0 = icmp ult ptr %i.da, %scevgep90
  %bound1 = icmp ult ptr %i.cp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader94, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dg, 4611686018427387900     ; 3 uses
  %i.dl = shl i64 %n.vec, 3                       ; 2 uses
  %i.dm = getelementptr i8, ptr %i.da, i64 %i.dl  ; 2 uses
  %i.dn = getelementptr i8, ptr %i.cp, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.da, i64 %i.do ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.cp, i64 %i.do ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.dp = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep91, align 8, !tbaa !150, !alias.scope !1378, !noalias !1373
  %wide.load92 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !150, !alias.scope !1378, !noalias !1373
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !1381, !noalias !1378
  store <2 x i64> %wide.load92, ptr %i.dq, align 8, !tbaa !150, !alias.scope !1381, !noalias !1378
  %i.dr = getelementptr i8, ptr %next.gep91, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep91, align 8, !tbaa !150, !alias.scope !1378, !noalias !1373
  store <2 x ptr> splat (ptr null), ptr %i.dr, align 8, !tbaa !150, !alias.scope !1378, !noalias !1373
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !1383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader94

.lr.ph.i.i.i.i.i.i.i.preheader94:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader94, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader94 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader94 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.dt = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1376, !noalias !1373
  store i64 %i.dt, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1373, !noalias !1376
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1376, !noalias !1373
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.du, %i.ck
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1384

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc49
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.da, %.noexc49 ], [ %i.dm, %middle.block ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.aw
  store ptr %i.da, ptr %i.ci, align 8, !tbaa !152
  store ptr %i.dw, ptr %i.cj, align 8, !tbaa !148
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.dx, ptr %i.cl, align 8, !tbaa !149
  %.pr60 = load ptr, ptr %7, align 8, !tbaa !150  ; 3 uses
  %.not.i50 = icmp eq ptr %.pr60, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit52, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i51

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i51: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dy = load ptr, ptr %.pr60, align 8, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(56) %.pr60) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit52

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit52: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.be

bb.ax:                                            ; preds = %bb.as
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit55

bb.ay:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.av
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %7, align 8, !tbaa !150   ; 3 uses
  %.not.i53 = icmp eq ptr %i.ed, null
  br i1 %.not.i53, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit55, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i54

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i54: ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !33
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(56) %i.ed) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit55

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit55: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i54, %bb.ay, %bb.ax
  %.pn29 = phi { ptr, i32 } [ %i.eb, %bb.ax ], [ %i.ec, %bb.ay ], [ %i.ec, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bf

bb.az:                                            ; preds = %bb.g
  %i.eh = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ba unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_throw(ptr nonnull %i.eh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.bh unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.az
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0 = phi i1 [ false, %bb.bb ], [ true, %bb.ba ] ; 2 uses
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ek = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.ek) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.0, label %bb.bd, label %bb.bf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.0, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3864 = phi { ptr, i32 } [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.eh) #23
  br label %bb.bf

bb.be:                                            ; preds = %bb.t, %bb.v, %bb.am, %bb.ao, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit52, %bb.aq
  ret void

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bd, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit55, %.body, %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit47, %bb.n, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit43
  %.pn38.pn = phi { ptr, i32 } [ %.pn3864, %bb.bd ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %bb.n ], [ %.pn36, %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit47 ], [ %.pn32, %.body ], [ %.pn29, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit55 ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit43 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !1352  ; 2 uses
  %.not.i56 = icmp eq ptr %i.en, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNKSt14default_deleteIN6duckdb15MergeIntoActionEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.en)
  br label %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bf, %bb.bg
  resume { ptr, i32 } %.pn38.pn

bb.bh:                                            ; preds = %bb.bb
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1352   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

end_hunk_7
begin_hunk_8_@_ZNK6duckdb10unique_ptrINS_16CreateSecretInfoESt14default_deleteIS1_ELb1EEptEv:bb.a

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16CreateSecretInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10unique_ptrINS_16CreateSecretInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1583   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16CreateSecretInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16CreateSecretInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer19TransformShowSelectERN17duckdb_libpgquery24PGVariableShowSelectStmtE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.471") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.688", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::unique_ptr.1194", align 8 ; 11 uses
  %6 = alloca %"class.duckdb::unique_ptr.471", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #25, !noalias !1593 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1593

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit47, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn12.pn.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit47 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !1593
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %4, align 8, !tbaa !806, !alias.scope !1593
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.r       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25
          to label %.noexc unwind label %bb.s     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !19, !noalias !1596
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !25, !noalias !1596
  store i8 0, ptr %i.e, align 8, !tbaa !10, !noalias !1596
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e, !noalias !1596

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %3, align 8, !tbaa !23, !noalias !1596 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !1596
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !23, !noalias !1596 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !1596
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !1596
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !148  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !149
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !150
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !152  ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc16 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit35

.noexc16:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #25
          to label %.noexc17 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit35 ; 10 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc17
  %i.ag = sub i64 %i.t, %i.u
  %i.ah = add i64 %i.ag, -8                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ak = add i64 %i.t, -8
  %i.al = sub i64 %i.ak, %i.u
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.an
  %scevgep70 = getelementptr i8, ptr %i.s, i64 %i.an
  %bound0 = icmp ult ptr %i.ad, %scevgep70
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.s, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %i.as = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !150, !alias.scope !1604, !noalias !1599
  %wide.load72 = load <2 x i64>, ptr %i.as, align 8, !tbaa !150, !alias.scope !1604, !noalias !1599
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !1607, !noalias !1604
  store <2 x i64> %wide.load72, ptr %i.at, align 8, !tbaa !150, !alias.scope !1607, !noalias !1604
  %i.au = getelementptr i8, ptr %next.gep71, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep71, align 8, !tbaa !150, !alias.scope !1604, !noalias !1599
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !150, !alias.scope !1604, !noalias !1599
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1609

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader74

.lr.ph.i.i.i.i.i.i.i.preheader74:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader74, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader74 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1602, !noalias !1599
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1599, !noalias !1602
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1602, !noalias !1599
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1610

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc17 ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !152
  store ptr %i.az, ptr %i.m, align 8, !tbaa !148
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.bb = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #25
          to label %.noexc19 unwind label %bb.t   ; 3 uses

.noexc19:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb7ShowRefC1Ev(ptr noundef nonnull align 8 dereferenceable(209) %i.bb)
          to label %bb.k unwind label %bb.j, !noalias !1611

bb.j:                                             ; preds = %.noexc19
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #26, !noalias !1611
  br label %.body20

bb.k:                                             ; preds = %.noexc19
  store ptr %i.bb, ptr %5, align 8, !tbaa !1614, !alias.scope !1611
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1616
  %i.bf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7ShowRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq i32 %i.be, 0
  %i.bg = zext i1 %.not to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 208
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !1618
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1621 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !519, !noalias !1622
  switch i32 %i.bk, label %bb.o [
    i32 277, label %bb.m
    i32 276, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb11Transformer19TransformShowSelectERN17duckdb_libpgquery24PGVariableShowSelectStmtE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.471") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %_ZN6duckdb11Transformer19TransformSelectNodeERN17duckdb_libpgquery6PGNodeEb.exit unwind label %bb.v, !inline_history !524

bb.n:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb11Transformer13TransformShowERN17duckdb_libpgquery18PGVariableShowStmtE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.471") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %_ZN6duckdb11Transformer19TransformSelectNodeERN17duckdb_libpgquery6PGNodeEb.exit unwind label %bb.v, !inline_history !524

bb.o:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb11Transformer27TransformSelectNodeInternalERN17duckdb_libpgquery12PGSelectStmtEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.471") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(168) %i.bj, i1 noundef zeroext true)
          to label %_ZN6duckdb11Transformer19TransformSelectNodeERN17duckdb_libpgquery6PGNodeEb.exit unwind label %bb.v, !inline_history !524

_ZN6duckdb11Transformer19TransformSelectNodeERN17duckdb_libpgquery6PGNodeEb.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.bl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7ShowRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %_ZN6duckdb11Transformer19TransformSelectNodeERN17duckdb_libpgquery6PGNodeEb.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 200 ; 2 uses
  %i.bn = load ptr, ptr %6, align 8, !tbaa !525
  store ptr null, ptr %6, align 8, !tbaa !525
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !525 ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !525
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.p
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.bo) #23, !inline_history !719
  %.pr = load ptr, ptr %6, align 8, !tbaa !525    ; 3 uses
  %.not.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bs = load ptr, ptr %.pr, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr) #23, !inline_history !531
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.p, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bv = load ptr, ptr %5, align 8, !tbaa !1614  ; 4 uses
  store ptr null, ptr %5, align 8, !tbaa !1614
  %i.bw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !142 ; 3 uses
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !142
  %.not.i.i.i.i.i26 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i26, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.q
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.by) #23, !inline_history !143
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i, %bb.q
  %i.cc = load ptr, ptr %4, align 8, !tbaa !806
  store ptr null, ptr %4, align 8, !tbaa !806
  store ptr %i.cc, ptr %0, align 8, !tbaa !852
  %i.cd = load ptr, ptr %5, align 8, !tbaa !1614  ; 3 uses
  %.not.i28 = icmp eq ptr %i.cd, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6duckdb7ShowRefESt14default_deleteIS1_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN6duckdb7ShowRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7ShowRefESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb7ShowRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(209) %i.cd) #23, !inline_history !1625
  %.pr57 = load ptr, ptr %4, align 8, !tbaa !806  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i29 = icmp eq ptr %.pr57, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
end_hunk_8
begin_hunk_9_@_ZN6duckdb11Transformer19TransformShowSelectERN17duckdb_libpgquery24PGVariableShowSelectStmtE:bb.a
  %i.cu = load ptr, ptr %6, align 8, !tbaa !525   ; 3 uses
  %.not.i36 = icmp eq ptr %i.cu, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i37: ; preds = %bb.w
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cu) #23, !inline_history !531
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit38: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i37, %bb.w, %bb.v
  %.pn10 = phi { ptr, i32 } [ %i.cs, %bb.v ], [ %i.ct, %bb.w ], [ %i.ct, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit41

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i39 = icmp eq ptr %i.bv, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit41, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i40

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i40: ; preds = %bb.x
  %i.cz = load ptr, ptr %i.bv, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #23, !inline_history !180
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit41

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit41: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i40, %bb.x, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit38, %bb.u
  %.pn12 = phi { ptr, i32 } [ %i.cr, %bb.u ], [ %.pn10, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit38 ], [ %i.cy, %bb.x ], [ %i.cy, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i40 ] ; 2 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !1614  ; 3 uses
  %.not.i42 = icmp eq ptr %i.dc, null
  br i1 %.not.i42, label %.body20, label %_ZNKSt14default_deleteIN6duckdb7ShowRefEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN6duckdb7ShowRefEEclEPS1_.exit.i43: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit41
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(209) %i.dc) #23, !inline_history !1625
  br label %.body20

.body20:                                          ; preds = %_ZNKSt14default_deleteIN6duckdb7ShowRefEEclEPS1_.exit.i43, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit41, %bb.t, %bb.j
  %.pn12.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.cq, %bb.t ], [ %.pn12, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit41 ], [ %.pn12, %_ZNKSt14default_deleteIN6duckdb7ShowRefEEclEPS1_.exit.i43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.s, %.body20, %bb.r
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %.body20 ], [ %i.ck, %bb.r ], [ %i.cm, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit35 ], [ %i.cl, %bb.s ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.dg = load ptr, ptr %4, align 8, !tbaa !806   ; 3 uses
  %.not.i45 = icmp eq ptr %i.dg, null
  br i1 %.not.i45, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit47, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i46

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i46: ; preds = %.body
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(240) %i.dg) #23, !inline_history !855
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit47

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit47: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer13TransformShowERN17duckdb_libpgquery18PGVariableShowStmtE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.471") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::unique_ptr.688", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::unique_ptr.1194", align 8 ; 21 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"struct.duckdb::QualifiedName", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.duckdb::unique_ptr.688", align 8 ; 10 uses
  %16 = alloca %"class.duckdb::unique_ptr.53", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  %i.c = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #25, !noalias !1626 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.c)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1626

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit206, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn57.pn.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit206 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26, !noalias !1626
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.c, ptr %5, align 8, !tbaa !806, !alias.scope !1626
  %i.e = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.x       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.f = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25
          to label %.noexc unwind label %bb.y     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !19, !noalias !1629
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !25, !noalias !1629
  store i8 0, ptr %i.g, align 8, !tbaa !10, !noalias !1629
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.f, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.e, !noalias !1629

bb.d:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %4, align 8, !tbaa !23, !noalias !1629 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.i) #26, !noalias !1629
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !23, !noalias !1629 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26, !noalias !1629
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.f) #26, !noalias !1629
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !148  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = ptrtoint ptr %i.f to i64
  store i64 %i.s, ptr %i.p, align 8, !tbaa !150
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !152  ; 10 uses
  %i.v = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc61 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit74

.noexc61:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #25
          to label %.noexc62 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit74 ; 10 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = ptrtoint ptr %i.f to i64
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc62
  %i.ai = sub i64 %i.v, %i.w
  %i.aj = add i64 %i.ai, -8                       ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader321, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.am = add i64 %i.v, -8
  %i.an = sub i64 %i.am, %i.w
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ap
  %scevgep294 = getelementptr i8, ptr %i.u, i64 %i.ap
  %bound0 = icmp ult ptr %i.af, %scevgep294
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader321, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.u, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.at ; 2 uses
  %next.gep295 = getelementptr i8, ptr %i.u, i64 %i.at ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.au = getelementptr i8, ptr %next.gep295, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep295, align 8, !tbaa !150, !alias.scope !1637, !noalias !1632
  %wide.load296 = load <2 x i64>, ptr %i.au, align 8, !tbaa !150, !alias.scope !1637, !noalias !1632
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !1640, !noalias !1637
  store <2 x i64> %wide.load296, ptr %i.av, align 8, !tbaa !150, !alias.scope !1640, !noalias !1637
  %i.aw = getelementptr i8, ptr %next.gep295, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep295, align 8, !tbaa !150, !alias.scope !1637, !noalias !1632
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !150, !alias.scope !1637, !noalias !1632
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader321

.lr.ph.i.i.i.i.i.i.i.preheader321:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader321, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader321 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader321 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.ay = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1635, !noalias !1632
  store i64 %i.ay, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1632, !noalias !1635
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !1635, !noalias !1632
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1643

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc62
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.af, %.noexc62 ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.af, ptr %i.n, align 8, !tbaa !152
  store ptr %i.bb, ptr %i.o, align 8, !tbaa !148
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.bd = invoke noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #25
          to label %.noexc64 unwind label %bb.z   ; 3 uses

.noexc64:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb7ShowRefC1Ev(ptr noundef nonnull align 8 dereferenceable(209) %i.bd)
          to label %bb.k unwind label %bb.j, !noalias !1644

bb.j:                                             ; preds = %.noexc64
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bd) #26, !noalias !1644
  br label %.body65

bb.k:                                             ; preds = %.noexc64
  store ptr %i.bd, ptr %6, align 8, !tbaa !1614, !alias.scope !1644
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1647 ; 4 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.ao, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bh, ptr %7, align 8, !tbaa !19
  %i.bi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !21
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc68 unwind label %bb.aa  ; 2 uses

.noexc68:                                         ; preds = %.noexc.i
  store ptr %i.bk, ptr %7, align 8, !tbaa !23
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.bl, ptr %i.bh, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc68, %bb.l
  %i.bm = phi ptr [ %i.bk, %.noexc68 ], [ %i.bh, %bb.l ] ; 2 uses
  switch i64 %i.bi, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !10
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !10
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !25
  %i.bq = load ptr, ptr %7, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 27
  %.pre = load ptr, ptr %7, align 8, !tbaa !23    ; 4 uses
  br i1 %i.bt, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.p:                                             ; preds = %bb.o
  %i.bu = load i128, ptr %.pre, align 1
  %i.bv = xor i128 %i.bu, 152063541770591012548342494362659413855
  %i.bw = getelementptr i8, ptr %.pre, i64 11
  %i.bx = load i128, ptr %i.bw, align 1
  %i.by = xor i128 %i.bx, 134851116901260230219347016337166660453
  %i.bz = or i128 %i.bv, %i.by
  %i.ca = icmp ne i128 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.p, %bb.o
  %i.cd = phi i1 [ false, %bb.o ], [ %i.cc, %bb.p ]
  %i.ce = icmp eq ptr %.pre, %i.bh
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cf = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @_ZdlPv(ptr noundef %.pre) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.cd, label %bb.q, label %bb.al

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7ShowRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 208
  store i8 2, ptr %i.ch, align 8, !tbaa !1618
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1649
  invoke void @_ZN6duckdb11Transformer22TransformQualifiedNameERN17duckdb_libpgquery10PGRangeVarE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::QualifiedName") align 8 %8, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.cj)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.ck = invoke noundef zeroext i1 @_ZN6duckdb16IsInvalidCatalogERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
end_hunk_9
begin_hunk_10_@_ZN6duckdb11Transformer13TransformShowERN17duckdb_libpgquery18PGVariableShowStmtE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.az
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.bp:                                            ; preds = %bb.bb
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %13, align 8, !tbaa !23   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.ge
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.bp
  call void @_ZdlPv(ptr noundef %i.hy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.bo
  %.pn35 = phi { ptr, i32 } [ %i.hw, %bb.bo ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.hx, %bb.bp ] ; 2 uses
  %i.ia = load ptr, ptr %14, align 8, !tbaa !23   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.fp
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  call void @_ZdlPv(ptr noundef %i.ia) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.bn
  %.pn35.pn = phi { ptr, i32 } [ %i.hv, %bb.bn ], [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.br

bb.bq:                                            ; preds = %bb.bj, %bb.aw
  %i.ic = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.bq
  call void @_ZdlPv(ptr noundef %i.ic) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bs

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %bb.bm
  %.pn38 = phi { ptr, i32 } [ %i.hu, %bb.bm ], [ %.pn35.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ] ; 2 uses
  %i.if = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.br
  call void @_ZdlPv(ptr noundef %i.if) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.pn38.pn = phi { ptr, i32 } [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %.pn38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.pn38, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200

bb.bs:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZN6duckdb13QualifiedNameD2Ev.exit, %bb.an
  %i.ii = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7ShowRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bt unwind label %bb.ab

bb.bt:                                            ; preds = %bb.bs
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 112
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !25
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.bu, label %bb.cp

bb.bu:                                            ; preds = %bb.bt
  %i.im = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7ShowRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bv unwind label %bb.ab

bb.bv:                                            ; preds = %bb.bu
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 208
  %i.io = load i8, ptr %i.in, align 8, !tbaa !1618
  %.not48 = icmp eq i8 %i.io, 2
  br i1 %.not48, label %bb.cp, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  %i.ip = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #25
          to label %.noexc133 unwind label %bb.cj ; 3 uses

.noexc133:                                        ; preds = %bb.bw
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ip)
          to label %bb.by unwind label %bb.bx, !noalias !1656

bb.bx:                                            ; preds = %.noexc133
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ip) #26, !noalias !1656
  br label %.body134

bb.by:                                            ; preds = %.noexc133
  store ptr %i.ip, ptr %15, align 8, !tbaa !806, !alias.scope !1656
  %i.ir = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bz unwind label %bb.ck     ; 3 uses

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.is = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25
          to label %.noexc143 unwind label %bb.cl ; 6 uses

.noexc143:                                        ; preds = %bb.bz
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.it, ptr %3, align 8, !tbaa !19, !noalias !1659
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.iu, align 8, !tbaa !25, !noalias !1659
  store i8 0, ptr %i.it, align 8, !tbaa !10, !noalias !1659
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.is, ptr noundef nonnull %3)
          to label %bb.ca unwind label %bb.cb, !noalias !1659

bb.ca:                                            ; preds = %.noexc143
  %i.iv = load ptr, ptr %3, align 8, !tbaa !23, !noalias !1659 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.it
  br i1 %i.iw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140: ; preds = %bb.ca
  call void @_ZdlPv(ptr noundef %i.iv) #26, !noalias !1659
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i142

bb.cb:                                            ; preds = %.noexc143
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = load ptr, ptr %3, align 8, !tbaa !23, !noalias !1659 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.it
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i137: ; preds = %bb.cb
  call void @_ZdlPv(ptr noundef %i.iy) #26, !noalias !1659
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i138: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i137
  call void @_ZdlPv(ptr noundef nonnull %i.is) #26, !noalias !1659
  br label %.body144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i142: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 120 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 128 ; 3 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !148 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 136 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !149
  %.not.i.i147 = icmp eq ptr %i.jc, %i.je
  br i1 %.not.i.i147, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i142
  %i.jf = ptrtoint ptr %i.is to i64
  store i64 %i.jf, ptr %i.jc, align 8, !tbaa !150
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr %i.jg, ptr %i.jb, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit168

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i142
  %i.jh = load ptr, ptr %i.ja, align 8, !tbaa !152 ; 10 uses
  %i.ji = ptrtoint ptr %i.jc to i64               ; 3 uses
  %i.jj = ptrtoint ptr %i.jh to i64               ; 3 uses
  %i.jk = sub i64 %i.ji, %i.jj                    ; 3 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775800
  br i1 %i.jl, label %bb.ce, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i148

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc160 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit178

.noexc160:                                        ; preds = %bb.ce
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i148: ; preds = %bb.cd
  %i.jm = ashr exact i64 %i.jk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i149 = call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i.i149, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 1152921504606846975)
  %i.jq = select i1 %i.jo, i64 1152921504606846975, i64 %i.jp ; 3 uses
  %.not.i.i.i.i150 = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i150)
  %i.jr = shl nuw nsw i64 %i.jq, 3
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #25
          to label %.noexc161 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit178 ; 10 uses

.noexc161:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i148
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jk
  %i.ju = ptrtoint ptr %i.is to i64
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i151 = icmp eq ptr %i.jh, %i.jc
  br i1 %.not10.i.i.i.i.i.i.i151, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i152.preheader

.lr.ph.i.i.i.i.i.i.i152.preheader:                ; preds = %.noexc161
  %i.jv = sub i64 %i.ji, %i.jj
  %i.jw = add i64 %i.jv, -8                       ; 2 uses
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check305 = icmp ult i64 %i.jw, 152
  br i1 %min.iters.check305, label %.lr.ph.i.i.i.i.i.i.i152.preheader320, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.i.i.i.i.i.i.i152.preheader
  %i.jz = add i64 %i.ji, -8
  %i.ka = sub i64 %i.jz, %i.jj
  %i.kb = and i64 %i.ka, -8
  %i.kc = add i64 %i.kb, 8                        ; 2 uses
  %scevgep299 = getelementptr i8, ptr %i.js, i64 %i.kc
  %scevgep300 = getelementptr i8, ptr %i.jh, i64 %i.kc
  %bound0301 = icmp ult ptr %i.js, %scevgep300
  %bound1302 = icmp ult ptr %i.jh, %scevgep299
  %found.conflict303 = and i1 %bound0301, %bound1302
  br i1 %found.conflict303, label %.lr.ph.i.i.i.i.i.i.i152.preheader320, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck298
  %n.vec308 = and i64 %i.jy, 4611686018427387900  ; 3 uses
  %i.kd = shl i64 %n.vec308, 3                    ; 2 uses
  %i.ke = getelementptr i8, ptr %i.js, i64 %i.kd  ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jh, i64 %i.kd
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph306
  %index310 = phi i64 [ 0, %vector.ph306 ], [ %index.next315, %vector.body309 ] ; 2 uses
  %i.kg = shl i64 %index310, 3                    ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.js, i64 %i.kg ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.jh, i64 %i.kg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %i.kh = getelementptr i8, ptr %next.gep312, i64 16
  %wide.load313 = load <2 x i64>, ptr %next.gep312, align 8, !tbaa !150, !alias.scope !1667, !noalias !1662
  %wide.load314 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !150, !alias.scope !1667, !noalias !1662
  %i.ki = getelementptr i8, ptr %next.gep311, i64 16
  store <2 x i64> %wide.load313, ptr %next.gep311, align 8, !tbaa !150, !alias.scope !1670, !noalias !1667
  store <2 x i64> %wide.load314, ptr %i.ki, align 8, !tbaa !150, !alias.scope !1670, !noalias !1667
  %i.kj = getelementptr i8, ptr %next.gep312, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep312, align 8, !tbaa !150, !alias.scope !1667, !noalias !1662
  store <2 x ptr> splat (ptr null), ptr %i.kj, align 8, !tbaa !150, !alias.scope !1667, !noalias !1662
  %index.next315 = add nuw i64 %index310, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next315, %n.vec308
  br i1 %i.kk, label %middle.block316, label %vector.body309, !llvm.loop !1672

middle.block316:                                  ; preds = %vector.body309
  %cmp.n317 = icmp eq i64 %i.jy, %n.vec308
  br i1 %cmp.n317, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i152.preheader320

.lr.ph.i.i.i.i.i.i.i152.preheader320:             ; preds = %vector.memcheck298, %.lr.ph.i.i.i.i.i.i.i152.preheader, %middle.block316
  %.012.i.i.i.i.i.i.i153.ph = phi ptr [ %i.js, %vector.memcheck298 ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i152.preheader ], [ %i.ke, %middle.block316 ]
  %.0911.i.i.i.i.i.i.i154.ph = phi ptr [ %i.jh, %vector.memcheck298 ], [ %i.jh, %.lr.ph.i.i.i.i.i.i.i152.preheader ], [ %i.kf, %middle.block316 ]
  br label %.lr.ph.i.i.i.i.i.i.i152

.lr.ph.i.i.i.i.i.i.i152:                          ; preds = %.lr.ph.i.i.i.i.i.i.i152.preheader320, %.lr.ph.i.i.i.i.i.i.i152
  %.012.i.i.i.i.i.i.i153 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i152 ], [ %.012.i.i.i.i.i.i.i153.ph, %.lr.ph.i.i.i.i.i.i.i152.preheader320 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i154 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i.i152 ], [ %.0911.i.i.i.i.i.i.i154.ph, %.lr.ph.i.i.i.i.i.i.i152.preheader320 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %i.kl = load i64, ptr %.0911.i.i.i.i.i.i.i154, align 8, !tbaa !150, !alias.scope !1665, !noalias !1662
  store i64 %i.kl, ptr %.012.i.i.i.i.i.i.i153, align 8, !tbaa !150, !alias.scope !1662, !noalias !1665
  store ptr null, ptr %.0911.i.i.i.i.i.i.i154, align 8, !tbaa !150, !alias.scope !1665, !noalias !1662
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i154, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i153, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i155 = icmp eq ptr %i.km, %i.jc
  br i1 %.not.i.i.i.i.i.i.i155, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i152, !llvm.loop !1673

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i156: ; preds = %.lr.ph.i.i.i.i.i.i.i152, %middle.block316, %.noexc161
  %.0.lcssa.i.i.i.i.i.i.i157 = phi ptr [ %i.js, %.noexc161 ], [ %i.ke, %middle.block316 ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i152 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i157, i64 8
  %.not.i23.i.i.i158 = icmp eq ptr %i.jh, null
  br i1 %.not.i23.i.i.i158, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i159, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i156
  call void @_ZdlPv(ptr noundef nonnull %i.jh) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i159

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i159: ; preds = %bb.cf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i156
  store ptr %i.js, ptr %i.ja, align 8, !tbaa !152
  store ptr %i.ko, ptr %i.jb, align 8, !tbaa !148
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jq
  store ptr %i.kp, ptr %i.jd, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit168

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit168: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i159, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1649
  invoke void @_ZN6duckdb11Transformer17TransformRangeVarERN17duckdb_libpgquery10PGRangeVarE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %16, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.kr)
          to label %bb.cg unwind label %bb.cm

bb.cg:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit168
  %i.ks = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ch unwind label %bb.cn

bb.ch:                                            ; preds = %bb.cg
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 144 ; 2 uses
  %i.ku = load ptr, ptr %16, align 8, !tbaa !142
  store ptr null, ptr %16, align 8, !tbaa !142
  %i.kv = load ptr, ptr %i.kt, align 8, !tbaa !142 ; 3 uses
  store ptr %i.ku, ptr %i.kt, align 8, !tbaa !142
  %.not.i.i.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ch
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !33
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.kv) #23, !inline_history !143
  br label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ch, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i
  %i.kz = load ptr, ptr %15, align 8, !tbaa !806  ; 4 uses
  store ptr null, ptr %15, align 8, !tbaa !806
  %i.la = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7ShowRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ci unwind label %bb.co

bb.ci:                                            ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 200 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !525 ; 3 uses
  store ptr %i.kz, ptr %i.lb, align 8, !tbaa !525
  %.not.i.i.i.i.i169 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i.i169, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ci
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !33
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.lc) #23, !inline_history !719
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.ci
  %i.lg = load ptr, ptr %16, align 8, !tbaa !142  ; 3 uses
  %.not.i171 = icmp eq ptr %i.lg, null
  br i1 %.not.i171, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !33
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.lg) #23, !inline_history !180
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.lk = load ptr, ptr %15, align 8, !tbaa !806  ; 3 uses
  %.not.i172 = icmp eq ptr %i.lk, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !33
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(240) %i.lk) #23, !inline_history !855
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.cp

bb.cj:                                            ; preds = %bb.bw
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body134

bb.ck:                                            ; preds = %bb.by
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %.body144

bb.cl:                                            ; preds = %bb.bz
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %.body144

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit178: ; preds = %bb.ce, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i148
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = load ptr, ptr %i.is, align 8, !tbaa !33
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(56) %i.is) #23, !inline_history !165
  br label %.body144

bb.cm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit168
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit184

bb.cn:                                            ; preds = %bb.cg
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit181

bb.co:                                            ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i179 = icmp eq ptr %i.kz, null
  br i1 %.not.i179, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit181, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i180

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i180: ; preds = %bb.co
  %i.ly = load ptr, ptr %i.kz, align 8, !tbaa !33
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
end_hunk_10
begin_hunk_11_@_ZN6duckdb11Transformer23TransformPivotStatementERN17duckdb_libpgquery12PGSelectStmtE:bb.a
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit187

bb.cp:                                            ; preds = %bb.ca
  %i.md = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.me = load ptr, ptr %17, align 8, !tbaa !142  ; 3 uses
  %.not.i185 = icmp eq ptr %i.me, null
  br i1 %.not.i185, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit187, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i186

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i186: ; preds = %bb.cp
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !33
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.me) #23, !inline_history !180
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit187

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit187: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i186, %bb.cp, %bb.co
  %.pn98 = phi { ptr, i32 } [ %i.mc, %bb.co ], [ %i.md, %bb.cp ], [ %i.md, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i186 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

bb.cq:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193

bb.cr:                                            ; preds = %bb.ch
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mk = load ptr, ptr %21, align 8, !tbaa !525  ; 3 uses
  %.not.i188 = icmp eq ptr %i.mk, null
  br i1 %.not.i188, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit190, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i189

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i189: ; preds = %bb.cr
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !33
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.mk) #23, !inline_history !531
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit190

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit190: ; preds = %bb.cr, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i189
  %i.mo = load ptr, ptr %20, align 8, !tbaa !150  ; 3 uses
  %.not.i191 = icmp eq ptr %i.mo, null
  br i1 %.not.i191, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i192

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i192: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit190
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !33
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(56) %i.mo) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i192, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit190, %bb.cq
  %.pn100 = phi { ptr, i32 } [ %i.mi, %bb.cq ], [ %i.mj, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit190 ], [ %i.mj, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i192 ] ; 2 uses
  %i.ms = load ptr, ptr %19, align 8, !tbaa !806  ; 3 uses
  %.not.i194 = icmp eq ptr %i.ms, null
  br i1 %.not.i194, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit196, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i195

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i195: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !33
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(240) %i.ms) #23, !inline_history !855
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit196

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit196: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i195
  %i.mw = load ptr, ptr %18, align 8, !tbaa !23   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.hq
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit196
  call void @_ZdlPv(ptr noundef %i.mw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit187, %bb.cn
  %.pn102 = phi { ptr, i32 } [ %i.mb, %bb.cn ], [ %.pn98, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit187 ], [ %.pn100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ], [ %.pn100, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit196 ] ; 2 uses
  %i.my = load ptr, ptr %16, align 8, !tbaa !806  ; 3 uses
  %.not.i200 = icmp eq ptr %i.my, null
  br i1 %.not.i200, label %.body159, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !33
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(240) %i.my) #23, !inline_history !855
  br label %.body159

.body159:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %bb.cm, %bb.bv
  %.pn102.pn = phi { ptr, i32 } [ %i.jl, %bb.bv ], [ %i.ma, %bb.cm ], [ %.pn102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.pn102, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.nc = load ptr, ptr %14, align 8, !tbaa !23   ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.ho
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %.body159
  call void @_ZdlPv(ptr noundef %i.nc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %.body159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %.pn102.pn.pn = phi { ptr, i32 } [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %.pn102.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %.pn102.pn, %.body159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.body207

bb.cs:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ne = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25
          to label %.noexc206 unwind label %bb.dh ; 6 uses

.noexc206:                                        ; preds = %bb.cs
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.nf, ptr %3, align 8, !tbaa !19, !noalias !1738
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ng, align 8, !tbaa !25, !noalias !1738
  store i8 0, ptr %i.nf, align 8, !tbaa !10, !noalias !1738
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.ne, ptr noundef nonnull %3)
          to label %bb.ct unwind label %bb.cu, !noalias !1738

bb.ct:                                            ; preds = %.noexc206
  %i.nh = load ptr, ptr %3, align 8, !tbaa !23, !noalias !1738 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.nf
  br i1 %i.ni, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ct
  call void @_ZdlPv(ptr noundef %i.nh) #26, !noalias !1738
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.cu:                                            ; preds = %.noexc206
  %i.nj = landingpad { ptr, i32 }
          cleanup
  %i.nk = load ptr, ptr %3, align 8, !tbaa !23, !noalias !1738 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.nf
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.nk) #26, !noalias !1738
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.ne) #26, !noalias !1738
  br label %.body207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.hs, i64 120 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.hs, i64 128 ; 3 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !148 ; 6 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.hs, i64 136 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !149
  %.not.i.i209 = icmp eq ptr %i.no, %i.nq
  br i1 %.not.i.i209, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.nr = ptrtoint ptr %i.ne to i64
  store i64 %i.nr, ptr %i.no, align 8, !tbaa !150
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.ns, ptr %i.nn, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.nt = load ptr, ptr %i.nm, align 8, !tbaa !152 ; 10 uses
  %i.nu = ptrtoint ptr %i.no to i64               ; 3 uses
  %i.nv = ptrtoint ptr %i.nt to i64               ; 3 uses
  %i.nw = sub i64 %i.nu, %i.nv                    ; 3 uses
  %i.nx = icmp eq i64 %i.nw, 9223372036854775800
  br i1 %i.nx, label %bb.cx, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i210

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc222 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit251

.noexc222:                                        ; preds = %bb.cx
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i210: ; preds = %bb.cw
  %i.ny = ashr exact i64 %i.nw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i211 = call i64 @llvm.umax.i64(i64 %i.ny, i64 1)
  %i.nz = add nsw i64 %.sroa.speculated.i.i.i.i211, %i.ny ; 2 uses
  %i.oa = icmp ult i64 %i.nz, %i.ny
  %i.ob = call i64 @llvm.umin.i64(i64 %i.nz, i64 1152921504606846975)
  %i.oc = select i1 %i.oa, i64 1152921504606846975, i64 %i.ob ; 3 uses
  %.not.i.i.i.i212 = icmp ne i64 %i.oc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i212)
  %i.od = shl nuw nsw i64 %i.oc, 3
  %i.oe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.od) #25
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit251 ; 10 uses

.noexc223:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i210
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.nw
  %i.og = ptrtoint ptr %i.ne to i64
  store i64 %i.og, ptr %i.of, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i213 = icmp eq ptr %i.nt, %i.no
  br i1 %.not10.i.i.i.i.i.i.i213, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i218, label %.lr.ph.i.i.i.i.i.i.i214.preheader

.lr.ph.i.i.i.i.i.i.i214.preheader:                ; preds = %.noexc223
  %i.oh = sub i64 %i.nu, %i.nv
  %i.oi = add i64 %i.oh, -8                       ; 2 uses
  %i.oj = lshr i64 %i.oi, 3
  %i.ok = add nuw nsw i64 %i.oj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.oi, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i214.preheader687, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i214.preheader
  %i.ol = add i64 %i.nu, -8
  %i.om = sub i64 %i.ol, %i.nv
  %i.on = and i64 %i.om, -8
  %i.oo = add i64 %i.on, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.oe, i64 %i.oo
  %scevgep603 = getelementptr i8, ptr %i.nt, i64 %i.oo
  %bound0 = icmp ult ptr %i.oe, %scevgep603
  %bound1 = icmp ult ptr %i.nt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i214.preheader687, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ok, 4611686018427387900     ; 3 uses
  %i.op = shl i64 %n.vec, 3                       ; 2 uses
  %i.oq = getelementptr i8, ptr %i.oe, i64 %i.op  ; 2 uses
  %i.or = getelementptr i8, ptr %i.nt, i64 %i.op
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.os = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.oe, i64 %i.os ; 2 uses
  %next.gep604 = getelementptr i8, ptr %i.nt, i64 %i.os ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.ot = getelementptr i8, ptr %next.gep604, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep604, align 8, !tbaa !150, !alias.scope !1746, !noalias !1741
  %wide.load605 = load <2 x i64>, ptr %i.ot, align 8, !tbaa !150, !alias.scope !1746, !noalias !1741
  %i.ou = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !1749, !noalias !1746
  store <2 x i64> %wide.load605, ptr %i.ou, align 8, !tbaa !150, !alias.scope !1749, !noalias !1746
  %i.ov = getelementptr i8, ptr %next.gep604, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep604, align 8, !tbaa !150, !alias.scope !1746, !noalias !1741
  store <2 x ptr> splat (ptr null), ptr %i.ov, align 8, !tbaa !150, !alias.scope !1746, !noalias !1741
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ow = icmp eq i64 %index.next, %n.vec
  br i1 %i.ow, label %middle.block, label %vector.body, !llvm.loop !1751

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ok, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i218, label %.lr.ph.i.i.i.i.i.i.i214.preheader687

.lr.ph.i.i.i.i.i.i.i214.preheader687:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i214.preheader, %middle.block
  %.012.i.i.i.i.i.i.i215.ph = phi ptr [ %i.oe, %vector.memcheck ], [ %i.oe, %.lr.ph.i.i.i.i.i.i.i214.preheader ], [ %i.oq, %middle.block ]
  %.0911.i.i.i.i.i.i.i216.ph = phi ptr [ %i.nt, %vector.memcheck ], [ %i.nt, %.lr.ph.i.i.i.i.i.i.i214.preheader ], [ %i.or, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i214

.lr.ph.i.i.i.i.i.i.i214:                          ; preds = %.lr.ph.i.i.i.i.i.i.i214.preheader687, %.lr.ph.i.i.i.i.i.i.i214
  %.012.i.i.i.i.i.i.i215 = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i.i.i214 ], [ %.012.i.i.i.i.i.i.i215.ph, %.lr.ph.i.i.i.i.i.i.i214.preheader687 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i216 = phi ptr [ %i.oy, %.lr.ph.i.i.i.i.i.i.i214 ], [ %.0911.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i214.preheader687 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.ox = load i64, ptr %.0911.i.i.i.i.i.i.i216, align 8, !tbaa !150, !alias.scope !1744, !noalias !1741
  store i64 %i.ox, ptr %.012.i.i.i.i.i.i.i215, align 8, !tbaa !150, !alias.scope !1741, !noalias !1744
  store ptr null, ptr %.0911.i.i.i.i.i.i.i216, align 8, !tbaa !150, !alias.scope !1744, !noalias !1741
  %i.oy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i215, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i217 = icmp eq ptr %i.oy, %i.no
  br i1 %.not.i.i.i.i.i.i.i217, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i218, label %.lr.ph.i.i.i.i.i.i.i214, !llvm.loop !1752

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i218: ; preds = %.lr.ph.i.i.i.i.i.i.i214, %middle.block, %.noexc223
  %.0.lcssa.i.i.i.i.i.i.i219 = phi ptr [ %i.oe, %.noexc223 ], [ %i.oq, %middle.block ], [ %i.oz, %.lr.ph.i.i.i.i.i.i.i214 ]
  %i.pa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i219, i64 8
  %.not.i23.i.i.i220 = icmp eq ptr %i.nt, null
  br i1 %.not.i23.i.i.i220, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i221, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i218
  call void @_ZdlPv(ptr noundef nonnull %i.nt) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i221

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i221: ; preds = %bb.cy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i218
  store ptr %i.oe, ptr %i.nm, align 8, !tbaa !152
  store ptr %i.pa, ptr %i.nn, align 8, !tbaa !148
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.oc
  store ptr %i.pb, ptr %i.np, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i221, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.pc = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #25
          to label %bb.cz unwind label %bb.di     ; 11 uses

bb.cz:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i8 9, ptr %i.pd, align 8, !tbaa !113, !noalias !1753
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 32 ; 2 uses
  store ptr %i.pf, ptr %i.pe, align 8, !tbaa !19, !noalias !1753
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  store i64 0, ptr %i.pg, align 8, !tbaa !25, !noalias !1753
  store i8 0, ptr %i.pf, align 8, !tbaa !10, !noalias !1753
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 48
  store ptr null, ptr %i.ph, align 8, !tbaa !135, !noalias !1753
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  store i64 -1, ptr %i.pi, align 8, !tbaa !136, !noalias !1753
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pj, i8 0, i64 40, i1 false), !noalias !1753
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb8PivotRefE, i64 16), ptr %i.pc, align 8, !tbaa !33, !noalias !1753
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 104
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pc, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.pk, i8 0, i64 105, i1 false), !noalias !1753
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pl, i8 0, i64 72, i1 false), !noalias !1753
  store ptr %i.pc, ptr %22, align 8, !tbaa !1756, !alias.scope !1753
  %i.pm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8PivotRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.da unwind label %bb.dj

bb.da:                                            ; preds = %bb.cz
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 104 ; 2 uses
  %i.po = load ptr, ptr %4, align 8, !tbaa !142
  store ptr null, ptr %4, align 8, !tbaa !142
  %i.pp = load ptr, ptr %i.pn, align 8, !tbaa !142 ; 3 uses
  store ptr %i.po, ptr %i.pn, align 8, !tbaa !142
  %.not.i.i.i.i.i230 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i.i.i230, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit232, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i231

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i231: ; preds = %bb.da
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !33
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.pp) #23, !inline_history !143
  br label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit232

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit232: ; preds = %bb.da, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i231
  %i.pt = load ptr, ptr %i.hh, align 8, !tbaa !1721 ; 2 uses
  %.not82 = icmp eq ptr %i.pt, null
  br i1 %.not82, label %bb.dn, label %bb.db

bb.db:                                            ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit232
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZN6duckdb11Transformer19TransformStringListB5cxx11EPN17duckdb_libpgquery6PGListE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull %i.pt)
          to label %bb.dc unwind label %bb.dk

bb.dc:                                            ; preds = %bb.db
  %i.pu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8PivotRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.dd unwind label %bb.dl     ; 3 uses

bb.dd:                                            ; preds = %bb.dc
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 136 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !243 ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 144
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !15 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 152
  %i.qa = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.qb = load <2 x ptr>, ptr %23, align 16, !tbaa !242
  store <2 x ptr> %i.qb, ptr %i.pv, align 8, !tbaa !242
  %i.qc = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.qd = load ptr, ptr %i.qc, align 16, !tbaa !18
  store ptr %i.qd, ptr %i.pz, align 8, !tbaa !18
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.pw, %i.py
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.dd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.qh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.pw, %bb.dd ] ; 3 uses
  %i.qe = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.qe) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i233 = icmp eq ptr %i.qh, %i.py
  br i1 %.not.i.i.i.i.i.i233, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !258

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %bb.dd
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.de

bb.de:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.pw) #26
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.de
  %i.qi = load ptr, ptr %23, align 16, !tbaa !243 ; 3 uses
  %i.qj = load ptr, ptr %i.qa, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i234 = icmp eq ptr %i.qi, %i.qj
  br i1 %.not4.i.i.i234, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242, label %.lr.ph.i.i.i235

.lr.ph.i.i.i235:                                  ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238
  %.05.i.i.i236 = phi ptr [ %i.qn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238 ], [ %i.qi, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 3 uses
  %i.qk = load ptr, ptr %.05.i.i.i236, align 8, !tbaa !23 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.05.i.i.i236, i64 16
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i237: ; preds = %.lr.ph.i.i.i235
  call void @_ZdlPv(ptr noundef %i.qk) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238: ; preds = %.lr.ph.i.i.i235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i237
  %i.qn = getelementptr inbounds nuw i8, ptr %.05.i.i.i236, i64 32 ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.qn, %i.qj
  br i1 %.not.i.i.i239, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i240, label %.lr.ph.i.i.i235, !llvm.loop !258

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i240: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238
  %.pr.i241 = load ptr, ptr %23, align 16, !tbaa !243
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i240, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  %i.qo = phi ptr [ %.pr.i241, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i240 ], [ %i.qi, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %.not.i.i1.i243 = icmp eq ptr %i.qo, null
  br i1 %.not.i.i1.i243, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245, label %bb.df

bb.df:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242
  call void @_ZdlPv(ptr noundef nonnull %i.qo) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.dz

bb.dg:                                            ; preds = %._crit_edge
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body207

bb.dh:                                            ; preds = %bb.cs
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %.body207

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit251: ; preds = %bb.cx, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i210
  %i.qr = landingpad { ptr, i32 }
          cleanup
  %i.qs = load ptr, ptr %i.ne, align 8, !tbaa !33
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(56) %i.ne) #23, !inline_history !165
  br label %.body207

bb.di:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8PivotRefESt14default_deleteIS1_EED2Ev.exit330

bb.dj:                                            ; preds = %bb.eo, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit317, %bb.el, %_ZN6duckdb6vectorINS_11PivotColumnELb1ESaIS1_EEaSEOS3_.exit, %bb.ei, %bb.dp, %bb.do, %bb.cz
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit327

bb.dk:                                            ; preds = %bb.db
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dc
  %i.qy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #23
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.pn87 = phi { ptr, i32 } [ %i.qy, %bb.dl ], [ %i.qx, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit327

bb.dn:                                            ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit232
  %i.qz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !1720 ; 2 uses
  %.not83 = icmp eq ptr %i.ra, null
  br i1 %.not83, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.rb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8PivotRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.dp unwind label %bb.dj

bb.dp:                                            ; preds = %bb.do
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 112
  invoke void @_ZN6duckdb11Transformer23TransformExpressionListERN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ra, ptr noundef nonnull align 8 dereferenceable(24) %i.rc)
          to label %bb.dz unwind label %bb.dj

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA11_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.435") align 8 %25, ptr noundef nonnull align 1 dereferenceable(11) @.str.124, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.dr unwind label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  %i.rd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8PivotRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ds unwind label %bb.dx     ; 3 uses

bb.ds:                                            ; preds = %bb.dr
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 112 ; 3 uses
  %i.rf = load ptr, ptr %25, align 8, !tbaa !499  ; 5 uses
  store ptr null, ptr %25, align 8, !tbaa !499
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 120 ; 4 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !148 ; 6 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 128 ; 3 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !149
  %.not.i.i252 = icmp eq ptr %i.rh, %i.rj
  br i1 %.not.i.i252, label %bb.dt, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270.thread: ; preds = %bb.ds
  %i.rk = ptrtoint ptr %i.rf to i64
  store i64 %i.rk, ptr %i.rh, align 8, !tbaa !150
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store ptr %i.rl, ptr %i.rg, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

bb.dt:                                            ; preds = %bb.ds
  %i.rm = load ptr, ptr %i.re, align 8, !tbaa !152 ; 10 uses
  %i.rn = ptrtoint ptr %i.rh to i64               ; 3 uses
  %i.ro = ptrtoint ptr %i.rm to i64               ; 3 uses
  %i.rp = sub i64 %i.rn, %i.ro                    ; 3 uses
  %i.rq = icmp eq i64 %i.rp, 9223372036854775800
  br i1 %i.rq, label %bb.du, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i253

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc265 unwind label %bb.dy

.noexc265:                                        ; preds = %bb.du
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i253: ; preds = %bb.dt
  %i.rr = ashr exact i64 %i.rp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i254 = call i64 @llvm.umax.i64(i64 %i.rr, i64 1)
  %i.rs = add nsw i64 %.sroa.speculated.i.i.i.i254, %i.rr ; 2 uses
  %i.rt = icmp ult i64 %i.rs, %i.rr
  %i.ru = call i64 @llvm.umin.i64(i64 %i.rs, i64 1152921504606846975)
  %i.rv = select i1 %i.rt, i64 1152921504606846975, i64 %i.ru ; 4 uses
  %.not.i.i.i.i255 = icmp ne i64 %i.rv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i255)
  %i.rw = shl nuw nsw i64 %i.rv, 3
  %i.rx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rw) #25
          to label %.noexc266 unwind label %bb.dy ; 12 uses

.noexc266:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i253
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rp
  %i.rz = ptrtoint ptr %i.rf to i64
  store i64 %i.rz, ptr %i.ry, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i256 = icmp eq ptr %i.rm, %i.rh
  br i1 %.not10.i.i.i.i.i.i.i256, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261, label %.lr.ph.i.i.i.i.i.i.i257.preheader

.lr.ph.i.i.i.i.i.i.i257.preheader:                ; preds = %.noexc266
  %i.sa = sub i64 %i.rn, %i.ro
  %i.sb = add i64 %i.sa, -8                       ; 2 uses
  %i.sc = lshr i64 %i.sb, 3
  %i.sd = add nuw nsw i64 %i.sc, 1                ; 2 uses
  %min.iters.check614 = icmp ult i64 %i.sb, 152
  br i1 %min.iters.check614, label %.lr.ph.i.i.i.i.i.i.i257.preheader685, label %vector.memcheck607

vector.memcheck607:                               ; preds = %.lr.ph.i.i.i.i.i.i.i257.preheader
  %i.se = add i64 %i.rn, -8
  %i.sf = sub i64 %i.se, %i.ro
  %i.sg = and i64 %i.sf, -8
  %i.sh = add i64 %i.sg, 8                        ; 2 uses
  %scevgep608 = getelementptr i8, ptr %i.rx, i64 %i.sh
  %scevgep609 = getelementptr i8, ptr %i.rm, i64 %i.sh
  %bound0610 = icmp ult ptr %i.rx, %scevgep609
  %bound1611 = icmp ult ptr %i.rm, %scevgep608
  %found.conflict612 = and i1 %bound0610, %bound1611
  br i1 %found.conflict612, label %.lr.ph.i.i.i.i.i.i.i257.preheader685, label %vector.ph615

vector.ph615:                                     ; preds = %vector.memcheck607
  %n.vec617 = and i64 %i.sd, 4611686018427387900  ; 3 uses
  %i.si = shl i64 %n.vec617, 3                    ; 2 uses
  %i.sj = getelementptr i8, ptr %i.rx, i64 %i.si  ; 2 uses
  %i.sk = getelementptr i8, ptr %i.rm, i64 %i.si
  br label %vector.body618

vector.body618:                                   ; preds = %vector.body618, %vector.ph615
  %index619 = phi i64 [ 0, %vector.ph615 ], [ %index.next624, %vector.body618 ] ; 2 uses
  %i.sl = shl i64 %index619, 3                    ; 2 uses
  %next.gep620 = getelementptr i8, ptr %i.rx, i64 %i.sl ; 2 uses
  %next.gep621 = getelementptr i8, ptr %i.rm, i64 %i.sl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %i.sm = getelementptr i8, ptr %next.gep621, i64 16
  %wide.load622 = load <2 x i64>, ptr %next.gep621, align 8, !tbaa !150, !alias.scope !1763, !noalias !1758
  %wide.load623 = load <2 x i64>, ptr %i.sm, align 8, !tbaa !150, !alias.scope !1763, !noalias !1758
  %i.sn = getelementptr i8, ptr %next.gep620, i64 16
  store <2 x i64> %wide.load622, ptr %next.gep620, align 8, !tbaa !150, !alias.scope !1766, !noalias !1763
  store <2 x i64> %wide.load623, ptr %i.sn, align 8, !tbaa !150, !alias.scope !1766, !noalias !1763
  %i.so = getelementptr i8, ptr %next.gep621, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep621, align 8, !tbaa !150, !alias.scope !1763, !noalias !1758
  store <2 x ptr> splat (ptr null), ptr %i.so, align 8, !tbaa !150, !alias.scope !1763, !noalias !1758
  %index.next624 = add nuw i64 %index619, 4       ; 2 uses
  %i.sp = icmp eq i64 %index.next624, %n.vec617
  br i1 %i.sp, label %middle.block625, label %vector.body618, !llvm.loop !1768

middle.block625:                                  ; preds = %vector.body618
  %cmp.n626 = icmp eq i64 %i.sd, %n.vec617
  br i1 %cmp.n626, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261, label %.lr.ph.i.i.i.i.i.i.i257.preheader685

.lr.ph.i.i.i.i.i.i.i257.preheader685:             ; preds = %vector.memcheck607, %.lr.ph.i.i.i.i.i.i.i257.preheader, %middle.block625
  %.012.i.i.i.i.i.i.i258.ph = phi ptr [ %i.rx, %vector.memcheck607 ], [ %i.rx, %.lr.ph.i.i.i.i.i.i.i257.preheader ], [ %i.sj, %middle.block625 ]
  %.0911.i.i.i.i.i.i.i259.ph = phi ptr [ %i.rm, %vector.memcheck607 ], [ %i.rm, %.lr.ph.i.i.i.i.i.i.i257.preheader ], [ %i.sk, %middle.block625 ]
  br label %.lr.ph.i.i.i.i.i.i.i257

.lr.ph.i.i.i.i.i.i.i257:                          ; preds = %.lr.ph.i.i.i.i.i.i.i257.preheader685, %.lr.ph.i.i.i.i.i.i.i257
  %.012.i.i.i.i.i.i.i258 = phi ptr [ %i.ss, %.lr.ph.i.i.i.i.i.i.i257 ], [ %.012.i.i.i.i.i.i.i258.ph, %.lr.ph.i.i.i.i.i.i.i257.preheader685 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i259 = phi ptr [ %i.sr, %.lr.ph.i.i.i.i.i.i.i257 ], [ %.0911.i.i.i.i.i.i.i259.ph, %.lr.ph.i.i.i.i.i.i.i257.preheader685 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %i.sq = load i64, ptr %.0911.i.i.i.i.i.i.i259, align 8, !tbaa !150, !alias.scope !1761, !noalias !1758
  store i64 %i.sq, ptr %.012.i.i.i.i.i.i.i258, align 8, !tbaa !150, !alias.scope !1758, !noalias !1761
  store ptr null, ptr %.0911.i.i.i.i.i.i.i259, align 8, !tbaa !150, !alias.scope !1761, !noalias !1758
  %i.sr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i259, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i258, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i260 = icmp eq ptr %i.sr, %i.rh
  br i1 %.not.i.i.i.i.i.i.i260, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261, label %.lr.ph.i.i.i.i.i.i.i257, !llvm.loop !1769

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261: ; preds = %.lr.ph.i.i.i.i.i.i.i257, %middle.block625, %.noexc266
  %.0.lcssa.i.i.i.i.i.i.i262 = phi ptr [ %i.rx, %.noexc266 ], [ %i.sj, %middle.block625 ], [ %i.ss, %.lr.ph.i.i.i.i.i.i.i257 ]
  %i.st = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i262, i64 8 ; 2 uses
  %.not.i23.i.i.i263 = icmp eq ptr %i.rm, null
  br i1 %.not.i23.i.i.i263, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270.thread572, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270.thread572: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261
  store ptr %i.rx, ptr %i.re, align 8, !tbaa !152
  store ptr %i.st, ptr %i.rg, align 8, !tbaa !148
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %i.rv
  store ptr %i.su, ptr %i.ri, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i261
  call void @_ZdlPv(ptr noundef nonnull %i.rm) #26
  %.pre.pre = load ptr, ptr %25, align 8, !tbaa !499 ; 3 uses
  store ptr %i.rx, ptr %i.re, align 8, !tbaa !152
  store ptr %i.st, ptr %i.rg, align 8, !tbaa !148
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %i.rv
  store ptr %i.sv, ptr %i.ri, align 8, !tbaa !149
  %.not.i271 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i271, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270
  %i.sw = load ptr, ptr %.pre.pre, align 8, !tbaa !33
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(209) %.pre.pre) #23, !inline_history !501
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270.thread572, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit270, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.sz = load ptr, ptr %24, align 8, !tbaa !152  ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !148 ; 2 uses
  %.not4.i.i.i272 = icmp eq ptr %i.sz, %i.tb
  br i1 %.not4.i.i.i272, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i273

.lr.ph.i.i.i273:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i274 = phi ptr [ %i.tg, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.sz, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.tc = load ptr, ptr %.05.i.i.i274, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i.i.i275 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i.i.i275, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i273
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !33
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load ptr, ptr %i.te, align 8
  call void %i.tf(ptr noundef nonnull align 8 dereferenceable(56) %i.tc) #23, !inline_history !307
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i273
  %i.tg = getelementptr inbounds nuw i8, ptr %.05.i.i.i274, i64 8 ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %i.tg, %i.tb
  br i1 %.not.i.i.i276, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i273, !llvm.loop !308

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i277 = load ptr, ptr %24, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.th = phi ptr [ %.pr.i277, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.sz, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i278 = icmp eq ptr %i.th, null
  br i1 %.not.i.i1.i278, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.th) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.dz

bb.dw:                                            ; preds = %bb.dq
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit284

bb.dx:                                            ; preds = %bb.dr
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit281

bb.dy:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i253, %bb.du
  %i.tk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i279 = icmp eq ptr %i.rf, null
  br i1 %.not.i279, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit281, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i280

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i280: ; preds = %bb.dy
  %i.tl = load ptr, ptr %i.rf, align 8, !tbaa !33
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8
  call void %i.tn(ptr noundef nonnull align 8 dereferenceable(56) %i.rf) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit281

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit281: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i280, %bb.dy, %bb.dx
  %.pn84 = phi { ptr, i32 } [ %i.tj, %bb.dx ], [ %i.tk, %bb.dy ], [ %i.tk, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i280 ] ; 2 uses
  %i.to = load ptr, ptr %25, align 8, !tbaa !499  ; 3 uses
  %.not.i282 = icmp eq ptr %i.to, null
  br i1 %.not.i282, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit284, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i283

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i283: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit281
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !33
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(209) %i.to) #23, !inline_history !501
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit284

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit284: ; preds = %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i283, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit281, %bb.dw
  %.pn84.pn = phi { ptr, i32 } [ %i.ti, %bb.dw ], [ %.pn84, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit281 ], [ %.pn84, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i283 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit327

bb.dz:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.dp, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245
  %i.ts = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !1688 ; 2 uses
  %.not89 = icmp eq ptr %i.tt, null
  br i1 %.not89, label %bb.ei, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  invoke void @_ZN6duckdb11Transformer19TransformStringListB5cxx11EPN17duckdb_libpgquery6PGListE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %26, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull %i.tt)
          to label %bb.eb unwind label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.tu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8PivotRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ec unwind label %bb.eg     ; 3 uses

bb.ec:                                            ; preds = %bb.eb
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 184 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !243 ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 192
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !15 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 200
end_hunk_11
begin_hunk_12_@_ZN6duckdb11Transformer23TransformSelectInternalERN17duckdb_libpgquery12PGSelectStmtE:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

.loopexit.split-lp289:                            ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit283 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEE4findERSD_.exit.thread, %bb.v
  %lpad.loopexit.split-lp284 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEE4findERSD_.exit.thread252
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %.065 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.065, label %bb.ad, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.065, label %bb.ad, label %.loopexit.split-lp

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn105256 = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bj) #23
  br label %.loopexit.split-lp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEE4findERSD_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSE_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i, %bb.y, %.preheader312, %.noexc120, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEE4findERSD_.exit
  %i.bq = load ptr, ptr %6, align 8, !tbaa !1780
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN17duckdb_libpgquery11PGWindowDefEESaISC_ENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSF_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEEixERSD_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEEixERSD_.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEE4findERSD_.exit.thread
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !1791
  %i.bs = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.v
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEEixERSD_.exit
  call void @_ZdlPv(ptr noundef %i.bs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN17duckdb_libpgquery11PGWindowDefEN6duckdb33CaseInsensitiveStringHashFunctionENS9_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S8_EEEixERSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.067.in = getelementptr inbounds nuw i8, ptr %.067311, i64 8
  %.067 = load ptr, ptr %.067.in, align 8, !tbaa !7 ; 2 uses
  %.not93 = icmp eq ptr %.067, null
  br i1 %.not93, label %.loopexit287, label %bb.n, !llvm.loop !1792

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ad
  %.pn105.pn = phi { ptr, i32 } [ %.pn105256, %bb.ad ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit283, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp284, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bu = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.v
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %.loopexit.split-lp, %.loopexit288, %.loopexit.split-lp289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.ab
  %.pn105.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.ab ], [ %.pn105.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp289 ], [ %lpad.loopexit290, %.loopexit288 ], [ %.pn105.pn, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

.loopexit287:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %.preheader, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1793 ; 3 uses
  %.not94 = icmp eq ptr %i.bx, null
  br i1 %.not94, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %.loopexit287
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %i.by = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %bb.af unwind label %bb.ai     ; 5 uses

bb.af:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 3, ptr %i.bz, align 8, !tbaa !795, !noalias !1794
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb16DistinctModifierE, i64 16), ptr %i.by, align 8, !tbaa !33, !noalias !1794
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false), !noalias !1794
  store ptr %i.by, ptr %10, align 8, !tbaa !1797, !alias.scope !1794
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !218
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !10
  %.not282 = icmp eq ptr %i.cd, null
  br i1 %.not282, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16DistinctModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  invoke void @_ZN6duckdb11Transformer23TransformExpressionListERN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %thread-pre-split unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit141

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit138

thread-pre-split:                                 ; preds = %bb.ah
  %.pr = load ptr, ptr %10, align 8, !tbaa !1797
  br label %bb.ak

bb.ak:                                            ; preds = %thread-pre-split, %bb.af
  %i.ci = phi ptr [ %.pr, %thread-pre-split ], [ %i.by, %bb.af ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr null, ptr %10, align 8, !tbaa !1797
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !808 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !811
  %.not.i.i130 = icmp eq ptr %i.cl, %i.cn
  br i1 %.not.i.i130, label %bb.al, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.ak
  %i.co = ptrtoint ptr %i.ci to i64
  store i64 %i.co, ptr %i.cl, align 8, !tbaa !812
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cp, ptr %i.ck, align 8, !tbaa !808
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !814 ; 10 uses
  %i.cr = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.am, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc132 unwind label %bb.an

.noexc132:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 4 uses
  %.not.i.i.i.i131 = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i131)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #25
          to label %.noexc133 unwind label %bb.an ; 12 uses

.noexc133:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  %i.dd = ptrtoint ptr %i.ci to i64
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !812
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.cl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc133
  %i.de = sub i64 %i.cr, %i.cs
  %i.df = add i64 %i.de, -8                       ; 2 uses
  %i.dg = lshr i64 %i.df, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.df, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader400, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.di = add i64 %i.cr, -8
  %i.dj = sub i64 %i.di, %i.cs
  %i.dk = and i64 %i.dj, -8
  %i.dl = add i64 %i.dk, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.db, i64 %i.dl
  %scevgep373 = getelementptr i8, ptr %i.cq, i64 %i.dl
  %bound0 = icmp ult ptr %i.db, %scevgep373
  %bound1 = icmp ult ptr %i.cq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader400, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dh, 4611686018427387900     ; 3 uses
  %i.dm = shl i64 %n.vec, 3                       ; 2 uses
  %i.dn = getelementptr i8, ptr %i.db, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.cq, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.db, i64 %i.dp ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.cq, i64 %i.dp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %i.dq = getelementptr i8, ptr %next.gep374, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep374, align 8, !tbaa !812, !alias.scope !1804, !noalias !1799
  %wide.load375 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !812, !alias.scope !1804, !noalias !1799
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !812, !alias.scope !1807, !noalias !1804
  store <2 x i64> %wide.load375, ptr %i.dr, align 8, !tbaa !812, !alias.scope !1807, !noalias !1804
  %i.ds = getelementptr i8, ptr %next.gep374, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep374, align 8, !tbaa !812, !alias.scope !1804, !noalias !1799
  store <2 x ptr> splat (ptr null), ptr %i.ds, align 8, !tbaa !812, !alias.scope !1804, !noalias !1799
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !1809

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader400

.lr.ph.i.i.i.i.i.i.i.preheader400:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader400, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader400 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader400 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %i.du = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !1802, !noalias !1799
  store i64 %i.du, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !1799, !noalias !1802
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !1802, !noalias !1799
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.cl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1810

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc133
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.db, %.noexc133 ], [ %i.dn, %middle.block ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread359, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread359: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.db, ptr %i.cj, align 8, !tbaa !814
  store ptr %i.dx, ptr %i.ck, align 8, !tbaa !808
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dy, ptr %i.cm, align 8, !tbaa !811
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cq) #26
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !1797 ; 3 uses
  store ptr %i.db, ptr %i.cj, align 8, !tbaa !814
  store ptr %i.dx, ptr %i.ck, align 8, !tbaa !808
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dz, ptr %i.cm, align 8, !tbaa !811
  %.not.i135 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i135, label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16DistinctModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16DistinctModifierEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit
  %i.ea = load ptr, ptr %.pre.pre, align 8, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(40) %.pre.pre) #23, !inline_history !1811
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread359, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16DistinctModifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.an:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i136 = icmp eq ptr %i.ci, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit138, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i137

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i137: ; preds = %bb.an
  %i.ee = load ptr, ptr %i.ci, align 8, !tbaa !33
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ci) #23, !inline_history !857
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit138

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit138: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i137, %bb.an, %bb.aj
  %.pn95 = phi { ptr, i32 } [ %i.ch, %bb.aj ], [ %i.ed, %bb.an ], [ %i.ed, %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i137 ] ; 2 uses
  %i.eh = load ptr, ptr %10, align 8, !tbaa !1797 ; 3 uses
  %.not.i139 = icmp eq ptr %i.eh, null
  br i1 %.not.i139, label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit141, label %_ZNKSt14default_deleteIN6duckdb16DistinctModifierEEclEPS1_.exit.i140

_ZNKSt14default_deleteIN6duckdb16DistinctModifierEEclEPS1_.exit.i140: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit138
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(40) %i.eh) #23, !inline_history !1811
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit141

_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit141: ; preds = %_ZNKSt14default_deleteIN6duckdb16DistinctModifierEEclEPS1_.exit.i140, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit138, %bb.ai
  %.pn95.pn = phi { ptr, i32 } [ %i.cg, %bb.ai ], [ %.pn95, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit138 ], [ %.pn95, %_ZNKSt14default_deleteIN6duckdb16DistinctModifierEEclEPS1_.exit.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit, %.loopexit287
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1812 ; 2 uses
  %.not98 = icmp eq ptr %i.em, null
  br i1 %.not98, label %bb.az, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN6duckdb11Transformer19TransformValuesListEPN17duckdb_libpgquery6PGListE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %11, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull %i.em)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  %i.eo = load ptr, ptr %11, align 8, !tbaa !142
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !142 ; 3 uses
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !142
  %.not.i.i.i.i.i142 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i142, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ep) #23, !inline_history !143
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.et = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25
          to label %.noexc144 unwind label %bb.ay ; 6 uses

.noexc144:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.eu, ptr %3, align 8, !tbaa !19, !noalias !1813
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ev, align 8, !tbaa !25, !noalias !1813
  store i8 0, ptr %i.eu, align 8, !tbaa !10, !noalias !1813
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.et, ptr noundef nonnull %3)
          to label %bb.ar unwind label %bb.as, !noalias !1813

bb.ar:                                            ; preds = %.noexc144
  %i.ew = load ptr, ptr %3, align 8, !tbaa !23, !noalias !1813 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.eu
  br i1 %i.ex, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.ew) #26, !noalias !1813
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.as:                                            ; preds = %.noexc144
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %3, align 8, !tbaa !23, !noalias !1813 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.eu
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.ez) #26, !noalias !1813
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.et) #26, !noalias !1813
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !148 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !149
  %.not.i.i147 = icmp eq ptr %i.fd, %i.ff
  br i1 %.not.i.i147, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.fg = ptrtoint ptr %i.et to i64
  store i64 %i.fg, ptr %i.fd, align 8, !tbaa !150
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fh, ptr %i.fc, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !152 ; 10 uses
  %i.fj = ptrtoint ptr %i.fd to i64               ; 3 uses
  %i.fk = ptrtoint ptr %i.fi to i64               ; 3 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 3 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775800
  br i1 %i.fm, label %bb.av, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc157 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit166

.noexc157:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.fn = ashr exact i64 %i.fl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i148 = call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i.i148, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 1152921504606846975)
  %i.fr = select i1 %i.fp, i64 1152921504606846975, i64 %i.fq ; 3 uses
  %.not.i.i.i.i149 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i149)
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #25
          to label %.noexc158 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit166 ; 10 uses

.noexc158:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl
  %i.fv = ptrtoint ptr %i.et to i64
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i150 = icmp eq ptr %i.fi, %i.fd
  br i1 %.not10.i.i.i.i.i.i.i150, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i151.preheader

.lr.ph.i.i.i.i.i.i.i151.preheader:                ; preds = %.noexc158
  %i.fw = sub i64 %i.fj, %i.fk
  %i.fx = add i64 %i.fw, -8                       ; 2 uses
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check384 = icmp ult i64 %i.fx, 152
  br i1 %min.iters.check384, label %.lr.ph.i.i.i.i.i.i.i151.preheader399, label %vector.memcheck377

vector.memcheck377:                               ; preds = %.lr.ph.i.i.i.i.i.i.i151.preheader
  %i.ga = add i64 %i.fj, -8
  %i.gb = sub i64 %i.ga, %i.fk
  %i.gc = and i64 %i.gb, -8
  %i.gd = add i64 %i.gc, 8                        ; 2 uses
  %scevgep378 = getelementptr i8, ptr %i.ft, i64 %i.gd
  %scevgep379 = getelementptr i8, ptr %i.fi, i64 %i.gd
  %bound0380 = icmp ult ptr %i.ft, %scevgep379
  %bound1381 = icmp ult ptr %i.fi, %scevgep378
  %found.conflict382 = and i1 %bound0380, %bound1381
  br i1 %found.conflict382, label %.lr.ph.i.i.i.i.i.i.i151.preheader399, label %vector.ph385

vector.ph385:                                     ; preds = %vector.memcheck377
  %n.vec387 = and i64 %i.fz, 4611686018427387900  ; 3 uses
  %i.ge = shl i64 %n.vec387, 3                    ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ft, i64 %i.ge  ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fi, i64 %i.ge
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph385
  %index389 = phi i64 [ 0, %vector.ph385 ], [ %index.next394, %vector.body388 ] ; 2 uses
  %i.gh = shl i64 %index389, 3                    ; 2 uses
  %next.gep390 = getelementptr i8, ptr %i.ft, i64 %i.gh ; 2 uses
  %next.gep391 = getelementptr i8, ptr %i.fi, i64 %i.gh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %i.gi = getelementptr i8, ptr %next.gep391, i64 16
  %wide.load392 = load <2 x i64>, ptr %next.gep391, align 8, !tbaa !150, !alias.scope !1821, !noalias !1816
  %wide.load393 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !150, !alias.scope !1821, !noalias !1816
  %i.gj = getelementptr i8, ptr %next.gep390, i64 16
  store <2 x i64> %wide.load392, ptr %next.gep390, align 8, !tbaa !150, !alias.scope !1824, !noalias !1821
  store <2 x i64> %wide.load393, ptr %i.gj, align 8, !tbaa !150, !alias.scope !1824, !noalias !1821
  %i.gk = getelementptr i8, ptr %next.gep391, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep391, align 8, !tbaa !150, !alias.scope !1821, !noalias !1816
  store <2 x ptr> splat (ptr null), ptr %i.gk, align 8, !tbaa !150, !alias.scope !1821, !noalias !1816
  %index.next394 = add nuw i64 %index389, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next394, %n.vec387
  br i1 %i.gl, label %middle.block395, label %vector.body388, !llvm.loop !1826

middle.block395:                                  ; preds = %vector.body388
  %cmp.n396 = icmp eq i64 %i.fz, %n.vec387
  br i1 %cmp.n396, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i151.preheader399

.lr.ph.i.i.i.i.i.i.i151.preheader399:             ; preds = %vector.memcheck377, %.lr.ph.i.i.i.i.i.i.i151.preheader, %middle.block395
  %.012.i.i.i.i.i.i.i152.ph = phi ptr [ %i.ft, %vector.memcheck377 ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.i151.preheader ], [ %i.gf, %middle.block395 ]
  %.0911.i.i.i.i.i.i.i153.ph = phi ptr [ %i.fi, %vector.memcheck377 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.i151.preheader ], [ %i.gg, %middle.block395 ]
  br label %.lr.ph.i.i.i.i.i.i.i151

.lr.ph.i.i.i.i.i.i.i151:                          ; preds = %.lr.ph.i.i.i.i.i.i.i151.preheader399, %.lr.ph.i.i.i.i.i.i.i151
  %.012.i.i.i.i.i.i.i152 = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i151 ], [ %.012.i.i.i.i.i.i.i152.ph, %.lr.ph.i.i.i.i.i.i.i151.preheader399 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i153 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i.i151 ], [ %.0911.i.i.i.i.i.i.i153.ph, %.lr.ph.i.i.i.i.i.i.i151.preheader399 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %i.gm = load i64, ptr %.0911.i.i.i.i.i.i.i153, align 8, !tbaa !150, !alias.scope !1819, !noalias !1816
  store i64 %i.gm, ptr %.012.i.i.i.i.i.i.i152, align 8, !tbaa !150, !alias.scope !1816, !noalias !1819
  store ptr null, ptr %.0911.i.i.i.i.i.i.i153, align 8, !tbaa !150, !alias.scope !1819, !noalias !1816
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i153, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i152, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i154 = icmp eq ptr %i.gn, %i.fd
  br i1 %.not.i.i.i.i.i.i.i154, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i151, !llvm.loop !1827

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i151, %middle.block395, %.noexc158
  %.0.lcssa.i.i.i.i.i.i.i155 = phi ptr [ %i.ft, %.noexc158 ], [ %i.gf, %middle.block395 ], [ %i.go, %.lr.ph.i.i.i.i.i.i.i151 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i155, i64 8
  %.not.i23.i.i.i156 = icmp eq ptr %i.fi, null
  br i1 %.not.i23.i.i.i156, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ft, ptr %i.fb, align 8, !tbaa !152
  store ptr %i.gp, ptr %i.fc, align 8, !tbaa !148
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fr
  store ptr %i.gq, ptr %i.fe, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ax:                                            ; preds = %bb.ap
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body

bb.ay:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit166: ; preds = %bb.av, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %i.et, align 8, !tbaa !33
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(56) %i.et) #23, !inline_history !165
  br label %.body

bb.az:                                            ; preds = %bb.ao
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !1828 ; 2 uses
  %.not99 = icmp eq ptr %i.gy, null
  br i1 %.not99, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.gz = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.112, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @__cxa_throw(ptr nonnull %i.gz, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.db unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread: ; preds = %bb.ba
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.063 = phi i1 [ false, %bb.bc ], [ true, %bb.bb ] ; 2 uses
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hc = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.hc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %.063, label %bb.be, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %.063, label %bb.be, label %.body

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %.pn100259 = phi { ptr, i32 } [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ]
  call void @__cxa_free_exception(ptr %i.gz) #23
  br label %.body

bb.bf:                                            ; preds = %bb.az
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 149
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !1829, !range !204, !noundef !205
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !1830
  invoke void @_ZN6duckdb11Transformer13TransformFromENS_12optional_ptrIN17duckdb_libpgquery6PGListELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.53") align 8 %14, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr %i.hj)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hk = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  %i.hl = load ptr, ptr %14, align 8, !tbaa !142
  store ptr null, ptr %14, align 8, !tbaa !142
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !142 ; 3 uses
  store ptr %i.hl, ptr %i.hk, align 8, !tbaa !142
  %.not.i.i.i.i.i170 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i170, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit175, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit172

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit172: ; preds = %bb.bh
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !33
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.hm) #23, !inline_history !143
  %.pr260 = load ptr, ptr %14, align 8, !tbaa !142 ; 3 uses
  %.not.i173 = icmp eq ptr %.pr260, null
  br i1 %.not.i173, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit175, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i174

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i174: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit172
  %i.hq = load ptr, ptr %.pr260, align 8, !tbaa !33
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr260) #23, !inline_history !180
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit175

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit175: ; preds = %bb.bh, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit172, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.ht = load ptr, ptr %i.gx, align 8, !tbaa !1828
  %i.hu = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  invoke void @_ZN6duckdb11Transformer23TransformExpressionListERN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.k

bb.bi:                                            ; preds = %bb.bg
  %i.hv = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_ZN6duckdb11Transformer19TransformSelectStmtERN17duckdb_libpgquery12PGSelectStmtEb:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.q) #23, !inline_history !719
  %.pr = load ptr, ptr %4, align 8, !tbaa !525    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.u = load ptr, ptr %.pr, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr) #23, !inline_history !531
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !525    ; 3 uses
  %.not.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8: ; preds = %bb.e
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.z) #23, !inline_history !531
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.y, %bb.e ], [ %i.y, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ad = load ptr, ptr %0, align 8, !tbaa !827   ; 3 uses
  %.not.i10 = icmp eq ptr %i.ad, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #23, !inline_history !854
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer18TransformModifiersERN17duckdb_libpgquery12PGSelectStmtERNS_9QueryNodeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.301", align 16 ; 13 uses
  %4 = alloca %"class.duckdb::unique_ptr.444", align 8 ; 9 uses
  %5 = alloca %"class.duckdb::unique_ptr.1059", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::optional_ptr.1068", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::unique_ptr.110", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::unique_ptr.110", align 8 ; 8 uses
  %9 = alloca %"class.duckdb::unique_ptr.679", align 8 ; 12 uses
  %10 = alloca %"class.duckdb::unique_ptr.110", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::unique_ptr.110", align 8 ; 8 uses
  %12 = alloca %"class.duckdb::unique_ptr.110", align 8 ; 8 uses
  %13 = alloca %"class.duckdb::unique_ptr.110", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1880
  %i.c = invoke noundef zeroext i1 @_ZN6duckdb11Transformer16TransformOrderByEPN17duckdb_libpgquery6PGListERNS_6vectorINS_11OrderByNodeELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 16, !tbaa !388
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !388
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  %i.h = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %bb.d unwind label %bb.j       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 2, ptr %i.i, align 8, !tbaa !795, !noalias !1881
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb13OrderModifierE, i64 16), ptr %i.h, align 8, !tbaa !33, !noalias !1881
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !noalias !1881
  store ptr %i.h, ptr %4, align 8, !tbaa !505, !alias.scope !1881
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.k       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !312  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !315  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = load <2 x ptr>, ptr %3, align 16, !tbaa !388
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !388
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !389
  store ptr %i.s, ptr %i.p, align 8, !tbaa !389
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !150  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #23, !inline_history !1884
  br label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !317

_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i.i.i.i, %bb.e
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #26
  br label %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !505   ; 5 uses
  store ptr null, ptr %4, align 8, !tbaa !505
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !808 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !811
  %.not.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit
  %i.af = ptrtoint ptr %i.aa to i64
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !812
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !808
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEaSEOS3_.exit
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !814 ; 10 uses
  %i.ai = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #25
          to label %.noexc65 unwind label %bb.l   ; 12 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %i.au = ptrtoint ptr %i.aa to i64
  store i64 %i.au, ptr %i.at, align 8, !tbaa !812
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ac
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc65
  %i.av = sub i64 %i.ai, %i.aj
  %i.aw = add i64 %i.av, -8                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader330, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.az = add i64 %i.ai, -8
  %i.ba = sub i64 %i.az, %i.aj
  %i.bb = and i64 %i.ba, -8
  %i.bc = add i64 %i.bb, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.bc
  %scevgep279 = getelementptr i8, ptr %i.ah, i64 %i.bc
  %bound0 = icmp ult ptr %i.as, %scevgep279
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader330, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.bd = shl i64 %n.vec, 3                       ; 2 uses
  %i.be = getelementptr i8, ptr %i.as, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ah, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bg ; 2 uses
  %next.gep280 = getelementptr i8, ptr %i.ah, i64 %i.bg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %i.bh = getelementptr i8, ptr %next.gep280, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep280, align 8, !tbaa !812, !alias.scope !1890, !noalias !1885
  %wide.load281 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !812, !alias.scope !1890, !noalias !1885
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !812, !alias.scope !1893, !noalias !1890
  store <2 x i64> %wide.load281, ptr %i.bi, align 8, !tbaa !812, !alias.scope !1893, !noalias !1890
  %i.bj = getelementptr i8, ptr %next.gep280, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep280, align 8, !tbaa !812, !alias.scope !1890, !noalias !1885
  store <2 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !812, !alias.scope !1890, !noalias !1885
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !1895

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader330

.lr.ph.i.i.i.i.i.i.i.preheader330:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader330, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader330 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader330 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %i.bl = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !1888, !noalias !1885
  store i64 %i.bl, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !1885, !noalias !1888
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !812, !alias.scope !1888, !noalias !1885
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1896

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc65
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.as, %.noexc65 ], [ %i.be, %middle.block ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread264, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread264: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.as, ptr %i.z, align 8, !tbaa !814
  store ptr %i.bo, ptr %i.ab, align 8, !tbaa !808
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bp, ptr %i.ad, align 8, !tbaa !811
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #26
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !505 ; 3 uses
  store ptr %i.as, ptr %i.z, align 8, !tbaa !814
  store ptr %i.bo, ptr %i.ab, align 8, !tbaa !808
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bq, ptr %i.ad, align 8, !tbaa !811
  %.not.i66 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit
  %i.br = load ptr, ptr %.pre.pre, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(40) %.pre.pre) #23, !inline_history !506
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread264, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.j:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit72

bb.k:                                             ; preds = %bb.d
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit69

bb.l:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i67 = icmp eq ptr %i.aa, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit69, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i68

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i68: ; preds = %bb.l
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.aa) #23, !inline_history !857
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit69

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit69: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i68, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.k ], [ %i.bx, %bb.l ], [ %i.bx, %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i68 ] ; 2 uses
  %i.cb = load ptr, ptr %4, align 8, !tbaa !505   ; 3 uses
  %.not.i70 = icmp eq ptr %i.cb, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit72, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i71

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i71: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit69
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(40) %i.cb) #23, !inline_history !506
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit72

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit72: ; preds = %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i71, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit69, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.j ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit69 ], [ %.pn, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bn

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1897 ; 5 uses
  %.not = icmp eq ptr %i.cg, null                 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1898
  %.not39 = icmp eq ptr %i.ci, null
  br i1 %.not39, label %bb.bl, label %.thread

bb.o:                                             ; preds = %bb.m
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !519
  %i.ck = icmp eq i32 %i.cj, 409
  br i1 %i.ck, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  %i.cl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.q unwind label %bb.x       ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 4, ptr %i.cm, align 8, !tbaa !795, !noalias !1899
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb20LimitPercentModifierE, i64 16), ptr %i.cl, align 8, !tbaa !33, !noalias !1899
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !noalias !1899
  store ptr %i.cl, ptr %5, align 8, !tbaa !1902, !alias.scope !1899
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.cg, ptr %6, align 8
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery14PGLimitPercentELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %6, align 8, !tbaa !1904
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1907
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %i.cq)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LimitPercentModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !150
  store ptr null, ptr %7, align 8, !tbaa !150
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !150 ; 3 uses
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !150
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.t
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(56) %i.cu) #23, !inline_history !275
  %.pr = load ptr, ptr %7, align 8, !tbaa !150    ; 3 uses
  %.not.i75 = icmp eq ptr %.pr, null
  br i1 %.not.i75, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.cy = load ptr, ptr %.pr, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.t, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1898 ; 2 uses
  %.not58 = icmp eq ptr %i.dc, null
  br i1 %.not58, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %8, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %i.dc)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LimitPercentModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  %i.df = load ptr, ptr %8, align 8, !tbaa !150
  store ptr null, ptr %8, align 8, !tbaa !150
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !150 ; 3 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !150
  %.not.i.i.i.i.i76 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i76, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit81, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit78

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit78: ; preds = %bb.w
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(56) %i.dg) #23, !inline_history !275
  %.pr193 = load ptr, ptr %8, align 8, !tbaa !150 ; 3 uses
  %.not.i79 = icmp eq ptr %.pr193, null
  br i1 %.not.i79, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit81, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i80

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i80: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit78
  %i.dk = load ptr, ptr %.pr193, align 8, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(56) %.pr193) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit81

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit81: ; preds = %bb.w, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit78, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ad

bb.x:                                             ; preds = %bb.p
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit113

bb.y:                                             ; preds = %bb.q
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110

bb.z:                                             ; preds = %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84

bb.aa:                                            ; preds = %bb.s
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !150   ; 3 uses
  %.not.i82 = icmp eq ptr %i.dr, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i83

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i83: ; preds = %bb.aa
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !33
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(56) %i.dr) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i83, %bb.aa, %bb.z
  %.pn56 = phi { ptr, i32 } [ %i.dp, %bb.z ], [ %i.dq, %bb.aa ], [ %i.dq, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110

bb.ab:                                            ; preds = %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit87

bb.ac:                                            ; preds = %bb.v
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %8, align 8, !tbaa !150   ; 3 uses
  %.not.i85 = icmp eq ptr %i.dx, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i86: ; preds = %bb.ac
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(56) %i.dx) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i86, %bb.ac, %bb.ab
  %.pn59 = phi { ptr, i32 } [ %i.dv, %bb.ab ], [ %i.dw, %bb.ac ], [ %i.dw, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit81, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !1902  ; 5 uses
  store ptr null, ptr %5, align 8, !tbaa !1902
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !808 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !811
  %.not.i.i88 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not.i.i88, label %bb.ae, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106.thread

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106.thread: ; preds = %bb.ad
  %i.eh = ptrtoint ptr %i.ec to i64
  store i64 %i.eh, ptr %i.ee, align 8, !tbaa !812
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ei, ptr %i.ed, align 8, !tbaa !808
  br label %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ej = load ptr, ptr %i.eb, align 8, !tbaa !814 ; 10 uses
  %i.ek = ptrtoint ptr %i.ee to i64               ; 3 uses
  %i.el = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 3 uses
  %i.en = icmp eq i64 %i.em, 9223372036854775800
  br i1 %i.en, label %bb.af, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i89

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc101 unwind label %bb.ag

.noexc101:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i89: ; preds = %bb.ae
  %i.eo = ashr exact i64 %i.em, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i90 = call i64 @llvm.umax.i64(i64 %i.eo, i64 1)
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i.i90, %i.eo ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  %i.er = call i64 @llvm.umin.i64(i64 %i.ep, i64 1152921504606846975)
  %i.es = select i1 %i.eq, i64 1152921504606846975, i64 %i.er ; 4 uses
  %.not.i.i.i.i91 = icmp ne i64 %i.es, 0
  call void @llvm.assume(i1 %.not.i.i.i.i91)
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #25
          to label %.noexc102 unwind label %bb.ag ; 12 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i89
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.em
  %i.ew = ptrtoint ptr %i.ec to i64
  store i64 %i.ew, ptr %i.ev, align 8, !tbaa !812
  %.not10.i.i.i.i.i.i.i92 = icmp eq ptr %i.ej, %i.ee
  br i1 %.not10.i.i.i.i.i.i.i92, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i97, label %.lr.ph.i.i.i.i.i.i.i93.preheader

.lr.ph.i.i.i.i.i.i.i93.preheader:                 ; preds = %.noexc102
  %i.ex = sub i64 %i.ek, %i.el
  %i.ey = add i64 %i.ex, -8                       ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check290 = icmp ult i64 %i.ey, 152
  br i1 %min.iters.check290, label %.lr.ph.i.i.i.i.i.i.i93.preheader328, label %vector.memcheck283

vector.memcheck283:                               ; preds = %.lr.ph.i.i.i.i.i.i.i93.preheader
  %i.fb = add i64 %i.ek, -8
  %i.fc = sub i64 %i.fb, %i.el
  %i.fd = and i64 %i.fc, -8
  %i.fe = add i64 %i.fd, 8                        ; 2 uses
  %scevgep284 = getelementptr i8, ptr %i.eu, i64 %i.fe
  %scevgep285 = getelementptr i8, ptr %i.ej, i64 %i.fe
  %bound0286 = icmp ult ptr %i.eu, %scevgep285
  %bound1287 = icmp ult ptr %i.ej, %scevgep284
  %found.conflict288 = and i1 %bound0286, %bound1287
  br i1 %found.conflict288, label %.lr.ph.i.i.i.i.i.i.i93.preheader328, label %vector.ph291

vector.ph291:                                     ; preds = %vector.memcheck283
  %n.vec293 = and i64 %i.fa, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec293, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %i.eu, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ej, i64 %i.ff
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph291
  %index295 = phi i64 [ 0, %vector.ph291 ], [ %index.next300, %vector.body294 ] ; 2 uses
  %i.fi = shl i64 %index295, 3                    ; 2 uses
  %next.gep296 = getelementptr i8, ptr %i.eu, i64 %i.fi ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.ej, i64 %i.fi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %i.fj = getelementptr i8, ptr %next.gep297, i64 16
  %wide.load298 = load <2 x i64>, ptr %next.gep297, align 8, !tbaa !812, !alias.scope !1914, !noalias !1909
  %wide.load299 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !812, !alias.scope !1914, !noalias !1909
  %i.fk = getelementptr i8, ptr %next.gep296, i64 16
  store <2 x i64> %wide.load298, ptr %next.gep296, align 8, !tbaa !812, !alias.scope !1917, !noalias !1914
  store <2 x i64> %wide.load299, ptr %i.fk, align 8, !tbaa !812, !alias.scope !1917, !noalias !1914
  %i.fl = getelementptr i8, ptr %next.gep297, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep297, align 8, !tbaa !812, !alias.scope !1914, !noalias !1909
  store <2 x ptr> splat (ptr null), ptr %i.fl, align 8, !tbaa !812, !alias.scope !1914, !noalias !1909
  %index.next300 = add nuw i64 %index295, 4       ; 2 uses
  %i.fm = icmp eq i64 %index.next300, %n.vec293
  br i1 %i.fm, label %middle.block301, label %vector.body294, !llvm.loop !1919

middle.block301:                                  ; preds = %vector.body294
  %cmp.n302 = icmp eq i64 %i.fa, %n.vec293
  br i1 %cmp.n302, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i97, label %.lr.ph.i.i.i.i.i.i.i93.preheader328

.lr.ph.i.i.i.i.i.i.i93.preheader328:              ; preds = %vector.memcheck283, %.lr.ph.i.i.i.i.i.i.i93.preheader, %middle.block301
  %.012.i.i.i.i.i.i.i94.ph = phi ptr [ %i.eu, %vector.memcheck283 ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i93.preheader ], [ %i.fg, %middle.block301 ]
  %.0911.i.i.i.i.i.i.i95.ph = phi ptr [ %i.ej, %vector.memcheck283 ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i93.preheader ], [ %i.fh, %middle.block301 ]
  br label %.lr.ph.i.i.i.i.i.i.i93

.lr.ph.i.i.i.i.i.i.i93:                           ; preds = %.lr.ph.i.i.i.i.i.i.i93.preheader328, %.lr.ph.i.i.i.i.i.i.i93
  %.012.i.i.i.i.i.i.i94 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i93 ], [ %.012.i.i.i.i.i.i.i94.ph, %.lr.ph.i.i.i.i.i.i.i93.preheader328 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i95 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i93 ], [ %.0911.i.i.i.i.i.i.i95.ph, %.lr.ph.i.i.i.i.i.i.i93.preheader328 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %i.fn = load i64, ptr %.0911.i.i.i.i.i.i.i95, align 8, !tbaa !812, !alias.scope !1912, !noalias !1909
  store i64 %i.fn, ptr %.012.i.i.i.i.i.i.i94, align 8, !tbaa !812, !alias.scope !1909, !noalias !1912
  store ptr null, ptr %.0911.i.i.i.i.i.i.i95, align 8, !tbaa !812, !alias.scope !1912, !noalias !1909
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i95, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i94, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i96 = icmp eq ptr %i.fo, %i.ee
  br i1 %.not.i.i.i.i.i.i.i96, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i97, label %.lr.ph.i.i.i.i.i.i.i93, !llvm.loop !1920

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i97: ; preds = %.lr.ph.i.i.i.i.i.i.i93, %middle.block301, %.noexc102
  %.0.lcssa.i.i.i.i.i.i.i98 = phi ptr [ %i.eu, %.noexc102 ], [ %i.fg, %middle.block301 ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i93 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i98, i64 8 ; 2 uses
  %.not.i23.i.i.i99 = icmp eq ptr %i.ej, null
  br i1 %.not.i23.i.i.i99, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106.thread268, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106.thread268: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i97
  store ptr %i.eu, ptr %i.eb, align 8, !tbaa !814
  store ptr %i.fq, ptr %i.ed, align 8, !tbaa !808
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  store ptr %i.fr, ptr %i.ef, align 8, !tbaa !811
  br label %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i97
  call void @_ZdlPv(ptr noundef nonnull %i.ej) #26
  %.pre207.pre = load ptr, ptr %5, align 8, !tbaa !1902 ; 3 uses
  store ptr %i.eu, ptr %i.eb, align 8, !tbaa !814
  store ptr %i.fq, ptr %i.ed, align 8, !tbaa !808
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  store ptr %i.fs, ptr %i.ef, align 8, !tbaa !811
  %.not.i107 = icmp eq ptr %.pre207.pre, null
  br i1 %.not.i107, label %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20LimitPercentModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20LimitPercentModifierEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106
  %i.ft = load ptr, ptr %.pre207.pre, align 8, !tbaa !33
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(32) %.pre207.pre) #23, !inline_history !1921
  br label %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106.thread268, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106.thread, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit106, %_ZNKSt14default_deleteIN6duckdb20LimitPercentModifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bl

bb.ag:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i89, %bb.af
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i108 = icmp eq ptr %i.ec, null
  br i1 %.not.i108, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i109

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i109: ; preds = %bb.ag
  %i.fx = load ptr, ptr %i.ec, align 8, !tbaa !33
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ec) #23, !inline_history !857
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i109, %bb.ag, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit87, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84, %bb.y
  %.pn61 = phi { ptr, i32 } [ %i.do, %bb.y ], [ %.pn59, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit87 ], [ %.pn56, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84 ], [ %i.fw, %bb.ag ], [ %i.fw, %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i109 ] ; 2 uses
  %i.ga = load ptr, ptr %5, align 8, !tbaa !1902  ; 3 uses
  %.not.i111 = icmp eq ptr %i.ga, null
  br i1 %.not.i111, label %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit113, label %_ZNKSt14default_deleteIN6duckdb20LimitPercentModifierEEclEPS1_.exit.i112

_ZNKSt14default_deleteIN6duckdb20LimitPercentModifierEEclEPS1_.exit.i112: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %i.ga) #23, !inline_history !1921
  br label %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit113

_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit113: ; preds = %_ZNKSt14default_deleteIN6duckdb20LimitPercentModifierEEclEPS1_.exit.i112, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110, %bb.x
  %.pn61.pn = phi { ptr, i32 } [ %i.dn, %bb.x ], [ %.pn61, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit110 ], [ %.pn61, %_ZNKSt14default_deleteIN6duckdb20LimitPercentModifierEEclEPS1_.exit.i112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bn

.thread:                                          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  %i.ge = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.ah unwind label %bb.am     ; 4 uses

bb.ah:                                            ; preds = %.thread
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i8 1, ptr %i.gf, align 8, !tbaa !795, !noalias !1922
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb13LimitModifierE, i64 16), ptr %i.ge, align 8, !tbaa !33, !noalias !1922
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i8 0, i64 16, i1 false), !noalias !1922
  store ptr %i.ge, ptr %9, align 8, !tbaa !798, !alias.scope !1922
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 150
  %i.gi = load i8, ptr %i.gh, align 2, !tbaa !1925, !range !204, !noundef !205
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !1898 ; 2 uses
  %.not47 = icmp eq ptr %i.gl, null
  br i1 %.not47, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %i.gl)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.gm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24 ; 2 uses
  %i.go = load ptr, ptr %10, align 8, !tbaa !150
  store ptr null, ptr %10, align 8, !tbaa !150
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !150 ; 3 uses
  store ptr %i.go, ptr %i.gn, align 8, !tbaa !150
  %.not.i.i.i.i.i115 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i115, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit120, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit117

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit117: ; preds = %bb.al
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !33
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(56) %i.gp) #23, !inline_history !275
  %.pr195 = load ptr, ptr %10, align 8, !tbaa !150 ; 3 uses
  %.not.i118 = icmp eq ptr %.pr195, null
  br i1 %.not.i118, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit120, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i119

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i119: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit117
  %i.gt = load ptr, ptr %.pr195, align 8, !tbaa !33
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(56) %.pr195) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit120

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit120: ; preds = %bb.al, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit117, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.pre208 = load ptr, ptr %i.cf, align 8, !tbaa !1897
  br label %bb.ap

bb.am:                                            ; preds = %.thread
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit176

bb.an:                                            ; preds = %bb.aj
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit123
end_hunk_13
begin_hunk_14_@_ZN6duckdb11Transformer18TransformModifiersERN17duckdb_libpgquery12PGSelectStmtERNS_9QueryNodeE:bb.a
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(56) %i.hq) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit132

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit132: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i131, %bb.au, %bb.at
  %.pn51 = phi { ptr, i32 } [ %i.ho, %bb.at ], [ %i.hp, %bb.au ], [ %i.hp, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173

bb.av:                                            ; preds = %bb.ah
  br i1 %.not, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %i.cg)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.hu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %i.hw = load ptr, ptr %12, align 8, !tbaa !150
  store ptr null, ptr %12, align 8, !tbaa !150
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !150 ; 3 uses
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !150
  %.not.i.i.i.i.i133 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i133, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit138, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit135

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit135: ; preds = %bb.ay
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !33
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(56) %i.hx) #23, !inline_history !275
  %.pr199 = load ptr, ptr %12, align 8, !tbaa !150 ; 3 uses
  %.not.i136 = icmp eq ptr %.pr199, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit138, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i137

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i137: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit135
  %i.ib = load ptr, ptr %.pr199, align 8, !tbaa !33
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(56) %.pr199) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit138

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit138: ; preds = %bb.ay, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit135, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bb

bb.az:                                            ; preds = %bb.aw
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit141

bb.ba:                                            ; preds = %bb.ax
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %12, align 8, !tbaa !150  ; 3 uses
  %.not.i139 = icmp eq ptr %i.ig, null
  br i1 %.not.i139, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit141, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i140

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i140: ; preds = %bb.ba
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !33
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(56) %i.ig) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit141

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit141: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i140, %bb.ba, %bb.az
  %.pn42 = phi { ptr, i32 } [ %i.ie, %bb.az ], [ %i.if, %bb.ba ], [ %i.if, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit138, %bb.av
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !1898 ; 2 uses
  %.not44 = icmp eq ptr %i.il, null
  br i1 %.not44, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %13, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %i.il)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.im = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 2 uses
  %i.io = load ptr, ptr %13, align 8, !tbaa !150
  store ptr null, ptr %13, align 8, !tbaa !150
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !150 ; 3 uses
  store ptr %i.io, ptr %i.in, align 8, !tbaa !150
  %.not.i.i.i.i.i142 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i142, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit147, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit144

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit144: ; preds = %bb.be
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !33
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(56) %i.ip) #23, !inline_history !275
  %.pr201 = load ptr, ptr %13, align 8, !tbaa !150 ; 3 uses
  %.not.i145 = icmp eq ptr %.pr201, null
  br i1 %.not.i145, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit147, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i146

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i146: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit144
  %i.it = load ptr, ptr %.pr201, align 8, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(56) %.pr201) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit147

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit147: ; preds = %bb.be, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit144, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bc
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit150

bb.bg:                                            ; preds = %bb.bd
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %13, align 8, !tbaa !150  ; 3 uses
  %.not.i148 = icmp eq ptr %i.iy, null
  br i1 %.not.i148, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit150, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i149

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i149: ; preds = %bb.bg
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !33
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(56) %i.iy) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit150

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit150: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i149, %bb.bg, %bb.bf
  %.pn45 = phi { ptr, i32 } [ %i.iw, %bb.bf ], [ %i.ix, %bb.bg ], [ %i.ix, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173

bb.bh:                                            ; preds = %bb.bb, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit147, %bb.ap, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit129
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.jd = load ptr, ptr %9, align 8, !tbaa !798   ; 5 uses
  store ptr null, ptr %9, align 8, !tbaa !798
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !808 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !811
  %.not.i.i151 = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i.i151, label %bb.bi, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169.thread

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169.thread: ; preds = %bb.bh
  %i.ji = ptrtoint ptr %i.jd to i64
  store i64 %i.ji, ptr %i.jf, align 8, !tbaa !812
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %i.jj, ptr %i.je, align 8, !tbaa !808
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit

bb.bi:                                            ; preds = %bb.bh
  %i.jk = load ptr, ptr %i.jc, align 8, !tbaa !814 ; 10 uses
  %i.jl = ptrtoint ptr %i.jf to i64               ; 3 uses
  %i.jm = ptrtoint ptr %i.jk to i64               ; 3 uses
  %i.jn = sub i64 %i.jl, %i.jm                    ; 3 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.bj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i152

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc164 unwind label %bb.bk

.noexc164:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i152: ; preds = %bb.bi
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i153 = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i.i153, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 4 uses
  %.not.i.i.i.i154 = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i154)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #25
          to label %.noexc165 unwind label %bb.bk ; 12 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i152
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jn
  %i.jx = ptrtoint ptr %i.jd to i64
  store i64 %i.jx, ptr %i.jw, align 8, !tbaa !812
  %.not10.i.i.i.i.i.i.i155 = icmp eq ptr %i.jk, %i.jf
  br i1 %.not10.i.i.i.i.i.i.i155, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i156.preheader

.lr.ph.i.i.i.i.i.i.i156.preheader:                ; preds = %.noexc165
  %i.jy = sub i64 %i.jl, %i.jm
  %i.jz = add i64 %i.jy, -8                       ; 2 uses
  %i.ka = lshr i64 %i.jz, 3
  %i.kb = add nuw nsw i64 %i.ka, 1                ; 2 uses
  %min.iters.check312 = icmp ult i64 %i.jz, 152
  br i1 %min.iters.check312, label %.lr.ph.i.i.i.i.i.i.i156.preheader327, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph.i.i.i.i.i.i.i156.preheader
  %i.kc = add i64 %i.jl, -8
  %i.kd = sub i64 %i.kc, %i.jm
  %i.ke = and i64 %i.kd, -8
  %i.kf = add i64 %i.ke, 8                        ; 2 uses
  %scevgep306 = getelementptr i8, ptr %i.jv, i64 %i.kf
  %scevgep307 = getelementptr i8, ptr %i.jk, i64 %i.kf
  %bound0308 = icmp ult ptr %i.jv, %scevgep307
  %bound1309 = icmp ult ptr %i.jk, %scevgep306
  %found.conflict310 = and i1 %bound0308, %bound1309
  br i1 %found.conflict310, label %.lr.ph.i.i.i.i.i.i.i156.preheader327, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck305
  %n.vec315 = and i64 %i.kb, 4611686018427387900  ; 3 uses
  %i.kg = shl i64 %n.vec315, 3                    ; 2 uses
  %i.kh = getelementptr i8, ptr %i.jv, i64 %i.kg  ; 2 uses
  %i.ki = getelementptr i8, ptr %i.jk, i64 %i.kg
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph313
  %index317 = phi i64 [ 0, %vector.ph313 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.kj = shl i64 %index317, 3                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.jv, i64 %i.kj ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.jk, i64 %i.kj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  %i.kk = getelementptr i8, ptr %next.gep319, i64 16
  %wide.load320 = load <2 x i64>, ptr %next.gep319, align 8, !tbaa !812, !alias.scope !1931, !noalias !1926
  %wide.load321 = load <2 x i64>, ptr %i.kk, align 8, !tbaa !812, !alias.scope !1931, !noalias !1926
  %i.kl = getelementptr i8, ptr %next.gep318, i64 16
  store <2 x i64> %wide.load320, ptr %next.gep318, align 8, !tbaa !812, !alias.scope !1934, !noalias !1931
  store <2 x i64> %wide.load321, ptr %i.kl, align 8, !tbaa !812, !alias.scope !1934, !noalias !1931
  %i.km = getelementptr i8, ptr %next.gep319, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep319, align 8, !tbaa !812, !alias.scope !1931, !noalias !1926
  store <2 x ptr> splat (ptr null), ptr %i.km, align 8, !tbaa !812, !alias.scope !1931, !noalias !1926
  %index.next322 = add nuw i64 %index317, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.kn, label %middle.block323, label %vector.body316, !llvm.loop !1936

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.kb, %n.vec315
  br i1 %cmp.n324, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i156.preheader327

.lr.ph.i.i.i.i.i.i.i156.preheader327:             ; preds = %vector.memcheck305, %.lr.ph.i.i.i.i.i.i.i156.preheader, %middle.block323
  %.012.i.i.i.i.i.i.i157.ph = phi ptr [ %i.jv, %vector.memcheck305 ], [ %i.jv, %.lr.ph.i.i.i.i.i.i.i156.preheader ], [ %i.kh, %middle.block323 ]
  %.0911.i.i.i.i.i.i.i158.ph = phi ptr [ %i.jk, %vector.memcheck305 ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i156.preheader ], [ %i.ki, %middle.block323 ]
  br label %.lr.ph.i.i.i.i.i.i.i156

.lr.ph.i.i.i.i.i.i.i156:                          ; preds = %.lr.ph.i.i.i.i.i.i.i156.preheader327, %.lr.ph.i.i.i.i.i.i.i156
  %.012.i.i.i.i.i.i.i157 = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i.i.i156 ], [ %.012.i.i.i.i.i.i.i157.ph, %.lr.ph.i.i.i.i.i.i.i156.preheader327 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i158 = phi ptr [ %i.kp, %.lr.ph.i.i.i.i.i.i.i156 ], [ %.0911.i.i.i.i.i.i.i158.ph, %.lr.ph.i.i.i.i.i.i.i156.preheader327 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  %i.ko = load i64, ptr %.0911.i.i.i.i.i.i.i158, align 8, !tbaa !812, !alias.scope !1929, !noalias !1926
  store i64 %i.ko, ptr %.012.i.i.i.i.i.i.i157, align 8, !tbaa !812, !alias.scope !1926, !noalias !1929
  store ptr null, ptr %.0911.i.i.i.i.i.i.i158, align 8, !tbaa !812, !alias.scope !1929, !noalias !1926
  %i.kp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i158, i64 8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i157, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i159 = icmp eq ptr %i.kp, %i.jf
  br i1 %.not.i.i.i.i.i.i.i159, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i156, !llvm.loop !1937

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i160: ; preds = %.lr.ph.i.i.i.i.i.i.i156, %middle.block323, %.noexc165
  %.0.lcssa.i.i.i.i.i.i.i161 = phi ptr [ %i.jv, %.noexc165 ], [ %i.kh, %middle.block323 ], [ %i.kq, %.lr.ph.i.i.i.i.i.i.i156 ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i161, i64 8 ; 2 uses
  %.not.i23.i.i.i162 = icmp eq ptr %i.jk, null
  br i1 %.not.i23.i.i.i162, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169.thread272, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169.thread272: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i160
  store ptr %i.jv, ptr %i.jc, align 8, !tbaa !814
  store ptr %i.kr, ptr %i.je, align 8, !tbaa !808
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jt
  store ptr %i.ks, ptr %i.jg, align 8, !tbaa !811
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i160
  call void @_ZdlPv(ptr noundef nonnull %i.jk) #26
  %.pre209.pre = load ptr, ptr %9, align 8, !tbaa !798 ; 3 uses
  store ptr %i.jv, ptr %i.jc, align 8, !tbaa !814
  store ptr %i.kr, ptr %i.je, align 8, !tbaa !808
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jt
  store ptr %i.kt, ptr %i.jg, align 8, !tbaa !811
  %.not.i170 = icmp eq ptr %.pre209.pre, null
  br i1 %.not.i170, label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169
  %i.ku = load ptr, ptr %.pre209.pre, align 8, !tbaa !33
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(32) %.pre209.pre) #23, !inline_history !856
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169.thread272, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169.thread, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit169, %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i152, %bb.bj
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i171 = icmp eq ptr %i.jd, null
  br i1 %.not.i171, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i172

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i172: ; preds = %bb.bk
  %i.ky = load ptr, ptr %i.jd, align 8, !tbaa !33
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.jd) #23, !inline_history !857
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i172, %bb.bk, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit150, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit141, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit132, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit123
  %.pn53 = phi { ptr, i32 } [ %.pn42, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit141 ], [ %.pn51, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit132 ], [ %.pn48, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit123 ], [ %.pn45, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit150 ], [ %i.kx, %bb.bk ], [ %i.kx, %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i172 ] ; 2 uses
  %i.lb = load ptr, ptr %9, align 8, !tbaa !798   ; 3 uses
  %.not.i174 = icmp eq ptr %i.lb, null
  br i1 %.not.i174, label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit176, label %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i175

_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i175: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !33
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(32) %i.lb) #23, !inline_history !856
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit176

_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit176: ; preds = %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i175, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173, %bb.am
  %.pn53.pn = phi { ptr, i32 } [ %i.gw, %bb.am ], [ %.pn53, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit173 ], [ %.pn53, %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bn

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit, %bb.n
  %i.lf = load ptr, ptr %3, align 16, !tbaa !312  ; 3 uses
  %i.lg = load ptr, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lf, %i.lg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bl, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lm, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i ], [ %i.lf, %bb.bl ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i.i.i.i177 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i.i.i177, label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !33
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(56) %i.li) #23, !inline_history !316
  br label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lm, %i.lg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !317

_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !312
  br label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bl
  %i.ln = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.lf, %bb.bl ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ln) #26
  br label %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit176, %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit113, %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit72, %bb.i
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %_ZNSt10unique_ptrIN6duckdb20LimitPercentModifierESt14default_deleteIS1_EED2Ev.exit113 ], [ %.pn53.pn, %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit176 ], [ %.pn.pn, %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit72 ], [ %i.bu, %bb.i ]
  call void @_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn61.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !505    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e
end_hunk_14
begin_hunk_15_@_ZN6duckdb11Transformer13AddPivotEntryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_10SelectNodeESt14default_deleteIS8_ELb1EEENS7_INS_16ParsedExpressionES9_ISC_ELb1EEENS7_INS_9QueryNodeES9_ISF_ELb1EEEb:bb.a
  %i.bf = icmp eq ptr %i.bd, %i.be                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21: ; preds = %bb.g
  br i1 %i.bf, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.bf, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !25 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %.not21.i = icmp eq ptr %1, %i.az
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bh, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !10
  store i8 %i.bj, ptr %i.ba, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !25 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !25
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !10
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !25
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !25
  %i.br = load i64, ptr %i.be, align 8, !tbaa !10
  store i64 %i.br, ptr %i.bb, align 8, !tbaa !10
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bs = load i64, ptr %i.bb, align 8, !tbaa !10
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !25
  %i.bw = load i64, ptr %i.be, align 8, !tbaa !10
  store i64 %i.bw, ptr %i.bb, align 8, !tbaa !10
  %.not.i20 = icmp eq ptr %i.ba, null
  br i1 %.not.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ba, ptr %1, align 8, !tbaa !23
  store i64 %i.bs, ptr %i.be, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.be, ptr %1, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ba, %bb.l ], [ %i.be, %bb.m ], [ %i.bd, %bb.h ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !25
  store i8 0, ptr %i.bx, align 1, !tbaa !10
  %i.bz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !806
  store ptr null, ptr %2, align 8, !tbaa !806
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !806 ; 3 uses
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !806
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.n
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(240) %i.cc) #23, !inline_history !2004
  br label %_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i.i
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 2 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !150
  store ptr null, ptr %3, align 8, !tbaa !150
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !150 ; 3 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !150
  %.not.i.i.i.i.i22 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i22, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(56) %i.cj) #23, !inline_history !275
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 2 uses
  %i.cp = load ptr, ptr %4, align 8, !tbaa !525
  store ptr null, ptr %4, align 8, !tbaa !525
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !525 ; 3 uses
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !525
  %.not.i.i.i.i.i23 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i23, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cq) #23, !inline_history !719
  br label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.p, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i
  %i.cu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store i8 %i.a, ptr %i.cv, align 8, !tbaa !2005
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2014 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2015
  %.not.i.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i, label %bb.r, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.q
  %i.db = load i64, ptr %10, align 8, !tbaa !2002
  store i64 %i.db, ptr %i.cy, align 8, !tbaa !2002
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !2014
  br label %_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !2016 ; 10 uses
  %i.de = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.df = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.s, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #25
          to label %.noexc24 unwind label %bb.v   ; 10 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  %i.dq = load i64, ptr %10, align 8, !tbaa !2002
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !2002
  store ptr null, ptr %10, align 8, !tbaa !2002
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cy
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc24
  %i.dr = sub i64 %i.de, %i.df
  %i.ds = add i64 %i.dr, -8                       ; 2 uses
  %i.dt = lshr i64 %i.ds, 3
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ds, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dv = add i64 %i.de, -8
  %i.dw = sub i64 %i.dv, %i.df
  %i.dx = and i64 %i.dw, -8
  %i.dy = add i64 %i.dx, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.dy
  %scevgep59 = getelementptr i8, ptr %i.dd, i64 %i.dy
  %bound0 = icmp ult ptr %i.do, %scevgep59
  %bound1 = icmp ult ptr %i.dd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.du, 4611686018427387900     ; 3 uses
  %i.dz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ea = getelementptr i8, ptr %i.do, i64 %i.dz  ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dd, i64 %i.dz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ec = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.do, i64 %i.ec ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.dd, i64 %i.ec ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  %i.ed = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep60, align 8, !tbaa !2002, !alias.scope !2022, !noalias !2017
  %wide.load61 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !2002, !alias.scope !2022, !noalias !2017
  %i.ee = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2002, !alias.scope !2025, !noalias !2022
  store <2 x i64> %wide.load61, ptr %i.ee, align 8, !tbaa !2002, !alias.scope !2025, !noalias !2022
  %i.ef = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep60, align 8, !tbaa !2002, !alias.scope !2022, !noalias !2017
  store <2 x ptr> splat (ptr null), ptr %i.ef, align 8, !tbaa !2002, !alias.scope !2022, !noalias !2017
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !2027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader63

.lr.ph.i.i.i.i.i.i.i.preheader63:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.do, %vector.memcheck ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ea, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader63, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader63 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader63 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  %i.eh = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2020, !noalias !2017
  store i64 %i.eh, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2017, !noalias !2020
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2002, !alias.scope !2020, !noalias !2017
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2028

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc24
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.do, %.noexc24 ], [ %i.ea, %middle.block ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dd) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.t
  store ptr %i.do, ptr %i.cw, align 8, !tbaa !2016
  store ptr %i.ek, ptr %i.cx, align 8, !tbaa !2014
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.el, ptr %i.cz, align 8, !tbaa !2015
  %.pr = load ptr, ptr %10, align 8, !tbaa !2002  ; 7 uses
  %.not.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %.pr, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !525 ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i26, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i: ; preds = %bb.u
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.en) #23, !inline_history !2029
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i, %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !150 ; 3 uses
  %.not.i1.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i1.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !33
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(56) %i.es) #23, !inline_history !2030
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !806 ; 3 uses
  %.not.i2.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i2.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !33
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(240) %i.ex) #23, !inline_history !2031
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.fb = load ptr, ptr %.pr, align 8, !tbaa !23  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteIN6duckdb11Transformer16CreatePivotEntryEEclEPS2_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.fb) #26
  br label %_ZNKSt14default_deleteIN6duckdb11Transformer16CreatePivotEntryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6duckdb11Transformer16CreatePivotEntryEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pr) #26
  br label %_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN6duckdb11Transformer16CreatePivotEntryEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev.exit
  ret void

bb.v:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11Transformer16CreatePivotEntryESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.s, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.f
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.v
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.v ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.ag, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit16 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2002   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

end_hunk_15
begin_hunk_16_@_ZN6duckdb11Transformer22GenerateCreateEnumStmtENS_10unique_ptrINS0_16CreatePivotEntryESt14default_deleteIS2_ELb1EEE:bb.a
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 328
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25
  store i64 %i.an, ptr %i.al, align 8, !tbaa !25
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !10
  store i64 %i.ao, ptr %i.y, align 8, !tbaa !10
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ap = load i64, ptr %i.y, align 8, !tbaa !10
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 328
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !25
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !10
  store i64 %i.at, ptr %i.y, align 8, !tbaa !10
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %i.u, align 8, !tbaa !23
  store i64 %i.ap, ptr %i.ab, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.au = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.x, %bb.o ], [ %i.ab, %bb.p ], [ %i.aa, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !25
  store i8 0, ptr %i.au, align 1, !tbaa !10
  %i.aw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.q unwind label %bb.bc

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store i8 2, ptr %i.ax, align 8, !tbaa !641
  %i.ay = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.r unwind label %bb.bd

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !525
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %bb.s, label %bb.br

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.t unwind label %bb.be

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !806
  store i64 %i.bd, ptr %10, align 8, !tbaa !806
  store ptr null, ptr %i.bc, align 8, !tbaa !806
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.be = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.u unwind label %bb.bf

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %bb.v unwind label %bb.bf      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %11, ptr noundef nonnull align 8 dereferenceable(56) %i.bg)
          to label %bb.w unwind label %bb.bf

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bk = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %.noexc47 unwind label %bb.bg  ; 8 uses

.noexc47:                                         ; preds = %bb.w
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 25)
          to label %bb.x unwind label %bb.z, !noalias !2044

bb.x:                                             ; preds = %.noexc47
  %i.bl = load i64, ptr %11, align 8, !tbaa !150, !noalias !2044
  store i64 %i.bl, ptr %7, align 8, !tbaa !150, !noalias !2044
  store ptr null, ptr %11, align 8, !tbaa !150, !noalias !2044
  invoke void @_ZN6duckdb14CastExpressionC1ENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEEb(ptr noundef nonnull align 8 dereferenceable(89) %i.bk, ptr noundef nonnull %6, ptr noundef nonnull %7, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aa, !noalias !2044

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %7, align 8, !tbaa !150, !noalias !2044 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.ac, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i: ; preds = %bb.y
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33, !noalias !2044
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !2044
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(56) %i.bm) #23, !noalias !2044, !inline_history !2047
  br label %bb.ac

bb.z:                                             ; preds = %.noexc47
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %7, align 8, !tbaa !150, !noalias !2044 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.bs, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i: ; preds = %bb.aa
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !33, !noalias !2044
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !2044
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(56) %i.bs) #23, !noalias !2044, !inline_history !2047
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i, %bb.aa
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23, !noalias !2044
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.br, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i ], [ %i.bq, %bb.z ]
  call void @_ZdlPv(ptr noundef nonnull %i.bk) #26, !noalias !2044
  br label %.body48

bb.ac:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i, %bb.y
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23, !noalias !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ad unwind label %_ZNKSt14default_deleteIN6duckdb14CastExpressionEEclEPS1_.exit.i138 ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !148 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 136 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !149
  %.not.i.i50 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not.i.i50, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = ptrtoint ptr %i.bk to i64
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !150
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !152 ; 10 uses
  %i.cf = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.ag, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc51 unwind label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit115

.noexc51:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #25
          to label %.noexc52 unwind label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit115 ; 10 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  %i.cr = ptrtoint ptr %i.bk to i64
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bz
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc52
  %i.cs = sub i64 %i.cf, %i.cg
  %i.ct = add i64 %i.cs, -8                       ; 2 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader345, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cw = add i64 %i.cf, -8
  %i.cx = sub i64 %i.cw, %i.cg
  %i.cy = and i64 %i.cx, -8
  %i.cz = add i64 %i.cy, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cp, i64 %i.cz
  %scevgep294 = getelementptr i8, ptr %i.ce, i64 %i.cz
  %bound0 = icmp ult ptr %i.cp, %scevgep294
  %bound1 = icmp ult ptr %i.ce, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader345, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cv, 4611686018427387900     ; 3 uses
  %i.da = shl i64 %n.vec, 3                       ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ce, i64 %i.da
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.dd ; 2 uses
  %next.gep295 = getelementptr i8, ptr %i.ce, i64 %i.dd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  %i.de = getelementptr i8, ptr %next.gep295, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep295, align 8, !tbaa !150, !alias.scope !2053, !noalias !2048
  %wide.load296 = load <2 x i64>, ptr %i.de, align 8, !tbaa !150, !alias.scope !2053, !noalias !2048
  %i.df = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !150, !alias.scope !2056, !noalias !2053
  store <2 x i64> %wide.load296, ptr %i.df, align 8, !tbaa !150, !alias.scope !2056, !noalias !2053
  %i.dg = getelementptr i8, ptr %next.gep295, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep295, align 8, !tbaa !150, !alias.scope !2053, !noalias !2048
  store <2 x ptr> splat (ptr null), ptr %i.dg, align 8, !tbaa !150, !alias.scope !2053, !noalias !2048
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2058

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader345

.lr.ph.i.i.i.i.i.i.i.preheader345:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.db, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader345, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader345 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader345 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  %i.di = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !2051, !noalias !2048
  store i64 %i.di, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !2048, !noalias !2051
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !150, !alias.scope !2051, !noalias !2048
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dj, %i.bz
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2059

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc52
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.noexc52 ], [ %i.db, %middle.block ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cp, ptr %i.bx, align 8, !tbaa !152
  store ptr %i.dl, ptr %i.by, align 8, !tbaa !148
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.dm, ptr %i.ca, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.dn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11Transformer16CreatePivotEntryESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ai unwind label %bb.bh

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.do = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25
          to label %.noexc56 unwind label %bb.bh  ; 5 uses

.noexc56:                                         ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !150, !noalias !2060
  store i64 %i.dq, ptr %4, align 8, !tbaa !150, !noalias !2060
  store ptr null, ptr %i.dp, align 8, !tbaa !150, !noalias !2060
  store ptr null, ptr %5, align 8, !tbaa !254, !noalias !2060
  invoke void @_ZN6duckdb18OperatorExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(80) %i.do, i8 noundef zeroext 15, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.aj unwind label %bb.ak, !noalias !2060

bb.aj:                                            ; preds = %.noexc56
  %i.dr = load ptr, ptr %5, align 8, !tbaa !150, !noalias !2060 ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i54, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i55

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i55: ; preds = %bb.aj
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !33, !noalias !2060
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !2060
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(56) %i.dr) #23, !noalias !2060, !inline_history !2063
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i55, %bb.aj
  %i.dv = load ptr, ptr %4, align 8, !tbaa !150, !noalias !2060 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.dv, null
  br i1 %.not.i4.i, label %bb.al, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !33, !noalias !2060
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !2060
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(56) %i.dv) #23, !noalias !2060, !inline_history !2063
  br label %bb.al

bb.ak:                                            ; preds = %.noexc56
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %5, align 8, !tbaa !150, !noalias !2060 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.ea, null
  br i1 %.not.i7.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i: ; preds = %bb.ak
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !33, !noalias !2060
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !2060
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(56) %i.ea) #23, !noalias !2060, !inline_history !2063
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i8.i, %bb.ak
  %i.ee = load ptr, ptr %4, align 8, !tbaa !150, !noalias !2060 ; 3 uses
  %.not.i10.i = icmp eq ptr %i.ee, null
  br i1 %.not.i10.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !33, !noalias !2060
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !2060
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(56) %i.ee) #23, !noalias !2060, !inline_history !2063
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i11.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i
  call void @_ZdlPv(ptr noundef nonnull %i.do) #26, !noalias !2060
  br label %.body48

bb.al:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i5.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ei = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.am unwind label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit118

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 152 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !150 ; 3 uses
  store ptr %i.do, ptr %i.ej, align 8, !tbaa !150
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit61, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.am
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !33
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(56) %i.ek) #23, !inline_history !275
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit61

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit61: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.am
  %i.eo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.an unwind label %bb.bi     ; 3 uses

bb.an:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit61
  %i.ep = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %bb.ao unwind label %bb.bj     ; 7 uses

bb.ao:                                            ; preds = %bb.an
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i8 3, ptr %i.eq, align 8, !tbaa !795, !noalias !2064
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb16DistinctModifierE, i64 16), ptr %i.ep, align 8, !tbaa !33, !noalias !2064
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, i8 0, i64 24, i1 false), !noalias !2064
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !808 ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !811
  %.not.i.i63 = icmp eq ptr %i.eu, %i.ew
  br i1 %.not.i.i63, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ex = ptrtoint ptr %i.ep to i64
  store i64 %i.ex, ptr %i.eu, align 8, !tbaa !812
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !808
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ez = load ptr, ptr %i.es, align 8, !tbaa !814 ; 10 uses
  %i.fa = ptrtoint ptr %i.eu to i64               ; 3 uses
  %i.fb = ptrtoint ptr %i.ez to i64               ; 3 uses
  %i.fc = sub i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = icmp eq i64 %i.fc, 9223372036854775800
  br i1 %i.fd, label %bb.ar, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc73 unwind label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit124

.noexc73:                                         ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.fe = ashr exact i64 %i.fc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i64 = call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i.i64, %i.fe ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fe
  %i.fh = call i64 @llvm.umin.i64(i64 %i.ff, i64 1152921504606846975)
  %i.fi = select i1 %i.fg, i64 1152921504606846975, i64 %i.fh ; 3 uses
  %.not.i.i.i.i65 = icmp ne i64 %i.fi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i65)
  %i.fj = shl nuw nsw i64 %i.fi, 3
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #25
          to label %.noexc74 unwind label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit124 ; 10 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fc
  %i.fm = ptrtoint ptr %i.ep to i64
  store i64 %i.fm, ptr %i.fl, align 8, !tbaa !812
  %.not10.i.i.i.i.i.i.i66 = icmp eq ptr %i.ez, %i.eu
  br i1 %.not10.i.i.i.i.i.i.i66, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i67.preheader

.lr.ph.i.i.i.i.i.i.i67.preheader:                 ; preds = %.noexc74
  %i.fn = sub i64 %i.fa, %i.fb
  %i.fo = add i64 %i.fn, -8                       ; 2 uses
  %i.fp = lshr i64 %i.fo, 3
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %min.iters.check305 = icmp ult i64 %i.fo, 152
  br i1 %min.iters.check305, label %.lr.ph.i.i.i.i.i.i.i67.preheader343, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.i.i.i.i.i.i.i67.preheader
  %i.fr = add i64 %i.fa, -8
  %i.fs = sub i64 %i.fr, %i.fb
  %i.ft = and i64 %i.fs, -8
  %i.fu = add i64 %i.ft, 8                        ; 2 uses
  %scevgep299 = getelementptr i8, ptr %i.fk, i64 %i.fu
  %scevgep300 = getelementptr i8, ptr %i.ez, i64 %i.fu
  %bound0301 = icmp ult ptr %i.fk, %scevgep300
  %bound1302 = icmp ult ptr %i.ez, %scevgep299
  %found.conflict303 = and i1 %bound0301, %bound1302
  br i1 %found.conflict303, label %.lr.ph.i.i.i.i.i.i.i67.preheader343, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck298
  %n.vec308 = and i64 %i.fq, 4611686018427387900  ; 3 uses
  %i.fv = shl i64 %n.vec308, 3                    ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fk, i64 %i.fv  ; 2 uses
  %i.fx = getelementptr i8, ptr %i.ez, i64 %i.fv
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph306
  %index310 = phi i64 [ 0, %vector.ph306 ], [ %index.next315, %vector.body309 ] ; 2 uses
  %i.fy = shl i64 %index310, 3                    ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.fk, i64 %i.fy ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.ez, i64 %i.fy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  %i.fz = getelementptr i8, ptr %next.gep312, i64 16
  %wide.load313 = load <2 x i64>, ptr %next.gep312, align 8, !tbaa !812, !alias.scope !2072, !noalias !2067
  %wide.load314 = load <2 x i64>, ptr %i.fz, align 8, !tbaa !812, !alias.scope !2072, !noalias !2067
  %i.ga = getelementptr i8, ptr %next.gep311, i64 16
  store <2 x i64> %wide.load313, ptr %next.gep311, align 8, !tbaa !812, !alias.scope !2075, !noalias !2072
  store <2 x i64> %wide.load314, ptr %i.ga, align 8, !tbaa !812, !alias.scope !2075, !noalias !2072
  %i.gb = getelementptr i8, ptr %next.gep312, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep312, align 8, !tbaa !812, !alias.scope !2072, !noalias !2067
  store <2 x ptr> splat (ptr null), ptr %i.gb, align 8, !tbaa !812, !alias.scope !2072, !noalias !2067
  %index.next315 = add nuw i64 %index310, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next315, %n.vec308
  br i1 %i.gc, label %middle.block316, label %vector.body309, !llvm.loop !2077

middle.block316:                                  ; preds = %vector.body309
  %cmp.n317 = icmp eq i64 %i.fq, %n.vec308
  br i1 %cmp.n317, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i67.preheader343

.lr.ph.i.i.i.i.i.i.i67.preheader343:              ; preds = %vector.memcheck298, %.lr.ph.i.i.i.i.i.i.i67.preheader, %middle.block316
  %.012.i.i.i.i.i.i.i68.ph = phi ptr [ %i.fk, %vector.memcheck298 ], [ %i.fk, %.lr.ph.i.i.i.i.i.i.i67.preheader ], [ %i.fw, %middle.block316 ]
  %.0911.i.i.i.i.i.i.i69.ph = phi ptr [ %i.ez, %vector.memcheck298 ], [ %i.ez, %.lr.ph.i.i.i.i.i.i.i67.preheader ], [ %i.fx, %middle.block316 ]
  br label %.lr.ph.i.i.i.i.i.i.i67

.lr.ph.i.i.i.i.i.i.i67:                           ; preds = %.lr.ph.i.i.i.i.i.i.i67.preheader343, %.lr.ph.i.i.i.i.i.i.i67
  %.012.i.i.i.i.i.i.i68 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i67 ], [ %.012.i.i.i.i.i.i.i68.ph, %.lr.ph.i.i.i.i.i.i.i67.preheader343 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i69 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i67 ], [ %.0911.i.i.i.i.i.i.i69.ph, %.lr.ph.i.i.i.i.i.i.i67.preheader343 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  %i.gd = load i64, ptr %.0911.i.i.i.i.i.i.i69, align 8, !tbaa !812, !alias.scope !2070, !noalias !2067
  store i64 %i.gd, ptr %.012.i.i.i.i.i.i.i68, align 8, !tbaa !812, !alias.scope !2067, !noalias !2070
  store ptr null, ptr %.0911.i.i.i.i.i.i.i69, align 8, !tbaa !812, !alias.scope !2070, !noalias !2067
  %i.ge = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i69, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i68, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i70 = icmp eq ptr %i.ge, %i.eu
  br i1 %.not.i.i.i.i.i.i.i70, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i67, !llvm.loop !2078

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i67, %middle.block316, %.noexc74
  %.0.lcssa.i.i.i.i.i.i.i71 = phi ptr [ %i.fk, %.noexc74 ], [ %i.fw, %middle.block316 ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i67 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i71, i64 8
  %.not.i23.i.i.i72 = icmp eq ptr %i.ez, null
  br i1 %.not.i23.i.i.i72, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ez) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.fk, ptr %i.es, align 8, !tbaa !814
  store ptr %i.gg, ptr %i.et, align 8, !tbaa !808
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fi
  store ptr %i.gh, ptr %i.ev, align 8, !tbaa !811
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2079)
  %i.gi = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %bb.at unwind label %bb.bk     ; 4 uses

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i8 2, ptr %i.gj, align 8, !tbaa !795, !noalias !2079
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb13OrderModifierE, i64 16), ptr %i.gi, align 8, !tbaa !33, !noalias !2079
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i8 0, i64 24, i1 false), !noalias !2079
  store ptr %i.gi, ptr %12, align 8, !tbaa !505, !alias.scope !2079
  %i.gl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.au unwind label %bb.bl     ; 3 uses

bb.au:                                            ; preds = %bb.at
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 2, ptr %i.a, align 1, !tbaa !2082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i8 1, ptr %i.b, align 1, !tbaa !2084
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN6duckdb5Value7INTEGEREi(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %14, i32 noundef 1)
          to label %bb.av unwind label %bb.bm

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.gn = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %.noexc78 unwind label %bb.bn  ; 3 uses

.noexc78:                                         ; preds = %bb.av
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %14) #23, !noalias !2086
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.gn, ptr noundef nonnull %3)
          to label %bb.ax unwind label %bb.aw, !noalias !2086

bb.aw:                                            ; preds = %.noexc78
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !2086
  call void @_ZdlPv(ptr noundef nonnull %i.gn) #26, !noalias !2086
  br label %.body79

bb.ax:                                            ; preds = %.noexc78
  store ptr %i.gn, ptr %13, align 8, !tbaa !358, !alias.scope !2086
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23, !noalias !2086
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !315 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !389
  %.not.i81 = icmp eq ptr %i.gq, %i.gs
  br i1 %.not.i81, label %bb.ay, label %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_18ConstantExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_18ConstantExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit.thread: ; preds = %bb.ax
  %i.gt = load i8, ptr %i.a, align 1, !tbaa !2082
  %i.gu = load i8, ptr %i.b, align 1, !tbaa !2084
  %i.gv = load ptr, ptr %13, align 8, !tbaa !358
  store ptr null, ptr %13, align 8, !tbaa !358
  store i8 %i.gt, ptr %i.gq, align 8, !tbaa !2089
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 %i.gu, ptr %i.gw, align 1, !tbaa !2091
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gy = ptrtoint ptr %i.gv to i64
  store i64 %i.gy, ptr %i.gx, align 8, !tbaa !150
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store ptr %i.gz, ptr %i.gp, align 8, !tbaa !315
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE17_M_realloc_insertIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_18ConstantExpressionESt14default_deleteIS8_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr %i.gq, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_18ConstantExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit unwind label %bb.bo

_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_18ConstantExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit: ; preds = %bb.ay
  %.pre = load ptr, ptr %13, align 8, !tbaa !358  ; 3 uses
  %.not.i84 = icmp eq ptr %.pre, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_18ConstantExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit
  %i.ha = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(120) %.pre) #23, !inline_history !372
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_18ConstantExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_18ConstantExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.hd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.az unwind label %bb.bl     ; 3 uses

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 3 uses
  %i.hf = load ptr, ptr %12, align 8, !tbaa !505  ; 5 uses
  store ptr null, ptr %12, align 8, !tbaa !505
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 24 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !808 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 32 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !811
  %.not.i.i85 = icmp eq ptr %i.hh, %i.hj
  br i1 %.not.i.i85, label %bb.ba, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.az
  %i.hk = ptrtoint ptr %i.hf to i64
  store i64 %i.hk, ptr %i.hh, align 8, !tbaa !812
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.hl, ptr %i.hg, align 8, !tbaa !808
  %i.hm = load ptr, ptr %10, align 8, !tbaa !806
  store ptr null, ptr %10, align 8, !tbaa !806
  br label %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ba:                                            ; preds = %bb.az
  %i.hn = load ptr, ptr %i.he, align 8, !tbaa !814 ; 10 uses
  %i.ho = ptrtoint ptr %i.hh to i64               ; 3 uses
  %i.hp = ptrtoint ptr %i.hn to i64               ; 3 uses
  %i.hq = sub i64 %i.ho, %i.hp                    ; 3 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775800
  br i1 %i.hr, label %bb.bb, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc98 unwind label %bb.bq

.noexc98:                                         ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86: ; preds = %bb.ba
  %i.hs = ashr exact i64 %i.hq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i87 = call i64 @llvm.umax.i64(i64 %i.hs, i64 1)
  %i.ht = add nsw i64 %.sroa.speculated.i.i.i.i87, %i.hs ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hs
  %i.hv = call i64 @llvm.umin.i64(i64 %i.ht, i64 1152921504606846975)
  %i.hw = select i1 %i.hu, i64 1152921504606846975, i64 %i.hv ; 4 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.hw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.hx = shl nuw nsw i64 %i.hw, 3
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #25
          to label %.noexc99 unwind label %bb.bq  ; 12 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hq
  %i.ia = ptrtoint ptr %i.hf to i64
  store i64 %i.ia, ptr %i.hz, align 8, !tbaa !812
  %.not10.i.i.i.i.i.i.i89 = icmp eq ptr %i.hn, %i.hh
  br i1 %.not10.i.i.i.i.i.i.i89, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i.i.i90.preheader:                 ; preds = %.noexc99
  %i.ib = sub i64 %i.ho, %i.hp
  %i.ic = add i64 %i.ib, -8                       ; 2 uses
  %i.id = lshr i64 %i.ic, 3
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.ic, 152
  br i1 %min.iters.check327, label %.lr.ph.i.i.i.i.i.i.i90.preheader342, label %vector.memcheck320

vector.memcheck320:                               ; preds = %.lr.ph.i.i.i.i.i.i.i90.preheader
  %i.if = add i64 %i.ho, -8
  %i.ig = sub i64 %i.if, %i.hp
  %i.ih = and i64 %i.ig, -8
  %i.ii = add i64 %i.ih, 8                        ; 2 uses
  %scevgep321 = getelementptr i8, ptr %i.hy, i64 %i.ii
  %scevgep322 = getelementptr i8, ptr %i.hn, i64 %i.ii
  %bound0323 = icmp ult ptr %i.hy, %scevgep322
  %bound1324 = icmp ult ptr %i.hn, %scevgep321
  %found.conflict325 = and i1 %bound0323, %bound1324
  br i1 %found.conflict325, label %.lr.ph.i.i.i.i.i.i.i90.preheader342, label %vector.ph328

vector.ph328:                                     ; preds = %vector.memcheck320
  %n.vec330 = and i64 %i.ie, 4611686018427387900  ; 3 uses
  %i.ij = shl i64 %n.vec330, 3                    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.hy, i64 %i.ij  ; 2 uses
  %i.il = getelementptr i8, ptr %i.hn, i64 %i.ij
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph328
  %index332 = phi i64 [ 0, %vector.ph328 ], [ %index.next337, %vector.body331 ] ; 2 uses
  %i.im = shl i64 %index332, 3                    ; 2 uses
  %next.gep333 = getelementptr i8, ptr %i.hy, i64 %i.im ; 2 uses
  %next.gep334 = getelementptr i8, ptr %i.hn, i64 %i.im ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  %i.in = getelementptr i8, ptr %next.gep334, i64 16
  %wide.load335 = load <2 x i64>, ptr %next.gep334, align 8, !tbaa !812, !alias.scope !2097, !noalias !2092
  %wide.load336 = load <2 x i64>, ptr %i.in, align 8, !tbaa !812, !alias.scope !2097, !noalias !2092
  %i.io = getelementptr i8, ptr %next.gep333, i64 16
  store <2 x i64> %wide.load335, ptr %next.gep333, align 8, !tbaa !812, !alias.scope !2100, !noalias !2097
  store <2 x i64> %wide.load336, ptr %i.io, align 8, !tbaa !812, !alias.scope !2100, !noalias !2097
  %i.ip = getelementptr i8, ptr %next.gep334, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep334, align 8, !tbaa !812, !alias.scope !2097, !noalias !2092
  store <2 x ptr> splat (ptr null), ptr %i.ip, align 8, !tbaa !812, !alias.scope !2097, !noalias !2092
  %index.next337 = add nuw i64 %index332, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next337, %n.vec330
  br i1 %i.iq, label %middle.block338, label %vector.body331, !llvm.loop !2102

middle.block338:                                  ; preds = %vector.body331
  %cmp.n339 = icmp eq i64 %i.ie, %n.vec330
  br i1 %cmp.n339, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90.preheader342

.lr.ph.i.i.i.i.i.i.i90.preheader342:              ; preds = %vector.memcheck320, %.lr.ph.i.i.i.i.i.i.i90.preheader, %middle.block338
  %.012.i.i.i.i.i.i.i91.ph = phi ptr [ %i.hy, %vector.memcheck320 ], [ %i.hy, %.lr.ph.i.i.i.i.i.i.i90.preheader ], [ %i.ik, %middle.block338 ]
  %.0911.i.i.i.i.i.i.i92.ph = phi ptr [ %i.hn, %vector.memcheck320 ], [ %i.hn, %.lr.ph.i.i.i.i.i.i.i90.preheader ], [ %i.il, %middle.block338 ]
  br label %.lr.ph.i.i.i.i.i.i.i90

.lr.ph.i.i.i.i.i.i.i90:                           ; preds = %.lr.ph.i.i.i.i.i.i.i90.preheader342, %.lr.ph.i.i.i.i.i.i.i90
  %.012.i.i.i.i.i.i.i91 = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i.i90 ], [ %.012.i.i.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i.i.i90.preheader342 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i92 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i90 ], [ %.0911.i.i.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i.i.i90.preheader342 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  %i.ir = load i64, ptr %.0911.i.i.i.i.i.i.i92, align 8, !tbaa !812, !alias.scope !2095, !noalias !2092
  store i64 %i.ir, ptr %.012.i.i.i.i.i.i.i91, align 8, !tbaa !812, !alias.scope !2092, !noalias !2095
  store ptr null, ptr %.0911.i.i.i.i.i.i.i92, align 8, !tbaa !812, !alias.scope !2095, !noalias !2092
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i92, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i93 = icmp eq ptr %i.is, %i.hh
  br i1 %.not.i.i.i.i.i.i.i93, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i90, !llvm.loop !2103

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94: ; preds = %.lr.ph.i.i.i.i.i.i.i90, %middle.block338, %.noexc99
  %.0.lcssa.i.i.i.i.i.i.i95 = phi ptr [ %i.hy, %.noexc99 ], [ %i.ik, %middle.block338 ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i90 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i95, i64 8 ; 2 uses
  %.not.i23.i.i.i96 = icmp eq ptr %i.hn, null
  br i1 %.not.i23.i.i.i96, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.thread287, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.thread287: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94
  store ptr %i.hy, ptr %i.he, align 8, !tbaa !814
  store ptr %i.iu, ptr %i.hg, align 8, !tbaa !808
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hw
  store ptr %i.iv, ptr %i.hi, align 8, !tbaa !811
  %i.iw = load ptr, ptr %10, align 8, !tbaa !806
  store ptr null, ptr %10, align 8, !tbaa !806
  br label %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i94
  call void @_ZdlPv(ptr noundef nonnull %i.hn) #26
  %.pre232.pre = load ptr, ptr %12, align 8, !tbaa !505 ; 3 uses
  store ptr %i.hy, ptr %i.he, align 8, !tbaa !814
  store ptr %i.iu, ptr %i.hg, align 8, !tbaa !808
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hw
  store ptr %i.ix, ptr %i.hi, align 8, !tbaa !811
  %i.iy = load ptr, ptr %10, align 8, !tbaa !806  ; 2 uses
  store ptr null, ptr %10, align 8, !tbaa !806
  %.not.i106 = icmp eq ptr %.pre232.pre, null
  br i1 %.not.i106, label %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.iz = load ptr, ptr %.pre232.pre, align 8, !tbaa !33
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(40) %.pre232.pre) #23, !inline_history !506
  br label %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.thread287, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i
  %i.jc = phi ptr [ %i.hm, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.thread ], [ %i.iy, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit ], [ %i.iy, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i ], [ %i.iw, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.thread287 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.jd = load ptr, ptr %11, align 8, !tbaa !150  ; 3 uses
  %.not.i109 = icmp eq ptr %i.jd, null
  br i1 %.not.i109, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit111, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i110

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i110: ; preds = %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !33
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(56) %i.jd) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit111

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit111: ; preds = %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.jh = load ptr, ptr %10, align 8, !tbaa !806  ; 3 uses
  %.not.i112 = icmp eq ptr %i.jh, null
  br i1 %.not.i112, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit111
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !33
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(240) %i.jh) #23, !inline_history !855
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit111, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bs

.body.thread:                                     ; preds = %_ZN6duckdb9make_uniqINS_15CreateStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNKSt14default_deleteIN6duckdb15CreateStatementEEclEPS1_.exit.i180

bb.bc:                                            ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.f, %bb.e, %bb.d
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit175

bb.bd:                                            ; preds = %bb.br, %bb.q
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit175

bb.be:                                            ; preds = %bb.s
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit145

bb.bf:                                            ; preds = %bb.v, %bb.u, %bb.t
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit142

bb.bg:                                            ; preds = %bb.w
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body48

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit115: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ag
  %i.jr = landingpad { ptr, i32 }
          cleanup
  %i.js = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(56) %i.bk) #23, !inline_history !165
  br label %.body48

bb.bh:                                            ; preds = %bb.ai, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %.body48

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit118: ; preds = %bb.al
  %i.jw = landingpad { ptr, i32 }
          cleanup
  %i.jx = load ptr, ptr %i.do, align 8, !tbaa !33
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(56) %i.do) #23, !inline_history !165
  br label %.body48

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit61
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.bj:                                            ; preds = %bb.an
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body48

_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit124: ; preds = %bb.ar, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  %i.kd = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ep) #23, !inline_history !857
  br label %.body48
end_hunk_16
begin_hunk_17_@_ZN6duckdb11Transformer20CreatePivotStatementENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEE:bb.a
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2122

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc25
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %.noexc25 ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.r
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !42
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !36
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bv, ptr %i.ak, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  %i.bw = load ptr, ptr %8, align 8, !tbaa !2002  ; 7 uses
  %.not.i26 = icmp eq ptr %i.bw, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !525 ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i27, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i: ; preds = %bb.s
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.by) #23, !inline_history !2029
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i, %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !150 ; 3 uses
  %.not.i1.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i1.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(56) %i.cd) #23, !inline_history !2030
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !806 ; 3 uses
  %.not.i2.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i2.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(240) %i.ci) #23, !inline_history !2031
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !23 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteIN6duckdb11Transformer16CreatePivotEntryEEclEPS2_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.cm) #26
  br label %_ZNKSt14default_deleteIN6duckdb11Transformer16CreatePivotEntryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6duckdb11Transformer16CreatePivotEntryEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #26
  br label %_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb11Transformer16CreatePivotEntryEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.051.076, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cp, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit30

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cr = load ptr, ptr %7, align 8, !tbaa !40    ; 3 uses
  %.not.i28 = icmp eq ptr %i.cr, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit30, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i29

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i29: ; preds = %bb.u
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cr) #23, !inline_history !58
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit30

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit30: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i29, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.t ], [ %lpad.phi, %bb.u ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i29 ]
  call void @_ZNSt10unique_ptrIN6duckdb11Transformer16CreatePivotEntryESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.af

bb.v:                                             ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !2123
  %i.cx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14MultiStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !2123
  %i.cz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !2124
  %i.dc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14MultiStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !2124
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14MultiStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.z unwind label %bb.ae      ; 3 uses

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 120 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 128 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !36 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 136 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !39
  %.not.i.i31 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not.i.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = load i64, ptr %2, align 8, !tbaa !40
  store i64 %i.dk, ptr %i.dh, align 8, !tbaa !40
  store ptr null, ptr %2, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !36
  br label %_ZNSt10unique_ptrIN6duckdb14MultiStatementESt14default_deleteIS1_EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !42 ; 10 uses
  %i.dn = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.do = ptrtoint ptr %i.dm to i64               ; 3 uses
  %i.dp = sub i64 %i.dn, %i.do                    ; 3 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775800
  br i1 %i.dq, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i32

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc44 unwind label %bb.ae

.noexc44:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i32: ; preds = %bb.ab
  %i.dr = ashr exact i64 %i.dp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i33 = call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i.i.i33, %i.dr ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dr
  %i.du = call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.dv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #25
          to label %.noexc45 unwind label %bb.ae  ; 10 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dp
  %i.dz = load i64, ptr %2, align 8, !tbaa !40
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !40
  store ptr null, ptr %2, align 8, !tbaa !40
  %.not10.i.i.i.i.i.i.i35 = icmp eq ptr %i.dm, %i.dh
  br i1 %.not10.i.i.i.i.i.i.i35, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i.i36.preheader

.lr.ph.i.i.i.i.i.i.i36.preheader:                 ; preds = %.noexc45
  %i.ea = sub i64 %i.dn, %i.do
  %i.eb = add i64 %i.ea, -8                       ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check129 = icmp ult i64 %i.eb, 152
  br i1 %min.iters.check129, label %.lr.ph.i.i.i.i.i.i.i36.preheader144, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.i.i.i.i.i.i36.preheader
  %i.ee = add i64 %i.dn, -8
  %i.ef = sub i64 %i.ee, %i.do
  %i.eg = and i64 %i.ef, -8
  %i.eh = add i64 %i.eg, 8                        ; 2 uses
  %scevgep123 = getelementptr i8, ptr %i.dx, i64 %i.eh
  %scevgep124 = getelementptr i8, ptr %i.dm, i64 %i.eh
  %bound0125 = icmp ult ptr %i.dx, %scevgep124
  %bound1126 = icmp ult ptr %i.dm, %scevgep123
  %found.conflict127 = and i1 %bound0125, %bound1126
  br i1 %found.conflict127, label %.lr.ph.i.i.i.i.i.i.i36.preheader144, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck122
  %n.vec132 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ei = shl i64 %n.vec132, 3                    ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dx, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dm, i64 %i.ei
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph130
  %index134 = phi i64 [ 0, %vector.ph130 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %i.el = shl i64 %index134, 3                    ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.dx, i64 %i.el ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.dm, i64 %i.el ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.em = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load137 = load <2 x i64>, ptr %next.gep136, align 8, !tbaa !40, !alias.scope !2130, !noalias !2125
  %wide.load138 = load <2 x i64>, ptr %i.em, align 8, !tbaa !40, !alias.scope !2130, !noalias !2125
  %i.en = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %wide.load137, ptr %next.gep135, align 8, !tbaa !40, !alias.scope !2133, !noalias !2130
  store <2 x i64> %wide.load138, ptr %i.en, align 8, !tbaa !40, !alias.scope !2133, !noalias !2130
  %i.eo = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep136, align 8, !tbaa !40, !alias.scope !2130, !noalias !2125
  store <2 x ptr> splat (ptr null), ptr %i.eo, align 8, !tbaa !40, !alias.scope !2130, !noalias !2125
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.ep, label %middle.block140, label %vector.body133, !llvm.loop !2135

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.ed, %n.vec132
  br i1 %cmp.n141, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i.i36.preheader144

.lr.ph.i.i.i.i.i.i.i36.preheader144:              ; preds = %vector.memcheck122, %.lr.ph.i.i.i.i.i.i.i36.preheader, %middle.block140
  %.012.i.i.i.i.i.i.i37.ph = phi ptr [ %i.dx, %vector.memcheck122 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i36.preheader ], [ %i.ej, %middle.block140 ]
  %.0911.i.i.i.i.i.i.i38.ph = phi ptr [ %i.dm, %vector.memcheck122 ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i36.preheader ], [ %i.ek, %middle.block140 ]
  br label %.lr.ph.i.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i.i36:                           ; preds = %.lr.ph.i.i.i.i.i.i.i36.preheader144, %.lr.ph.i.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i.i37 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i.i36 ], [ %.012.i.i.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i.i.i36.preheader144 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i38 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i36 ], [ %.0911.i.i.i.i.i.i.i38.ph, %.lr.ph.i.i.i.i.i.i.i36.preheader144 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.eq = load i64, ptr %.0911.i.i.i.i.i.i.i38, align 8, !tbaa !40, !alias.scope !2128, !noalias !2125
  store i64 %i.eq, ptr %.012.i.i.i.i.i.i.i37, align 8, !tbaa !40, !alias.scope !2125, !noalias !2128
  store ptr null, ptr %.0911.i.i.i.i.i.i.i38, align 8, !tbaa !40, !alias.scope !2128, !noalias !2125
  %i.er = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i38, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i37, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i39 = icmp eq ptr %i.er, %i.dh
  br i1 %.not.i.i.i.i.i.i.i39, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i.i36, !llvm.loop !2136

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i.i.i36, %middle.block140, %.noexc45
  %.0.lcssa.i.i.i.i.i.i.i41 = phi ptr [ %i.dx, %.noexc45 ], [ %i.ej, %middle.block140 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i36 ]
  %i.et = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i41, i64 8
  %.not.i23.i.i.i42 = icmp eq ptr %i.dm, null
  br i1 %.not.i23.i.i.i42, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i43, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i40
  call void @_ZdlPv(ptr noundef nonnull %i.dm) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i43

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i43: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i40
  store ptr %i.dx, ptr %i.df, align 8, !tbaa !42
  store ptr %i.et, ptr %i.dg, align 8, !tbaa !36
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dv
  store ptr %i.eu, ptr %i.di, align 8, !tbaa !39
  br label %_ZNSt10unique_ptrIN6duckdb14MultiStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14MultiStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i43
  %i.ev = load ptr, ptr %3, align 8, !tbaa !60
  store ptr %i.ev, ptr %0, align 8, !tbaa !256
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.ae:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i32, %bb.ac, %bb.y, %bb.x, %bb.w, %bb.v, %._crit_edge
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.j, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit30, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.ae
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.ae ], [ %.pn17.pn56, %bb.l ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit30 ], [ %i.s, %bb.j ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  %i.ex = load ptr, ptr %3, align 8, !tbaa !60    ; 3 uses
  %.not.i48 = icmp eq ptr %i.ex, null
  br i1 %.not.i48, label %_ZNSt10unique_ptrIN6duckdb14MultiStatementESt14default_deleteIS1_EED2Ev.exit50, label %_ZNKSt14default_deleteIN6duckdb14MultiStatementEEclEPS1_.exit.i49

_ZNKSt14default_deleteIN6duckdb14MultiStatementEEclEPS1_.exit.i49: ; preds = %bb.af
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !33
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(144) %i.ex) #23, !inline_history !190
  br label %_ZNSt10unique_ptrIN6duckdb14MultiStatementESt14default_deleteIS1_EED2Ev.exit50

_ZNSt10unique_ptrIN6duckdb14MultiStatementESt14default_deleteIS1_EED2Ev.exit50: ; preds = %bb.af, %_ZNKSt14default_deleteIN6duckdb14MultiStatementEEclEPS1_.exit.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.ag:                                            ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef i64 @_ZNK6duckdb11Transformer10ParamCountEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.238") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !19
  %i.d = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !21
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses
end_hunk_17
