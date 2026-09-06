Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MatrixOpData?download=true
inline.NumInlined: 700
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK16OpenColorIO_v2_512MatrixOpData11MatrixArray7inverseEv:bb.a
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
  %.pre236 = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre237 = ptrtoint ptr %.pre236 to i64
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
          to label %bb.g unwind label %bb.i       ; 27 uses

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !31  ; 76 uses
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store double 1.000000e+00, ptr %i.ao, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store double 1.000000e+00, ptr %i.aq, align 8, !tbaa !27
  %scevgep258 = getelementptr i8, ptr %i.n, i64 56
  %scevgep260 = getelementptr i8, ptr %i.an, i64 56
  %ident.check264 = icmp ne i64 %i.am, 1
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph191, %.lr.ph191.1, %.lr.ph191.2, %.lr.ph191.lver.orig, %.lr.ph191.lver.orig.1, %.lr.ph191.lver.orig.2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
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

bb.i:                                             ; preds = %bb.f
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph.preheader:                                 ; preds = %.loopexit, %bb.g
  %indvars.iv217 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next218, %.loopexit ] ; 7 uses
  %indvars.iv = phi i64 [ 1, %bb.g ], [ %indvars.iv.next, %.loopexit ] ; 12 uses
  %i.cz = shl nuw nsw i64 %indvars.iv217, 3
  %i.da = add nuw i64 %i.cz, 24                   ; 2 uses
  %scevgep267 = getelementptr i8, ptr %i.n, i64 %i.da
  %scevgep270 = getelementptr i8, ptr %i.an, i64 %i.da
  %i.db = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %scevgep257 = getelementptr i8, ptr %i.n, i64 %i.db
  %scevgep259 = getelementptr i8, ptr %i.an, i64 %i.db
  %i.dc = mul i64 %i.am, %indvars.iv217           ; 9 uses
  %i.dd = getelementptr [8 x i8], ptr %i.n, i64 %i.dc ; 9 uses
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv217 ; 7 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv217 ; 9 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !27 ; 3 uses
  %i.dg = fcmp olt double %i.df, 0.000000e+00
  %i.dh = fneg double %i.df
  %.0137 = select i1 %i.dg, double %i.dh, double %i.df ; 2 uses
  %i.di = mul i64 %i.am, %indvars.iv
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.di
  %i.dj = load double, ptr %gep, align 8, !tbaa !27 ; 3 uses
  %i.dk = fcmp olt double %i.dj, 0.000000e+00
  %i.dl = fneg double %i.dj
  %.0135 = select i1 %i.dk, double %i.dl, double %i.dj ; 2 uses
  %i.dm = fcmp ogt double %.0135, %.0137          ; 2 uses
  %.1139.v = select i1 %i.dm, i64 %indvars.iv, i64 %indvars.iv217
  %.1139 = trunc i64 %.1139.v to i32              ; 2 uses
  %.2 = select i1 %i.dm, double %.0135, double %.0137 ; 3 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next203, 4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

bb.j:                                             ; preds = %bb.l
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge:                                      ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %.1139.lcssa = phi i32 [ %.1139, %.lr.ph.preheader ], [ %.1139.1, %.lr.ph.1 ], [ %.1139.2, %.lr.ph.2 ]
  %.2.lcssa = phi double [ %.2, %.lr.ph.preheader ], [ %.2.1, %.lr.ph.1 ], [ %.2.2, %.lr.ph.2 ]
  %i.do = fcmp oeq double %.2.lcssa, 0.000000e+00
  br i1 %i.do, label %bb.k, label %bb.n

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.dp = mul i64 %i.am, %indvars.iv.next203
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dp
  %i.dq = load double, ptr %gep.1, align 8, !tbaa !27 ; 3 uses
  %i.dr = fcmp olt double %i.dq, 0.000000e+00
  %i.ds = fneg double %i.dq
  %.0135.1 = select i1 %i.dr, double %i.ds, double %i.dq ; 2 uses
  %i.dt = fcmp ogt double %.0135.1, %.2           ; 2 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.next203 to i32
  %.1139.1 = select i1 %i.dt, i32 %i.du, i32 %.1139 ; 2 uses
  %.2.1 = select i1 %i.dt, double %.0135.1, double %.2 ; 3 uses
  %indvars.iv.next203.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next203.1, 4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.dv = mul i64 %i.am, %indvars.iv.next203.1
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dv
  %i.dw = load double, ptr %gep.2, align 8, !tbaa !27 ; 3 uses
  %i.dx = fcmp olt double %i.dw, 0.000000e+00
  %i.dy = fneg double %i.dw
  %.0135.2 = select i1 %i.dx, double %i.dy, double %i.dw ; 2 uses
  %i.dz = fcmp ogt double %.0135.2, %.2.1         ; 2 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv.next203.1 to i32
  %.1139.2 = select i1 %i.dz, i32 %i.ea, i32 %.1139.1
  %.2.2 = select i1 %i.dz, double %.0135.2, double %.2.1
  br label %._crit_edge

bb.k:                                             ; preds = %._crit_edge
  %i.eb = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull @.str.3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %bb.t unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.eb) #26
  br label %bb.r

bb.n:                                             ; preds = %._crit_edge
  %i.ed = zext i32 %.1139.lcssa to i64            ; 2 uses
  %.not = icmp eq i64 %indvars.iv217, %i.ed
  br i1 %.not, label %.lr.ph191.lver.check, label %.preheader179

.preheader179:                                    ; preds = %bb.n
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

.lr.ph191.lver.check:                             ; preds = %bb.n, %.preheader179
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
  %bound0261 = icmp ult ptr %scevgep257, %scevgep260
  %bound1262 = icmp ult ptr %scevgep259, %scevgep258
  %found.conflict263 = and i1 %bound0261, %bound1262
  %lver.safe265 = or i1 %found.conflict263, %ident.check264
  br i1 %lver.safe265, label %.lr.ph191.lver.orig, label %.lr.ph191

.lr.ph191.lver.orig:                              ; preds = %.lr.ph191.lver.check
  %i.ga = mul i64 %i.am, %indvars.iv              ; 6 uses
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
end_hunk_0
