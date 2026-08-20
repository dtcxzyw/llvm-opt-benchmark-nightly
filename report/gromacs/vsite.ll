inline.NumInlined: 3272
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt6vectorIN3gmx9AtomIndexESaIS1_EE17_M_default_appendEm:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN3gmx9AtomIndexEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN3gmx9AtomIndexEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !28
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN3gmx9AtomIndexESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #32
  unreachable

_ZNKSt6vectorIN3gmx9AtomIndexESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx9AtomIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN3gmx9AtomIndexESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN3gmx9AtomIndexESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx9AtomIndexESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !85, !alias.scope !328, !noalias !325
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !325, !noalias !328
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15, !alias.scope !328, !noalias !325
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !15, !alias.scope !325, !noalias !328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !328, !noalias !325
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx9AtomIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !330

_ZNSt6vectorIN3gmx9AtomIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN3gmx9AtomIndexESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN3gmx9AtomIndexESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx9AtomIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseIN3gmx9AtomIndexESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN3gmx9AtomIndexESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN3gmx9AtomIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx9AtomIndexEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3gmx9AtomIndexESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19VirtualSitesHandler4ImplC2ERK10gmx_mtop_tP12gmx_domdec_t7PbcTypeNS_8ArrayRefIKNS_17RangePartitioningEEE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 4), (8, 13), (16, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %1, ptr noundef %2, i32 noundef %3, ptr nofree readonly captures(address) %4, ptr nofree readnone captures(address) %5) unnamed_addr #7 align 2 {
.split:
  %i.a = tail call noundef i32 @_ZN3gmx27countInterUpdategroupVsitesERK10gmx_mtop_tNS_8ArrayRefIKNS_17RangePartitioningEEE(ptr noundef nonnull align 8 dereferenceable(768) %1, ptr %4, ptr %5) ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !41
  %.not = icmp ne i32 %3, 1
  %i.b = icmp sgt i32 %i.a, 0
  %narrow = and i1 %.not, %i.b
  %.sink = zext i1 %narrow to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sink, ptr %i.d, align 4, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !331
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  store ptr %i.o, ptr %i.i, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN3gmx13ThreadingInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.p)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19VirtualSitesHandlerC2ERK10gmx_mtop_tP12gmx_domdec_t7PbcTypeNS_8ArrayRefIKNS_17RangePartitioningEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(768) %1, ptr noundef %2, i32 noundef %3, ptr %4, ptr %5) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #33 ; 3 uses
  invoke void @_ZN3gmx19VirtualSitesHandler4ImplC1ERK10gmx_mtop_tP12gmx_domdec_t7PbcTypeNS_8ArrayRefIKNS_17RangePartitioningEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(768) %1, ptr noundef %2, i32 noundef %3, ptr %4, ptr %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx13ThreadingInfo15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEENS_8ArrayRefIK9t_iparamsEEiiNS7_IK12ParticleTypeEEb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr %2, ptr %3, i32 noundef %4, i32 noundef %5, ptr noundef byval(%"class.gmx::ArrayRef.299") align 8 %6, i1 noundef zeroext %7) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.gmx::ArrayRef", align 8     ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %2, ptr %8, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.f, align 8
  store ptr %1, ptr %i.a, align 8, !tbaa !332
  store i32 %4, ptr %i.b, align 4, !tbaa !88
  %i.g = load i32, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  br i1 %7, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1776
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1784
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.e

bb.d:                                             ; preds = %.loopexit89
  %i.k = add nsw i32 %i.eg, 1                     ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !88
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %.loopexit89
  %.062.idx117 = phi i64 [ 0, %bb.c ], [ %.062.add, %.loopexit89 ] ; 2 uses
  %.promoted100112116 = phi i32 [ -1, %bb.c ], [ %i.eg, %.loopexit89 ] ; 5 uses
  %.062.ptr = getelementptr inbounds nuw i8, ptr @_ZN3gmxL18vSiteFunctionTypesE, i64 %.062.idx117
  %i.l = load i32, ptr %.062.ptr, align 4, !tbaa !83 ; 2 uses
  %.not68 = icmp eq i32 %i.l, 74
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2                   ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.preheader, label %.loopexit89

.preheader.preheader:                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !86   ; 2 uses
  %i.aa = add i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64                   ; 4 uses
  %i.ac = and i64 %i.u, 2147483647
  %i.ad = icmp sgt i32 %i.z, 0
  br label %.preheader

.loopexit88:                                      ; preds = %.lr.ph, %middle.block231, %vec.epilog.middle.block250, %.preheader
  %.promoted100109 = phi i32 [ %.promoted100110, %.preheader ], [ %i.bb, %vec.epilog.middle.block250 ], [ %i.av, %middle.block231 ], [ %i.bf, %.lr.ph ] ; 2 uses
  %.promoted94 = phi i32 [ %.promoted9596, %.preheader ], [ %i.bb, %vec.epilog.middle.block250 ], [ %i.av, %middle.block231 ], [ %i.bf, %.lr.ph ]
  %i.ae = icmp slt i64 %indvars.iv.next139, %i.ac
  %indvars.iv.next = add i64 %indvars.iv, %i.ab
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ae, label %.preheader, label %.loopexit89, !llvm.loop !333

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit88
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit88 ] ; 2 uses
  %indvars.iv138 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next139, %.loopexit88 ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit88 ] ; 6 uses
  %.promoted100110 = phi i32 [ %.promoted100112116, %.preheader.preheader ], [ %.promoted100109, %.loopexit88 ]
  %.promoted9596 = phi i32 [ %.promoted100112116, %.preheader.preheader ], [ %.promoted94, %.loopexit88 ] ; 4 uses
  %9 = add i64 %indvars.iv138, %i.ab
  %i.af = add i64 %indvars.iv138, 2
  %smax213 = call i64 @llvm.smax.i64(i64 %9, i64 %i.af)
  %i.ag = mul i64 %indvar, %i.ab
  %i.ah = xor i64 %i.ag, -1
  %i.ai = add i64 %smax213, %i.ah                 ; 7 uses
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, %i.ab ; 3 uses
  br i1 %i.ad, label %iter.check237, label %.loopexit88

iter.check237:                                    ; preds = %.preheader
  %min.iters.check214 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check214, label %.lr.ph.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %iter.check237
  %min.iters.check216 = icmp ult i64 %i.ai, 32
  br i1 %min.iters.check216, label %vec.epilog.ph241, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %i.aj = and i64 %i.ai, 24
  %n.vec218 = and i64 %i.ai, -32                  ; 4 uses
  %i.ak = add i64 %indvars.iv, %n.vec218
  %broadcast.splatinsert219 = insertelement <8 x i32> poison, i32 %.promoted9596, i64 0
  %broadcast.splat220 = shufflevector <8 x i32> %broadcast.splatinsert219, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.al = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph217
  %index222 = phi i64 [ 0, %vector.ph217 ], [ %index.next230, %vector.body221 ] ; 2 uses
  %vec.phi223 = phi <8 x i32> [ %broadcast.splat220, %vector.ph217 ], [ %i.aq, %vector.body221 ]
  %vec.phi224 = phi <8 x i32> [ %broadcast.splat220, %vector.ph217 ], [ %i.ar, %vector.body221 ]
  %vec.phi225 = phi <8 x i32> [ %broadcast.splat220, %vector.ph217 ], [ %i.as, %vector.body221 ]
  %vec.phi226 = phi <8 x i32> [ %broadcast.splat220, %vector.ph217 ], [ %i.at, %vector.body221 ]
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %index222 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %wide.load = load <8 x i32>, ptr %i.am, align 4, !tbaa !88
  %wide.load227 = load <8 x i32>, ptr %i.an, align 4, !tbaa !88
  %wide.load228 = load <8 x i32>, ptr %i.ao, align 4, !tbaa !88
  %wide.load229 = load <8 x i32>, ptr %i.ap, align 4, !tbaa !88
  %i.aq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi223, <8 x i32> %wide.load) ; 2 uses
  %i.ar = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi224, <8 x i32> %wide.load227) ; 2 uses
  %i.as = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi225, <8 x i32> %wide.load228) ; 2 uses
  %i.at = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi226, <8 x i32> %wide.load229) ; 2 uses
  %index.next230 = add nuw i64 %index222, 32      ; 2 uses
  %i.au = icmp eq i64 %index.next230, %n.vec218
  br i1 %i.au, label %middle.block231, label %vector.body221, !llvm.loop !334

middle.block231:                                  ; preds = %vector.body221
  %rdx.minmax232 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aq, <8 x i32> %i.ar)
  %rdx.minmax233 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax232, <8 x i32> %i.as)
  %rdx.minmax234 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax233, <8 x i32> %i.at)
  %i.av = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax234) ; 4 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec218
  br i1 %cmp.n, label %.loopexit88, label %vec.epilog.iter.check239

vec.epilog.iter.check239:                         ; preds = %middle.block231
  %min.epilog.iters.check240 = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check240, label %.lr.ph.preheader, label %vec.epilog.ph241, !prof !216

vec.epilog.ph241:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check239
  %vec.epilog.resume.val235 = phi i64 [ %n.vec218, %vec.epilog.iter.check239 ], [ 0, %vector.main.loop.iter.check215 ]
  %bc.merge.rdx236 = phi i32 [ %i.av, %vec.epilog.iter.check239 ], [ %.promoted9596, %vector.main.loop.iter.check215 ]
  %n.vec242 = and i64 %i.ai, -8                   ; 3 uses
  %i.aw = add i64 %indvars.iv, %n.vec242
  %broadcast.splatinsert243 = insertelement <8 x i32> poison, i32 %bc.merge.rdx236, i64 0
  %broadcast.splat244 = shufflevector <8 x i32> %broadcast.splatinsert243, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ax = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  br label %vec.epilog.vector.body245

vec.epilog.vector.body245:                        ; preds = %vec.epilog.vector.body245, %vec.epilog.ph241
  %index246 = phi i64 [ %vec.epilog.resume.val235, %vec.epilog.ph241 ], [ %index.next249, %vec.epilog.vector.body245 ] ; 2 uses
  %vec.phi247 = phi <8 x i32> [ %broadcast.splat244, %vec.epilog.ph241 ], [ %i.az, %vec.epilog.vector.body245 ]
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %index246
  %wide.load248 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !88
  %i.az = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi247, <8 x i32> %wide.load248) ; 2 uses
  %index.next249 = add nuw i64 %index246, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.ba, label %vec.epilog.middle.block250, label %vec.epilog.vector.body245, !llvm.loop !335

vec.epilog.middle.block250:                       ; preds = %vec.epilog.vector.body245
  %i.bb = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.az) ; 3 uses
  %cmp.n251 = icmp eq i64 %i.ai, %n.vec242
  br i1 %cmp.n251, label %.loopexit88, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check237, %vec.epilog.iter.check239, %vec.epilog.middle.block250
  %indvars.iv135.ph = phi i64 [ %indvars.iv, %iter.check237 ], [ %i.ak, %vec.epilog.iter.check239 ], [ %i.aw, %vec.epilog.middle.block250 ]
  %.ph282 = phi i32 [ %.promoted9596, %iter.check237 ], [ %i.av, %vec.epilog.iter.check239 ], [ %i.bb, %vec.epilog.middle.block250 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.lr.ph ], [ %indvars.iv135.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi i32 [ %i.bf, %.lr.ph ], [ %.ph282, %.lr.ph.preheader ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv135
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !88
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.be) ; 3 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next136, %indvars.iv.next139
  br i1 %i.bg, label %.lr.ph, label %.loopexit88, !llvm.loop !336

bb.g:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !12  ; 10 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !122
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph106.preheader, label %.loopexit89

.lr.ph106.preheader:                              ; preds = %bb.g
  %scevgep185 = getelementptr i8, ptr %i.bh, i64 8
  %scevgep187 = getelementptr i8, ptr %i.bh, i64 12
  br label %.lr.ph106

.loopexit87.loopexit:                             ; preds = %.lr.ph99
  %i.bp = trunc nsw i64 %indvars.iv.next142 to i32
  br label %.loopexit87

.loopexit87:                                      ; preds = %.loopexit87.loopexit, %.lr.ph106
  %.promoted100113 = phi i32 [ %i.bz, %.lr.ph106 ], [ %i.ee, %.loopexit87.loopexit ] ; 2 uses
  %.159.lcssa = phi i32 [ %.058105, %.lr.ph106 ], [ %i.bp, %.loopexit87.loopexit ] ; 2 uses
  %i.bq = icmp slt i32 %.159.lcssa, %i.bn
  br i1 %i.bq, label %.lr.ph106, label %.loopexit89, !llvm.loop !337

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.loopexit87
  %.058105 = phi i32 [ %.159.lcssa, %.loopexit87 ], [ 0, %.lr.ph106.preheader ] ; 3 uses
  %.promoted101104 = phi i32 [ %.promoted100113, %.loopexit87 ], [ %.promoted100112116, %.lr.ph106.preheader ]
  %i.br = sext i32 %.058105 to i64                ; 14 uses
  %i.bs = getelementptr [4 x i8], ptr %i.bh, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !88
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [48 x i8], ptr %2, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !79 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bs, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !88
  %i.bz = tail call i32 @llvm.smax.i32(i32 %.promoted101104, i32 %i.by) ; 5 uses
  %i.ca = icmp sgt i32 %i.bw, 0
  br i1 %i.ca, label %iter.check, label %.loopexit87

iter.check:                                       ; preds = %.lr.ph106
  %i.cb = mul nuw nsw i32 %i.bw, 3
  %i.cc = add nsw i32 %i.cb, %.058105
  %i.cd = sext i32 %i.cc to i64                   ; 3 uses
  %i.ce = add nsw i64 %i.br, 3
  %smax189 = call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cd)
  %i.cf = add i64 %smax189, -3                    ; 2 uses
  %i.cg = icmp ne i64 %i.cf, %i.br                ; 2 uses
  %umin190.neg = sext i1 %i.cg to i64
  %i.ch = select i1 %i.cg, i64 2, i64 1
  %i.ci = add i64 %i.cf, %umin190.neg
  %i.cj = sub i64 %i.ci, %i.br
  %i.ck = udiv i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ch, %i.ck            ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.cl, 9
  br i1 %min.iters.check, label %.lr.ph99.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cm = shl nsw i64 %i.br, 2                    ; 2 uses
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.cm
  %i.cn = add nsw i64 %i.br, 3
  %smax = call i64 @llvm.smax.i64(i64 %i.cn, i64 %i.cd)
  %i.co = add i64 %smax, -3                       ; 2 uses
  %i.cp = icmp ne i64 %i.co, %i.br
  %umin = zext i1 %i.cp to i64                    ; 2 uses
  %i.cq = add nsw i64 %umin, %i.br
  %i.cr = sub i64 %i.co, %i.cq
  %i.cs = udiv i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, %umin
  %i.cu = mul i64 %i.ct, 12
  %i.cv = getelementptr i8, ptr %scevgep187, i64 %i.cu
  %scevgep188 = getelementptr i8, ptr %i.cv, i64 %i.cm
  %bound0 = icmp ult ptr %i.c, %scevgep188
  %bound1 = icmp ult ptr %scevgep186, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check191 = icmp samesign ult i64 %i.cl, 33
  br i1 %min.iters.check191, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cw = and i64 %i.cl, 31                       ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = select i1 %i.cx, i64 32, i64 %i.cw      ; 2 uses
  %n.vec = sub nsw i64 %i.cl, %i.cy               ; 3 uses
  %i.cz = mul i64 %n.vec, 3
  %i.da = add i64 %i.cz, %i.br
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi192 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi193 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi194 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.do, %vector.body ]
  %i.db = mul i64 %index, 3
  %i.dc = add i64 %i.db, %i.br                    ; 4 uses
  %i.dd = getelementptr [4 x i8], ptr %i.bh, i64 %i.dc
  %i.de = getelementptr [4 x i8], ptr %i.bh, i64 %i.dc
  %i.df = getelementptr [4 x i8], ptr %i.bh, i64 %i.dc
  %i.dg = getelementptr [4 x i8], ptr %i.bh, i64 %i.dc
  %i.dh = getelementptr i8, ptr %i.dd, i64 8
end_hunk_0
