inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE:bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #30
  br label %bb.g

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 959, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  ret i8 %switch.load

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Node21TransformToDeprecatedERNS_3ARTERS0_RNS_26TransformToDeprecatedStateE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i:
  %3 = alloca %"class.duckdb::vector.685", align 8 ; 20 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.duckdb::optional_ptr.691", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.26", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %.lr.ph unwind label %bb.d     ; 3 uses

.lr.ph:                                           ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %1, ptr %i.d, align 8, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !876
  store ptr %i.e, ptr %i.b, align 8, !tbaa !879
  store ptr %i.e, ptr %i.c, align 8, !tbaa !880
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.au
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_4NodeEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156  ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !879
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  store ptr %i.j, ptr %i.b, align 8, !tbaa !879
  %i.k = load i64, ptr %i.h, align 8, !tbaa !131  ; 6 uses
  %.not = icmp sgt i64 %i.k, -1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb4Leaf21TransformToDeprecatedERNS_3ARTERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.au unwind label %bb.e, !llvm.loop !881

bb.d:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.n = lshr i64 %i.k, 56
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  store i8 %i.o, ptr %i.a, align 1, !tbaa !166
  switch i8 %i.o, label %bb.ap [
    i8 1, label %bb.g
    i8 7, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit
    i8 2, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit
    i8 3, label %bb.p
    i8 4, label %bb.v
    i8 5, label %bb.ab
    i8 6, label %bb.ai
  ]

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i70
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i91
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i111
  %lpad.loopexit141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %.noexc56, %bb.v, %.noexc84, %bb.ab, %.noexc103, %bb.ai, %.noexc123
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.p = invoke ptr @_ZN6duckdb12PrefixHandle21TransformToDeprecatedERNS_3ARTERNS_4NodeERNS_26TransformToDeprecatedStateE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %.loopexit147 ; 2 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.p, ptr %4, align 8
  %.not133 = icmp eq ptr %i.p, null
  br i1 %.not133, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit53, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb12optional_ptrINS_4NodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %.loopexit147

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %4, align 8, !tbaa !882    ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !879  ; 6 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !880
  %.not.i38 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.q, ptr %i.r, align 8, !tbaa !156
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.t, ptr %i.b, align 8, !tbaa !879
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit53

bb.l:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %3, align 8, !tbaa !876    ; 7 uses
  %i.v = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.m, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
          to label %.noexc51 unwind label %.loopexit.split-lp148

.noexc51:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39: ; preds = %bb.l
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i40 = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i40, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i41 = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i41)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32
          to label %.noexc52 unwind label %.loopexit147 ; 8 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store ptr %i.q, ptr %i.ag, align 8, !tbaa !156
  %.not10.i.i.i.i.i.i42 = icmp eq ptr %i.u, %i.r
  br i1 %.not10.i.i.i.i.i.i42, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i47, label %.lr.ph.i.i.i.i.i.i43.preheader

.lr.ph.i.i.i.i.i.i43.preheader:                   ; preds = %.noexc52
  %i.ah = ptrtoaddr ptr %i.af to i64
  %7 = add i64 %i.v, -8
  %8 = sub i64 %7, %i.w                           ; 2 uses
  %i.ai = lshr i64 %8, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.ak = sub i64 %i.w, %i.ah
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i43.preheader314, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i43.preheader
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.af, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ao ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.u, i64 %i.ao ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.ap = getelementptr i8, ptr %next.gep235, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep235, align 8, !alias.scope !887, !noalias !884
  %wide.load236 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !887, !noalias !884
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !884, !noalias !887
  store <2 x i64> %wide.load236, ptr %i.aq, align 8, !alias.scope !884, !noalias !887
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !889

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i47, label %.lr.ph.i.i.i.i.i.i43.preheader314

.lr.ph.i.i.i.i.i.i43.preheader314:                ; preds = %.lr.ph.i.i.i.i.i.i43.preheader, %middle.block
  %.012.i.i.i.i.i.i44.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i43.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.i.i45.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i43.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %.lr.ph.i.i.i.i.i.i43.preheader314, %.lr.ph.i.i.i.i.i.i43
  %.012.i.i.i.i.i.i44 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i43 ], [ %.012.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i43.preheader314 ] ; 2 uses
  %.0911.i.i.i.i.i.i45 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i43 ], [ %.0911.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i43.preheader314 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.as = load i64, ptr %.0911.i.i.i.i.i.i45, align 8, !alias.scope !887, !noalias !884
  store i64 %i.as, ptr %.012.i.i.i.i.i.i44, align 8, !alias.scope !884, !noalias !887
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i46 = icmp eq ptr %i.at, %i.r
  br i1 %.not.i.i.i.i.i.i46, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i47, label %.lr.ph.i.i.i.i.i.i43, !llvm.loop !892

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i47: ; preds = %.lr.ph.i.i.i.i.i.i43, %middle.block, %.noexc52
  %.0.lcssa.i.i.i.i.i.i48 = phi ptr [ %i.af, %.noexc52 ], [ %i.am, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i43 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i48, i64 8
  %.not.i23.i.i49 = icmp eq ptr %i.u, null
  br i1 %.not.i23.i.i49, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i47
  call void @_ZdlPv(ptr noundef nonnull %i.u) #29
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50: ; preds = %bb.n, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i47
  store ptr %i.af, ptr %3, align 8, !tbaa !876
  store ptr %i.av, ptr %i.b, align 8, !tbaa !879
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !880
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit53

.loopexit147:                                     ; preds = %bb.g, %bb.i, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp148:                            ; preds = %bb.m
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp148, %.loopexit147
  %lpad.phi151 = phi { ptr, i32 } [ %lpad.loopexit149, %.loopexit147 ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.loopexit.split-lp

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit53: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit

bb.p:                                             ; preds = %bb.f
  %i.ax = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc56:                                         ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !129
  %i.ba = invoke noundef ptr @_ZN6duckdb18FixedSizeAllocator11GetIfLoadedENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.az, i64 %i.k)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc57:                                         ; preds = %.noexc56
  %.not.i54 = icmp eq ptr %i.ba, null
  br i1 %.not.i54, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, label %bb.q

bb.q:                                             ; preds = %.noexc57
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !203 ; 3 uses
  %.not.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !879
  %.pre3.i.i = load ptr, ptr %i.c, align 8, !tbaa !880
  br label %bb.r

bb.r:                                             ; preds = %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, %.lr.ph.i.i
  %.pre45.i.i = phi i8 [ %i.bb, %.lr.ph.i.i ], [ %.pre46.i.i, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 2 uses
  %i.bd = phi i8 [ %i.bb, %.lr.ph.i.i ], [ %i.cl, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ]
  %i.be = phi ptr [ %.pre3.i.i, %.lr.ph.i.i ], [ %i.cm, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 5 uses
  %i.bf = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.cn, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.be
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !156
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !879
  br label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %3, align 8, !tbaa !876   ; 7 uses
  %i.bj = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %.invoke, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

.invoke:                                          ; preds = %bb.an, %bb.ag, %bb.z, %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i.i.i55 = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i55)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #32
          to label %.noexc59 unwind label %.loopexit ; 8 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  store ptr %i.bg, ptr %i.bu, align 8, !tbaa !156
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.be
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc59
  %i.bv = ptrtoaddr ptr %i.bt to i64
  %9 = add i64 %i.bj, -8
  %10 = sub i64 %9, %i.bk                         ; 2 uses
  %i.bw = lshr i64 %10, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check241 = icmp ult i64 %10, 24
  %i.by = sub i64 %i.bk, %i.bv
  %diff.check239 = icmp ugt i64 %i.by, -32
  %or.cond306 = or i1 %min.iters.check241, %diff.check239
  br i1 %or.cond306, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader310, label %vector.ph242

vector.ph242:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec243 = and i64 %i.bx, 4611686018427387900  ; 3 uses
  %i.bz = shl i64 %n.vec243, 3                    ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bt, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bi, i64 %i.bz
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next250, %vector.body244 ] ; 2 uses
  %i.cc = shl i64 %index245, 3                    ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.bt, i64 %i.cc ; 2 uses
  %next.gep247 = getelementptr i8, ptr %i.bi, i64 %i.cc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.cd = getelementptr i8, ptr %next.gep247, i64 16
  %wide.load248 = load <2 x i64>, ptr %next.gep247, align 8, !alias.scope !896, !noalias !893
  %wide.load249 = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !896, !noalias !893
  %i.ce = getelementptr i8, ptr %next.gep246, i64 16
  store <2 x i64> %wide.load248, ptr %next.gep246, align 8, !alias.scope !893, !noalias !896
  store <2 x i64> %wide.load249, ptr %i.ce, align 8, !alias.scope !893, !noalias !896
  %index.next250 = add nuw i64 %index245, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next250, %n.vec243
  br i1 %i.cf, label %middle.block251, label %vector.body244, !llvm.loop !898

middle.block251:                                  ; preds = %vector.body244
  %cmp.n252 = icmp eq i64 %i.bx, %n.vec243
  br i1 %cmp.n252, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader310

.lr.ph.i.i.i.i.i.i.i.i.i.preheader310:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block251
  %.012.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block251 ]
  %.0911.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block251 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader310, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader310 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader310 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !896, !noalias !893
  store i64 %i.cg, ptr %.012.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !893, !noalias !896
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !899

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block251, %.noexc59
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.noexc59 ], [ %i.ca, %middle.block251 ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #29
  %.pre4.pre.i.i = load i8, ptr %i.ba, align 8, !tbaa !203
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.u, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i
  %.pre4.i.i = phi i8 [ %.pre4.pre.i.i, %bb.u ], [ %.pre45.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i ] ; 2 uses
  store ptr %i.bt, ptr %3, align 8, !tbaa !876
  store ptr %i.cj, ptr %i.b, align 8, !tbaa !879
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  store ptr %i.ck, ptr %i.c, align 8, !tbaa !880
  br label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.s
  %.pre46.i.i = phi i8 [ %.pre45.i.i, %bb.s ], [ %.pre4.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.cl = phi i8 [ %i.bd, %bb.s ], [ %.pre4.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.cm = phi ptr [ %i.be, %bb.s ], [ %i.ck, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %i.cn = phi ptr [ %i.bh, %bb.s ], [ %i.cj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = icmp samesign ult i64 %indvars.iv.next.i.i, %i.co
  br i1 %i.cp, label %bb.r, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, !llvm.loop !900

bb.v:                                             ; preds = %bb.f
  %i.cq = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc84:                                         ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !129
  %i.ct = invoke noundef ptr @_ZN6duckdb18FixedSizeAllocator11GetIfLoadedENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.cs, i64 %i.k)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc85:                                         ; preds = %.noexc84
  %.not.i60 = icmp eq ptr %i.ct, null
  br i1 %.not.i60, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, label %bb.w

bb.w:                                             ; preds = %.noexc85
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !901 ; 3 uses
  %.not.i.i61 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i61, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.pre.i.i63 = load ptr, ptr %i.b, align 8, !tbaa !879
  %.pre3.i.i64 = load ptr, ptr %i.c, align 8, !tbaa !880
  br label %bb.x

bb.x:                                             ; preds = %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, %.lr.ph.i.i62
  %.pre45.i.i65 = phi i8 [ %i.cu, %.lr.ph.i.i62 ], [ %.pre46.i.i68, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 2 uses
  %i.cw = phi i8 [ %i.cu, %.lr.ph.i.i62 ], [ %i.ee, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ]
  %i.cx = phi ptr [ %.pre3.i.i64, %.lr.ph.i.i62 ], [ %i.ef, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 5 uses
  %i.cy = phi ptr [ %.pre.i.i63, %.lr.ph.i.i62 ], [ %i.eg, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 3 uses
  %indvars.iv.i.i66 = phi i64 [ 0, %.lr.ph.i.i62 ], [ %indvars.iv.next.i.i69, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i.i66 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.cy, %i.cx
  br i1 %.not.i.i.i.i67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !156
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.b, align 8, !tbaa !879
  br label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.db = load ptr, ptr %3, align 8, !tbaa !876   ; 7 uses
  %i.dc = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.dd = ptrtoint ptr %i.db to i64               ; 3 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %.invoke, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i70

_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i70: ; preds = %bb.z
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i71 = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i.i.i.i71, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i.i.i.i72 = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i72)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #32
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i70
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de
  store ptr %i.cz, ptr %i.dn, align 8, !tbaa !156
  %.not10.i.i.i.i.i.i.i.i.i73 = icmp eq ptr %i.db, %i.cx
  br i1 %.not10.i.i.i.i.i.i.i.i.i73, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader

.lr.ph.i.i.i.i.i.i.i.i.i74.preheader:             ; preds = %.noexc87
  %i.do = ptrtoaddr ptr %i.dm to i64
  %11 = add i64 %i.dc, -8
  %12 = sub i64 %11, %i.dd                        ; 2 uses
  %i.dp = lshr i64 %12, 3
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check258 = icmp ult i64 %12, 24
  %i.dr = sub i64 %i.dd, %i.do
  %diff.check256 = icmp ugt i64 %i.dr, -32
  %or.cond307 = or i1 %min.iters.check258, %diff.check256
  br i1 %or.cond307, label %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader311, label %vector.ph259

vector.ph259:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader
  %n.vec260 = and i64 %i.dq, 4611686018427387900  ; 3 uses
  %i.ds = shl i64 %n.vec260, 3                    ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dm, i64 %i.ds  ; 2 uses
  %i.du = getelementptr i8, ptr %i.db, i64 %i.ds
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next267, %vector.body261 ] ; 2 uses
  %i.dv = shl i64 %index262, 3                    ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.dm, i64 %i.dv ; 2 uses
  %next.gep264 = getelementptr i8, ptr %i.db, i64 %i.dv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.dw = getelementptr i8, ptr %next.gep264, i64 16
  %wide.load265 = load <2 x i64>, ptr %next.gep264, align 8, !alias.scope !906, !noalias !903
  %wide.load266 = load <2 x i64>, ptr %i.dw, align 8, !alias.scope !906, !noalias !903
  %i.dx = getelementptr i8, ptr %next.gep263, i64 16
  store <2 x i64> %wide.load265, ptr %next.gep263, align 8, !alias.scope !903, !noalias !906
  store <2 x i64> %wide.load266, ptr %i.dx, align 8, !alias.scope !903, !noalias !906
  %index.next267 = add nuw i64 %index262, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next267, %n.vec260
  br i1 %i.dy, label %middle.block268, label %vector.body261, !llvm.loop !908

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.dq, %n.vec260
  br i1 %cmp.n269, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader311

.lr.ph.i.i.i.i.i.i.i.i.i74.preheader311:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader, %middle.block268
  %.012.i.i.i.i.i.i.i.i.i75.ph = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader ], [ %i.dt, %middle.block268 ]
  %.0911.i.i.i.i.i.i.i.i.i76.ph = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader ], [ %i.du, %middle.block268 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i.i.i.i74:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader311, %.lr.ph.i.i.i.i.i.i.i.i.i74
  %.012.i.i.i.i.i.i.i.i.i75 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.i74 ], [ %.012.i.i.i.i.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader311 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i76 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i.i.i74 ], [ %.0911.i.i.i.i.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i.i.i.i.i74.preheader311 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.dz = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i76, align 8, !alias.scope !906, !noalias !903
  store i64 %i.dz, ptr %.012.i.i.i.i.i.i.i.i.i75, align 8, !alias.scope !903, !noalias !906
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i76, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i75, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i77 = icmp eq ptr %i.ea, %i.cx
  br i1 %.not.i.i.i.i.i.i.i.i.i77, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i.i.i74, !llvm.loop !909

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i78: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i74, %middle.block268, %.noexc87
  %.0.lcssa.i.i.i.i.i.i.i.i.i79 = phi ptr [ %i.dm, %.noexc87 ], [ %i.dt, %middle.block268 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.i74 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i79, i64 8 ; 2 uses
  %.not.i23.i.i.i.i.i80 = icmp eq ptr %i.db, null
  br i1 %.not.i23.i.i.i.i.i80, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i82, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i78
  call void @_ZdlPv(ptr noundef nonnull %i.db) #29
  %.pre4.pre.i.i81 = load i8, ptr %i.ct, align 8, !tbaa !901
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i82

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i82: ; preds = %bb.aa, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i78
  %.pre4.i.i83 = phi i8 [ %.pre4.pre.i.i81, %bb.aa ], [ %.pre45.i.i65, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i78 ] ; 2 uses
  store ptr %i.dm, ptr %3, align 8, !tbaa !876
  store ptr %i.ec, ptr %i.b, align 8, !tbaa !879
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk ; 2 uses
  store ptr %i.ed, ptr %i.c, align 8, !tbaa !880
  br label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i82, %bb.y
  %.pre46.i.i68 = phi i8 [ %.pre45.i.i65, %bb.y ], [ %.pre4.i.i83, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i82 ]
  %i.ee = phi i8 [ %i.cw, %bb.y ], [ %.pre4.i.i83, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i82 ] ; 2 uses
  %i.ef = phi ptr [ %i.cx, %bb.y ], [ %i.ed, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i82 ]
  %i.eg = phi ptr [ %i.da, %bb.y ], [ %i.ec, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i82 ]
  %indvars.iv.next.i.i69 = add nuw nsw i64 %indvars.iv.i.i66, 1 ; 2 uses
  %i.eh = zext i8 %i.ee to i64
  %i.ei = icmp samesign ult i64 %indvars.iv.next.i.i69, %i.eh
  br i1 %i.ei, label %bb.x, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, !llvm.loop !910

bb.ab:                                            ; preds = %bb.f
  %i.ej = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc103:                                        ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !129
  %i.em = invoke noundef ptr @_ZN6duckdb18FixedSizeAllocator11GetIfLoadedENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.el, i64 %i.k)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc104:                                        ; preds = %.noexc103
  %.not.i88 = icmp eq ptr %i.em, null
  br i1 %.not.i88, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc104
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 264
  br label %bb.ad

bb.ad:                                            ; preds = %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node48EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, %bb.ac
  %.01.i.i = phi i64 [ 0, %bb.ac ], [ %i.fz, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node48EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %.01.i.i
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !45  ; 2 uses
  %.not.i.i89 = icmp eq i8 %i.eq, 48
  br i1 %.not.i.i89, label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node48EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.er ; 2 uses
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !879 ; 6 uses
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !880
  %.not.i.i.i.i90 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i.i.i.i90, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.es, ptr %i.et, align 8, !tbaa !156
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.ev, ptr %i.b, align 8, !tbaa !879
  br label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node48EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ew = load ptr, ptr %3, align 8, !tbaa !876   ; 7 uses
  %i.ex = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 3 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775800
  br i1 %i.fa, label %.invoke, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i91

_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i91: ; preds = %bb.ag
  %i.fb = ashr exact i64 %i.ez, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i92 = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i.i.i.i.i92, %i.fb ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 1152921504606846975)
  %i.ff = select i1 %i.fd, i64 1152921504606846975, i64 %i.fe ; 3 uses
  %.not.i.i.i.i.i.i93 = icmp ne i64 %i.ff, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i93)
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #32
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 8 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i91
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez
  store ptr %i.es, ptr %i.fi, align 8, !tbaa !156
  %.not10.i.i.i.i.i.i.i.i.i94 = icmp eq ptr %i.ew, %i.et
  br i1 %.not10.i.i.i.i.i.i.i.i.i94, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i99, label %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader

.lr.ph.i.i.i.i.i.i.i.i.i95.preheader:             ; preds = %.noexc106
  %i.fj = ptrtoaddr ptr %i.fh to i64
  %13 = add i64 %i.ex, -8
  %14 = sub i64 %13, %i.ey                        ; 2 uses
  %i.fk = lshr i64 %14, 3
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check275 = icmp ult i64 %14, 24
  %i.fm = sub i64 %i.ey, %i.fj
  %diff.check273 = icmp ugt i64 %i.fm, -32
  %or.cond308 = or i1 %min.iters.check275, %diff.check273
  br i1 %or.cond308, label %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader312, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader
  %n.vec277 = and i64 %i.fl, 4611686018427387900  ; 3 uses
  %i.fn = shl i64 %n.vec277, 3                    ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fh, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.ew, i64 %i.fn
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 2 uses
  %i.fq = shl i64 %index279, 3                    ; 2 uses
  %next.gep280 = getelementptr i8, ptr %i.fh, i64 %i.fq ; 2 uses
  %next.gep281 = getelementptr i8, ptr %i.ew, i64 %i.fq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.fr = getelementptr i8, ptr %next.gep281, i64 16
  %wide.load282 = load <2 x i64>, ptr %next.gep281, align 8, !alias.scope !914, !noalias !911
  %wide.load283 = load <2 x i64>, ptr %i.fr, align 8, !alias.scope !914, !noalias !911
  %i.fs = getelementptr i8, ptr %next.gep280, i64 16
  store <2 x i64> %wide.load282, ptr %next.gep280, align 8, !alias.scope !911, !noalias !914
  store <2 x i64> %wide.load283, ptr %i.fs, align 8, !alias.scope !911, !noalias !914
  %index.next284 = add nuw i64 %index279, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.ft, label %middle.block285, label %vector.body278, !llvm.loop !916

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %i.fl, %n.vec277
  br i1 %cmp.n286, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i99, label %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader312

.lr.ph.i.i.i.i.i.i.i.i.i95.preheader312:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader, %middle.block285
  %.012.i.i.i.i.i.i.i.i.i96.ph = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader ], [ %i.fo, %middle.block285 ]
  %.0911.i.i.i.i.i.i.i.i.i97.ph = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader ], [ %i.fp, %middle.block285 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i95

.lr.ph.i.i.i.i.i.i.i.i.i95:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader312, %.lr.ph.i.i.i.i.i.i.i.i.i95
  %.012.i.i.i.i.i.i.i.i.i96 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i.i95 ], [ %.012.i.i.i.i.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader312 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i97 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i95 ], [ %.0911.i.i.i.i.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i.i.i.i.i95.preheader312 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.fu = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i97, align 8, !alias.scope !914, !noalias !911
  store i64 %i.fu, ptr %.012.i.i.i.i.i.i.i.i.i96, align 8, !alias.scope !911, !noalias !914
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i97, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i98 = icmp eq ptr %i.fv, %i.et
  br i1 %.not.i.i.i.i.i.i.i.i.i98, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i99, label %.lr.ph.i.i.i.i.i.i.i.i.i95, !llvm.loop !917

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i99: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i95, %middle.block285, %.noexc106
  %.0.lcssa.i.i.i.i.i.i.i.i.i100 = phi ptr [ %i.fh, %.noexc106 ], [ %i.fo, %middle.block285 ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i.i95 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i100, i64 8
  %.not.i23.i.i.i.i.i101 = icmp eq ptr %i.ew, null
  br i1 %.not.i23.i.i.i.i.i101, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i102, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i99
  call void @_ZdlPv(ptr noundef nonnull %i.ew) #29
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i102

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i102: ; preds = %bb.ah, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i99
  store ptr %i.fh, ptr %3, align 8, !tbaa !876
  store ptr %i.fx, ptr %i.b, align 8, !tbaa !879
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ff
  store ptr %i.fy, ptr %i.c, align 8, !tbaa !880
  br label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node48EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node48EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i102, %bb.af, %bb.ad
  %i.fz = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fz, 256
  br i1 %exitcond.not.i.i, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, label %bb.ad, !llvm.loop !918

bb.ai:                                            ; preds = %bb.f
  %i.ga = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc123:                                        ; preds = %bb.ai
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !129
  %i.gd = invoke noundef ptr @_ZN6duckdb18FixedSizeAllocator11GetIfLoadedENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.gc, i64 %i.k)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc124:                                        ; preds = %.noexc123
  %.not.i107 = icmp eq ptr %i.gd, null
  br i1 %.not.i107, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, label %bb.aj

bb.aj:                                            ; preds = %.noexc124
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_7Node256EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, %bb.aj
  %.01.i.i108 = phi i64 [ 0, %bb.aj ], [ %i.ho, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_7Node256EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.01.i.i108 ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !131
  %i.gh = icmp ugt i64 %i.gg, 72057594037927935
  br i1 %i.gh, label %bb.al, label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_7Node256EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !879 ; 6 uses
  %i.gj = load ptr, ptr %i.c, align 8, !tbaa !880
  %.not.i.i.i.i110 = icmp eq ptr %i.gi, %i.gj
  br i1 %.not.i.i.i.i110, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.gf, ptr %i.gi, align 8, !tbaa !156
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.gk, ptr %i.b, align 8, !tbaa !879
  br label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_7Node256EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.gl = load ptr, ptr %3, align 8, !tbaa !876   ; 7 uses
  %i.gm = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64               ; 3 uses
  %i.go = sub i64 %i.gm, %i.gn                    ; 3 uses
  %i.gp = icmp eq i64 %i.go, 9223372036854775800
  br i1 %i.gp, label %.invoke, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i111

_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i111: ; preds = %bb.an
  %i.gq = ashr exact i64 %i.go, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i112 = call i64 @llvm.umax.i64(i64 %i.gq, i64 1)
  %i.gr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i112, %i.gq ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.gq
  %i.gt = call i64 @llvm.umin.i64(i64 %i.gr, i64 1152921504606846975)
  %i.gu = select i1 %i.gs, i64 1152921504606846975, i64 %i.gt ; 3 uses
  %.not.i.i.i.i.i.i113 = icmp ne i64 %i.gu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i113)
  %i.gv = shl nuw nsw i64 %i.gu, 3
  %i.gw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #32
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 8 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i111
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.go
  store ptr %i.gf, ptr %i.gx, align 8, !tbaa !156
  %.not10.i.i.i.i.i.i.i.i.i114 = icmp eq ptr %i.gl, %i.gi
  br i1 %.not10.i.i.i.i.i.i.i.i.i114, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader

.lr.ph.i.i.i.i.i.i.i.i.i115.preheader:            ; preds = %.noexc126
  %i.gy = ptrtoaddr ptr %i.gw to i64
  %15 = add i64 %i.gm, -8
  %16 = sub i64 %15, %i.gn                        ; 2 uses
  %i.gz = lshr i64 %16, 3
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check292 = icmp ult i64 %16, 24
  %i.hb = sub i64 %i.gn, %i.gy
  %diff.check290 = icmp ugt i64 %i.hb, -32
  %or.cond309 = or i1 %min.iters.check292, %diff.check290
  br i1 %or.cond309, label %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader313, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader
  %n.vec294 = and i64 %i.ha, 4611686018427387900  ; 3 uses
  %i.hc = shl i64 %n.vec294, 3                    ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gw, i64 %i.hc  ; 2 uses
  %i.he = getelementptr i8, ptr %i.gl, i64 %i.hc
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.hf = shl i64 %index296, 3                    ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.gw, i64 %i.hf ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.gl, i64 %i.hf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.hg = getelementptr i8, ptr %next.gep298, i64 16
  %wide.load299 = load <2 x i64>, ptr %next.gep298, align 8, !alias.scope !922, !noalias !919
  %wide.load300 = load <2 x i64>, ptr %i.hg, align 8, !alias.scope !922, !noalias !919
  %i.hh = getelementptr i8, ptr %next.gep297, i64 16
  store <2 x i64> %wide.load299, ptr %next.gep297, align 8, !alias.scope !919, !noalias !922
  store <2 x i64> %wide.load300, ptr %i.hh, align 8, !alias.scope !919, !noalias !922
  %index.next301 = add nuw i64 %index296, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.hi, label %middle.block302, label %vector.body295, !llvm.loop !924

middle.block302:                                  ; preds = %vector.body295
  %cmp.n303 = icmp eq i64 %i.ha, %n.vec294
  br i1 %cmp.n303, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader313

.lr.ph.i.i.i.i.i.i.i.i.i115.preheader313:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader, %middle.block302
  %.012.i.i.i.i.i.i.i.i.i116.ph = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader ], [ %i.hd, %middle.block302 ]
  %.0911.i.i.i.i.i.i.i.i.i117.ph = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader ], [ %i.he, %middle.block302 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i115

.lr.ph.i.i.i.i.i.i.i.i.i115:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader313, %.lr.ph.i.i.i.i.i.i.i.i.i115
  %.012.i.i.i.i.i.i.i.i.i116 = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i115 ], [ %.012.i.i.i.i.i.i.i.i.i116.ph, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader313 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i117 = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i115 ], [ %.0911.i.i.i.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i.i.i.i115.preheader313 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.hj = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i117, align 8, !alias.scope !922, !noalias !919
  store i64 %i.hj, ptr %.012.i.i.i.i.i.i.i.i.i116, align 8, !alias.scope !919, !noalias !922
  %i.hk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i117, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i116, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i118 = icmp eq ptr %i.hk, %i.gi
  br i1 %.not.i.i.i.i.i.i.i.i.i118, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i119, label %.lr.ph.i.i.i.i.i.i.i.i.i115, !llvm.loop !925

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i119: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115, %middle.block302, %.noexc126
  %.0.lcssa.i.i.i.i.i.i.i.i.i120 = phi ptr [ %i.gw, %.noexc126 ], [ %i.hd, %middle.block302 ], [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i115 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i120, i64 8
  %.not.i23.i.i.i.i.i121 = icmp eq ptr %i.gl, null
  br i1 %.not.i23.i.i.i.i.i121, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i122, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i119
  call void @_ZdlPv(ptr noundef nonnull %i.gl) #29
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i122

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i122: ; preds = %bb.ao, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i119
  store ptr %i.gw, ptr %3, align 8, !tbaa !876
  store ptr %i.hm, ptr %i.b, align 8, !tbaa !879
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gu
  store ptr %i.hn, ptr %i.c, align 8, !tbaa !880
  br label %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_7Node256EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i

_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_7Node256EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i122, %bb.am, %bb.ak
  %i.ho = add nuw nsw i64 %.01.i.i108, 1          ; 2 uses
  %exitcond.not.i.i109 = icmp eq i64 %i.ho, 256
  br i1 %exitcond.not.i.i109, label %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit, label %bb.ak, !llvm.loop !926

bb.ap:                                            ; preds = %bb.f
  %i.hp = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNS_5NTypeEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.hp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ay unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ap
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hs = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.hs) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0, label %bb.at, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0, label %bb.at, label %.loopexit.split-lp

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn132 = phi { ptr, i32 } [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.hp) #30
  br label %.loopexit.split-lp

_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit: ; preds = %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_7Node256EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node48EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_6Node16EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, %_ZZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEEENKUlS5_E_clES5_.exit.i.i, %.noexc124, %.noexc104, %bb.w, %.noexc85, %bb.q, %.noexc57, %bb.f, %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.au

bb.au:                                            ; preds = %bb.c, %_ZN6duckdbL33TransformToDeprecatedPushChildrenINS_5Node4EEEvRNS_3ARTERNS_4NodeENS_5NTypeERNS_6vectorISt17reference_wrapperIS4_ELb1ESaIS9_EEE.exit
  %i.hv = load ptr, ptr %3, align 8, !tbaa !927   ; 3 uses
  %i.hw = load ptr, ptr %i.b, align 8, !tbaa !927
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %._crit_edge, label %bb.a

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.at, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn132, %bb.at ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.phi151, %bb.o ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit134, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit138, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit141, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit145, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %thread-pre-split

._crit_edge:                                      ; preds = %bb.au
  %.not.i.i.i127 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.hv) #29
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

thread-pre-split:                                 ; preds = %.loopexit.split-lp, %bb.e
  %.pn30.pn.ph = phi { ptr, i32 } [ %.pn.pn, %.loopexit.split-lp ], [ %i.m, %bb.e ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !876
  br label %bb.aw

bb.aw:                                            ; preds = %thread-pre-split, %bb.d
  %i.hy = phi ptr [ %.pr, %thread-pre-split ], [ null, %bb.d ] ; 2 uses
  %.pn30.pn = phi { ptr, i32 } [ %.pn30.pn.ph, %thread-pre-split ], [ %i.l, %bb.d ]
  %.not.i.i.i128 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EED2Ev.exit129, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef nonnull %i.hy) #29
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EED2Ev.exit129

_ZNSt6vectorISt17reference_wrapperIN6duckdb4NodeEESaIS3_EED2Ev.exit129: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn30.pn

bb.ay:                                            ; preds = %bb.ar
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_26TransformToDeprecatedStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.26", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !871    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_26TransformToDeprecatedStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !125

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
end_hunk_0
begin_hunk_1_@_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm:bb.a
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.021
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !45
  %i.am = add nuw i64 %.021, 1                    ; 2 uses
  %i.an = load i8, ptr %i.d, align 8, !tbaa !52
  %i.ao = zext i8 %i.an to i64                    ; 3 uses
  %i.ap = add i64 %i.ao, %i.l
  %i.aq = icmp ult i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1372

bb.c:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZN6duckdb6Prefix5SplitERNS_3ARTERSt17reference_wrapperINS_4NodeEERS4_h(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Prefix", align 8    ; 11 uses
  %5 = alloca %"class.duckdb::Prefix", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !156
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.01.0.copyload, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.b = zext i8 %3 to i32
  %i.c = add nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !52    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = icmp eq i32 %i.c, %i.f
  %i.h = load ptr, ptr %4, align 8, !tbaa !132    ; 2 uses
  %i.i = zext i8 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !45    ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 1, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %1, align 8
  %i.p = load i64, ptr %i.n, align 8
  store i64 %i.p, ptr %2, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.q = zext i8 %i.k to i32
  %i.r = icmp samesign ult i32 %i.c, %i.q
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.t = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s), !noalias !1373
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !129, !noalias !1373
  %i.v = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.u), !noalias !1373
  %i.w = and i64 %i.v, 72057594037927935
  %i.x = or disjoint i64 %i.w, 72057594037927936  ; 2 uses
  store i64 %i.x, ptr %2, align 8, !tbaa !131, !noalias !1373
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.x, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.y = load ptr, ptr %5, align 8, !tbaa !132, !alias.scope !1373
  %i.z = load i8, ptr %i.d, align 8, !tbaa !52, !noalias !1373
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !134, !alias.scope !1373
  store i64 0, ptr %i.ad, align 8, !tbaa !131
  %i.ae = load ptr, ptr %4, align 8, !tbaa !132
  %i.af = load i8, ptr %i.d, align 8, !tbaa !52
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !45
  %i.aj = xor i8 %3, -1
  %i.ak = add i8 %i.ai, %i.aj
  %i.al = load ptr, ptr %5, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !45
  %i.an = load ptr, ptr %5, align 8, !tbaa !132   ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !132
  %i.ap = zext i8 %3 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.d, align 8, !tbaa !52
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !45
  %i.aw = zext i8 %i.av to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ar, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !131 ; 3 uses
  %i.ba = and i64 %i.az, -72057594037927936
  %or.cond = icmp eq i64 %i.ba, 72057594037927936
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb6Prefix6AppendERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.az)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !134
  store i64 %i.az, ptr %i.bb, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.pre = load ptr, ptr %4, align 8, !tbaa !132
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !134
  %i.be = load i64, ptr %i.bd, align 8
  store i64 %i.be, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi ptr [ %i.h, %bb.h ], [ %.pre, %bb.g ]
  %i.bg = load i8, ptr %i.d, align 8, !tbaa !52
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  store i8 %3, ptr %i.bi, align 1, !tbaa !45
  %i.bj = icmp eq i8 %3, 0
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %1, align 8, !tbaa !156   ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !131 ; 2 uses
  %sum.shift.i28 = lshr i64 %i.bl, 63
  %.lobit1.i29 = trunc nuw nsw i64 %sum.shift.i28 to i8
  %i.bm = lshr i64 %i.bl, 56
  %i.bn = trunc nuw i64 %i.bm to i8
  %i.bo = and i8 %i.bn, 127
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bq = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
  %i.br = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.bo)
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !129
  %.sroa.0.0.copyload.i = load i64, ptr %i.bk, align 8, !tbaa !19
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.bu, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %i.bk, align 8, !tbaa !131
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !134
  %i.bx = ptrtoint ptr %i.bw to i64
  store i64 %i.bx, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ %.lobit1.i29, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i8 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::NodeHandle.659", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.03.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1376, !nonnull !36, !align !37 ; 13 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !203   ; 10 uses
  %.not.not = icmp eq i8 %i.c, 4                  ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1379

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.j = add i8 %i.c, -1
  %i.k = call i8 @llvm.usub.sat.i8(i8 %i.j, i8 %i.h) ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.k, 57
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.critedge.i
  %i.n = add i8 %i.c, -1
  %i.o = call i8 @llvm.usub.sat.i8(i8 %i.n, i8 %i.h)
  %i.p = zext i8 %i.c to i32
  %i.q = add nsw i32 %i.p, -1
  %i.r = zext i8 %i.o to i32
  %i.s = icmp ult i32 %i.q, %i.r
  br i1 %i.s, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.t = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep = getelementptr i8, ptr %i.t, i64 1
  %i.u = add i8 %i.c, -1
  %i.v = call i8 @llvm.usub.sat.i8(i8 %i.u, i8 %i.h)
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = sub nsw i64 0, %i.w                      ; 2 uses
  %scevgep23 = getelementptr i8, ptr %scevgep, i64 %i.x ; 3 uses
  %i.y = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep24 = getelementptr i8, ptr %i.y, i64 2  ; 3 uses
  %i.z = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  %i.aa = getelementptr i8, ptr %i.b, i64 %i.z
  %scevgep25 = getelementptr i8, ptr %i.aa, i64 8
  %i.ab = mul nsw i64 %i.w, -8                    ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep25, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 %i.z
  %scevgep27 = getelementptr i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ad = zext i8 %i.c to i64
  %i.ae = add nuw nsw i64 %i.ad, 4294967295
  %i.af = and i64 %i.ae, 4294967295               ; 3 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.af
  %scevgep28 = getelementptr i8, ptr %i.ag, i64 1
  %scevgep29 = getelementptr i8, ptr %scevgep28, i64 %i.x ; 2 uses
  %i.ah = getelementptr i8, ptr %i.b, i64 %i.af
  %scevgep30 = getelementptr i8, ptr %i.ah, i64 2 ; 2 uses
  %i.ai = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ai
  %scevgep31 = getelementptr i8, ptr %i.aj, i64 8
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.ab ; 2 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 %i.ai
  %scevgep33 = getelementptr i8, ptr %i.ak, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %scevgep23, %scevgep27
  %bound1 = icmp ult ptr %scevgep26, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %scevgep23, %scevgep30
  %bound135 = icmp ult ptr %scevgep29, %scevgep24
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  %bound037 = icmp ult ptr %scevgep23, %scevgep33
  %bound138 = icmp ult ptr %scevgep32, %scevgep24
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx40 = or i1 %conflict.rdx, %found.conflict39
  %bound041 = icmp ult ptr %scevgep26, %scevgep30
  %bound142 = icmp ult ptr %scevgep29, %scevgep27
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx40, %found.conflict43
  %bound045 = icmp ult ptr %scevgep26, %scevgep33
  %bound146 = icmp ult ptr %scevgep32, %scevgep27
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 510                      ; 3 uses
  %i.al = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %i.an = add nuw nsw i64 %i.am, 4294967295
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1
  %wide.load = load <2 x i8>, ptr %i.aq, align 1, !tbaa !45, !alias.scope !1380
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -1
  store <2 x i8> %wide.load, ptr %i.as, align 1, !tbaa !45, !alias.scope !1383, !noalias !1385
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ao
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.am
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -8
  %wide.load49 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !1388
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -8
  store <2 x i64> %wide.load49, ptr %i.aw, align 8, !alias.scope !1389, !noalias !1390
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ay = add nuw nsw i64 %indvars.iv33.i, 4294967295
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !45
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.az
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i
  %i.bf = load i64, ptr %i.bd, align 8
  store i64 %i.bf, ptr %i.be, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.bg = icmp ult i8 %i.h, %indvars.i
  br i1 %i.bg, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1392

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.bh = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.bh, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.bi, align 1, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bk, align 8
  %i.bl = add i8 %i.c, 1
  store i8 %i.bl, ptr %i.b, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh4ELNS_5NTypeE3EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bm = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %4, align 8, !tbaa !179
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bs = load i64, ptr %1, align 8
  store i64 %i.bs, ptr %5, align 8
  call void @_ZN6duckdb6Node169GrowNode4ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @_ZN6duckdb6Node1611InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9Node7Leaf10InsertByteERNS_3ARTERNS_4NodeEh(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.654", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_9Node7LeafEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1393, !nonnull !36 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !177   ; 9 uses
  %.not.not = icmp eq i8 %i.c, 7                  ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 22 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseLeafILh7ELNS_5NTypeE8EE18InsertByteInternalERS2_h.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 24 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %iter.check

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE:bb.a
          cleanup
  %i.ax = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #30 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !179
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i8 1, ptr %i.az, align 8, !tbaa !1343
  %i.ba = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #30 ; 0 uses
  ret void

bb.h:                                             ; preds = %bb.e, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.aw, %bb.f ]
  tail call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10NodeHandleINS_5Node4EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node169GrowNode4ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::NodeHandle.659", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::NodeHandle.661", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  call void @_ZN6duckdb10NodeHandleINS_5Node4EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1376, !nonnull !36, !align !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129, !noalias !1457
  %i.g = invoke i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.f)
          to label %.noexc25 unwind label %bb.h

.noexc25:                                         ; preds = %.noexc
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = or disjoint i64 %i.h, 288230376151711744 ; 2 uses
  store i64 %i.i, ptr %1, align 8, !tbaa !131, !noalias !1457
  invoke void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.i)
          to label %.sink.split.i unwind label %bb.h

.sink.split.i:                                    ; preds = %.noexc25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !208, !alias.scope !1457, !nonnull !36, !align !37 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, i8 0, i64 128, i1 false), !tbaa !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.k, i8 0, i64 17, i1 false)
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !208, !nonnull !36, !align !37 ; 3 uses
  %i.n = load i64, ptr %2, align 8, !tbaa !131
  %i.o = load i64, ptr %1, align 8, !tbaa !131
  %i.p = and i64 %i.o, 9223372036854775807
  %masksel = and i64 %i.n, -9223372036854775808
  %.sink.i = or disjoint i64 %i.p, %masksel
  store i64 %.sink.i, ptr %1, align 8, !tbaa !131
  %i.q = load i8, ptr %i.b, align 8, !tbaa !203   ; 2 uses
  store i8 %i.q, ptr %i.m, align 8, !tbaa !901
  %.not29 = icmp eq i8 %i.q, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.sink.split.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.sink.split.i
  %i.v = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %4, align 8, !tbaa !179
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw sub ptr %i.x, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ab = load ptr, ptr %3, align 8, !tbaa !179
  %.not.i.i27 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i27, label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %3, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #33
  unreachable

_ZN6duckdb10NodeHandleINS_5Node4EED2Ev.exit:      ; preds = %_ZN6duckdb10NodeHandleINS_8BaseNodeILh16ELNS_5NTypeE4EEEED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ah = load i64, ptr %2, align 8, !tbaa !131
  %i.ai = lshr i64 %i.ah, 56
  %i.aj = trunc nuw i64 %i.ai to i8
  %i.ak = and i8 %i.aj, 127
  %i.al = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.am = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.ak)
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !129
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !19
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.ap, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %2, align 8, !tbaa !131
  ret void

bb.h:                                             ; preds = %.noexc25, %.noexc, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb10NodeHandleINS_5Node4EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.aq

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1, !tbaa !45
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aw = load i64, ptr %i.au, align 8
  store i64 %i.aw, ptr %i.av, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i8, ptr %i.b, align 8, !tbaa !203
  %i.ay = zext i8 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.i, label %._crit_edge, !llvm.loop !1460
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Node1611InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::NodeHandle.660", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  call void @_ZN6duckdb10NodeHandleINS_6Node16EEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.03.0.copyload)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1461, !nonnull !36, !align !37 ; 13 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !901   ; 10 uses
  %.not.not = icmp eq i8 %i.c, 16                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.c to i64        ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, label %.lr.ph.i, !llvm.loop !1464

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = trunc nuw i64 %indvars.iv.i to i8        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.j = add i8 %i.c, -1
  %i.k = call i8 @llvm.usub.sat.i8(i8 %i.j, i8 %i.h) ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i8 %i.k, 57
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.critedge.i
  %i.n = add i8 %i.c, -1
  %i.o = call i8 @llvm.usub.sat.i8(i8 %i.n, i8 %i.h)
  %i.p = zext i8 %i.c to i32
  %i.q = add nsw i32 %i.p, -1
  %i.r = zext i8 %i.o to i32
  %i.s = icmp ult i32 %i.q, %i.r
  br i1 %i.s, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.t = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep = getelementptr i8, ptr %i.t, i64 1
  %i.u = add i8 %i.c, -1
  %i.v = call i8 @llvm.usub.sat.i8(i8 %i.u, i8 %i.h)
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = sub nsw i64 0, %i.w                      ; 2 uses
  %scevgep23 = getelementptr i8, ptr %scevgep, i64 %i.x ; 3 uses
  %i.y = getelementptr i8, ptr %i.b, i64 %wide.trip.count.i
  %scevgep24 = getelementptr i8, ptr %i.y, i64 2  ; 3 uses
  %i.z = shl nuw nsw i64 %wide.trip.count.i, 3    ; 2 uses
  %i.aa = getelementptr i8, ptr %i.b, i64 %i.z
  %scevgep25 = getelementptr i8, ptr %i.aa, i64 24
  %i.ab = mul nsw i64 %i.w, -8                    ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep25, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 %i.z
  %scevgep27 = getelementptr i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ad = zext i8 %i.c to i64
  %i.ae = add nuw nsw i64 %i.ad, 4294967295
  %i.af = and i64 %i.ae, 4294967295               ; 3 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.af
  %scevgep28 = getelementptr i8, ptr %i.ag, i64 1
  %scevgep29 = getelementptr i8, ptr %scevgep28, i64 %i.x ; 2 uses
  %i.ah = getelementptr i8, ptr %i.b, i64 %i.af
  %scevgep30 = getelementptr i8, ptr %i.ah, i64 2 ; 2 uses
  %i.ai = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ai
  %scevgep31 = getelementptr i8, ptr %i.aj, i64 24
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.ab ; 2 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 %i.ai
  %scevgep33 = getelementptr i8, ptr %i.ak, i64 32 ; 2 uses
  %bound0 = icmp ult ptr %scevgep23, %scevgep27
  %bound1 = icmp ult ptr %scevgep26, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %scevgep23, %scevgep30
  %bound135 = icmp ult ptr %scevgep29, %scevgep24
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  %bound037 = icmp ult ptr %scevgep23, %scevgep33
  %bound138 = icmp ult ptr %scevgep32, %scevgep24
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx40 = or i1 %conflict.rdx, %found.conflict39
  %bound041 = icmp ult ptr %scevgep26, %scevgep30
  %bound142 = icmp ult ptr %scevgep29, %scevgep27
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx40, %found.conflict43
  %bound045 = icmp ult ptr %scevgep26, %scevgep33
  %bound146 = icmp ult ptr %scevgep32, %scevgep27
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br i1 %conflict.rdx48, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 510                      ; 3 uses
  %i.al = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = sub i64 %wide.trip.count.i, %index      ; 3 uses
  %i.an = add nuw nsw i64 %i.am, 4294967295
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1
  %wide.load = load <2 x i8>, ptr %i.aq, align 1, !tbaa !45, !alias.scope !1465
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -1
  store <2 x i8> %wide.load, ptr %i.as, align 1, !tbaa !45, !alias.scope !1468, !noalias !1470
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ao
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.am
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -8
  %wide.load49 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !1473
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -8
  store <2 x i64> %wide.load49, ptr %i.aw, align 8, !alias.scope !1474, !noalias !1475
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1476

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.critedge.i, %middle.block
  %indvars.iv33.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %vector.scevcheck ], [ %wide.trip.count.i, %.critedge.i ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %scalar.ph ], [ %indvars.iv33.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ay = add nuw nsw i64 %indvars.iv33.i, 4294967295
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv33.i
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !45
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.az
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i
  %i.bf = load i64, ptr %i.bd, align 8
  store i64 %i.bf, ptr %i.be, align 8
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next34.i to i8
  %i.bg = icmp ult i8 %i.h, %indvars.i
  br i1 %i.bg, label %scalar.ph, label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit, !llvm.loop !1477

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17: ; preds = %bb.c
  %i.bh = zext i8 %i.c to i64
  br label %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit

_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit: ; preds = %scalar.ph, %middle.block, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17, %bb.b
  %.023.lcssa37.i = phi i64 [ 0, %bb.b ], [ %i.bh, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit.loopexit17 ], [ %indvars.iv.i, %middle.block ], [ %indvars.iv.i, %scalar.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.lcssa37.i
  store i8 %2, ptr %i.bi, align 1, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.023.lcssa37.i
  store i64 %3, ptr %i.bk, align 8
  %i.bl = add i8 %i.c, 1
  store i8 %i.bl, ptr %i.b, align 8, !tbaa !901
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6duckdb8BaseNodeILh16ELNS_5NTypeE4EE19InsertChildInternalERS2_hNS_4NodeE.exit
  %i.bm = load ptr, ptr %4, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %4, align 8, !tbaa !179
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #33
  unreachable

_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit:     ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bs = load i64, ptr %1, align 8
  store i64 %i.bs, ptr %5, align 8
  call void @_ZN6duckdb6Node4810GrowNode16ERNS_3ARTERNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @_ZN6duckdb6Node4811InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2, i64 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10NodeHandleINS_6Node16EED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Node411DeleteChildERNS_3ARTERNS_4NodeES4_hNS_10GateStatusE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::NodeHandle", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !noalias !1478
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200, !alias.scope !1478, !nonnull !36, !align !37 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 9 uses
  %i.d = load i8, ptr %i.b, align 8, !tbaa !203   ; 3 uses
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i8 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %i.g = icmp eq i8 %i.f, %3
  br i1 %i.g, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1481

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
end_hunk_2
