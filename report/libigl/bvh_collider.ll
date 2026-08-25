Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_collider?download=true
inline.NumInlined: 247
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6embree4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES4_S9_:bb.a
  br i1 %.not.i107, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.u

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.fz, %bb.p ], [ %i.ga, %bb.q ], [ %i.gb, %bb.r ], [ %i.gb, %bb.s ]
  %i.gd = load ptr, ptr %5, align 8
  %.not.i.i109 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i109, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit110, label %bb.t

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit110

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit110: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit108, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.w

bb.u:                                             ; preds = %._crit_edge184.thread224, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, %._crit_edge184
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef %i.gf)
          to label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit21 unwind label %bb.v

bb.v:                                             ; preds = %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit21, %bb.u
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #25
  unreachable

_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit21: ; preds = %bb.u
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i8 0, i64 24, i1 false)
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef %i.gk)
          to label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit21.1 unwind label %bb.v

_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit21.1: ; preds = %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.w:                                             ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit110, %bb.j
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.j ], [ %.pn.i, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.dc, %bb.f ], [ %i.db, %bb.e ]
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef %i.gm)
          to label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit, %bb.x
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #25
  unreachable

_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit: ; preds = %bb.x
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, i8 0, i64 24, i1 false)
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef %i.gr)
          to label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit.1 unwind label %bb.y

_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit.1: ; preds = %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse220BVHNColliderUserGeomILi4EE11processLeafENS_10NodeRefPtrILi4EEES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2) unnamed_addr #13 comdat align 2 {
bb.a:
  %3 = alloca [16 x %"struct.embree::sse2::Collision"], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = and i64 %1, 15
  %i.b = add nsw i64 %i.a, -8                     ; 2 uses
  %i.c = and i64 %1, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = and i64 %2, 15
  %i.f = add nsw i64 %i.e, -8                     ; 2 uses
  %i.g = and i64 %2, -16
  %i.h = inttoptr i64 %i.g to ptr
  %.not42 = icmp eq i64 %i.b, 0
  br i1 %.not42, label %._crit_edge40.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not43 = icmp eq i64 %i.f, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %.not43, label %._crit_edge40.thread, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.02539.us = phi i64 [ %i.af, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.02638.us = phi i64 [ %.3.us, %._crit_edge.us ], [ 0, %.preheader.lr.ph ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02539.us ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.e
  %.037.us = phi i64 [ 0, %.preheader.us ], [ %i.ae, %bb.e ] ; 2 uses
  %.136.us = phi i64 [ %.02638.us, %.preheader.us ], [ %.3.us, %bb.e ] ; 3 uses
  %i.o = load i32, ptr %i.m, align 8              ; 2 uses
  %i.p = load i32, ptr %i.n, align 4              ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.037.us ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = load ptr, ptr %i.j, align 8
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = icmp eq i32 %i.o, %i.r
  %or.cond.us = and i1 %i.x, %i.w
  %i.y = icmp eq i32 %i.p, %i.t
  %or.cond30.us = and i1 %i.y, %or.cond.us
  br i1 %or.cond30.us, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %.136.us, 1                      ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.136.us ; 4 uses
  store i32 %i.o, ptr %i.aa, align 16
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.p, ptr %.sroa.4.0..sroa_idx.us, align 4
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.r, ptr %.sroa.5.0..sroa_idx.us, align 8
  %.sroa.6.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.t, ptr %.sroa.6.0..sroa_idx.us, align 4
  %i.ab = icmp eq i64 %i.z, 16
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = load ptr, ptr %i.l, align 8
  call void %i.ac(ptr noundef %i.ad, ptr noundef nonnull %3, i32 noundef 16)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.3.us = phi i64 [ %.136.us, %bb.b ], [ 0, %bb.d ], [ %i.z, %bb.c ] ; 4 uses
  %i.ae = add nuw i64 %.037.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.f
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !98

._crit_edge.us:                                   ; preds = %bb.e
  %i.af = add nuw i64 %.02539.us, 1               ; 2 uses
  %exitcond45.not = icmp eq i64 %i.af, %i.b
  br i1 %exitcond45.not, label %._crit_edge40, label %.preheader.us, !llvm.loop !99

._crit_edge40:                                    ; preds = %._crit_edge.us
  %.not = icmp eq i64 %.3.us, 0
  br i1 %.not, label %._crit_edge40.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = trunc i64 %.3.us to i32
  call void %i.ah(ptr noundef %i.aj, ptr noundef nonnull %3, i32 noundef %i.ak)
  br label %._crit_edge40.thread

._crit_edge40.thread:                             ; preds = %.preheader.lr.ph, %bb.a, %bb.f, %._crit_edge40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse212BVHNColliderILi4EE5splitERKNS2_10CollideJobERNS_8vector_tIS3_NS_17aligned_allocatorIS3_Lm16EEEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.8112 = alloca <{ i64, %"struct.embree::NodeRefPtr" }>, align 16 ; 4 uses
  %i.a = load i64, ptr %1, align 16               ; 3 uses
  %i.b = and i64 %i.a, 8
  %.not = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = and i64 %i.d, 8
  %.not48 = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b, !prof !100

bb.b:                                             ; preds = %bb.a
  br i1 %.not48, label %._crit_edge, label %bb.c, !prof !100

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load <4 x float>, ptr %.phi.trans.insert, align 16
  %.phi.trans.insert219 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre218 = load <4 x float>, ptr %.phi.trans.insert219, align 16
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8112)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <4 x float>, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load <4 x float>, ptr %i.h, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8112, ptr noundef nonnull align 16 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load <4 x float>, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load <4 x float>, ptr %i.m, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load i64, ptr %i.o, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 4 uses
  %.not.i = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i, label %bb.d, label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit183, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0.i62186 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.u, %bb.d ]
  %i.w = shl i64 %.0.i62186, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1) ; 3 uses
  %i.x = icmp ult i64 %.sroa.speculated, %i.s
  br i1 %i.x, label %.lr.ph, label %.loopexit183, !llvm.loop !95

.loopexit183:                                     ; preds = %.lr.ph, %bb.d
  %.07.i = phi i64 [ %i.s, %bb.d ], [ %.sroa.speculated, %.lr.ph ] ; 3 uses
  %i.y = icmp eq i64 %.07.i, %i.u
  br i1 %i.y, label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit183
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = mul i64 %.07.i, 112
  %i.ac = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.ab, i64 noundef 16)
  store ptr %i.ac, ptr %i.z, align 8
  %i.ad = load i64, ptr %i.q, align 8
  %.not210 = icmp eq i64 %i.ad, 0
  br i1 %.not210, label %.preheader181, label %.lr.ph188

.preheader181:                                    ; preds = %.lr.ph188, %bb.e
  tail call void @_ZN6embree11alignedFreeEPv(ptr noundef %i.aa)
  store i64 %.07.i, ptr %i.t, align 8
  br label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit

.lr.ph188:                                        ; preds = %bb.e, %.lr.ph188
  %.024.i187 = phi i64 [ %i.az, %.lr.ph188 ], [ 0, %bb.e ] ; 3 uses
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %.024.i187 ; 7 uses
  %i.ag = getelementptr inbounds nuw [112 x i8], ptr %i.aa, i64 %.024.i187 ; 7 uses
  %i.ah = load i64, ptr %i.ag, align 16
  store i64 %i.ah, ptr %i.af, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load <4 x float>, ptr %i.aj, align 16
  store <4 x float> %i.ak, ptr %i.ai, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.an = load <4 x float>, ptr %i.am, align 16
  store <4 x float> %i.an, ptr %i.al, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ao, ptr noundef nonnull align 16 dereferenceable(16) %i.ap, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.as = load <4 x float>, ptr %i.ar, align 16
  store <4 x float> %i.as, ptr %i.aq, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.av = load <4 x float>, ptr %i.au, align 16
  store <4 x float> %i.av, ptr %i.at, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ay = load i64, ptr %i.ax, align 16
  store i64 %i.ay, ptr %i.aw, align 16
  %i.az = add nuw i64 %.024.i187, 1               ; 2 uses
  %i.ba = load i64, ptr %i.q, align 8
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph188, label %.preheader181, !llvm.loop !93

_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit: ; preds = %bb.c, %.loopexit183, %.preheader181
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  store i64 %i.s, ptr %i.q, align 8
  %i.be = getelementptr inbounds nuw [112 x i8], ptr %i.bd, i64 %i.r ; 7 uses
  store i64 %i.a, ptr %i.be, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %i.g, ptr %i.bf, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store <4 x float> %i.i, ptr %i.bg, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bh, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8112, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store <4 x float> %i.l, ptr %i.bi, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store <4 x float> %i.n, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  store i64 %i.p, ptr %i.bk, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8112)
  br label %.loopexit176

bb.f:                                             ; preds = %bb.a
  br i1 %.not48, label %bb.g, label %._crit_edge227, !prof !100

._crit_edge227:                                   ; preds = %bb.f
  %.phi.trans.insert228 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre221 = load <4 x float>, ptr %.phi.trans.insert228, align 16
  %.phi.trans.insert232 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre223 = load <4 x float>, ptr %.phi.trans.insert232, align 16
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load <4 x float>, ptr %i.bm, align 16, !noalias !101 ; 2 uses
  %i.bo = load <4 x float>, ptr %i.bl, align 16, !noalias !101 ; 2 uses
  %i.bp = fsub <4 x float> %i.bn, %i.bo           ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bs = load <4 x float>, ptr %i.br, align 16, !noalias !106 ; 2 uses
  %i.bt = load <4 x float>, ptr %i.bq, align 16, !noalias !106 ; 2 uses
  %i.bu = fsub <4 x float> %i.bs, %i.bt           ; 3 uses
  %i.bv = shufflevector <4 x float> %i.bp, <4 x float> %i.bu, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.bw = shufflevector <4 x float> %i.bp, <4 x float> %i.bu, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.bx = fadd <2 x float> %i.bv, %i.bw
  %i.by = fmul <2 x float> %i.bv, %i.bw
  %i.bz = shufflevector <4 x float> %i.bp, <4 x float> %i.bu, <2 x i32> <i32 0, i32 4>
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bx, <2 x float> %i.by)
  %i.cb = fmul <2 x float> %i.ca, splat (float 2.000000e+00) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %i.cd = extractelement <2 x float> %i.cb, i64 1
  %i.ce = fcmp ogt float %i.cc, %i.cd
  br i1 %i.ce, label %bb.h, label %bb.l

bb.h:                                             ; preds = %._crit_edge227, %bb.g
  %3 = phi <4 x float> [ %.pre223, %._crit_edge227 ], [ %i.bs, %bb.g ]
  %i.cf = phi <4 x float> [ %.pre221, %._crit_edge227 ], [ %i.bt, %bb.g ]
  %i.cg = inttoptr i64 %i.a to ptr                ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ci = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !noalias !111
  %i.cl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ci, <4 x float> %i.ck)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %5 = load <1 x float>, ptr %4, align 4
  %i.cm = shufflevector <1 x float> %5, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 2 uses
  %i.co = load <4 x float>, ptr %i.cn, align 16, !noalias !114
  %i.cp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cm, <4 x float> %i.co)
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %7 = load <1 x float>, ptr %6, align 8
  %i.cq = shufflevector <1 x float> %7, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 96 ; 2 uses
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !noalias !117
  %i.ct = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cq, <4 x float> %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %8 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.cw = load <4 x float>, ptr %i.cv, align 16, !noalias !120
  %i.cx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %8, <4 x float> %i.cw)
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %10 = load <1 x float>, ptr %9, align 4
  %11 = shufflevector <1 x float> %10, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 80 ; 2 uses
  %i.cz = load <4 x float>, ptr %i.cy, align 16, !noalias !123
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %11, <4 x float> %i.cz)
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %13 = load <1 x float>, ptr %12, align 8
  %14 = shufflevector <1 x float> %13, <1 x float> poison, <4 x i32> zeroinitializer
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 112 ; 2 uses
  %i.dc = load <4 x float>, ptr %i.db, align 16, !noalias !126
  %i.dd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %14, <4 x float> %i.dc)
  %i.de = fcmp ole <4 x float> %i.cl, %i.cx
  %i.df = fcmp ole <4 x float> %i.cp, %i.da
  %i.dg = and <4 x i1> %i.de, %i.df
  %i.dh = fcmp ole <4 x float> %i.ct, %i.dd
  %i.di = and <4 x i1> %i.dg, %i.dh
  %i.dj = bitcast <4 x i1> %i.di to i4            ; 2 uses
  %i.dk = zext i4 %i.dj to i64                    ; 2 uses
  %i.dl = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.dk) #26, !srcloc !129
  %.not49206 = icmp eq i4 %i.dj, 0
  br i1 %.not49206, label %.loopexit176, label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph209, %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit56
  %.046208 = phi i64 [ %i.dk, %.lr.ph209 ], [ %i.gg, %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit56 ]
  %.047207 = phi i64 [ %i.dl, %.lr.ph209 ], [ %i.gh, %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit56 ] ; 8 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.047207
  %.sroa.012.0.copyload = load i64, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.047207
  %i.dt = load float, ptr %i.ds, align 4, !noalias !130
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.047207
  %i.dv = load float, ptr %i.du, align 4, !noalias !130
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.047207
  %i.dx = load float, ptr %i.dw, align 4, !noalias !130
  %i.dy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dt, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %i.dx, i64 2
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.047207
  %i.ec = load float, ptr %i.eb, align 4, !noalias !130
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.047207
  %i.ee = load float, ptr %i.ed, align 4, !noalias !130
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.047207
  %i.eg = load float, ptr %i.ef, align 4, !noalias !130
  %i.eh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ec, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.eg, i64 2
  %i.ek = load i64, ptr %i.dm, align 16
  %i.el = add i64 %i.ek, 1
  %.sroa.011.0.copyload = load i64, ptr %i.c, align 8
  %i.em = load i64, ptr %i.dn, align 16
  %i.en = load <4 x float>, ptr %i.ch, align 16
  %i.eo = load <4 x float>, ptr %i.cu, align 16
  %i.ep = load i64, ptr %i.do, align 8            ; 2 uses
  %i.eq = add i64 %i.ep, 1                        ; 4 uses
  %i.er = load i64, ptr %i.dp, align 8            ; 4 uses
  %.not.i63 = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i63, label %bb.j, label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit56

bb.j:                                             ; preds = %bb.i
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.loopexit, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.j, %.lr.ph201
  %.0.i65200 = phi i64 [ %.sroa.speculated117, %.lr.ph201 ], [ %i.er, %bb.j ]
  %i.et = shl i64 %.0.i65200, 1
  %.sroa.speculated117 = tail call i64 @llvm.umax.i64(i64 %i.et, i64 1) ; 3 uses
  %i.eu = icmp ult i64 %.sroa.speculated117, %i.eq
  br i1 %i.eu, label %.lr.ph201, label %.loopexit, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph201, %bb.j
  %.07.i64 = phi i64 [ %i.eq, %bb.j ], [ %.sroa.speculated117, %.lr.ph201 ] ; 3 uses
  %i.ev = icmp eq i64 %.07.i64, %i.er
  br i1 %i.ev, label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit56, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ew = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ex = mul i64 %.07.i64, 112
  %i.ey = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.ex, i64 noundef 16)
  store ptr %i.ey, ptr %i.dq, align 8
  %i.ez = load i64, ptr %i.do, align 8
  %.not212 = icmp eq i64 %i.ez, 0
  br i1 %.not212, label %.preheader, label %.lr.ph204

.preheader:                                       ; preds = %.lr.ph204, %bb.k
  tail call void @_ZN6embree11alignedFreeEPv(ptr noundef %i.ew)
  store i64 %.07.i64, ptr %i.dp, align 8
  br label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit56

.lr.ph204:                                        ; preds = %bb.k, %.lr.ph204
  %.024.i52203 = phi i64 [ %i.fv, %.lr.ph204 ], [ 0, %bb.k ] ; 3 uses
  %i.fa = load ptr, ptr %i.dq, align 8
  %i.fb = getelementptr inbounds nuw [112 x i8], ptr %i.fa, i64 %.024.i52203 ; 7 uses
  %i.fc = getelementptr inbounds nuw [112 x i8], ptr %i.ew, i64 %.024.i52203 ; 7 uses
  %i.fd = load i64, ptr %i.fc, align 16
  store i64 %i.fd, ptr %i.fb, align 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fg = load <4 x float>, ptr %i.ff, align 16
  store <4 x float> %i.fg, ptr %i.fe, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fj = load <4 x float>, ptr %i.fi, align 16
  store <4 x float> %i.fj, ptr %i.fh, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fk, ptr noundef nonnull align 16 dereferenceable(16) %i.fl, i64 16, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.fo = load <4 x float>, ptr %i.fn, align 16
  store <4 x float> %i.fo, ptr %i.fm, align 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.fr = load <4 x float>, ptr %i.fq, align 16
  store <4 x float> %i.fr, ptr %i.fp, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %i.fu = load i64, ptr %i.ft, align 16
  store i64 %i.fu, ptr %i.fs, align 16
  %i.fv = add nuw i64 %.024.i52203, 1             ; 2 uses
  %i.fw = load i64, ptr %i.do, align 8
  %i.fx = icmp ult i64 %i.fv, %i.fw
  br i1 %i.fx, label %.lr.ph204, label %.preheader, !llvm.loop !93

_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit56: ; preds = %bb.i, %.loopexit, %.preheader
  %i.fy = load ptr, ptr %i.dq, align 8
  store i64 %i.eq, ptr %i.do, align 8
  %i.fz = getelementptr inbounds nuw [112 x i8], ptr %i.fy, i64 %i.ep ; 8 uses
  store i64 %.sroa.012.0.copyload, ptr %i.fz, align 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <4 x float> %i.ea, ptr %i.ga, align 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  store <4 x float> %i.ej, ptr %i.gb, align 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  store i64 %i.el, ptr %i.gc, align 16
  %.sroa.10103.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  store i64 %.sroa.011.0.copyload, ptr %.sroa.10103.48..sroa_idx, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  store <4 x float> %i.en, ptr %i.gd, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  store <4 x float> %i.eo, ptr %i.ge, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  store i64 %i.em, ptr %i.gf, align 16
  %i.gg = tail call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %.047207, i64 %.046208) #26, !srcloc !133 ; 3 uses
  %i.gh = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.gg) #26, !srcloc !129
  %.not49 = icmp eq i64 %i.gg, 0
  br i1 %.not49, label %.loopexit176, label %bb.i, !llvm.loop !134

bb.l:                                             ; preds = %._crit_edge, %bb.g
  %15 = phi <4 x float> [ %i.bn, %bb.g ], [ %.pre218, %._crit_edge ]
  %i.gi = phi <4 x float> [ %i.bo, %bb.g ], [ %.pre, %._crit_edge ]
  %i.gj = inttoptr i64 %i.d to ptr                ; 7 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gl = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.gn = load <4 x float>, ptr %i.gm, align 16, !noalias !135
  %i.go = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gl, <4 x float> %i.gn)
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %17 = load <1 x float>, ptr %16, align 4
  %i.gp = shufflevector <1 x float> %17, <1 x float> poison, <4 x i32> zeroinitializer
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 64 ; 2 uses
  %i.gr = load <4 x float>, ptr %i.gq, align 16, !noalias !138
  %i.gs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gp, <4 x float> %i.gr)
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %19 = load <1 x float>, ptr %18, align 8
  %i.gt = shufflevector <1 x float> %19, <1 x float> poison, <4 x i32> zeroinitializer
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 96 ; 2 uses
  %i.gv = load <4 x float>, ptr %i.gu, align 16, !noalias !141
  %i.gw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gt, <4 x float> %i.gv)
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %20 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 2 uses
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !noalias !144
  %i.ha = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %20, <4 x float> %i.gz)
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %22 = load <1 x float>, ptr %21, align 4
  %23 = shufflevector <1 x float> %22, <1 x float> poison, <4 x i32> zeroinitializer
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gj, i64 80 ; 2 uses
  %i.hc = load <4 x float>, ptr %i.hb, align 16, !noalias !147
  %i.hd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %23, <4 x float> %i.hc)
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %25 = load <1 x float>, ptr %24, align 8
  %26 = shufflevector <1 x float> %25, <1 x float> poison, <4 x i32> zeroinitializer
  %i.he = getelementptr inbounds nuw i8, ptr %i.gj, i64 112 ; 2 uses
  %i.hf = load <4 x float>, ptr %i.he, align 16, !noalias !150
  %i.hg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %26, <4 x float> %i.hf)
  %i.hh = fcmp ole <4 x float> %i.go, %i.ha
  %i.hi = fcmp ole <4 x float> %i.gs, %i.hd
  %i.hj = and <4 x i1> %i.hh, %i.hi
  %i.hk = fcmp ole <4 x float> %i.gw, %i.hg
  %i.hl = and <4 x i1> %i.hj, %i.hk
  %i.hm = bitcast <4 x i1> %i.hl to i4            ; 2 uses
  %i.hn = zext i4 %i.hm to i64                    ; 2 uses
  %i.ho = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.hn) #26, !srcloc !129
  %.not51196 = icmp eq i4 %i.hm, 0
  br i1 %.not51196, label %.loopexit176, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.l
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph199, %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit61
  %.0198 = phi i64 [ %i.ho, %.lr.ph199 ], [ %i.kk, %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit61 ] ; 8 uses
  %.045197 = phi i64 [ %i.hn, %.lr.ph199 ], [ %i.kj, %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit61 ]
  %.sroa.01.0.copyload = load i64, ptr %1, align 16
  %i.hu = load i64, ptr %i.hp, align 16
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.0198
  %.sroa.0.0.copyload = load i64, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.0198
  %i.hx = load float, ptr %i.hw, align 4, !noalias !153
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.0198
  %i.hz = load float, ptr %i.hy, align 4, !noalias !153
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.0198
  %i.ib = load float, ptr %i.ia, align 4, !noalias !153
  %i.ic = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hx, i64 0
  %i.id = insertelement <4 x float> %i.ic, float %i.hz, i64 1
  %i.ie = insertelement <4 x float> %i.id, float %i.ib, i64 2
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.0198
  %i.ig = load float, ptr %i.if, align 4, !noalias !153
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.0198
  %i.ii = load float, ptr %i.ih, align 4, !noalias !153
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.0198
  %i.ik = load float, ptr %i.ij, align 4, !noalias !153
  %i.il = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ig, i64 0
  %i.im = insertelement <4 x float> %i.il, float %i.ii, i64 1
  %i.in = insertelement <4 x float> %i.im, float %i.ik, i64 2
  %i.io = load i64, ptr %i.hq, align 16
  %i.ip = add i64 %i.io, 1
  %i.iq = load <4 x float>, ptr %i.gk, align 16
  %i.ir = load <4 x float>, ptr %i.gx, align 16
  %i.is = load i64, ptr %i.hr, align 8            ; 2 uses
  %i.it = add i64 %i.is, 1                        ; 4 uses
  %i.iu = load i64, ptr %i.hs, align 8            ; 4 uses
  %.not.i67 = icmp ugt i64 %i.it, %i.iu
  br i1 %.not.i67, label %bb.n, label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit61

bb.n:                                             ; preds = %bb.m
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %.loopexit179, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.n, %.lr.ph191
  %.0.i69190 = phi i64 [ %.sroa.speculated122, %.lr.ph191 ], [ %i.iu, %bb.n ]
  %i.iw = shl i64 %.0.i69190, 1
  %.sroa.speculated122 = tail call i64 @llvm.umax.i64(i64 %i.iw, i64 1) ; 3 uses
  %i.ix = icmp ult i64 %.sroa.speculated122, %i.it
  br i1 %i.ix, label %.lr.ph191, label %.loopexit179, !llvm.loop !95

.loopexit179:                                     ; preds = %.lr.ph191, %bb.n
  %.07.i68 = phi i64 [ %i.it, %bb.n ], [ %.sroa.speculated122, %.lr.ph191 ] ; 3 uses
  %i.iy = icmp eq i64 %.07.i68, %i.iu
  br i1 %i.iy, label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit61, label %bb.o

bb.o:                                             ; preds = %.loopexit179
  %i.iz = load ptr, ptr %i.ht, align 8            ; 2 uses
  %i.ja = mul i64 %.07.i68, 112
  %i.jb = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.ja, i64 noundef 16)
  store ptr %i.jb, ptr %i.ht, align 8
  %i.jc = load i64, ptr %i.hr, align 8
  %.not211 = icmp eq i64 %i.jc, 0
  br i1 %.not211, label %.preheader177, label %.lr.ph194

.preheader177:                                    ; preds = %.lr.ph194, %bb.o
  tail call void @_ZN6embree11alignedFreeEPv(ptr noundef %i.iz)
  store i64 %.07.i68, ptr %i.hs, align 8
  br label %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit61

.lr.ph194:                                        ; preds = %bb.o, %.lr.ph194
  %.024.i57193 = phi i64 [ %i.jy, %.lr.ph194 ], [ 0, %bb.o ] ; 3 uses
  %i.jd = load ptr, ptr %i.ht, align 8
  %i.je = getelementptr inbounds nuw [112 x i8], ptr %i.jd, i64 %.024.i57193 ; 7 uses
  %i.jf = getelementptr inbounds nuw [112 x i8], ptr %i.iz, i64 %.024.i57193 ; 7 uses
  %i.jg = load i64, ptr %i.jf, align 16
  store i64 %i.jg, ptr %i.je, align 16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jj = load <4 x float>, ptr %i.ji, align 16
  store <4 x float> %i.jj, ptr %i.jh, align 16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jm = load <4 x float>, ptr %i.jl, align 16
  store <4 x float> %i.jm, ptr %i.jk, align 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jn, ptr noundef nonnull align 16 dereferenceable(16) %i.jo, i64 16, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %i.jr = load <4 x float>, ptr %i.jq, align 16
  store <4 x float> %i.jr, ptr %i.jp, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %i.je, i64 80
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jf, i64 80
  %i.ju = load <4 x float>, ptr %i.jt, align 16
  store <4 x float> %i.ju, ptr %i.js, align 16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jf, i64 96
  %i.jx = load i64, ptr %i.jw, align 16
  store i64 %i.jx, ptr %i.jv, align 16
  %i.jy = add nuw i64 %.024.i57193, 1             ; 2 uses
  %i.jz = load i64, ptr %i.hr, align 8
  %i.ka = icmp ult i64 %i.jy, %i.jz
  br i1 %i.ka, label %.lr.ph194, label %.preheader177, !llvm.loop !93

_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit61: ; preds = %bb.m, %.loopexit179, %.preheader177
  %i.kb = load ptr, ptr %i.ht, align 8
  store i64 %i.it, ptr %i.hr, align 8
  %i.kc = getelementptr inbounds nuw [112 x i8], ptr %i.kb, i64 %i.is ; 8 uses
  store i64 %.sroa.01.0.copyload, ptr %i.kc, align 16
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store <4 x float> %i.iq, ptr %i.kd, align 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store <4 x float> %i.ir, ptr %i.ke, align 16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  store i64 %i.hu, ptr %i.kf, align 16
  %.sroa.1093.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kc, i64 56
  store i64 %.sroa.0.0.copyload, ptr %.sroa.1093.48..sroa_idx, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  store <4 x float> %i.ie, ptr %i.kg, align 16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 80
  store <4 x float> %i.in, ptr %i.kh, align 16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 96
  store i64 %i.ip, ptr %i.ki, align 16
  %i.kj = tail call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %.0198, i64 %.045197) #26, !srcloc !133 ; 3 uses
  %i.kk = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.kj) #26, !srcloc !129
  %.not51 = icmp eq i64 %i.kj, 0
  br i1 %.not51, label %.loopexit176, label %bb.m, !llvm.loop !156

.loopexit176:                                     ; preds = %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit61, %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit56, %bb.l, %bb.h, %_ZN6embree8vector_tINS_4sse212BVHNColliderILi4EE10CollideJobENS_17aligned_allocatorIS4_Lm16EEEE15internal_resizeEmm.exit
  ret void
}

declare void @_ZN6embree11alignedFreeEPv(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES7_SC_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSE_SE_SE_SH_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.42, align 8             ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #22
end_hunk_0
begin_hunk_1_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES8_SD_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSF_SF_SF_SI_PNS0_16TaskGroupContextEEUlvE_EEvRKSF_SP_mb:bb.a
  %.not = icmp eq i64 %i.ef, 0
  br i1 %.not, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6embree5yieldEv()
          to label %bb.au unwind label %bb.aw, !llvm.loop !165

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.eh = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.eh, ptr %5, align 8
  store ptr null, ptr %2, align 8
  %.not.i.i69 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i69, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73: ; preds = %bb.ax, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ei = load ptr, ptr %11, align 8              ; 2 uses
  %.not91 = icmp eq ptr %i.ei, null
  br i1 %.not91, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73
  store ptr %i.ei, ptr %12, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #22
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %12) #23
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %12, align 8
  %.not.i75 = icmp eq ptr %i.ek, null
  br i1 %.not.i75, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.el = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i79 = icmp eq ptr %i.el, null
  br i1 %.not.i79, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #25
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #25
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i80 = icmp eq ptr %i.ev, null
  br i1 %.not.i80, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit58, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit58 ], [ %i.al, %bb.j ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit60, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn36.pn.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES8_SD_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSF_SF_SF_SI_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !162, !align !163 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !162, !align !163
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !162, !align !166
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.s, i64 %i.d ; 6 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.t, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.y = load i64, ptr %i.x, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.aa = load i64, ptr %i.z, align 16
  tail call void @_ZN6embree4sse212BVHNColliderILi4EE15collide_recurseENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES4_S9_mm(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 %.sroa.01.0.copyload.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.u, i64 %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.w, i64 noundef %i.y, i64 noundef %i.aa), !inline_history !167
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES7_SC_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSE_SE_SE_SH_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = add i64 %i.d, %i.b
  %i.ac = lshr i64 %i.ab, 1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES7_SC_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSE_SE_SE_SH_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.ac, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af), !inline_history !167
  %i.ag = load i64, ptr %i.a, align 8
  %i.ah = load i64, ptr %i.f, align 8
  %i.ai = load ptr, ptr %i.ae, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES7_SC_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSE_SE_SE_SH_PNS0_16TaskGroupContextE(i64 noundef %i.ac, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ai), !inline_history !167
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !167
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES7_SC_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSE_SE_SE_SH_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_4sse212BVHNColliderILi4EE21collide_recurse_entryENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES7_SC_EUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSE_SE_SE_SH_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse212BVHNColliderILi4EE15collide_recurseENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES4_S9_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, ptr noundef nonnull align 16 dereferenceable(32) %2, i64 %3, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"struct.embree::BBox", align 16    ; 5 uses
  %8 = alloca %"struct.embree::BBox", align 16    ; 5 uses
  %i.a = and i64 %1, 8
  %.not = icmp eq i64 %i.a, 0
  %i.b = and i64 %3, 8
  %.not46 = icmp eq i64 %i.b, 0                   ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b, !prof !100

bb.b:                                             ; preds = %bb.a
  br i1 %.not46, label %._crit_edge, label %bb.c, !prof !100

._crit_edge:                                      ; preds = %bb.b
  %.pre = load <4 x float>, ptr %2, align 16
  %.phi.trans.insert108 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre107 = load <4 x float>, ptr %.phi.trans.insert108, align 16 ; 2 uses
  %9 = extractelement <4 x float> %.pre107, i64 2
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %3)
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.pre108 = load <4 x float>, ptr %4, align 16   ; 2 uses
  br i1 %.not46, label %bb.e, label %._crit_edge116, !prof !100

._crit_edge116:                                   ; preds = %bb.d
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre111 = load <4 x float>, ptr %.phi.trans.insert120, align 16 ; 2 uses
  %10 = extractelement <4 x float> %.pre111, i64 2
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <4 x float>, ptr %i.e, align 16, !noalias !168 ; 3 uses
  %i.g = load <4 x float>, ptr %2, align 16, !noalias !168 ; 2 uses
  %i.h = fsub <4 x float> %i.f, %i.g              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load <4 x float>, ptr %i.i, align 16, !noalias !173 ; 3 uses
  %i.k = fsub <4 x float> %i.j, %.pre108          ; 3 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.k, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.m = shufflevector <4 x float> %i.h, <4 x float> %i.k, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.n = fadd <2 x float> %i.l, %i.m
  %i.o = fmul <2 x float> %i.l, %i.m
  %i.p = shufflevector <4 x float> %i.h, <4 x float> %i.k, <2 x i32> <i32 0, i32 4>
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.n, <2 x float> %i.o)
  %i.r = fmul <2 x float> %i.q, splat (float 2.000000e+00) ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = extractelement <2 x float> %i.r, i64 1
  %i.u = fcmp ogt float %i.s, %i.t
  %i.v = extractelement <4 x float> %i.f, i64 2
  %i.w = extractelement <4 x float> %i.j, i64 2
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge116, %bb.e
  %i.x = phi float [ %10, %._crit_edge116 ], [ %i.w, %bb.e ]
  %i.y = phi <4 x float> [ %.pre111, %._crit_edge116 ], [ %i.j, %bb.e ]
  %i.z = inttoptr i64 %1 to ptr                   ; 7 uses
  %i.aa = shufflevector <4 x float> %.pre108, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !178
  %i.ad = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aa, <4 x float> %i.ac)
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %12 = load <1 x float>, ptr %11, align 4
  %i.ae = shufflevector <1 x float> %12, <1 x float> poison, <4 x i32> zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.ag = load <4 x float>, ptr %i.af, align 16, !noalias !181
  %i.ah = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ae, <4 x float> %i.ag)
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %14 = load <4 x float>, ptr %13, align 8        ; 2 uses
  %i.ai = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
  %i.ak = load <4 x float>, ptr %i.aj, align 16, !noalias !184
  %i.al = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ai, <4 x float> %i.ak)
  %15 = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.an = load <4 x float>, ptr %i.am, align 16, !noalias !187
  %i.ao = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %15, <4 x float> %i.an)
  %16 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 2 uses
  %i.aq = load <4 x float>, ptr %i.ap, align 16, !noalias !190
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %16, <4 x float> %i.aq)
  %17 = insertelement <4 x float> poison, float %i.x, i64 0
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 112 ; 2 uses
  %i.at = load <4 x float>, ptr %i.as, align 16, !noalias !193
  %i.au = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %18, <4 x float> %i.at)
  %i.av = fcmp ole <4 x float> %i.ad, %i.ao
  %i.aw = fcmp ole <4 x float> %i.ah, %i.ar
  %i.ax = and <4 x i1> %i.av, %i.aw
  %i.ay = fcmp ole <4 x float> %i.al, %i.au
  %i.az = and <4 x i1> %i.ax, %i.ay
  %i.ba = bitcast <4 x i1> %i.az to i4            ; 2 uses
  %i.bb = zext i4 %i.ba to i64                    ; 2 uses
  %i.bc = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bb) #26, !srcloc !129
  %.not47102 = icmp eq i4 %i.ba, 0
  br i1 %.not47102, label %.loopexit, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.be = add i64 %5, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph105, %bb.g
  %.0104 = phi i64 [ %i.bb, %.lr.ph105 ], [ %i.ca, %bb.g ]
  %.045103 = phi i64 [ %i.bc, %.lr.ph105 ], [ %i.cb, %bb.g ] ; 8 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.045103
  %.sroa.016.0.copyload = load i64, ptr %i.bf, align 8 ; 2 uses
  %i.bg = inttoptr i64 %.sroa.016.0.copyload to ptr ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.bg, i32 0, i32 3, i32 1)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.bh, i32 0, i32 3, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.045103
  %i.bj = load float, ptr %i.bi, align 4, !noalias !196
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.045103
  %i.bl = load float, ptr %i.bk, align 4, !noalias !196
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.045103
  %i.bn = load float, ptr %i.bm, align 4, !noalias !196
  %i.bo = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bj, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bn, i64 2
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.045103
  %i.bs = load float, ptr %i.br, align 4, !noalias !196
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.045103
  %i.bu = load float, ptr %i.bt, align 4, !noalias !196
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.045103
  %i.bw = load float, ptr %i.bv, align 4, !noalias !196
  %i.bx = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bs, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 1
  %i.bz = insertelement <4 x float> %i.by, float %i.bw, i64 2
  store <4 x float> %i.bq, ptr %7, align 16
  store <4 x float> %i.bz, ptr %i.bd, align 16
  call void @_ZN6embree4sse212BVHNColliderILi4EE15collide_recurseENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES4_S9_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %.sroa.016.0.copyload, ptr noundef nonnull align 16 dereferenceable(32) %7, i64 %3, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 noundef %i.be, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ca = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %.045103, i64 %.0104) #26, !srcloc !133 ; 3 uses
  %i.cb = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ca) #26, !srcloc !129
  %.not47 = icmp eq i64 %i.ca, 0
  br i1 %.not47, label %.loopexit, label %bb.g, !llvm.loop !199

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %i.cc = phi float [ %9, %._crit_edge ], [ %i.v, %bb.e ]
  %19 = phi <4 x float> [ %.pre107, %._crit_edge ], [ %i.f, %bb.e ]
  %i.cd = phi <4 x float> [ %.pre, %._crit_edge ], [ %i.g, %bb.e ]
  %i.ce = inttoptr i64 %3 to ptr                  ; 7 uses
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !noalias !200
  %i.ci = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cf, <4 x float> %i.ch)
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %21 = load <1 x float>, ptr %20, align 4
  %i.cj = shufflevector <1 x float> %21, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %i.cl = load <4 x float>, ptr %i.ck, align 16, !noalias !203
  %i.cm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cj, <4 x float> %i.cl)
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = load <4 x float>, ptr %22, align 8        ; 2 uses
  %i.cn = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 96 ; 2 uses
  %i.cp = load <4 x float>, ptr %i.co, align 16, !noalias !206
  %i.cq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cn, <4 x float> %i.cp)
  %24 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 48 ; 2 uses
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !noalias !209
  %i.ct = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %24, <4 x float> %i.cs)
  %25 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 80 ; 2 uses
  %i.cv = load <4 x float>, ptr %i.cu, align 16, !noalias !212
  %i.cw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %25, <4 x float> %i.cv)
  %26 = insertelement <4 x float> poison, float %i.cc, i64 0
  %27 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 112 ; 2 uses
  %i.cy = load <4 x float>, ptr %i.cx, align 16, !noalias !215
  %i.cz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %27, <4 x float> %i.cy)
  %i.da = fcmp ole <4 x float> %i.ci, %i.ct
  %i.db = fcmp ole <4 x float> %i.cm, %i.cw
  %i.dc = and <4 x i1> %i.da, %i.db
  %i.dd = fcmp ole <4 x float> %i.cq, %i.cz
  %i.de = and <4 x i1> %i.dc, %i.dd
  %i.df = bitcast <4 x i1> %i.de to i4            ; 2 uses
  %i.dg = zext i4 %i.df to i64                    ; 2 uses
  %i.dh = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.dg) #26, !srcloc !129
  %.not4999 = icmp eq i4 %i.df, 0
  br i1 %.not4999, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dj = add i64 %6, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.043101 = phi i64 [ %i.dh, %.lr.ph ], [ %i.eg, %bb.i ] ; 8 uses
  %.044100 = phi i64 [ %i.dg, %.lr.ph ], [ %i.ef, %bb.i ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.043101
  %.sroa.02.0.copyload = load i64, ptr %i.dk, align 8 ; 2 uses
  %i.dl = inttoptr i64 %.sroa.02.0.copyload to ptr ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.dl, i32 0, i32 3, i32 1)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.dm, i32 0, i32 3, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.043101
  %i.do = load float, ptr %i.dn, align 4, !noalias !218
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.043101
  %i.dq = load float, ptr %i.dp, align 4, !noalias !218
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.043101
  %i.ds = load float, ptr %i.dr, align 4, !noalias !218
  %i.dt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.do, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 1
  %i.dv = insertelement <4 x float> %i.du, float %i.ds, i64 2
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.043101
  %i.dx = load float, ptr %i.dw, align 4, !noalias !218
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.043101
  %i.dz = load float, ptr %i.dy, align 4, !noalias !218
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.043101
  %i.eb = load float, ptr %i.ea, align 4, !noalias !218
  %i.ec = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dx, i64 0
  %i.ed = insertelement <4 x float> %i.ec, float %i.dz, i64 1
  %i.ee = insertelement <4 x float> %i.ed, float %i.eb, i64 2
  store <4 x float> %i.dv, ptr %8, align 16
  store <4 x float> %i.ee, ptr %i.di, align 16
  call void @_ZN6embree4sse212BVHNColliderILi4EE15collide_recurseENS_10NodeRefPtrILi4EEERKNS_4BBoxINS_6Vec3faEEES4_S9_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, ptr noundef nonnull align 16 dereferenceable(32) %2, i64 %.sroa.02.0.copyload, ptr noundef nonnull align 16 dereferenceable(32) %8, i64 noundef %5, i64 noundef %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ef = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %.043101, i64 %.044100) #26, !srcloc !133 ; 3 uses
  %i.eg = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ef) #26, !srcloc !129
  %.not49 = icmp eq i64 %i.ef, 0
  br i1 %.not49, label %.loopexit, label %bb.i, !llvm.loop !221

.loopexit:                                        ; preds = %bb.i, %bb.g, %bb.h, %bb.f, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

declare void @_ZN6embree13TaskScheduler12startThreadsEv() local_unnamed_addr #7

declare noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #7

declare noundef ptr @_ZN6embree13TaskScheduler10swapThreadEPNS0_6ThreadE(ptr noundef) local_unnamed_addr #7

declare void @_ZN6embree12ConditionSys10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !161, !noundef !162
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !162, !align !163
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25
  unreachable
}

declare void @_ZN6embree13TaskScheduler12addSchedulerERKNS_3RefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN6embree13TaskScheduler9TaskQueue13execute_localERNS0_6ThreadEPNS0_4TaskE(ptr noundef nonnull align 64 dereferenceable(786568), ptr noundef nonnull align 64 dereferenceable(786704), ptr noundef) local_unnamed_addr #7

declare void @_ZN6embree13TaskScheduler15removeSchedulerERKNS_3RefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN6embree5yieldEv() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 786696
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #25
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i:      ; preds = %bb.c, %bb.b
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZNKSt14default_deleteIN6embree13TaskScheduler6ThreadEEclEPS2_.exit: ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i, %bb.a
  ret void
}

declare void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_bvh_collider.cpp() #19 section ".text.startup" {
bb.a:
  tail call void @_ZN6embree4sse225collision_regression_testC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6embree4sse220collision_regressionE, ptr noundef nonnull @.str)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6embree14RegressionTestD2Ev, ptr nonnull @_ZN6embree4sse220collision_regressionE, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind memory(none) }

end_hunk_1
