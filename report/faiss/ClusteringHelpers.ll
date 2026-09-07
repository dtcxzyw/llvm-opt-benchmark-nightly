Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ClusteringHelpers?download=true
inline.NumInlined: 257
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5faiss6detail17compute_centroidsEmmmmPKhPKNS_5IndexEPKlPKfPfSA_.omp_outlined:bb.a
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter111
  br i1 %prol.iter.cmp.not, label %.lr.ph65.prol.loopexit, label %.lr.ph65.prol, !llvm.loop !82

.lr.ph65.prol.loopexit:                           ; preds = %.lr.ph65.prol, %.lr.ph65.preheader108
  %.064.unr = phi i64 [ %.064.ph, %.lr.ph65.preheader108 ], [ %i.dk, %.lr.ph65.prol ]
  %i.dl = sub i64 %.064.ph, %i.ct
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65
  %.064 = phi i64 [ %i.ek, %.lr.ph65 ], [ %.064.unr, %.lr.ph65.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.050, i64 %.064
  %i.do = load float, ptr %i.dn, align 4, !tbaa !29
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.064 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !29
  %i.dr = fadd float %i.do, %i.dq
  store float %i.dr, ptr %i.dp, align 4, !tbaa !29
  %i.ds = add nuw i64 %.064, 1                    ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.050, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !29
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ds ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !29
  %i.dx = fadd float %i.du, %i.dw
  store float %i.dx, ptr %i.dv, align 4, !tbaa !29
  %i.dy = add nuw i64 %.064, 2                    ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.050, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !29
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.dy ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !29
  %i.ed = fadd float %i.ea, %i.ec
  store float %i.ed, ptr %i.eb, align 4, !tbaa !29
  %i.ee = add nuw i64 %.064, 3                    ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.050, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !29
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ee ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !29
  %i.ej = fadd float %i.eg, %i.ei
  store float %i.ej, ptr %i.eh, align 4, !tbaa !29
  %i.ek = add nuw i64 %.064, 4                    ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %i.ek, %i.ct
  br i1 %exitcond72.not.3, label %.loopexit, label %.lr.ph65, !llvm.loop !83

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph65.prol.loopexit, %.lr.ph65, %middle.block105, %middle.block, %bb.o, %bb.p, %bb.k
  %i.el = add nuw i64 %.05166, 1                  ; 2 uses
  %i.em = load i64, ptr %4, align 8, !tbaa !24
  %i.en = icmp ult i64 %i.el, %i.em
  br i1 %i.en, label %.lr.ph67, label %._crit_edge, !llvm.loop !84

.loopexit62:                                      ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.b, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit62
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit62 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eo = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.eo) #21
  unreachable

bb.r:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nounwind
declare i32 @omp_get_num_threads() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nounwind
declare !callback !40 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #16

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss6detail17compute_centroidsEmmmmPKhPKNS_5IndexEPKlPKfPfSA_.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #14 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.g, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 1, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !26
  %i.h = load i32, ptr %0, align 4, !tbaa !26     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !24
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 3 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !24
  %i.k = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph26, %.loopexit
  %.02125 = phi i64 [ %i.k, %.lr.ph26 ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.02125
  %i.n = load float, ptr %i.m, align 4, !tbaa !29 ; 2 uses
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fdiv float 1.000000e+00, %i.n            ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !31
  %i.r = load i64, ptr %5, align 8, !tbaa !24     ; 6 uses
  %i.s = mul i64 %i.r, %.02125
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %.not27 = icmp eq i64 %i.r, 0
  br i1 %.not27, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !29
  %wide.load34 = load <4 x float>, ptr %i.v, align 4, !tbaa !29
  %i.w = fmul <4 x float> %broadcast.splat, %wide.load
  %i.x = fmul <4 x float> %broadcast.splat, %wide.load34
  store <4 x float> %i.w, ptr %i.u, align 4, !tbaa !29
  store <4 x float> %i.x, ptr %i.v, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %.lr.ph.preheader, %middle.block
  %.023.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader35, %.lr.ph
  %.023 = phi i64 [ %i.ac, %.lr.ph ], [ %.023.ph, %.lr.ph.preheader35 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.023 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !29
  %i.ab = fmul float %i.p, %i.aa
  store float %i.ab, ptr %i.z, align 4, !tbaa !29
  %i.ac = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.r
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !90

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.d, %bb.c
  %i.ad = add i64 %.02125, 1
  %exitcond28.not = icmp eq i64 %.02125, %i.j
  br i1 %exitcond28.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5faiss6detail14split_clustersEmmmmPfS1_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"struct.faiss::RandomGenerator", align 8 ; 4 uses
  %i.a = sub i64 %1, %3                           ; 8 uses
  %i.b = mul i64 %3, %0
  %i.c = getelementptr [4 x i8], ptr %5, i64 %i.b ; 3 uses
  %i.d = icmp ugt i64 %2, %i.a
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !16
  store i8 0, ptr %i.e, align 8, !tbaa !17
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #16 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %6, align 8, !tbaa !18
  %i.l = load i64, ptr %i.f, align 8, !tbaa !16
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #16 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.i)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss6detail14split_clustersEmmmmPfS1_, ptr noundef nonnull @.str.2, i32 noundef 188)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.o unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.p, %bb.h ]
  %i.q = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.e, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000) %7, i64 noundef 1234)
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.j
  %i.u = mul i64 %i.a, 10                         ; 2 uses
  %.not106 = icmp eq i64 %i.u, 0
  %i.v = sub nuw i64 %2, %i.a
  %i.w = uitofp i64 %i.v to float
  %i.x = fpext float %i.w to double
  %i.y = icmp ugt i64 %i.a, 1
  %i.z = shl i64 %0, 2                            ; 2 uses
  %.not107 = icmp eq i64 %0, 0
  %i.aa = mul i64 %1, %0
  %i.ab = shl i64 %i.aa, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.ab
  %i.ac = add i64 %i.a, -1                        ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ad = icmp eq i64 %i.a, 2
  %unroll_iter = and i64 %i.ac, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = trunc i64 %i.ac to i1
  %min.iters.check = icmp ult i64 %0, 4
  %stride.check = icmp slt i64 %i.z, 0
  %n.vec = and i64 %0, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %0, %n.vec
  br label %bb.k

._crit_edge104:                                   ; preds = %bb.n, %bb.j
  %.084.lcssa = phi i32 [ 0, %bb.j ], [ %.185, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.084.lcssa

bb.k:                                             ; preds = %.lr.ph103, %bb.n
  %.083101 = phi i64 [ 0, %.lr.ph103 ], [ %i.cp, %bb.n ] ; 3 uses
  %.084100 = phi i32 [ 0, %.lr.ph103 ], [ %.185, %bb.n ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.083101 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ag = fcmp oeq float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.not106, label %.critedge.preheader.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.07794 = phi i64 [ %i.ap, %bb.m ], [ 0, %bb.l ]
  %.07993 = phi i64 [ %i.as, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07993
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !29
  %i.aj = fpext float %i.ai to double
  %i.ak = fadd double %i.aj, -1.000000e+00
  %i.al = fdiv double %i.ak, %i.x
  %i.am = fptrunc double %i.al to float
  %i.an = call noundef float @_ZN5faiss15RandomGenerator10rand_floatEv(ptr noundef nonnull align 8 dereferenceable(5000) %7)
  %i.ao = fcmp olt float %i.an, %i.am
  br i1 %i.ao, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ap = add nuw i64 %.07794, 1                  ; 2 uses
  %i.aq = add i64 %.07993, 1                      ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.a
  %i.as = select i1 %i.ar, i64 0, i64 %i.aq
  %i.at = icmp ult i64 %i.ap, %i.u
  br i1 %i.at, label %.lr.ph, label %.critedge.preheader.loopexit, !llvm.loop !91

.critedge.preheader.loopexit:                     ; preds = %bb.m, %bb.l
  br i1 %i.y, label %.critedge.preheader, label %.loopexit

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit
  %.pre = load float, ptr %4, align 4, !tbaa !29  ; 2 uses
  br i1 %i.ad, label %.critedge.epil.preheader, label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %i.au = phi float [ %i.be, %.critedge ], [ %.pre, %.critedge.preheader ] ; 2 uses
  %.07596 = phi i64 [ %i.bd, %.critedge ], [ 1, %.critedge.preheader ] ; 4 uses
  %.18095 = phi i64 [ %spec.select.1, %.critedge ], [ 0, %.critedge.preheader ]
  %niter = phi i64 [ %niter.next.1, %.critedge ], [ 0, %.critedge.preheader ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07596
  %i.aw = load float, ptr %i.av, align 4, !tbaa !29 ; 2 uses
  %i.ax = fcmp ogt float %i.aw, %i.au             ; 2 uses
  %spec.select = select i1 %i.ax, i64 %.07596, i64 %.18095
  %i.ay = add nuw i64 %.07596, 1                  ; 2 uses
  %i.az = select i1 %i.ax, float %i.aw, float %i.au ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ay
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !29 ; 2 uses
  %i.bc = fcmp ogt float %i.bb, %i.az             ; 2 uses
  %spec.select.1 = select i1 %i.bc, i64 %i.ay, i64 %spec.select ; 3 uses
  %i.bd = add nuw i64 %.07596, 2                  ; 2 uses
  %i.be = select i1 %i.bc, float %i.bb, float %i.az ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.critedge, !llvm.loop !92

.loopexit.loopexit.unr-lcssa:                     ; preds = %.critedge
  br i1 %lcmp.mod.not, label %.loopexit, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.critedge.preheader
  %.epil.init = phi float [ %.pre, %.critedge.preheader ], [ %i.be, %.loopexit.loopexit.unr-lcssa ]
  %.07596.epil.init = phi i64 [ 1, %.critedge.preheader ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.18095.epil.init = phi i64 [ 0, %.critedge.preheader ], [ %spec.select.1, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod135)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07596.epil.init
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !29
  %i.bh = fcmp ogt float %i.bg, %.epil.init
  %spec.select.epil = select i1 %i.bh, i64 %.07596.epil.init, i64 %.18095.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.critedge.preheader.loopexit
  %.3 = phi i64 [ %spec.select.epil, %.critedge.epil.preheader ], [ 0, %.critedge.preheader.loopexit ], [ %spec.select.1, %.loopexit.loopexit.unr-lcssa ], [ %.07993, %.lr.ph ] ; 3 uses
  %i.bi = mul i64 %.083101, %0
  %i.bj = getelementptr [4 x i8], ptr %i.c, i64 %i.bi ; 3 uses
  %i.bk = mul i64 %.3, %0
  %i.bl = getelementptr [4 x i8], ptr %i.c, i64 %i.bk ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bj, ptr align 4 %i.bl, i64 %i.z, i1 false)
  br i1 %.not107, label %._crit_edge, label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %.loopexit
  br i1 %min.iters.check, label %.lr.ph99.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.bm = add i64 %3, %.3
  %i.bn = shl i64 %i.bm, 2
  %i.bo = add i64 %i.bn, 4
  %i.bp = mul i64 %0, %i.bo
  %scevgep129 = getelementptr i8, ptr %5, i64 %i.bp
  %bound0 = icmp ult ptr %i.c, %scevgep129
  %bound1 = icmp ult ptr %i.bl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bq = or i1 %found.conflict, %stride.check
  br i1 %i.bq, label %.lr.ph99.preheader131, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.memcheck ] ; 2 uses
  %i.br = and <4 x i64> %vec.ind, splat (i64 1)
  %i.bs = icmp eq <4 x i64> %i.br, zeroinitializer ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bj, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bt, align 4, !tbaa !29, !alias.scope !99, !noalias !100
  %i.bu = getelementptr [4 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.bv = select <4 x i1> %i.bs, <4 x float> splat (float f0x3F802000), <4 x float> splat (float f0x3F7FC000)
  %i.bw = select <4 x i1> %i.bs, <4 x float> splat (float f0x3F7FC000), <4 x float> splat (float f0x3F802000)
  %i.bx = fmul <4 x float> %wide.load, %i.bv
  store <4 x float> %i.bx, ptr %i.bt, align 4, !tbaa !29, !alias.scope !99, !noalias !100
  %wide.load130 = load <4 x float>, ptr %i.bu, align 4, !tbaa !29, !alias.scope !100
  %i.by = fmul <4 x float> %wide.load130, %i.bw
  store <4 x float> %i.by, ptr %i.bu, align 4, !tbaa !29, !alias.scope !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph99.preheader131

.lr.ph99.preheader131:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.098.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph99

._crit_edge:                                      ; preds = %.lr.ph99, %middle.block, %.loopexit
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.3 ; 3 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !29
  %i.cc = fmul float %i.cb, 5.000000e-01          ; 2 uses
  store float %i.cc, ptr %i.ae, align 4, !tbaa !29
  %i.cd = load float, ptr %i.ca, align 4, !tbaa !29
  %i.ce = fsub float %i.cd, %i.cc
  store float %i.ce, ptr %i.ca, align 4, !tbaa !29
  %i.cf = add i32 %.084100, 1
  br label %bb.n

.lr.ph99:                                         ; preds = %.lr.ph99.preheader131, %.lr.ph99
  %.098 = phi i64 [ %i.co, %.lr.ph99 ], [ %.098.ph, %.lr.ph99.preheader131 ] ; 4 uses
  %i.cg = and i64 %.098, 1
  %i.ch = icmp eq i64 %i.cg, 0                    ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %i.bj, i64 %.098 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !29
  %i.ck = getelementptr [4 x i8], ptr %i.bl, i64 %.098 ; 2 uses
  %. = select i1 %i.ch, float f0x3F802000, float f0x3F7FC000
  %.126 = select i1 %i.ch, float f0x3F7FC000, float f0x3F802000
  %i.cl = fmul float %i.cj, %.
  store float %i.cl, ptr %i.ci, align 4, !tbaa !29
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !29
  %i.cn = fmul float %i.cm, %.126
  store float %i.cn, ptr %i.ck, align 4, !tbaa !29
  %i.co = add nuw i64 %.098, 1                    ; 2 uses
  %exitcond110.not = icmp eq i64 %i.co, %0
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph99, !llvm.loop !97

bb.n:                                             ; preds = %bb.k, %._crit_edge
  %.185 = phi i32 [ %i.cf, %._crit_edge ], [ %.084100, %bb.k ] ; 2 uses
  %i.cp = add nuw i64 %.083101, 1                 ; 2 uses
  %exitcond111.not = icmp eq i64 %i.cp, %i.a
  br i1 %exitcond111.not, label %._crit_edge104, label %bb.k, !llvm.loop !98

bb.o:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000), i64 noundef) unnamed_addr #5

declare noundef float @_ZN5faiss15RandomGenerator10rand_floatEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
