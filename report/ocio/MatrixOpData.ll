Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MatrixOpData?download=true
inline.NumInlined: 700
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray5innerERKNS0_7OffsetsE:bb.a
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.epilog-lcssa
  %.01620 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.q, %.epilog-lcssa ] ; 3 uses
  %i.h = mul i64 %.01620, %i.d
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %i.h ; 5 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader.new

._crit_edge:                                      ; preds = %.epilog-lcssa, %bb.a
  ret void

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.019.epil.init = phi i64 [ 0, %.preheader ], [ %i.ao, %.unr-lcssa ]
  %.01518.epil.init = phi double [ 0.000000e+00, %.preheader ], [ %i.an, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.019.epil = phi i64 [ %.019.epil.init, %.epil.preheader ], [ %i.o, %bb.b ] ; 3 uses
  %.01518.epil = phi double [ %.01518.epil.init, %.epil.preheader ], [ %i.n, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.019.epil
  %i.k = load double, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019.epil
  %i.m = load double, ptr %i.l, align 8, !tbaa !27
  %i.n = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double %.01518.epil) ; 2 uses
  %i.o = add nuw i64 %.019.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !101

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %.lcssa = phi double [ %i.an, %.unr-lcssa ], [ %i.n, %bb.b ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01620
  store double %.lcssa, ptr %i.p, align 8, !tbaa !27
  %i.q = add nuw nsw i64 %.01620, 1               ; 2 uses
  %exitcond21.not = icmp eq i64 %i.q, %i.d
  br i1 %exitcond21.not, label %._crit_edge, label %.preheader, !llvm.loop !3

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.019 = phi i64 [ %i.ao, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %.01518 = phi double [ %i.an, %.preheader.new ], [ 0.000000e+00, %.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.r = getelementptr [8 x i8], ptr %i.i, i64 %.019
  %i.s = load double, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019
  %i.u = load double, ptr %i.t, align 8, !tbaa !27
  %i.v = tail call double @llvm.fmuladd.f64(double %i.s, double %i.u, double %.01518)
  %i.w = or disjoint i64 %.019, 1                 ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.i, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.w
  %i.aa = load double, ptr %i.z, align 8, !tbaa !27
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.y, double %i.aa, double %i.v)
  %i.ac = or disjoint i64 %.019, 2                ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ag = load double, ptr %i.af, align 8, !tbaa !27
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.ab)
  %i.ai = or disjoint i64 %.019, 3                ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.i, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ai
  %i.am = load double, ptr %i.al, align 8, !tbaa !27
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.am, double %i.ah) ; 3 uses
  %i.ao = add nuw i64 %.019, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !4
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i.i, label %.noexc5.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !47

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #29
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %.pre236.a = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre237 = ptrtoint ptr %.pre236.a to i64
  %.pre238 = ptrtoint ptr %.pre to i64
  br label %.noexc5.i.i

.noexc5.i.i:                                      ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %.pre-phi239 = phi i64 [ %.pre238, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.i, %bb.a ]
  %.pre-phi = phi i64 [ %.pre237, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.h, %bb.a ]
  %i.m = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.l, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.a ] ; 79 uses
  %i.o = sub i64 %.pre-phi, %.pre-phi239          ; 3 uses
  %i.p = icmp sgt i64 %i.o, 8
  br i1 %i.p, label %bb.c, label %bb.d, !prof !49

bb.c:                                             ; preds = %.noexc5.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.m, i64 %i.o, i1 false)
  br label %_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArrayC2ERKS1_.exit

bb.d:                                             ; preds = %.noexc5.i.i
  %i.q = icmp eq i64 %i.o, 8
  br i1 %i.q, label %bb.e, label %_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArrayC2ERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = load double, ptr %i.m, align 8, !tbaa !27
  store double %i.r, ptr %i.n, align 8, !tbaa !27
  br label %_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArrayC2ERKS1_.exit

_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArrayC2ERKS1_.exit: ; preds = %bb.c, %bb.d, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !106
  %i.s = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
          to label %.noexc unwind label %bb.h     ; 11 uses

.noexc:                                           ; preds = %_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArrayC2ERKS1_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !56, !noalias !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 1, ptr %i.u, align 4, !tbaa !57, !noalias !106
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.s, align 8, !tbaa !33, !noalias !106
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !noalias !106
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_512MatrixOpData11MatrixArrayE, i64 16), ptr %i.v, align 8, !tbaa !33, !noalias !106
  store i64 4, ptr %i.w, align 8, !tbaa !40, !noalias !106
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 4, ptr %i.y, align 8, !tbaa !41, !noalias !106
  %i.z = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %bb.f unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !106 ; 7 uses

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #28, !noalias !106
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.z, ptr %i.x, align 8, !tbaa !31, !noalias !106
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !43, !noalias !106
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !45, !noalias !106
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i8 0, i64 112, i1 false), !noalias !106
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !27, !noalias !106
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store double 1.000000e+00, ptr %i.af, align 8, !tbaa !27, !noalias !106
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store double 1.000000e+00, ptr %i.ag, align 8, !tbaa !27, !noalias !106
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  store double 1.000000e+00, ptr %i.ah, align 8, !tbaa !27, !noalias !106
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.ai, align 8, !tbaa !58, !alias.scope !106
  store ptr %i.v, ptr %0, align 8, !tbaa !59, !alias.scope !106
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %bb.g unwind label %bb.l       ; 27 uses

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !31  ; 76 uses
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store double 1.000000e+00, ptr %i.ao, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store double 1.000000e+00, ptr %i.aq, align 8, !tbaa !27
  %scevgep258.a = getelementptr i8, ptr %i.n, i64 56
  %scevgep260 = getelementptr i8, ptr %i.an, i64 56
  %ident.check264 = icmp ne i64 %i.am, 1
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph191, %.lr.ph191.1, %.lr.ph191.2, %.lr.ph191.lver.orig, %.lr.ph191.lver.orig.1, %.lr.ph191.lver.orig.2
  %exitcond220.not = icmp eq i64 %indvars.iv.next218, 3
  br i1 %exitcond220.not, label %.preheader178.preheader, label %.lr.ph.preheader, !llvm.loop !104

.preheader178.preheader:                          ; preds = %.loopexit
  %i.ar = mul i64 %i.am, 3                        ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.n, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = load double, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.av = fcmp oeq double %i.au, 0.000000e+00
  br i1 %i.av, label %.preheader178._crit_edge, label %.preheader177.preheader.lr.ph

.preheader177.preheader.lr.ph:                    ; preds = %.preheader178.preheader
  %scevgep253 = getelementptr i8, ptr %i.n, i64 16
  %scevgep254 = getelementptr i8, ptr %i.an, i64 16
  %ident.check = icmp ne i64 %i.am, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.am ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am ; 2 uses
  %i.be = add nuw nsw i64 %i.am, 1                ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.be ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bj = add nuw nsw i64 %i.am, 3                ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.am ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am ; 2 uses
  %i.cc = add i64 %i.am, 1                        ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cc ; 2 uses
  %i.cf = add i64 %i.am, 2                        ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cf ; 2 uses
  %i.ci = add i64 %i.am, 3                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ci ; 2 uses
  %i.cl = shl i64 %i.am, 1                        ; 6 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cl ; 2 uses
  %i.co = or disjoint i64 %i.cl, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.co ; 2 uses
  %i.cr = add i64 %i.cl, 2                        ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cr ; 2 uses
  %i.cu = add i64 %i.cl, 3                        ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cu ; 2 uses
  br label %.preheader177.preheader

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512MatrixOpData11MatrixArrayC2ERKS1_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.preheader:                                 ; preds = %.loopexit, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next218, %.loopexit ] ; 14 uses
  %i.cy = shl nuw nsw i64 %indvars.iv, 3
  %i.cz = add nuw i64 %i.cy, 24                   ; 2 uses
  %scevgep267 = getelementptr i8, ptr %i.n, i64 %i.cz
  %scevgep270 = getelementptr i8, ptr %i.an, i64 %i.cz
  %i.da = shl nuw nsw i64 %indvars.iv, 3
  %i.db = add nuw i64 %i.da, 8                    ; 2 uses
  %scevgep257.a = getelementptr i8, ptr %i.n, i64 %i.db
  %scevgep259 = getelementptr i8, ptr %i.an, i64 %i.db
  %i.dc = mul i64 %i.am, %indvars.iv              ; 9 uses
  %i.dd = getelementptr [8 x i8], ptr %i.n, i64 %i.dc ; 9 uses
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv ; 7 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv ; 9 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !27 ; 3 uses
  %i.dg = fcmp olt double %i.df, 0.000000e+00
  %i.dh = fneg double %i.df
  %.0137 = select i1 %i.dg, double %i.dh, double %i.df ; 2 uses
  %i.di = mul i64 %i.am, %indvars.iv.next218
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.di
  %i.dj = load double, ptr %gep, align 8, !tbaa !27 ; 3 uses
  %i.dk = fcmp olt double %i.dj, 0.000000e+00
  %i.dl = fneg double %i.dj
  %.0135 = select i1 %i.dk, double %i.dl, double %i.dj ; 2 uses
  %i.dm = fcmp ogt double %.0135, %.0137          ; 2 uses
  %.1139.v = select i1 %i.dm, i64 %indvars.iv.next218, i64 %indvars.iv
  %.1139 = trunc i64 %.1139.v to i32              ; 2 uses
  %.2 = select i1 %i.dm, double %.0135, double %.0137 ; 3 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next203, 4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

._crit_edge:                                      ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %.1139.lcssa = phi i32 [ %.1139, %.lr.ph.preheader ], [ %.1139.1, %.lr.ph.1 ], [ %.1139.2, %.lr.ph.2 ]
  %.2.lcssa = phi double [ %.2, %.lr.ph.preheader ], [ %.2.1, %.lr.ph.1 ], [ %.2.2, %.lr.ph.2 ]
  %i.dn = fcmp oeq double %.2.lcssa, 0.000000e+00
  br i1 %i.dn, label %bb.i, label %bb.k

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.do = mul i64 %i.am, %indvars.iv.next203
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.do
  %i.dp = load double, ptr %gep.1, align 8, !tbaa !27 ; 3 uses
  %i.dq = fcmp olt double %i.dp, 0.000000e+00
  %i.dr = fneg double %i.dp
  %.0135.1 = select i1 %i.dq, double %i.dr, double %i.dp ; 2 uses
  %i.ds = fcmp ogt double %.0135.1, %.2           ; 2 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv.next203 to i32
  %.1139.1 = select i1 %i.ds, i32 %i.dt, i32 %.1139 ; 2 uses
  %.2.1 = select i1 %i.ds, double %.0135.1, double %.2 ; 3 uses
  %indvars.iv.next203.1 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next203.1, 4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.du = mul i64 %i.am, %indvars.iv.next203.1
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.du
  %i.dv = load double, ptr %gep.2, align 8, !tbaa !27 ; 3 uses
  %i.dw = fcmp olt double %i.dv, 0.000000e+00
  %i.dx = fneg double %i.dv
  %.0135.2 = select i1 %i.dw, double %i.dx, double %i.dv ; 2 uses
  %i.dy = fcmp ogt double %.0135.2, %.2.1         ; 2 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv.next203.1 to i32
  %.1139.2 = select i1 %i.dy, i32 %i.dz, i32 %.1139.1
  %.2.2 = select i1 %i.dy, double %.0135.2, double %.2.1
  br label %._crit_edge

bb.i:                                             ; preds = %._crit_edge
  %i.ea = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull @.str.3)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %.preheader178._crit_edge, %bb.i
  %i.eb = phi ptr [ %i.ea, %bb.i ], [ %i.tf, %.preheader178._crit_edge ]
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ea) #26
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge
  %i.ed = zext i32 %.1139.lcssa to i64            ; 2 uses
  %.not = icmp eq i64 %indvars.iv, %i.ed
  br i1 %.not, label %.lr.ph191.lver.check, label %.preheader179

.preheader179:                                    ; preds = %bb.k
  %i.ee = mul i64 %i.am, %i.ed                    ; 5 uses
  %i.ef = load double, ptr %i.dd, align 8, !tbaa !27
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ee ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !27
  store double %i.eh, ptr %i.dd, align 8, !tbaa !27
  store double %i.ef, ptr %i.eg, align 8, !tbaa !27
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ee ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !27
  store double %i.el, ptr %i.ei, align 8, !tbaa !27
  store double %i.ej, ptr %i.ek, align 8, !tbaa !27
  %i.em = add i64 %i.dc, 1                        ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.em ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !27
  %i.ep = add i64 %i.ee, 1                        ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ep ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !27
  store double %i.er, ptr %i.en, align 8, !tbaa !27
  store double %i.eo, ptr %i.eq, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.em ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !27
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ep ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !27
  store double %i.ev, ptr %i.es, align 8, !tbaa !27
  store double %i.et, ptr %i.eu, align 8, !tbaa !27
  %i.ew = add i64 %i.dc, 2                        ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ew ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !27
  %i.ez = add i64 %i.ee, 2                        ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ez ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !27
  store double %i.fb, ptr %i.ex, align 8, !tbaa !27
  store double %i.ey, ptr %i.fa, align 8, !tbaa !27
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ew ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !27
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ez ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !27
  store double %i.ff, ptr %i.fc, align 8, !tbaa !27
  store double %i.fd, ptr %i.fe, align 8, !tbaa !27
  %i.fg = add i64 %i.dc, 3                        ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fg ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !27
  %i.fj = add i64 %i.ee, 3                        ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fj ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !27
  store double %i.fl, ptr %i.fh, align 8, !tbaa !27
  store double %i.fi, ptr %i.fk, align 8, !tbaa !27
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fg ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !27
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fj ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !27
  store double %i.fp, ptr %i.fm, align 8, !tbaa !27
  store double %i.fn, ptr %i.fo, align 8, !tbaa !27
  br label %.lr.ph191.lver.check

.lr.ph191.lver.check:                             ; preds = %bb.k, %.preheader179
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc ; 6 uses
  %i.fr = add i64 %i.dc, 1                        ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fr ; 6 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fr ; 6 uses
  %i.fu = add i64 %i.dc, 2                        ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fu ; 6 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fu ; 6 uses
  %i.fx = add i64 %i.dc, 3                        ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fx ; 6 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fx ; 6 uses
  %bound0261 = icmp ult ptr %scevgep257.a, %scevgep260
  %bound1262 = icmp ult ptr %scevgep259, %scevgep258.a
  %found.conflict263 = and i1 %bound0261, %bound1262
  %lver.safe265 = or i1 %found.conflict263, %ident.check264
  br i1 %lver.safe265, label %.lr.ph191.lver.orig, label %.lr.ph191

.lr.ph191.lver.orig:                              ; preds = %.lr.ph191.lver.check
  %i.ga = mul i64 %i.am, %indvars.iv.next218      ; 6 uses
  %gep188.lver.orig = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ga
  %i.gb = load double, ptr %gep188.lver.orig, align 8, !tbaa !27
  %i.gc = load double, ptr %i.de, align 8, !tbaa !27
  %i.gd = fneg double %i.gb
  %i.ge = fdiv double %i.gd, %i.gc                ; 8 uses
  %i.gf = load double, ptr %i.dd, align 8, !tbaa !27
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ga ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !27
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double %i.gh)
  store double %i.gi, ptr %i.gg, align 8, !tbaa !27
  %i.gj = load double, ptr %i.fq, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ga ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !27
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gj, double %i.gl)
  store double %i.gm, ptr %i.gk, align 8, !tbaa !27
  %i.gn = load double, ptr %i.fs, align 8, !tbaa !27
  %i.go = add i64 %i.ga, 1                        ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.go ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !27
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gn, double %i.gq)
  store double %i.gr, ptr %i.gp, align 8, !tbaa !27
  %i.gs = load double, ptr %i.ft, align 8, !tbaa !27
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.go ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !27
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gs, double %i.gu)
  store double %i.gv, ptr %i.gt, align 8, !tbaa !27
  %i.gw = load double, ptr %i.fv, align 8, !tbaa !27
  %i.gx = add i64 %i.ga, 2                        ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.gx ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !27
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gw, double %i.gz)
  store double %i.ha, ptr %i.gy, align 8, !tbaa !27
  %i.hb = load double, ptr %i.fw, align 8, !tbaa !27
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gx ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !27
  %i.he = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.hb, double %i.hd)
  store double %i.he, ptr %i.hc, align 8, !tbaa !27
  %i.hf = load double, ptr %i.fy, align 8, !tbaa !27
  %i.hg = add i64 %i.ga, 3                        ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.hg ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !27
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.hf, double %i.hi)
  store double %i.hj, ptr %i.hh, align 8, !tbaa !27
  %i.hk = load double, ptr %i.fz, align 8, !tbaa !27
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hg ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !27
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.hk, double %i.hm)
  store double %i.hn, ptr %i.hl, align 8, !tbaa !27
  %indvars.iv.next214.lver.orig = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond216.not.lver.orig = icmp eq i64 %indvars.iv.next214.lver.orig, 4
  br i1 %exitcond216.not.lver.orig, label %.loopexit, label %.lr.ph191.lver.orig.1

.lr.ph191.lver.orig.1:                            ; preds = %.lr.ph191.lver.orig
  %i.ho = mul i64 %i.am, %indvars.iv.next214.lver.orig ; 6 uses
  %gep188.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ho
  %i.hp = load double, ptr %gep188.lver.orig.1, align 8, !tbaa !27
  %i.hq = load double, ptr %i.de, align 8, !tbaa !27
  %i.hr = fneg double %i.hp
  %i.hs = fdiv double %i.hr, %i.hq                ; 8 uses
  %i.ht = load double, ptr %i.dd, align 8, !tbaa !27
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ho ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !27
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.ht, double %i.hv)
  store double %i.hw, ptr %i.hu, align 8, !tbaa !27
  %i.hx = load double, ptr %i.fq, align 8, !tbaa !27
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ho ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !27
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.hx, double %i.hz)
  store double %i.ia, ptr %i.hy, align 8, !tbaa !27
  %i.ib = load double, ptr %i.fs, align 8, !tbaa !27
  %i.ic = add i64 %i.ho, 1                        ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ic ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !27
  %i.if = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.ib, double %i.ie)
  store double %i.if, ptr %i.id, align 8, !tbaa !27
  %i.ig = load double, ptr %i.ft, align 8, !tbaa !27
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ic ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !27
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.ig, double %i.ii)
  store double %i.ij, ptr %i.ih, align 8, !tbaa !27
  %i.ik = load double, ptr %i.fv, align 8, !tbaa !27
  %i.il = add i64 %i.ho, 2                        ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.il ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !27
  %i.io = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.ik, double %i.in)
  store double %i.io, ptr %i.im, align 8, !tbaa !27
  %i.ip = load double, ptr %i.fw, align 8, !tbaa !27
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.il ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !27
  %i.is = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.ip, double %i.ir)
  store double %i.is, ptr %i.iq, align 8, !tbaa !27
  %i.it = load double, ptr %i.fy, align 8, !tbaa !27
  %i.iu = add i64 %i.ho, 3                        ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !27
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.it, double %i.iw)
  store double %i.ix, ptr %i.iv, align 8, !tbaa !27
  %i.iy = load double, ptr %i.fz, align 8, !tbaa !27
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.iu ; 2 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !27
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.iy, double %i.ja)
  store double %i.jb, ptr %i.iz, align 8, !tbaa !27
  %indvars.iv.next214.lver.orig.1 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond216.not.lver.orig.1 = icmp eq i64 %indvars.iv.next214.lver.orig.1, 4
  br i1 %exitcond216.not.lver.orig.1, label %.loopexit, label %.lr.ph191.lver.orig.2

.lr.ph191.lver.orig.2:                            ; preds = %.lr.ph191.lver.orig.1
  %i.jc = mul i64 %i.am, %indvars.iv.next214.lver.orig.1 ; 6 uses
  %gep188.lver.orig.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.jc
  %i.jd = load double, ptr %gep188.lver.orig.2, align 8, !tbaa !27
  %i.je = load double, ptr %i.de, align 8, !tbaa !27
  %i.jf = fneg double %i.jd
  %i.jg = fdiv double %i.jf, %i.je                ; 8 uses
  %i.jh = load double, ptr %i.dd, align 8, !tbaa !27
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.jc ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !27
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jh, double %i.jj)
  store double %i.jk, ptr %i.ji, align 8, !tbaa !27
  %i.jl = load double, ptr %i.fq, align 8, !tbaa !27
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.jc ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !27
  %i.jo = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jl, double %i.jn)
  store double %i.jo, ptr %i.jm, align 8, !tbaa !27
  %i.jp = load double, ptr %i.fs, align 8, !tbaa !27
  %i.jq = add i64 %i.jc, 1                        ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.jq ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !27
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jp, double %i.js)
  store double %i.jt, ptr %i.jr, align 8, !tbaa !27
  %i.ju = load double, ptr %i.ft, align 8, !tbaa !27
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.jq ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !27
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.ju, double %i.jw)
  store double %i.jx, ptr %i.jv, align 8, !tbaa !27
  %i.jy = load double, ptr %i.fv, align 8, !tbaa !27
  %i.jz = add i64 %i.jc, 2                        ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.jz ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !27
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jy, double %i.kb)
  store double %i.kc, ptr %i.ka, align 8, !tbaa !27
  %i.kd = load double, ptr %i.fw, align 8, !tbaa !27
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.jz ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !27
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.kd, double %i.kf)
  store double %i.kg, ptr %i.ke, align 8, !tbaa !27
  %i.kh = load double, ptr %i.fy, align 8, !tbaa !27
  %i.ki = add i64 %i.jc, 3                        ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ki ; 2 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !27
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.kh, double %i.kk)
  store double %i.kl, ptr %i.kj, align 8, !tbaa !27
  %i.km = load double, ptr %i.fz, align 8, !tbaa !27
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ki ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !27
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.km, double %i.ko)
  store double %i.kp, ptr %i.kn, align 8, !tbaa !27
  br label %.loopexit

.lr.ph191:                                        ; preds = %.lr.ph191.lver.check
  %load_initial271 = load double, ptr %scevgep270, align 8
  %load_initial268 = load double, ptr %scevgep267, align 8
  %i.kq = mul nuw i64 %i.am, %indvars.iv.next218  ; 6 uses
  %gep188 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.kq
  %i.kr = load double, ptr %gep188, align 8, !tbaa !27
  %i.ks = load double, ptr %i.de, align 8, !tbaa !27
  %i.kt = fneg double %i.kr
  %i.ku = fdiv double %i.kt, %i.ks                ; 8 uses
  %i.kv = load double, ptr %i.dd, align 8, !tbaa !27
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.kq ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !27
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.kv, double %i.kx)
  store double %i.ky, ptr %i.kw, align 8, !tbaa !27
  %i.kz = load double, ptr %i.fq, align 8, !tbaa !27
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.kq ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !27
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.kz, double %i.lb)
  store double %i.lc, ptr %i.la, align 8, !tbaa !27
  %i.ld = load double, ptr %i.fs, align 8, !tbaa !27
  %i.le = add nuw i64 %i.kq, 1                    ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.le ; 2 uses
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !27
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.ld, double %i.lg)
  store double %i.lh, ptr %i.lf, align 8, !tbaa !27
  %i.li = load double, ptr %i.ft, align 8, !tbaa !27
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.le ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !27
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.li, double %i.lk)
  store double %i.ll, ptr %i.lj, align 8, !tbaa !27
  %i.lm = load double, ptr %i.fv, align 8, !tbaa !27
  %i.ln = add nuw i64 %i.kq, 2                    ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ln
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.lm, double %load_initial268)
  store double %i.lp, ptr %i.lo, align 8, !tbaa !27
  %i.lq = load double, ptr %i.fw, align 8, !tbaa !27
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ln
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.lq, double %load_initial271)
  store double %i.ls, ptr %i.lr, align 8, !tbaa !27
  %i.lt = load double, ptr %i.fy, align 8, !tbaa !27
  %i.lu = add nuw i64 %i.kq, 3                    ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.lu ; 2 uses
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !27
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.lt, double %i.lw) ; 2 uses
  store double %i.lx, ptr %i.lv, align 8, !tbaa !27
  %i.ly = load double, ptr %i.fz, align 8, !tbaa !27
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.lu ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !27
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.ly, double %i.ma) ; 2 uses
  store double %i.mb, ptr %i.lz, align 8, !tbaa !27
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next214, 4
  br i1 %exitcond216.not, label %.loopexit, label %.lr.ph191.1

.lr.ph191.1:                                      ; preds = %.lr.ph191
  %i.mc = mul nuw i64 %i.am, %indvars.iv.next214  ; 6 uses
  %gep188.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.mc
  %i.md = load double, ptr %gep188.1, align 8, !tbaa !27
  %i.me = load double, ptr %i.de, align 8, !tbaa !27
  %i.mf = fneg double %i.md
  %i.mg = fdiv double %i.mf, %i.me                ; 8 uses
  %i.mh = load double, ptr %i.dd, align 8, !tbaa !27
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.mc ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !27
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mh, double %i.mj)
  store double %i.mk, ptr %i.mi, align 8, !tbaa !27
  %i.ml = load double, ptr %i.fq, align 8, !tbaa !27
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.mc ; 2 uses
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !27
  %i.mo = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.ml, double %i.mn)
  store double %i.mo, ptr %i.mm, align 8, !tbaa !27
  %i.mp = load double, ptr %i.fs, align 8, !tbaa !27
  %i.mq = add nuw i64 %i.mc, 1                    ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.mq ; 2 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !27
  %i.mt = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mp, double %i.ms)
  store double %i.mt, ptr %i.mr, align 8, !tbaa !27
  %i.mu = load double, ptr %i.ft, align 8, !tbaa !27
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.mq ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !27
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mu, double %i.mw)
  store double %i.mx, ptr %i.mv, align 8, !tbaa !27
  %i.my = load double, ptr %i.fv, align 8, !tbaa !27
  %i.mz = add nuw i64 %i.mc, 2                    ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.mz
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.my, double %i.lx)
  store double %i.nb, ptr %i.na, align 8, !tbaa !27
  %i.nc = load double, ptr %i.fw, align 8, !tbaa !27
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.mz
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.nc, double %i.mb)
  store double %i.ne, ptr %i.nd, align 8, !tbaa !27
  %i.nf = load double, ptr %i.fy, align 8, !tbaa !27
  %i.ng = add nuw i64 %i.mc, 3                    ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !27
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.nf, double %i.ni) ; 2 uses
  store double %i.nj, ptr %i.nh, align 8, !tbaa !27
  %i.nk = load double, ptr %i.fz, align 8, !tbaa !27
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ng ; 2 uses
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !27
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.nk, double %i.nm) ; 2 uses
  store double %i.nn, ptr %i.nl, align 8, !tbaa !27
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond216.not.1 = icmp eq i64 %indvars.iv.next214.1, 4
  br i1 %exitcond216.not.1, label %.loopexit, label %.lr.ph191.2

.lr.ph191.2:                                      ; preds = %.lr.ph191.1
  %i.no = mul nuw i64 %i.am, %indvars.iv.next214.1 ; 6 uses
  %gep188.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.no
  %i.np = load double, ptr %gep188.2, align 8, !tbaa !27
  %i.nq = load double, ptr %i.de, align 8, !tbaa !27
  %i.nr = fneg double %i.np
  %i.ns = fdiv double %i.nr, %i.nq                ; 8 uses
  %i.nt = load double, ptr %i.dd, align 8, !tbaa !27
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.no ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !27
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.nt, double %i.nv)
  store double %i.nw, ptr %i.nu, align 8, !tbaa !27
  %i.nx = load double, ptr %i.fq, align 8, !tbaa !27
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.no ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !27
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.nx, double %i.nz)
  store double %i.oa, ptr %i.ny, align 8, !tbaa !27
  %i.ob = load double, ptr %i.fs, align 8, !tbaa !27
  %i.oc = add nuw i64 %i.no, 1                    ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.oc ; 2 uses
  %i.oe = load double, ptr %i.od, align 8, !tbaa !27
  %i.of = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.ob, double %i.oe)
  store double %i.of, ptr %i.od, align 8, !tbaa !27
  %i.og = load double, ptr %i.ft, align 8, !tbaa !27
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.oc ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !27
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.og, double %i.oi)
  store double %i.oj, ptr %i.oh, align 8, !tbaa !27
  %i.ok = load double, ptr %i.fv, align 8, !tbaa !27
  %i.ol = add nuw i64 %i.no, 2                    ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ol
  %i.on = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.ok, double %i.nj)
  store double %i.on, ptr %i.om, align 8, !tbaa !27
  %i.oo = load double, ptr %i.fw, align 8, !tbaa !27
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ol
  %i.oq = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.oo, double %i.nn)
  store double %i.oq, ptr %i.op, align 8, !tbaa !27
  %i.or = load double, ptr %i.fy, align 8, !tbaa !27
  %i.os = add nuw i64 %i.no, 3                    ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.os ; 2 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !27
  %i.ov = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.or, double %i.ou)
  store double %i.ov, ptr %i.ot, align 8, !tbaa !27
  %i.ow = load double, ptr %i.fz, align 8, !tbaa !27
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.os ; 2 uses
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !27
  %i.oz = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.ow, double %i.oy)
  store double %i.oz, ptr %i.ox, align 8, !tbaa !27
  br label %.loopexit

.preheader177.preheader:                          ; preds = %.preheader177.preheader.lr.ph, %._crit_edge199
  %indvar = phi i64 [ 0, %.preheader177.preheader.lr.ph ], [ %indvar.next, %._crit_edge199 ] ; 2 uses
  %i.pa = phi double [ %i.au, %.preheader177.preheader.lr.ph ], [ %i.tl, %._crit_edge199 ] ; 8 uses
  %i.pb = phi ptr [ %i.as, %.preheader177.preheader.lr.ph ], [ %i.tj, %._crit_edge199 ] ; 8 uses
  %i.pc = phi i64 [ %i.ar, %.preheader177.preheader.lr.ph ], [ %i.ti, %._crit_edge199 ] ; 4 uses
  %indvars.iv233250 = phi i64 [ 3, %.preheader177.preheader.lr.ph ], [ %indvars.iv.next234, %._crit_edge199 ] ; 7 uses
  %i.pd = load double, ptr %i.pb, align 8, !tbaa !27
  %i.pe = fdiv double %i.pd, %i.pa
  store double %i.pe, ptr %i.pb, align 8, !tbaa !27
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.pc ; 8 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !27
  %i.ph = fdiv double %i.pg, %i.pa
  store double %i.ph, ptr %i.pf, align 8, !tbaa !27
  %i.pi = add i64 %i.pc, 1                        ; 2 uses
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pi ; 8 uses
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !27
  %i.pl = fdiv double %i.pk, %i.pa
  store double %i.pl, ptr %i.pj, align 8, !tbaa !27
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.pi ; 8 uses
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !27
  %i.po = fdiv double %i.pn, %i.pa
  store double %i.po, ptr %i.pm, align 8, !tbaa !27
  %i.pp = add i64 %i.pc, 2                        ; 2 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pp ; 8 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !27
  %i.ps = fdiv double %i.pr, %i.pa
  store double %i.ps, ptr %i.pq, align 8, !tbaa !27
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.pp ; 8 uses
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !27
  %i.pv = fdiv double %i.pu, %i.pa
  store double %i.pv, ptr %i.pt, align 8, !tbaa !27
  %i.pw = add i64 %i.pc, 3                        ; 2 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pw ; 8 uses
  %i.py = load double, ptr %i.px, align 8, !tbaa !27
  %i.pz = fdiv double %i.py, %i.pa
  store double %i.pz, ptr %i.px, align 8, !tbaa !27
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.pw ; 8 uses
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !27
  %i.qc = fdiv double %i.qb, %i.pa
  store double %i.qc, ptr %i.qa, align 8, !tbaa !27
  %invariant.gep195 = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv233250 ; 6 uses
  %.not201 = icmp eq i64 %indvars.iv233250, 0
  br i1 %.not201, label %_ZN16OpenColorIO_v2_56ArrayTIdED2Ev.exit, label %.lr.ph198.lver.check

.lr.ph198.lver.check:                             ; preds = %.preheader177.preheader
  %i.qd = shl i64 %indvar, 3
  %i.qe = sub i64 48, %i.qd                       ; 2 uses
  %scevgep251 = getelementptr i8, ptr %i.an, i64 %i.qe
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.qe
  %bound0 = icmp ult ptr %i.n, %scevgep251
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %lver.safe = or i1 %found.conflict, %ident.check
  br i1 %lver.safe, label %.lr.ph198.lver.orig, label %.lr.ph198

.lr.ph198.lver.orig:                              ; preds = %.lr.ph198.lver.check
  %i.qf = load double, ptr %invariant.gep195, align 8, !tbaa !27
  %i.qg = fneg double %i.qf                       ; 8 uses
  %i.qh = load double, ptr %i.pb, align 8, !tbaa !27
  %i.qi = load double, ptr %i.n, align 8, !tbaa !27
  %i.qj = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qh, double %i.qi)
  store double %i.qj, ptr %i.n, align 8, !tbaa !27
  %i.qk = load double, ptr %i.pf, align 8, !tbaa !27
  %i.ql = load double, ptr %i.an, align 8, !tbaa !27
  %i.qm = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qk, double %i.ql)
  store double %i.qm, ptr %i.an, align 8, !tbaa !27
  %i.qn = load double, ptr %i.pj, align 8, !tbaa !27
  %i.qo = load double, ptr %i.bu, align 8, !tbaa !27
  %i.qp = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qn, double %i.qo)
  store double %i.qp, ptr %i.bu, align 8, !tbaa !27
  %i.qq = load double, ptr %i.pm, align 8, !tbaa !27
  %i.qr = load double, ptr %i.bv, align 8, !tbaa !27
  %i.qs = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qq, double %i.qr)
  store double %i.qs, ptr %i.bv, align 8, !tbaa !27
  %i.qt = load double, ptr %i.pq, align 8, !tbaa !27
  %i.qu = load double, ptr %i.bw, align 8, !tbaa !27
  %i.qv = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qt, double %i.qu)
  store double %i.qv, ptr %i.bw, align 8, !tbaa !27
  %i.qw = load double, ptr %i.pt, align 8, !tbaa !27
  %i.qx = load double, ptr %i.bx, align 8, !tbaa !27
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qw, double %i.qx)
  store double %i.qy, ptr %i.bx, align 8, !tbaa !27
  %i.qz = load double, ptr %i.px, align 8, !tbaa !27
  %i.ra = load double, ptr %i.by, align 8, !tbaa !27
  %i.rb = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qz, double %i.ra)
  store double %i.rb, ptr %i.by, align 8, !tbaa !27
  %i.rc = load double, ptr %i.qa, align 8, !tbaa !27
  %i.rd = load double, ptr %i.bz, align 8, !tbaa !27
  %i.re = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.rc, double %i.rd)
  store double %i.re, ptr %i.bz, align 8, !tbaa !27
  %exitcond232.not.lver.orig = icmp eq i64 %indvars.iv233250, 1
  br i1 %exitcond232.not.lver.orig, label %._crit_edge199, label %.lr.ph198.lver.orig.1

.lr.ph198.lver.orig.1:                            ; preds = %.lr.ph198.lver.orig
  %gep196.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep195, i64 %i.am
  %i.rf = load double, ptr %gep196.lver.orig.1, align 8, !tbaa !27
  %i.rg = fneg double %i.rf                       ; 8 uses
  %i.rh = load double, ptr %i.pb, align 8, !tbaa !27
  %i.ri = load double, ptr %i.ca, align 8, !tbaa !27
  %i.rj = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.rh, double %i.ri)
  store double %i.rj, ptr %i.ca, align 8, !tbaa !27
  %i.rk = load double, ptr %i.pf, align 8, !tbaa !27
  %i.rl = load double, ptr %i.cb, align 8, !tbaa !27
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.rk, double %i.rl)
  store double %i.rm, ptr %i.cb, align 8, !tbaa !27
  %i.rn = load double, ptr %i.pj, align 8, !tbaa !27
  %i.ro = load double, ptr %i.cd, align 8, !tbaa !27
  %i.rp = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.rn, double %i.ro)
  store double %i.rp, ptr %i.cd, align 8, !tbaa !27
  %i.rq = load double, ptr %i.pm, align 8, !tbaa !27
  %i.rr = load double, ptr %i.ce, align 8, !tbaa !27
  %i.rs = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.rq, double %i.rr)
  store double %i.rs, ptr %i.ce, align 8, !tbaa !27
  %i.rt = load double, ptr %i.pq, align 8, !tbaa !27
  %i.ru = load double, ptr %i.cg, align 8, !tbaa !27
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.rt, double %i.ru)
  store double %i.rv, ptr %i.cg, align 8, !tbaa !27
  %i.rw = load double, ptr %i.pt, align 8, !tbaa !27
  %i.rx = load double, ptr %i.ch, align 8, !tbaa !27
  %i.ry = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.rw, double %i.rx)
  store double %i.ry, ptr %i.ch, align 8, !tbaa !27
  %i.rz = load double, ptr %i.px, align 8, !tbaa !27
  %i.sa = load double, ptr %i.cj, align 8, !tbaa !27
  %i.sb = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.rz, double %i.sa)
  store double %i.sb, ptr %i.cj, align 8, !tbaa !27
  %i.sc = load double, ptr %i.qa, align 8, !tbaa !27
  %i.sd = load double, ptr %i.ck, align 8, !tbaa !27
  %i.se = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.sc, double %i.sd)
  store double %i.se, ptr %i.ck, align 8, !tbaa !27
  %exitcond232.not.lver.orig.1 = icmp eq i64 %indvars.iv233250, 2
  br i1 %exitcond232.not.lver.orig.1, label %._crit_edge199, label %.lr.ph198.lver.orig.2

.lr.ph198.lver.orig.2:                            ; preds = %.lr.ph198.lver.orig.1
  %gep196.lver.orig.2 = getelementptr [8 x i8], ptr %invariant.gep195, i64 %i.cl
  %i.sf = load double, ptr %gep196.lver.orig.2, align 8, !tbaa !27
  %i.sg = fneg double %i.sf                       ; 8 uses
  %i.sh = load double, ptr %i.pb, align 8, !tbaa !27
  %i.si = load double, ptr %i.cm, align 8, !tbaa !27
  %i.sj = tail call double @llvm.fmuladd.f64(double %i.sg, double %i.sh, double %i.si)
  store double %i.sj, ptr %i.cm, align 8, !tbaa !27
  %i.sk = load double, ptr %i.pf, align 8, !tbaa !27
  %i.sl = load double, ptr %i.cn, align 8, !tbaa !27
  %i.sm = tail call double @llvm.fmuladd.f64(double %i.sg, double %i.sk, double %i.sl)
  store double %i.sm, ptr %i.cn, align 8, !tbaa !27
  %i.sn = load double, ptr %i.pj, align 8, !tbaa !27
  %i.so = load double, ptr %i.cp, align 8, !tbaa !27
  %i.sp = tail call double @llvm.fmuladd.f64(double %i.sg, double %i.sn, double %i.so)
end_hunk_0
