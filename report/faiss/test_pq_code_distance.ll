inline.NumInlined: 638
inline.NumDeleted: 294
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z11nMismatchesRKSt6vectorIfSaIfEES3_:bb.a
  %i.o = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.m)
  %i.p = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.n)
  %i.q = fpext <2 x float> %i.o to <2 x double>
  %i.r = fpext <2 x float> %i.p to <2 x double>
  %i.s = fcmp oge <2 x double> %i.q, splat (double 1.000000e-05)
  %i.t = fcmp oge <2 x double> %i.r, splat (double 1.000000e-05)
  %i.u = zext <2 x i1> %i.s to <2 x i64>
  %i.v = zext <2 x i1> %i.t to <2 x i64>
  %i.w = add <2 x i64> %vec.phi, %i.u             ; 2 uses
  %i.x = add <2 x i64> %vec.phi12, %i.v           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.x, %i.w
  %i.z = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.011.ph = phi i64 [ 0, %.lr.ph ], [ %i.z, %middle.block ]
  %.0910.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.z, %middle.block ], [ %.1, %scalar.ph ]
  ret i64 %.0.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %.1, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ]
  %.0910 = phi i64 [ %i.aj, %scalar.ph ], [ %.0910.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0910
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.0910
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !15
  %i.ae = fsub float %i.ab, %i.ad
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ag = fpext float %i.af to double
  %i.ah = fcmp oge double %i.ag, 1.000000e-05
  %i.ai = zext i1 %i.ah to i64
  %.1 = add i64 %.011, %i.ai                      ; 2 uses
  %i.aj = add nuw i64 %.0910, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4testmmmm(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 16 uses
  %i.b = alloca i64, align 8                      ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::vector", align 8       ; 25 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 26 uses
  %7 = alloca %"class.std::vector", align 8       ; 22 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca %"class.std::vector", align 8      ; 13 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 9 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !22
  store i64 %3, ptr %i.b, align 8, !tbaa !22
  %i.k = icmp eq i64 %2, 8
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !27
  store i8 0, ptr %i.l, align 8, !tbaa !29
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.n to i64                ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.q)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %4, align 8, !tbaa !30
  %i.s = load i64, ptr %i.m, align 8, !tbaa !27
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.p)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.v = call ptr @__cxa_allocate_exception(i64 40) #13 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._Z4testmmmm, ptr noundef nonnull @.str.2, i32 noundef 51)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #25
          to label %bb.eg unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.w, %bb.h ]
  %i.x = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.z = load i64, ptr %i.l, align 8, !tbaa !29
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.ef

bb.j:                                             ; preds = %bb.a
  tail call void @omp_set_num_threads(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ab = shl i64 %1, 8                           ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, 2305843009213693951
  br i1 %i.ac, label %bb.k, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #25
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i, label %.loopexit454.thread, label %bb.l

.loopexit454.thread:                              ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %._crit_edge

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = shl i64 %1, 10                          ; 5 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26
          to label %.loopexit454 unwind label %bb.p ; 5 uses

.loopexit454:                                     ; preds = %bb.l
  store ptr %i.ae, ptr %5, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ad, i1 false), !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !10
  %.not = icmp samesign eq i64 %i.ad, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit454
  %i.aj = ashr exact i64 %i.ad, 2
  %i.ak = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.al = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.am = fdiv x86_fp80 %i.ak, %i.al
  %i.an = fptoui x86_fp80 %i.am to i64            ; 2 uses
  %i.ao = add i64 %i.an, 23
  %i.ap = udiv i64 %i.ao, %i.an
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  br label %select.unfold.i.i.i.i.prol.loopexit

._crit_edge:                                      ; preds = %bb.r, %.loopexit454.thread, %.loopexit454
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.aq = mul i64 %3, %1                          ; 5 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.m:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #25
          to label %.noexc114 unwind label %bb.x

.noexc114:                                        ; preds = %bb.m
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i113 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i113, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.n

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %bb.s

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26
          to label %.noexc115 unwind label %bb.x  ; 4 uses

.noexc115:                                        ; preds = %bb.n
  store ptr %i.as, ptr %6, align 8, !tbaa !32
  %i.at = getelementptr i8, ptr %i.as, i64 %i.aq  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !34
  store i8 0, ptr %i.as, align 1, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.aw = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.noexc115
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 0, i64 %i.aw, i1 false)
  br label %bb.s

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit355

select.unfold.i.i.i.i.prol.loopexit:              ; preds = %.lr.ph, %bb.r
  %.023.i.i.i.i.unr = phi i64 [ 0, %.lr.ph ], [ %i.bn, %bb.r ] ; 2 uses
  %.unr = phi i64 [ 123, %.lr.ph ], [ %i.bd, %bb.r ]
  br label %select.unfold.i.i.i.i

.unr-lcssa:                                       ; preds = %select.unfold.i.i.i.i
  %i.az = fdiv float %i.bg, %i.bj                 ; 2 uses
  %i.ba = fcmp ult float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.r, label %bb.q, !prof !35

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %select.unfold.i.i.i.i.prol.loopexit
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %select.unfold.i.i.i.i.prol.loopexit ], [ %i.bk, %select.unfold.i.i.i.i ]
  %.01422.i.i.i.i = phi float [ 1.000000e+00, %select.unfold.i.i.i.i.prol.loopexit ], [ %i.bj, %select.unfold.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi float [ 0.000000e+00, %select.unfold.i.i.i.i.prol.loopexit ], [ %i.bg, %select.unfold.i.i.i.i ]
  %i.bb = phi i64 [ %.unr, %select.unfold.i.i.i.i.prol.loopexit ], [ %i.bd, %select.unfold.i.i.i.i ]
  %i.bc = mul nuw nsw i64 %i.bb, 48271
  %i.bd = urem i64 %i.bc, 2147483647              ; 3 uses
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = uitofp i64 %i.be to float
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %.01422.i.i.i.i, float %.01521.i.i.i.i) ; 2 uses
  %i.bh = fpext float %.01422.i.i.i.i to x86_fp80
  %i.bi = fmul x86_fp80 %i.bh, f0x401DFFFFFFFC00000000
  %i.bj = fptrunc x86_fp80 %i.bi to float         ; 2 uses
  %i.bk = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i116.1 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i116.1, label %.unr-lcssa, label %select.unfold.i.i.i.i, !llvm.loop !36

bb.q:                                             ; preds = %.unr-lcssa
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.unr-lcssa
  %.016.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.q ], [ %i.az, %.unr-lcssa ]
  %i.bl = fadd float %.016.i.i.i.i, 0.000000e+00
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.023.i.i.i.i.unr
  store float %i.bl, ptr %i.bm, align 4, !tbaa !15
  %i.bn = add nuw i64 %.023.i.i.i.i.unr, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %select.unfold.i.i.i.i.prol.loopexit, !llvm.loop !37

bb.s:                                             ; preds = %bb.o, %.noexc115, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.av, %.noexc115 ], [ %i.at, %bb.o ]
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_Z4testmmmm.omp_outlined, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, 2305843009213693951
  br i1 %i.bq, label %bb.t, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i117

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #25
          to label %.noexc124 unwind label %bb.y

.noexc124:                                        ; preds = %bb.t
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i117: ; preds = %bb.s
  %.not.i.i.i.i118 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i118, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i123, label %bb.u

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i123: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit453

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i117
  %i.br = shl nuw nsw i64 %i.bp, 2                ; 3 uses
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #26
          to label %.noexc125 unwind label %bb.y  ; 4 uses

.noexc125:                                        ; preds = %bb.u
  store ptr %i.bs, ptr %7, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bs, i8 0, i64 %i.br, i1 false), !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  br label %.loopexit453

.loopexit453:                                     ; preds = %.noexc125, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i123
  %.0.i.i.i.i.i.i.i122 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i123 ], [ %i.bv, %.noexc125 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i122, ptr %i.bw, align 8, !tbaa !10
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %7, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %i.by = icmp ugt i64 %i.bx, 2305843009213693951
  br i1 %i.by, label %bb.v, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i127

bb.v:                                             ; preds = %.loopexit453
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #25
          to label %.noexc134 unwind label %bb.z

.noexc134:                                        ; preds = %bb.v
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i127: ; preds = %.loopexit453
  %.not.i.i.i.i128 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i128, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i133, label %bb.w

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i133: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.loopexit452

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i127
  %i.bz = shl nuw nsw i64 %i.bx, 2                ; 3 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #26
          to label %.noexc135 unwind label %bb.z  ; 4 uses

.noexc135:                                        ; preds = %bb.w
  store ptr %i.ca, ptr %8, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ca, i8 0, i64 %i.bz, i1 false), !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  br label %.loopexit452

bb.x:                                             ; preds = %bb.n, %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit353

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit351

.loopexit452:                                     ; preds = %.noexc135, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i133
  %.0.i.i.i.i.i.i.i132 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i133 ], [ %i.cd, %.noexc135 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0.i.i.i.i.i.i.i132, ptr %i.cg, align 8, !tbaa !10
  %i.ch = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit349

bb.aa:                                            ; preds = %.loopexit452, %bb.aa
  %.034460 = phi i64 [ 0, %.loopexit452 ], [ %i.cj, %bb.aa ]
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.4, ptr nonnull %i.b, ptr nonnull %8, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  %i.cj = add nuw nsw i64 %.034460, 1             ; 2 uses
  %exitcond467.not = icmp eq i64 %i.cj, 1000
  br i1 %exitcond467.not, label %bb.ab, label %bb.aa, !llvm.loop !39

bb.ab:                                            ; preds = %bb.aa
  %i.ck = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  %i.cl = sub nsw i64 %i.ck, %i.ch
  %i.cm = sitofp i64 %i.cl to double
  %i.cn = fdiv nnan double %i.cm, 1.000000e+09
  %i.co = fmul nnan double %i.cn, 1.000000e+03
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %i.cq = icmp ugt i64 %i.cp, 2305843009213693951
  br i1 %i.cq, label %bb.ac, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #25
          to label %.noexc144 unwind label %bb.ae

.noexc144:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137: ; preds = %bb.ab
  %.not.i.i.i.i138 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i138, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i143, label %bb.ad

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i143: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit451

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i137
  %i.cr = shl nuw nsw i64 %i.cp, 2                ; 3 uses
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #26
          to label %.noexc145 unwind label %bb.ae ; 4 uses

.noexc145:                                        ; preds = %bb.ad
  store ptr %i.cs, ptr %9, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cs, i8 0, i64 %i.cr, i1 false), !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  br label %.loopexit451

.loopexit451:                                     ; preds = %.noexc145, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i143
  %.0.i.i.i.i.i.i.i142 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i143 ], [ %i.cv, %.noexc145 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0.i.i.i.i.i.i.i142, ptr %i.cw, align 8, !tbaa !10
  %i.cx = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit347

bb.af:                                            ; preds = %.loopexit451, %bb.af
  %.033461 = phi i64 [ 0, %.loopexit451 ], [ %i.cz, %bb.af ]
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_Z4testmmmm.omp_outlined.5, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6, ptr nonnull %9)
  %i.cz = add nuw nsw i64 %.033461, 1             ; 2 uses
  %exitcond468.not = icmp eq i64 %i.cz, 1000
  br i1 %exitcond468.not, label %bb.ag, label %bb.af, !llvm.loop !40

bb.ag:                                            ; preds = %bb.af
  %i.da = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  %i.db = sub nsw i64 %i.da, %i.cx
  %i.dc = sitofp i64 %i.db to double
  %i.dd = fdiv nnan double %i.dc, 1.000000e+09
  %i.de = fmul nnan double %i.dd, 1.000000e+03
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.df = load i64, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %i.dg = icmp ugt i64 %i.df, 2305843009213693951
  br i1 %i.dg, label %bb.ah, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i149

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #25
          to label %.noexc156 unwind label %bb.aj

.noexc156:                                        ; preds = %bb.ah
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i149: ; preds = %bb.ag
  %.not.i.i.i.i150 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i150, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i155, label %bb.ai

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i155: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
end_hunk_0
