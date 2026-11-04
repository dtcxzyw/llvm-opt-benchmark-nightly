Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EdgeIntersectionList?download=true
inline.NumInlined: 519
inline.NumDeleted: 257
begin_hunk_0_@_ZN4geos9geomgraph20EdgeIntersectionListC2EPKNS0_4EdgeE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph20EdgeIntersectionList3addERKNS_4geom10CoordinateEmd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, double noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 12 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.a, %i.f
  br i1 %.not.i, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double %3, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %2, ptr %i.h, align 8, !tbaa !28
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.j, ptr %i.b, align 8, !tbaa !29
  br label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit

_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store double %3, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %2, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #17
  br label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  store ptr %i.k, ptr %0, align 8, !tbaa !48
  store ptr %i.n, ptr %i.b, align 8, !tbaa !29
  store ptr %i.n, ptr %i.e, align 8, !tbaa !47
  br label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = icmp eq i64 %i.p, %2
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.s = load double, ptr %i.r, align 8, !tbaa !27
  %i.t = fcmp oeq double %i.s, %3
  br i1 %i.t, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %.not.i3 = icmp eq ptr %i.c, %i.v
  br i1 %.not.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double %3, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %2, ptr %i.x, align 8, !tbaa !28
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  store ptr %i.z, ptr %i.b, align 8, !tbaa !29
  br label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit16

bb.i:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.c to i64
  %i.ab = ptrtoint ptr %i.a to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.j, label %_ZNKSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i4

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i4: ; preds = %bb.i
  %i.ae = sdiv exact i64 %i.ac, 40
  %i.af = shl nsw i64 %i.ae, 1
  %i.ag = icmp slt i64 %i.ac, 0
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 230584300921369395)
  %i.ai = select i1 %i.ag, i64 230584300921369395, i64 %i.ah ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 40
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store double %3, ptr %i.am, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %2, ptr %i.an, align 8, !tbaa !28
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %_ZNKSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i4, %.lr.ph.i.i.i.i.i.i8
  %.012.i.i.i.i.i.i9 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i8 ], [ %i.ak, %_ZNKSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i4 ] ; 3 uses
  %.0911.i.i.i.i.i.i10 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i8 ], [ %i.a, %_ZNKSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i4 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i9, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i10, i64 40, i1 false), !tbaa.struct !31, !alias.scope !49
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i10, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i9, i64 40
  %.not.i.i.i.i.i.i11 = icmp eq ptr %i.ao, %i.c
  br i1 %.not.i.i.i.i.i.i11, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i12, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !46

_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i12: ; preds = %.lr.ph.i.i.i.i.i.i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i9, i64 80 ; 2 uses
  %.not.i35.i.i14 = icmp eq ptr %i.a, null
  br i1 %.not.i35.i.i14, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i15, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i12
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #17
  br label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i15

_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i15: ; preds = %bb.k, %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i12
  store ptr %i.ak, ptr %0, align 8, !tbaa !48
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ar, ptr %i.u, align 8, !tbaa !47
  br label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit16

_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit16: ; preds = %bb.h, %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i15
  %i.as = phi ptr [ %i.z, %bb.h ], [ %i.aq, %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i15 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !33, !range !34, !noundef !35
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.l, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit

bb.l:                                             ; preds = %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit16
  %i.aw = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.az  ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ba, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bf = icmp ult i64 %i.bc, %i.be
  br i1 %i.bf, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = icmp eq i64 %i.bc, %i.be
  br i1 %i.bg, label %bb.n, label %_ZN4geos9geomgraphltERKNS0_16EdgeIntersectionES3_.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr i8, ptr %i.ba, i64 -56
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !27
  %i.bj = getelementptr i8, ptr %i.ba, i64 -16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !27
  %i.bl = fcmp olt double %i.bi, %i.bk
  br i1 %i.bl, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit, label %_ZN4geos9geomgraphltERKNS0_16EdgeIntersectionES3_.exit

_ZN4geos9geomgraphltERKNS0_16EdgeIntersectionES3_.exit: ; preds = %bb.n, %bb.m
  store i8 0, ptr %i.at, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit

_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit: ; preds = %bb.n, %bb.l, %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE17_M_realloc_insertIJRKNS0_4geom10CoordinateERmRdEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.f, %_ZN4geos9geomgraphltERKNS0_16EdgeIntersectionES3_.exit, %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE12emplace_backIJRKNS0_4geom10CoordinateERmRdEEEvDpOT_.exit16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos9geomgraph20EdgeIntersectionList7isEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4geos9geomgraph20EdgeIntersectionList14isIntersectionERKNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not13.not = icmp eq ptr %i.a, %i.c
  br i1 %.not13.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load <2 x double>, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.09.014 = phi ptr [ %i.a, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.e = load <2 x double>, ptr %.sroa.09.014, align 8
  %i.f = fcmp oeq <2 x double> %i.e, %i.d         ; 2 uses
  %2 = extractelement <2 x i1> %i.f, i64 0
  %3 = extractelement <2 x i1> %i.f, i64 1
  %.0.i.i = select i1 %2, i1 %3, i1 false         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 40 ; 2 uses
  %.not.not = icmp eq ptr %i.g, %i.c
  %or.cond = select i1 %.0.i.i, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %.0.i.i, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph20EdgeIntersectionList12addEndpointsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.b)
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
  tail call void @_ZN4geos9geomgraph20EdgeIntersectionList3addERKNS_4geom10CoordinateEmd(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0, double noundef 0.000000e+00)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.g)
  tail call void @_ZN4geos9geomgraph20EdgeIntersectionList3addERKNS_4geom10CoordinateEmd(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.g, double noundef 0.000000e+00)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9geomgraph20EdgeIntersectionList13addSplitEdgesEPSt6vectorIPNS0_4EdgeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.b), !inline_history !51
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0), !inline_history !51
  tail call void @_ZN4geos9geomgraph20EdgeIntersectionList3addERKNS_4geom10CoordinateEmd(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0, double noundef 0.000000e+00)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.g), !inline_history !51
  tail call void @_ZN4geos9geomgraph20EdgeIntersectionList3addERKNS_4geom10CoordinateEmd(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.g, double noundef 0.000000e+00)
  %i.v = tail call ptr @_ZNK4geos9geomgraph20EdgeIntersectionList5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.06.011 = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %.not12 = icmp eq ptr %.sroa.06.011, %i.x
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit
  %.sroa.06.014 = phi ptr [ %.sroa.06.011, %.lr.ph ], [ %.sroa.06.0, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.013 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.06.014, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit ]
  %i.aa = tail call noundef ptr @_ZN4geos9geomgraph20EdgeIntersectionList15createSplitEdgeEPKNS0_16EdgeIntersectionES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.013, ptr noundef nonnull %.sroa.06.014) ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !55  ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !55
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %1, align 8, !tbaa !58    ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.e, label %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #16 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %i.aa, ptr %i.aq, align 8, !tbaa !57
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.f, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ae) #17
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ap, ptr %1, align 8, !tbaa !58
  store ptr %i.as, ptr %i.y, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.z, align 8, !tbaa !56
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.06.0 = getelementptr inbounds nuw i8, ptr %.sroa.06.014, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !20
  %.not = icmp eq ptr %.sroa.06.0, %i.au
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !50

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK4geos9geomgraph20EdgeIntersectionList5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !20  ; 6 uses
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  %.not.i.i = icmp eq ptr %.pre20, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.b
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %.pre20 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.pre20, ptr %i.e, i64 noundef %i.l)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %.pre20, ptr %i.e)
  %.pre = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %.pre17 = load ptr, ptr %i.d, align 8, !tbaa !20 ; 5 uses
  %i.m = icmp eq ptr %.pre, %.pre17
  br i1 %i.m, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.c
  %.sroa.09.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 40 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %.pre17
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %i.s = icmp eq i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 24
  %i.u = load double, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 64
  %i.w = load double, ptr %i.v, align 8
  %i.x = fcmp oeq double %i.u, %i.w
  %i.y = select i1 %i.s, i1 %i.x, i1 false
  br i1 %i.y, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !59

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 80 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.z, %.pre17
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEET_SA_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i, %bb.e
  %i.aa = phi ptr [ %i.an, %bb.e ], [ %i.z, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i ] ; 3 uses
  %.sroa.0.020.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.e ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i ] ; 4 uses
  %.sroa.011.019.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.n, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i.i, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !28
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 24
  %i.ah = load double, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i.i, i64 64
  %i.aj = load double, ptr %i.ai, align 8
  %i.ak = fcmp oeq double %i.ah, %i.aj
  %i.al = select i1 %i.af, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !tbaa.struct !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.020.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.an, %.pre17
  br i1 %.not.i.i5, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !60

._crit_edge.i.i.loopexit:                         ; preds = %bb.e
  %.pre18.pre = load ptr, ptr %i.d, align 8, !tbaa !20
  %.pre19.pre.pre.pre = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEET_SA_SA_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEET_SA_SA_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre19.pre.pre = phi ptr [ %.pre, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i ], [ %.pre19.pre.pre.pre, %._crit_edge.i.i.loopexit ] ; 4 uses
  %.pre18 = phi ptr [ %.pre17, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i ], [ %.pre18.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %._crit_edge.i.i.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 40 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %.pre18
  br i1 %i.ap, label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %_ZSt8_DestroyIPN4geos9geomgraph16EdgeIntersectionES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4geos9geomgraph16EdgeIntersectionES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEET_SA_SA_.exit
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %.pre19.pre.pre to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds i8, ptr %.pre19.pre.pre, i64 %i.as
  store ptr %i.at, ptr %i.d, align 8, !tbaa !29
  br label %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit

_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit: ; preds = %.preheader.i.i.i, %bb.b, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEET_SA_SA_.exit, %_ZSt8_DestroyIPN4geos9geomgraph16EdgeIntersectionES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %.pre19.pre35 = phi ptr [ %.pre19.pre.pre, %_ZSt8_DestroyIPN4geos9geomgraph16EdgeIntersectionES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %.pre19.pre.pre, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEET_SA_SA_.exit ], [ %.pre20, %bb.b ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4geos9geomgraph16EdgeIntersectionESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.pre, %.preheader.i.i.i ]
  store i8 1, ptr %i.a, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, %bb.a
  %i.au = phi ptr [ %.pre19.pre35, %_ZNSt6vectorIN4geos9geomgraph16EdgeIntersectionESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit ], [ %.pre20, %bb.a ]
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN4geos9geomgraph20EdgeIntersectionList15createSplitEdgeEPKNS0_16EdgeIntersectionES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.16", align 8    ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = add i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = sub i64 %i.c, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !27
  %i.q = fcmp ogt double %i.p, 0.000000e+00
  br i1 %i.q, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load <2 x double>, ptr %2, align 8
  %i.s = load <2 x double>, ptr %i.n, align 8
  %i.t = fcmp une <2 x double> %i.r, %i.s         ; 2 uses
  %4 = extractelement <2 x i1> %i.t, i64 0
  %5 = extractelement <2 x i1> %i.t, i64 1
  %.0.i.not = select i1 %4, i1 true, i1 %5
  %cond.fr = freeze i1 %.0.i.not                  ; 2 uses
  %not.cond.fr = xor i1 %cond.fr, true
  %i.u = sext i1 %not.cond.fr to i64
  %spec.select = add i64 %i.f, %i.u
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.v = phi i1 [ %cond.fr, %bb.b ], [ true, %bb.a ] ; 2 uses
  %i.w = phi i64 [ %spec.select, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.x = icmp ugt i64 %i.w, 384307168202282325
  br i1 %i.x, label %.invoke, label %bb.c

.invoke:                                          ; preds = %bb.k, %bb.f, %bb.o, %.thread
  %i.y = phi ptr [ @.str.4, %.thread ], [ @.str.3, %bb.o ], [ @.str.3, %bb.f ], [ @.str.3, %bb.k ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.y) #18
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.not136 = icmp eq i64 %i.w, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %.not136, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.ab = mul nuw nsw i64 %i.w, 24
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #16
          to label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i
  store ptr %i.ac, ptr %3, align 8, !tbaa !75
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !76
  %.idx = mul nuw nsw i64 %i.w, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !76
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 4 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !75
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !76
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit
  %i.ai = phi ptr [ %i.aa, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i ], [ %i.ae, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit ] ; 6 uses
  %i.aj = phi ptr [ %i.ag, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i ], [ %i.ac, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit ] ; 2 uses
  %i.ak = phi ptr [ %i.ah, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i ], [ %i.ad, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit ] ; 3 uses
  %i.al = phi ptr [ %i.ah, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i ], [ %i.af, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE7reserveEm.exit ] ; 2 uses
  %i.am = load i64, ptr %i.d, align 8, !tbaa !28
  %.0106 = add i64 %i.am, 1                       ; 2 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %.not107 = icmp ugt i64 %.0106, %i.an
  br i1 %.not107, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  %i.ao = phi ptr [ %i.aj, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ], [ %i.cn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ] ; 5 uses
  %i.ap = phi ptr [ %i.ak, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ], [ %i.cm, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ] ; 4 uses
  %i.aq = phi ptr [ %i.al, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ], [ %i.cp, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ] ; 3 uses
  br i1 %i.v, label %bb.m, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit84

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52
  %i.ar = phi ptr [ %i.cm, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ], [ %i.ak, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.as = phi ptr [ %i.cn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ], [ %i.aj, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 12 uses
  %i.at = phi ptr [ %i.co, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ], [ %i.ak, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.au = phi ptr [ %i.cp, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ], [ %i.al, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %i.av = phi i64 [ %i.cq, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ], [ %i.an, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ]
  %.0108 = phi i64 [ %.0, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52 ], [ %.0106, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.aw = icmp ne i64 %i.av, %.0108
  %or.cond.not = or i1 %i.v, %i.aw
  br i1 %or.cond.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.not.i37 = icmp eq ptr %i.au, %i.at
  br i1 %.not.i37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  store ptr %i.ax, ptr %i.ai, align 8, !tbaa !76
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52

bb.f:                                             ; preds = %bb.d
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %.invoke, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i38

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i38: ; preds = %bb.f
  %i.bc = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.sroa.speculated.i.i.i39 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i39, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 384307168202282325)
  %i.bg = select i1 %i.be, i64 384307168202282325, i64 %i.bf ; 3 uses
  %.not.i.i.i40 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i40)
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #16
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !23
  %.not10.i.i.i.i.i.i41 = icmp eq ptr %i.as, %i.at
  br i1 %.not10.i.i.i.i.i.i41, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %.noexc51, %.lr.ph.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i43 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i42 ], [ %i.bi, %.noexc51 ] ; 2 uses
  %.0911.i.i.i.i.i.i44 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i42 ], [ %i.as, %.noexc51 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i43, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i44, i64 24, i1 false), !tbaa.struct !23, !alias.scope !78
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i44, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i43, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.bk, %i.at
  br i1 %.not.i.i.i.i.i.i45, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !64

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i42, %.noexc51
  %.0.lcssa.i.i.i.i.i.i47 = phi ptr [ %i.bi, %.noexc51 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i42 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i47, i64 24 ; 2 uses
  %.not.i23.i.i48 = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i48, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #17
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49: ; preds = %bb.g, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46
  store ptr %i.bi, ptr %3, align 8, !tbaa !75
  store ptr %i.bm, ptr %i.ai, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bg ; 3 uses
  store ptr %i.bn, ptr %i.z, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52

bb.h:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !39 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i64 noundef %.0108)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not.i53 = icmp eq ptr %i.au, %i.ar
  br i1 %.not.i53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !tbaa.struct !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  store ptr %i.bv, ptr %i.ai, align 8, !tbaa !76
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit52

bb.k:                                             ; preds = %bb.i
  %i.bw = ptrtoint ptr %i.ar to i64
  %i.bx = ptrtoint ptr %i.as to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %.invoke, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i54

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i54: ; preds = %bb.k
  %i.ca = sdiv exact i64 %i.by, 24                ; 3 uses
  %.sroa.speculated.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i55, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 384307168202282325)
  %i.ce = select i1 %i.cc, i64 384307168202282325, i64 %i.cd ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i56)
  %i.cf = mul nuw nsw i64 %i.ce, 24
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #16
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i54
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !tbaa.struct !23
  %.not10.i.i.i.i.i.i57 = icmp eq ptr %i.as, %i.ar
  br i1 %.not10.i.i.i.i.i.i57, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62, label %.lr.ph.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i58:                             ; preds = %.noexc67, %.lr.ph.i.i.i.i.i.i58
  %.012.i.i.i.i.i.i59 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i58 ], [ %i.cg, %.noexc67 ] ; 2 uses
  %.0911.i.i.i.i.i.i60 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i58 ], [ %i.as, %.noexc67 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i59, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i60, i64 24, i1 false), !tbaa.struct !23, !alias.scope !79
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i60, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i59, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i61 = icmp eq ptr %i.ci, %i.ar
  br i1 %.not.i.i.i.i.i.i61, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62, label %.lr.ph.i.i.i.i.i.i58, !llvm.loop !64

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i62: ; preds = %.lr.ph.i.i.i.i.i.i58, %.noexc67
  %.0.lcssa.i.i.i.i.i.i63 = phi ptr [ %i.cg, %.noexc67 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i58 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i63, i64 24 ; 2 uses
  %.not.i23.i.i64 = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i64, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i65, label %bb.l

end_hunk_0
