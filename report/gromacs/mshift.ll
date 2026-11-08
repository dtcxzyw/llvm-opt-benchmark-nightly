Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mshift?download=true
inline.NumInlined: 962
inline.NumDeleted: 434
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL9mk_igraphI7t_ilistEbP14EdgesGenerator19InteractionFunctionRKT_iN3gmx8ArrayRefIKiEE:bb.a
  %i.n = add nsw i32 %.071, 1                     ; 5 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18   ; 2 uses
  %i.r = icmp slt i32 %i.q, %3
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.k, %.071
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %.not = icmp slt i32 %i.v, %3
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(63) @.str.4, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 134, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %3) #21
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.w

bb.g:                                             ; preds = %bb.c
  %i.x = sext i32 %.071 to i64                    ; 4 uses
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr [4 x i8], ptr %i.m, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  tail call void @_ZN14EdgesGenerator7addEdgeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.q, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !134 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.o
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ae = getelementptr [4 x i8], ptr %i.ab, i64 %i.x
  %i.af = getelementptr i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !18
  tail call void @_ZN14EdgesGenerator7addEdgeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ad, i32 noundef %i.ag)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %wide.trip.count79 = zext nneg i32 %i.k to i64  ; 2 uses
  br i1 %i.h, label %.lr.ph69, label %.lr.ph

.lr.ph69:                                         ; preds = %bb.i, %.lr.ph69
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %.lr.ph69 ], [ 1, %bb.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv76
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.x ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = getelementptr i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !18
  tail call void @_ZN14EdgesGenerator7addEdgeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ak, i32 noundef %i.am)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %.loopexit, label %.lr.ph69, !llvm.loop !129

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 1, %bb.i ] ; 2 uses
  %.15766 = phi i1 [ %.2, %bb.k ], [ %.05670, %bb.i ]
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.x ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = getelementptr i8, ptr %i.ap, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %.not61 = icmp eq i32 %i.at, %i.ay
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void @_ZN14EdgesGenerator7addEdgeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aq, i32 noundef %i.av)
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.2 = phi i1 [ true, %bb.j ], [ %.15766, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !130

.loopexit:                                        ; preds = %bb.k, %.lr.ph69, %.lr.ph72.split..loopexit_crit_edge, %bb.h, %bb.b
  %.pre-phi = phi i32 [ %.pre, %.lr.ph72.split..loopexit_crit_edge ], [ %i.n, %bb.h ], [ %i.n, %bb.b ], [ %i.n, %.lr.ph69 ], [ %i.n, %bb.k ]
  %.3 = phi i1 [ %.05670, %.lr.ph72.split..loopexit_crit_edge ], [ true, %bb.h ], [ %.05670, %bb.b ], [ true, %.lr.ph69 ], [ %.2, %bb.k ] ; 2 uses
  %i.az = add i32 %.pre-phi, %i.k                 ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.a
  br i1 %i.ba, label %.lr.ph72.splitthread-pre-split, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph72, %bb.a
  %.056.lcssa = phi i1 [ false, %bb.a ], [ false, %.lr.ph72 ], [ %.3, %.loopexit ]
  ret i1 %.056.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define void @_Z10done_graphP7t_graph(ptr noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #23
  br label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i

_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i:           ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.e, %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7t_graphD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #23
  br label %_ZN7t_graphD2Ev.exit

_ZN7t_graphD2Ev.exit:                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN7t_graphD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z9mk_mshiftP8_IO_FILEP7t_graph7PbcTypePA3_KfS6_(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) initializes((64, 65)) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.t_pbc, align 4              ; 4 uses
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = alloca [3 x float], align 8              ; 11 uses
  %i.d = alloca [3 x float], align 4              ; 5 uses
  %i.e = alloca [3 x float], align 4              ; 7 uses
  %i.f = alloca [3 x i32], align 8                ; 11 uses
  %6 = alloca %struct.t_pbc, align 4              ; 4 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.g = icmp eq i32 %2, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = zext i1 %i.g to i8
  store i8 %i.i, ptr %i.h, align 8, !tbaa !80
  %i.j = icmp eq i32 %2, 2
  %. = select i1 %i.j, i64 2, i64 3               ; 3 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !67
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %i.p, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !18
  store i32 0, ptr %i.o, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %1, align 8, !tbaa !67
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40   ; 3 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIP5egColSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = add i64 %i.aa, -4
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -4
  %i.af = add i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.af, i1 false), !tbaa !46
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIP5egColSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIP5egColSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.c
  %i.ag = icmp sgt i32 %i.v, 0
  br i1 %i.ag, label %.lr.ph164, label %.thread

.lr.ph164:                                        ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIP5egColSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RKT0_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %11 = trunc nuw nsw i64 %. to i32
  %12 = add nsw i32 %11, -2
  %trip.count.minus.1 = add nsw i64 %., -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ay = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 5 uses
  br label %bb.d

.loopexit:                                        ; preds = %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit, %bb.h
  %.1119.lcssa = phi i32 [ %.0118159, %bb.h ], [ %.4122, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ] ; 4 uses
  %.177.lcssa = phi i32 [ %i.bz, %bb.h ], [ %i.lt, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ] ; 2 uses
  %.175.lcssa = phi i32 [ %i.by, %bb.h ], [ %i.ls, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ]
  %i.az = icmp sgt i32 %.177.lcssa, 0
  br i1 %i.az, label %bb.d, label %._crit_edge165, !llvm.loop !136

bb.d:                                             ; preds = %.lr.ph164, %.loopexit
  %.071163 = phi i64 [ 0, %.lr.ph164 ], [ %.01014.i, %.loopexit ]
  %.074161 = phi i32 [ 0, %.lr.ph164 ], [ %.175.lcssa, %.loopexit ] ; 2 uses
  %.076160 = phi i32 [ %i.v, %.lr.ph164 ], [ %.177.lcssa, %.loopexit ] ; 2 uses
  %.0118159 = phi i32 [ 0, %.lr.ph164 ], [ %.1119.lcssa, %.loopexit ] ; 2 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %sext123 = shl i64 %.071163, 32
  %i.bb = ashr exact i64 %sext123, 32             ; 2 uses
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = add nsw i64 %i.bh, -1                   ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, %i.bb
  br i1 %i.bj, label %.lr.ph.i, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.01014.i = phi i64 [ %i.bs, %.critedge.i ], [ %i.bb, %bb.d ] ; 6 uses
  %i.bk = getelementptr [4 x i8], ptr %i.bd, i64 %.01014.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18
  %i.bm = getelementptr i8, ptr %i.bk, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %.01014.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !46
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %i.bs = add nsw i64 %.01014.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %i.bi
  br i1 %exitcond.not.i, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread, label %.lr.ph.i, !llvm.loop !137

_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit: ; preds = %bb.e
  %i.bt = trunc i64 %.01014.i to i32              ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread, label %bb.h

_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread: ; preds = %bb.d, %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit, %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(63) @.str.4, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 765, ptr noundef nonnull @.str.27, i32 noundef %.076160) #21
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread
  unreachable

bb.g:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bh

bb.h:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit
  %sext = shl i64 %.01014.i, 32
  %i.bw = ashr exact i64 %sext, 30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bw
  store i32 1, ptr %i.bx, align 4, !tbaa !46
  %i.by = add nsw i32 %.074161, 1                 ; 2 uses
  %i.bz = add nsw i32 %.076160, -1                ; 2 uses
  %i.ca = icmp sgt i32 %.074161, -1
  br i1 %i.ca, label %.lr.ph155, label %.loopexit

.lr.ph155:                                        ; preds = %bb.h, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit
  %.175152 = phi i32 [ %i.ls, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ], [ %i.by, %bb.h ] ; 2 uses
  %.177151 = phi i32 [ %i.lt, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ], [ %i.bz, %bb.h ]
  %.0116150 = phi i32 [ %.4, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ], [ %i.bt, %bb.h ]
  %.1119149 = phi i32 [ %.4122, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ], [ %.0118159, %bb.h ] ; 2 uses
  %i.cb = load ptr, ptr %i.w, align 8, !tbaa !70  ; 3 uses
  %i.cc = sext i32 %.0116150 to i64               ; 2 uses
  %i.cd = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ce = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 3 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = add nsw i64 %i.ci, -1                   ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, %i.cc
  br i1 %i.ck, label %.lr.ph.i93, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97.thread

.lr.ph.i93:                                       ; preds = %.lr.ph155, %.critedge.i95
  %.01014.i94 = phi i64 [ %i.ct, %.critedge.i95 ], [ %i.cc, %.lr.ph155 ] ; 5 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ce, i64 %.01014.i94 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18
  %i.cn = getelementptr i8, ptr %i.cl, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %.critedge.i95, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i93
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %.01014.i94
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !46
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97, label %.critedge.i95

.critedge.i95:                                    ; preds = %bb.i, %.lr.ph.i93
  %i.ct = add nsw i64 %.01014.i94, 1              ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %i.ct, %i.cj
  br i1 %exitcond.not.i96, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97.thread, label %.lr.ph.i93, !llvm.loop !137

_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97: ; preds = %bb.i
  %i.cu = trunc i64 %.01014.i94 to i32            ; 4 uses
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97.thread, label %bb.l

_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97.thread: ; preds = %.lr.ph155, %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97, %.critedge.i95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(63) @.str.4, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 779, ptr noundef nonnull @.str.28, i32 noundef %.175152) #21
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97.thread
  unreachable

bb.k:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97.thread
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bh

bb.l:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit97
  %sext90 = shl i64 %.01014.i94, 32
  %i.cx = ashr exact i64 %sext90, 30              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cx
  store i32 2, ptr %i.cy, align 4, !tbaa !46
  %i.cz = add nsw i32 %.175152, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.da = load float, ptr %3, align 4, !tbaa !82
  %i.db = fmul float %i.da, 5.000000e-01          ; 3 uses
  store float %i.db, ptr %i.e, align 4, !tbaa !82
  %i.dc = load float, ptr %i.ak, align 4, !tbaa !82
  %i.dd = fmul float %i.dc, 5.000000e-01          ; 3 uses
  store float %i.dd, ptr %i.al, align 4, !tbaa !82
  %i.de = load float, ptr %i.am, align 4, !tbaa !82
  %i.df = fmul float %i.de, 5.000000e-01          ; 3 uses
  store float %i.df, ptr %i.an, align 4, !tbaa !82
  %i.dg = load float, ptr %i.aj, align 4, !tbaa !82
  %i.dh = fcmp une float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = load float, ptr %i.ao, align 4, !tbaa !82
  %i.dj = fcmp une float %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = load float, ptr %i.ap, align 4, !tbaa !82
  %i.dl = fcmp une float %i.dk, 0.000000e+00
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.dm = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ %i.dl, %bb.n ]
  %i.dn = load i32, ptr %i.aq, align 8, !tbaa !41 ; 2 uses
  %i.do = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.ce, i64 %i.cx  ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !18 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dt
  %.not8992.i = icmp eq i32 %i.dq, %i.ds
  br i1 %.not8992.i, label %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.o
  %i.dv = sext i32 %i.dq to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dv
  %i.dx = add nsw i32 %i.dn, %i.cu                ; 2 uses
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [12 x i8], ptr %4, i64 %i.dy ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.ec = fneg float %i.db
  %i.ed = fneg float %i.dd
  %i.ee = fneg float %i.df
  %i.ef = add nsw i32 %i.dx, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.an, %.lr.ph.i98
  %.2120 = phi i32 [ %.1119149, %.lr.ph.i98 ], [ %.3121, %bb.an ] ; 3 uses
  %.1 = phi i32 [ %i.cu, %.lr.ph.i98 ], [ %.2, %bb.an ] ; 3 uses
  %.07694.i = phi i32 [ 0, %.lr.ph.i98 ], [ %.1.i, %bb.an ] ; 3 uses
  %.sroa.0.093.i = phi ptr [ %i.dw, %.lr.ph.i98 ], [ %i.lr, %bb.an ] ; 2 uses
  %i.eg = load i32, ptr %.sroa.0.093.i, align 4, !tbaa !18 ; 3 uses
  %i.eh = load i8, ptr %i.h, align 8, !tbaa !80, !range !72, !noundef !73
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = sext i32 %i.eg to i64                   ; 4 uses
  %i.ek = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ej ; 7 uses
  %i.el = load ptr, ptr %i.as, align 8, !tbaa !43 ; 3 uses
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.dy ; 9 uses
  br i1 %i.ei, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.en = load i32, ptr %i.em, align 4, !tbaa !18 ; 4 uses
  %i.eo = icmp slt i32 %i.en, 1
  %i.ep = and i32 %i.en, 1
  %.not.i.i = icmp eq i32 %i.ep, 0
  %or.cond.i.i = or i1 %i.eo, %.not.i.i
  %i.eq = and i32 %i.en, -2147483647
  %or.cond51.not.i.i = icmp ne i32 %i.eq, -2147483647
  %i.er = and i1 %or.cond51.not.i.i, %or.cond.i.i
  %.044.i.i = select i1 %i.er, i32 1, i32 -1      ; 4 uses
  %i.es = load float, ptr %i.dz, align 4, !tbaa !82
  %i.et = load float, ptr %i.ek, align 4, !tbaa !82
  %i.eu = fsub float %i.es, %i.et                 ; 2 uses
  %i.ev = load float, ptr %i.ea, align 4, !tbaa !82
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !82 ; 2 uses
  %i.ey = load float, ptr %i.eb, align 4, !tbaa !82
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !82 ; 2 uses
  %i.fb = fcmp olt float %i.eu, %i.ec
  %i.fc = fcmp oge float %i.eu, %i.db
  %i.fd = zext i1 %i.fc to i32
  %.sink.v.i.i = select i1 %i.fb, i32 -1, i32 %i.fd ; 2 uses
  %.sink.i.i = add nsw i32 %.sink.v.i.i, %i.en
  store i32 %.sink.i.i, ptr %i.f, align 8, !tbaa !18
  %.not50.i.i = icmp eq i32 %.sink.v.i.i, 0
  br i1 %.not50.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fe = load float, ptr %i.ak, align 4, !tbaa !82
  %i.ff = load float, ptr %i.ap, align 4, !tbaa !82
  %i.fg = fadd float %i.fe, %i.ff
  %i.fh = fsub float %i.fg, %i.ex
  %i.fi = load float, ptr %i.am, align 4, !tbaa !82
  %i.fj = fsub float %i.fi, %i.fa
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.i.i = phi float [ %i.fa, %bb.q ], [ %i.fj, %bb.r ]
  %.pn54.i.i = phi float [ %i.ex, %bb.q ], [ %i.fh, %bb.r ]
  %.sroa.3.0.i.i = fsub float %i.ev, %.pn54.i.i   ; 2 uses
  %.sroa.6.0.i.i = fsub float %i.ey, %.pn.i.i     ; 2 uses
  %i.fk = fcmp olt float %.sroa.3.0.i.i, %i.ed
  br i1 %i.fk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !18
  %i.fn = sub nsw i32 %i.fm, %.044.i.i
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fo = fcmp ult float %.sroa.3.0.i.i, %i.dd
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !18
  %i.fr = select i1 %i.fo, i32 0, i32 %.044.i.i
  %spec.select59.i.i = add nsw i32 %i.fq, %i.fr
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink55.i.i = phi i32 [ %i.fn, %bb.t ], [ %spec.select59.i.i, %bb.u ]
  store i32 %.sink55.i.i, ptr %i.aw, align 4, !tbaa !18
  %i.fs = fcmp olt float %.sroa.6.0.i.i, %i.ee
  br i1 %i.fs, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ft = fcmp ult float %.sroa.6.0.i.i, %i.df
  %i.fu = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !18
  %i.fw = select i1 %i.ft, i32 0, i32 %.044.i.i
  %spec.select60.i.i = add nsw i32 %i.fv, %i.fw
  br label %_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i

bb.x:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !18
  %i.fz = sub nsw i32 %i.fy, %.044.i.i
  br label %_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i

_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i:  ; preds = %bb.x, %bb.w
  %.sink57.i.i = phi i32 [ %i.fz, %bb.x ], [ %spec.select60.i.i, %bb.w ]
  store i32 %.sink57.i.i, ptr %i.au, align 8, !tbaa !18
  br label %bb.af

bb.y:                                             ; preds = %bb.p
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  br i1 %i.dm, label %bb.z, label %vector.ph291

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.gb = load float, ptr %i.eb, align 4, !tbaa !82
  %i.gc = load float, ptr %i.ga, align 4, !tbaa !82
  %i.gd = fsub float %i.gb, %i.gc
  %i.ge = load <2 x float>, ptr %i.dz, align 4, !tbaa !82
  %i.gf = load <2 x float>, ptr %i.ek, align 4, !tbaa !82
  %i.gg = fsub <2 x float> %i.ge, %i.gf
  store <2 x float> %i.gg, ptr %i.c, align 8, !tbaa !82
  store float %i.gd, ptr %i.av, align 8, !tbaa !82
  store i32 0, ptr %i.au, align 8, !tbaa !18
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i.i, %bb.z
  %indvar = phi i32 [ %indvars.iv.next.i.i, %.loopexit.i.i ], [ 0, %bb.z ] ; 2 uses
  %indvars.iv53.i.i = phi i64 [ %indvars.iv.next54.i.i, %.loopexit.i.i ], [ %., %bb.z ] ; 6 uses
  %13 = sub i32 %12, %indvar                      ; 5 uses
  %i.gh = zext i32 %13 to i64
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 10 uses
  %indvars.iv.next54.i.i = add nsw i64 %indvars.iv53.i.i, -1 ; 10 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next54.i.i
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !82 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next54.i.i
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !82 ; 2 uses
  %i.gn = fneg float %i.gm
  %i.go = fcmp olt float %i.gk, %i.gn
  br i1 %i.go, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next54.i.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !18
  %i.gr = add nsw i32 %i.gq, -1
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next54.i.i
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !18
  %i.gt = icmp samesign ugt i64 %indvars.iv53.i.i, 1
  br i1 %i.gt, label %iter.check, label %_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i

iter.check:                                       ; preds = %bb.ab
  %i.gu = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next54.i.i ; 3 uses
  %14 = add nuw nsw i64 %indvars.iv53.i.i, 4294967294
  %15 = and i64 %14, 4294967295                   ; 5 uses
  %min.iters.check = icmp ult i32 %13, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check244 = icmp ult i32 %13, 31
  br i1 %min.iters.check244, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gv = and i64 %i.gi, 24
  %n.vec = and i64 %i.gi, 8589934560              ; 4 uses
  %i.gw = sub nsw i64 %15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gx = sub i64 %15, %index                     ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gx ; 4 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -28
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -60
  %i.hb = getelementptr inbounds i8, ptr %i.gy, i64 -92
  %i.hc = getelementptr inbounds i8, ptr %i.gy, i64 -124
  %wide.load = load <8 x float>, ptr %i.gz, align 4, !tbaa !82
  %wide.load245 = load <8 x float>, ptr %i.ha, align 4, !tbaa !82
  %wide.load246 = load <8 x float>, ptr %i.hb, align 4, !tbaa !82
  %wide.load247 = load <8 x float>, ptr %i.hc, align 4, !tbaa !82
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gx ; 4 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -28 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -60 ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hd, i64 -92 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 -124 ; 2 uses
  %wide.load248 = load <8 x float>, ptr %i.he, align 4, !tbaa !82
  %wide.load249 = load <8 x float>, ptr %i.hf, align 4, !tbaa !82
  %wide.load250 = load <8 x float>, ptr %i.hg, align 4, !tbaa !82
  %wide.load251 = load <8 x float>, ptr %i.hh, align 4, !tbaa !82
  %i.hi = fadd <8 x float> %wide.load, %wide.load248
  %i.hj = fadd <8 x float> %wide.load245, %wide.load249
  %i.hk = fadd <8 x float> %wide.load246, %wide.load250
  %i.hl = fadd <8 x float> %wide.load247, %wide.load251
  store <8 x float> %i.hi, ptr %i.he, align 4, !tbaa !82
  store <8 x float> %i.hj, ptr %i.hf, align 4, !tbaa !82
  store <8 x float> %i.hk, ptr %i.hg, align 4, !tbaa !82
  store <8 x float> %i.hl, ptr %i.hh, align 4, !tbaa !82
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gi, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec252 = and i64 %i.gi, 8589934584           ; 3 uses
  %i.hn = sub nsw i64 %15, %n.vec252
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index253 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next256, %vec.epilog.vector.body ] ; 2 uses
  %i.ho = sub i64 %15, %index253                  ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ho
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -28
  %wide.load254 = load <8 x float>, ptr %i.hq, align 4, !tbaa !82
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ho
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -28 ; 2 uses
  %wide.load255 = load <8 x float>, ptr %i.hs, align 4, !tbaa !82
  %i.ht = fadd <8 x float> %wide.load254, %wide.load255
  store <8 x float> %i.ht, ptr %i.hs, align 4, !tbaa !82
  %index.next256 = add nuw i64 %index253, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next256, %n.vec252
  br i1 %i.hu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n257 = icmp eq i64 %i.gi, %n.vec252
  br i1 %cmp.n257, label %.loopexit.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv50.i.i.ph = phi i64 [ %15, %iter.check ], [ %i.gw, %vec.epilog.iter.check ], [ %i.hn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv50.i.i = phi i64 [ %indvars.iv.next51.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv50.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv50.i.i
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !82
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv50.i.i ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !82
  %i.hz = fadd float %i.hw, %i.hy
  store float %i.hz, ptr %i.hx, align 4, !tbaa !82
  %indvars.iv.next51.i.i = add nsw i64 %indvars.iv50.i.i, -1
  %.not58.i.i = icmp eq i64 %indvars.iv50.i.i, 0
  br i1 %.not58.i.i, label %.loopexit.i.i, label %vec.epilog.scalar.ph, !llvm.loop !140

bb.ac:                                            ; preds = %bb.aa
  %i.ia = fcmp ult float %i.gk, %i.gm
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next54.i.i
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !18 ; 2 uses
  br i1 %i.ia, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.id = add nsw i32 %i.ic, 1
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next54.i.i
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !18
  %i.if = icmp samesign ugt i64 %indvars.iv53.i.i, 1
  br i1 %i.if, label %iter.check276, label %_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i

iter.check276:                                    ; preds = %bb.ad
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next54.i.i ; 3 uses
  %16 = add nuw nsw i64 %indvars.iv53.i.i, 4294967294
  %17 = and i64 %16, 4294967295                   ; 5 uses
  %min.iters.check258 = icmp ult i32 %13, 7
  br i1 %min.iters.check258, label %vec.epilog.scalar.ph278.preheader, label %vector.main.loop.iter.check259

vector.main.loop.iter.check259:                   ; preds = %iter.check276
  %min.iters.check260 = icmp ult i32 %13, 31
  br i1 %min.iters.check260, label %vec.epilog.ph280, label %vector.ph261

vector.ph261:                                     ; preds = %vector.main.loop.iter.check259
  %i.ih = and i64 %i.gi, 24
  %n.vec262 = and i64 %i.gi, 8589934560           ; 4 uses
  %i.ii = sub nsw i64 %17, %n.vec262
  br label %vector.body263

vector.body263:                                   ; preds = %vector.ph261, %vector.body263
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next273, %vector.body263 ] ; 2 uses
  %i.ij = sub i64 %17, %index264                  ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ij ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -28
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 -60
  %i.in = getelementptr inbounds i8, ptr %i.ik, i64 -92
  %i.io = getelementptr inbounds i8, ptr %i.ik, i64 -124
  %wide.load265 = load <8 x float>, ptr %i.il, align 4, !tbaa !82
  %wide.load266 = load <8 x float>, ptr %i.im, align 4, !tbaa !82
  %wide.load267 = load <8 x float>, ptr %i.in, align 4, !tbaa !82
  %wide.load268 = load <8 x float>, ptr %i.io, align 4, !tbaa !82
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ij ; 4 uses
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -28 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.ip, i64 -60 ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %i.ip, i64 -92 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.ip, i64 -124 ; 2 uses
  %wide.load269 = load <8 x float>, ptr %i.iq, align 4, !tbaa !82
  %wide.load270 = load <8 x float>, ptr %i.ir, align 4, !tbaa !82
  %wide.load271 = load <8 x float>, ptr %i.is, align 4, !tbaa !82
  %wide.load272 = load <8 x float>, ptr %i.it, align 4, !tbaa !82
  %i.iu = fsub <8 x float> %wide.load269, %wide.load265
  %i.iv = fsub <8 x float> %wide.load270, %wide.load266
  %i.iw = fsub <8 x float> %wide.load271, %wide.load267
  %i.ix = fsub <8 x float> %wide.load272, %wide.load268
  store <8 x float> %i.iu, ptr %i.iq, align 4, !tbaa !82
  store <8 x float> %i.iv, ptr %i.ir, align 4, !tbaa !82
  store <8 x float> %i.iw, ptr %i.is, align 4, !tbaa !82
  store <8 x float> %i.ix, ptr %i.it, align 4, !tbaa !82
  %index.next273 = add nuw i64 %index264, 32      ; 2 uses
  %i.iy = icmp eq i64 %index.next273, %n.vec262
  br i1 %i.iy, label %middle.block274, label %vector.body263, !llvm.loop !141

middle.block274:                                  ; preds = %vector.body263
  %cmp.n275 = icmp eq i64 %i.gi, %n.vec262
  br i1 %cmp.n275, label %.loopexit.i.i, label %vec.epilog.iter.check277

vec.epilog.iter.check277:                         ; preds = %middle.block274
  %min.epilog.iters.check279 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check279, label %vec.epilog.scalar.ph278.preheader, label %vec.epilog.ph280, !prof !64

vec.epilog.ph280:                                 ; preds = %vector.main.loop.iter.check259, %vec.epilog.iter.check277
  %vec.epilog.resume.val281 = phi i64 [ %n.vec262, %vec.epilog.iter.check277 ], [ 0, %vector.main.loop.iter.check259 ]
  %n.vec282 = and i64 %i.gi, 8589934584           ; 3 uses
  %i.iz = sub nsw i64 %17, %n.vec282
  br label %vec.epilog.vector.body283

vec.epilog.vector.body283:                        ; preds = %vec.epilog.vector.body283, %vec.epilog.ph280
  %index284 = phi i64 [ %vec.epilog.resume.val281, %vec.epilog.ph280 ], [ %index.next287, %vec.epilog.vector.body283 ] ; 2 uses
  %i.ja = sub i64 %17, %index284                  ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -28
  %wide.load285 = load <8 x float>, ptr %i.jc, align 4, !tbaa !82
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ja
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -28 ; 2 uses
  %wide.load286 = load <8 x float>, ptr %i.je, align 4, !tbaa !82
  %i.jf = fsub <8 x float> %wide.load286, %wide.load285
  store <8 x float> %i.jf, ptr %i.je, align 4, !tbaa !82
  %index.next287 = add nuw i64 %index284, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.jg, label %vec.epilog.middle.block288, label %vec.epilog.vector.body283, !llvm.loop !142

vec.epilog.middle.block288:                       ; preds = %vec.epilog.vector.body283
  %cmp.n289 = icmp eq i64 %i.gi, %n.vec282
  br i1 %cmp.n289, label %.loopexit.i.i, label %vec.epilog.scalar.ph278.preheader

vec.epilog.scalar.ph278.preheader:                ; preds = %iter.check276, %vec.epilog.iter.check277, %vec.epilog.middle.block288
  %indvars.iv47.i.i.ph = phi i64 [ %17, %iter.check276 ], [ %i.ii, %vec.epilog.iter.check277 ], [ %i.iz, %vec.epilog.middle.block288 ]
  br label %vec.epilog.scalar.ph278

vec.epilog.scalar.ph278:                          ; preds = %vec.epilog.scalar.ph278.preheader, %vec.epilog.scalar.ph278
  %indvars.iv47.i.i = phi i64 [ %indvars.iv.next48.i.i, %vec.epilog.scalar.ph278 ], [ %indvars.iv47.i.i.ph, %vec.epilog.scalar.ph278.preheader ] ; 4 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv47.i.i
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !82
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv47.i.i ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !82
  %i.jl = fsub float %i.jk, %i.ji
  store float %i.jl, ptr %i.jj, align 4, !tbaa !82
  %indvars.iv.next48.i.i = add nsw i64 %indvars.iv47.i.i, -1
  %.not.i81.i = icmp eq i64 %indvars.iv47.i.i, 0
  br i1 %.not.i81.i, label %.loopexit.i.i, label %vec.epilog.scalar.ph278, !llvm.loop !143

bb.ae:                                            ; preds = %bb.ac
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next54.i.i
  store i32 %i.ic, ptr %i.jm, align 4, !tbaa !18
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %vec.epilog.scalar.ph278, %vec.epilog.scalar.ph, %middle.block274, %vec.epilog.middle.block288, %middle.block, %vec.epilog.middle.block, %bb.ae
  %i.jn = icmp samesign ugt i64 %indvars.iv53.i.i, 1
  %indvars.iv.next.i.i = add i32 %indvar, 1
  br i1 %i.jn, label %bb.aa, label %_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i, !llvm.loop !144

_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i:  ; preds = %.loopexit.i.i, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.af

vector.ph291:                                     ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.jo = load float, ptr %i.eb, align 4, !tbaa !82
  %i.jp = load float, ptr %i.ga, align 4, !tbaa !82
  %i.jq = fsub float %i.jo, %i.jp
  %i.jr = load <2 x float>, ptr %i.dz, align 4, !tbaa !82
  %i.js = load <2 x float>, ptr %i.ek, align 4, !tbaa !82
  %i.jt = fsub <2 x float> %i.jr, %i.js
  store <2 x float> %i.jt, ptr %i.b, align 8, !tbaa !82
  store float %i.jq, ptr %i.at, align 8, !tbaa !82
  store i32 0, ptr %i.au, align 8, !tbaa !18
  %wide.masked.load = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.b, <4 x i1> %i.ay, <4 x float> poison), !tbaa !82 ; 2 uses
  %wide.masked.load293 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.e, <4 x i1> %i.ay, <4 x float> poison), !tbaa !82 ; 2 uses
  %i.ju = fneg <4 x float> %wide.masked.load293
  %i.jv = fcmp olt <4 x float> %wide.masked.load, %i.ju ; 3 uses
  %i.jw = xor <4 x i1> %i.jv, splat (i1 true)
  %i.jx = select <4 x i1> %i.ay, <4 x i1> %i.jw, <4 x i1> zeroinitializer
  %i.jy = fcmp oge <4 x float> %wide.masked.load, %wide.masked.load293
  %wide.masked.load294 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.em, <4 x i1> %i.jx, <4 x i32> poison), !tbaa !18
  %i.jz = zext <4 x i1> %i.jy to <4 x i32>
  %i.ka = add nsw <4 x i32> %wide.masked.load294, %i.jz
  %i.kb = select <4 x i1> %i.ay, <4 x i1> %i.jv, <4 x i1> zeroinitializer
  %wide.masked.load295 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.em, <4 x i1> %i.kb, <4 x i32> poison), !tbaa !18
  %i.kc = add nsw <4 x i32> %wide.masked.load295, splat (i32 -1)
  %predphi = select <4 x i1> %i.jv, <4 x i32> %i.kc, <4 x i32> %i.ka
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %predphi, ptr align 8 %i.f, <4 x i1> %i.ay), !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.af

bb.af:                                            ; preds = %vector.ph291, %_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i, %_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i
  %i.kd = sub nsw i32 %i.eg, %i.dn                ; 2 uses
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ke ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !46
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %spec.select = call i32 @llvm.smin.i32(i32 %i.kd, i32 %.1)
  store i32 1, ptr %i.kf, align 4, !tbaa !46
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.ej ; 2 uses
  %i.kj = load <2 x i32>, ptr %i.f, align 8, !tbaa !18
  store <2 x i32> %i.kj, ptr %i.ki, align 4, !tbaa !18
  %i.kk = load i32, ptr %i.au, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !18
  %i.km = add nsw i32 %.07694.i, 1
  br label %bb.an

bb.ah:                                            ; preds = %bb.af
  %i.kn = load i32, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.ej ; 3 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.kn, %i.kp
  br i1 %.not.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.kq = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !18
  %.not78.i = icmp eq i32 %i.kq, %i.ks
  br i1 %.not78.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kt = load i32, ptr %i.au, align 8, !tbaa !18
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !18
  %.not79.i = icmp eq i32 %i.kt, %i.kv
  br i1 %.not79.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.kw = load i8, ptr @gmx_debug_at, align 1, !tbaa !71, !range !72, !noundef !73
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %6, i32 noundef 4, ptr noundef nonnull %3)
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.dz, ptr noundef %i.ek, ptr noundef nonnull %i.d)
  %i.ky = load ptr, ptr @debug, align 8, !tbaa !66
  %i.kz = add nsw i32 %i.eg, 1
  %i.la = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.lb = load i32, ptr %i.au, align 8, !tbaa !18
  %i.lc = load ptr, ptr %i.as, align 8, !tbaa !43
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.lc, i64 %i.ej ; 3 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !18
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !18
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !18
  %i.lj = load float, ptr %i.d, align 4, !tbaa !82
  %i.lk = fpext float %i.lj to double
  %i.ll = load <2 x float>, ptr %i.ax, align 4, !tbaa !82
  %i.lm = fpext <2 x float> %i.ll to <2 x double> ; 2 uses
  %i.ln = extractelement <2 x double> %i.lm, i64 0
  %i.lo = extractelement <2 x double> %i.lm, i64 1
  %i.lp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ky, ptr noundef nonnull @.str.37, i32 noundef %i.kz, i32 noundef %i.ef, i32 noundef %i.kn, i32 noundef %i.la, i32 noundef %i.lb, i32 noundef %i.le, i32 noundef %i.lg, i32 noundef %i.li, double noundef %i.lk, double noundef %i.ln, double noundef %i.lo) #24 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.lq = add nsw i32 %.2120, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj, %bb.ag
  %.3121 = phi i32 [ %.2120, %bb.ag ], [ %.2120, %bb.aj ], [ %i.lq, %bb.am ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.ag ], [ %.1, %bb.aj ], [ %.1, %bb.am ] ; 2 uses
  %.1.i = phi i32 [ %i.km, %bb.ag ], [ %.07694.i, %bb.aj ], [ %.07694.i, %bb.am ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.093.i, i64 4 ; 2 uses
  %.not89.i = icmp eq ptr %i.lr, %i.du
  br i1 %.not89.i, label %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit, label %bb.p

_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit: ; preds = %bb.an, %bb.o
  %.4122 = phi i32 [ %.1119149, %bb.o ], [ %.3121, %bb.an ] ; 2 uses
  %.4 = phi i32 [ %i.cu, %bb.o ], [ %.2, %bb.an ]
  %.076.lcssa.i = phi i32 [ 0, %bb.o ], [ %.1.i, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.ls = add nsw i32 %i.cz, %.076.lcssa.i        ; 3 uses
  %i.lt = sub nsw i32 %.177151, %.076.lcssa.i     ; 2 uses
  %i.lu = icmp sgt i32 %i.ls, 0
  br i1 %i.lu, label %.lr.ph155, label %.loopexit, !llvm.loop !145

._crit_edge165:                                   ; preds = %.loopexit
  %i.lv = icmp sgt i32 %.1119.lcssa, 0
  br i1 %i.lv, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %._crit_edge165
  %i.lw = call noundef i32 @_Z16numPbcDimensions7PbcType(i32 noundef %2) ; 4 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ9mk_mshiftP8_IO_FILEP7t_graph7PbcTypePA3_KfS6_ENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 808) #21
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ly = load float, ptr %3, align 4, !tbaa !82  ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !82 ; 2 uses
  %i.mb = fmul float %i.ma, %i.ma
  %i.mc = call float @llvm.fmuladd.f32(float %i.ly, float %i.ly, float %i.mb)
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.me = load float, ptr %i.md, align 4, !tbaa !82 ; 2 uses
  %i.mf = call noundef float @llvm.fmuladd.f32(float %i.me, float %i.me, float %i.mc)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.mf) ; 3 uses
  %.not173 = icmp eq i32 %i.lw, 1
  br i1 %.not173, label %._crit_edge171, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.aq
  %wide.trip.count = zext nneg i32 %i.lw to i64
  %i.mg = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.mg, 3                    ; 3 uses
  %i.mh = add nsw i32 %i.lw, -2
  %i.mi = icmp ult i32 %i.mh, 3
  br i1 %i.mi, label %.lr.ph170.epil.preheader, label %.lr.ph170.preheader.new

.lr.ph170.preheader.new:                          ; preds = %.lr.ph170.preheader
  %unroll_iter = and i64 %i.mg, -4
  br label %.lr.ph170

._crit_edge171.loopexit.unr-lcssa:                ; preds = %.lr.ph170
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge171, label %.lr.ph170.epil.preheader

.lr.ph170.epil.preheader:                         ; preds = %._crit_edge171.loopexit.unr-lcssa, %.lr.ph170.preheader
  %indvars.iv190.epil.init = phi i64 [ 1, %.lr.ph170.preheader ], [ %indvars.iv.next191.3, %._crit_edge171.loopexit.unr-lcssa ]
  %.0117167.epil.init = phi float [ %sqrt.i, %.lr.ph170.preheader ], [ %.sroa.speculated.3, %._crit_edge171.loopexit.unr-lcssa ]
  %lcmp.mod312 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod312)
  br label %.lr.ph170.epil

.lr.ph170.epil:                                   ; preds = %.lr.ph170.epil, %.lr.ph170.epil.preheader
  %indvars.iv190.epil = phi i64 [ %indvars.iv190.epil.init, %.lr.ph170.epil.preheader ], [ %indvars.iv.next191.epil, %.lr.ph170.epil ] ; 2 uses
  %.0117167.epil = phi float [ %.0117167.epil.init, %.lr.ph170.epil.preheader ], [ %.sroa.speculated.epil, %.lr.ph170.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph170.epil.preheader ], [ %epil.iter.next, %.lr.ph170.epil ]
  %i.mj = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv190.epil ; 3 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !82 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !82 ; 2 uses
  %i.mn = fmul float %i.mm, %i.mm
  %i.mo = call float @llvm.fmuladd.f32(float %i.mk, float %i.mk, float %i.mn)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !82 ; 2 uses
  %i.mr = call noundef float @llvm.fmuladd.f32(float %i.mq, float %i.mq, float %i.mo)
  %sqrt.i101.epil = call noundef float @llvm.sqrt.f32(float %i.mr) ; 2 uses
  %i.ms = fcmp olt float %sqrt.i101.epil, %.0117167.epil
  %.sroa.speculated.epil = select i1 %i.ms, float %sqrt.i101.epil, float %.0117167.epil ; 2 uses
  %indvars.iv.next191.epil = add nuw nsw i64 %indvars.iv190.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge171, label %.lr.ph170.epil, !llvm.loop !146

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit.unr-lcssa, %.lr.ph170.epil, %bb.aq
end_hunk_0
