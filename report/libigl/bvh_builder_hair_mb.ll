Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseERNS1_11BuildRecordEST_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #11
  br label %common.resume

bb.gd:                                            ; preds = %_ZN6embree4sse215LocalChildListTINS0_21BVHBuilderHairMSMBlur11BuildRecordELi8EED2Ev.exit214, %_ZNK6embree5SetMB19deterministic_orderEv.exit
  ret void
}

; Function Attrs: nounwind
declare void @llvm.x86.sse2.mfence() #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp samesign eq i64 %i.b, %i.d
  br i1 %.not.i.i, label %_ZSt4sortIPN6embree9PrimRefMBEEvT_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 80                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %.idx3 = mul nuw nsw i64 %i.b, 80               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx3 ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx3
  %i.k = sdiv exact i64 %gepdiff, 80
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIPN6embree9PrimRefMBElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.j, ptr noundef %i.i, i64 noundef %i.n)
  tail call void @_ZSt22__final_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.j, ptr noundef %i.i)
  br label %_ZSt4sortIPN6embree9PrimRefMBEEvT_S3_.exit

_ZSt4sortIPN6embree9PrimRefMBEEvT_S3_.exit:       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERNS1_11BuildRecordEST_(ptr dead_on_unwind noalias writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(176) %2, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.embree::BBox.29", align 8  ; 4 uses
  %5 = alloca %"struct.embree::LBBox", align 16   ; 7 uses
  %6 = alloca %"struct.embree::range", align 8    ; 5 uses
  %7 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %9 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %10 = alloca %"class.embree::Lock", align 8     ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %11 = alloca %class.anon.239, align 8           ; 6 uses
  %12 = alloca %"struct.embree::LBBox", align 16  ; 7 uses
  %13 = alloca %class.anon.240, align 1           ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::allocator.22", align 1 ; 5 uses
  %16 = alloca %"struct.embree::sse2::LocalChildListT", align 16 ; 31 uses
  %17 = alloca [8 x %"struct.embree::BVHNodeRecordMB4D"], align 16 ; 6 uses
  %18 = alloca %"struct.embree::sse2::BVHBuilderHairMSMBlur::BuildRecord", align 16 ; 19 uses
  %19 = alloca %"struct.embree::sse2::BVHBuilderHairMSMBlur::BuildRecord", align 16 ; 19 uses
  %20 = alloca %"struct.embree::BVHNodeRecordMB4D", align 16 ; 10 uses
  %21 = alloca %"struct.embree::LBBox", align 16  ; 13 uses
  %i.e = load i64, ptr %2, align 16               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 48) #11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #28
          to label %bb.dc unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.i) #11
  %i.n = load ptr, ptr %14, align 8               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %14, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread471: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.db

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.r) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.db

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn104464 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.m, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @__cxa_free_exception(ptr %i.i) #11
  br label %bb.db

bb.d:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %i.e, 1
  br i1 %i.u, label %bb.e, label %._crit_edge604

._crit_edge604:                                   ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert605 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.pre606 = load i64, ptr %.phi.trans.insert605, align 16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.x = load i64, ptr %i.w, align 8              ; 8 uses
  %i.y = load i64, ptr %i.v, align 16             ; 8 uses
  %.not91 = icmp eq i64 %i.x, %i.y
  br i1 %.not91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.038.0.copyload = load float, ptr %i.z, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 156
  %.sroa.439.0.copyload = load float, ptr %.sroa.439.0..sroa_idx, align 4
  %i.aa = icmp ult i64 %i.y, %i.x
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ac = load ptr, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = sub nuw i64 %i.x, %i.y
  %.neg = add i64 %i.y, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %i.y ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load float, ptr %i.ah, align 4          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.ak = load float, ptr %i.aj, align 4          ; 2 uses
  %i.al = fcmp ogt float %i.ak, -inf
  %i.am = select i1 %i.al, float %i.ak, float -inf ; 2 uses
  %i.an = add nuw i64 %i.y, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa832.unr.a = phi float [ poison, %.lr.ph ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.lcssa831.unr = phi float [ poison, %.lr.ph ], [ %i.am, %.prol.loopexit.unr-lcssa ]
  %.087522.unr = phi i64 [ %i.y, %.lr.ph ], [ %i.an, %.prol.loopexit.unr-lcssa ]
  %.sroa.0288.0521.unr = phi float [ +inf, %.lr.ph ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.sroa.6.0520.unr = phi float [ -inf, %.lr.ph ], [ %i.am, %.prol.loopexit.unr-lcssa ]
  %i.ao = icmp eq i64 %i.x, %.neg
  br i1 %i.ao, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.sroa.6.0.lcssa = phi float [ -inf, %bb.f ], [ %.lcssa831.unr, %.prol.loopexit ], [ %i.bj, %.lr.ph.new ]
  %.sroa.0288.0.lcssa = phi float [ +inf, %bb.f ], [ %.lcssa832.unr.a, %.prol.loopexit ], [ %i.bf, %.lr.ph.new ]
  %i.ap = fcmp ogt float %.sroa.0288.0.lcssa, %.sroa.038.0.copyload
  %i.aq = fcmp olt float %.sroa.6.0.lcssa, %.sroa.439.0.copyload
  %i.ar = select i1 %i.ap, i1 true, i1 %i.aq
  %22 = zext i1 %i.ar to i8
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.087522 = phi i64 [ %i.bk, %.lr.ph.new ], [ %.087522.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.0288.0521 = phi float [ %i.bf, %.lr.ph.new ], [ %.sroa.0288.0521.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.6.0520 = phi float [ %i.bj, %.lr.ph.new ], [ %.sroa.6.0520.unr, %.prol.loopexit ] ; 2 uses
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %.087522 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load float, ptr %i.at, align 4          ; 2 uses
  %i.av = fcmp olt float %.sroa.0288.0521, %i.au
  %i.aw = select i1 %i.av, float %.sroa.0288.0521, float %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 68
  %i.ay = load float, ptr %i.ax, align 4          ; 2 uses
  %i.az = fcmp olt float %.sroa.6.0520, %i.ay
  %i.ba = select i1 %i.az, float %i.ay, float %.sroa.6.0520 ; 2 uses
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %.087522 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load float, ptr %i.bc, align 4          ; 2 uses
  %i.be = fcmp olt float %i.aw, %i.bd
  %i.bf = select i1 %i.be, float %i.aw, float %i.bd ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 148
  %i.bh = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bi = fcmp olt float %i.ba, %i.bh
  %i.bj = select i1 %i.bi, float %i.bh, float %i.ba ; 2 uses
  %i.bk = add nuw i64 %.087522, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bk, %i.x
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !303

bb.g:                                             ; preds = %._crit_edge604, %._crit_edge, %bb.e
  %i.bl = phi i64 [ %i.y, %._crit_edge ], [ %i.x, %bb.e ], [ %.pre606, %._crit_edge604 ] ; 3 uses
  %i.bm = phi i64 [ %i.x, %._crit_edge ], [ %i.x, %bb.e ], [ %.pre, %._crit_edge604 ] ; 3 uses
  %.075 = phi i8 [ %22, %._crit_edge ], [ 0, %bb.e ], [ 0, %._crit_edge604 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bq = sub i64 %i.bm, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %.not92 = icmp ugt i64 %i.bq, %i.bs
  %.phi.trans.insert607 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.pre608 = load ptr, ptr %.phi.trans.insert607, align 16 ; 3 uses
  br i1 %.not92, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre608, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bu, i64 %i.bl
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bx = load i32, ptr %i.bw, align 4
  %.011.i149779 = add i64 %i.bl, 1                ; 2 uses
  %.not13.i150.not780 = icmp ult i64 %.011.i149779, %i.bm
  br i1 %.not13.i150.not780, label %.lr.ph783, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152

bb.i:                                             ; preds = %.lr.ph783
  %.011.i149 = add i64 %.011.i149781, 1           ; 2 uses
  %.not13.i150.not = icmp ult i64 %.011.i149, %i.bm
  br i1 %.not13.i150.not, label %.lr.ph783, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152, !llvm.loop !304

.lr.ph783:                                        ; preds = %bb.h, %bb.i
  %.011.i149781 = phi i64 [ %.011.i149, %bb.i ], [ %.011.i149779, %bb.h ] ; 2 uses
  %i.by = getelementptr inbounds nuw [80 x i8], ptr %i.bu, i64 %.011.i149781
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4
  %.not.i151 = icmp eq i32 %i.ca, %i.bx
  br i1 %.not.i151, label %bb.i, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, !llvm.loop !304

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152: ; preds = %bb.i, %bb.h
  %.not93 = icmp eq i8 %.075, 0
  br i1 %.not93, label %bb.j, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread

bb.j:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !35, !align !37
  call void @_ZZN6embree4sse223BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 16 dereferenceable(152) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.da

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread: ; preds = %.lr.ph783, %bb.g, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 1472 ; 12 uses
  store i64 1, ptr %i.cd, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 1480 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 1736 ; 5 uses
  store i64 1, ptr %i.cf, align 8
  store i64 %i.e, ptr %16, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ch = load <4 x float>, ptr %i.bn, align 16
  store <4 x float> %i.ch, ptr %i.cg, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ck = load <4 x float>, ptr %i.ci, align 16
  store <4 x float> %i.ck, ptr %i.cj, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.cn = load <4 x float>, ptr %i.cl, align 16
  store <4 x float> %i.cn, ptr %i.cm, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.cq = load <4 x float>, ptr %i.co, align 16
  store <4 x float> %i.cq, ptr %i.cp, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ct = load <4 x float>, ptr %i.cs, align 16
  store <4 x float> %i.ct, ptr %i.cr, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.cw = load <4 x float>, ptr %i.cu, align 16
  store <4 x float> %i.cw, ptr %i.cv, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cx, ptr noundef nonnull align 16 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 144
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.dc = load <4 x float>, ptr %i.cz, align 16
  store <4 x float> %i.dc, ptr %i.cy, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 160
  store ptr %.pre608, ptr %i.de, align 16
  store ptr %.pre608, ptr %i.ce, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 1488
  store i64 2, ptr %i.df, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 1408 ; 6 uses
  store ptr %i.ce, ptr %i.dg, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.dh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 112 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 128
  %.sroa.3646.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 136
  %.sroa.3947.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 144 ; 2 uses
  %.sroa.4349.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 152
  %.sroa.4650.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 156
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 160 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 112 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 128
  %.sroa.36.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 136
  %.sroa.39.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 144 ; 2 uses
  %.sroa.43.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 152
  %.sroa.46.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 156
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 160 ; 3 uses
  %23 = trunc nuw i8 %.075 to i1
  br label %bb.k

bb.k:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread, %bb.af
  %i.eb = phi i64 [ %i.mn, %bb.af ], [ 1, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread ] ; 3 uses
  %.176 = phi i1 [ false, %bb.af ], [ %23, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit152.thread ]
  %.not560 = icmp eq i64 %i.eb, 0
  br i1 %.not560, label %._crit_edge537.thread, label %.lr.ph529

.lr.ph529:                                        ; preds = %bb.k
  %i.ec = load i64, ptr %i.br, align 8
  br label %bb.l

._crit_edge530:                                   ; preds = %bb.o
  %i.ed = icmp eq i32 %.185, -1
  br i1 %i.ed, label %bb.ag, label %bb.p

bb.l:                                             ; preds = %.lr.ph529, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph529 ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.277527 = phi i1 [ %.176, %.lr.ph529 ], [ false, %bb.o ]
  %.082525 = phi i64 [ 0, %.lr.ph529 ], [ %.183, %bb.o ] ; 4 uses
  %.084524 = phi i32 [ -1, %.lr.ph529 ], [ %.185, %bb.o ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %indvars.iv ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 120
  %i.eh = load i64, ptr %i.eg, align 8            ; 3 uses
  %i.ei = load i64, ptr %i.ef, align 16           ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %.not100 = icmp ugt i64 %i.ej, %i.ec
  br i1 %.not100, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 160
  %i.el = load ptr, ptr %i.ek, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = getelementptr inbounds nuw [80 x i8], ptr %i.en, i64 %i.ei
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = load i32, ptr %i.ep, align 4
  %.011.i141784 = add i64 %i.ei, 1                ; 2 uses
  %.not13.i.not785 = icmp ult i64 %.011.i141784, %i.eh
  br i1 %.not13.i.not785, label %.lr.ph788, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit

bb.n:                                             ; preds = %.lr.ph788
  %.011.i141 = add i64 %.011.i141786, 1           ; 2 uses
  %.not13.i.not = icmp ult i64 %.011.i141, %i.eh
  br i1 %.not13.i.not, label %.lr.ph788, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit, !llvm.loop !304

.lr.ph788:                                        ; preds = %bb.m, %bb.n
  %.011.i141786 = phi i64 [ %.011.i141, %bb.n ], [ %.011.i141784, %bb.m ] ; 2 uses
  %i.er = getelementptr inbounds nuw [80 x i8], ptr %i.en, i64 %.011.i141786
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load i32, ptr %i.es, align 4
  %.not.i142 = icmp eq i32 %i.et, %i.eq
  br i1 %.not.i142, label %bb.n, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, !llvm.loop !304

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit: ; preds = %bb.n, %bb.m
  %i.eu = icmp ugt i64 %i.ej, %.082525
  %or.cond = select i1 %.277527, i1 %i.eu, i1 false
  br i1 %or.cond, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, label %bb.o

_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115: ; preds = %.lr.ph788, %bb.l
  %.old = icmp ugt i64 %i.ej, %.082525
  br i1 %.old, label %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, label %bb.o

_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit: ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115
  %i.ev = trunc nuw i64 %indvars.iv to i32
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit
  %.185 = phi i32 [ %.084524, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit ], [ %.084524, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115 ], [ %i.ev, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit ] ; 3 uses
  %.183 = phi i64 [ %.082525, %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit ], [ %.082525, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit115 ], [ %i.ej, %_ZNK6embree4sse221BVHBuilderHairMSMBlur11BuildRecord4sizeEv.exit ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.ew = icmp ugt i64 %i.eb, %indvars.iv.next
  br i1 %i.ew, label %bb.l, label %._crit_edge530, !llvm.loop !305

bb.p:                                             ; preds = %._crit_edge530
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.ex = load i64, ptr %2, align 16
  %i.ey = add i64 %i.ex, 1                        ; 2 uses
  store i64 %i.ey, ptr %18, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  store i64 %i.ey, ptr %19, align 16
  %i.ez = sext i32 %.185 to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [176 x i8], ptr %16, i64 %i.ez ; 12 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 160 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 16           ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 112 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 16           ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8            ; 4 uses
  %i.fi = getelementptr inbounds nuw [80 x i8], ptr %i.fh, i64 %i.ff
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 120
  %i.fm = load i64, ptr %i.fl, align 8            ; 6 uses
  %.011.i144789 = add i64 %i.ff, 1                ; 2 uses
  %.not13.i145.not790 = icmp ult i64 %.011.i144789, %i.fm
  br i1 %.not13.i145.not790, label %.lr.ph793, label %._crit_edge794

bb.q:                                             ; preds = %.lr.ph793
  %.011.i144 = add i64 %.011.i144791, 1           ; 2 uses
  %.not13.i145.not = icmp ult i64 %.011.i144, %i.fm
  br i1 %.not13.i145.not, label %.lr.ph793, label %._crit_edge794, !llvm.loop !304

.lr.ph793:                                        ; preds = %bb.p, %bb.q
  %.011.i144791 = phi i64 [ %.011.i144, %bb.q ], [ %.011.i144789, %bb.p ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %i.fh, i64 %.011.i144791
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %i.fp = load i32, ptr %i.fo, align 4
  %.not.i146 = icmp eq i32 %i.fp, %i.fk
  br i1 %.not.i146, label %bb.q, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147, !llvm.loop !304

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147: ; preds = %.lr.ph793
  invoke void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.fb, ptr noundef nonnull align 16 dereferenceable(152) %i.dh, ptr noundef nonnull align 16 dereferenceable(152) %i.dk)
          to label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147._crit_edge unwind label %bb.r

_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147._crit_edge: ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147
  %.pre609 = load ptr, ptr %i.dt, align 16
  br label %bb.s

bb.r:                                             ; preds = %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryESR_.exit147
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %.body163

._crit_edge794:                                   ; preds = %bb.q, %bb.p
  %i.fr = add i64 %i.fm, %i.ff
  %i.fs = lshr i64 %i.fr, 1                       ; 6 uses
  %i.ft = icmp ult i64 %i.ff, %i.fs
  br i1 %i.ft, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i, %._crit_edge794
  %.sroa.4349.0.lcssa.i = phi float [ 1.000000e+00, %._crit_edge794 ], [ %i.gw, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ] ; 2 uses
  %.sroa.3646.0.lcssa.i = phi i64 [ 0, %._crit_edge794 ], [ %.sroa.3646.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.3245.0.lcssa.i = phi i64 [ 0, %._crit_edge794 ], [ %i.hc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.2240.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge794 ], [ %i.gr, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1838.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge794 ], [ %i.gq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1436.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge794 ], [ %i.gp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.1034.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge794 ], [ %i.go, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.632.0.lcssa.i = phi <4 x float> [ splat (float -inf), %._crit_edge794 ], [ %i.gn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.030.0.lcssa.i = phi <4 x float> [ splat (float +inf), %._crit_edge794 ], [ %i.gm, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %.sroa.4650.0.lcssa.i = phi float [ 0.000000e+00, %._crit_edge794 ], [ %i.gz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ] ; 2 uses
  %i.fu = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %._crit_edge794 ], [ %i.hi, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ]
  %i.fv = icmp ult i64 %i.fs, %i.fm
  br i1 %i.fv, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.i, label %_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i: ; preds = %._crit_edge794, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i
  %.0153.i = phi i64 [ %i.hj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ %i.ff, %._crit_edge794 ] ; 2 uses
  %.sroa.4650.0152.i = phi float [ %i.gz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0.000000e+00, %._crit_edge794 ] ; 2 uses
  %.sroa.030.0151.i = phi <4 x float> [ %i.gm, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge794 ]
  %.sroa.632.0150.i = phi <4 x float> [ %i.gn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge794 ]
  %.sroa.1034.0149.i = phi <4 x float> [ %i.go, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge794 ]
  %.sroa.1436.0148.i = phi <4 x float> [ %i.gp, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge794 ]
  %.sroa.1838.0147.i = phi <4 x float> [ %i.gq, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float +inf), %._crit_edge794 ]
  %.sroa.2240.0146.i = phi <4 x float> [ %i.gr, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ splat (float -inf), %._crit_edge794 ]
  %.sroa.3245.0144.i = phi i64 [ %i.hc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0, %._crit_edge794 ]
  %.sroa.3646.0143.i = phi i64 [ %.sroa.3646.1.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 0, %._crit_edge794 ] ; 2 uses
  %.sroa.4349.0140.i = phi float [ %i.gw, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ 1.000000e+00, %._crit_edge794 ] ; 2 uses
  %i.fw = phi <2 x float> [ %i.hi, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.i ], [ <float 0.000000e+00, float 1.000000e+00>, %._crit_edge794 ]
  %i.fx = getelementptr inbounds nuw [80 x i8], ptr %i.fh, i64 %.0153.i ; 5 uses
  %i.fy = load <4 x float>, ptr %i.fx, align 16, !noalias !387 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.ga = load <4 x float>, ptr %i.fz, align 16, !noalias !388 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.gc = load <4 x float>, ptr %i.gb, align 16, !noalias !389 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.ge = load <4 x float>, ptr %i.gd, align 16, !noalias !390 ; 3 uses
  %i.gf = fmul <4 x float> %i.gc, splat (float 5.000000e-01)
  %i.gg = fmul <4 x float> %i.fy, splat (float 5.000000e-01)
  %i.gh = fadd <4 x float> %i.gg, %i.gf
  %i.gi = fmul <4 x float> %i.ge, splat (float 5.000000e-01)
  %i.gj = fmul <4 x float> %i.ga, splat (float 5.000000e-01)
  %i.gk = fadd <4 x float> %i.gj, %i.gi
  %i.gl = fadd <4 x float> %i.gh, %i.gk           ; 2 uses
  %i.gm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.030.0151.i, <4 x float> %i.fy) ; 2 uses
  %i.gn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.632.0150.i, <4 x float> %i.ga) ; 2 uses
  %i.go = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1034.0149.i, <4 x float> %i.gc) ; 2 uses
  %i.gp = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1436.0148.i, <4 x float> %i.ge) ; 2 uses
  %i.gq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1838.0147.i, <4 x float> %i.gl) ; 2 uses
  %i.gr = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2240.0146.i, <4 x float> %i.gl) ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.gt = load <2 x float>, ptr %i.gs, align 16   ; 3 uses
  %i.gu = extractelement <2 x float> %i.gt, i64 0 ; 2 uses
  %i.gv = fcmp olt float %.sroa.4349.0140.i, %i.gu
  %i.gw = select i1 %i.gv, float %.sroa.4349.0140.i, float %i.gu ; 2 uses
  %i.gx = extractelement <2 x float> %i.gt, i64 1 ; 2 uses
  %i.gy = fcmp olt float %.sroa.4650.0152.i, %i.gx
  %i.gz = select i1 %i.gy, float %i.gx, float %.sroa.4650.0152.i ; 2 uses
  %bc.i = bitcast <4 x float> %i.gc to <4 x i32>
  %i.ha = extractelement <4 x i32> %bc.i, i64 3
  %i.hb = zext i32 %i.ha to i64
  %i.hc = add i64 %.sroa.3245.0144.i, %i.hb       ; 2 uses
  %bc215.i = bitcast <4 x float> %i.ge to <4 x i32>
  %i.hd = extractelement <4 x i32> %bc215.i, i64 3
  %i.he = zext i32 %i.hd to i64                   ; 2 uses
  %i.hf = icmp samesign ult i64 %.sroa.3646.0143.i, %i.he
  %i.hg = insertelement <2 x i1> poison, i1 %i.hf, i64 0
  %i.hh = shufflevector <2 x i1> %i.hg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hi = select <2 x i1> %i.hh, <2 x float> %i.gt, <2 x float> %i.fw ; 2 uses
  %.sroa.3646.1.i = call i64 @llvm.umax.i64(i64 %.sroa.3646.0143.i, i64 %i.he) ; 2 uses
  %i.hj = add nuw nsw i64 %.0153.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hj, %i.fs
end_hunk_0
