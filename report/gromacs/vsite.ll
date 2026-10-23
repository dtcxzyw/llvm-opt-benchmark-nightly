Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vsite?download=true
inline.NumInlined: 3272
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNSt6vectorIN3gmx9AtomIndexESaIS1_EE17_M_default_appendEm:bb.a
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx9AtomIndexEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3gmx9AtomIndexESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19VirtualSitesHandler4ImplC2ERK10gmx_mtop_tP12gmx_domdec_t7PbcTypeNS_8ArrayRefIKNS_17RangePartitioningEEE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 4), (8, 13), (16, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %1, ptr noundef %2, i32 noundef %3, ptr nofree readonly captures(address) %4, ptr nofree readnone captures(address) %5) unnamed_addr #7 align 2 {
.split:
  %i.a = tail call noundef i32 @_ZN3gmx27countInterUpdategroupVsitesERK10gmx_mtop_tNS_8ArrayRefIKNS_17RangePartitioningEEE(ptr noundef nonnull align 8 dereferenceable(768) %1, ptr %4, ptr %5) ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !59
  %.not = icmp ne i32 %3, 1
  %i.b = icmp sgt i32 %i.a, 0
  %narrow = and i1 %.not, %i.b
  %.sink = zext i1 %narrow to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sink, ptr %i.d, align 4, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !332
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  store ptr %i.o, ptr %i.i, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN3gmx13ThreadingInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.p)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19VirtualSitesHandlerC2ERK10gmx_mtop_tP12gmx_domdec_t7PbcTypeNS_8ArrayRefIKNS_17RangePartitioningEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(768) %1, ptr noundef %2, i32 noundef %3, ptr %4, ptr %5) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #35 ; 3 uses
  invoke void @_ZN3gmx19VirtualSitesHandler4ImplC1ERK10gmx_mtop_tP12gmx_domdec_t7PbcTypeNS_8ArrayRefIKNS_17RangePartitioningEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(768) %1, ptr noundef %2, i32 noundef %3, ptr %4, ptr %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx13ThreadingInfo15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEENS_8ArrayRefIK9t_iparamsEEiiNS7_IK12ParticleTypeEEb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr %2, ptr %3, i32 noundef %4, i32 noundef %5, ptr noundef byval(%"class.gmx::ArrayRef.299") align 8 %6, i1 noundef zeroext %7) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.gmx::ArrayRef", align 8     ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %2, ptr %8, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.f, align 8
  store ptr %1, ptr %i.a, align 8, !tbaa !151
  store i32 %4, ptr %i.b, align 4, !tbaa !90
  %i.g = load i32, ptr %0, align 8, !tbaa !70     ; 3 uses
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  br i1 %7, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1776
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1784
  br label %bb.e

bb.d:                                             ; preds = %.loopexit89
  %i.k = add nsw i32 %i.dt, 1                     ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !90
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %.loopexit89
  %.062.idx117 = phi i64 [ 0, %bb.c ], [ %.062.add, %.loopexit89 ] ; 2 uses
  %.promoted100112116 = phi i32 [ -1, %bb.c ], [ %i.dt, %.loopexit89 ] ; 5 uses
  %.062.ptr = getelementptr inbounds nuw i8, ptr @_ZN3gmxL18vSiteFunctionTypesE, i64 %.062.idx117
  %i.l = load i32, ptr %.062.ptr, align 4, !tbaa !86 ; 2 uses
  %.not68 = icmp eq i32 %i.l, 74
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !115
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
  %i.z = load i32, ptr %i.y, align 8, !tbaa !89   ; 2 uses
  %i.aa = add i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64                   ; 4 uses
  %i.ac = and i64 %i.u, 2147483647
  %i.ad = icmp sgt i32 %i.z, 0
  br label %.preheader

.loopexit88:                                      ; preds = %.lr.ph, %middle.block225, %vec.epilog.middle.block244, %.preheader
  %.promoted100109 = phi i32 [ %.promoted100110, %.preheader ], [ %i.bb, %vec.epilog.middle.block244 ], [ %i.aw, %middle.block225 ], [ %i.bf, %.lr.ph ] ; 2 uses
  %.promoted94 = phi i32 [ %.promoted9596, %.preheader ], [ %i.bb, %vec.epilog.middle.block244 ], [ %i.aw, %middle.block225 ], [ %i.bf, %.lr.ph ]
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
  %i.af = add i64 %indvars.iv138, %i.ab
  %i.ag = add i64 %indvars.iv138, 2
  %smax207 = tail call i64 @llvm.smax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = mul i64 %indvar, %i.ab
  %i.ai = xor i64 %i.ah, -1
  %i.aj = add i64 %smax207, %i.ai                 ; 7 uses
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, %i.ab ; 3 uses
  br i1 %i.ad, label %iter.check231, label %.loopexit88

iter.check231:                                    ; preds = %.preheader
  %min.iters.check208 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check208, label %.lr.ph.preheader, label %vector.main.loop.iter.check209

vector.main.loop.iter.check209:                   ; preds = %iter.check231
  %min.iters.check210 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check210, label %vec.epilog.ph235, label %vector.ph211

vector.ph211:                                     ; preds = %vector.main.loop.iter.check209
  %i.ak = and i64 %i.aj, 24
  %n.vec212 = and i64 %i.aj, -32                  ; 4 uses
  %i.al = add i64 %indvars.iv, %n.vec212
  %broadcast.splatinsert213 = insertelement <8 x i32> poison, i32 %.promoted9596, i64 0
  %broadcast.splat214 = shufflevector <8 x i32> %broadcast.splatinsert213, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.am = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  br label %vector.body215

vector.body215:                                   ; preds = %vector.ph211, %vector.body215
  %index216 = phi i64 [ 0, %vector.ph211 ], [ %index.next224, %vector.body215 ] ; 2 uses
  %vec.phi217.a = phi <8 x i32> [ %broadcast.splat214, %vector.ph211 ], [ %i.ar, %vector.body215 ]
  %vec.phi218.a = phi <8 x i32> [ %broadcast.splat214, %vector.ph211 ], [ %i.as, %vector.body215 ]
  %vec.phi219.a = phi <8 x i32> [ %broadcast.splat214, %vector.ph211 ], [ %i.at, %vector.body215 ]
  %vec.phi220 = phi <8 x i32> [ %broadcast.splat214, %vector.ph211 ], [ %i.au, %vector.body215 ]
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %index216 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %wide.load = load <8 x i32>, ptr %i.an, align 4, !tbaa !90
  %wide.load221.a = load <8 x i32>, ptr %i.ao, align 4, !tbaa !90
  %wide.load222.a = load <8 x i32>, ptr %i.ap, align 4, !tbaa !90
  %wide.load223 = load <8 x i32>, ptr %i.aq, align 4, !tbaa !90
  %i.ar = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi217.a, <8 x i32> %wide.load) ; 2 uses
  %i.as = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi218.a, <8 x i32> %wide.load221.a) ; 2 uses
  %i.at = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi219.a, <8 x i32> %wide.load222.a) ; 2 uses
  %i.au = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi220, <8 x i32> %wide.load223) ; 2 uses
  %index.next224 = add nuw i64 %index216, 32      ; 2 uses
  %i.av = icmp eq i64 %index.next224, %n.vec212
  br i1 %i.av, label %middle.block225, label %vector.body215, !llvm.loop !334

middle.block225:                                  ; preds = %vector.body215
  %rdx.minmax226.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ar, <8 x i32> %i.as)
  %rdx.minmax227.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax226.a, <8 x i32> %i.at)
  %rdx.minmax228 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax227.a, <8 x i32> %i.au)
  %i.aw = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax228) ; 4 uses
  %cmp.n = icmp eq i64 %i.aj, %n.vec212
  br i1 %cmp.n, label %.loopexit88, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block225
  %min.epilog.iters.check234 = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check234, label %.lr.ph.preheader, label %vec.epilog.ph235, !prof !137

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check209, %vec.epilog.iter.check233
  %vec.epilog.resume.val229 = phi i64 [ %n.vec212, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check209 ]
  %bc.merge.rdx230 = phi i32 [ %i.aw, %vec.epilog.iter.check233 ], [ %.promoted9596, %vector.main.loop.iter.check209 ]
  %broadcast.splatinsert238 = insertelement <8 x i32> poison, i32 %bc.merge.rdx230, i64 0
  %broadcast.splat239 = shufflevector <8 x i32> %broadcast.splatinsert238, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec235 = and i64 %i.aj, -8                   ; 3 uses
  %9 = add i64 %indvars.iv, %n.vec235
  %i.ax = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  br label %vec.epilog.vector.body239

vec.epilog.vector.body239:                        ; preds = %vec.epilog.vector.body239, %vec.epilog.ph235
  %index240 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph235 ], [ %index.next243, %vec.epilog.vector.body239 ] ; 2 uses
  %vec.phi241 = phi <8 x i32> [ %broadcast.splat239, %vec.epilog.ph235 ], [ %i.az, %vec.epilog.vector.body239 ]
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %index240
  %wide.load242 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !90
  %i.az = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi241, <8 x i32> %wide.load242) ; 2 uses
  %index.next243 = add nuw i64 %index240, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next243, %n.vec235
  br i1 %i.ba, label %vec.epilog.middle.block244, label %vec.epilog.vector.body239, !llvm.loop !335

vec.epilog.middle.block244:                       ; preds = %vec.epilog.vector.body239
  %i.bb = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.az) ; 3 uses
  %cmp.n245 = icmp eq i64 %i.aj, %n.vec235
  br i1 %cmp.n245, label %.loopexit88, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check231, %vec.epilog.iter.check233, %vec.epilog.middle.block244
  %indvars.iv135.ph = phi i64 [ %indvars.iv, %iter.check231 ], [ %i.al, %vec.epilog.iter.check233 ], [ %9, %vec.epilog.middle.block244 ]
  %.ph275 = phi i32 [ %.promoted9596, %iter.check231 ], [ %i.aw, %vec.epilog.iter.check233 ], [ %i.bb, %vec.epilog.middle.block244 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.lr.ph ], [ %indvars.iv135.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi i32 [ %i.bf, %.lr.ph ], [ %.ph275, %.lr.ph.preheader ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv135
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !90
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.be) ; 3 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next136, %indvars.iv.next139
  br i1 %i.bg, label %.lr.ph, label %.loopexit88, !llvm.loop !336

bb.g:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !18  ; 8 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !115
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph106, label %.loopexit89

.loopexit87.loopexit:                             ; preds = %.lr.ph99
  %i.bp = trunc nsw i64 %indvars.iv.next142 to i32
  br label %.loopexit87

.loopexit87:                                      ; preds = %.loopexit87.loopexit, %.lr.ph106
  %.promoted100113 = phi i32 [ %i.bz, %.lr.ph106 ], [ %i.dr, %.loopexit87.loopexit ] ; 2 uses
  %.159.lcssa = phi i32 [ %.058105, %.lr.ph106 ], [ %i.bp, %.loopexit87.loopexit ] ; 2 uses
  %i.bq = icmp slt i32 %.159.lcssa, %i.bn
  br i1 %i.bq, label %.lr.ph106, label %.loopexit89, !llvm.loop !337

.lr.ph106:                                        ; preds = %bb.g, %.loopexit87
  %.058105 = phi i32 [ %.159.lcssa, %.loopexit87 ], [ 0, %bb.g ] ; 3 uses
  %.promoted101104 = phi i32 [ %.promoted100113, %.loopexit87 ], [ %.promoted100112116, %bb.g ]
  %i.br = sext i32 %.058105 to i64                ; 8 uses
  %i.bs = getelementptr [4 x i8], ptr %i.bh, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !90
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [48 x i8], ptr %2, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !81 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bs, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !90
  %i.bz = tail call i32 @llvm.smax.i32(i32 %.promoted101104, i32 %i.by) ; 4 uses
  %i.ca = icmp sgt i32 %i.bw, 0
  br i1 %i.ca, label %iter.check, label %.loopexit87

iter.check:                                       ; preds = %.lr.ph106
  %i.cb = mul nuw nsw i32 %i.bw, 3
  %i.cc = add nsw i32 %i.cb, %.058105
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = add nsw i64 %i.br, 3
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cd)
  %i.cf = xor i64 %i.br, -1
  %i.cg = add i64 %smax, %i.cf                    ; 3 uses
  %i.ch = udiv i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.cg, 24
  br i1 %min.iters.check, label %.lr.ph99.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check185 = icmp ult i64 %i.cg, 96
  br i1 %min.iters.check185, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.ci, 31                       ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = select i1 %i.ck, i64 32, i64 %i.cj      ; 2 uses
  %n.vec = sub nsw i64 %i.ci, %i.cl               ; 3 uses
  %i.cm = mul i64 %n.vec, 3
  %i.cn = add i64 %i.cm, %i.br
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cy, %vector.body ]
  %vec.phi186 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cz, %vector.body ]
  %vec.phi187 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi188 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.db, %vector.body ]
  %i.co = mul i64 %index, 3
  %i.cp = add i64 %i.co, %i.br                    ; 4 uses
  %i.cq = getelementptr [4 x i8], ptr %i.bh, i64 %i.cp
  %i.cr = getelementptr [4 x i8], ptr %i.bh, i64 %i.cp
  %i.cs = getelementptr [4 x i8], ptr %i.bh, i64 %i.cp
  %i.ct = getelementptr [4 x i8], ptr %i.bh, i64 %i.cp
  %i.cu = getelementptr i8, ptr %i.cq, i64 8
  %i.cv = getelementptr i8, ptr %i.cr, i64 104
  %i.cw = getelementptr i8, ptr %i.cs, i64 200
  %i.cx = getelementptr i8, ptr %i.ct, i64 296
  %wide.vec = load <24 x i32>, ptr %i.cu, align 4, !tbaa !90
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec189 = load <24 x i32>, ptr %i.cv, align 4, !tbaa !90
  %strided.vec190 = shufflevector <24 x i32> %wide.vec189, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec191 = load <24 x i32>, ptr %i.cw, align 4, !tbaa !90
  %strided.vec192 = shufflevector <24 x i32> %wide.vec191, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec193 = load <24 x i32>, ptr %i.cx, align 4, !tbaa !90
  %strided.vec194 = shufflevector <24 x i32> %wide.vec193, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.cy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %strided.vec) ; 2 uses
  %i.cz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi186, <8 x i32> %strided.vec190) ; 2 uses
  %i.da = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi187, <8 x i32> %strided.vec192) ; 2 uses
  %i.db = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi188, <8 x i32> %strided.vec194) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cy, <8 x i32> %i.cz)
  %rdx.minmax195 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.da)
  %rdx.minmax196 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax195, <8 x i32> %i.db)
  %i.dd = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax196) ; 3 uses
  store i32 %i.dd, ptr %i.c, align 4, !tbaa !90
  %min.epilog.iters.check = icmp samesign ult i64 %i.cl, 9
  br i1 %min.epilog.iters.check, label %.lr.ph99.preheader, label %vec.epilog.ph, !prof !137

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %middle.block
  %vec.epilog.resume.val = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.dd, %middle.block ], [ %i.bz, %vector.main.loop.iter.check ]
  %broadcast.splatinsert199 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat200 = shufflevector <8 x i32> %broadcast.splatinsert199, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.de = and i64 %i.ci, 7                        ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 8, i64 %i.de
  %n.vec197 = sub nsw i64 %i.ci, %i.dg            ; 2 uses
  %i.dh = mul i64 %n.vec197, 3
  %i.di = add i64 %i.dh, %i.br
  %invariant.gep = getelementptr [4 x i8], ptr %i.bh, i64 %i.br
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index200 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next204, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi201 = phi <8 x i32> [ %broadcast.splat200, %vec.epilog.ph ], [ %i.dk, %vec.epilog.vector.body ]
  %.idx = mul i64 %index200, 12
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %i.dj = getelementptr i8, ptr %gep, i64 8
  %wide.vec202 = load <24 x i32>, ptr %i.dj, align 4, !tbaa !90
  %strided.vec203 = shufflevector <24 x i32> %wide.vec202, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.dk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi201, <8 x i32> %strided.vec203) ; 2 uses
  %index.next204 = add nuw i64 %index200, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next204, %n.vec197
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !339

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dm = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.dk) ; 2 uses
  store i32 %i.dm, ptr %i.c, align 4, !tbaa !90
  br label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %iter.check, %middle.block, %vec.epilog.middle.block
  %indvars.iv141.ph = phi i64 [ %i.br, %iter.check ], [ %i.cn, %middle.block ], [ %i.di, %vec.epilog.middle.block ]
  %.ph = phi i32 [ %i.bz, %iter.check ], [ %i.dd, %middle.block ], [ %i.dm, %vec.epilog.middle.block ]
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %.lr.ph99
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph99 ], [ %indvars.iv141.ph, %.lr.ph99.preheader ] ; 2 uses
  %i.dn = phi i32 [ %i.dr, %.lr.ph99 ], [ %.ph, %.lr.ph99.preheader ]
  %i.do = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv141
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !90
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 %i.dq) ; 3 uses
  store i32 %i.dr, ptr %i.c, align 4, !tbaa !90
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 3 ; 3 uses
  %i.ds = icmp slt i64 %indvars.iv.next142, %i.cd
  br i1 %i.ds, label %.lr.ph99, label %.loopexit87.loopexit, !llvm.loop !340

.loopexit89:                                      ; preds = %.loopexit88, %.loopexit87, %bb.f, %bb.g
  %i.dt = phi i32 [ %.promoted100113, %.loopexit87 ], [ %.promoted100112116, %bb.g ], [ %.promoted100112116, %bb.f ], [ %.promoted100109, %.loopexit88 ] ; 3 uses
  %.062.add = add nuw nsw i64 %.062.idx117, 4     ; 2 uses
  %.not = icmp eq i64 %.062.add, 40
  br i1 %.not, label %bb.d, label %bb.e

bb.h:                                             ; preds = %bb.b
  store i32 %4, ptr %i.c, align 4, !tbaa !90
  %i.du = add i32 %5, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.dv = phi i32 [ %i.k, %bb.d ], [ %4, %bb.h ]
  %.pn86 = phi i32 [ %i.dt, %bb.d ], [ %i.du, %bb.h ]
  %.pn = add i32 %.pn86, %i.g
  %storemerge = sdiv i32 %.pn, %i.g               ; 2 uses
  store i32 %storemerge, ptr %i.d, align 4, !tbaa !90
  %i.dw = load ptr, ptr @debug, align 8, !tbaa !350 ; 2 uses
  %.not69 = icmp eq ptr %i.dw, null
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dw, ptr noundef nonnull @.str.70, i32 noundef %4, i32 noundef %i.dv, i32 noundef %storemerge) #12 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.dz = sext i32 %4 to i64                      ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !115 ; 2 uses
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !18 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %i.dz
  br i1 %i.eh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ei = sub nuw nsw i64 %i.dz, %i.eg
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 noundef %i.ei)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.m:                                             ; preds = %bb.k
  %i.ej = icmp ugt i64 %i.eg, %i.dz
  br i1 %i.ej, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.dz ; 2 uses
  %.not.i.i = icmp eq ptr %i.eb, %i.ek
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.ek, ptr %i.ea, align 8, !tbaa !115
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.el = icmp sgt i32 %4, 0
  br i1 %i.el, label %.lr.ph120.preheader, label %._crit_edge

.lr.ph120.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.em = load ptr, ptr %i.dy, align 8, !tbaa !18
  br label %.lr.ph120

._crit_edge:                                      ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.en = load i32, ptr %0, align 8, !tbaa !70
  tail call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.e, i32 %i.en)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @_ZN3gmx13ThreadingInfo15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEENS_8ArrayRefIK9t_iparamsEEiiNS7_IK12ParticleTypeEEb.omp_outlined, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %8, ptr nonnull %6)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ep = load i32, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !22
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !25 ; 2 uses
  %i.eu = shl nsw i32 %i.ep, 1
  %i.ev = load ptr, ptr %i.dy, align 8, !tbaa !18
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.ex = load ptr, ptr %8, align 8, !tbaa !71
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 2872
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %._crit_edge
  %.031.idx3.i = phi i64 [ 0, %._crit_edge ], [ %.031.add.i, %._crit_edge.i ] ; 2 uses
  %.031.ptr.i = getelementptr inbounds nuw i8, ptr @_ZN3gmxL18vSiteFunctionTypesE, i64 %.031.idx3.i
  %i.fa = load i32, ptr %.031.ptr.i, align 4, !tbaa !86 ; 2 uses
  %i.fb = sext i32 %i.fa to i64                   ; 4 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.fb ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !18 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 5 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ff, %i.fd
  br i1 %.not.i.i.i.i, label %_ZN15InteractionList5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.o
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !115
  br label %_ZN15InteractionList5clearEv.exit.i

_ZN15InteractionList5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.o
  %i.fg = phi ptr [ %i.ff, %bb.o ], [ %i.fd, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !18 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !115
  %.not.i.i.i32.i = icmp eq ptr %i.fk, %i.fi
  br i1 %.not.i.i.i32.i, label %_ZN15InteractionList5clearEv.exit34.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i33.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i33.i:  ; preds = %_ZN15InteractionList5clearEv.exit.i
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !115
  br label %_ZN15InteractionList5clearEv.exit34.i

_ZN15InteractionList5clearEv.exit34.i:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i33.i, %_ZN15InteractionList5clearEv.exit.i
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.fb ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !18 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !115
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = lshr exact i64 %i.fr, 2
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN15InteractionList5clearEv.exit34.i
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.fb
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !89
  %i.fy = add nsw i32 %i.fx, 1
  %i.fz = icmp eq i32 %i.fa, 74
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 3 uses
  br label %bb.p

._crit_edge.i:                                    ; preds = %_ZN15InteractionList9push_backEiiPKi.exit.i, %_ZN15InteractionList5clearEv.exit34.i
  %.031.add.i = add nuw nsw i64 %.031.idx3.i, 4   ; 2 uses
  %.not.i = icmp eq i64 %.031.add.i, 40
  br i1 %.not.i, label %_ZN3gmxL24assignVsitesToSingleTaskEPNS_11VsiteThreadEiNS_8ArrayRefIKiEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS6_95EEENS2_IK9t_iparamsEE.exit, label %bb.o

bb.p:                                             ; preds = %_ZN15InteractionList9push_backEiiPKi.exit.i, %.lr.ph.i
  %.pre.i4.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %.pre.i5.i, %_ZN15InteractionList9push_backEiiPKi.exit.i ] ; 6 uses
  %i.gb = phi ptr [ %i.fd, %.lr.ph.i ], [ %i.kf, %_ZN15InteractionList9push_backEiiPKi.exit.i ] ; 9 uses
  %i.gc = phi ptr [ %i.fg, %.lr.ph.i ], [ %i.kg, %_ZN15InteractionList9push_backEiiPKi.exit.i ] ; 7 uses
  %.02.i = phi i32 [ 0, %.lr.ph.i ], [ %i.kh, %_ZN15InteractionList9push_backEiiPKi.exit.i ] ; 2 uses
  %.0301.i = phi i32 [ %i.fy, %.lr.ph.i ], [ %.1.i, %_ZN15InteractionList9push_backEiiPKi.exit.i ]
  %i.gd = sext i32 %.02.i to i64                  ; 3 uses
  br i1 %i.fz, label %bb.q, label %._crit_edge8.i

bb.q:                                             ; preds = %bb.p
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !90
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [48 x i8], ptr %i.ex, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !81
  %i.gj = mul nsw i32 %i.gi, 3
  br label %._crit_edge8.i

._crit_edge8.i:                                   ; preds = %bb.q, %bb.p
  %.1.i = phi i32 [ %i.gj, %bb.q ], [ %.0301.i, %bb.p ] ; 6 uses
  %i.gk = getelementptr [4 x i8], ptr %i.fm, i64 %i.gd ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 4      ; 12 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !90
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !90
  %i.gq = icmp eq i32 %i.gp, %i.eu
  br i1 %i.gq, label %bb.r, label %_ZN15InteractionList9push_backEiiPKi.exit.i

bb.r:                                             ; preds = %._crit_edge8.i
end_hunk_0
