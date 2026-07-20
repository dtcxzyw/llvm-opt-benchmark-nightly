inline.NumInlined: 10466
inline.NumDeleted: 4631
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@duckdb_profiling_info_get_child_count:bb.a
  %.0 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define ptr @duckdb_profiling_info_get_child(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !776
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !779
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not9 = icmp ult i64 %1, %i.h
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_13ProfilingNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !780
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb32duckdb_capi_replacement_callbackERNS_13ClientContextERNS_20ReplacementScanInputENS_12optional_ptrINS_19ReplacementScanDataELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.1010") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %5 = alloca %"class.duckdb::optional_ptr.1009", align 8 ; 3 uses
  %6 = alloca %"struct.duckdb::CAPIReplacementScanInfo", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.duckdb::unique_ptr.1020", align 8 ; 9 uses
  %10 = alloca %"class.duckdb::vector.1029", align 8 ; 13 uses
  %11 = alloca %"class.duckdb::unique_ptr.1054", align 8 ; 8 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !782, !nonnull !41, !align !87
  call void @_ZNK6duckdb12optional_ptrINS_19ReplacementScanDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.c = load ptr, ptr %5, align 8, !tbaa !784    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.c, ptr %6, align 8, !tbaa !787
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !34
  store i8 0, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !789
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !792
  invoke void %i.l(ptr noundef nonnull %6, ptr noundef %i.m, ptr noundef %i.o)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.j, align 8, !tbaa !34
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.ae unwind label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.016 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %7, align 8, !tbaa !25     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.v) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br i1 %.016, label %bb.h, label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br i1 %.016, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn70 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.r) #36
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.f, align 8, !tbaa !34
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !793
  br label %bb.ab

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.aa = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #35
          to label %.noexc unwind label %bb.n     ; 3 uses

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN6duckdb16TableFunctionRefC1Ev(ptr noundef nonnull align 8 dereferenceable(121) %i.aa)
          to label %bb.m unwind label %bb.l, !noalias !796

bb.l:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #38, !noalias !796
  br label %.body

bb.m:                                             ; preds = %.noexc
  store ptr %i.aa, ptr %9, align 8, !tbaa !799, !alias.scope !796
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !589 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !589 ; 2 uses
  %.not74 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.o

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISB_ELb1EEELb1ESaISE_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1054") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.w unwind label %bb.z

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.064.075 = phi ptr [ %i.ac, %.lr.ph ], [ %i.bw, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ai = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #35
          to label %.noexc26 unwind label %bb.v   ; 6 uses

.noexc26:                                         ; preds = %bb.o
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.064.075) #36, !noalias !801
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull %4)
          to label %bb.q unwind label %bb.p, !noalias !801

bb.p:                                             ; preds = %.noexc26
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #36, !noalias !801
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #38, !noalias !801
  br label %.body27

bb.q:                                             ; preds = %.noexc26
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #36, !noalias !801
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !804 ; 6 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !807
  %.not.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = ptrtoint ptr %i.ai to i64
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !808
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.af, align 8, !tbaa !804
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr %10, align 8, !tbaa !810  ; 10 uses
  %i.ap = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #37
          to label %.noexc29 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37.loopexit.split-lp

.noexc29:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #35
          to label %.noexc30 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37.loopexit ; 10 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %i.bb = ptrtoint ptr %i.ai to i64
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !808
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc30
  %i.bc = sub i64 %i.ap, %i.aq
  %i.bd = add i64 %i.bc, -8                       ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader118, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.az, i64 8
  %i.bg = add i64 %i.ap, -8
  %i.bh = sub i64 %i.bg, %i.aq
  %i.bi = and i64 %i.bh, -8                       ; 2 uses
  %scevgep112 = getelementptr i8, ptr %scevgep, i64 %i.bi
  %scevgep113 = getelementptr i8, ptr %i.ao, i64 8
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %i.bi
  %bound0 = icmp ult ptr %i.az, %scevgep114
  %bound1 = icmp ult ptr %i.ao, %scevgep112
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.az, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ao, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bm ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.ao, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.bn = getelementptr i8, ptr %next.gep115, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep115, align 8, !tbaa !808, !alias.scope !816, !noalias !811
  %wide.load116 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !808, !alias.scope !816, !noalias !811
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !808, !alias.scope !819, !noalias !816
  store <2 x i64> %wide.load116, ptr %i.bo, align 8, !tbaa !808, !alias.scope !819, !noalias !816
  %i.bp = getelementptr i8, ptr %next.gep115, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep115, align 8, !tbaa !808, !alias.scope !816, !noalias !811
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !808, !alias.scope !816, !noalias !811
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !821

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader118

.lr.ph.i.i.i.i.i.i.i.preheader118:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader118, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader118 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !808, !alias.scope !814, !noalias !811
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !808, !alias.scope !811, !noalias !814
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !808, !alias.scope !814, !noalias !811
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !824

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc30
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %.noexc30 ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #38
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.az, ptr %10, align 8, !tbaa !810
  store ptr %i.bu, ptr %i.af, align 8, !tbaa !804
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bv, ptr %i.ag, align 8, !tbaa !807
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.064.075, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.bw, %i.ae
  br i1 %.not, label %._crit_edge, label %bb.o

bb.v:                                             ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body27

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37.loopexit.split-lp: ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit37.loopexit.split-lp ]
  %i.by = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(56) %i.ai) #36, !inline_history !825
  br label %.body27

bb.w:                                             ; preds = %._crit_edge
  %i.cb = load ptr, ptr %11, align 8, !tbaa !826  ; 4 uses
  store ptr null, ptr %11, align 8, !tbaa !826
  %i.cc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableFunctionRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 104 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !808 ; 3 uses
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !808
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.x
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(56) %i.ce) #36, !inline_history !828
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.x
  %i.ci = load ptr, ptr %11, align 8, !tbaa !826  ; 3 uses
  %.not.i41 = icmp eq ptr %i.ci, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(209) %i.ci) #36, !inline_history !829
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.cm = load ptr, ptr %9, align 8, !tbaa !799
  store ptr null, ptr %9, align 8, !tbaa !799
  store ptr %i.cm, ptr %0, align 8, !tbaa !793
  %i.cn = load ptr, ptr %10, align 8, !tbaa !810  ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !804 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.cn, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !808 ; 3 uses
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i42, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i43

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i43: ; preds = %.lr.ph.i.i.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(56) %i.cq) #36, !inline_history !830
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i43, %.lr.ph.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, %i.cp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !831

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !810
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.cv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cn, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cv) #38
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.cw = load ptr, ptr %9, align 8, !tbaa !799   ; 3 uses
  %.not.i44 = icmp eq ptr %i.cw, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN6duckdb16TableFunctionRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16TableFunctionRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16TableFunctionRefEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(121) %i.cw) #36, !inline_history !832
  br label %_ZNSt10unique_ptrIN6duckdb16TableFunctionRefESt14default_deleteIS1_EED2Ev.exit

end_hunk_0
