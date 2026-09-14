Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/quasi_macros?download=true
inline.NumInlined: 780
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12quasi_macros16find_occurrencesEP4expr:bb.a

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit26:    ; preds = %bb.s, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit
  %i.gd = phi ptr [ %.pre.i23, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.em, %bb.s ] ; 3 uses
  %i.ge = phi i32 [ %.pre2.i25, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.es, %bb.s ] ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gg = zext i32 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gg
  store ptr %i.ep, ptr %i.gh, align 8, !tbaa !50
  %i.gi = add i32 %i.ge, 1
  store i32 %i.gi, ptr %i.gf, align 4, !tbaa !39
  %.not.wide = icmp eq i64 %i.en, 0
  br i1 %.not.wide, label %.loopexit, label %bb.r, !llvm.loop !204

bb.ae:                                            ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_b.exit19
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 71, ptr noundef nonnull @.str.1)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit26, %_ZNK12quasi_macros22is_non_ground_uninterpEPK4expr.exit.thread32, %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_b.exit19, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit, %bb.ae, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit
  %i.gj = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread:     ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, %.loopexit, %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK12quasi_macros22is_non_ground_uninterpEPK4expr(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(560) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_Z13is_non_groundPK4expr.exit, label %_Z11is_uninterpPK4expr.exit

_Z13is_non_groundPK4expr.exit:                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.f = load i8, ptr %i.e, align 2
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_Z11is_uninterpPK4expr.exit, label %bb.b

bb.b:                                             ; preds = %_Z13is_non_groundPK4expr.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_Z11is_uninterpPK4expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 8, !tbaa !74
  %i.n = icmp eq i32 %i.m, -1
  br label %_Z11is_uninterpPK4expr.exit

_Z11is_uninterpPK4expr.exit:                      ; preds = %bb.c, %bb.b, %bb.a, %_Z13is_non_groundPK4expr.exit
  %i.o = phi i1 [ false, %_Z13is_non_groundPK4expr.exit ], [ true, %bb.b ], [ %i.n, %bb.c ], [ false, %bb.a ]
  ret i1 %i.o
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK12quasi_macros9is_uniqueEP9func_decl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %i.f = add i32 %i.e, -1
  %i.g = and i32 %i.f, %i.c                       ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.i = zext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i
  %.not34.i.i.i = icmp eq i32 %i.g, %i.e
  br i1 %.not34.i.i.i, label %.lr.ph38.i.i.i.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.k = zext i32 %i.g to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.035.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.m = load ptr, ptr %.035.i.i.i, align 8, !tbaa !78 ; 4 uses
  %i.n = icmp ult ptr %i.m, inttoptr (i64 2 to ptr)
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76
  %i.q = icmp eq i32 %i.p, %i.c
  %i.r = icmp eq ptr %i.m, %1
  %or.cond.i.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i.i, label %_ZNK7obj_mapI9func_decljE4findEPS0_.exit, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.j
  br i1 %.not.i.i.i, label %.lr.ph38.i.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !2

.lr.ph38.i.i.i.preheader:                         ; preds = %bb.d, %bb.a
  br label %.lr.ph38.i.i.i

.lr.ph38.i.i.i:                                   ; preds = %.lr.ph38.i.i.i.preheader, %.lr.ph38.backedge.i.i.i
  %.137.i.i.i = phi ptr [ %.pn.i, %.lr.ph38.backedge.i.i.i ], [ %i.h, %.lr.ph38.i.i.i.preheader ] ; 3 uses
  %i.t = load ptr, ptr %.137.i.i.i, align 8, !tbaa !78 ; 4 uses
  %i.u = icmp ult ptr %i.t, inttoptr (i64 2 to ptr)
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !76
  %i.x = icmp eq i32 %i.w, %i.c
  %i.y = icmp eq ptr %i.t, %1
  %or.cond31.i.i.i = and i1 %i.y, %i.x
  br i1 %or.cond31.i.i.i, label %_ZNK7obj_mapI9func_decljE4findEPS0_.exit, label %.lr.ph38.backedge.i.i.i

bb.f:                                             ; preds = %.lr.ph38.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %.lr.ph38.backedge.i.i.i

.lr.ph38.backedge.i.i.i:                          ; preds = %bb.e, %bb.f
  %.pn.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16
  br label %.lr.ph38.i.i.i, !llvm.loop !3

_ZNK7obj_mapI9func_decljE4findEPS0_.exit:         ; preds = %bb.b, %bb.e
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.e ], [ %.035.i.i.i, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !39
  %i.ab = icmp eq i32 %i.aa, 1
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK12quasi_macros16fully_depends_onEP3appP10quantifier(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.bit_vector, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  invoke void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.b, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.d

.preheader:                                       ; preds = %bb.f, %bb.b
  %i.j = load i32, ptr %3, align 8, !tbaa !56     ; 2 uses
  %.not2126 = icmp eq i32 %i.j, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !38 ; 3 uses
  br i1 %.not2126, label %.critedge, label %.lr.ph29

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10bit_vectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.01725 = phi ptr [ %i.c, %.lr.ph ], [ %i.z, %bb.f ] ; 2 uses
  %i.l = load ptr, ptr %.01725, align 8, !tbaa !50 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 65535
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !91   ; 2 uses
  %i.s = lshr i32 %i.r, 5
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39
  %i.w = and i32 %i.r, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = or i32 %i.v, %i.x
  store i32 %i.y, ptr %i.u, align 4, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01725, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.g
  br i1 %.not, label %.preheader, label %bb.d

.lr.ph29:                                         ; preds = %.preheader, %.lr.ph29
  %.01627 = phi i32 [ %i.ah, %.lr.ph29 ], [ 0, %.preheader ] ; 3 uses
  %i.aa = lshr i32 %.01627, 5
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = and i32 %.01627, 31
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = and i32 %i.ad, %i.af
  %.not23.not = icmp ne i32 %i.ag, 0              ; 2 uses
  %i.ah = add nuw i32 %.01627, 1                  ; 2 uses
  %exitcond.not = icmp ne i32 %i.ah, %i.j
  %or.cond.not = select i1 %.not23.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph29, label %.critedge.thread, !llvm.loop !207

.critedge:                                        ; preds = %.preheader
  %i.ai = icmp eq ptr %.pre, null
  br i1 %i.ai, label %_ZN10bit_vectorD2Ev.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph29, %.critedge
  %.not21.lcssa36 = phi i1 [ true, %.critedge ], [ %.not23.not, %.lr.ph29 ]
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre)
          to label %_ZN10bit_vectorD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.critedge.thread
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

_ZN10bit_vectorD2Ev.exit:                         ; preds = %.critedge, %.critedge.thread
  %.not21.lcssa37 = phi i1 [ true, %.critedge ], [ %.not21.lcssa36, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.not21.lcssa37
}

declare void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10bit_vectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_Z13dealloc_svectIjEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_Z13dealloc_svectIjEvPT_.exit unwind label %bb.c

_Z13dealloc_svectIjEvPT_.exit:                    ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK12quasi_macros10depends_onEP4exprP9func_decl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %class.ptr_vector, align 8          ; 10 uses
  %6 = alloca %class.obj_mark, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph unwind label %bb.c

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph:      ; preds = %bb.a
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !32  ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !39 ; 2 uses
  %i.b = zext i32 %.pre2.i to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.b
  store ptr %1, ptr %i.c, align 8, !tbaa !50
  %i.d = add i32 %.pre2.i, 1
  store i32 %i.d, ptr %.phi.trans.insert.i, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph, %.critedge
  %.pre4860 = phi ptr [ %.pre.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %.pre4861, %.critedge ] ; 4 uses
  %i.f = phi ptr [ %.pre.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %i.co, %.critedge ] ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.j = add i32 %i.h, -1                         ; 3 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 6 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !39
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57   ; 5 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.thread

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.r = lshr i32 %i.n, 5
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = and i32 %i.n, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.u, %i.w
  %.not39 = icmp eq i32 %i.x, 0
  br i1 %.not39, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.thread, label %.critedge, !llvm.loop !208

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.thread: ; preds = %bb.b, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 65535
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %.not23 = icmp eq ptr %i.af, %2
  br i1 %.not23, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !79 ; 2 uses
  %.not40 = icmp eq i32 %i.ah, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.aj = zext i32 %i.ah to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.q, %.lr.ph
  %.pre4859 = phi ptr [ %.pre4860, %.lr.ph ], [ %.pre4857, %bb.q ]
  %i.ak = phi i32 [ %i.j, %.lr.ph ], [ %i.cb, %bb.q ] ; 5 uses
  %i.al = phi ptr [ %i.f, %.lr.ph ], [ %i.bw, %bb.q ] ; 2 uses
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph ], [ %i.am, %bb.q ]
  %i.am = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !39
  %i.ar = icmp eq i32 %i.ak, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.as = mul i32 %i.ak, 3
  %i.at = add i32 %i.as, 1
  %i.au = lshr i32 %i.at, 1                       ; 3 uses
  %i.av = shl i32 %i.au, 3
  %i.aw = add i32 %i.av, 8                        ; 2 uses
  %.not.i = icmp ugt i32 %i.au, %i.ak
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = shl i32 %i.ak, 3
  %i.ay = add i32 %i.ax, 8
  %.not27.i = icmp ugt i32 %i.aw, %i.ay
  br i1 %.not27.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.az, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12quasi_macros20quasi_macro_to_macroEP10quantifierP3appP4exprR7obj_refIS0_11ast_managerE:bb.a
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !39
  br label %bb.z

bb.z:                                             ; preds = %.noexc128, %bb.x
  %i.fc = phi i32 [ %.pre2.i.i, %.noexc128 ], [ %i.ey, %bb.x ] ; 2 uses
  %i.fd = phi ptr [ %.pre.i.i, %.noexc128 ], [ %i.ev, %bb.x ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.ff = zext i32 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff
  store ptr %i.er, ptr %i.fg, align 8, !tbaa !41
  %i.fh = add i32 %i.fc, 1
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !39
  %i.fi = load ptr, ptr %0, align 8, !tbaa !120, !nonnull !44, !align !45
  %i.fj = load i32, ptr %i.bl, align 4, !tbaa !89
  %i.fk = add i32 %i.fj, %.0.i
  %i.fl = load ptr, ptr %i.eq, align 8, !tbaa !41
  %i.fm = invoke noundef ptr @_ZN11ast_manager6mk_varEjP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.fi, i32 noundef %i.fk, ptr noundef %i.fl)
          to label %bb.aa unwind label %bb.ai     ; 4 uses

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i129 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i129, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !47
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.ab, %bb.aa
  %i.fq = load ptr, ptr %i.f, align 8, !tbaa !32  ; 4 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 -4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !39 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fq, i64 -8
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !39
  %i.fw = icmp eq i32 %i.ft, %i.fv
  br i1 %i.fw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc133 unwind label %bb.ai

.noexc133:                                        ; preds = %bb.ad
  %.pre.i.i130 = load ptr, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i131 = getelementptr inbounds i8, ptr %.pre.i.i130, i64 -4
  %.pre2.i.i132 = load i32, ptr %.phi.trans.insert.i.i131, align 4, !tbaa !39
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc133, %bb.ac
  %i.fx = phi i32 [ %.pre2.i.i132, %.noexc133 ], [ %i.ft, %bb.ac ] ; 2 uses
  %i.fy = phi ptr [ %.pre.i.i130, %.noexc133 ], [ %i.fq, %bb.ac ] ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -4
  %i.ga = zext i32 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.ga
  store ptr %i.fm, ptr %i.gb, align 8, !tbaa !50
  %i.gc = add i32 %i.fx, 1
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !39
  %i.gd = load ptr, ptr %0, align 8, !tbaa !120, !nonnull !44, !align !45
  %i.ge = load ptr, ptr %i.cd, align 8, !tbaa !50
  %i.gf = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gd, i32 noundef 0, i32 noundef 2, ptr noundef %i.fm, ptr noundef %i.ge)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.ai ; 3 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %bb.ae
  %.not.i.i.i.i135 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i135, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i136, label %bb.af

bb.af:                                            ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !47
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i136

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i136: ; preds = %bb.af, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gj = load ptr, ptr %i.ar, align 8, !tbaa !32 ; 4 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i136
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 -4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !39 ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gj, i64 -8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !39
  %i.gp = icmp eq i32 %i.gm, %i.go
  br i1 %i.gp, label %bb.ah, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit141

bb.ah:                                            ; preds = %bb.ag, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i136
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %.noexc140 unwind label %bb.ai

.noexc140:                                        ; preds = %bb.ah
  %.pre.i.i137 = load ptr, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i138 = getelementptr inbounds i8, ptr %.pre.i.i137, i64 -4
  %.pre2.i.i139 = load i32, ptr %.phi.trans.insert.i.i138, align 4, !tbaa !39
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit141

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit141: ; preds = %bb.ag, %.noexc140
  %i.gq = phi i32 [ %.pre2.i.i139, %.noexc140 ], [ %i.gm, %bb.ag ] ; 2 uses
  %i.gr = phi ptr [ %.pre.i.i137, %.noexc140 ], [ %i.gj, %bb.ag ] ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -4
  %i.gt = zext i32 %i.gq to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gt
  store ptr %i.gf, ptr %i.gu, align 8, !tbaa !50
  %i.gv = add i32 %i.gq, 1
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !39
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad, %bb.y, %bb.p, %bb.o, %bb.n, %bb.z
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.aj:                                            ; preds = %_ZNK6vectorI6symbolLb1EjE4sizeEv.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = load ptr, ptr %6, align 8, !tbaa !86    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.br
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.aj
  %i.ha = load i64, ptr %i.br, align 8, !tbaa !88
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.da

bb.ak:                                            ; preds = %bb.u, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %8, align 8, !tbaa !86    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.bv
  br i1 %i.he, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ak, %bb.r
  %.sink = phi ptr [ %i.dv, %bb.r ], [ %i.hd, %bb.ak ]
  %.pn78.ph = phi { ptr, i32 } [ %i.du, %bb.r ], [ %i.hc, %bb.ak ]
  %i.hf = load i64, ptr %i.bv, align 8, !tbaa !88
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hg) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ak, %bb.r
  %.pn78 = phi { ptr, i32 } [ %i.du, %bb.r ], [ %i.hc, %bb.ak ], [ %.pn78.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.da

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i149: ; preds = %bb.k
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !47
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 8, !tbaa !47
  %i.hk = load ptr, ptr %i.f, align 8, !tbaa !32  ; 4 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i149
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !39 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hk, i64 -8
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !39
  %i.hq = icmp eq i32 %i.hn, %i.hp
  br i1 %i.hq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i149
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc153 unwind label %bb.ao

.noexc153:                                        ; preds = %bb.am
  %.pre.i.i150 = load ptr, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i151 = getelementptr inbounds i8, ptr %.pre.i.i150, i64 -4
  %.pre2.i.i152 = load i32, ptr %.phi.trans.insert.i.i151, align 4, !tbaa !39
  %.pre = load ptr, ptr %i.bq, align 8, !tbaa !38
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %.noexc153
  %i.hr = phi ptr [ %.pre, %.noexc153 ], [ %i.cm, %bb.al ]
  %i.hs = phi i32 [ %.pre2.i.i152, %.noexc153 ], [ %i.hn, %bb.al ] ; 2 uses
  %i.ht = phi ptr [ %.pre.i.i150, %.noexc153 ], [ %i.hk, %bb.al ] ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -4
  %i.hv = zext i32 %i.hs to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hv
  store ptr %i.ce, ptr %i.hw, align 8, !tbaa !50
  %i.hx = add i32 %i.hs, 1
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !39
  %i.hy = load i32, ptr %i.ck, align 8, !tbaa !91 ; 2 uses
  %i.hz = lshr i32 %i.hy, 5
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !39
  %i.id = and i32 %i.hy, 31
  %i.ie = shl nuw i32 1, %i.id
  %i.if = or i32 %i.ic, %i.ie
  store i32 %i.if, ptr %i.ib, align 4, !tbaa !39
  %i.ig = add i32 %.054245, 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.ap:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit141, %bb.an
  %.2.ph = phi i32 [ %.054245, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit141 ], [ %i.ig, %bb.an ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ii = load i32, ptr %i.bn, align 8, !tbaa !79
  %i.ij = zext i32 %i.ii to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.ij
  br i1 %.not, label %bb.j, label %._crit_edge, !llvm.loop !217

._crit_edge:                                      ; preds = %bb.ap, %.preheader226
  %.054.lcssa = phi i32 [ 0, %.preheader226 ], [ %.2.ph, %bb.ap ]
  %i.ik = load i32, ptr %i.bl, align 4, !tbaa !89 ; 3 uses
  %i.il = icmp ult i32 %.054.lcssa, %i.ik
  br i1 %i.il, label %.thread223, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr null, ptr %9, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.im = load ptr, ptr %0, align 8, !tbaa !120, !nonnull !44, !align !45
  %i.in = ptrtoint ptr %i.im to i64
  store i64 %i.in, ptr %10, align 8, !tbaa !16
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 10 uses
  store ptr null, ptr %i.io, align 8, !tbaa !35
  %i.ip = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %.preheader, label %_ZNK6vectorI6symbolLb1EjE4sizeEv.exit156

_ZNK6vectorI6symbolLb1EjE4sizeEv.exit156:         ; preds = %bb.aq
  %i.ir = getelementptr inbounds i8, ptr %i.ip, i64 -4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !39 ; 2 uses
  %.not83247 = icmp eq i32 %i.is, 0
  br i1 %.not83247, label %.preheader, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %_ZNK6vectorI6symbolLb1EjE4sizeEv.exit156
  %i.it = zext i32 %i.is to i64
  br label %.lr.ph249

.preheader.loopexit:                              ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit167
  %.pre261 = load i32, ptr %i.bl, align 4, !tbaa !89
  br label %.preheader

.preheader:                                       ; preds = %bb.aq, %.preheader.loopexit, %_ZNK6vectorI6symbolLb1EjE4sizeEv.exit156
  %i.iu = phi i32 [ %.pre261, %.preheader.loopexit ], [ %i.ik, %_ZNK6vectorI6symbolLb1EjE4sizeEv.exit156 ], [ %i.ik, %bb.aq ] ; 2 uses
  %.not253 = icmp eq i32 %i.iu, 0
  br i1 %.not253, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %.preheader
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br label %bb.ba

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit167
  %indvars.iv255 = phi i64 [ %i.it, %.lr.ph249.preheader ], [ %i.iw, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit167 ]
  %i.iw = add nsw i64 %indvars.iv255, -1          ; 4 uses
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = load ptr, ptr %9, align 8, !tbaa !55    ; 4 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph249
  %i.jb = getelementptr inbounds i8, ptr %i.iz, i64 -4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !39 ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %i.iz, i64 -8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !39
  %i.jf = icmp eq i32 %i.jc, %i.je
  br i1 %i.jf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %.lr.ph249
  invoke void @_ZN6vectorI6symbolLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc160 unwind label %bb.ax

.noexc160:                                        ; preds = %bb.as
  %.pre.i157 = load ptr, ptr %9, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert.i158 = getelementptr inbounds i8, ptr %.pre.i157, i64 -4
  %.pre2.i159 = load i32, ptr %.phi.trans.insert.i158, align 4, !tbaa !39
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %.noexc160
  %i.jg = phi i32 [ %.pre2.i159, %.noexc160 ], [ %i.jc, %bb.ar ] ; 2 uses
  %i.jh = phi ptr [ %.pre.i157, %.noexc160 ], [ %i.iz, %bb.ar ] ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -4
  %i.jj = zext i32 %i.jg to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jj
  %i.jl = load i64, ptr %i.iy, align 8, !tbaa !231
  store i64 %i.jl, ptr %i.jk, align 8, !tbaa !231
  %i.jm = add i32 %i.jg, 1
  store i32 %i.jm, ptr %i.ji, align 4, !tbaa !39
  %i.jn = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.iw
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i161 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i161, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i162, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !47
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !47
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i162

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i162: ; preds = %bb.au, %bb.at
  %i.jt = load ptr, ptr %i.io, align 8, !tbaa !35 ; 4 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i162
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !39 ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !39
  %i.jz = icmp eq i32 %i.jw, %i.jy
  br i1 %i.jz, label %bb.aw, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit167

bb.aw:                                            ; preds = %bb.av, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i162
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.io)
          to label %.noexc166 unwind label %bb.ax

.noexc166:                                        ; preds = %bb.aw
  %.pre.i.i163 = load ptr, ptr %i.io, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i.i164 = getelementptr inbounds i8, ptr %.pre.i.i163, i64 -4
  %.pre2.i.i165 = load i32, ptr %.phi.trans.insert.i.i164, align 4, !tbaa !39
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit167

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit167: ; preds = %bb.av, %.noexc166
  %i.ka = phi i32 [ %.pre2.i.i165, %.noexc166 ], [ %i.jw, %bb.av ] ; 2 uses
  %i.kb = phi ptr [ %.pre.i.i163, %.noexc166 ], [ %i.jt, %bb.av ] ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 -4
  %i.kd = zext i32 %i.ka to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kd
  store ptr %i.jp, ptr %i.ke, align 8, !tbaa !41
  %i.kf = add i32 %i.ka, 1
  store i32 %i.kf, ptr %i.kc, align 4, !tbaa !39
  %.not83.wide = icmp eq i64 %i.iw, 0
  br i1 %.not83.wide, label %.preheader.loopexit, label %.lr.ph249

bb.ax:                                            ; preds = %bb.aw, %bb.as
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

._crit_edge252:                                   ; preds = %bb.bh, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.kh = load ptr, ptr %0, align 8, !tbaa !120, !nonnull !44, !align !45
  %i.ki = load ptr, ptr %i.f, align 8, !tbaa !32  ; 3 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge252
  %i.kk = getelementptr inbounds i8, ptr %i.ki, i64 -4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !39
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %._crit_edge252, %bb.ay
  %.0.i.i = phi i32 [ %i.kl, %bb.ay ], [ 0, %._crit_edge252 ]
  %i.km = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.kh, ptr noundef %i.bk, i32 noundef %.0.i.i, ptr noundef %i.ki)
          to label %bb.bi unwind label %bb.cm     ; 6 uses

bb.az:                                            ; preds = %bb.bg, %bb.bc
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.ba:                                            ; preds = %.lr.ph251, %bb.bh
  %indvars.iv258 = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next259, %bb.bh ] ; 3 uses
  %i.ko = phi i32 [ %i.iu, %.lr.ph251 ], [ %i.ly, %bb.bh ]
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.kp
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv258
  %i.ks = load ptr, ptr %9, align 8, !tbaa !55    ; 4 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 -4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !39 ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.ks, i64 -8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !39
  %i.ky = icmp eq i32 %i.kv, %i.kx
  br i1 %i.ky, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  invoke void @_ZN6vectorI6symbolLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc172 unwind label %bb.az

.noexc172:                                        ; preds = %bb.bc
  %.pre.i169 = load ptr, ptr %9, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert.i170 = getelementptr inbounds i8, ptr %.pre.i169, i64 -4
  %.pre2.i171 = load i32, ptr %.phi.trans.insert.i170, align 4, !tbaa !39
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc172, %bb.bb
end_hunk_1
