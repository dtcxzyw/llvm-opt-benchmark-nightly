Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SineStarFactory?download=true
inline.NumInlined: 92
inline.NumDeleted: 77
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%"class.std::unique_ptr.18" = type { %"struct.std::__uniq_ptr_data.19" }
%"struct.std::__uniq_ptr_data.19" = type { %"class.std::__uniq_ptr_impl.20" }
%"class.std::__uniq_ptr_impl.20" = type { %"class.std::tuple.21" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom4util15SineStarFactory14createSineStarEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.2", align 8 ; 7 uses
  %3 = alloca %"class.std::vector", align 8       ; 10 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr.10", align 8 ; 7 uses
  %6 = alloca %"class.std::unique_ptr.18", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZNK4geos4util21GeometricShapeFactory10Dimensions11getEnvelopeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.b = load ptr, ptr %2, align 8, !tbaa !15     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !18 ; 2 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00
  %i.f = load double, ptr %i.b, align 8           ; 2 uses
  %i.g = fsub double %i.d, %i.f
  %i.h = fmul double %i.g, 5.000000e-01
  %i.i = select i1 %i.e, double 0.000000e+00, double %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load double, ptr %i.j, align 8, !tbaa !25 ; 2 uses
  %i.l = fcmp olt double %i.k, 0.000000e+00
  %spec.store.select = select i1 %i.l, double 0.000000e+00, double %i.k ; 2 uses
  %i.m = fcmp ogt double %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.m, double 1.000000e+00, double %spec.store.select ; 2 uses
  %i.n = fmul double %i.i, %spec.store.select1
  %i.o = fsub double 1.000000e+00, %spec.store.select1
  %i.p = fmul double %i.i, %i.o
  %i.q = fadd double %i.f, %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !26
  %i.t = fadd double %i.s, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27
  %i.w = add i32 %i.v, 1                          ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i, label %.loopexit.thread, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i

.loopexit.thread:                                 ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.lr.ph

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.a
  %i.y = mul nuw nsw i64 %i.x, 24
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #9
          to label %.noexc unwind label %bb.b     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.z, ptr %3, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !31
  %xtraiter = and i64 %i.x, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.z, %.noexc ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %.noexc ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i.prol, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ac, align 8, !tbaa !32
  %i.ad = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !8

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc
  %.lcssa.unr = phi ptr [ poison, %.noexc ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.z, %.noexc ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.x, %.noexc ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %i.af = icmp ult i32 %i.w, 8
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ag, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ak, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.am, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ao, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.aq, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.as, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.au, align 8, !tbaa !32
  %i.av = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i.i ]
  %.pre = load i32, ptr %i.u, align 8, !tbaa !27  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.ax, align 8, !tbaa !35
  %.not = icmp eq i32 %.pre, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit.thread, %.loopexit
  %i.ay = phi i32 [ -1, %.loopexit.thread ], [ %.pre, %.loopexit ]
  %i.az = phi ptr [ null, %.loopexit.thread ], [ %i.z, %.loopexit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 92
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.bb = and i64 %indvars.iv.next, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %i.bc = phi ptr [ %i.z, %.loopexit ], [ %i.az, %._crit_edge.loopexit ] ; 2 uses
  %.033.lcssa = phi i64 [ 0, %.loopexit ], [ %i.bb, %._crit_edge.loopexit ]
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %.033.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !44 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.f unwind label %bb.h

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit56

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.bm = phi i32 [ %i.ay, %.lr.ph ], [ %i.cg, %bb.d ]
  %indvars64 = trunc i64 %indvars.iv to i32
  %i.bn = uitofp i32 %indvars64 to double         ; 2 uses
  %i.bo = uitofp i32 %i.bm to double              ; 2 uses
  %i.bp = fdiv double %i.bn, %i.bo
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !47
  %i.br = sitofp i32 %i.bq to double
  %i.bs = fmul double %i.bp, %i.br                ; 2 uses
  %i.bt = call double @llvm.floor.f64(double %i.bs)
  %i.bu = fsub double %i.bs, %i.bt
  %i.bv = fmul double %i.bu, f0x401921FB54442D18
  %i.bw = call double @cos(double noundef %i.bv) #8
  %i.bx = fadd double %i.bw, 1.000000e+00
  %i.by = fmul double %i.bx, 5.000000e-01
  %i.bz = fmul double %i.n, %i.by
  %i.ca = fadd double %i.p, %i.bz                 ; 2 uses
  %i.cb = fdiv nnan double f0x401921FB54442D18, %i.bo
  %i.cc = fmul double %i.cb, %i.bn                ; 2 uses
  %7 = call double @cos(double noundef %i.cc) #8
  %8 = fmul double %7, %i.ca
  %9 = fadd double %i.q, %8
  %10 = call double @sin(double noundef %i.cc) #8
  %i.cd = fmul double %10, %i.ca
  %i.ce = fadd double %i.t, %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  invoke void @_ZNK4geos4util21GeometricShapeFactory5coordEdd(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %4, ptr noundef nonnull align 8 dereferenceable(92) %1, double noundef %9, double noundef %i.ce)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.cg = load i32, ptr %i.u, align 8, !tbaa !27  ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, %indvars
  br i1 %i.ch, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !10

bb.e:                                             ; preds = %bb.c
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.m

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !38
  invoke void @_ZNK4geos4geom15GeometryFactory16createLinearRingEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %6, ptr noundef nonnull align 8 dereferenceable(45) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ck = load ptr, ptr %i.be, align 8, !tbaa !38
  invoke void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt10unique_ptrINS0_10LinearRingESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit54

bb.i:                                             ; preds = %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i: ; preds = %bb.j
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(48) %i.co) #8, !inline_history !11
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit

bb.k:                                             ; preds = %bb.g
  %i.cs = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %.not.i47 = icmp eq ptr %i.cs, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit49, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i48

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i48: ; preds = %bb.k
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(48) %i.cs) #8, !inline_history !11
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit49

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit49: ; preds = %bb.k, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.cw = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %.not.i50 = icmp eq ptr %i.cw, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit49
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #8, !inline_history !12
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit49, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.da = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.da) #10
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.db = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not.i51 = icmp eq ptr %i.db, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.db) #10
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.i ], [ %i.cn, %bb.j ], [ %i.cn, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.dc = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %.not.i52 = icmp eq ptr %i.dc, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit54, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i53

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i53: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !46
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #8, !inline_history !12
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit54

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit54: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i53, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.h ], [ %.pn, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit ], [ %.pn, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pre67 = load ptr, ptr %3, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit54, %bb.e
  %i.dg = phi ptr [ %i.az, %bb.e ], [ %.pre67, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit54 ] ; 2 uses
  %.pn43 = phi { ptr, i32 } [ %i.ci, %bb.e ], [ %.pn.pn, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit54 ] ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit56, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #10
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit56

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit56: ; preds = %bb.n, %bb.m, %bb.b
  %.pn43.pn = phi { ptr, i32 } [ %i.bl, %bb.b ], [ %.pn43, %bb.m ], [ %.pn43, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.dh = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not.i57 = icmp eq ptr %i.dh, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit59, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i58

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i58: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit56
  call void @_ZdlPv(ptr noundef nonnull %i.dh) #10
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit59

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit59: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit56, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK4geos4util21GeometricShapeFactory10Dimensions11getEnvelopeEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

declare void @_ZNK4geos4util21GeometricShapeFactory5coordEdd(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8, ptr noundef nonnull align 8 dereferenceable(92), double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK4geos4geom15GeometryFactory16createLinearRingEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt10unique_ptrINS0_10LinearRingESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !33}
!9 = distinct !{!9, !34}
!10 = distinct !{!10, !34}
!11 = distinct !{null, null}
!12 = distinct !{null, null}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"double", !4, i64 0}
!17 = !{!"_ZTSN4geos4geom8EnvelopeE", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!18 = !{!17, !16, i64 8}
!19 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !13, i64 0}
!20 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !13, i64 0}
!21 = !{!"_ZTSN4geos4geom10CoordinateE", !16, i64 0, !16, i64 8, !16, i64 16}
!22 = !{!"_ZTSN4geos4util21GeometricShapeFactory10DimensionsE", !21, i64 0, !21, i64 24, !16, i64 48, !16, i64 56}
!23 = !{!"_ZTSN4geos4util21GeometricShapeFactoryE", !19, i64 8, !20, i64 16, !22, i64 24, !5, i64 88}
!24 = !{!"_ZTSN4geos4geom4util15SineStarFactoryE", !23, i64 0, !5, i64 92, !16, i64 96}
!25 = !{!24, !16, i64 96}
!26 = !{!17, !16, i64 16}
!27 = !{!23, !5, i64 88}
!28 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !13, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !28, i64 16}
!32 = !{!21, !16, i64 16}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!29, !28, i64 8}
!36 = !{!16, !16, i64 0}
!37 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 8, !36}
!38 = !{!23, !19, i64 8}
!39 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !4, i64 0}
!40 = !{!"_ZTSN4geos4geom14PrecisionModelE", !39, i64 0, !16, i64 8}
!41 = !{!"p1 _ZTSN4geos4geom25CoordinateSequenceFactoryE", !13, i64 0}
!42 = !{!"bool", !4, i64 0}
!43 = !{!"_ZTSN4geos4geom15GeometryFactoryE", !40, i64 8, !5, i64 24, !41, i64 32, !5, i64 40, !42, i64 44}
!44 = !{!43, !41, i64 32}
!45 = !{!"vtable pointer", !3, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!24, !5, i64 92}
!48 = !{!"p1 _ZTSN4geos4geom10LinearRingE", !13, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !13, i64 0}
!51 = !{!50, !50, i64 0}
end_hunk_0
