Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen?download=true
inline.NumInlined: 1329
inline.NumDeleted: 628
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Mapgen12calcLightingEN4core8vector3dIsEES2_S2_S2_b:.noexc.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN6Mapgen17propagateSunlightEN4core8vector3dIsEES2_b(ptr noundef nonnull align 8 dereferenceable(200) %0, i48 %1, i48 %2, i1 noundef zeroext %5)
  invoke void @_ZN6Mapgen11spreadLightERKN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 2 dereferenceable(6) %7)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %8) #30
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !95
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void

bb.c:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %9, align 8, !tbaa !96     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.d
  %i.w = load i64, ptr %i.c, align 8, !tbaa !95
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %8) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn12 = phi { ptr, i32 } [ %i.y, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6Mapgen17propagateSunlightEN4core8vector3dIsEES2_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i48 %1, i48 %2, i1 noundef zeroext %3) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.034.0.extract.trunc = trunc i48 %1 to i16 ; 3 uses
  %.sroa.235.0.extract.shift = lshr i48 %1, 16
  %.sroa.235.0.extract.trunc = trunc i48 %.sroa.235.0.extract.shift to i16 ; 2 uses
  %.sroa.033.0.extract.trunc = trunc i48 %2 to i16 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i48 %2, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %i.a = sext i16 %.sroa.034.0.extract.trunc to i32
  %i.b = sext i16 %.sroa.2.0.extract.trunc to i32 ; 2 uses
  %i.c = sext i16 %.sroa.235.0.extract.trunc to i32
  %i.d = ashr i48 %2, 32
  %i.e = trunc nsw i48 %i.d to i32                ; 2 uses
  %i.f = ashr i48 %1, 32
  %i.g = trunc nsw i48 %i.f to i32                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
  %.not = icmp slt i32 %i.i, %i.b
  %.not.fr50 = freeze i1 %.not
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !98   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.not1951 = icmp sgt i32 %i.g, %i.e
  br i1 %.not1951, label %._crit_edge53.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not2042 = icmp sgt i16 %.sroa.034.0.extract.trunc, %.sroa.033.0.extract.trunc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not2042, label %._crit_edge53.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not2138 = icmp slt i16 %.sroa.2.0.extract.trunc, %.sroa.235.0.extract.trunc
  %.not2138.fr = freeze i1 %.not2138
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.q = add i16 %.sroa.2.0.extract.trunc, 1
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.u = load i16, ptr %i.t, align 4, !tbaa !103
  %i.v = sext i16 %i.u to i32
  %i.w = load i32, ptr %i.s, align 4, !tbaa !104
  %i.x = load i32, ptr %i.m, align 4, !tbaa !99   ; 2 uses
  %i.y = load i16, ptr %i.p, align 2, !tbaa !105
  %i.z = sext i16 %i.y to i32
  %invariant.op54 = sub nsw i32 %i.r, %i.z
  %i.aa = load i16, ptr %i.l, align 4, !tbaa !102
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !106 ; 2 uses
  br i1 %.not2138.fr, label %._crit_edge53.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.ad = tail call i16 @llvm.smax.i16(i16 %.sroa.034.0.extract.trunc, i16 %.sroa.033.0.extract.trunc)
  %smax = sext i16 %i.ad to i32
  %smax82 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %i.e)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %.01852 = phi i32 [ %i.aj, %._crit_edge.split ], [ %i.g, %.preheader.preheader ] ; 3 uses
  %i.ae = sub nsw i32 %.01852, %i.v
  %i.af = mul nsw i32 %i.ae, %i.w
  %.reass55 = add i32 %i.af, %invariant.op54
  %i.ag = mul i32 %.reass55, %i.x
  %invariant.op = sub i32 %i.ag, %i.ab
  %i.ah = load ptr, ptr %i.n, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  br label %bb.b

._crit_edge53.split:                              ; preds = %._crit_edge.split, %.preheader.lr.ph.split, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.split:                                ; preds = %.critedge
  %i.aj = add nsw i32 %.01852, 1
  %exitcond83.not = icmp eq i32 %.01852, %smax82
  br i1 %exitcond83.not, label %._crit_edge53.split, label %.preheader, !llvm.loop !221

bb.b:                                             ; preds = %.preheader, %.critedge
  %.01643 = phi i32 [ %i.a, %.preheader ], [ %i.ba, %.critedge ] ; 3 uses
  %.reass = add i32 %.01643, %invariant.op        ; 2 uses
  %i.ak = zext i32 %.reass to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !113
  %i.an = icmp eq i16 %i.am, 127
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not.fr50, label %.lr.ph, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !207
  %i.aq = and i8 %i.ap, 15
  %i.ar = icmp ne i8 %i.aq, 15
  %or.cond = and i1 %3, %i.ar
  br i1 %or.cond, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.reass.pn = phi i32 [ %.reass, %.lr.ph ], [ %.03640, %bb.f ]
  %.039 = phi i32 [ %i.b, %.lr.ph ], [ %i.az, %bb.f ] ; 2 uses
  %.03640 = sub i32 %.reass.pn, %i.x              ; 2 uses
  %i.as = zext i32 %.03640 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.as ; 2 uses
  %i.au = load i16, ptr %i.at, align 4, !tbaa !113
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.av
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.aw, align 1, !tbaa !95
  %i.ax = and i8 %.sroa.0.0.copyload.i.i, 64
  %.not22.not = icmp eq i8 %i.ax, 0
  br i1 %.not22.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 15, ptr %i.ay, align 2, !tbaa !207
  %i.az = add nsw i32 %.039, -1
  %.not21.not = icmp sgt i32 %.039, %i.c
  br i1 %.not21.not, label %bb.e, label %.critedge, !llvm.loop !222

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %i.ba = add nsw i32 %.01643, 1
  %exitcond.not = icmp eq i32 %.01643, %smax
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.b, !llvm.loop !223
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11spreadLightERKN4core8vector3dIsEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::queue.162", align 8    ; 34 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.13.0.copyload = load i16, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !154 ; 5 uses
  %.sroa.22.6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load <2 x i16>, ptr %1, align 2, !tbaa !154
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !154 ; 3 uses
  %.sroa.0108.0.copyload = load i16, ptr %1, align 2, !tbaa !154 ; 3 uses
  %i.c = load <2 x i16>, ptr %2, align 2, !tbaa !154
  %.sroa.22.6.copyload = load i16, ptr %.sroa.22.6..sroa_idx, align 2, !tbaa !154 ; 3 uses
  %.sroa.17.6.copyload = load i16, ptr %2, align 2, !tbaa !154 ; 3 uses
  %.sroa.26.6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.26.6.copyload = load i16, ptr %.sroa.26.6..sroa_idx, align 2, !tbaa !154 ; 4 uses
  %i.d = sext i16 %.sroa.17.6.copyload to i32
  %i.e = sext i16 %.sroa.0108.0.copyload to i32   ; 2 uses
  %i.f = sext i16 %.sroa.22.6.copyload to i32
  %i.g = sext i16 %.sroa.9.0.copyload to i32
  %.not144 = icmp sgt i16 %.sroa.13.0.copyload, %.sroa.26.6.copyload
  br i1 %.not144, label %.preheader133, label %.preheader135.lr.ph

.preheader135.lr.ph:                              ; preds = %bb.a
  %.not50140 = icmp sgt i16 %.sroa.9.0.copyload, %.sroa.22.6.copyload
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not51137 = icmp sgt i16 %.sroa.0108.0.copyload, %.sroa.17.6.copyload
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %brmerge = select i1 %.not50140, i1 true, i1 %.not51137
  br i1 %brmerge, label %.preheader133, label %.preheader135.preheader

.preheader135.preheader:                          ; preds = %.preheader135.lr.ph
  %i.s = sext i16 %.sroa.13.0.copyload to i32
  %5 = call i16 @llvm.smax.i16(i16 %.sroa.13.0.copyload, i16 %.sroa.26.6.copyload)
  %smax155 = sext i16 %5 to i32
  br label %.preheader135

.preheader135:                                    ; preds = %.preheader135.preheader, %._crit_edge143
  %.043145 = phi i32 [ %i.ag, %._crit_edge143 ], [ %i.s, %.preheader135.preheader ] ; 4 uses
  %i.t = trunc nsw i32 %.043145 to i16
  br label %.lr.ph

.preheader133:                                    ; preds = %._crit_edge143, %.preheader135.lr.ph, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !224
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !224  ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %._crit_edge151, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader133
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.af = shufflevector <2 x i16> %i.c, <2 x i16> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %.preheader

._crit_edge143:                                   ; preds = %._crit_edge
  %i.ag = add nsw i32 %.043145, 1
  %exitcond156.not = icmp eq i32 %.043145, %smax155
  br i1 %exitcond156.not, label %.preheader133, label %.preheader135, !llvm.loop !225

.lr.ph:                                           ; preds = %.preheader135, %._crit_edge
  %.042141 = phi i32 [ %i.g, %.preheader135 ], [ %i.bd, %._crit_edge ] ; 4 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !98  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = trunc nsw i32 %.042141 to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !103
  %i.am = sext i16 %i.al to i32
  %i.an = sub nsw i32 %.043145, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !104
  %i.ar = mul nsw i32 %i.an, %i.aq
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.au = load i16, ptr %i.at, align 2, !tbaa !105
  %i.av = sext i16 %i.au to i32
  %i.aw = add i32 %i.ar, %.042141
  %i.ax = sub i32 %i.aw, %i.av
  %i.ay = mul i32 %i.ax, %i.as
  %i.az = load i16, ptr %i.ai, align 4, !tbaa !102
  %i.ba = sext i16 %i.az to i32
  %i.bb = sub nsw i32 %i.e, %i.ba
  %i.bc = add nsw i32 %i.bb, %i.ay
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit.split
  %i.bd = add nsw i32 %.042141, 1
  %exitcond154.not = icmp eq i32 %.042141, %i.f
  br i1 %exitcond154.not, label %._crit_edge143, label %.lr.ph, !llvm.loop !226

bb.b:                                             ; preds = %.lr.ph, %.loopexit.split
  %.040139 = phi i32 [ %i.e, %.lr.ph ], [ %i.hu, %.loopexit.split ] ; 3 uses
  %.041138 = phi i32 [ %i.bc, %.lr.ph ], [ %i.hv, %.loopexit.split ] ; 2 uses
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !106
  %i.bh = zext i32 %.041138 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !113 ; 2 uses
  %i.bk = icmp eq i16 %i.bj, 127
  br i1 %i.bk, label %.loopexit.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 312
  %i.bn = zext i16 %i.bj to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bo, align 1, !tbaa !95 ; 3 uses
  %i.bp = and i8 %.sroa.0.0.copyload.i.i, 32
  %.not52 = icmp eq i8 %i.bp, 0
  br i1 %.not52, label %.loopexit.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %.not53 = icmp eq i8 %i.bq, 0
  br i1 %.not53, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.br = shl i8 %.sroa.0.0.copyload.i.i, 4
  %i.bs = or disjoint i8 %i.br, %i.bq             ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !207
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !207 ; 2 uses
  %.not54 = icmp eq i8 %.pre, 0
  br i1 %.not54, label %.loopexit.split, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.bu = phi i8 [ %i.bs, %.thread ], [ %.pre, %bb.e ] ; 3 uses
  %i.bv = trunc nsw i32 %.040139 to i16
  %i.bw = icmp eq i8 %i.bu, 1
  %i.bx = and i8 %i.bu, 15
  %spec.select.i = call i8 @llvm.usub.sat.i8(i8 %i.bx, i8 1) ; 2 uses
  %i.by = and i8 %i.bu, -16                       ; 2 uses
  %.not35.i = icmp eq i8 %i.by, 0
  %i.bz = add i8 %i.by, -16
  %.0.i = select i1 %.not35.i, i8 0, i8 %i.bz     ; 2 uses
  %i.ca = zext nneg i8 %spec.select.i to i32
  %i.cb = zext i8 %.0.i to i32
  br i1 %i.bw, label %.loopexit.split, label %.split

.split:                                           ; preds = %bb.f, %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit
  %.039.idx136 = phi i64 [ %.039.add, %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit ], [ 0, %bb.f ] ; 2 uses
  %.039.ptr = getelementptr inbounds nuw i8, ptr @g_6dirs, i64 %.039.idx136 ; 3 uses
  %i.cc = load i16, ptr %.039.ptr, align 2, !tbaa !63
  %i.cd = add i16 %i.cc, %i.bv                    ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.039.ptr, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !64
  %i.cg = add i16 %i.cf, %i.aj                    ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.039.ptr, i64 4
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !65
  %i.cj = add i16 %i.ci, %i.t                     ; 4 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.cj to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.cg to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.cd to i48
  %i.ck = or disjoint i48 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.ck, %.sroa.3.0.insert.shift.i ; 2 uses
  %.not.i.i = icmp sgt i16 %.sroa.0108.0.copyload, %i.cd
  %.not6.i.i = icmp slt i16 %.sroa.17.6.copyload, %i.cd
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not6.i.i
  %.not7.i.i = icmp sgt i16 %.sroa.9.0.copyload, %i.cg
  %or.cond12.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not7.i.i
  %.not8.i.i = icmp slt i16 %.sroa.22.6.copyload, %i.cg
  %or.cond14.i.i = select i1 %or.cond12.i.i, i1 true, i1 %.not8.i.i
  br i1 %or.cond14.i.i, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit, label %bb.g

bb.g:                                             ; preds = %.split
  %.not9.i.i = icmp sge i16 %i.cj, %.sroa.13.0.copyload
  %i.cl = icmp sle i16 %i.cj, %.sroa.26.6.copyload
  %or.cond.i = and i1 %.not9.i.i, %i.cl
  br i1 %or.cond.i, label %bb.h, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit

bb.h:                                             ; preds = %bb.g
  %i.cm = sext i16 %i.cj to i32
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !98  ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !103
  %i.cr = sext i16 %i.cq to i32
  %i.cs = sub nsw i32 %i.cm, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !104
  %i.cw = mul nsw i32 %i.cs, %i.cv
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !99
  %i.cy = sext i16 %i.cg to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !105
  %i.db = sext i16 %i.da to i32
  %i.dc = add i32 %i.cw, %i.cy
  %i.dd = sub i32 %i.dc, %i.db
  %i.de = mul i32 %i.dd, %i.cx
  %i.df = sext i16 %i.cd to i32
  %i.dg = load i16, ptr %i.co, align 4, !tbaa !102
  %i.dh = sext i16 %i.dg to i32
  %i.di = sub nsw i32 %i.df, %i.dh
  %i.dj = add nsw i32 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !106
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !207 ; 3 uses
  %i.dq = zext i8 %i.dp to i32                    ; 2 uses
  %i.dr = and i32 %i.dq, 15
  %.not36.i = icmp samesign ult i32 %i.dr, %i.ca
  %i.ds = and i32 %i.dq, 240
  %.not37.i = icmp samesign ult i32 %i.ds, %i.cb
  %or.cond = select i1 %.not36.i, i1 true, i1 %.not37.i
  br i1 %or.cond, label %bb.i, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit

bb.i:                                             ; preds = %bb.h
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.du = load i16, ptr %i.dn, align 4, !tbaa !113
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 312
  %i.dw = zext i16 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.dx, align 1, !tbaa !95
  %i.dy = and i8 %.sroa.0.0.copyload.i.i.i, 32
  %.not38.i = icmp eq i8 %i.dy, 0
  br i1 %.not38.i, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dz = and i8 %i.dp, 15
  %spec.select..i = call i8 @llvm.umax.i8(i8 %spec.select.i, i8 %i.dz)
  %i.ea = and i8 %i.dp, -16
  %.in.i = call i8 @llvm.umax.i8(i8 %.0.i, i8 %i.ea)
  %i.eb = or disjoint i8 %spec.select..i, %.in.i  ; 3 uses
  store i8 %i.eb, ptr %i.do, align 2, !tbaa !207
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !212 ; 4 uses
  %i.ed = load ptr, ptr %i.k, align 8, !tbaa !217
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %.not.i.i.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.ec, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 6
  store i8 %i.eb, ptr %i.ef, align 2, !tbaa !219
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !212
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  br label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split

bb.l:                                             ; preds = %bb.j
  %i.ei = load ptr, ptr %i.m, align 8, !tbaa !227 ; 3 uses
  %i.ej = load ptr, ptr %i.n, align 8, !tbaa !227 ; 6 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3                 ; 3 uses
  %i.eo = icmp ne ptr %i.ei, null
  %.neg.i.i.i = sext i1 %i.eo to i64
  %i.ep = add nsw i64 %i.en, %.neg.i.i.i
  %i.eq = shl nsw i64 %i.ep, 6
  %i.er = load ptr, ptr %i.o, align 8, !tbaa !228
  %i.es = ptrtoint ptr %i.ec to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 3
  %i.ew = add nsw i64 %i.eq, %i.ev
  %i.ex = load ptr, ptr %i.p, align 8, !tbaa !229
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = add nsw i64 %i.ew, %i.fc
  %i.fe = icmp eq i64 %i.fd, 1152921504606846975
  br i1 %i.fe, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #33
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ff = load i64, ptr %i.q, align 8, !tbaa !230 ; 5 uses
  %i.fg = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.ek, %i.fh
  %i.fj = ashr exact i64 %i.fi, 3
  %i.fk = sub i64 %i.ff, %i.fj
  %i.fl = icmp ult i64 %i.fk, 2
  br i1 %i.fl, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.fm = add nsw i64 %i.en, 1                    ; 2 uses
  %i.fn = add nsw i64 %i.en, 2                    ; 3 uses
  %i.fo = shl nsw i64 %i.fn, 1
  %i.fp = icmp ugt i64 %i.ff, %i.fo
  br i1 %i.fp, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.fq = sub i64 %i.ff, %i.fn
  %i.fr = lshr i64 %i.fq, 1
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fr ; 10 uses
  %i.ft = icmp ult ptr %i.fs, %i.ej
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  br i1 %i.ft, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.fv, %i.el                    ; 3 uses
  %i.fx = icmp sgt i64 %i.fw, 8
  br i1 %i.fx, label %bb.r, label %bb.s, !prof !199

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fs, ptr nonnull align 8 %i.ej, i64 %i.fw, i1 false)
  br label %.noexc100

bb.s:                                             ; preds = %bb.q
  %i.fy = icmp eq i64 %i.fw, 8
  br i1 %i.fy, label %bb.t, label %.noexc100

bb.t:                                             ; preds = %bb.s
  %i.fz = load ptr, ptr %i.ej, align 8, !tbaa !232
  store ptr %i.fz, ptr %i.fs, align 8, !tbaa !232
  br label %.noexc100

bb.u:                                             ; preds = %bb.p
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fm ; 2 uses
  %i.gb = ptrtoint ptr %i.fu to i64
  %i.gc = sub i64 %i.gb, %i.el                    ; 3 uses
  %i.gd = ashr exact i64 %i.gc, 3                 ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, 1
  br i1 %i.ge, label %bb.v, label %bb.w, !prof !199

bb.v:                                             ; preds = %bb.u
  %i.gf = sub nsw i64 0, %i.gd
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gf
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %i.ej, i64 %i.gc, i1 false)
  br label %.noexc100

bb.w:                                             ; preds = %bb.u
  %i.gh = icmp eq i64 %i.gc, 8
  br i1 %i.gh, label %bb.x, label %.noexc100

bb.x:                                             ; preds = %bb.w
  %i.gi = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %i.gj = load ptr, ptr %i.ej, align 8, !tbaa !232
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !232
  br label %.noexc100

bb.y:                                             ; preds = %bb.o
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.gk = add i64 %i.ff, 2
  %i.gl = add i64 %i.gk, %.sroa.speculated.i      ; 5 uses
  %i.gm = icmp ugt i64 %i.gl, 1152921504606846975
  br i1 %i.gm, label %bb.z, label %_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE15_M_allocate_mapEm.exit.i, !prof !181

bb.z:                                             ; preds = %bb.y
  %i.gn = icmp ugt i64 %i.gl, 2305843009213693951
  br i1 %i.gn, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc103 unwind label %.loopexit.split-lp

.noexc103:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %bb.z
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc104 unwind label %.loopexit.split-lp

.noexc104:                                        ; preds = %.noexc3.i.i
  unreachable

_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.y
  %i.go = shl nuw nsw i64 %i.gl, 3
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #32
          to label %.noexc105 unwind label %.loopexit134 ; 2 uses

.noexc105:                                        ; preds = %_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE15_M_allocate_mapEm.exit.i
  %i.gq = sub nsw i64 %i.gl, %i.fn
  %i.gr = lshr i64 %i.gq, 1
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gr ; 3 uses
  %i.gt = load ptr, ptr %i.n, align 8, !tbaa !233 ; 3 uses
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 3 uses
  %i.gz = icmp sgt i64 %i.gy, 8
  br i1 %i.gz, label %bb.aa, label %bb.ab, !prof !199

bb.aa:                                            ; preds = %.noexc105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gs, ptr align 8 %i.gt, i64 %i.gy, i1 false)
  br label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

bb.ab:                                            ; preds = %.noexc105
  %i.ha = icmp eq i64 %i.gy, 8
  br i1 %i.ha, label %bb.ac, label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

bb.ac:                                            ; preds = %bb.ab
  %i.hb = load ptr, ptr %i.gt, align 8, !tbaa !232
  store ptr %i.hb, ptr %i.gs, align 8, !tbaa !232
  br label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hc = load ptr, ptr %3, align 8, !tbaa !231
  %i.hd = load i64, ptr %i.q, align 8, !tbaa !230
  %i.he = shl i64 %i.hd, 3
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.he) #31
  store ptr %i.gp, ptr %3, align 8, !tbaa !231
  store i64 %i.gl, ptr %i.q, align 8, !tbaa !230
  br label %.noexc100

.noexc100:                                        ; preds = %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r
  %.0.i102 = phi ptr [ %i.gs, %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i ], [ %i.fs, %bb.t ], [ %i.fs, %bb.r ], [ %i.fs, %bb.s ], [ %i.fs, %bb.v ], [ %i.fs, %bb.w ], [ %i.fs, %bb.x ] ; 3 uses
  store ptr %.0.i102, ptr %i.n, align 8, !tbaa !227
  %i.hf = load ptr, ptr %.0.i102, align 8, !tbaa !232 ; 2 uses
  store ptr %i.hf, ptr %i.r, align 8, !tbaa !228
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 512
  store ptr %i.hg, ptr %i.p, align 8, !tbaa !229
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.0.i102, i64 %i.fm
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -8 ; 2 uses
  store ptr %i.hi, ptr %i.m, align 8, !tbaa !227
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !232 ; 2 uses
  store ptr %i.hj, ptr %i.o, align 8, !tbaa !228
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 512
  store ptr %i.hk, ptr %i.k, align 8, !tbaa !229
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc100, %bb.n
  %i.hl = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32
          to label %.noexc unwind label %.loopexit134

.noexc:                                           ; preds = %bb.ad
  %i.hm = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.hl, ptr %i.hn, align 8, !tbaa !232
  %i.ho = load ptr, ptr %i.j, align 8, !tbaa !212 ; 2 uses
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.ho, align 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 6
  store i8 %i.eb, ptr %i.hp, align 2, !tbaa !219
  %i.hq = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  store ptr %i.hr, ptr %i.m, align 8, !tbaa !227
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !232 ; 3 uses
  store ptr %i.hs, ptr %i.o, align 8, !tbaa !228
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 512
  store ptr %i.ht, ptr %i.k, align 8, !tbaa !229
  br label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split

_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split: ; preds = %bb.k, %.noexc
  %.sink = phi ptr [ %i.hs, %.noexc ], [ %i.eh, %bb.k ]
  store ptr %.sink, ptr %i.j, align 8, !tbaa !212
  br label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit

_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit: ; preds = %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split, %bb.h, %bb.i, %bb.g, %.split
  %.039.add = add nuw nsw i64 %.039.idx136, 6     ; 2 uses
  %.not55 = icmp eq i64 %.039.add, 36
  br i1 %.not55, label %.loopexit.split, label %.split

.loopexit134:                                     ; preds = %bb.ad, %_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE15_M_allocate_mapEm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %bb.m, %.noexc.i.i, %.noexc3.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split:                                  ; preds = %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit, %bb.f, %bb.c, %bb.e, %bb.b
  %i.hu = add nsw i32 %.040139, 1
  %i.hv = add i32 %.041138, 1
  %exitcond.not = icmp eq i32 %.040139, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !235

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.hw = phi ptr [ %i.x, %.preheader.lr.ph ], [ %storemerge.i.i, %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 6 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 2, !tbaa !219
  %i.ia = icmp ult i8 %i.hz, 2
  br i1 %i.ia, label %.split150.us, label %.preheader.split

.split150.us:                                     ; preds = %bb.ao, %.preheader
  %i.ib = load ptr, ptr %i.v, align 8, !tbaa !236 ; 2 uses
  %i.ic = load ptr, ptr %i.ac, align 8, !tbaa !237
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -8
  %.not.i.i58 = icmp eq ptr %i.ib, %i.id
  br i1 %.not.i.i58, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.split150.us
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  br label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.af:                                            ; preds = %.split150.us
  %i.if = load ptr, ptr %i.ad, align 8, !tbaa !238
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef 512) #31
  %i.ig = load ptr, ptr %i.ae, align 8, !tbaa !233
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  store ptr %i.ih, ptr %i.ae, align 8, !tbaa !227
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !232 ; 3 uses
  store ptr %i.ii, ptr %i.ad, align 8, !tbaa !228
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 512
  store ptr %i.ij, ptr %i.ac, align 8, !tbaa !229
  br label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.ae, %bb.af
  %storemerge.i.i = phi ptr [ %i.ie, %bb.ae ], [ %i.ii, %bb.af ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.v, align 8, !tbaa !236
  %i.ik = load ptr, ptr %i.u, align 8, !tbaa !224
  %i.il = icmp eq ptr %i.ik, %storemerge.i.i
  br i1 %i.il, label %._crit_edge151, label %.preheader, !llvm.loop !239

.preheader.split:                                 ; preds = %.preheader, %bb.ao
  %.0.idx148 = phi i64 [ %.0.add, %bb.ao ], [ 0, %.preheader ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @g_6dirs, i64 %.0.idx148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.im = load <2 x i16>, ptr %i.hw, align 2, !tbaa !154
  %i.in = load <2 x i16>, ptr %.0.ptr, align 2, !tbaa !154
  %i.io = add <2 x i16> %i.in, %i.im              ; 4 uses
  %i.ip = load i16, ptr %i.hx, align 2, !tbaa !65
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 4
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !65
  %i.is = add i16 %i.ir, %i.ip                    ; 4 uses
  %.sroa.3.0.insert.ext.i59 = zext i16 %i.is to i48
  %.sroa.3.0.insert.shift.i60 = shl nuw i48 %.sroa.3.0.insert.ext.i59, 32
  %i.it = extractelement <2 x i16> %i.io, i64 1
  %i.iu = extractelement <2 x i16> %i.io, i64 0
  %.v = shufflevector <2 x i16> %i.io, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 0, i32 1, i32 2>
  %i.iv = bitcast <3 x i16> %.v to i48
  %.sroa.0.0.insert.insert.i65 = or disjoint i48 %.sroa.3.0.insert.shift.i60, %i.iv
  store i48 %.sroa.0.0.insert.insert.i65, ptr %4, align 8
  %i.iw = load i8, ptr %i.hy, align 2, !tbaa !219 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ix = icmp ult i8 %i.iw, 2
  br i1 %i.ix, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %.preheader.split
  %i.iy = shufflevector <2 x i16> %i.io, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iz = icmp slt <4 x i16> %i.af, %i.iy
  %i.ja = icmp sgt <4 x i16> %i.af, %i.iy
  %i.jb = shufflevector <4 x i1> %i.iz, <4 x i1> %i.ja, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jc = freeze <4 x i1> %i.jb
  %i.jd = bitcast <4 x i1> %i.jc to i4
  %.not = icmp eq i4 %i.jd, 0
  br i1 %.not, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i77 = icmp sge i16 %i.is, %.sroa.13.0.copyload
  %i.je = icmp sle i16 %i.is, %.sroa.26.6.copyload
  %or.cond.i78 = and i1 %.not9.i.i77, %i.je
  br i1 %or.cond.i78, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.jf = sext i16 %i.is to i32
  %i.jg = load ptr, ptr %i.z, align 8, !tbaa !98  ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.jj = load i16, ptr %i.ji, align 4, !tbaa !103
  %i.jk = sext i16 %i.jj to i32
  %i.jl = sub nsw i32 %i.jf, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 20
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !104
  %i.jp = mul nsw i32 %i.jl, %i.jo
  %i.jq = load i32, ptr %i.jm, align 4, !tbaa !99
  %i.jr = sext i16 %i.it to i32
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 10
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !105
  %i.ju = sext i16 %i.jt to i32
  %i.jv = add i32 %i.jp, %i.jr
  %i.jw = sub i32 %i.jv, %i.ju
  %i.jx = mul i32 %i.jw, %i.jq
  %i.jy = sext i16 %i.iu to i32
  %i.jz = load i16, ptr %i.jh, align 4, !tbaa !102
  %i.ka = sext i16 %i.jz to i32
  %i.kb = sub nsw i32 %i.jy, %i.ka
  %i.kc = add nsw i32 %i.kb, %i.jx
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !106
  %i.kf = zext i32 %i.kc to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kf ; 2 uses
  %i.kh = and i8 %i.iw, 15
  %spec.select.i79 = call i8 @llvm.usub.sat.i8(i8 %i.kh, i8 1) ; 2 uses
  %i.ki = and i8 %i.iw, -16                       ; 2 uses
  %.not35.i80 = icmp eq i8 %i.ki, 0
  %i.kj = add i8 %i.ki, -16
  %.0.i81 = select i1 %.not35.i80, i8 0, i8 %i.kj ; 2 uses
  %i.kk = zext nneg i8 %spec.select.i79 to i32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 2 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 2, !tbaa !207 ; 3 uses
  %i.kn = zext i8 %i.km to i32                    ; 2 uses
  %i.ko = and i32 %i.kn, 15
  %.not36.i82 = icmp samesign ult i32 %i.ko, %i.kk
  br i1 %.not36.i82, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kp = zext i8 %.0.i81 to i32
  %i.kq = and i32 %i.kn, 240
  %.not37.i83 = icmp samesign ult i32 %i.kq, %i.kp
  br i1 %.not37.i83, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kr = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ks = load i16, ptr %i.kg, align 4, !tbaa !113
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 312
  %i.ku = zext i16 %i.ks to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ku
  %.sroa.0.0.copyload.i.i.i84 = load i8, ptr %i.kv, align 1, !tbaa !95
  %i.kw = and i8 %.sroa.0.0.copyload.i.i.i84, 32
  %.not38.i85 = icmp eq i8 %i.kw, 0
  br i1 %.not38.i85, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kx = and i8 %i.km, 15
  %spec.select..i86 = call i8 @llvm.umax.i8(i8 %spec.select.i79, i8 %i.kx)
  %i.ky = and i8 %i.km, -16
  %.in.i87 = call i8 @llvm.umax.i8(i8 %.0.i81, i8 %i.ky)
  %i.kz = or disjoint i8 %spec.select..i86, %.in.i87 ; 3 uses
  store i8 %i.kz, ptr %i.a, align 1, !tbaa !95
  store i8 %i.kz, ptr %i.kl, align 2, !tbaa !207
  %i.la = load ptr, ptr %i.u, align 8, !tbaa !212 ; 3 uses
  %i.lb = load ptr, ptr %i.ab, align 8, !tbaa !217
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 -8
  %.not.i.i.i88 = icmp eq ptr %i.la, %i.lc
  br i1 %.not.i.i.i88, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %i.la, ptr noundef nonnull align 8 dereferenceable(6) %4, i64 6, i1 false), !tbaa.struct !218
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 6
  store i8 %i.kz, ptr %i.ld, align 2, !tbaa !219
  %i.le = load ptr, ptr %i.u, align 8, !tbaa !212
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.lf, ptr %i.u, align 8, !tbaa !212
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  invoke void @_ZNSt5dequeISt4pairIN4core8vector3dIsEEhESaIS4_EE16_M_push_back_auxIJRKS3_RhEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %.preheader.split, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.0.add = add nuw nsw i64 %.0.idx148, 6         ; 2 uses
  %.not49 = icmp eq i64 %.0.add, 36
  br i1 %.not49, label %.split150.us, label %.preheader.split, !llvm.loop !240

bb.ap:                                            ; preds = %bb.an
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ar

._crit_edge151:                                   ; preds = %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit, %.preheader133
  %i.lh = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i91, label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge151
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !233 ; 2 uses
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !234 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = icmp ult ptr %i.lk, %i.lm
  br i1 %i.ln, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.lp, %.lr.ph.i.i.i.i ], [ %i.lk, %bb.aq ] ; 3 uses
  %i.lo = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !232
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef 512) #31
  %i.lp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.lq = icmp ult ptr %.06.i.i.i.i, %i.ll
end_hunk_0
