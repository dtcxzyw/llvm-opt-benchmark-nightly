Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biassharing?download=true
inline.NumInlined: 844
inline.NumDeleted: 436
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx31haveBiasSharingWithinSimulationERKNS_9AwhParamsE:bb.a
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [104 x i8], ptr %i.c, <8 x i64> %vec.ind
  %wide.gep36 = getelementptr inbounds nuw [104 x i8], ptr %i.c, <8 x i64> %step.add
  %wide.gep37 = getelementptr inbounds nuw [104 x i8], ptr %i.c, <8 x i64> %step.add.2
  %wide.gep38 = getelementptr inbounds nuw [104 x i8], ptr %i.c, <8 x i64> %step.add.3
  %wide.gep39 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 88
  %wide.gep40 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep36, i64 88
  %wide.gep41 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep37, i64 88
  %wide.gep42 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep38, i64 88
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep39, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !46
  %wide.masked.gather43 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep40, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !46
  %wide.masked.gather44 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep41, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !46
  %wide.masked.gather45 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep42, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !46
  %i.t = icmp eq <8 x i32> %wide.masked.gather, %broadcast.splat
  %i.u = icmp eq <8 x i32> %wide.masked.gather43, %broadcast.splat
  %i.v = icmp eq <8 x i32> %wide.masked.gather44, %broadcast.splat
  %i.w = icmp eq <8 x i32> %wide.masked.gather45, %broadcast.splat
  %i.x = or <8 x i1> %vec.phi, %i.t               ; 2 uses
  %i.y = or <8 x i1> %vec.phi33, %i.u             ; 2 uses
  %i.z = or <8 x i1> %vec.phi34, %i.v             ; 2 uses
  %i.aa = or <8 x i1> %vec.phi35, %i.w            ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.y, %i.x
  %bin.rdx46 = or <8 x i1> %i.z, %bin.rdx
  %bin.rdx47 = or <8 x i1> %i.aa, %bin.rdx46
  %bin.rdx47.fr = freeze <8 x i1> %bin.rdx47
  %i.ac = bitcast <8 x i1> %bin.rdx47.fr to i8
  %i.ad = icmp ne i8 %i.ac, 0
  %rdx.select = select i1 %i.ad, i1 true, i1 %.01419 ; 3 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.s, %vec.epilog.iter.check ], [ %indvars.iv, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %.01419, %vector.main.loop.iter.check ]
  %i.ae = xor i1 %bc.merge.rdx, %.01419
  %n.vec48 = and i64 %i.l, -4                     ; 3 uses
  %i.af = add i64 %indvars.iv, %n.vec48
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x i1> poison, i1 %i.ae, i64 0
  %broadcast.splat52 = shufflevector <4 x i1> %broadcast.splatinsert51, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat54 = shufflevector <4 x i64> %broadcast.splatinsert53, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction55 = add nuw nsw <4 x i64> %broadcast.splat54, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ]
  %vec.ind57 = phi <4 x i64> [ %induction55, %vec.epilog.ph ], [ %vec.ind.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi58 = phi <4 x i1> [ %broadcast.splat52, %vec.epilog.ph ], [ %.fr68, %vec.epilog.vector.body ]
  %wide.gep59 = getelementptr inbounds nuw [104 x i8], ptr %i.c, <4 x i64> %vec.ind57
  %wide.gep60 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep59, i64 88
  %wide.masked.gather61 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep60, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !46
  %i.ag = icmp eq <4 x i32> %wide.masked.gather61, %broadcast.splat50
  %i.ah = or <4 x i1> %vec.phi58, %i.ag
  %.fr68 = freeze <4 x i1> %i.ah                  ; 2 uses
  %index.next62 = add nuw i64 %index56, 4         ; 2 uses
  %vec.ind.next63 = add nuw nsw <4 x i64> %vec.ind57, splat (i64 4)
  %i.ai = icmp eq i64 %index.next62, %n.vec48
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !164

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aj = bitcast <4 x i1> %.fr68 to i4
  %i.ak = icmp ne i4 %i.aj, 0
  %rdx.select64 = select i1 %i.ak, i1 true, i1 %.01419 ; 2 uses
  %cmp.n65 = icmp eq i64 %i.l, %n.vec48
  br i1 %cmp.n65, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv23.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.117.ph = phi i1 [ %.01419, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select64, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.lr.ph ], [ %indvars.iv23.ph, %.lr.ph.preheader ] ; 2 uses
  %.117 = phi i1 [ %spec.select, %.lr.ph ], [ %.117.ph, %.lr.ph.preheader ]
  %i.al = getelementptr inbounds nuw [104 x i8], ptr %i.c, i64 %indvars.iv23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46
  %i.ao = icmp eq i32 %i.an, %i.o
  %spec.select = select i1 %i.ao, i1 true, i1 %.117 ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count27
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !165

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph21
  %.3 = phi i1 [ %.01419, %.lr.ph21 ], [ %rdx.select64, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge, label %.lr.ph21, !llvm.loop !166
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %5 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %6 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %7 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %8 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %9 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %10 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %11 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.e, %i.d                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph223, label %._crit_edge

.lr.ph223:                                        ; preds = %bb.a
  %i.h = udiv exact i64 %i.f, 104
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.n = load ptr, ptr @TMPI_INT, align 8
  %i.o = load ptr, ptr @TMPI_LONG, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph223, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv266 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next267, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 8 uses
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %indvars.iv266
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %3, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv266
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 8 uses
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %i.y = shl nuw nsw i32 %i.v, 1                  ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv266
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.z, 2                 ; 4 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #24 ; 11 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !26
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ad, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !26
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !176
  %i.ah = sext i32 %i.ac to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !26
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !177
  %i.ak = add nsw i32 %i.ac, %i.v
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.al
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !26
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !86, !nonnull !87, !align !88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv266
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.au = invoke noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef null, ptr noundef nonnull %i.ae, i32 noundef %i.y, ptr noundef %i.n, i32 noundef 2, ptr noundef %i.at)
          to label %.lr.ph unwind label %.loopexit ; 0 uses

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.e
  %i.av = load i32, ptr %i.ae, align 4, !tbaa !26
  %i.aw = zext nneg i32 %i.v to i64               ; 5 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aw
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aw
  br i1 %exitcond.not, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.g, !llvm.loop !168

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %i.ay = shl nuw nsw i64 %i.aw, 3                ; 5 uses
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #24
          to label %.noexc91 unwind label %bb.y   ; 9 uses

.noexc91:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.az, align 8, !tbaa !71
  %14 = getelementptr i8, ptr %i.az, i64 8
  %.idx.i.i.i.i.i.i.i88 = add nsw i64 %i.ay, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %.idx.i.i.i.i.i.i.i88, i1 false), !tbaa !71
  %15 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv266
  %16 = load i64, ptr %15, align 8, !tbaa !71
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ah
  store i64 %16, ptr %17, align 8, !tbaa !71
  %18 = load ptr, ptr %i.l, align 8, !tbaa !62
  %19 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv266
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = load ptr, ptr %i.m, align 8, !tbaa !86, !nonnull !87, !align !88
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %bb.u, label %.lr.ph220

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  %.not73 = icmp eq i32 %i.bb, %i.av
  br i1 %.not73, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull @.str.11)
          to label %bb.i unwind label %.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.j unwind label %.thread141

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %6, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE, ptr %i.bd, align 8, !tbaa !50
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.1, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !50
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 329, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !26
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bc, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr %i.bc, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.ak unwind label %bb.l

.thread:                                          ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread141:                                       ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #22
  br label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.k
  %.045 = phi i1 [ false, %bb.k ], [ true, %bb.j ]
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.045, label %bb.m, label %_ZNSt6vectorIiSaIiEED2Ev.exit103

.sink.split:                                      ; preds = %.thread, %.thread141
  %.pn78.pn140.ph = phi { ptr, i32 } [ %i.bf, %.thread141 ], [ %i.be, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.pn78.pn140 = phi { ptr, i32 } [ %i.bg, %bb.l ], [ %.pn78.pn140.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bc) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

bb.n:                                             ; preds = %bb.g
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bh = load i32, ptr %gep, align 4, !tbaa !26
  %i.bi = load i32, ptr %i.ax, align 4, !tbaa !26
  %.not74 = icmp eq i32 %i.bh, %i.bi
  br i1 %.not74, label %bb.f, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull @.str.12)
          to label %bb.p unwind label %.thread144

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.q unwind label %.thread148

bb.q:                                             ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %9, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE, ptr %i.bk, align 8, !tbaa !50
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.1, ptr %.sroa.4114.0..sroa_idx, align 8, !tbaa !50
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 335, ptr %.sroa.5115.0..sroa_idx, align 8, !tbaa !26
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bj, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr %i.bj, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.ak unwind label %bb.s

.thread144:                                       ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split304

.thread148:                                       ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #22
  br label %.sink.split304

bb.s:                                             ; preds = %bb.q, %bb.r
  %.042 = phi i1 [ false, %bb.r ], [ true, %bb.q ]
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.042, label %bb.t, label %_ZNSt6vectorIiSaIiEED2Ev.exit103

.sink.split304:                                   ; preds = %.thread144, %.thread148
  %.pn75.pn147.ph = phi { ptr, i32 } [ %i.bm, %.thread148 ], [ %i.bl, %.thread144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.t

bb.t:                                             ; preds = %.sink.split304, %bb.s
  %.pn75.pn147 = phi { ptr, i32 } [ %i.bn, %bb.s ], [ %.pn75.pn147.ph, %.sink.split304 ]
  call void @__cxa_free_exception(ptr %i.bj) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

bb.u:                                             ; preds = %.noexc91
  %.not224 = icmp eq i32 %i.v, 2147483647
  br i1 %.not224, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx18sumOverSimulationsIlEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommEENKUlvE_clEv, ptr noundef nonnull @.str.1, i32 noundef 238) #23
          to label %.noexc95 unwind label %.thread169.loopexit.split-lp

.noexc95:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bo = invoke noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef null, ptr noundef nonnull %i.az, i32 noundef %i.v, ptr noundef %i.o, i32 noundef 2, ptr noundef %20)
          to label %.lr.ph220 unwind label %.thread169.loopexit ; 0 uses

.lr.ph220:                                        ; preds = %.noexc91, %bb.w
  %i.bp = load i64, ptr %i.az, align 8, !tbaa !71
  br label %bb.z

bb.x:                                             ; preds = %bb.z
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %i.aw
  br i1 %exitcond265.not, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.z, !llvm.loop !169

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.ay) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.y:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

.thread169.loopexit:                              ; preds = %bb.w
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %.thread169

.thread169.loopexit.split-lp:                     ; preds = %bb.v
  %lpad.loopexit.split-lp175 = landingpad { ptr, i32 }
          cleanup
  br label %.thread169

.thread169:                                       ; preds = %.thread169.loopexit.split-lp, %.thread169.loopexit
  %lpad.phi176 = phi { ptr, i32 } [ %lpad.loopexit174, %.thread169.loopexit ], [ %lpad.loopexit.split-lp175, %.thread169.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.ay) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

bb.z:                                             ; preds = %.lr.ph220, %bb.x
  %indvars.iv261 = phi i64 [ 1, %.lr.ph220 ], [ %indvars.iv.next262, %bb.x ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv261
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !71
  %.not = icmp eq i64 %i.bs, %i.bp
  br i1 %.not, label %bb.x, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = trunc nuw nsw i64 %indvars.iv266 to i32
  %i.bu = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.bv = add nuw nsw i32 %i.bt, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.13, i32 noundef %i.bv)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ac unwind label %.thread154

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %10, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %13, align 8, !tbaa !48
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE, ptr %i.bw, align 8, !tbaa !50
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 349, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bu, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr %i.bu, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.ak unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split305

bb.af:                                            ; preds = %bb.ac
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %.0 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ]
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ag ], [ %i.by, %bb.af ] ; 4 uses
  %.1 = phi i1 [ %.0, %bb.ag ], [ true, %bb.af ]  ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #22
  %i.ca = load ptr, ptr %12, align 8, !tbaa !73   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

.thread154:                                       ; preds = %bb.ab
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %12, align 8, !tbaa !73   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.thread154
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !74
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #25
  br label %.sink.split305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread161: ; preds = %.thread154
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !75
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  br label %.sink.split305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.cm = load i64, ptr %i.cb, align 8, !tbaa !74
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.1, label %bb.ai, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.1, label %bb.ai, label %bb.aj

.sink.split305:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread
  %.pn.pn.pn153.ph = phi { ptr, i32 } [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread161 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn153 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn153.ph, %.sink.split305 ]
  call void @__cxa_free_exception(ptr %i.bu) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn.pn153, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.ay) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

_ZNSt6vectorIiSaIiEED2Ev.exit103:                 ; preds = %.thread169, %bb.y, %bb.m, %bb.l, %bb.t, %bb.s, %.loopexit, %bb.aj
  %.pn78.pn.pn.pn167 = phi { ptr, i32 } [ %lpad.phi176, %.thread169 ], [ %.pn.pn.pn.pn, %bb.aj ], [ %i.bq, %bb.y ], [ %.pn75.pn147, %bb.t ], [ %i.bg, %bb.l ], [ %.pn78.pn140, %bb.m ], [ %i.bn, %bb.s ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #25
  resume { ptr, i32 } %.pn78.pn.pn.pn167

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.c, %bb.b
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next267, %i.h
  br i1 %exitcond269.not, label %._crit_edge, label %bb.b, !llvm.loop !170

bb.ak:                                            ; preds = %bb.ae, %bb.r, %bb.k
  unreachable
}

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !70
  %i.c = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8, !tbaa !71
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !73
  %i.h = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.h, ptr %i.b, align 8, !tbaa !74
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !74
  store i8 %i.j, ptr %i.i, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
end_hunk_0
