Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rtcore_builder?download=true
inline.NumInlined: 3237
inline.NumDeleted: 617
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 122
begin_hunk_0_@"_ZN6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E15createLargeLeafEmRKNS_5rangeIjEESA_":bb.a
  %i.a = alloca [8 x ptr], align 16               ; 6 uses
  %i.b = alloca [8 x ptr], align 16               ; 6 uses
  %5 = alloca [32 x %struct.RTCBuildPrimitive], align 32 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator.28", align 1 ; 5 uses
  %8 = alloca [8 x %"struct.embree::range.83"], align 16 ; 9 uses
  %9 = alloca [8 x %"struct.std::pair"], align 16 ; 14 uses
  %10 = alloca %"struct.std::pair", align 16      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 48) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #31
          to label %bb.l unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.f) #17
  %i.k = load ptr, ptr %6, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %6, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread73: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.o) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn66 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.j, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @__cxa_free_exception(ptr %i.f) #17
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = load i32, ptr %3, align 4                ; 3 uses
  %i.u = sub i32 %i.s, %i.t                       ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8              ; 4 uses
  %.not = icmp ult i64 %i.x, %i.v
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !50, !align !54 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !323
  %.not.i = icmp eq i32 %i.s, %i.t
  br i1 %.not.i, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !323, !nonnull !50, !align !54
  %i.ab = zext i32 %i.t to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !323, !nonnull !50, !align !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !323, !nonnull !50, !align !54
  %.pre.i = load ptr, ptr %i.ac, align 8, !noalias !323
  %.pre14.i = load ptr, ptr %i.ae, align 8, !noalias !323 ; 3 uses
  %.pre15.i = load ptr, ptr %i.ag, align 8, !noalias !323 ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.ab ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.ah = icmp eq i32 %i.u, 1
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.v, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.010.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bf, %bb.f ] ; 4 uses
  %.sroa.6.09.i = phi <4 x float> [ splat (float -inf), %.lr.ph.i.new ], [ %i.bc, %bb.f ]
  %.sroa.01.08.i = phi <4 x float> [ splat (float +inf), %.lr.ph.i.new ], [ %i.bb, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %.010.i
  %i.ai = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !323
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.pre14.i, i64 %i.ak ; 2 uses
  %i.am = load <4 x float>, ptr %i.al, align 16, !noalias !324
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load <4 x float>, ptr %i.an, align 16, !noalias !325
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.01.08.i, <4 x float> %i.am)
  %i.aq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.09.i, <4 x float> %i.ao)
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.pre15.i, i64 %i.ak
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %.010.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.as, ptr noundef nonnull align 32 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !323
  %i.at = or disjoint i64 %.010.i, 1              ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %gep.i.1, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noalias !323
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.pre14.i, i64 %i.aw ; 2 uses
  %i.ay = load <4 x float>, ptr %i.ax, align 16, !noalias !324
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load <4 x float>, ptr %i.az, align 16, !noalias !325
  %i.bb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ap, <4 x float> %i.ay) ; 3 uses
  %i.bc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aq, <4 x float> %i.ba) ; 3 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %.pre15.i, i64 %i.aw
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.be, ptr noundef nonnull align 32 dereferenceable(32) %i.bd, i64 32, i1 false), !noalias !323
  %i.bf = add nuw nsw i64 %.010.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa", label %bb.f, !llvm.loop !306

"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa": ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa", %.lr.ph.i
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bf, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.6.09.i.epil.init = phi <4 x float> [ splat (float -inf), %.lr.ph.i ], [ %i.bc, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa" ]
  %.sroa.01.08.i.epil.init = phi <4 x float> [ splat (float +inf), %.lr.ph.i ], [ %i.bb, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod115 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %.010.i.epil.init
  %i.bg = getelementptr inbounds nuw i8, ptr %gep.i.epil, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !323
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %.pre14.i, i64 %i.bi ; 2 uses
  %i.bk = load <4 x float>, ptr %i.bj, align 16, !noalias !324
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !noalias !325
  %i.bn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.01.08.i.epil.init, <4 x float> %i.bk)
  %i.bo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.09.i.epil.init, <4 x float> %i.bm)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.pre15.i, i64 %i.bi
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %.010.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.bq, ptr noundef nonnull align 32 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !323
  br label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit"

"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit": ; preds = %.epil.preheader, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa", %bb.e
  %.sroa.01.0.lcssa.i = phi <4 x float> [ splat (float +inf), %bb.e ], [ %i.bb, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa" ], [ %i.bn, %.epil.preheader ]
  %.sroa.6.0.lcssa.i = phi <4 x float> [ splat (float -inf), %bb.e ], [ %i.bc, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit.loopexit.unr-lcssa" ], [ %i.bo, %.epil.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !323, !nonnull !50, !align !54
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !323
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !323, !nonnull !50, !align !54
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !323
  %i.bx = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %5, i64 noundef %i.v, ptr noundef %i.bw), !noalias !323, !inline_history !307
  store ptr %i.bx, ptr %0, align 16, !alias.scope !326
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.01.0.lcssa.i, ptr %i.by, align 16, !alias.scope !326
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.6.0.lcssa.i, ptr %i.bz, align 16, !alias.scope !326
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !323
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ca = load i64, ptr %3, align 4
  store i64 %i.ca, ptr %8, align 16
  %i.cb = load i64, ptr %1, align 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 2) ; 2 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %indvar = phi i64 [ 0, %bb.g ], [ %indvar.next, %bb.h ] ; 2 uses
  %.038 = phi i64 [ 1, %bb.g ], [ %i.dk, %bb.h ]  ; 6 uses
  %xtraiter116 = and i64 %.038, 1
  %i.cc = icmp eq i64 %indvar, 0
  br i1 %i.cc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter120 = and i64 %.038, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.03487.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.da, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03586.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %.03685.epil.init = phi i64 [ -1, %.lr.ph.preheader ], [ %.137.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod119 = trunc i64 %.038 to i1
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.03487.epil.init ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = load i32, ptr %i.cd, align 8
  %i.ch = sub i32 %i.cf, %i.cg
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %.not50.epil = icmp ult i64 %i.x, %i.ci
  %i.cj = icmp samesign ult i64 %.03586.epil.init, %i.ci
  %or.cond.epil = select i1 %.not50.epil, i1 %i.cj, i1 false
  %.137.epil = select i1 %or.cond.epil, i64 %.03487.epil.init, i64 %.03685.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.137.lcssa = phi i64 [ %.137.1, %._crit_edge.unr-lcssa ], [ %.137.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ck = icmp eq i64 %.137.lcssa, -1
  br i1 %i.ck, label %.lr.ph89, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03487 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.da, %.lr.ph ] ; 4 uses
  %.03586 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %.03685 = phi i64 [ -1, %.lr.ph.preheader.new ], [ %.137.1, %.lr.ph ]
  %niter121 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter121.next.1, %.lr.ph ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.03487 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = load i32, ptr %i.cl, align 16
  %i.cp = sub i32 %i.cn, %i.co
  %i.cq = zext i32 %i.cp to i64                   ; 3 uses
  %.not50 = icmp ult i64 %i.x, %i.cq
  %i.cr = icmp samesign ult i64 %.03586, %i.cq
  %or.cond = select i1 %.not50, i1 %i.cr, i1 false ; 2 uses
  %.137 = select i1 %or.cond, i64 %.03487, i64 %.03685
  %.1 = select i1 %or.cond, i64 %i.cq, i64 %.03586 ; 2 uses
  %i.cs = or disjoint i64 %.03487, 1              ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = load i32, ptr %i.ct, align 8
  %i.cx = sub i32 %i.cv, %i.cw
  %i.cy = zext i32 %i.cx to i64                   ; 3 uses
  %.not50.1 = icmp ult i64 %i.x, %i.cy
  %i.cz = icmp samesign ult i64 %.1, %i.cy
  %or.cond.1 = select i1 %.not50.1, i1 %i.cz, i1 false ; 2 uses
  %.137.1 = select i1 %or.cond.1, i64 %i.cs, i64 %.137 ; 3 uses
  %.1.1 = select i1 %or.cond.1, i64 %i.cy, i64 %.1 ; 2 uses
  %i.da = add nuw nsw i64 %.03487, 2              ; 2 uses
  %niter121.next.1 = add i64 %niter121, 2         ; 2 uses
  %niter121.ncmp.1 = icmp eq i64 %niter121.next.1, %unroll_iter120
  br i1 %niter121.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !310

bb.h:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.137.lcssa ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !noalias !327 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !noalias !327 ; 2 uses
  %i.df = add i32 %i.de, %i.dc
  %i.dg = lshr i32 %i.df, 1
  %.sroa.0.0.insert.ext = zext i32 %i.dc to i64
  %.sroa.0.4.insert.ext = zext nneg i32 %i.dg to i64 ; 2 uses
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.5.12.insert.ext = zext i32 %i.de to i64
  %.sroa.5.12.insert.shift = shl nuw i64 %.sroa.5.12.insert.ext, 32
  %.sroa.5.12.insert.insert = or disjoint i64 %.sroa.5.12.insert.shift, %.sroa.0.4.insert.ext
  %i.dh = getelementptr [8 x i8], ptr %8, i64 %.038 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -8     ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8
  store i64 %i.dj, ptr %i.db, align 8
  store i64 %.sroa.0.4.insert.insert, ptr %i.di, align 8
  store i64 %.sroa.5.12.insert.insert, ptr %i.dh, align 8
  %i.dk = add nuw i64 %.038, 1                    ; 2 uses
  %exitcond96.not = icmp eq i64 %i.dk, %umax
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond96.not, label %.lr.ph89, label %.lr.ph.preheader, !llvm.loop !313

.lr.ph89:                                         ; preds = %bb.h, %._crit_edge
  %.13979 = phi i64 [ %umax, %bb.h ], [ %.038, %._crit_edge ] ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !50, !align !54 ; 2 uses
  %.val53 = load ptr, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %.val54 = load ptr, ptr %i.dn, align 8
  %.val53.val = load ptr, ptr %.val53, align 8
  %.val54.val = load ptr, ptr %.val54, align 8
  %i.do = trunc i64 %.13979 to i32                ; 3 uses
  %i.dp = call noundef ptr %.val53.val(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.do, ptr noundef %.val54.val), !inline_history !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr null, ptr %9, align 16
  %.ptr48.1 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr null, ptr %.ptr48.1, align 16
  %.ptr48.2 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store ptr null, ptr %.ptr48.2, align 16
  %.ptr48.3 = getelementptr inbounds nuw i8, ptr %9, i64 144
  store ptr null, ptr %.ptr48.3, align 16
  %.ptr48.4 = getelementptr inbounds nuw i8, ptr %9, i64 192
  store ptr null, ptr %.ptr48.4, align 16
  %.ptr48.5 = getelementptr inbounds nuw i8, ptr %9, i64 240
  store ptr null, ptr %.ptr48.5, align 16
  %.ptr48.6 = getelementptr inbounds nuw i8, ptr %9, i64 288
  store ptr null, ptr %.ptr48.6, align 16
  %.ptr48.7 = getelementptr inbounds nuw i8, ptr %9, i64 336
  store ptr null, ptr %.ptr48.7, align 16
  %i.dq = add i64 %2, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 32
  br label %bb.i

.lr.ph.i56.preheader:                             ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !50, !align !54 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !328
  %xtraiter122 = and i64 %.13979, 1
  %i.dv = icmp eq i64 %.13979, 1
  br i1 %i.dv, label %.lr.ph.i56.epil.preheader, label %.lr.ph.i56.preheader.new

.lr.ph.i56.preheader.new:                         ; preds = %.lr.ph.i56.preheader
  %unroll_iter127 = and i64 %.13979, -2
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56, %.lr.ph.i56.preheader.new
  %.022.i = phi i64 [ 0, %.lr.ph.i56.preheader.new ], [ %i.er, %.lr.ph.i56 ] ; 5 uses
  %.sroa.0.021.i = phi <4 x float> [ splat (float +inf), %.lr.ph.i56.preheader.new ], [ %i.ek, %.lr.ph.i56 ]
  %.sroa.6.020.i = phi <4 x float> [ splat (float -inf), %.lr.ph.i56.preheader.new ], [ %i.en, %.lr.ph.i56 ]
  %niter128 = phi i64 [ 0, %.lr.ph.i56.preheader.new ], [ %niter128.next.1, %.lr.ph.i56 ]
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %9, i64 %.022.i ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !noalias !329
  %i.dz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.021.i, <4 x float> %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.eb = load <4 x float>, ptr %i.ea, align 16, !noalias !330
  %i.ec = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.020.i, <4 x float> %i.eb)
  %i.ed = load ptr, ptr %i.dw, align 16, !noalias !328
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.022.i
  store ptr %i.ed, ptr %i.ee, align 16, !noalias !328
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.022.i
  store ptr %i.dx, ptr %i.ef, align 16, !noalias !328
  %i.eg = or disjoint i64 %.022.i, 1              ; 3 uses
  %i.eh = getelementptr inbounds nuw [48 x i8], ptr %9, i64 %i.eg ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !noalias !329
  %i.ek = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dz, <4 x float> %i.ej) ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.em = load <4 x float>, ptr %i.el, align 16, !noalias !330
  %i.en = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ec, <4 x float> %i.em) ; 3 uses
  %i.eo = load ptr, ptr %i.eh, align 16, !noalias !328
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eg
  store ptr %i.eo, ptr %i.ep, align 8, !noalias !328
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eg
  store ptr %i.ei, ptr %i.eq, align 8, !noalias !328
  %i.er = add nuw nsw i64 %.022.i, 2              ; 2 uses
  %niter128.next.1 = add nuw i64 %niter128, 2     ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa", label %.lr.ph.i56, !llvm.loop !6

"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa": ; preds = %.lr.ph.i56
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit", label %.lr.ph.i56.epil.preheader

.lr.ph.i56.epil.preheader:                        ; preds = %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa", %.lr.ph.i56.preheader
  %.022.i.epil.init = phi i64 [ 0, %.lr.ph.i56.preheader ], [ %i.er, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa" ] ; 3 uses
  %.sroa.0.021.i.epil.init = phi <4 x float> [ splat (float +inf), %.lr.ph.i56.preheader ], [ %i.ek, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa" ]
  %.sroa.6.020.i.epil.init = phi <4 x float> [ splat (float -inf), %.lr.ph.i56.preheader ], [ %i.en, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa" ]
  %lcmp.mod126 = trunc i64 %.13979 to i1
  call void @llvm.assume(i1 %lcmp.mod126)
  %i.es = getelementptr inbounds nuw [48 x i8], ptr %9, i64 %.022.i.epil.init ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.eu = load <4 x float>, ptr %i.et, align 16, !noalias !329
  %i.ev = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.021.i.epil.init, <4 x float> %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.ex = load <4 x float>, ptr %i.ew, align 16, !noalias !330
  %i.ey = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.020.i.epil.init, <4 x float> %i.ex)
  %i.ez = load ptr, ptr %i.es, align 16, !noalias !328
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.022.i.epil.init
  store ptr %i.ez, ptr %i.fa, align 8, !noalias !328
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.022.i.epil.init
  store ptr %i.et, ptr %i.fb, align 8, !noalias !328
  br label %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit"

"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit": ; preds = %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa", %.lr.ph.i56.epil.preheader
  %.lcssa110 = phi <4 x float> [ %i.ek, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa" ], [ %i.ev, %.lr.ph.i56.epil.preheader ]
  %.lcssa = phi <4 x float> [ %i.en, %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit.unr-lcssa" ], [ %i.ey, %.lr.ph.i56.epil.preheader ]
  %i.fc = load ptr, ptr %i.du, align 8, !noalias !328, !nonnull !50, !align !54
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !328
  %i.fe = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !328, !nonnull !50, !align !54
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !328
  call void %i.fd(ptr noundef %i.dp, ptr noundef nonnull %i.b, i32 noundef %i.do, ptr noundef %i.fg), !noalias !328, !inline_history !7
  %i.fh = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !328, !nonnull !50, !align !54
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !328
  %i.fk = load ptr, ptr %i.fe, align 8, !noalias !328, !nonnull !50, !align !54
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !328
  call void %i.fj(ptr noundef %i.dp, ptr noundef nonnull %i.a, i32 noundef %i.do, ptr noundef %i.fl), !noalias !328, !inline_history !7
  store ptr %i.dp, ptr %0, align 16, !alias.scope !331
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa110, ptr %i.fm, align 16, !alias.scope !331
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.lcssa, ptr %i.fn, align 16, !alias.scope !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph89, %bb.i
  %.088 = phi i64 [ 0, %.lr.ph89 ], [ %i.fv, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.088
  call fastcc void @"_ZN6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E15createLargeLeafEmRKNS_5rangeIjEESA_"(ptr dead_on_unwind noalias writable align 16 %10, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(8) %i.fo, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4)
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %9, i64 %.088 ; 3 uses
  %i.fq = load ptr, ptr %10, align 16
  store ptr %i.fq, ptr %i.fp, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fs = load <4 x float>, ptr %i.dr, align 16
  store <4 x float> %i.fs, ptr %i.fr, align 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fu = load <4 x float>, ptr %i.ds, align 16
  store <4 x float> %i.fu, ptr %i.ft, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.fv = add nuw i64 %.088, 1                    ; 2 uses
  %exitcond96.not.a = icmp eq i64 %i.fv, %.13979
  br i1 %exitcond96.not.a, label %.lr.ph.i56.preheader, label %bb.i, !llvm.loop !322

bb.j:                                             ; preds = %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_4clEPvPKSt4pairIS5_NS_4BBoxINS_6Vec3faEEEEm.exit", %"_ZZN6embree4sse217rtcBuildBVHMortonEPK17RTCBuildArgumentsENK3$_5clERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE.exit"
  ret void

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn65 = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread73 ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn65

bb.l:                                             ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree8MutexSysD1Ev(ptr noundef nonnull align 64 dead_on_return(8) dereferenceable(192) %i.a) #17
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #32
  unreachable

_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @"_ZNK6embree4sse216BVHBuilderMorton8BuilderTISt4pairIPvNS_4BBoxINS_6Vec3faEEEENS_13FastAllocator15CachedAllocatorEZNS0_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS0_17rtcBuildBVHMortonESD_E3$_3ZNS0_17rtcBuildBVHMortonESD_E3$_4ZNS0_17rtcBuildBVHMortonESD_E3$_5ZNS0_17rtcBuildBVHMortonESD_E3$_6ZNS0_17rtcBuildBVHMortonESD_E3$_7E19recreateMortonCodesERKNS_5rangeIjEE"(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %4 = alloca %class.anon.111, align 8            ; 4 uses
  %5 = alloca %"struct.embree::BBox", align 16    ; 5 uses
  %6 = alloca %"struct.embree::sse2::BVHBuilderMorton::MortonCodeMapping", align 16 ; 5 uses
  %7 = alloca %class.anon.112, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 10 uses
  %i.c = load i32, ptr %1, align 4                ; 10 uses
  %i.d = sub i32 %i.b, %i.c                       ; 2 uses
  %i.e = icmp ult i32 %i.d, 1024
  br i1 %i.e, label %bb.b, label %bb.e, !prof !51
end_hunk_0
