Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/upolynomial_factorization?download=true
inline.NumInlined: 1056
inline.NumDeleted: 216
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11upolynomial18factor_square_freeERNS_12core_managerERK7svectorI3mpzjERNS0_7factorsEjRKN10polynomial13factor_paramsE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11upolynomial24factorization_degree_setC2ERKNS_12core_manager7factorsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.bit_vector, align 8          ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  invoke void @_ZN10bit_vector9expand_toEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 2)
          to label %_ZN10bit_vector9push_backEb.exit unwind label %bb.b

_ZN10bit_vector9push_backEb.exit:                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = or i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !37
  %i.f = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph: ; preds = %_ZN10bit_vector9push_backEb.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit: ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph, %._crit_edge
  %i.k = phi ptr [ %i.f, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph ], [ %i.z, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %i.o, label %bb.c, label %.critedge

.critedge:                                        ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit, %._crit_edge, %_ZN10bit_vector9push_backEb.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.c:                                             ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37
  %i.v = call i32 @llvm.usub.sat.i32(i32 %i.u, i32 1)
  br label %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit

_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit: ; preds = %bb.d, %bb.c
  %.0.i.i27 = phi i32 [ %i.v, %bb.d ], [ 0, %bb.c ]
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN10bit_vectorD2Ev.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit
  %i.z = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.k, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.critedge, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit, !llvm.loop !136

.lr.ph:                                           ; preds = %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit, %_ZN10bit_vectorD2Ev.exit
  %.029 = phi i32 [ %i.aq, %_ZN10bit_vectorD2Ev.exit ], [ 0, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !138
  %i.ac = load <2 x i32>, ptr %0, align 8, !tbaa !37
  store <2 x i32> %i.ac, ptr %2, align 8, !tbaa !37
  store ptr null, ptr %i.j, align 8, !tbaa !79
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN10bit_vectorC2ERKS_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ae = zext i32 %i.ab to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.af)
          to label %.noexc28 unwind label %bb.j   ; 2 uses

.noexc28:                                         ; preds = %bb.e
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !79
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.ai = load i32, ptr %i.i, align 4, !tbaa !138
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN10bit_vectorC2ERKS_.exit

_ZN10bit_vectorC2ERKS_.exit:                      ; preds = %.noexc28, %.lr.ph
  invoke void @_ZN10bit_vector11shift_rightEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0.i.i27)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZN10bit_vectorC2ERKS_.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN10bit_vectoroRERKS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !79  ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN10bit_vectorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.am)
          to label %_ZN10bit_vectorD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #21
  unreachable

_ZN10bit_vectorD2Ev.exit:                         ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.aq = add nuw i32 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %i.y
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !137

bb.j:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f, %_ZN10bit_vectorC2ERKS_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10bit_vectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.ar, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.b ], [ %.pn, %bb.l ]
  call void @_ZN10bit_vectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN14prime_iteratorC1EP15prime_generator(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) unnamed_addr #2

declare noundef i64 @_ZN14prime_iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11upolynomial12core_manager14is_square_freeEjPK3mpz(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11upolynomial12core_manager7factors4swapERS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11upolynomial24factorization_degree_setD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10bit_vectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN10bit_vectorD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable

_ZN10bit_vectorD2Ev.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4nextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37
  br label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %smax.i50 = tail call i32 @llvm.smax.i32(i32 %.0.i.i, i32 0) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %exitcond100.not129 = icmp slt i32 %.0.i.i, 1
  %i.l = add nsw i32 %smax.i50, -2
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge85, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit
  %.039 = phi i1 [ %1, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit ], [ false, %._crit_edge85 ]
  %i.m = load i32, ptr %i.g, align 8, !tbaa !86   ; 4 uses
  %i.n = add i32 %i.m, -1                         ; 3 uses
  br i1 %.039, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.o = icmp sgt i32 %i.m, 1
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !65  ; 6 uses
  %.pre102 = load ptr, ptr %i.j, align 8, !tbaa !89 ; 6 uses
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %2 = zext i32 %i.n to i64                       ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %.lr.ph.a
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.a ], [ %2, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.a ], [ 0, %.lr.ph ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.prol ; 2 uses
  %4 = load i32, ptr %3, align 4, !tbaa !37
  %i.p = zext i32 %4 to i64
  %5 = getelementptr inbounds nuw i8, ptr %.pre102, i64 %i.p
  store i8 0, ptr %5, align 1, !tbaa !90
  store i32 %.0.i.i, ptr %3, align 4, !tbaa !37
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.lr.ph.a, !llvm.loop !139

.prol.loopexit:                                   ; preds = %.lr.ph.a, %.lr.ph
  %indvars.iv.unr = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next.prol, %.lr.ph.a ]
  %6 = add nsw i32 %i.m, -2
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %._crit_edge.loopexit, label %bb.d

bb.d:                                             ; preds = %.prol.loopexit, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %9 = load i32, ptr %8, align 4, !tbaa !37
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %.pre102, i64 %10
  store i8 0, ptr %11, align 1, !tbaa !90
  store i32 %.0.i.i, ptr %8, align 4, !tbaa !37
  %12 = getelementptr [4 x i8], ptr %.pre, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 -4         ; 2 uses
  %14 = load i32, ptr %13, align 4, !tbaa !37
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %.pre102, i64 %15
  store i8 0, ptr %16, align 1, !tbaa !90
  store i32 %.0.i.i, ptr %13, align 4, !tbaa !37
  %17 = getelementptr [4 x i8], ptr %.pre, i64 %indvars.iv
  %18 = getelementptr i8, ptr %17, i64 -8         ; 2 uses
  %19 = load i32, ptr %18, align 4, !tbaa !37
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %.pre102, i64 %20
  store i8 0, ptr %21, align 1, !tbaa !90
  store i32 %.0.i.i, ptr %18, align 4, !tbaa !37
  %i.q = getelementptr [4 x i8], ptr %.pre, i64 %indvars.iv
  %22 = getelementptr i8, ptr %i.q, i64 -12       ; 2 uses
  %i.r = load i32, ptr %22, align 4, !tbaa !37
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.pre102, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !90
  store i32 %.0.i.i, ptr %22, align 4, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %23 = icmp sgt i64 %indvars.iv, 4
  br i1 %23, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !140

._crit_edge.loopexit:                             ; preds = %bb.d, %.prol.loopexit
  %.pre103 = load i32, ptr %i.g, align 8, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.u = phi i32 [ %i.m, %.preheader ], [ %.pre103, %._crit_edge.loopexit ]
  %.033.lcssa = phi i32 [ %i.n, %.preheader ], [ 0, %._crit_edge.loopexit ]
  %i.v = load i32, ptr %.pre, align 4, !tbaa !37
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre102, i64 %i.w
  store i8 0, ptr %i.x, align 1, !tbaa !90
  %i.y = load i32, ptr %i.k, align 8, !tbaa !91
  %i.z = sub nsw i32 %i.y, %i.u                   ; 2 uses
  store i32 %i.z, ptr %i.k, align 8, !tbaa !91
  %i.aa = sdiv i32 %i.z, 2
  store i32 %i.aa, ptr %i.h, align 4, !tbaa !92
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.134 = phi i32 [ %.033.lcssa, %._crit_edge ], [ %i.n, %bb.c ] ; 3 uses
  %i.ab = icmp sgt i32 %.134, -1
  br i1 %i.ab, label %.lr.ph77, label %.loopexit

.lr.ph77:                                         ; preds = %bb.e
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.ad = load ptr, ptr %i.j, align 8
  %i.ae = zext nneg i32 %.134 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph77, %bb.i
  %indvars.iv97 = phi i64 [ %i.ae, %.lr.ph77 ], [ %indvars.iv.next98, %bb.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv97 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37 ; 2 uses
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !37 ; 3 uses
  %i.aj = add nsw i32 %i.ai, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.aj) ; 3 uses
  %i.ak = add nsw i32 %smax.i, -1                 ; 2 uses
  %exitcond.not123 = icmp eq i32 %i.ai, %i.ak
  br i1 %exitcond.not123, label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit, label %.lr.ph126

bb.g:                                             ; preds = %.lr.ph126
  %exitcond.not = icmp eq i32 %.0.i, %i.ak
  br i1 %exitcond.not, label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit, label %.lr.ph126, !llvm.loop !141

.lr.ph126:                                        ; preds = %bb.f, %bb.g
  %.0.in.i124 = phi i32 [ %.0.i, %bb.g ], [ %i.ai, %bb.f ]
  %.0.i = add nsw i32 %.0.in.i124, 1              ; 4 uses
  %i.al = zext i32 %.0.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !90, !range !47, !noundef !19
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit_crit_edge127, label %bb.g, !llvm.loop !141

._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit_crit_edge127: ; preds = %.lr.ph126
  br label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit, !llvm.loop !141

_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit: ; preds = %bb.g, %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit_crit_edge127, %bb.f
  %.0.lcssa.i = phi i32 [ %smax.i, %bb.f ], [ %.0.i, %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit_crit_edge127 ], [ %smax.i, %bb.g ] ; 3 uses
  %i.ap = icmp eq i32 %.0.lcssa.i, %i.ah
  %..0.i = select i1 %i.ap, i32 -1, i32 %.0.lcssa.i ; 3 uses
  %i.aq = icmp sgt i32 %..0.i, -1
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit
  %i.ar = trunc nuw nsw i64 %indvars.iv97 to i32
  store i32 %..0.i, ptr %i.af, align 4, !tbaa !37
  br label %.loopexit

bb.i:                                             ; preds = %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, -1
  %i.as = icmp sgt i64 %indvars.iv97, 0
  br i1 %i.as, label %bb.f, label %.loopexit, !llvm.loop !142

.loopexit:                                        ; preds = %bb.i, %bb.e, %bb.h
  %.23569 = phi i32 [ %i.ar, %bb.h ], [ %.134, %bb.e ], [ -1, %bb.i ]
  %.1 = phi i32 [ %.0.lcssa.i, %bb.h ], [ -1, %bb.e ], [ %..0.i, %bb.i ]
  %i.at = icmp eq i32 %.1, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.s, %.loopexit
  %.336 = phi i32 [ %.23569, %.loopexit ], [ %.53882, %bb.s ]
  %.2 = phi i1 [ %i.at, %.loopexit ], [ true, %bb.s ]
  %.pre105 = load i32, ptr %i.g, align 8, !tbaa !86 ; 3 uses
  br i1 %.2, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.au = load i32, ptr %i.h, align 4, !tbaa !92
  %.not = icmp slt i32 %.pre105, %i.au
  br i1 %.not, label %bb.l, label %.thread63

bb.l:                                             ; preds = %bb.k
  %i.av = add nsw i32 %.pre105, 1
  store i32 %i.av, ptr %i.g, align 8, !tbaa !86
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !65  ; 2 uses
  store i32 -1, ptr %i.aw, align 4, !tbaa !37
  %i.ax = load ptr, ptr %i.j, align 8
  br i1 %exitcond100.not129, label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55, label %.lr.ph132

bb.m:                                             ; preds = %.lr.ph132
  %exitcond100.not = icmp eq i32 %.0.in.i51130, %i.l
  br i1 %exitcond100.not, label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55, label %.lr.ph132, !llvm.loop !141

.lr.ph132:                                        ; preds = %bb.l, %bb.m
  %.0.in.i51130 = phi i32 [ %.0.i52, %bb.m ], [ -1, %bb.l ] ; 2 uses
  %.0.i52 = add nsw i32 %.0.in.i51130, 1          ; 3 uses
  %i.ay = zext i32 %.0.i52 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !90, !range !47, !noundef !19
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55_crit_edge134, label %bb.m, !llvm.loop !141

._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55_crit_edge134: ; preds = %.lr.ph132
  br label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55, !llvm.loop !141

_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55: ; preds = %bb.m, %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55_crit_edge134, %bb.l
  %.0.lcssa.i53 = phi i32 [ %smax.i50, %bb.l ], [ %.0.i52, %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55_crit_edge134 ], [ %smax.i50, %bb.m ] ; 3 uses
  %i.bc = icmp eq i32 %.0.lcssa.i53, %.0.i.i
  %i.bd = icmp eq i32 %.0.lcssa.i53, -1
  %i.be = or i1 %i.bc, %i.bd
  br i1 %i.be, label %.thread63, label %bb.n

bb.n:                                             ; preds = %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55
  store i32 %.0.lcssa.i53, ptr %i.aw, align 4, !tbaa !37
  %.pre104 = load i32, ptr %i.g, align 8, !tbaa !86
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.bf = phi i32 [ %.pre104, %bb.n ], [ %.pre105, %bb.j ]
  %.437 = phi i32 [ 0, %bb.n ], [ %.336, %bb.j ]  ; 2 uses
  %.53880 = add nsw i32 %.437, 1                  ; 2 uses
  %i.bg = icmp slt i32 %.53880, %i.bf
  br i1 %i.bg, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %bb.o
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !65  ; 3 uses
  %.phi.trans.insert = zext i32 %.437 to i64
  %.phi.trans.insert106 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.phi.trans.insert
  %.pre107 = load i32, ptr %.phi.trans.insert106, align 4, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph84, %bb.r
  %i.bi = phi i32 [ %.pre107, %.lr.ph84 ], [ %.0.lcssa.i59, %bb.r ] ; 4 uses
  %.53882 = phi i32 [ %.53880, %.lr.ph84 ], [ %.538, %bb.r ] ; 3 uses
  %i.bj = zext i32 %.53882 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj ; 2 uses
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !37
  %i.bl = load ptr, ptr %i.j, align 8
  %i.bm = add nsw i32 %i.bi, 1
  %smax.i56 = tail call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %i.bm) ; 3 uses
  %i.bn = add nsw i32 %smax.i56, -1               ; 2 uses
  %exitcond101.not136 = icmp eq i32 %i.bi, %i.bn
  br i1 %exitcond101.not136, label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61, label %.lr.ph139

bb.q:                                             ; preds = %.lr.ph139
  %exitcond101.not = icmp eq i32 %.0.i58, %i.bn
  br i1 %exitcond101.not, label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61, label %.lr.ph139, !llvm.loop !141

.lr.ph139:                                        ; preds = %bb.p, %bb.q
  %.0.in.i57137 = phi i32 [ %.0.i58, %bb.q ], [ %i.bi, %bb.p ]
  %.0.i58 = add nsw i32 %.0.in.i57137, 1          ; 4 uses
  %i.bo = zext i32 %.0.i58 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !90, !range !47, !noundef !19
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61_crit_edge141, label %bb.q, !llvm.loop !141

._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61_crit_edge141: ; preds = %.lr.ph139
  br label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61, !llvm.loop !141

_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61: ; preds = %bb.q, %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61_crit_edge141, %bb.p
  %.0.lcssa.i59 = phi i32 [ %smax.i56, %bb.p ], [ %.0.i58, %._ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61_crit_edge141 ], [ %smax.i56, %bb.q ] ; 4 uses
  %i.bs = icmp eq i32 %.0.lcssa.i59, %.0.i.i
  %i.bt = icmp eq i32 %.0.lcssa.i59, -1
  %i.bu = or i1 %i.bs, %i.bt
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61
  store i32 %.0.lcssa.i59, ptr %i.bk, align 4, !tbaa !37
  %.538 = add nsw i32 %.53882, 1                  ; 2 uses
  %i.bv = load i32, ptr %i.g, align 8, !tbaa !86
  %i.bw = icmp slt i32 %.538, %i.bv
  br i1 %i.bw, label %bb.p, label %._crit_edge85, !llvm.loop !143

bb.s:                                             ; preds = %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit61
  store i32 -1, ptr %i.bh, align 4, !tbaa !37
  br label %bb.j, !llvm.loop !144

._crit_edge85:                                    ; preds = %bb.o, %bb.r
  %i.bx = load ptr, ptr %0, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %i.ca, label %bb.c, label %.thread63, !llvm.loop !145

.thread63:                                        ; preds = %._crit_edge85, %bb.k, %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55
  %cond65 = phi i1 [ false, %bb.k ], [ false, %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEE4findEii.exit55 ], [ true, %._crit_edge85 ]
  ret i1 %cond65
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11upolynomial35ufactorization_combination_iterator19get_left_tail_coeffERK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76, !nonnull !19, !align !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !38
  store i32 %i.j, ptr %2, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -2
  store i8 %i.m, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !18, !nonnull !19, !align !20
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !46, !range !47, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit

_ZN13mpzzp_manager3setER3mpzRKS0_.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !86
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !18, !nonnull !19, !align !20
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ae = load i8, ptr %i.o, align 8, !tbaa !46, !range !47, !noundef !19
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !86
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.e, label %._crit_edge, !llvm.loop !147
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11upolynomial35ufactorization_combination_iterator20get_right_tail_coeffERK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76, !nonnull !19, !align !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !38
  store i32 %i.j, ptr %2, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -2
  store i8 %i.m, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !18, !nonnull !19, !align !20
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !46, !range !47, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit

_ZN13mpzzp_manager3setER3mpzRKS0_.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph: ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit: ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ 0, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 5 uses
  %i.w = phi ptr [ %i.s, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph ], [ %i.aw, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 2 uses
  %.020 = phi i32 [ 0, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph ], [ %.1, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 6 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv, %i.z
  br i1 %i.aa, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !90, !range !47, !noundef !19
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !65  ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.critedge18, label %_ZNK6vectorIiLb0EjE4sizeEv.exit

_ZNK6vectorIiLb0EjE4sizeEv.exit:                  ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.aj = icmp ult i32 %.020, %i.ai
  br i1 %i.aj, label %bb.g, label %.critedge18

bb.g:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit
  %i.ak = zext i32 %.020 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !37
  %i.an = trunc nuw i64 %indvars.iv to i32
  %i.ao = icmp sgt i32 %i.am, %i.an
  br i1 %i.ao, label %.critedge18, label %bb.i

.critedge18:                                      ; preds = %bb.f, %bb.g, %_ZNK6vectorIiLb0EjE4sizeEv.exit
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !18, !nonnull !19, !align !20
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.as = load i8, ptr %i.o, align 8, !tbaa !46, !range !47, !noundef !19
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %.critedge18
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.au = add nuw i32 %.020, 1
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %bb.h, %.critedge18, %bb.e, %bb.i
  %.1 = phi i32 [ %.020, %bb.e ], [ %i.au, %bb.i ], [ %.020, %.critedge18 ], [ %.020, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.critedge, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit, !llvm.loop !148

.critedge:                                        ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11upolynomial35ufactorization_combination_iterator5rightER7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76, !nonnull !19, !align !20 ; 3 uses
  tail call void @_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit: ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 6 uses
  %i.j = phi ptr [ %i.f, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph ], [ %i.at, %bb.h ] ; 3 uses
  %.031 = phi i32 [ 0, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit.lr.ph ], [ %.1, %bb.h ] ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv, %i.m
  br i1 %i.n, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !90, !range !47, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !65   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge29, label %_ZNK6vectorIiLb0EjE4sizeEv.exit

_ZNK6vectorIiLb0EjE4sizeEv.exit:                  ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  %i.w = icmp ult i32 %.031, %i.v
  br i1 %i.w, label %bb.d, label %.critedge29

bb.d:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit
  %i.x = zext i32 %.031 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %i.aa = trunc nuw i64 %indvars.iv to i32
  %i.ab = icmp sgt i32 %i.z, %i.aa
  br i1 %i.ab, label %.critedge29, label %bb.g

.critedge29:                                      ; preds = %bb.c, %bb.d, %_ZNK6vectorIiLb0EjE4sizeEv.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !34    ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNK6vectorI3mpzLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorI3mpzLb0EjE5emptyEv.exit

_ZNK6vectorI3mpzLb0EjE5emptyEv.exit:              ; preds = %.critedge29
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !37 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK6vectorI3mpzLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit26

_ZNK6vectorI3mpzLb0EjE5emptyEv.exit.thread:       ; preds = %.critedge29, %_ZNK6vectorI3mpzLb0EjE5emptyEv.exit
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE5emptyEv.exit.thread
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %_ZNK6vectorI3mpzLb0EjE5emptyEv.exit.thread, %bb.e
  %.0.i24 = phi i32 [ %i.al, %bb.e ], [ 0, %_ZNK6vectorI3mpzLb0EjE5emptyEv.exit.thread ]
  tail call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %i.d, i32 noundef %.0.i24, ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.h

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit26:             ; preds = %_ZNK6vectorI3mpzLb0EjE5emptyEv.exit
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit28, label %bb.f

bb.f:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit26
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit28

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit28:             ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit26, %bb.f
  %.0.i27 = phi i32 [ %i.aq, %bb.f ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit26 ]
  tail call void @_ZN11upolynomial12core_manager3mulEjPK3mpzjS3_R7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %i.d, i32 noundef %i.af, ptr noundef nonnull %i.ac, i32 noundef %.0.i27, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ar = add nuw i32 %.031, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit28, %bb.b, %bb.g
  %.1 = phi i32 [ %.031, %bb.b ], [ %i.ar, %bb.g ], [ %.031, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit28 ], [ %.031, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit, !llvm.loop !149

.critedge:                                        ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIiLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIiLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable

_ZN6vectorIiLb0EjED2Ev.exit:                      ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZN6vectorIbLb0EjED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIiLb0EjED2Ev.exit
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN6vectorIbLb0EjED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

_ZN6vectorIbLb0EjED2Ev.exit:                      ; preds = %_ZN6vectorIiLb0EjED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11upolynomial18factor_square_freeERNS_12core_managerERK7svectorI3mpzjERNS0_7factorsERKN10polynomial13factor_paramsE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN11upolynomial18factor_square_freeERNS_12core_managerERK7svectorI3mpzjERNS0_7factorsEjRKN10polynomial13factor_paramsE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(12) %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !24

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !27
  store i64 %i.c, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.j, ptr %i.i, align 1, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11upolynomial21upolynomial_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN17default_exceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZN17default_exceptionD2Ev.exit

_ZN17default_exceptionD2Ev.exit:                  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK17default_exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

declare noundef i32 @_ZNK12z3_exception10error_codeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare void @_ZN11upolynomial12core_manager8mk_monicEjP3mpzRS1_S3_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.c = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 1
end_hunk_0
begin_hunk_1_@_ZN6vectorIiLb0EjE13expand_vectorEv:bb.a
bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !65
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !34
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 4
  %.not31 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not31
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !23
  %i.p = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !27
  %i.w = load i64, ptr %i.q, align 8, !tbaa !28
  store i64 %i.w, ptr %i.o, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !29
  store ptr %i.q, ptr %1, align 8, !tbaa !27
  store i64 0, ptr %i.y, align 8, !tbaa !29
  store i8 0, ptr %i.q, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !28
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.m) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn36 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn36

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ah) ; 5 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %_ZN6vectorI3mpzLb0EjE7destroyEv.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %bb.j
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !37 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ar = zext i32 %i.ao to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ar, 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i
  %i.at = icmp eq i32 %i.ao, 0
  br i1 %i.at, label %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread49, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit ] ; 4 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, -4
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.ay = load i32, ptr %.sroa.04.07.i.i.i.i.i.i, align 4, !tbaa !37
  store i32 %i.ay, ptr %.08.i.i.i.i.i.i, align 4, !tbaa !37
  store i32 0, ptr %.sroa.04.07.i.i.i.i.i.i, align 4, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !45
  store ptr null, ptr %i.az, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 4             ; 2 uses
  %i.bd = and i8 %i.bc, 3
  %i.be = or disjoint i8 %i.bd, %i.aw
  store i8 %i.be, ptr %i.au, align 4
  %i.bf = and i8 %i.bc, -4
  store i8 %i.bf, ptr %i.bb, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.as
  br i1 %i.bi, label %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !150

_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !34  ; 2 uses
  %.not.i = icmp eq ptr %.pre40, null
  br i1 %.not.i, label %_ZN6vectorI3mpzLb0EjE7destroyEv.exit, label %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread49

_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread49: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit
  %i.bj = phi ptr [ %.pre40, %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit ], [ %i.aj, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bk)
  br label %_ZN6vectorI3mpzLb0EjE7destroyEv.exit

_ZN6vectorI3mpzLb0EjE7destroyEv.exit:             ; preds = %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread, %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit, %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread49
  %i.bl = phi ptr [ %i.am, %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread ], [ %i.aq, %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit ], [ %i.aq, %_ZSt20uninitialized_move_nIP3mpzjS1_ESt4pairIT_T1_ES3_T0_S4_.exit.thread49 ]
  store ptr %i.bl, ptr %0, align 8, !tbaa !34
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %_ZN6vectorI3mpzLb0EjE7destroyEv.exit, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN11mpz_managerILb0EE6submulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11upolynomial12core_manager2eqEjPK3mpzjS3_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11upolynomial12core_manager3divEjP3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11upolynomial12core_manager7div_remEjPK3mpzjS3_RjR7svectorIS1_jES7_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13mpzzp_manager7setup_pEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %class.mpz, align 8                 ; 6 uses
  %2 = alloca %class.mpz, align 8                 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.in.in.in.i = select i1 %i.e, ptr %i.a, ptr %i.h
  %.0.in.in.i = load i32, ptr %.0.in.in.in.i, align 4, !tbaa !37
  %.0.in.i = and i32 %.0.in.in.i, 1
  %.0.i = icmp eq i32 %.0.in.i, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i32 2, ptr %2, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -4
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.n, align 8, !tbaa !38
  store i32 %i.t, ptr %i.o, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.u, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.b, %bb.c
  %i.y = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br i1 %.0.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i32 1, ptr %1, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !39
  call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  ret void
}

declare void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_S4_S4_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN10bit_vector11shift_rightEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN10bit_vectoroRERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10bit_vectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
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

declare void @_ZN10bit_vector9expand_toEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE12set_big_ui64ER3mpzm(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN10bit_vectoraNERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11mpz_managerILb0EE4rootER3mpzj(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !52     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14.thread, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14.thread: ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !154
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !65
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i:                ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = lshr i32 %i.i, 1
  store i32 %i.k, ptr %i.j, align 4, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.l, align 8, !tbaa !154
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr null, ptr %i.m, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store ptr null, ptr %i.n, align 8, !tbaa !65
  %i.o = load i32, ptr %i.h, align 4, !tbaa !37   ; 4 uses
  %.not.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.not.i, label %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit.thread50, label %.preheader

thread-pre-split.i:                               ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %i.m, align 8, !tbaa !89
  br label %.preheader

.preheader:                                       ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i, %thread-pre-split.i
  %i.p = phi ptr [ %.pr.pre.i, %thread-pre-split.i ], [ null, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i ] ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.i

_ZNK6vectorIbLb0EjE8capacityEv.exit.i:            ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !37
  %i.t = icmp ugt i32 %i.o, %i.s
  br i1 %i.t, label %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i, label %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit

_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.i, %.preheader
  invoke void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %thread-pre-split.i unwind label %bb.d

_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit:         ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.i
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 %i.o, ptr %i.u, align 4, !tbaa !37
  %i.v = zext i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 1, i64 %i.v, i1 false), !tbaa !90
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !87
  %.pre42 = load ptr, ptr %.pre, align 8, !tbaa !52 ; 2 uses
  %i.w = icmp eq ptr %.pre42, null
  br i1 %i.w, label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14, label %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit.thread50

_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit.thread50: ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i, %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit
  %i.x = phi ptr [ %.pre42, %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit ], [ %i.b, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  br label %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14

_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14: ; preds = %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit, %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit.thread50
  %.0.i.i13.ph = phi i32 [ 0, %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit ], [ %i.z, %_ZN6vectorIbLb0EjE6resizeIbEEvjRKT_.exit.thread50 ] ; 3 uses
  %.pr = load ptr, ptr %i.n, align 8, !tbaa !65   ; 3 uses
  %i.aa = add i32 %.0.i.i13.ph, 1                 ; 4 uses
  %i.ab = icmp eq ptr %.pr, null
  br i1 %i.ab, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIiLb0EjE4sizeEv.exit.i:                ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14.thread, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14
  %i.ac = phi i32 [ 1, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14.thread ], [ %i.aa, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14 ] ; 2 uses
  %.0.i.i1355 = phi i32 [ 0, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14.thread ], [ %.0.i.i13.ph, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14 ]
  %i.ad = phi ptr [ %i.f, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14.thread ], [ %i.m, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14 ]
  %i.ae = phi ptr [ %i.g, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14.thread ], [ %i.n, %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14 ]
  %.not.not.i27 = icmp eq i32 %i.ac, 0
  br i1 %.not.not.i27, label %_ZN6vectorIiLb0EjE6resizeIjEEvjRKT_.exit, label %thread-pre-split.i16.preheader

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i:         ; preds = %_ZNK11upolynomial12core_manager7factors16distinct_factorsEv.exit14
  %i.af = getelementptr inbounds i8, ptr %.pr, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37 ; 2 uses
  %.not16.i15 = icmp ugt i32 %i.aa, %i.ag
  br i1 %.not16.i15, label %thread-pre-split.i16.preheader, label %bb.b

thread-pre-split.i16.preheader:                   ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i
  %.ph = phi i32 [ %i.aa, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ], [ %i.ac, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ] ; 4 uses
  %.0.i.i1354.ph = phi i32 [ %.0.i.i13.ph, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ], [ %.0.i.i1355, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.ph58 = phi ptr [ %i.m, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ], [ %i.ad, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ]
  %.ph59 = phi ptr [ %i.n, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ], [ %i.ae, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ] ; 3 uses
  %.ph60 = phi ptr [ %.pr, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ]
  %.0.i17.i19.ph = phi i32 [ %i.ag, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i16

bb.b:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i
  store i32 %i.aa, ptr %i.af, align 4, !tbaa !37
  br label %_ZN6vectorIiLb0EjE6resizeIjEEvjRKT_.exit

thread-pre-split.i16:                             ; preds = %thread-pre-split.i16.preheader, %.noexc28
  %i.ah = phi ptr [ %.pr.pre.i26, %.noexc28 ], [ %.ph60, %thread-pre-split.i16.preheader ] ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.i

_ZNK6vectorIiLb0EjE8capacityEv.exit.i:            ; preds = %thread-pre-split.i16
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37
  %i.al = icmp ugt i32 %.ph, %i.ak
  br i1 %i.al, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i, label %bb.c

_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i, %thread-pre-split.i16
  invoke void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %.ph59)
          to label %.noexc28 unwind label %bb.e

.noexc28:                                         ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i26 = load ptr, ptr %.ph59, align 8, !tbaa !65
  br label %thread-pre-split.i16, !llvm.loop !151

bb.c:                                             ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 -4
  store i32 %.ph, ptr %i.am, align 4, !tbaa !37
  %i.an = zext i32 %.ph to i64                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.an
  %.not1319.i20 = icmp eq i32 %.0.i17.i19.ph, %.ph
  br i1 %.not1319.i20, label %_ZN6vectorIiLb0EjE6resizeIjEEvjRKT_.exit, label %.lr.ph.preheader.i21

.lr.ph.preheader.i21:                             ; preds = %bb.c
  %i.ap = zext i32 %.0.i17.i19.ph to i64          ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ap ; 3 uses
  %i.ar = shl nuw nsw i64 %i.an, 2
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = add nsw i64 %i.ar, -4
  %i.au = sub nsw i64 %i.at, %i.as                ; 2 uses
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 28
  br i1 %min.iters.check, label %.lr.ph.i23.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i21
  %n.vec = and i64 %i.aw, 9223372036854775800     ; 3 uses
  %i.ax = shl i64 %n.vec, 2
  %i.ay = getelementptr i8, ptr %i.aq, i64 %i.ax
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.i.i1354.ph, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !37
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZN6vectorIiLb0EjE6resizeIjEEvjRKT_.exit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %.lr.ph.preheader.i21, %middle.block
  %.020.i24.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i21 ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %.lr.ph.i23
  %.020.i24 = phi ptr [ %i.bc, %.lr.ph.i23 ], [ %.020.i24.ph, %.lr.ph.i23.preheader ] ; 2 uses
  store i32 %.0.i.i1354.ph, ptr %.020.i24, align 4, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.020.i24, i64 4 ; 2 uses
  %.not13.i25 = icmp eq ptr %i.bc, %i.ao
  br i1 %.not13.i25, label %_ZN6vectorIiLb0EjE6resizeIjEEvjRKT_.exit, label %.lr.ph.i23, !llvm.loop !153

_ZN6vectorIiLb0EjE6resizeIjEEvjRKT_.exit:         ; preds = %.lr.ph.i23, %middle.block, %bb.c, %bb.b, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bd, align 8, !tbaa !86
  ret void

bb.d:                                             ; preds = %_ZNK6vectorIbLb0EjE8capacityEv.exit.thread.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bg = phi ptr [ %.ph59, %bb.e ], [ %i.n, %bb.d ]
  %i.bh = phi ptr [ %.ph58, %bb.e ], [ %i.m, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.e ], [ %i.be, %bb.d ]
  tail call void @_ZN6vectorIiLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #18
  tail call void @_ZN6vectorIbLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11upolynomial35ufactorization_combination_iteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6vectorIiLb0EjED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIiLb0EjED2Ev.exit.i unwind label %bb.c, !inline_history !88

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21, !inline_history !88
  unreachable

_ZN6vectorIiLb0EjED2Ev.exit.i:                    ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIiLb0EjED2Ev.exit.i
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEED2Ev.exit unwind label %bb.e, !inline_history !88

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21, !inline_history !88
  unreachable

_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEED2Ev.exit: ; preds = %_ZN6vectorIiLb0EjED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK11upolynomial35ufactorization_combination_iterator14filter_currentEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158, !nonnull !19, !align !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86   ; 4 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87, !nonnull !19, !align !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  %wide.trip.count.i = zext i32 %i.d to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.j = icmp eq i32 %i.d, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.1, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.1 ] ; 3 uses
  %.067.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ae, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.1 ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.1 ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !37
  %i.s = tail call i32 @llvm.usub.sat.i32(i32 %i.r, i32 1)
  br label %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i

_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %bb.b ]
  %i.t = add i32 %.0.i.i.i, %.067.i
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.1, label %bb.d

bb.d:                                             ; preds = %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ad = tail call i32 @llvm.usub.sat.i32(i32 %i.ac, i32 1)
  br label %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.1

_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.1: ; preds = %bb.d, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i
  %.0.i.i.i.1 = phi i32 [ %i.ad, %bb.d ], [ 0, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i ]
  %i.ae = add i32 %.0.i.i.i.1, %i.t               ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3

_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit.loopexit.unr-lcssa: ; preds = %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit.loopexit.unr-lcssa ]
  %.067.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.ae, %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.epil.init
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.epil, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !37
  %i.an = tail call i32 @llvm.usub.sat.i32(i32 %i.am, i32 1)
  br label %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.epil

_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.epil: ; preds = %bb.e, %.epil.preheader
  %.0.i.i.i.epil = phi i32 [ %i.an, %bb.e ], [ 0, %.epil.preheader ]
  %i.ao = add i32 %.0.i.i.i.epil, %.067.i.epil.init
  br label %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit

_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit: ; preds = %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.epil, %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit.loopexit.unr-lcssa, %bb.a
  %.06.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ae, %_ZNK11upolynomial35ufactorization_combination_iterator14current_degreeEv.exit.loopexit.unr-lcssa ], [ %i.ao, %_ZN11upolynomial12core_manager6degreeERK7svectorI3mpzjE.exit.i.epil ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.ar = lshr i32 %.06.lcssa.i, 5
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !37
  %i.av = and i32 %.06.lcssa.i, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = and i32 %i.au, %i.aw
  %.not = icmp eq i32 %i.ax, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIbLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIbLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIbLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIbLb0EjE7destroyEv.exit:                ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !89
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %narrow = add nuw i32 %i.j, 8                   ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.k = add i32 %i.g, 8
  %.not27 = icmp ugt i32 %narrow, %i.k
  %or.cond = select i1 %.not, i1 %.not27, i1 false
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !23
  %i.o = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.o, ptr %i.m, align 8, !tbaa !27
  %i.v = load i64, ptr %i.p, align 8, !tbaa !28
  store i64 %i.v, ptr %i.n, align 8, !tbaa !28
end_hunk_1
begin_hunk_2_@_ZN6vectorIbLb0EjE13expand_vectorEv:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %0, align 8, !tbaa !89
  store i32 %i.j, ptr %i.ag, align 4, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

declare noundef zeroext i1 @_ZN11mpz_managerILb0EE7dividesERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11upolynomial12core_manager9exact_divEjPK3mpzjS3_R7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN11upolynomial12core_manager25get_primitive_and_contentEjPK3mpzR7svectorIS1_jERS1_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !40}
!1 = distinct !{!1, !40}
!2 = distinct !{!2, !40}
!3 = distinct !{!3, !40}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS11mpz_managerILb0EE", !12, i64 0}
!14 = !{!"bool", !8, i64 0}
!15 = !{!"p1 _ZTS8mpz_cell", !12, i64 0}
!16 = !{!"_ZTS3mpz", !9, i64 0, !9, i64 4, !9, i64 4, !15, i64 8}
!17 = !{!"_ZTS13mpzzp_manager", !13, i64 0, !14, i64 8, !16, i64 16, !16, i64 32, !16, i64 48, !14, i64 64, !16, i64 72, !16, i64 88, !16, i64 104, !16, i64 120}
!18 = !{!17, !13, i64 0}
!19 = !{}
!20 = !{i64 8}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!"long", !8, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !25, i64 8, !8, i64 16}
!27 = !{!26, !21, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!26, !25, i64 8}
!30 = !{!"vtable pointer", !7, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTS3mpz", !12, i64 0}
!33 = !{!"_ZTS6vectorI3mpzLb0EjE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"p1 _ZTS13mpzzp_manager", !12, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!9, !9, i64 0}
!38 = !{!16, !9, i64 0}
!39 = !{!16, !15, i64 8}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!32, !32, i64 0}
!42 = !{!"_ZTS7svectorI3mpzjE", !33, i64 0}
!43 = !{!"_ZTS22_scoped_numeral_vectorI13mpzzp_managerE", !42, i64 0, !35, i64 8}
!44 = !{!43, !35, i64 8}
!45 = !{!15, !15, i64 0}
!46 = !{!17, !14, i64 8}
!47 = !{i8 0, i8 2}
!48 = !{!"_ZTS15_scoped_numeralI13mpzzp_managerE", !35, i64 0, !16, i64 8}
!49 = !{!48, !35, i64 0}
!50 = !{!"p1 _ZTS7svectorI3mpzjE", !12, i64 0}
!51 = !{!"_ZTS6vectorI7svectorI3mpzjELb1EjE", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!"p1 int", !12, i64 0}
!54 = !{!"_ZTS6vectorIjLb0EjE", !53, i64 0}
!55 = !{!54, !53, i64 0}
!56 = !{!"_ZTS7svectorIjjE", !54, i64 0}
!57 = !{!"p1 _ZTSN11upolynomial12core_managerE", !12, i64 0}
!58 = !{!"_ZTSN11upolynomial12core_manager7factorsE", !51, i64 0, !56, i64 8, !57, i64 16, !16, i64 24, !9, i64 40, !9, i64 44}
!59 = !{!58, !9, i64 40}
!60 = !{!"_ZTS6vectorIiLb0EjE", !53, i64 0}
!61 = !{!"_ZTS7svectorIijE", !60, i64 0}
!62 = !{!"_ZTSN11upolynomial16berlekamp_matrixE", !57, i64 0, !35, i64 8, !42, i64 16, !9, i64 24, !9, i64 28, !61, i64 32, !61, i64 40}
!63 = !{!62, !9, i64 24}
!64 = !{!62, !9, i64 28}
!65 = !{!60, !53, i64 0}
!66 = !{!62, !35, i64 8}
!67 = !{!13, !13, i64 0}
!68 = !{!"p1 _ZTS8reslimit", !12, i64 0}
!69 = !{!"_ZTSN11upolynomial12core_managerE", !68, i64 0, !17, i64 8, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !8, i64 200, !42, i64 248, !42, i64 256, !42, i64 264}
!70 = !{!69, !68, i64 0}
!71 = !{!17, !14, i64 64}
!72 = !{!"_ZTS22_scoped_numeral_vectorI11mpz_managerILb0EEE", !42, i64 0, !13, i64 8}
!73 = !{!72, !13, i64 8}
!74 = !{!"_ZTS15_scoped_numeralI11mpz_managerILb0EEE", !13, i64 0, !16, i64 8}
!75 = !{!74, !13, i64 0}
!76 = !{!58, !57, i64 16}
!77 = !{!"_ZTS10bit_vector", !9, i64 0, !9, i64 4, !53, i64 8}
!78 = !{!77, !9, i64 0}
!79 = !{!77, !53, i64 8}
!80 = !{!"p1 _ZTSN11upolynomial24factorization_degree_setE", !12, i64 0}
!81 = !{!"p1 _ZTSN11upolynomial12core_manager7factorsE", !12, i64 0}
!82 = !{!"p1 bool", !12, i64 0}
!83 = !{!"_ZTS6vectorIbLb0EjE", !82, i64 0}
!84 = !{!"_ZTS7svectorIbjE", !83, i64 0}
!85 = !{!"_ZTSN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEEE", !9, i64 8, !9, i64 12, !81, i64 16, !84, i64 24, !9, i64 32, !61, i64 40}
!86 = !{!85, !9, i64 32}
!87 = !{!85, !81, i64 16}
!88 = !{ptr @_ZN11upolynomial39factorization_combination_iterator_baseINS_12core_manager7factorsEED2Ev}
!89 = !{!83, !82, i64 0}
!90 = !{!14, !14, i64 0}
!91 = !{!85, !9, i64 8}
!92 = !{!85, !9, i64 12}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !40}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40}
!102 = distinct !{!102, !40}
!103 = distinct !{!103, !40}
!104 = distinct !{!104, !40}
!105 = !{!57, !57, i64 0}
!106 = distinct !{!106, !40, !111}
!107 = distinct !{!107, !40}
!108 = distinct !{!108, !40}
!109 = distinct !{!109, !40}
!110 = distinct !{!110, !40}
!111 = !{!"llvm.loop.unswitch.partial.disable"}
!112 = distinct !{!112, !40}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
!119 = distinct !{!119, !40}
!120 = distinct !{!120, !40, !121}
!121 = !{!"llvm.loop.peeled.count", i32 1}
!122 = distinct !{!122, !40}
!123 = distinct !{!123, !40}
!124 = distinct !{!124, !40}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !40}
!127 = distinct !{!127, !40}
!128 = distinct !{!128, !40}
!129 = !{!"_ZTSN10polynomial13factor_paramsE", !9, i64 0, !9, i64 4, !9, i64 8}
!130 = !{!129, !9, i64 0}
!131 = !{!53, !53, i64 0}
!132 = !{!129, !9, i64 4}
!133 = !{!80, !80, i64 0}
!134 = !{!129, !9, i64 8}
!135 = !{!58, !9, i64 44}
!136 = distinct !{!136, !40}
!137 = distinct !{!137, !40}
!138 = !{!77, !9, i64 4}
!139 = distinct !{!139, !146}
!140 = distinct !{!140, !40}
!141 = distinct !{!141, !40}
!142 = distinct !{!142, !40}
!143 = distinct !{!143, !40}
!144 = distinct !{!144, !40}
!145 = distinct !{!145, !40}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = distinct !{!147, !40}
!148 = distinct !{!148, !40}
!149 = distinct !{!149, !40}
!150 = distinct !{!150, !40}
!151 = distinct !{!151, !40}
!152 = distinct !{!152, !40, !155, !156}
!153 = distinct !{!153, !40, !156, !155}
!154 = !{!81, !81, i64 0}
!155 = !{!"llvm.loop.isvectorized", i32 1}
!156 = !{!"llvm.loop.unroll.runtime.disable"}
!157 = !{!"_ZTSN11upolynomial35ufactorization_combination_iteratorE", !85, i64 0, !80, i64 48}
!158 = !{!157, !80, i64 48}
end_hunk_2
