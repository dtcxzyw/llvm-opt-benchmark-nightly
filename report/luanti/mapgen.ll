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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !90
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
  %i.u = load ptr, ptr %9, align 8, !tbaa !91     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.d
  %i.w = load i64, ptr %i.c, align 8, !tbaa !90
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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !60
  %.not = icmp slt i32 %i.i, %i.b
  %.not.fr50 = freeze i1 %.not
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 6 uses
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
  %i.u = load i16, ptr %i.t, align 4, !tbaa !98
  %i.v = sext i16 %i.u to i32
  %i.w = load i32, ptr %i.s, align 4, !tbaa !99
  %i.x = load i32, ptr %i.m, align 4, !tbaa !96   ; 2 uses
  %i.y = load i16, ptr %i.p, align 2, !tbaa !100
  %i.z = sext i16 %i.y to i32
  %invariant.op54 = sub nsw i32 %i.r, %i.z
  %i.aa = load i16, ptr %i.l, align 4, !tbaa !97
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !103 ; 2 uses
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
  br i1 %exitcond83.not, label %._crit_edge53.split, label %.preheader, !llvm.loop !330

bb.b:                                             ; preds = %.preheader, %.critedge
  %.01643 = phi i32 [ %i.a, %.preheader ], [ %i.ba, %.critedge ] ; 3 uses
  %.reass = add i32 %.01643, %invariant.op        ; 2 uses
  %i.ak = zext i32 %.reass to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !109
  %i.an = icmp eq i16 %i.am, 127
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not.fr50, label %.lr.ph, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !159
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
  %i.au = load i16, ptr %i.at, align 4, !tbaa !109
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.av
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.aw, align 1, !tbaa !90
  %i.ax = and i8 %.sroa.0.0.copyload.i.i, 64
  %.not22.not = icmp eq i8 %i.ax, 0
  br i1 %.not22.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 15, ptr %i.ay, align 2, !tbaa !159
  %i.az = add nsw i32 %.039, -1
  %.not21.not = icmp sgt i32 %.039, %i.c
  br i1 %.not21.not, label %bb.e, label %.critedge, !llvm.loop !331

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %i.ba = add nsw i32 %.01643, 1
  %exitcond.not = icmp eq i32 %.01643, %smax
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.b, !llvm.loop !332
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
  %.sroa.13.0.copyload = load i16, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !68 ; 4 uses
  %.sroa.22.6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load <2 x i16>, ptr %1, align 2, !tbaa !68
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !68 ; 3 uses
  %.sroa.0108.0.copyload = load i16, ptr %1, align 2, !tbaa !68 ; 3 uses
  %i.c = load <2 x i16>, ptr %2, align 2, !tbaa !68
  %.sroa.22.6.copyload = load i16, ptr %.sroa.22.6..sroa_idx, align 2, !tbaa !68 ; 3 uses
  %.sroa.17.6.copyload = load i16, ptr %2, align 2, !tbaa !68 ; 3 uses
  %.sroa.26.6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.26.6.copyload = load i16, ptr %.sroa.26.6..sroa_idx, align 2, !tbaa !68 ; 4 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
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
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !169
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !169  ; 2 uses
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
  br i1 %exitcond156.not, label %.preheader133, label %.preheader135, !llvm.loop !333

.lr.ph:                                           ; preds = %.preheader135, %._crit_edge
  %.042141 = phi i32 [ %i.f, %.preheader135 ], [ %i.bd, %._crit_edge ] ; 4 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !93  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = trunc nsw i32 %.042141 to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !98
  %i.am = sext i16 %i.al to i32
  %i.an = sub nsw i32 %.043145, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !99
  %i.ar = mul nsw i32 %i.an, %i.aq
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.au = load i16, ptr %i.at, align 2, !tbaa !100
  %i.av = sext i16 %i.au to i32
  %i.aw = add i32 %i.ar, %.042141
  %i.ax = sub i32 %i.aw, %i.av
  %i.ay = mul i32 %i.ax, %i.as
  %i.az = load i16, ptr %i.ai, align 4, !tbaa !97
  %i.ba = sext i16 %i.az to i32
  %i.bb = sub nsw i32 %i.d, %i.ba
  %i.bc = add nsw i32 %i.bb, %i.ay
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit.split
  %i.bd = add nsw i32 %.042141, 1
  %exitcond154.not = icmp eq i32 %.042141, %i.e
  br i1 %exitcond154.not, label %._crit_edge143, label %.lr.ph, !llvm.loop !334

bb.b:                                             ; preds = %.lr.ph, %.loopexit.split
  %.040139 = phi i32 [ %i.d, %.lr.ph ], [ %i.hq, %.loopexit.split ] ; 3 uses
  %.041138 = phi i32 [ %i.bc, %.lr.ph ], [ %i.hr, %.loopexit.split ] ; 2 uses
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !103
  %i.bh = zext i32 %.041138 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !109 ; 2 uses
  %i.bk = icmp eq i16 %i.bj, 127
  br i1 %i.bk, label %.loopexit.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 312
  %i.bn = zext i16 %i.bj to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bo, align 1, !tbaa !90 ; 3 uses
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
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !159
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !159 ; 2 uses
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
  %i.cc = load i16, ptr %.039.ptr, align 2, !tbaa !65
  %i.cd = add i16 %i.cc, %i.bv                    ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.039.ptr, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !66
  %i.cg = add i16 %i.cf, %i.aj                    ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.039.ptr, i64 4
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !67
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
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !93  ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !98
  %i.cr = sext i16 %i.cq to i32
  %i.cs = sub nsw i32 %i.cm, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !99
  %i.cw = mul nsw i32 %i.cs, %i.cv
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !96
  %i.cy = sext i16 %i.cg to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !100
  %i.db = sext i16 %i.da to i32
  %i.dc = add i32 %i.cw, %i.cy
  %i.dd = sub i32 %i.dc, %i.db
  %i.de = mul i32 %i.dd, %i.cx
  %i.df = sext i16 %i.cd to i32
  %i.dg = load i16, ptr %i.co, align 4, !tbaa !97
  %i.dh = sext i16 %i.dg to i32
  %i.di = sub nsw i32 %i.df, %i.dh
  %i.dj = add nsw i32 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !103
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !159 ; 3 uses
  %i.dq = zext i8 %i.dp to i32                    ; 2 uses
  %i.dr = and i32 %i.dq, 15
  %.not36.i = icmp samesign ult i32 %i.dr, %i.ca
  %i.ds = and i32 %i.dq, 240
  %.not37.i = icmp samesign ult i32 %i.ds, %i.cb
  %or.cond = select i1 %.not36.i, i1 true, i1 %.not37.i
  br i1 %or.cond, label %bb.i, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit

bb.i:                                             ; preds = %bb.h
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.du = load i16, ptr %i.dn, align 4, !tbaa !109
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 312
  %i.dw = zext i16 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.dx, align 1, !tbaa !90
  %i.dy = and i8 %.sroa.0.0.copyload.i.i.i, 32
  %.not38.i = icmp eq i8 %i.dy, 0
  br i1 %.not38.i, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dz = and i8 %i.dp, 15
  %spec.select..i = call i8 @llvm.umax.i8(i8 %spec.select.i, i8 %i.dz)
  %i.ea = and i8 %i.dp, -16
  %.in.i = call i8 @llvm.umax.i8(i8 %.0.i, i8 %i.ea)
  %i.eb = or disjoint i8 %spec.select..i, %.in.i  ; 3 uses
  store i8 %i.eb, ptr %i.do, align 2, !tbaa !159
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !164 ; 5 uses
  %i.ed = load ptr, ptr %i.k, align 8, !tbaa !165
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %.not.i.i.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.ec, align 2, !tbaa !68
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 6
  store i8 %i.eb, ptr %i.ef, align 2, !tbaa !168
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  br label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split

bb.l:                                             ; preds = %bb.j
  %i.eh = load ptr, ptr %i.m, align 8, !tbaa !170 ; 3 uses
  %i.ei = load ptr, ptr %i.n, align 8, !tbaa !170 ; 6 uses
  %i.ej = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3                 ; 3 uses
  %i.en = icmp ne ptr %i.eh, null
  %.neg.i.i.i = sext i1 %i.en to i64
  %i.eo = add nsw i64 %i.em, %.neg.i.i.i
  %i.ep = shl nsw i64 %i.eo, 6
  %i.eq = load ptr, ptr %i.o, align 8, !tbaa !171
  %i.er = ptrtoint ptr %i.ec to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3
  %i.ev = add nsw i64 %i.ep, %i.eu
  %i.ew = load ptr, ptr %i.p, align 8, !tbaa !172
  %i.ex = load ptr, ptr %i.l, align 8, !tbaa !169
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3
  %i.fc = add nsw i64 %i.ev, %i.fb
  %i.fd = icmp eq i64 %i.fc, 1152921504606846975
  br i1 %i.fd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #33
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.fe = load i64, ptr %i.q, align 8, !tbaa !173 ; 5 uses
  %i.ff = load ptr, ptr %3, align 8, !tbaa !174   ; 2 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.ej, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = sub i64 %i.fe, %i.fi
  %i.fk = icmp ult i64 %i.fj, 2
  br i1 %i.fk, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.fl = add nsw i64 %i.em, 1                    ; 2 uses
  %i.fm = add nsw i64 %i.em, 2                    ; 3 uses
  %i.fn = shl nsw i64 %i.fm, 1
  %i.fo = icmp ugt i64 %i.fe, %i.fn
  br i1 %i.fo, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.fp = sub i64 %i.fe, %i.fm
  %i.fq = lshr i64 %i.fp, 1
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fq ; 10 uses
  %i.fs = icmp ult ptr %i.fr, %i.ei
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  br i1 %i.fs, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.ek                    ; 3 uses
  %i.fw = icmp sgt i64 %i.fv, 8
  br i1 %i.fw, label %bb.r, label %bb.s, !prof !156

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fr, ptr nonnull align 8 %i.ei, i64 %i.fv, i1 false)
  br label %.noexc100

bb.s:                                             ; preds = %bb.q
  %i.fx = icmp eq i64 %i.fv, 8
  br i1 %i.fx, label %bb.t, label %.noexc100

bb.t:                                             ; preds = %bb.s
  %i.fy = load ptr, ptr %i.ei, align 8, !tbaa !175
  store ptr %i.fy, ptr %i.fr, align 8, !tbaa !175
  br label %.noexc100

bb.u:                                             ; preds = %bb.p
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fl ; 2 uses
  %i.ga = ptrtoint ptr %i.ft to i64
  %i.gb = sub i64 %i.ga, %i.ek                    ; 3 uses
  %i.gc = ashr exact i64 %i.gb, 3                 ; 2 uses
  %i.gd = icmp sgt i64 %i.gc, 1
  br i1 %i.gd, label %bb.v, label %bb.w, !prof !156

bb.v:                                             ; preds = %bb.u
  %i.ge = sub nsw i64 0, %i.gc
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.ge
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gf, ptr align 8 %i.ei, i64 %i.gb, i1 false)
  br label %.noexc100

bb.w:                                             ; preds = %bb.u
  %i.gg = icmp eq i64 %i.gb, 8
  br i1 %i.gg, label %bb.x, label %.noexc100

bb.x:                                             ; preds = %bb.w
  %i.gh = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.gi = load ptr, ptr %i.ei, align 8, !tbaa !175
  store ptr %i.gi, ptr %i.gh, align 8, !tbaa !175
  br label %.noexc100

bb.y:                                             ; preds = %bb.o
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %i.gj = add i64 %i.fe, 2
  %i.gk = add i64 %i.gj, %.sroa.speculated.i      ; 5 uses
  %i.gl = icmp ugt i64 %i.gk, 1152921504606846975
  br i1 %i.gl, label %bb.z, label %_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE15_M_allocate_mapEm.exit.i, !prof !154

bb.z:                                             ; preds = %bb.y
  %i.gm = icmp ugt i64 %i.gk, 2305843009213693951
  br i1 %i.gm, label %.noexc.i.i, label %.noexc3.i.i

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
  %i.gn = shl nuw nsw i64 %i.gk, 3
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #32
          to label %.noexc105 unwind label %.loopexit134 ; 2 uses

.noexc105:                                        ; preds = %_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE15_M_allocate_mapEm.exit.i
  %i.gp = sub nsw i64 %i.gk, %i.fm
  %i.gq = lshr i64 %i.gp, 1
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gq ; 3 uses
  %i.gs = load ptr, ptr %i.n, align 8, !tbaa !176 ; 3 uses
  %i.gt = load ptr, ptr %i.m, align 8, !tbaa !177
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 3 uses
  %i.gy = icmp sgt i64 %i.gx, 8
  br i1 %i.gy, label %bb.aa, label %bb.ab, !prof !156

bb.aa:                                            ; preds = %.noexc105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr align 8 %i.gs, i64 %i.gx, i1 false)
  br label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

bb.ab:                                            ; preds = %.noexc105
  %i.gz = icmp eq i64 %i.gx, 8
  br i1 %i.gz, label %bb.ac, label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

bb.ac:                                            ; preds = %bb.ab
  %i.ha = load ptr, ptr %i.gs, align 8, !tbaa !175
  store ptr %i.ha, ptr %i.gr, align 8, !tbaa !175
  br label %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i

_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hb = load ptr, ptr %3, align 8, !tbaa !174
  %i.hc = load i64, ptr %i.q, align 8, !tbaa !173
  %i.hd = shl i64 %i.hc, 3
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hd) #31
  store ptr %i.go, ptr %3, align 8, !tbaa !174
  store i64 %i.gk, ptr %i.q, align 8, !tbaa !173
  br label %.noexc100

.noexc100:                                        ; preds = %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r
  %.0.i102 = phi ptr [ %i.gr, %_ZSt4copyIPPSt4pairIN4core8vector3dIsEEhES6_ET0_T_S8_S7_.exit24.i ], [ %i.fr, %bb.t ], [ %i.fr, %bb.r ], [ %i.fr, %bb.s ], [ %i.fr, %bb.v ], [ %i.fr, %bb.w ], [ %i.fr, %bb.x ] ; 3 uses
  store ptr %.0.i102, ptr %i.n, align 8, !tbaa !170
  %i.he = load ptr, ptr %.0.i102, align 8, !tbaa !175 ; 2 uses
  store ptr %i.he, ptr %i.r, align 8, !tbaa !171
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 512
  store ptr %i.hf, ptr %i.p, align 8, !tbaa !172
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.0.i102, i64 %i.fl
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -8 ; 2 uses
  store ptr %i.hh, ptr %i.m, align 8, !tbaa !170
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !175 ; 2 uses
  store ptr %i.hi, ptr %i.o, align 8, !tbaa !171
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 512
  store ptr %i.hj, ptr %i.k, align 8, !tbaa !172
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc100, %bb.n
  %i.hk = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32
          to label %.noexc unwind label %.loopexit134 ; 4 uses

.noexc:                                           ; preds = %bb.ad
  %i.hl = load ptr, ptr %i.m, align 8, !tbaa !177
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !175
  %i.hn = load ptr, ptr %i.j, align 8, !tbaa !164 ; 2 uses
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.hn, align 2, !tbaa !68
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 6
  store i8 %i.eb, ptr %i.ho, align 2, !tbaa !168
  store ptr %i.hm, ptr %i.m, align 8, !tbaa !170
  store ptr %i.hk, ptr %i.o, align 8, !tbaa !171
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 512
  store ptr %i.hp, ptr %i.k, align 8, !tbaa !172
  br label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split

_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit.sink.split: ; preds = %bb.k, %.noexc
  %.sink = phi ptr [ %i.hk, %.noexc ], [ %i.eg, %bb.k ]
  store ptr %.sink, ptr %i.j, align 8, !tbaa !164
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
  %i.hq = add nsw i32 %.040139, 1
  %i.hr = add i32 %.041138, 1
  %exitcond.not = icmp eq i32 %.040139, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !335

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.hs = phi ptr [ %i.x, %.preheader.lr.ph ], [ %storemerge.i.i, %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 6 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 2, !tbaa !168
  %i.hw = icmp ult i8 %i.hv, 2
  br i1 %i.hw, label %.split150.us, label %.preheader.split

.split150.us:                                     ; preds = %bb.ao, %.preheader
  %i.hx = load ptr, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %i.hy = load ptr, ptr %i.ac, align 8, !tbaa !338
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -8
  %.not.i.i58 = icmp eq ptr %i.hx, %i.hz
  br i1 %.not.i.i58, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.split150.us
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  br label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.af:                                            ; preds = %.split150.us
  %i.ib = load ptr, ptr %i.ad, align 8, !tbaa !339
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef 512) #31
  %i.ic = load ptr, ptr %i.ae, align 8, !tbaa !176
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  store ptr %i.id, ptr %i.ae, align 8, !tbaa !170
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !175 ; 3 uses
  store ptr %i.ie, ptr %i.ad, align 8, !tbaa !171
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 512
  store ptr %i.if, ptr %i.ac, align 8, !tbaa !172
  br label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.ae, %bb.af
  %storemerge.i.i = phi ptr [ %i.ia, %bb.ae ], [ %i.ie, %bb.af ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.v, align 8, !tbaa !178
  %i.ig = load ptr, ptr %i.u, align 8, !tbaa !169
  %i.ih = icmp eq ptr %i.ig, %storemerge.i.i
  br i1 %i.ih, label %._crit_edge151, label %.preheader, !llvm.loop !336

.preheader.split:                                 ; preds = %.preheader, %bb.ao
  %.0.idx148 = phi i64 [ %.0.add, %bb.ao ], [ 0, %.preheader ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @g_6dirs, i64 %.0.idx148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ii = load <2 x i16>, ptr %i.hs, align 2, !tbaa !68
  %i.ij = load <2 x i16>, ptr %.0.ptr, align 2, !tbaa !68
  %i.ik = add <2 x i16> %i.ij, %i.ii              ; 4 uses
  %i.il = load i16, ptr %i.ht, align 2, !tbaa !67
  %i.im = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 4
  %i.in = load i16, ptr %i.im, align 2, !tbaa !67
  %i.io = add i16 %i.in, %i.il                    ; 4 uses
  %.sroa.3.0.insert.ext.i59 = zext i16 %i.io to i48
  %.sroa.3.0.insert.shift.i60 = shl nuw i48 %.sroa.3.0.insert.ext.i59, 32
  %i.ip = extractelement <2 x i16> %i.ik, i64 1
  %i.iq = extractelement <2 x i16> %i.ik, i64 0
  %.v = shufflevector <2 x i16> %i.ik, <2 x i16> <i16 0, i16 poison>, <3 x i32> <i32 0, i32 1, i32 2>
  %i.ir = bitcast <3 x i16> %.v to i48
  %.sroa.0.0.insert.insert.i65 = or disjoint i48 %.sroa.3.0.insert.shift.i60, %i.ir
  store i48 %.sroa.0.0.insert.insert.i65, ptr %4, align 8
  %i.is = load i8, ptr %i.hu, align 2, !tbaa !168 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.it = icmp ult i8 %i.is, 2
  br i1 %i.it, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %.preheader.split
  %i.iu = shufflevector <2 x i16> %i.ik, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iv = icmp slt <4 x i16> %i.af, %i.iu
  %i.iw = icmp sgt <4 x i16> %i.af, %i.iu
  %i.ix = shufflevector <4 x i1> %i.iv, <4 x i1> %i.iw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iy = freeze <4 x i1> %i.ix
  %i.iz = bitcast <4 x i1> %i.iy to i4
  %.not = icmp eq i4 %i.iz, 0
  br i1 %.not, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i77 = icmp sge i16 %i.io, %.sroa.13.0.copyload
  %i.ja = icmp sle i16 %i.io, %.sroa.26.6.copyload
  %or.cond.i78 = and i1 %.not9.i.i77, %i.ja
  br i1 %or.cond.i78, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.jb = sext i16 %i.io to i32
  %i.jc = load ptr, ptr %i.z, align 8, !tbaa !93  ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.jf = load i16, ptr %i.je, align 4, !tbaa !98
  %i.jg = sext i16 %i.jf to i32
  %i.jh = sub nsw i32 %i.jb, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !99
  %i.jl = mul nsw i32 %i.jh, %i.jk
  %i.jm = load i32, ptr %i.ji, align 4, !tbaa !96
  %i.jn = sext i16 %i.ip to i32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jc, i64 10
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !100
  %i.jq = sext i16 %i.jp to i32
  %i.jr = add i32 %i.jl, %i.jn
  %i.js = sub i32 %i.jr, %i.jq
  %i.jt = mul i32 %i.js, %i.jm
  %i.ju = sext i16 %i.iq to i32
  %i.jv = load i16, ptr %i.jd, align 4, !tbaa !97
  %i.jw = sext i16 %i.jv to i32
  %i.jx = sub nsw i32 %i.ju, %i.jw
  %i.jy = add nsw i32 %i.jx, %i.jt
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !103
  %i.kb = zext i32 %i.jy to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kb ; 2 uses
  %i.kd = and i8 %i.is, 15
  %spec.select.i79 = call i8 @llvm.usub.sat.i8(i8 %i.kd, i8 1) ; 2 uses
  %i.ke = and i8 %i.is, -16                       ; 2 uses
  %.not35.i80 = icmp eq i8 %i.ke, 0
  %i.kf = add i8 %i.ke, -16
  %.0.i81 = select i1 %.not35.i80, i8 0, i8 %i.kf ; 2 uses
  %i.kg = zext nneg i8 %spec.select.i79 to i32
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 2 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 2, !tbaa !159 ; 3 uses
  %i.kj = zext i8 %i.ki to i32                    ; 2 uses
  %i.kk = and i32 %i.kj, 15
  %.not36.i82 = icmp samesign ult i32 %i.kk, %i.kg
  br i1 %.not36.i82, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kl = zext i8 %.0.i81 to i32
  %i.km = and i32 %i.kj, 240
  %.not37.i83 = icmp samesign ult i32 %i.km, %i.kl
  br i1 %.not37.i83, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kn = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ko = load i16, ptr %i.kc, align 4, !tbaa !109
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 312
  %i.kq = zext i16 %i.ko to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kq
  %.sroa.0.0.copyload.i.i.i84 = load i8, ptr %i.kr, align 1, !tbaa !90
  %i.ks = and i8 %.sroa.0.0.copyload.i.i.i84, 32
  %.not38.i85 = icmp eq i8 %i.ks, 0
  br i1 %.not38.i85, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kt = and i8 %i.ki, 15
  %spec.select..i86 = call i8 @llvm.umax.i8(i8 %spec.select.i79, i8 %i.kt)
  %i.ku = and i8 %i.ki, -16
  %.in.i87 = call i8 @llvm.umax.i8(i8 %.0.i81, i8 %i.ku)
  %i.kv = or disjoint i8 %spec.select..i86, %.in.i87 ; 3 uses
  store i8 %i.kv, ptr %i.a, align 1, !tbaa !90
  store i8 %i.kv, ptr %i.kh, align 2, !tbaa !159
  %i.kw = load ptr, ptr %i.u, align 8, !tbaa !164 ; 3 uses
  %i.kx = load ptr, ptr %i.ab, align 8, !tbaa !165
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -8
  %.not.i.i.i88 = icmp eq ptr %i.kw, %i.ky
  br i1 %.not.i.i.i88, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %i.kw, ptr noundef nonnull align 8 dereferenceable(6) %4, i64 6, i1 false), !tbaa.struct !166
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 6
  store i8 %i.kv, ptr %i.kz, align 2, !tbaa !168
  %i.la = load ptr, ptr %i.u, align 8, !tbaa !164
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store ptr %i.lb, ptr %i.u, align 8, !tbaa !164
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  invoke void @_ZNSt5dequeISt4pairIN4core8vector3dIsEEhESaIS4_EE16_M_push_back_auxIJRKS3_RhEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %.preheader.split, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.0.add = add nuw nsw i64 %.0.idx148, 6         ; 2 uses
  %.not49 = icmp eq i64 %.0.add, 36
  br i1 %.not49, label %.split150.us, label %.preheader.split, !llvm.loop !337

bb.ap:                                            ; preds = %bb.an
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ar

._crit_edge151:                                   ; preds = %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEE3popEv.exit, %.preheader133
  %i.ld = load ptr, ptr %3, align 8, !tbaa !174   ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i91, label %_ZNSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge151
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !176 ; 2 uses
  %i.lh = load ptr, ptr %i.le, align 8, !tbaa !177 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = icmp ult ptr %i.lg, %i.li
  br i1 %i.lj, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ll, %.lr.ph.i.i.i.i ], [ %i.lg, %bb.aq ] ; 3 uses
  %i.lk = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !175
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef 512) #31
  %i.ll = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.lm = icmp ult ptr %.06.i.i.i.i, %i.lh
end_hunk_0
