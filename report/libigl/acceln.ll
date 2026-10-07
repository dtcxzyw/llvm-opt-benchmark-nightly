Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/acceln?download=true
inline.NumInlined: 377
inline.NumDeleted: 168
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6embree6AccelN12accels_buildEv:bb.a

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8
  %.not.i24 = icmp eq ptr %i.s, null
  br i1 %.not.i24, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit25

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre72.pre = load ptr, ptr %i.a, align 16
  %.pre71.pre = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit"

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit25: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ %i.r, %bb.h ], [ %i.r, %bb.i ]
  %i.t = load ptr, ptr %1, align 8
  %.not.i.i26 = icmp eq ptr %i.t, null
  br i1 %.not.i.i26, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit27, label %bb.j

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit25
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit27

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit27: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit25, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn.i

"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit": ; preds = %_ZNSt6vectorIPN6embree5AccelESaIS2_EE13shrink_to_fitEv.exit, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit
  %i.u = phi ptr [ %i.i, %_ZNSt6vectorIPN6embree5AccelESaIS2_EE13shrink_to_fitEv.exit ], [ %.pre72.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ] ; 8 uses
  %i.v = phi ptr [ %i.h, %_ZNSt6vectorIPN6embree5AccelESaIS2_EE13shrink_to_fitEv.exit ], [ %.pre71.pre, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %.not64 = icmp eq ptr %i.v, %i.u
  br i1 %.not64, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.aa = extractelement <4 x i1> %i.az, i64 3
  %i.ab = select i1 %i.aa, ptr @.str.3, ptr null
  %i.ac = extractelement <4 x i1> %i.az, i64 2
  %i.ad = select i1 %i.ac, ptr @.str.4, ptr null
  %i.ae = extractelement <4 x i1> %i.az, i64 1
  %i.af = select i1 %i.ae, ptr @.str.5, ptr null
  %i.ag = extractelement <4 x i1> %i.az, i64 0
  %i.ah = select i1 %i.ag, ptr @.str.6, ptr null
  %i.ai = icmp eq i64 %i.y, 8
  br i1 %i.ai, label %bb.k, label %._crit_edge.thread

.lr.ph:                                           ; preds = %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit", %.lr.ph
  %.01751 = phi i64 [ %i.ba, %.lr.ph ], [ 0, %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit" ] ; 2 uses
  %i.aj = phi <4 x i1> [ %i.az, %.lr.ph ], [ splat (i1 true), %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit" ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.01751
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 312
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = insertelement <4 x ptr> poison, ptr %i.at, i64 0
  %i.av = insertelement <4 x ptr> %i.au, ptr %i.ar, i64 1
  %i.aw = insertelement <4 x ptr> %i.av, ptr %i.ap, i64 2
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.an, i64 3
  %i.ay = icmp ne <4 x ptr> %i.ax, splat (ptr null)
  %i.az = and <4 x i1> %i.aj, %i.ay               ; 5 uses
  %i.ba = add nuw i64 %.01751, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

bb.k:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr %i.u, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load i32, ptr %i.bc, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.bd, ptr %i.be, align 16
  %i.bf = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load <4 x float>, ptr %i.bg, align 16
  store <4 x float> %i.bi, ptr %i.bh, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = load <4 x float>, ptr %i.bj, align 16
  store <4 x float> %i.bl, ptr %i.bk, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load <4 x float>, ptr %i.bm, align 16
  store <4 x float> %i.bo, ptr %i.bn, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load <4 x float>, ptr %i.bp, align 16
  store <4 x float> %i.br, ptr %i.bq, align 16
  %i.bs = load ptr, ptr %i.u, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.bu, ptr noundef nonnull align 8 dereferenceable(280) %i.bt, i64 280, i1 false)
  br label %.loopexit

._crit_edge.thread:                               ; preds = %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit", %._crit_edge
  %.018.lcssa87 = phi ptr [ %i.ah, %._crit_edge ], [ @.str.6, %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit" ]
  %.019.lcssa86 = phi ptr [ %i.af, %._crit_edge ], [ @.str.5, %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit" ]
  %.020.lcssa85 = phi ptr [ %i.ad, %._crit_edge ], [ @.str.4, %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit" ]
  %.021.lcssa84 = phi ptr [ %i.ab, %._crit_edge ], [ @.str.3, %"_ZN6embree12parallel_forImZNS_6AccelN12accels_buildEvE3$_0EEvT_RKT0_.exit" ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.bv, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN6embree6AccelN9intersectEPNS_5Accel12IntersectorsER9RTCRayHitPNS_15RayQueryContextE, ptr %i.bx, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZN6embree6AccelN8occludedEPNS_5Accel12IntersectorsER6RTCRayPNS_15RayQueryContextE, ptr %.sroa.437.0..sroa_idx, align 16
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZN6embree6AccelN10pointQueryEPNS_5Accel12IntersectorsEPNS_11PointQueryKILi1EEEPNS_17PointQueryContextE, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.021.lcssa84, ptr %.sroa.639.0..sroa_idx, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZN6embree6AccelN10intersect4EPKvPNS_5Accel12IntersectorsER10RTCRayHit4PNS_15RayQueryContextE, ptr %i.by, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @_ZN6embree6AccelN9occluded4EPKvPNS_5Accel12IntersectorsER7RTCRay4PNS_15RayQueryContextE, ptr %.sroa.434.0..sroa_idx, align 16
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.020.lcssa85, ptr %.sroa.535.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @_ZN6embree6AccelN10intersect8EPKvPNS_5Accel12IntersectorsER10RTCRayHit8PNS_15RayQueryContextE, ptr %i.bz, align 16
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr @_ZN6embree6AccelN9occluded8EPKvPNS_5Accel12IntersectorsER7RTCRay8PNS_15RayQueryContextE, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.019.lcssa86, ptr %.sroa.532.0..sroa_idx, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @_ZN6embree6AccelN11intersect16EPKvPNS_5Accel12IntersectorsER11RTCRayHit16PNS_15RayQueryContextE, ptr %i.ca, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr @_ZN6embree6AccelN10occluded16EPKvPNS_5Accel12IntersectorsER8RTCRay16PNS_15RayQueryContextE, ptr %.sroa.429.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %.018.lcssa87, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.cb, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.cc, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.cd, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.ce, align 16
  %.not65 = icmp eq ptr %i.v, %i.u
  br i1 %.not65, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %._crit_edge.thread, %.lr.ph60
  %i.cf = phi <4 x float> [ %i.cw, %.lr.ph60 ], [ splat (float -inf), %._crit_edge.thread ]
  %i.cg = phi <4 x float> [ %i.ct, %.lr.ph60 ], [ splat (float +inf), %._crit_edge.thread ]
  %i.ch = phi <4 x float> [ %i.cq, %.lr.ph60 ], [ splat (float -inf), %._crit_edge.thread ]
  %i.ci = phi <4 x float> [ %i.cn, %.lr.ph60 ], [ splat (float +inf), %._crit_edge.thread ]
  %.058 = phi i64 [ %i.cx, %.lr.ph60 ], [ 0, %._crit_edge.thread ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.058
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !noalias !89
  %i.cn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ci, <4 x float> %i.cm) ; 2 uses
  store <4 x float> %i.cn, ptr %i.cb, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cp = load <4 x float>, ptr %i.co, align 16, !noalias !90
  %i.cq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ch, <4 x float> %i.cp) ; 2 uses
  store <4 x float> %i.cq, ptr %i.cc, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !noalias !91
  %i.ct = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cg, <4 x float> %i.cs) ; 2 uses
  store <4 x float> %i.ct, ptr %i.cd, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cv = load <4 x float>, ptr %i.cu, align 16, !noalias !92
  %i.cw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cf, <4 x float> %i.cv) ; 2 uses
  store <4 x float> %i.cw, ptr %i.ce, align 16
  %i.cx = add nuw i64 %.058, 1                    ; 2 uses
  %exitcond70.not = icmp eq i64 %i.cx, %i.z
  br i1 %exitcond70.not, label %.loopexit, label %.lr.ph60, !llvm.loop !88

.loopexit:                                        ; preds = %.lr.ph60, %._crit_edge.thread, %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6embree6AccelN13accels_selectEb(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(392) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 16             ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sink13.v.i = select i1 %1, i64 232, i64 256   ; 2 uses
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN6embree5Accel12Intersectors6selectEb.exit.us
  %i.e = phi ptr [ %i.w, %_ZN6embree5Accel12Intersectors6selectEb.exit.us ], [ %i.d, %.lr.ph ]
  %.04.us = phi i64 [ %i.u, %_ZN6embree5Accel12Intersectors6selectEb.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04.us
  %i.g = load ptr, ptr %i.f, align 8              ; 10 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.us = icmp eq ptr %i.i, null
  br i1 %.not.i.us, label %bb.b, label %.thread4.i.us

.thread4.i.us:                                    ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.m = load ptr, ptr %i.l, align 8
  %.not8.i.us = icmp eq ptr %i.m, null
  br i1 %.not8.i.us, label %bb.c, label %.sink.split.i.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.o = load ptr, ptr %i.n, align 8
  %.not6.i.us = icmp eq ptr %i.o, null
  br i1 %.not6.i.us, label %bb.c, label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.b, %.thread4.i.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i.us, %bb.b, %.thread4.i.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.s = load ptr, ptr %i.r, align 8
  %.not9.i.us = icmp eq ptr %i.s, null
  br i1 %.not9.i.us, label %_ZN6embree5Accel12Intersectors6selectEb.exit.us, label %.sink.split11.i.us

.sink.split11.i.us:                               ; preds = %bb.c
  %.sink13.i.us = getelementptr inbounds nuw i8, ptr %2, i64 %.sink13.v.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %.sink13.i.us, i64 24, i1 false)
  br label %_ZN6embree5Accel12Intersectors6selectEb.exit.us

_ZN6embree5Accel12Intersectors6selectEb.exit.us:  ; preds = %.sink.split11.i.us, %bb.c
  %i.u = add nuw i64 %.04.us, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = load ptr, ptr %i.a, align 16             ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %_ZN6embree5Accel12Intersectors6selectEb.exit, %_ZN6embree5Accel12Intersectors6selectEb.exit.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6embree5Accel12Intersectors6selectEb.exit
  %i.ac = phi ptr [ %i.au, %_ZN6embree5Accel12Intersectors6selectEb.exit ], [ %i.d, %.lr.ph ]
  %.04 = phi i64 [ %i.as, %_ZN6embree5Accel12Intersectors6selectEb.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04
  %i.ae = load ptr, ptr %i.ad, align 8            ; 10 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.split
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not7.i = icmp eq ptr %i.ak, null
  br i1 %.not7.i, label %bb.e, label %.thread3.i

bb.d:                                             ; preds = %.lr.ph.split
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  %i.am = load ptr, ptr %i.al, align 8
  %.not6.i = icmp eq ptr %i.am, null
  br i1 %.not6.i, label %bb.e, label %.thread3.i

.thread3.i:                                       ; preds = %bb.d, %.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.thread3.i, %.thread.i, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 336
  %i.aq = load ptr, ptr %i.ap, align 8
  %.not9.i = icmp eq ptr %i.aq, null
  br i1 %.not9.i, label %_ZN6embree5Accel12Intersectors6selectEb.exit, label %.sink.split11.i

.sink.split11.i:                                  ; preds = %bb.e
  %.sink13.i = getelementptr inbounds nuw i8, ptr %3, i64 %.sink13.v.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %.sink13.i, i64 24, i1 false)
  br label %_ZN6embree5Accel12Intersectors6selectEb.exit

_ZN6embree5Accel12Intersectors6selectEb.exit:     ; preds = %bb.e, %.sink.split11.i
  %i.as = add nuw i64 %.04, 1                     ; 2 uses
  %i.at = load ptr, ptr %i.b, align 8
  %i.au = load ptr, ptr %i.a, align 16            ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = icmp ult i64 %i.as, %i.ay
  br i1 %i.az, label %.lr.ph.split, label %._crit_edge, !llvm.loop !93
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6AccelN21accels_deleteGeometryEm(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(392) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 16             ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ]
  %.04 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 16 dereferenceable(84) %i.g, i64 noundef %1)
  %i.k = add nuw i64 %.04, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.a, align 16             ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !94
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6AccelN12accels_clearEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(392) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 16             ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ]
  %.03 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.03
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 16 dereferenceable(84) %i.g)
  %i.k = add nuw i64 %.03, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load ptr, ptr %i.a, align 16             ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !95
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6embree8RefCount6refIncEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree8RefCount6refDecEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 -1 seq_cst, align 8
  %.not = icmp eq i64 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree9AccelData14deleteGeometryEm(ptr noundef nonnull align 16 dereferenceable(84) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree5Accel9immutableEv(ptr noundef nonnull align 16 dereferenceable(368) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPN6embree5AccelESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIPN6embree5AccelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIPN6embree5AccelESaIS2_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIPN6embree5AccelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN6embree5AccelESaIS2_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN6embree5AccelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIPN6embree5AccelESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

_ZNSt12_Vector_baseIPN6embree5AccelESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN6embree5AccelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIPN6embree5AccelESaIS2_EED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPN6embree5AccelESaIS2_EE11_M_allocateEm.exit.i.i
end_hunk_0
