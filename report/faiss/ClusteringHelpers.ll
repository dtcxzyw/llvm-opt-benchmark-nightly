Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ClusteringHelpers?download=true
inline.NumInlined: 257
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@__kmpc_for_static_init_8
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5faiss6detail14split_clustersEmmmmPfS1_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"struct.faiss::RandomGenerator", align 8 ; 4 uses
  %i.a = sub i64 %1, %3                           ; 6 uses
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
  %i.ac = xor i64 %3, -1
  %i.ad = add i64 %1, %i.ac                       ; 3 uses
  %i.ae = add i64 %1, -2
  %xtraiter = and i64 %i.ad, 1
  %i.af = icmp eq i64 %i.ae, %3
  %unroll_iter = and i64 %i.ad, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = trunc i64 %i.ad to i1
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
  %.083101 = phi i64 [ 0, %.lr.ph103 ], [ %i.cs, %bb.n ] ; 3 uses
  %.084100 = phi i32 [ 0, %.lr.ph103 ], [ %.185, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.083101 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !29
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.not106, label %.critedge.preheader.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.07794 = phi i64 [ %i.ar, %bb.m ], [ 0, %bb.l ]
  %.07993 = phi i64 [ %i.au, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07993
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !29
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.al, -1.000000e+00
  %i.an = fdiv double %i.am, %i.x
  %i.ao = fptrunc double %i.an to float
  %i.ap = call noundef float @_ZN5faiss15RandomGenerator10rand_floatEv(ptr noundef nonnull align 8 dereferenceable(5000) %7)
  %i.aq = fcmp olt float %i.ap, %i.ao
  br i1 %i.aq, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ar = add nuw i64 %.07794, 1                  ; 2 uses
  %i.as = add i64 %.07993, 1                      ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.a
  %i.au = select i1 %i.at, i64 0, i64 %i.as
  %i.av = icmp ult i64 %i.ar, %i.u
  br i1 %i.av, label %.lr.ph, label %.critedge.preheader.loopexit, !llvm.loop !91

.critedge.preheader.loopexit:                     ; preds = %bb.m, %bb.l
  br i1 %i.y, label %.critedge.preheader, label %.loopexit

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit
  %.pre = load float, ptr %4, align 4, !tbaa !29  ; 2 uses
  br i1 %i.af, label %.critedge.epil.preheader, label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %i.aw = phi float [ %i.bg, %.critedge ], [ %.pre, %.critedge.preheader ] ; 2 uses
  %.07596 = phi i64 [ %i.bf, %.critedge ], [ 1, %.critedge.preheader ] ; 4 uses
  %.18095 = phi i64 [ %spec.select.1, %.critedge ], [ 0, %.critedge.preheader ]
  %niter = phi i64 [ %niter.next.1, %.critedge ], [ 0, %.critedge.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07596
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = fcmp ogt float %i.ay, %i.aw             ; 2 uses
  %spec.select = select i1 %i.az, i64 %.07596, i64 %.18095
  %i.ba = add nuw i64 %.07596, 1                  ; 2 uses
  %i.bb = select i1 %i.az, float %i.ay, float %i.aw ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ba
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !29 ; 2 uses
  %i.be = fcmp ogt float %i.bd, %i.bb             ; 2 uses
  %spec.select.1 = select i1 %i.be, i64 %i.ba, i64 %spec.select ; 3 uses
  %i.bf = add nuw i64 %.07596, 2                  ; 2 uses
  %i.bg = select i1 %i.be, float %i.bd, float %i.bb ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.critedge, !llvm.loop !92

.loopexit.loopexit.unr-lcssa:                     ; preds = %.critedge
  br i1 %lcmp.mod.not, label %.loopexit, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.critedge.preheader
  %.epil.init = phi float [ %.pre, %.critedge.preheader ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ]
  %.07596.epil.init = phi i64 [ 1, %.critedge.preheader ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.18095.epil.init = phi i64 [ 0, %.critedge.preheader ], [ %spec.select.1, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod135)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07596.epil.init
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !29
  %i.bj = fcmp ogt float %i.bi, %.epil.init
  %spec.select.epil = select i1 %i.bj, i64 %.07596.epil.init, i64 %.18095.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.critedge.preheader.loopexit
  %.3 = phi i64 [ %spec.select.epil, %.critedge.epil.preheader ], [ 0, %.critedge.preheader.loopexit ], [ %spec.select.1, %.loopexit.loopexit.unr-lcssa ], [ %.07993, %.lr.ph ] ; 3 uses
  %i.bk = mul i64 %.083101, %0
  %i.bl = getelementptr [4 x i8], ptr %i.c, i64 %i.bk ; 3 uses
  %i.bm = mul i64 %.3, %0
  %i.bn = getelementptr [4 x i8], ptr %i.c, i64 %i.bm ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bl, ptr align 4 %i.bn, i64 %i.z, i1 false)
  br i1 %.not107, label %._crit_edge, label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %.loopexit
  br i1 %min.iters.check, label %.lr.ph99.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.bo = add i64 %.3, %3
  %i.bp = shl i64 %i.bo, 2
  %i.bq = add i64 %i.bp, 4
  %i.br = mul i64 %0, %i.bq
  %i.bs = getelementptr i8, ptr %5, i64 %i.br
  %bound0 = icmp ult ptr %i.c, %i.bs
  %bound1 = icmp ult ptr %i.bn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bt = or i1 %found.conflict, %stride.check
  br i1 %i.bt, label %.lr.ph99.preheader131, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.memcheck ] ; 2 uses
  %i.bu = and <4 x i64> %vec.ind, splat (i64 1)
  %i.bv = icmp eq <4 x i64> %i.bu, zeroinitializer ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bl, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bw, align 4, !tbaa !29, !alias.scope !99, !noalias !100
  %i.bx = getelementptr [4 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.by = select <4 x i1> %i.bv, <4 x float> splat (float f0x3F802000), <4 x float> splat (float f0x3F7FC000)
  %i.bz = select <4 x i1> %i.bv, <4 x float> splat (float f0x3F7FC000), <4 x float> splat (float f0x3F802000)
  %i.ca = fmul <4 x float> %wide.load, %i.by
  store <4 x float> %i.ca, ptr %i.bw, align 4, !tbaa !29, !alias.scope !99, !noalias !100
  %wide.load130 = load <4 x float>, ptr %i.bx, align 4, !tbaa !29, !alias.scope !100
  %i.cb = fmul <4 x float> %wide.load130, %i.bz
  store <4 x float> %i.cb, ptr %i.bx, align 4, !tbaa !29, !alias.scope !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph99.preheader131

.lr.ph99.preheader131:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.098.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph99

._crit_edge:                                      ; preds = %.lr.ph99, %middle.block, %.loopexit
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.3 ; 3 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !29
  %i.cf = fmul float %i.ce, 5.000000e-01          ; 2 uses
  store float %i.cf, ptr %i.ag, align 4, !tbaa !29
  %i.cg = load float, ptr %i.cd, align 4, !tbaa !29
  %i.ch = fsub float %i.cg, %i.cf
  store float %i.ch, ptr %i.cd, align 4, !tbaa !29
  %i.ci = add i32 %.084100, 1
  br label %bb.n

.lr.ph99:                                         ; preds = %.lr.ph99.preheader131, %.lr.ph99
  %.098 = phi i64 [ %i.cr, %.lr.ph99 ], [ %.098.ph, %.lr.ph99.preheader131 ] ; 4 uses
  %i.cj = and i64 %.098, 1
  %i.ck = icmp eq i64 %i.cj, 0                    ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.bl, i64 %.098 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !29
  %i.cn = getelementptr [4 x i8], ptr %i.bn, i64 %.098 ; 2 uses
  %. = select i1 %i.ck, float f0x3F802000, float f0x3F7FC000
  %.126 = select i1 %i.ck, float f0x3F7FC000, float f0x3F802000
  %i.co = fmul float %i.cm, %.
  store float %i.co, ptr %i.cl, align 4, !tbaa !29
  %i.cp = load float, ptr %i.cn, align 4, !tbaa !29
  %i.cq = fmul float %i.cp, %.126
  store float %i.cq, ptr %i.cn, align 4, !tbaa !29
  %i.cr = add nuw i64 %.098, 1                    ; 2 uses
  %exitcond110.not = icmp eq i64 %i.cr, %0
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph99, !llvm.loop !97

bb.n:                                             ; preds = %bb.k, %._crit_edge
  %.185 = phi i32 [ %i.ci, %._crit_edge ], [ %.084100, %bb.k ] ; 2 uses
  %i.cs = add nuw i64 %.083101, 1                 ; 2 uses
  %exitcond111.not = icmp eq i64 %i.cs, %i.a
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
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 float", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !9, i64 8, !5, i64 16}
!16 = !{!15, !9, i64 8}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !12, i64 0}
!19 = !{!"p1 long", !10, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!20, !19, i64 0}
!23 = !{!20, !19, i64 16}
!24 = !{!9, !9, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!6, !6, i64 0}
!27 = !{!12, !12, i64 0}
!28 = !{!"float", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!11, !11, i64 0}
!32 = !{!"vtable pointer", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"p1 _ZTSN5faiss5IndexE", !10, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!19, !19, i64 0}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{i64 2, i64 -1, i64 -1, i1 true}
!40 = !{!39}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !30}
!45 = !{!"bool", !5, i64 0}
!46 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !5, i64 0}
!47 = !{!"short", !5, i64 0}
!48 = !{!"double", !5, i64 0}
!49 = !{!"_ZTSN5faiss20ClusteringParametersE", !6, i64 0, !6, i64 4, !45, i64 8, !45, i64 9, !45, i64 10, !45, i64 11, !45, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !9, i64 32, !45, i64 40, !45, i64 41, !46, i64 42, !47, i64 44, !48, i64 48}
!50 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIfSaIfEE", !52, i64 0}
!54 = !{!"p1 _ZTSN5faiss24ClusteringIterationStatsE", !10, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN5faiss24ClusteringIterationStatsESaIS1_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseIN5faiss24ClusteringIterationStatsESaIS1_EE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIN5faiss24ClusteringIterationStatsESaIS1_EE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE", !57, i64 0}
!59 = !{!"_ZTSN5faiss10ClusteringE", !49, i64 8, !9, i64 64, !9, i64 72, !53, i64 80, !58, i64 104}
!60 = !{!59, !9, i64 72}
!61 = !{!49, !6, i64 20}
!62 = !{!49, !45, i64 8}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!49, !6, i64 24}
!66 = !{!49, !45, i64 41}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, i1 false, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !25, !37, !38}
!77 = distinct !{!77, !25, !37}
end_hunk_0
