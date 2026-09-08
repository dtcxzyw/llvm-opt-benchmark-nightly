Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mesh_compare?download=true
inline.NumInlined: 484
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm3EESaISB_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call fastcc void @_ZL16canonicalizeMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !13     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not9.i.i.i.i.i, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.noexc
  %.011.i.i.i.i.i = phi ptr [ %i.p, %.noexc ], [ %i.i, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.o, %.noexc ], [ %i.c, %bb.b ] ; 2 uses
  %i.n = invoke noundef zeroext i1 @_ZSteqIN5video9S3DVertexELm3EEbRKSt5arrayIT_XT0_EES6_(ptr noundef nonnull align 4 dereferenceable(120) %.0810.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(120) %.011.i.i.i.i.i)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 120
  %.not.i.i.i.i.i = icmp ne ptr %i.o, %i.b
  %or.cond.not = select i1 %i.n, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, !llvm.loop !42

_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit: ; preds = %.noexc, %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %.noexc ]
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.u) #16
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit: ; preds = %_ZSteqISt5arrayIN5video9S3DVertexELm3EESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %i.q

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i4 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #16
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit5

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit5: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16canonicalizeMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [3 x %"struct.video::S3DVertex"], align 4 ; 7 uses
  %3 = alloca %"struct.std::array.25", align 4    ; 5 uses
  %4 = alloca %"struct.std::array.25", align 8    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !noalias !48
  %i.c = load ptr, ptr %2, align 8, !tbaa !52, !noalias !48
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 1
  %i.h = trunc i64 %i.g to i32                    ; 5 uses
  %i.i = sdiv i32 %i.h, 3                         ; 4 uses
  %i.j = srem i32 %i.h, 3
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #15, !noalias !48 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d, !noalias !48

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #17, !noalias !48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #15, !noalias !48
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.m = sext i32 %i.i to i64                     ; 4 uses
  %i.n = icmp slt i32 %i.h, -2
  br i1 %i.n, label %.noexc.i, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17, !noalias !48
  unreachable

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.e
  %i.o = icmp slt i32 %i.h, 3
  br i1 %i.o, label %_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE.exit.thread, label %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.p = mul nuw nsw i64 %i.m, 120                ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #18, !noalias !48 ; 14 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !13, !alias.scope !48
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !15, !alias.scope !48
  %.off = add nsw i32 %i.h, -3
  %i.t = icmp ult i32 %.off, 3
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new

_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new: ; preds = %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i
  %unroll_iter = and i64 %i.m, 1073741822
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new
  %.013.i.i.i.i.i.i.idx = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new ], [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %.013.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.q, i64 %.013.i.i.i.i.i.i.idx ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr, i8 0, i64 120, i1 false), !noalias !48
  store i32 -1, ptr %i.u, align 4, !tbaa !17, !noalias !48
  %.ptr.1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.v, align 4, !tbaa !17, !noalias !48
  %.ptr.2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.w, align 4, !tbaa !17, !noalias !48
  %.013.i.i.i.i.i.i.add = add nuw nsw i64 %.013.i.i.i.i.i.i.idx, 120 ; 2 uses
  %.013.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.013.i.i.i.i.i.i.add ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr.1, i8 0, i64 120, i1 false), !noalias !48
  store i32 -1, ptr %i.x, align 4, !tbaa !17, !noalias !48
  %.ptr.1.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i.1, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.y, align 4, !tbaa !17, !noalias !48
  %.ptr.2.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.1, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i.1, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.z, align 4, !tbaa !17, !noalias !48
  %.013.i.i.i.i.i.i.add.1 = add nuw nsw i64 %.013.i.i.i.i.i.i.idx, 240 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !45

_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE.exit.thread: ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !48
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.unr-lcssa:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = and i32 %i.i, 1
  %lcmp.mod.not = icmp eq i32 %i.aa, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %.lr.ph.i.unr-lcssa, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i
  %.013.i.i.i.i.i.i.idx.epil.init = phi i64 [ 0, %_ZNSt12_Vector_baseISt5arrayIN5video9S3DVertexELm3EESaIS3_EEC2EmRKS4_.exit.i.i ], [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.unr-lcssa ] ; 3 uses
  %lcmp.mod52 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %.013.i.i.i.i.i.i.ptr.epil = getelementptr inbounds nuw i8, ptr %i.q, i64 %.013.i.i.i.i.i.i.idx.epil.init ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.013.i.i.i.i.i.i.ptr.epil, i8 0, i64 120, i1 false), !noalias !48
  store i32 -1, ptr %i.ab, align 4, !tbaa !17, !noalias !48
  %.ptr.1.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i.i.i.i.i.i.i.i.epil, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.ac, align 4, !tbaa !17, !noalias !48
  %.ptr.2.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.ptr.epil, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i.i.i.i.i.i.i.i.epil, i8 0, i64 24, i1 false), !noalias !48
  store i32 -1, ptr %i.ad, align 4, !tbaa !17, !noalias !48
  %.013.i.i.i.i.i.i.add.epil = add nuw nsw i64 %.013.i.i.i.i.i.i.idx.epil.init, 120
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.i.idx.lcssa = phi i64 [ %.013.i.i.i.i.i.i.add, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.idx.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.013.i.i.i.i.i.i.ptr.lcssa = phi ptr [ %.013.i.i.i.i.i.i.ptr.1, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.ptr.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.013.i.i.i.i.i.i.add.lcssa = phi i64 [ %.013.i.i.i.i.i.i.add.1, %.lr.ph.i.unr-lcssa ], [ %.013.i.i.i.i.i.i.add.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.ptr.lcssa = getelementptr inbounds nuw i8, ptr %i.q, i64 %.013.i.i.i.i.i.i.add.lcssa ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ptr.lcssa, ptr %i.ae, align 8, !tbaa !12, !alias.scope !48
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %.sroa.0.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 80
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !51, !noalias !48
  %i.ah = load ptr, ptr %2, align 8, !tbaa !52, !noalias !48 ; 4 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 1                 ; 6 uses
  %i.am = udiv exact i64 %.013.i.i.i.i.i.i.add.lcssa, 120 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.an = mul nuw nsw i64 %indvars.iv.i, 3        ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.al, %i.an
  br i1 %.not.i.i.i, label %bb.g, label %.invoke.i

.invoke.i:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ao = phi i64 [ %i.bi, %bb.k ], [ %i.an, %bb.f ], [ %i.as, %bb.g ], [ %i.ba, %bb.h ], [ %i.bd, %bb.i ], [ %i.bf, %bb.j ], [ %i.am, %bb.l ]
  %i.ap = phi i64 [ %i.ay, %bb.k ], [ %i.al, %bb.f ], [ %i.ay, %bb.g ], [ %i.al, %bb.h ], [ %i.ay, %bb.i ], [ %i.al, %bb.j ], [ %i.am, %bb.l ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef %i.ao, i64 noundef %i.ap) #17
          to label %.cont.i unwind label %bb.n, !noalias !48

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.an
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !19, !noalias !48
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !55, !noalias !48
  %i.au = load ptr, ptr %1, align 8, !tbaa !56, !noalias !48 ; 4 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 40                ; 6 uses
  %.not.i.i24.i = icmp ugt i64 %i.ay, %i.as
  br i1 %.not.i.i24.i, label %bb.h, label %.invoke.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(38) %i.az, i64 38, i1 false), !tbaa.struct !23, !noalias !48
  %i.ba = add nuw nsw i64 %i.an, 1                ; 3 uses
  %.not.i.i26.i = icmp ugt i64 %i.al, %i.ba
  br i1 %.not.i.i26.i, label %bb.i, label %.invoke.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !19, !noalias !48
  %i.bd = zext i16 %i.bc to i64                   ; 3 uses
  %.not.i.i29.i = icmp ugt i64 %i.ay, %i.bd
  br i1 %.not.i.i29.i, label %bb.j, label %.invoke.i

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.sroa.0.40..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(38) %i.be, i64 38, i1 false), !tbaa.struct !23, !noalias !48
  %i.bf = add nuw nsw i64 %i.an, 2                ; 3 uses
  %.not.i.i32.i = icmp ugt i64 %i.al, %i.bf
  br i1 %.not.i.i32.i, label %bb.k, label %.invoke.i

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !19, !noalias !48
  %i.bi = zext i16 %i.bh to i64                   ; 3 uses
  %.not.i.i35.i = icmp ugt i64 %i.ay, %i.bi
  br i1 %.not.i.i35.i, label %bb.l, label %.invoke.i

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.sroa.0.80..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(38) %i.bj, i64 38, i1 false), !tbaa.struct !23, !noalias !48
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.am
  br i1 %exitcond.not, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.bk, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.0.i, i64 120, i1 false), !tbaa.struct !25, !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.f, !llvm.loop !46

bb.n:                                             ; preds = %.invoke.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #16, !noalias !48
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.d, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %i.l, %bb.d ], [ %.pn, %bb.s ]
  resume { ptr, i32 } %common.resume.op

._crit_edge:                                      ; preds = %bb.q
  %i.bm = udiv exact i64 %.013.i.i.i.i.i.i.add.lcssa, 120
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = xor i64 %i.bo, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %i.q, ptr nonnull %.ptr.lcssa, i64 noundef %i.bp)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge
  %i.bq = icmp samesign ugt i64 %.013.i.i.i.i.i.i.idx.lcssa, 1800
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 1920 ; 2 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr nonnull %i.q, ptr nonnull %i.br)
          to label %.lr.ph.i.i.i.i unwind label %.loopexit.split-lp

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.noexc12
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.bs, %.noexc12 ], [ %i.br, %bb.o ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %.ptr.lcssa
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !47

bb.p:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr nonnull %i.q, ptr nonnull %.ptr.lcssa)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.m, %bb.q
  %.sroa.015.019 = phi ptr [ %i.bt, %bb.q ], [ %i.q, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(120) %.sroa.015.019, i64 120, i1 false), !tbaa.struct !25
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %.sroa.015.019, ptr noundef nonnull align 4 dereferenceable(120) %3, i64 120, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 120
  %.not = icmp eq ptr %.sroa.015.019, %.013.i.i.i.i.i.i.ptr.lcssa
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.s

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.o, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIN5video9S3DVertexELm3EESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.noexc12, %_ZL10expandMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE.exit.thread, %bb.p
  ret void

bb.s:                                             ; preds = %bb.r, %.loopexit.split-lp, %.loopexit
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.idx = mul nuw nsw i64 %i.m, 120
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %.idx) #16
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::map", align 8          ; 12 uses
  %4 = alloca %"struct.std::pair.23", align 4     ; 6 uses
  %5 = alloca %"struct.std::array.25", align 4    ; 5 uses
  %6 = alloca %"struct.std::array.25", align 8    ; 4 uses
  %7 = alloca %"struct.std::pair.23", align 4     ; 6 uses
  %8 = alloca %"struct.std::array.25", align 4    ; 5 uses
  %9 = alloca %"struct.std::array.25", align 8    ; 4 uses
  %10 = alloca %"struct.std::pair.23", align 4    ; 6 uses
  %11 = alloca %"struct.std::array.25", align 4   ; 5 uses
  %12 = alloca %"struct.std::array.25", align 8   ; 4 uses
  %13 = alloca %"struct.std::pair.23", align 4    ; 6 uses
  %14 = alloca %"struct.std::array.25", align 4   ; 5 uses
  %15 = alloca %"struct.std::array.25", align 8   ; 4 uses
  %16 = alloca %"class.std::vector", align 8      ; 10 uses
  %17 = alloca %"struct.std::array.26", align 16  ; 5 uses
  %18 = alloca %"struct.std::array.26", align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 160                 ; 6 uses
  %i.h = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %.noexc96

.noexc96:                                         ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 4
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #18 ; 11 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc96
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i.i
  %i.p = add nuw nsw i64 %i.g, 1152921504606846974
  %i.q = and i64 %i.p, 1152921504606846975
  %i.r = add nuw nsw i64 %i.g, 3
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.n, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !57

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.b
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.n, %bb.b ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.t = icmp samesign ult i64 %i.q, 3
  br i1 %i.t, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !66
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !58

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc96, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.12.0 = phi ptr [ null, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.k, %.noexc96 ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0150.0 = phi ptr [ null, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.j, %.noexc96 ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.y, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr null, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.ae = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %.not185 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not185, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 120
  br label %bb.c

._crit_edge:                                      ; preds = %bb.k, %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEC2EmRKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  invoke fastcc void @_ZL16canonicalizeMeshRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.x unwind label %bb.y

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.ar = phi ptr [ %i.ae, %.lr.ph ], [ %i.ba, %bb.k ]
  %i.as = phi i64 [ 0, %.lr.ph ], [ %i.ay, %bb.k ] ; 5 uses
  %.066176 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.k ]
  %i.at = getelementptr inbounds nuw [160 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %6, ptr noundef nonnull align 4 dereferenceable(38) %i.at, i64 38, i1 false), !tbaa.struct !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.af, ptr noundef nonnull align 4 dereferenceable(38) %i.au, i64 38, i1 false), !tbaa.struct !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.ag, ptr noundef nonnull align 4 dereferenceable(38) %i.av, i64 38, i1 false), !tbaa.struct !23
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %5, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %6)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, ptr noundef nonnull readonly align 4 dereferenceable(120) %5, i64 120, i1 false), !tbaa.struct !25
  store i64 %i.as, ptr %i.ah, align 4
  invoke fastcc void @_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE6insertEOSN_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(128) %4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %9, ptr noundef nonnull align 4 dereferenceable(38) %i.at, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.ai, ptr noundef nonnull align 4 dereferenceable(38) %i.av, i64 38, i1 false), !tbaa.struct !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 120 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.aj, ptr noundef nonnull align 4 dereferenceable(38) %i.aw, i64 38, i1 false), !tbaa.struct !23
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %8, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %9)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %.sroa.0145.0.insert.insert = or disjoint i64 %i.as, 4294967296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %7, ptr noundef nonnull readonly align 4 dereferenceable(120) %8, i64 120, i1 false), !tbaa.struct !25
  store i64 %.sroa.0145.0.insert.insert, ptr %i.ak, align 4
  invoke fastcc void @_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE6insertEOSN_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(128) %7)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %12, ptr noundef nonnull align 4 dereferenceable(38) %i.at, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.al, ptr noundef nonnull align 4 dereferenceable(38) %i.au, i64 38, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.am, ptr noundef nonnull align 4 dereferenceable(38) %i.aw, i64 38, i1 false), !tbaa.struct !23
  invoke fastcc void @_ZL12sortTriangleSt5arrayIN5video9S3DVertexELm3EE(ptr dead_on_unwind noalias writable align 4 %11, ptr noundef nonnull byval(%"struct.std::array.25") align 8 %12)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %.sroa.0143.0.insert.insert = or disjoint i64 %i.as, 8589934592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %10, ptr noundef nonnull readonly align 4 dereferenceable(120) %11, i64 120, i1 false), !tbaa.struct !25
  store i64 %.sroa.0143.0.insert.insert, ptr %i.an, align 4
  invoke fastcc void @_ZNSt3mapISt5arrayIN5video9S3DVertexELm3EEZ14checkMeshEqualRKSt6vectorIS2_SaIS2_EERKS4_ItSaItEERKS4_IS0_IS2_Lm4EESaISD_EEE7QuadRefSt4lessIS3_ESaISt4pairIKS3_SI_EEE6insertEOSN_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(128) %10)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
end_hunk_0
