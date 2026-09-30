Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bv_decl_plugin?download=true
inline.NumInlined: 2364
inline.NumDeleted: 733
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@__cxa_free_exception
declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorI9parameterLb1EjED2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i:   ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67   ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  tail call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i) #25
  %i.e = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 40
  %i.f = add i32 %.07.i.i.i.i.i.i, -1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i
  %i.g = phi ptr [ %.pre.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.b, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN6vectorI9parameterLb1EjED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN6vectorI9parameterLb1EjED2Ev.exit:             ; preds = %bb.a, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN14bv_decl_plugin7mk_sortEijPK9parameter(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !143
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZNK9parameter7get_intEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  tail call void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull @.str.16) #27
  unreachable

_ZNK9parameter7get_intEv.exit:                    ; preds = %bb.b
  %i.g = load i32, ptr %3, align 8, !tbaa !67     ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9parameter7get_intEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  tail call void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull @.str.17) #27
  unreachable

bb.e:                                             ; preds = %_ZNK9parameter7get_intEv.exit
  tail call void @_ZN14bv_decl_plugin10mk_bv_sortEj(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  ret ptr %i.o
}

; Function Attrs: noreturn
declare void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK9parameter7get_intEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !143
  switch i8 %i.b, label %bb.b [
    i8 0, label %_ZSt3getIiJiP3ast6symbolP7zstring8rationaldjEERKT_RKSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !151

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.114, ptr %i.d, align 8, !tbaa !154
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.113, ptr %i.f, align 8, !tbaa !154
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

_ZSt3getIiJiP3ast6symbolP7zstring8rationaldjEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !67
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN14bv_decl_plugin9mk_binaryER10ptr_vectorI9func_declEiPKcjbb(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %7 = alloca %struct.func_decl_info, align 8     ; 9 uses
  %8 = alloca %class.symbol, align 8              ; 5 uses
  %i.b = add i32 %4, 1                            ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !147    ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i:      ; preds = %bb.a
  %.not.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i)
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !67   ; 2 uses
  %i.g = icmp ugt i32 %i.b, %i.f
  br i1 %i.g, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader, label %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.c, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.f, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i:    ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i
  %i.h = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader ] ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i.i: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  %i.l = icmp ugt i32 %i.b, %i.k
  br i1 %i.l, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i, label %bb.b

_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorIP9func_declLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pr.pre.i.i = load ptr, ptr %1, align 8, !tbaa !147
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i, !llvm.loop !1

bb.b:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 %i.b, ptr %i.m, align 4, !tbaa !67
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.b
  br i1 %.not1218.i.i, label %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.n = zext i32 %i.b to i64
  %i.o = zext i32 %.0.i16.i.i.ph to i64           ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.h, i64 %i.o
  %i.q = sub nsw i64 %i.n, %i.o
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false), !tbaa !148
  br label %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit

_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i, %bb.b, %.lr.ph.preheader.i.i
  %i.s = phi ptr [ %i.h, %.lr.ph.preheader.i.i ], [ %i.c, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i ], [ %i.h, %bb.b ]
  %i.t = zext i32 %4 to i64                       ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !148  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit
  %i.x = tail call noundef ptr @_ZN14bv_decl_plugin11get_bv_sortEj(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41
  call void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19) %7, i32 noundef %i.z, i32 noundef %2, i32 noundef 0, ptr noundef null)
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 17 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 1
  %i.ac = and i16 %i.ab, -144
  %i.ad = select i1 %6, i16 128, i16 0
  %i.ae = select i1 %5, i16 15, i16 0
  %i.af = or disjoint i16 %i.ae, %i.ad
  %i.ag = or disjoint i16 %i.af, %i.ac
  store i16 %i.ag, ptr %i.aa, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr %i.x, ptr %i.a, align 16, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !49
  %i.ak = load i32, ptr %7, align 8, !tbaa !54
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.e, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.am = load i16, ptr %i.aa, align 1
  %i.an = and i16 %i.am, 507
  %or.cond.i.i = icmp eq i16 %i.an, 0
  br i1 %or.cond.i.i, label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit.i, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i.i

_ZNK14func_decl_info7is_nullEv.exit.thread.i.i:   ; preds = %bb.e, %bb.d
  br label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit.i

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit.i: ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i.i, %bb.e
  %.sink.i.i = phi ptr [ %7, %_ZNK14func_decl_info7is_nullEv.exit.thread.i.i ], [ null, %bb.e ]
  %i.ao = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef %i.x, ptr noundef %.sink.i.i)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ap = load ptr, ptr %1, align 8, !tbaa !147   ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.t ; 2 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !148 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ar, null
  br i1 %.not.i24, label %_ZN11ast_manager7inc_refEP3ast.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !71
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !71
  br label %_ZN11ast_manager7inc_refEP3ast.exit

_ZN11ast_manager7inc_refEP3ast.exit:              ; preds = %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !67 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ay, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aw, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #25
  %i.az = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.ba = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !66
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.bb = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.aw, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bc)
          to label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i._ZN9decl_infoD2Ev.exit_crit_edge unwind label %bb.h

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i._ZN9decl_infoD2Ev.exit_crit_edge: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !147
  br label %_ZN9decl_infoD2Ev.exit

bb.h:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #26
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i._ZN9decl_infoD2Ev.exit_crit_edge, %_ZN11ast_manager7inc_refEP3ast.exit
  %.pre = phi ptr [ %.pre.pre, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i._ZN9decl_infoD2Ev.exit_crit_edge ], [ %i.ap, %_ZN11ast_manager7inc_refEP3ast.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !148
  br label %bb.j

bb.i:                                             ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit.i, %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %i.bf

bb.j:                                             ; preds = %_ZN9decl_infoD2Ev.exit, %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit
  %i.bg = phi ptr [ %.pre25, %_ZN9decl_infoD2Ev.exit ], [ %i.v, %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit ]
  ret ptr %i.bg
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN14bv_decl_plugin8mk_unaryER10ptr_vectorI9func_declEiPKcj(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.symbol, align 8              ; 5 uses
  %6 = alloca %struct.func_decl_info, align 8     ; 9 uses
  %i.b = add i32 %4, 1                            ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !147    ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i:      ; preds = %bb.a
  %.not.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i)
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !67   ; 2 uses
  %i.g = icmp ugt i32 %i.b, %i.f
  br i1 %i.g, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader, label %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.c, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.f, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i:    ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i
  %i.h = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i.preheader ] ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i.i: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  %i.l = icmp ugt i32 %i.b, %i.k
  br i1 %i.l, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i, label %bb.b

_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorIP9func_declLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pr.pre.i.i = load ptr, ptr %1, align 8, !tbaa !147
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.i, !llvm.loop !1

bb.b:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 %i.b, ptr %i.m, align 4, !tbaa !67
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.b
  br i1 %.not1218.i.i, label %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.n = zext i32 %i.b to i64
  %i.o = zext i32 %.0.i16.i.i.ph to i64           ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.h, i64 %i.o
  %i.q = sub nsw i64 %i.n, %i.o
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false), !tbaa !148
  br label %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit

_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i, %bb.b, %.lr.ph.preheader.i.i
  %i.s = phi ptr [ %i.h, %.lr.ph.preheader.i.i ], [ %i.c, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread.i ], [ %i.h, %bb.b ]
  %i.t = zext i32 %4 to i64                       ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !148  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZN11ast_manager7inc_refEP3ast.exit

bb.c:                                             ; preds = %_Z20force_ptr_array_sizeI10ptr_vectorI9func_declEEvRT_j.exit
  %i.x = tail call noundef ptr @_ZN14bv_decl_plugin11get_bv_sortEj(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %4) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !41
  call void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19) %6, i32 noundef %i.ab, i32 noundef %2, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.x, ptr %i.a, align 8, !tbaa !49
  %i.ac = load i32, ptr %6, align 8, !tbaa !54
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.d, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = and i16 %i.af, 507
  %or.cond.i.i = icmp eq i16 %i.ag, 0
  br i1 %or.cond.i.i, label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit.i, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i.i

end_hunk_0
