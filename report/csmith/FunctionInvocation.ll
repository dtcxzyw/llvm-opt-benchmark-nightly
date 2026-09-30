Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FunctionInvocation?download=true
inline.NumInlined: 600
inline.NumDeleted: 288
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK18FunctionInvocation16get_called_funcsERSt6vectorIPK22FunctionInvocationUserSaIS3_EE:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.n = add nuw i64 %.07, 1                      ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.n, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !141

bb.b:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !144  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.w, align 8, !tbaa !147
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.v, align 8, !tbaa !144
  br label %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %1, align 8, !tbaa !148   ; 4 uses
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.e, label %_ZNKSt6vectorIPK22FunctionInvocationUserSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZNKSt6vectorIPK22FunctionInvocationUserSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %0, ptr %i.am, align 8, !tbaa !147
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPK22FunctionInvocationUserSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPK22FunctionInvocationUserSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #23
  br label %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.al, ptr %1, align 8, !tbaa !148
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !144
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !145
  br label %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPK22FunctionInvocationUserSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK18FunctionInvocation18has_uncertain_callEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not8 = icmp eq ptr %i.c, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.e = icmp samesign ugt i32 %spec.select, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.05.lcssa = phi i1 [ false, %bb.a ], [ %i.e, %._crit_edge.loopexit ]
  ret i1 %.05.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ]
  %.07 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %.056 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = tail call noundef i32 @_ZNK10Expression10func_countEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  %.not = icmp ne i32 %i.i, 0
  %i.j = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.056, %i.j      ; 2 uses
  %i.k = add nuw i64 %.07, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !149
}

declare noundef i32 @_ZNK10Expression10func_countEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK18FunctionInvocation28has_uncertain_call_recursiveEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.e = phi ptr [ %i.p, %.critedge ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.q, %.critedge ], [ %i.c, %bb.a ]
  %.01116 = phi i64 [ %i.r, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01116
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !108
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br i1 %i.o, label %.loopexit, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !103
  %.pre17 = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.lr.ph
  %i.p = phi ptr [ %.pre17, %..critedge_crit_edge ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.q = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.r = add nuw i64 %.01116, 1                   ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = icmp ult i64 %i.r, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.5 = phi i1 [ %i.aa, %._crit_edge ], [ true, %bb.b ]
  ret i1 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK18FunctionInvocation17has_simple_paramsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.0710 = phi i64 [ %i.n, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0710
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !108
  %.not.not = icmp ne i32 %i.m, 2                 ; 2 uses
  %i.n = add nuw i64 %.0710, 1                    ; 2 uses
  %exitcond.not = icmp ne i64 %i.n, %i.i
  %or.cond.not = select i1 %.not.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK18FunctionInvocation19permute_param_odersEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.83") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.42", align 8    ; 25 uses
  %3 = alloca %"class.std::vector.83", align 8    ; 11 uses
  %4 = alloca %"class.std::vector.42", align 8    ; 10 uses
  %5 = alloca %"class.std::vector.42", align 8    ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 16
  br i1 %i.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not256 = icmp eq ptr %i.c, %i.d
  br i1 %.not256, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  br label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ad

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i35 unwind label %bb.v ; 6 uses

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i35: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  store i32 0, ptr %i.m, align 4, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !116
  store ptr %i.n, ptr %i.k, align 8, !tbaa !117
  store ptr %i.n, ptr %i.l, align 8, !tbaa !118
  %i.o = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit137.thread ; 5 uses

_ZNSt6vectorIiSaIiEE9push_backEOi.exit43:         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i35
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 1, ptr %i.p, align 4, !tbaa !93
  %i.q = load i32, ptr %i.m, align 4
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 4) #23
  %.phi.trans.insert290.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre291.pre = load ptr, ptr %.phi.trans.insert290.phi.trans.insert, align 8, !tbaa !121
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre289.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !122 ; 6 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !116
  store ptr %i.r, ptr %i.k, align 8, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.l, align 8, !tbaa !118
  %i.t = icmp eq ptr %.pre289.pre, %.pre291.pre
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %i.t, label %bb.e, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.pre289.pre, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %.noexc45 unwind label %bb.w   ; 6 uses

.noexc45:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.w, ptr %.pre289.pre, align 8, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %.pre289.pre, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.pre289.pre, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = load ptr, ptr %2, align 8, !tbaa !123   ; 4 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 4
  br i1 %i.af, label %bb.b, label %bb.c, !prof !112

bb.b:                                             ; preds = %.noexc45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.aa, i64 %i.ae, i1 false)
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

bb.c:                                             ; preds = %.noexc45
  %i.ag = icmp eq i64 %i.ae, 4
  br i1 %i.ag, label %bb.d, label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !93
  store i32 %i.ah, ptr %i.w, align 4, !tbaa !93
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 %i.ae
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !117
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ak, ptr %i.u, align 8, !tbaa !122
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.pre289.pre, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.w

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.e
  %.pre292 = load ptr, ptr %2, align 8, !tbaa !116
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i
  %i.al = phi ptr [ %.pre292, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.aa, %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i ] ; 8 uses
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !117 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i47, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  store ptr %i.al, ptr %i.k, align 8, !tbaa !117
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.an = phi ptr [ %i.am, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit ], [ %i.al, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !118 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store i32 1, ptr %i.an, align 4, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !117
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit57

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i49

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc55 unwind label %bb.x

.noexc55:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i49: ; preds = %bb.g
  %i.au = ashr exact i64 %i.as, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i50 = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i50, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 2305843009213693951)
  %i.ay = select i1 %i.aw, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i.i51 = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i.i51)
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #22
          to label %.noexc56 unwind label %bb.x   ; 5 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i49
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i32 1, ptr %i.bb, align 4, !tbaa !93
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i52

bb.i:                                             ; preds = %.noexc56
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.al, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i52

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i52: ; preds = %bb.i, %.noexc56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %.not.i17.i.i.i53 = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i.i53, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i54, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i52
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.as) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i54

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i54: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i52
  store ptr %i.ba, ptr %2, align 8, !tbaa !116
  store ptr %i.bd, ptr %i.k, align 8, !tbaa !117
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store ptr %i.be, ptr %i.l, align 8, !tbaa !118
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit57

_ZNSt6vectorIiSaIiEE9push_backEOi.exit57:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i54, %bb.f
  %i.bf = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i54 ], [ %i.al, %bb.f ] ; 5 uses
  %i.bg = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i54 ], [ %i.ao, %bb.f ] ; 2 uses
  %i.bh = phi ptr [ %i.bd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i54 ], [ %i.ap, %bb.f ] ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.bh, %i.bg
end_hunk_0
