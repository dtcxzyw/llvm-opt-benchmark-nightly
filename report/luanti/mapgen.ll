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
  br i1 %exitcond83.not, label %._crit_edge53.split, label %.preheader, !llvm.loop !219

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
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !205
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
  store i8 15, ptr %i.ay, align 2, !tbaa !205
  %i.az = add nsw i32 %.039, -1
  %.not21.not = icmp sgt i32 %.039, %i.c
  br i1 %.not21.not, label %bb.e, label %.critedge, !llvm.loop !220

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %i.ba = add nsw i32 %.01643, 1
  %exitcond.not = icmp eq i32 %.01643, %smax
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.b, !llvm.loop !221
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11spreadLightERKN4core8vector3dIsEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::queue.162", align 8    ; 33 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.13.0.copyload = load i16, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !154 ; 4 uses
  %.sroa.22.6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load <2 x i16>, ptr %1, align 2, !tbaa !154
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !154 ; 3 uses
  %.sroa.0108.0.copyload = load i16, ptr %1, align 2, !tbaa !154 ; 3 uses
  %i.c = load <2 x i16>, ptr %2, align 2, !tbaa !154
  %.sroa.22.6.copyload = load i16, ptr %.sroa.22.6..sroa_idx, align 2, !tbaa !154 ; 3 uses
  %.sroa.17.6.copyload = load i16, ptr %2, align 2, !tbaa !154 ; 3 uses
  %.sroa.26.6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.26.6.copyload = load i16, ptr %.sroa.26.6..sroa_idx, align 2, !tbaa !154 ; 4 uses
  %5 = sext i16 %.sroa.17.6.copyload to i32
  %i.d = sext i16 %.sroa.0108.0.copyload to i32   ; 2 uses
  %i.e = sext i16 %.sroa.22.6.copyload to i32
  %i.f = sext i16 %.sroa.9.0.copyload to i32
  %i.g = sext i16 %.sroa.26.6.copyload to i32
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
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %brmerge = select i1 %.not50140, i1 true, i1 %.not51137
  br i1 %brmerge, label %.preheader133, label %.preheader135.preheader

.preheader135.preheader:                          ; preds = %.preheader135.lr.ph
  %i.s = sext i16 %.sroa.13.0.copyload to i32
  br label %.preheader135

.preheader135:                                    ; preds = %.preheader135.preheader, %._crit_edge143
  %.043145 = phi i32 [ %i.ag, %._crit_edge143 ], [ %i.s, %.preheader135.preheader ] ; 4 uses
  %i.t = trunc nsw i32 %.043145 to i16
  br label %.lr.ph

.preheader133:                                    ; preds = %._crit_edge143, %.preheader135.lr.ph, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !222
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !222  ; 2 uses
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
  %exitcond156.not = icmp eq i32 %.043145, %i.g
  br i1 %exitcond156.not, label %.preheader133, label %.preheader135, !llvm.loop !223

.lr.ph:                                           ; preds = %.preheader135, %._crit_edge
  %.042141 = phi i32 [ %i.f, %.preheader135 ], [ %i.bd, %._crit_edge ] ; 4 uses
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
  %i.bb = sub nsw i32 %i.d, %i.ba
  %i.bc = add nsw i32 %i.bb, %i.ay
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit.split
  %i.bd = add nsw i32 %.042141, 1
  %exitcond154.not = icmp eq i32 %.042141, %i.e
  br i1 %exitcond154.not, label %._crit_edge143, label %.lr.ph, !llvm.loop !224

bb.b:                                             ; preds = %.lr.ph, %.loopexit.split
  %.040139 = phi i32 [ %i.d, %.lr.ph ], [ %i.hp, %.loopexit.split ] ; 3 uses
  %.041138 = phi i32 [ %i.bc, %.lr.ph ], [ %i.hq, %.loopexit.split ] ; 2 uses
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
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !205
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !205 ; 2 uses
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
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !205 ; 3 uses
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
  store i8 %i.eb, ptr %i.do, align 2, !tbaa !205
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !210 ; 4 uses
  %i.ed = load ptr, ptr %i.k, align 8, !tbaa !215
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %.not.i.i.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.ec, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 6
  store i8 %i.eb, ptr %i.ef, align 2, !tbaa !217
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !210
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  br label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split

bb.l:                                             ; preds = %bb.j
  %i.ei = load ptr, ptr %i.m, align 8, !tbaa !225 ; 5 uses
  %i.ej = load ptr, ptr %i.n, align 8, !tbaa !225 ; 8 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64               ; 4 uses
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3                 ; 3 uses
  %i.eo = icmp ne ptr %i.ei, null
  %.neg.i.i.i = sext i1 %i.eo to i64
  %i.ep = add nsw i64 %i.en, %.neg.i.i.i
  %i.eq = shl nsw i64 %i.ep, 6
  %i.er = load ptr, ptr %i.o, align 8, !tbaa !226
  %i.es = ptrtoint ptr %i.ec to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 3
  %i.ew = add nsw i64 %i.eq, %i.ev
  %i.ex = load ptr, ptr %i.p, align 8, !tbaa !227
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !222
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
  %i.ff = load i64, ptr %i.q, align 8, !tbaa !228 ; 6 uses
  %i.fg = load ptr, ptr %3, align 8, !tbaa !229   ; 3 uses
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
  br i1 %i.fx, label %bb.r, label %bb.s, !prof !197

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fs, ptr nonnull align 8 %i.ej, i64 %i.fw, i1 false)
  br label %.noexc100

bb.s:                                             ; preds = %bb.q
  %i.fy = icmp eq i64 %i.fw, 8
  br i1 %i.fy, label %bb.t, label %.noexc100

bb.t:                                             ; preds = %bb.s
  %i.fz = load ptr, ptr %i.ej, align 8, !tbaa !230
  store ptr %i.fz, ptr %i.fs, align 8, !tbaa !230
  br label %.noexc100

bb.u:                                             ; preds = %bb.p
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fm ; 2 uses
  %i.gb = ptrtoint ptr %i.fu to i64
  %i.gc = sub i64 %i.gb, %i.el                    ; 3 uses
  %i.gd = ashr exact i64 %i.gc, 3                 ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, 1
  br i1 %i.ge, label %bb.v, label %bb.w, !prof !197

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
  %i.gj = load ptr, ptr %i.ej, align 8, !tbaa !230
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !230
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
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.el                    ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, 8
  br i1 %i.gw, label %bb.aa, label %bb.ab, !prof !197

bb.aa:                                            ; preds = %.noexc105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gs, ptr align 8 %i.ej, i64 %i.gv, i1 false)
  br label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

bb.ab:                                            ; preds = %.noexc105
  %i.gx = icmp eq i64 %i.gv, 8
  br i1 %i.gx, label %bb.ac, label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

bb.ac:                                            ; preds = %bb.ab
  %i.gy = load ptr, ptr %i.ej, align 8, !tbaa !230
  store ptr %i.gy, ptr %i.gs, align 8, !tbaa !230
  br label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.gz = shl i64 %i.ff, 3
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.gz) #31
  store ptr %i.gp, ptr %3, align 8, !tbaa !229
  store i64 %i.gl, ptr %i.q, align 8, !tbaa !228
  br label %.noexc100

.noexc100:                                        ; preds = %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r
  %.0.i102 = phi ptr [ %i.gs, %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i ], [ %i.fs, %bb.t ], [ %i.fs, %bb.r ], [ %i.fs, %bb.s ], [ %i.fs, %bb.v ], [ %i.fs, %bb.w ], [ %i.fs, %bb.x ] ; 3 uses
  store ptr %.0.i102, ptr %i.n, align 8, !tbaa !225
  %i.ha = load ptr, ptr %.0.i102, align 8, !tbaa !230 ; 2 uses
  store ptr %i.ha, ptr %i.r, align 8, !tbaa !226
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 512
  store ptr %i.hb, ptr %i.p, align 8, !tbaa !227
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.0.i102, i64 %i.fm
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8 ; 3 uses
  store ptr %i.hd, ptr %i.m, align 8, !tbaa !225
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !230 ; 2 uses
  store ptr %i.he, ptr %i.o, align 8, !tbaa !226
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 512
  store ptr %i.hf, ptr %i.k, align 8, !tbaa !227
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc100, %bb.n
  %i.hg = phi ptr [ %i.hd, %.noexc100 ], [ %i.ei, %bb.n ]
  %i.hh = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32
          to label %.noexc unwind label %.loopexit134

.noexc:                                           ; preds = %bb.ad
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !230
  %i.hj = load ptr, ptr %i.j, align 8, !tbaa !210 ; 2 uses
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.hj, align 2
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 6
  store i8 %i.eb, ptr %i.hk, align 2, !tbaa !217
  %i.hl = load ptr, ptr %i.m, align 8, !tbaa !231
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  store ptr %i.hm, ptr %i.m, align 8, !tbaa !225
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !230 ; 3 uses
  store ptr %i.hn, ptr %i.o, align 8, !tbaa !226
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 512
  store ptr %i.ho, ptr %i.k, align 8, !tbaa !227
  br label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split

_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split: ; preds = %bb.k, %.noexc
  %.sink = phi ptr [ %i.hn, %.noexc ], [ %i.eh, %bb.k ]
  store ptr %.sink, ptr %i.j, align 8, !tbaa !210
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
  %i.hp = add nsw i32 %.040139, 1
  %i.hq = add i32 %.041138, 1
  %exitcond.not = icmp eq i32 %.040139, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !232

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.hr = phi ptr [ %i.x, %.preheader.lr.ph ], [ %storemerge.i.i, %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 6 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 2, !tbaa !217
  %i.hv = icmp ult i8 %i.hu, 2
  br i1 %i.hv, label %.split150.us, label %.preheader.split

.split150.us:                                     ; preds = %bb.ao, %.preheader
  %i.hw = load ptr, ptr %i.v, align 8, !tbaa !233 ; 2 uses
  %i.hx = load ptr, ptr %i.ac, align 8, !tbaa !234
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -8
  %.not.i.i58 = icmp eq ptr %i.hw, %i.hy
  br i1 %.not.i.i58, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.split150.us
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  br label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.af:                                            ; preds = %.split150.us
  %i.ia = load ptr, ptr %i.ad, align 8, !tbaa !235
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef 512) #31
  %i.ib = load ptr, ptr %i.ae, align 8, !tbaa !236
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  store ptr %i.ic, ptr %i.ae, align 8, !tbaa !225
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !230 ; 3 uses
  store ptr %i.id, ptr %i.ad, align 8, !tbaa !226
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 512
  store ptr %i.ie, ptr %i.ac, align 8, !tbaa !227
  br label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.ae, %bb.af
  %storemerge.i.i = phi ptr [ %i.hz, %bb.ae ], [ %i.id, %bb.af ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.v, align 8, !tbaa !233
  %i.if = load ptr, ptr %i.u, align 8, !tbaa !222
  %i.ig = icmp eq ptr %i.if, %storemerge.i.i
  br i1 %i.ig, label %._crit_edge151, label %.preheader, !llvm.loop !237

.preheader.split:                                 ; preds = %.preheader, %bb.ao
  %.0.idx148 = phi i64 [ %.0.add, %bb.ao ], [ 0, %.preheader ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @g_6dirs, i64 %.0.idx148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ih = load <2 x i16>, ptr %i.hr, align 2, !tbaa !154
  %i.ii = load <2 x i16>, ptr %.0.ptr, align 2, !tbaa !154
  %i.ij = add <2 x i16> %i.ii, %i.ih              ; 4 uses
  %i.ik = load i16, ptr %i.hs, align 2, !tbaa !65
  %i.il = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 4
  %i.im = load i16, ptr %i.il, align 2, !tbaa !65
  %i.in = add i16 %i.im, %i.ik                    ; 4 uses
  %.sroa.3.0.insert.ext.i59 = zext i16 %i.in to i48
  %.sroa.3.0.insert.shift.i60 = shl nuw i48 %.sroa.3.0.insert.ext.i59, 32
  %i.io = extractelement <2 x i16> %i.ij, i64 1
  %i.ip = extractelement <2 x i16> %i.ij, i64 0
  %.v = shufflevector <2 x i16> %i.ij, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 0, i32 1, i32 2>
  %i.iq = bitcast <3 x i16> %.v to i48
  %.sroa.0.0.insert.insert.i65 = or disjoint i48 %.sroa.3.0.insert.shift.i60, %i.iq
  store i48 %.sroa.0.0.insert.insert.i65, ptr %4, align 8
  %i.ir = load i8, ptr %i.ht, align 2, !tbaa !217 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.is = icmp ult i8 %i.ir, 2
  br i1 %i.is, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %.preheader.split
  %i.it = shufflevector <2 x i16> %i.ij, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iu = icmp slt <4 x i16> %i.af, %i.it
  %i.iv = icmp sgt <4 x i16> %i.af, %i.it
  %i.iw = shufflevector <4 x i1> %i.iu, <4 x i1> %i.iv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ix = freeze <4 x i1> %i.iw
  %i.iy = bitcast <4 x i1> %i.ix to i4
  %.not = icmp eq i4 %i.iy, 0
  br i1 %.not, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i77 = icmp sge i16 %i.in, %.sroa.13.0.copyload
  %i.iz = icmp sle i16 %i.in, %.sroa.26.6.copyload
  %or.cond.i78 = and i1 %.not9.i.i77, %i.iz
  br i1 %or.cond.i78, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.ja = sext i16 %i.in to i32
  %i.jb = load ptr, ptr %i.z, align 8, !tbaa !98  ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.je = load i16, ptr %i.jd, align 4, !tbaa !103
  %i.jf = sext i16 %i.je to i32
  %i.jg = sub nsw i32 %i.ja, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 20
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !104
  %i.jk = mul nsw i32 %i.jg, %i.jj
  %i.jl = load i32, ptr %i.jh, align 4, !tbaa !99
  %i.jm = sext i16 %i.io to i32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 10
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !105
  %i.jp = sext i16 %i.jo to i32
  %i.jq = add i32 %i.jk, %i.jm
  %i.jr = sub i32 %i.jq, %i.jp
  %i.js = mul i32 %i.jr, %i.jl
  %i.jt = sext i16 %i.ip to i32
  %i.ju = load i16, ptr %i.jc, align 4, !tbaa !102
  %i.jv = sext i16 %i.ju to i32
  %i.jw = sub nsw i32 %i.jt, %i.jv
  %i.jx = add nsw i32 %i.jw, %i.js
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !106
  %i.ka = zext i32 %i.jx to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ka ; 2 uses
  %i.kc = and i8 %i.ir, 15
  %spec.select.i79 = call i8 @llvm.usub.sat.i8(i8 %i.kc, i8 1) ; 2 uses
  %i.kd = and i8 %i.ir, -16                       ; 2 uses
  %.not35.i80 = icmp eq i8 %i.kd, 0
  %i.ke = add i8 %i.kd, -16
  %.0.i81 = select i1 %.not35.i80, i8 0, i8 %i.ke ; 2 uses
  %i.kf = zext nneg i8 %spec.select.i79 to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 2 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !205 ; 3 uses
  %i.ki = zext i8 %i.kh to i32                    ; 2 uses
  %i.kj = and i32 %i.ki, 15
  %.not36.i82 = icmp samesign ult i32 %i.kj, %i.kf
  br i1 %.not36.i82, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kk = zext i8 %.0.i81 to i32
  %i.kl = and i32 %i.ki, 240
  %.not37.i83 = icmp samesign ult i32 %i.kl, %i.kk
  br i1 %.not37.i83, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.km = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.kn = load i16, ptr %i.kb, align 4, !tbaa !113
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 312
  %i.kp = zext i16 %i.kn to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kp
  %.sroa.0.0.copyload.i.i.i84 = load i8, ptr %i.kq, align 1, !tbaa !95
  %i.kr = and i8 %.sroa.0.0.copyload.i.i.i84, 32
  %.not38.i85 = icmp eq i8 %i.kr, 0
  br i1 %.not38.i85, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ks = and i8 %i.kh, 15
  %spec.select..i86 = call i8 @llvm.umax.i8(i8 %spec.select.i79, i8 %i.ks)
  %i.kt = and i8 %i.kh, -16
  %.in.i87 = call i8 @llvm.umax.i8(i8 %.0.i81, i8 %i.kt)
  %i.ku = or disjoint i8 %spec.select..i86, %.in.i87 ; 3 uses
  store i8 %i.ku, ptr %i.a, align 1, !tbaa !95
  store i8 %i.ku, ptr %i.kg, align 2, !tbaa !205
  %i.kv = load ptr, ptr %i.u, align 8, !tbaa !210 ; 3 uses
  %i.kw = load ptr, ptr %i.ab, align 8, !tbaa !215
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 -8
  %.not.i.i.i88 = icmp eq ptr %i.kv, %i.kx
  br i1 %.not.i.i.i88, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %i.kv, ptr noundef nonnull align 8 dereferenceable(6) %4, i64 6, i1 false), !tbaa.struct !216
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 6
  store i8 %i.ku, ptr %i.ky, align 2, !tbaa !217
  %i.kz = load ptr, ptr %i.u, align 8, !tbaa !210
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.la, ptr %i.u, align 8, !tbaa !210
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  invoke void @_ZNSt5dequeISt4pairIN4core8vector3dIsEEhESaIS4_EE16_M_push_back_auxIJRKS3_RhEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %.preheader.split, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.0.add = add nuw nsw i64 %.0.idx148, 6         ; 2 uses
  %.not49 = icmp eq i64 %.0.add, 36
  br i1 %.not49, label %.split150.us, label %.preheader.split, !llvm.loop !238

bb.ap:                                            ; preds = %bb.an
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ar

._crit_edge151:                                   ; preds = %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit, %.preheader133
  %i.lc = load ptr, ptr %3, align 8, !tbaa !229   ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i91, label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge151
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !236 ; 2 uses
  %i.lg = load ptr, ptr %i.ld, align 8, !tbaa !231 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = icmp ult ptr %i.lf, %i.lh
  br i1 %i.li, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.lk, %.lr.ph.i.i.i.i ], [ %i.lf, %bb.aq ] ; 3 uses
  %i.lj = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !230
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef 512) #31
  %i.lk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ll = icmp ult ptr %.06.i.i.i.i, %i.lg
end_hunk_0
begin_hunk_1_@_ZNK16GenerateNotifier9getEventsERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaISA_EESt4lessIS6_ESaISt4pairIKS6_SC_EEE:bb.a
bb.g:                                             ; preds = %bb.e
  %i.r = icmp ult i32 %.02329.i.i.i, 10000
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = add i32 %.030.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.t = udiv i32 %.02329.i.i.i, 10000
  %i.u = add i32 %.030.i.i.i, 4                   ; 2 uses
  %i.v = icmp ult i32 %.02329.i.i.i, 100000
  br i1 %i.v, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !411

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.c
  %.022.i.i.i = phi i32 [ %i.s, %bb.h ], [ %i.o, %bb.d ], [ %i.q, %bb.f ], [ 1, %bb.c ], [ %i.u, %bb.i ] ; 2 uses
  %.lobit.i.i = lshr i32 %i.k, 31                 ; 2 uses
  %i.w = add i32 %.022.i.i.i, %.lobit.i.i
  %i.x = zext i32 %i.w to i64
  store ptr %i.h, ptr %3, align 8, !tbaa !94, !alias.scope !412
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.x, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.y = zext nneg i32 %.lobit.i.i to i64
  %i.z = load ptr, ptr %3, align 8, !tbaa !96, !alias.scope !412
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y ; 4 uses
  %i.ab = icmp ugt i32 %i.l, 99
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %i.ac = add i32 %.022.i.i.i, -1
  br label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph.i11.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.af, %.lr.ph.i11.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.aq, %.lr.ph.i11.i.i ], [ %i.ac, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ad = urem i32 %.020.i.i.i, 100
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !95, !noalias !412
  %i.ak = zext i32 %.01819.i.i.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ak
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !95
  %i.am = load i8, ptr %i.ah, align 2, !tbaa !95, !noalias !412
  %i.an = add i32 %.01819.i.i.i, -1
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ao
  store i8 %i.am, ptr %i.ap, align 1, !tbaa !95
  %i.aq = add i32 %.01819.i.i.i, -2
  %i.ar = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.ar, label %.lr.ph.i11.i.i, label %._crit_edge.i.i.i, !llvm.loop !413

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i11.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ], [ %i.af, %.lr.ph.i11.i.i ] ; 3 uses
  %i.as = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.at = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !95, !noalias !412
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !95
  %i.az = load i8, ptr %i.av, align 2, !tbaa !95, !noalias !412
  br label %_Z4itosB5cxx11i.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ba = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.bb = or disjoint i8 %i.ba, 48
  br label %_Z4itosB5cxx11i.exit

bb.l:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #34
  unreachable

_Z4itosB5cxx11i.exit:                             ; preds = %bb.j, %bb.k
  %storemerge.i.i.i = phi i8 [ %i.bb, %bb.k ], [ %i.az, %bb.j ]
  store i8 %storemerge.i.i.i, ptr %i.aa, align 1, !tbaa !95
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 11)
          to label %.noexc unwind label %bb.w     ; 6 uses

.noexc:                                           ; preds = %_Z4itosB5cxx11i.exit
  store ptr %i.f, ptr %2, align 8, !tbaa !94, !alias.scope !414
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !96 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %.noexc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !74 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %.critedge34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.bf, ptr %2, align 8, !tbaa !96, !alias.scope !414
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !95
  store i64 %i.bm, ptr %i.f, align 8, !tbaa !95, !alias.scope !414
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !74
  br label %.critedge34

bb.n:                                             ; preds = %bb.b
  %i.bn = zext i32 %i.i to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr @flagdesc_gennotify, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !417 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !94
  %i.bq = icmp eq i32 %i.i, 8
  br i1 %i.bq, label %.noexc35, label %bb.o

.noexc35:                                         ; preds = %bb.n
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.53) #33
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bp) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.br, ptr %i.a, align 8, !tbaa !97
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bt, ptr %2, align 8, !tbaa !96
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.bu, ptr %i.f, align 8, !tbaa !95
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.o
  %i.bv = phi ptr [ %i.bt, %.noexc.i ], [ %i.f, %bb.o ] ; 2 uses
  switch i64 %i.br, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %.thread
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !95
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !95
  br label %.thread

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.bp, i64 %i.br, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  store i64 %i.bx, ptr %i.g, align 8, !tbaa !74
  %i.by = load ptr, ptr %2, align 8, !tbaa !96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.critedge31

.critedge34:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %i.ca = phi i64 [ %i.bj, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.ca, ptr %i.g, align 8, !tbaa !74, !alias.scope !414
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !96
  store i64 0, ptr %i.cb, align 8, !tbaa !74
  store i8 0, ptr %i.bg, align 8, !tbaa !95
  %i.cc = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.h
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %.critedge34
  %i.ce = load i64, ptr %i.h, align 8, !tbaa !95
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.critedge31

.critedge31:                                      ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEEixERSF_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.r unwind label %.loopexit  ; 4 uses

bb.r:                                             ; preds = %.critedge31
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.050.062, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !419 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !421
  %.not.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.cj, ptr noundef nonnull align 4 dereferenceable(6) %i.ch, i64 6, i1 false), !tbaa.struct !216
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !419
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 6
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !419
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !422 ; 5 uses
  %i.cp = ptrtoint ptr %i.cj to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 4 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775806
  br i1 %i.cs, label %bb.u, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #33
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.ct = sdiv exact i64 %i.cr, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1537228672809129301)
  %i.cx = select i1 %i.cv, i64 1537228672809129301, i64 %i.cw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cy = mul nuw nsw i64 %i.cx, 6
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #32
          to label %.noexc39 unwind label %.loopexit ; 5 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.da, ptr noundef nonnull align 4 dereferenceable(6) %i.ch, i64 6, i1 false), !tbaa.struct !216
  %.not10.i.i.i.i.i = icmp eq ptr %i.co, %i.cj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc39, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %i.cz, %.noexc39 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %i.co, %.noexc39 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !216, !alias.scope !423
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, %i.cj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !427

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc39
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cz, %.noexc39 ], [ %i.dc, %.lr.ph.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6
  %.not.i23.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cr) #31
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !422
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !419
  %i.de = getelementptr inbounds nuw [6 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.de, ptr %i.ck, align 8, !tbaa !421
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.s
  %i.df = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.f
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.dh = load i64, ptr %i.f, align 8, !tbaa !95
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.050.062, i64 16 ; 2 uses
  %.not55 = icmp eq ptr %i.dj, %i.e
  br i1 %.not55, label %._crit_edge, label %bb.b

bb.w:                                             ; preds = %_Z4itosB5cxx11i.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.h
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.w
  %i.dn = load i64, ptr %i.h, align 8, !tbaa !95
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.critedge33

.loopexit:                                        ; preds = %.critedge31, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.dp = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.f
  br i1 %i.dq, label %.critedge33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.dr = load i64, ptr %i.f, align 8, !tbaa !95
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #31
  br label %.critedge33

.critedge33:                                      ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn27 = phi { ptr, i32 } [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %lpad.phi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEEixERSF_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.238", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.241", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !394 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit, label %bb.b, !llvm.loop !428

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %1, ptr %2, align 8, !tbaa !429
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN4core8vector3dIsEESaISB_EEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESP_IJEEEEESt17_Rb_tree_iteratorISE_ESt23_Rb_tree_const_iteratorISE_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16GenerateNotifier11clearEventsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !381
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN16GenerateNotifier14GenNotifyEventESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN16GenerateNotifier14GenNotifyEventES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN16GenerateNotifier14GenNotifyEventES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !381
  br label %_ZNSt6vectorIN16GenerateNotifier14GenNotifyEventESaIS1_EE5clearEv.exit
end_hunk_1
