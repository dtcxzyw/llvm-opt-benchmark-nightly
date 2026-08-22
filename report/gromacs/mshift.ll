Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mshift?download=true
inline.NumInlined: 962
inline.NumDeleted: 434
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL9mk_igraphI7t_ilistEbP14EdgesGenerator19InteractionFunctionRKT_iN3gmx8ArrayRefIKiEE:bb.a
  br label %.lr.ph72.split

.lr.ph72.split:                                   ; preds = %.lr.ph72, %.lr.ph72.splitthread-pre-split
  %i.k = phi i32 [ %.pr, %.lr.ph72.splitthread-pre-split ], [ %i.i, %.lr.ph72 ] ; 4 uses
  %.071 = phi i32 [ %i.az, %.lr.ph72.splitthread-pre-split ], [ 0, %.lr.ph72 ] ; 4 uses
  %.05670 = phi i1 [ %.3, %.lr.ph72.splitthread-pre-split ], [ false, %.lr.ph72 ] ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %.lr.ph72.split..loopexit_crit_edge

.lr.ph72.split..loopexit_crit_edge:               ; preds = %.lr.ph72.split
  %.pre = add nsw i32 %.071, 1
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph72.split
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !129  ; 3 uses
  %i.n = add nsw i32 %.071, 1                     ; 5 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15   ; 2 uses
  %i.r = icmp slt i32 %i.q, %3
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.k, %.071
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
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
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  tail call void @_ZN14EdgesGenerator7addEdgeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.q, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !129 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.o
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %i.ae = getelementptr [4 x i8], ptr %i.ab, i64 %i.x
  %i.af = getelementptr i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15
  tail call void @_ZN14EdgesGenerator7addEdgeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ad, i32 noundef %i.ag)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %wide.trip.count79 = zext nneg i32 %i.k to i64  ; 2 uses
  br i1 %i.h, label %.lr.ph69, label %.lr.ph

.lr.ph69:                                         ; preds = %bb.i, %.lr.ph69
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %.lr.ph69 ], [ 1, %bb.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv76
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.x ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !15
  %i.al = getelementptr i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !15
  tail call void @_ZN14EdgesGenerator7addEdgeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ak, i32 noundef %i.am)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %.loopexit, label %.lr.ph69, !llvm.loop !130

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 1, %bb.i ] ; 2 uses
  %.15766 = phi i1 [ %.2, %bb.k ], [ %.05670, %bb.i ]
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.x ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !15
  %i.au = getelementptr i8, ptr %i.ap, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !15 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !15
  %.not61 = icmp eq i32 %i.at, %i.ay
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void @_ZN14EdgesGenerator7addEdgeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aq, i32 noundef %i.av)
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.2 = phi i1 [ true, %bb.j ], [ %.15766, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !131

.loopexit:                                        ; preds = %bb.k, %.lr.ph69, %.lr.ph72.split..loopexit_crit_edge, %bb.h, %bb.b
  %.pre-phi = phi i32 [ %.pre, %.lr.ph72.split..loopexit_crit_edge ], [ %i.n, %bb.h ], [ %i.n, %bb.b ], [ %i.n, %.lr.ph69 ], [ %i.n, %bb.k ]
  %.3 = phi i1 [ %.05670, %.lr.ph72.split..loopexit_crit_edge ], [ true, %bb.h ], [ %.05670, %bb.b ], [ true, %.lr.ph69 ], [ %.2, %bb.k ] ; 2 uses
  %i.az = add i32 %.pre-phi, %i.k                 ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.a
  br i1 %i.ba, label %.lr.ph72.splitthread-pre-split, label %._crit_edge, !llvm.loop !132

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #23
  br label %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i

_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i:           ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorI5egColSaIS0_EED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.e, %_ZNSt6vectorIN3gmx11BasicVectorIiEESaIS2_EED2Ev.exit.i
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7t_graphD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
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
  %i.b = alloca [3 x float], align 16             ; 5 uses
  %i.c = alloca [3 x float], align 8              ; 11 uses
  %i.d = alloca [3 x float], align 4              ; 5 uses
  %i.e = alloca [3 x float], align 16             ; 7 uses
  %i.f = alloca [3 x i32], align 16               ; 12 uses
  %6 = alloca %struct.t_pbc, align 4              ; 4 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.g = icmp eq i32 %2, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = zext i1 %i.g to i8
  store i8 %i.i, ptr %i.h, align 8, !tbaa !116
  %i.j = icmp eq i32 %2, 2
  %. = select i1 %i.j, i32 2, i32 3               ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !82
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %i.p, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !15
  store i32 0, ptr %i.o, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %1, align 8, !tbaa !82
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22   ; 3 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIP5egColSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = add i64 %i.aa, -4
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = and i64 %i.ad, -4
  %i.af = add i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.af, i1 false), !tbaa !43
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIP5egColSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIP5egColSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.c
  %i.ag = icmp sgt i32 %i.v, 0
  br i1 %i.ag, label %.lr.ph163, label %.thread

.lr.ph163:                                        ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIP5egColSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RKT0_.exit
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
  %wide.trip.count.i.i = zext nneg i32 %. to i64  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = add nsw i32 %., -2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %trip.count.minus.1 = add nsw i64 %wide.trip.count.i.i, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.az = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 5 uses
  br label %bb.d

.loopexit:                                        ; preds = %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit, %bb.h
  %.1118.lcssa = phi i32 [ %.0117158, %bb.h ], [ %.4121, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ] ; 4 uses
  %.177.lcssa = phi i32 [ %i.ca, %bb.h ], [ %i.lu, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ] ; 2 uses
  %.175.lcssa = phi i32 [ %i.bz, %bb.h ], [ %i.lt, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ]
  %i.ba = icmp sgt i32 %.177.lcssa, 0
  br i1 %i.ba, label %bb.d, label %._crit_edge164, !llvm.loop !134

bb.d:                                             ; preds = %.lr.ph163, %.loopexit
  %.071162 = phi i64 [ 0, %.lr.ph163 ], [ %.01014.i, %.loopexit ]
  %.074160 = phi i32 [ 0, %.lr.ph163 ], [ %.175.lcssa, %.loopexit ] ; 2 uses
  %.076159 = phi i32 [ %i.v, %.lr.ph163 ], [ %.177.lcssa, %.loopexit ] ; 2 uses
  %.0117158 = phi i32 [ 0, %.lr.ph163 ], [ %.1118.lcssa, %.loopexit ] ; 2 uses
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !85  ; 2 uses
  %sext122 = shl i64 %.071162, 32
  %i.bc = ashr exact i64 %sext122, 32             ; 2 uses
  %i.bd = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = add nsw i64 %i.bi, -1                   ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, %i.bc
  br i1 %i.bk, label %.lr.ph.i, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.01014.i = phi i64 [ %i.bt, %.critedge.i ], [ %i.bc, %bb.d ] ; 6 uses
  %i.bl = getelementptr [4 x i8], ptr %i.be, i64 %.01014.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15
  %i.bn = getelementptr i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !15
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.01014.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !43
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i
  %i.bt = add nsw i64 %.01014.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.bj
  br i1 %exitcond.not.i, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread, label %.lr.ph.i, !llvm.loop !135

_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit: ; preds = %bb.e
  %i.bu = trunc i64 %.01014.i to i32              ; 2 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread, label %bb.h

_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread: ; preds = %bb.d, %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit, %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(63) @.str.4, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 765, ptr noundef nonnull @.str.27, i32 noundef %.076159) #21
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread
  unreachable

bb.g:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit.thread
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bl

bb.h:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit
  %sext = shl i64 %.01014.i, 32
  %i.bx = ashr exact i64 %sext, 30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bx
  store i32 1, ptr %i.by, align 4, !tbaa !43
  %i.bz = add nsw i32 %.074160, 1                 ; 2 uses
  %i.ca = add nsw i32 %.076159, -1                ; 2 uses
  %i.cb = icmp sgt i32 %.074160, -1
  br i1 %i.cb, label %.lr.ph154, label %.loopexit

.lr.ph154:                                        ; preds = %bb.h, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit
  %.175151 = phi i32 [ %i.lt, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ], [ %i.bz, %bb.h ] ; 2 uses
  %.177150 = phi i32 [ %i.lu, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ], [ %i.ca, %bb.h ]
  %.0115149 = phi i32 [ %.4, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ], [ %i.bu, %bb.h ]
  %.1118148 = phi i32 [ %.4121, %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit ], [ %.0117158, %bb.h ] ; 2 uses
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !85  ; 3 uses
  %i.cd = sext i32 %.0115149 to i64               ; 2 uses
  %i.ce = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 2
  %i.ck = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, %i.cd
  br i1 %i.cl, label %.lr.ph.i92, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96.thread

.lr.ph.i92:                                       ; preds = %.lr.ph154, %.critedge.i94
  %.01014.i93 = phi i64 [ %i.cu, %.critedge.i94 ], [ %i.cd, %.lr.ph154 ] ; 5 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cf, i64 %.01014.i93 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !15
  %i.co = getelementptr i8, ptr %i.cm, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !15
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %.critedge.i94, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i92
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %.01014.i93
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !43
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96, label %.critedge.i94

.critedge.i94:                                    ; preds = %bb.i, %.lr.ph.i92
  %i.cu = add nsw i64 %.01014.i93, 1              ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %i.cu, %i.ck
  br i1 %exitcond.not.i95, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96.thread, label %.lr.ph.i92, !llvm.loop !135

_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96: ; preds = %bb.i
  %i.cv = trunc i64 %.01014.i93 to i32            ; 4 uses
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96.thread, label %bb.l

_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96.thread: ; preds = %.lr.ph154, %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96, %.critedge.i94
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(63) @.str.4, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 779, ptr noundef nonnull @.str.28, i32 noundef %.175151) #21
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96.thread
  unreachable

bb.k:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96.thread
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bl

bb.l:                                             ; preds = %_ZL12first_colouri5egColPK7t_graphN3gmx8ArrayRefIKS_EE.exit96
  %sext89 = shl i64 %.01014.i93, 32
  %i.cy = ashr exact i64 %sext89, 30              ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cy
  store i32 2, ptr %i.cz, align 4, !tbaa !43
  %i.da = add nsw i32 %.175151, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.db = load float, ptr %3, align 4, !tbaa !136
  %i.dc = fmul float %i.db, 5.000000e-01          ; 3 uses
  store float %i.dc, ptr %i.e, align 16, !tbaa !136
  %i.dd = load float, ptr %i.ak, align 4, !tbaa !136
  %i.de = fmul float %i.dd, 5.000000e-01          ; 3 uses
  store float %i.de, ptr %i.al, align 4, !tbaa !136
  %i.df = load float, ptr %i.am, align 4, !tbaa !136
  %i.dg = fmul float %i.df, 5.000000e-01          ; 3 uses
  store float %i.dg, ptr %i.an, align 8, !tbaa !136
  %i.dh = load float, ptr %i.aj, align 4, !tbaa !136
  %i.di = fcmp une float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dj = load float, ptr %i.ao, align 4, !tbaa !136
  %i.dk = fcmp une float %i.dj, 0.000000e+00
  br i1 %i.dk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = load float, ptr %i.ap, align 4, !tbaa !136
  %i.dm = fcmp une float %i.dl, 0.000000e+00
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.dn = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ %i.dm, %bb.n ]
  %i.do = load i32, ptr %i.aq, align 8, !tbaa !39 ; 2 uses
  %i.dp = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cf, i64 %i.cy  ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !15 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !15 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.du
  %.not9194.i = icmp eq i32 %i.dr, %i.dt
  br i1 %.not9194.i, label %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.o
  %i.dw = sext i32 %i.dr to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dw
  %i.dy = add nsw i32 %i.do, %i.cv                ; 2 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [12 x i8], ptr %4, i64 %i.dz ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.ed = fneg float %i.dc
  %i.ee = fneg float %i.de
  %i.ef = fneg float %i.dg
  %i.eg = add nsw i32 %i.dy, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.ar, %.lr.ph.i97
  %.2119 = phi i32 [ %.1118148, %.lr.ph.i97 ], [ %.3120, %bb.ar ] ; 3 uses
  %.1 = phi i32 [ %i.cv, %.lr.ph.i97 ], [ %.2, %bb.ar ] ; 3 uses
  %.07696.i = phi i32 [ 0, %.lr.ph.i97 ], [ %.1.i, %bb.ar ] ; 3 uses
  %.sroa.0.095.i = phi ptr [ %i.dx, %.lr.ph.i97 ], [ %i.ls, %bb.ar ] ; 2 uses
  %i.eh = load i32, ptr %.sroa.0.095.i, align 4, !tbaa !15 ; 3 uses
  %i.ei = load i8, ptr %i.h, align 8, !tbaa !116, !range !87, !noundef !88
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = sext i32 %i.eh to i64                   ; 4 uses
  %i.el = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ek ; 7 uses
  %i.em = load ptr, ptr %i.as, align 8, !tbaa !41 ; 3 uses
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %i.dz ; 9 uses
  br i1 %i.ej, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !15 ; 5 uses
  %i.ep = icmp slt i32 %i.eo, 1
  %i.eq = and i32 %i.eo, 1
  %.not.i.i = icmp eq i32 %i.eq, 0
  %or.cond.i.i = or i1 %i.ep, %.not.i.i
  %i.er = and i32 %i.eo, -2147483647
  %or.cond51.not.i.i = icmp ne i32 %i.er, -2147483647
  %i.es = and i1 %or.cond51.not.i.i, %or.cond.i.i
  %.044.i.i = select i1 %i.es, i32 1, i32 -1      ; 4 uses
  %i.et = load float, ptr %i.ea, align 4, !tbaa !136
  %i.eu = load float, ptr %i.el, align 4, !tbaa !136
  %i.ev = fsub float %i.et, %i.eu                 ; 2 uses
  %i.ew = load float, ptr %i.eb, align 4, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !136 ; 2 uses
  %i.ez = load float, ptr %i.ec, align 4, !tbaa !136
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !136 ; 2 uses
  %i.fc = fcmp olt float %i.ev, %i.ed
  br i1 %i.fc, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fd = fcmp ult float %i.ev, %i.dc
  br i1 %i.fd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.eo, ptr %i.f, align 16, !tbaa !15
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sink.i = phi i32 [ -1, %bb.q ], [ 1, %bb.r ]
  %i.fe = add nsw i32 %.sink.i, %i.eo
  store i32 %i.fe, ptr %i.f, align 16, !tbaa !15
  %i.ff = load float, ptr %i.ak, align 4, !tbaa !136
  %i.fg = load float, ptr %i.ap, align 4, !tbaa !136
  %i.fh = fadd float %i.ff, %i.fg
  %i.fi = fsub float %i.fh, %i.ey
  %i.fj = load float, ptr %i.am, align 4, !tbaa !136
  %i.fk = fsub float %i.fj, %i.fb
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.i.i = phi float [ %i.fb, %bb.s ], [ %i.fk, %bb.t ]
  %.pn54.i.i = phi float [ %i.ey, %bb.s ], [ %i.fi, %bb.t ]
  %.sroa.3.0.i.i = fsub float %i.ew, %.pn54.i.i   ; 2 uses
  %.sroa.6.0.i.i = fsub float %i.ez, %.pn.i.i     ; 2 uses
  %i.fl = fcmp olt float %.sroa.3.0.i.i, %i.ee
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !15
  %i.fo = sub nsw i32 %i.fn, %.044.i.i
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.fp = fcmp ult float %.sroa.3.0.i.i, %i.de
  %i.fq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !15 ; 2 uses
  br i1 %i.fp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fs = add nsw i32 %i.fr, %.044.i.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sink55.i.i = phi i32 [ %i.fo, %bb.v ], [ %i.fs, %bb.x ], [ %i.fr, %bb.w ]
  store i32 %.sink55.i.i, ptr %i.ax, align 4, !tbaa !15
  %i.ft = fcmp olt float %.sroa.6.0.i.i, %i.ef
  br i1 %i.ft, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = fcmp ult float %.sroa.6.0.i.i, %i.dg
  %i.fv = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !15 ; 2 uses
  br i1 %i.fu, label %_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = add nsw i32 %i.fw, %.044.i.i
  br label %_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i

bb.ab:                                            ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !15
  %i.ga = sub nsw i32 %i.fz, %.044.i.i
  br label %_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i

_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i:  ; preds = %bb.ab, %bb.aa, %bb.z
  %.sink57.i.i = phi i32 [ %i.ga, %bb.ab ], [ %i.fx, %bb.aa ], [ %i.fw, %bb.z ]
  store i32 %.sink57.i.i, ptr %i.au, align 8, !tbaa !15
  br label %bb.aj

bb.ac:                                            ; preds = %bb.p
  %i.gb = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  br i1 %i.dn, label %bb.ad, label %vector.ph292

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.gc = load float, ptr %i.ec, align 4, !tbaa !136
  %i.gd = load float, ptr %i.gb, align 4, !tbaa !136
  %i.ge = fsub float %i.gc, %i.gd
  %i.gf = load <2 x float>, ptr %i.ea, align 4, !tbaa !136
  %i.gg = load <2 x float>, ptr %i.el, align 4, !tbaa !136
  %i.gh = fsub <2 x float> %i.gf, %i.gg
  store <2 x float> %i.gh, ptr %i.c, align 8, !tbaa !136
  store float %i.ge, ptr %i.av, align 8, !tbaa !136
  store i32 0, ptr %i.au, align 8, !tbaa !15
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i, %bb.ad
  %indvars.iv53.i.i = phi i64 [ %wide.trip.count.i.i, %bb.ad ], [ %indvars.iv.next54.i.i, %.loopexit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i32 [ %i.aw, %bb.ad ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 7 uses
  %i.gi = zext i32 %indvars.iv.i.i to i64
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 10 uses
  %i.gk = zext i32 %indvars.iv.i.i to i64         ; 10 uses
  %indvars.iv.next54.i.i = add nsw i64 %indvars.iv53.i.i, -1 ; 10 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next54.i.i
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !136 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next54.i.i
  %i.go = load float, ptr %i.gn, align 4, !tbaa !136 ; 2 uses
  %i.gp = fneg float %i.go
  %i.gq = fcmp olt float %i.gm, %i.gp
  br i1 %i.gq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next54.i.i
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !15
  %i.gt = add nsw i32 %i.gs, -1
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next54.i.i
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !15
  %i.gv = icmp samesign ugt i64 %indvars.iv53.i.i, 1
  br i1 %i.gv, label %iter.check, label %_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i

iter.check:                                       ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next54.i.i ; 3 uses
  %min.iters.check = icmp ult i32 %indvars.iv.i.i, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check244 = icmp ult i32 %indvars.iv.i.i, 31
  br i1 %min.iters.check244, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i64 %i.gj, 24
  %n.vec = and i64 %i.gj, 8589934560              ; 4 uses
  %i.gy = sub nsw i64 %i.gk, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = sub i64 %i.gk, %index                   ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gz ; 4 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -28
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -60
  %i.hd = getelementptr inbounds i8, ptr %i.ha, i64 -92
  %i.he = getelementptr inbounds i8, ptr %i.ha, i64 -124
  %wide.load = load <8 x float>, ptr %i.hb, align 4, !tbaa !136
  %wide.load245 = load <8 x float>, ptr %i.hc, align 4, !tbaa !136
  %wide.load246 = load <8 x float>, ptr %i.hd, align 4, !tbaa !136
  %wide.load247 = load <8 x float>, ptr %i.he, align 4, !tbaa !136
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gz ; 4 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -28 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 -60 ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hf, i64 -92 ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hf, i64 -124 ; 2 uses
  %wide.load248 = load <8 x float>, ptr %i.hg, align 4, !tbaa !136
  %wide.load249 = load <8 x float>, ptr %i.hh, align 4, !tbaa !136
  %wide.load250 = load <8 x float>, ptr %i.hi, align 4, !tbaa !136
  %wide.load251 = load <8 x float>, ptr %i.hj, align 4, !tbaa !136
  %i.hk = fadd <8 x float> %wide.load, %wide.load248
  %i.hl = fadd <8 x float> %wide.load245, %wide.load249
  %i.hm = fadd <8 x float> %wide.load246, %wide.load250
  %i.hn = fadd <8 x float> %wide.load247, %wide.load251
  store <8 x float> %i.hk, ptr %i.hg, align 4, !tbaa !136
  store <8 x float> %i.hl, ptr %i.hh, align 4, !tbaa !136
  store <8 x float> %i.hm, ptr %i.hi, align 4, !tbaa !136
  store <8 x float> %i.hn, ptr %i.hj, align 4, !tbaa !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gj, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec252 = and i64 %i.gj, 8589934584           ; 3 uses
  %i.hp = sub nsw i64 %i.gk, %n.vec252
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index253 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next256, %vec.epilog.vector.body ] ; 2 uses
  %i.hq = sub i64 %i.gk, %index253                ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -28
  %wide.load254 = load <8 x float>, ptr %i.hs, align 4, !tbaa !136
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hq
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -28 ; 2 uses
  %wide.load255 = load <8 x float>, ptr %i.hu, align 4, !tbaa !136
  %i.hv = fadd <8 x float> %wide.load254, %wide.load255
  store <8 x float> %i.hv, ptr %i.hu, align 4, !tbaa !136
  %index.next256 = add nuw i64 %index253, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next256, %n.vec252
  br i1 %i.hw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n257 = icmp eq i64 %i.gj, %n.vec252
  br i1 %cmp.n257, label %.loopexit.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv50.i.i.ph = phi i64 [ %i.gk, %iter.check ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hp, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv50.i.i = phi i64 [ %indvars.iv.next51.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv50.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv50.i.i
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !136
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv50.i.i ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !136
  %i.ib = fadd float %i.hy, %i.ia
  store float %i.ib, ptr %i.hz, align 4, !tbaa !136
  %indvars.iv.next51.i.i = add nsw i64 %indvars.iv50.i.i, -1
  %.not58.i.i = icmp eq i64 %indvars.iv50.i.i, 0
  br i1 %.not58.i.i, label %.loopexit.i.i, label %vec.epilog.scalar.ph, !llvm.loop !140

bb.ag:                                            ; preds = %bb.ae
  %i.ic = fcmp ult float %i.gm, %i.go
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next54.i.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !15 ; 2 uses
  br i1 %i.ic, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.if = add nsw i32 %i.ie, 1
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next54.i.i
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !15
  %i.ih = icmp samesign ugt i64 %indvars.iv53.i.i, 1
  br i1 %i.ih, label %iter.check278, label %_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i

iter.check278:                                    ; preds = %bb.ah
  %i.ii = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next54.i.i ; 3 uses
  %min.iters.check259 = icmp ult i32 %indvars.iv.i.i, 7
  br i1 %min.iters.check259, label %vec.epilog.scalar.ph279.preheader, label %vector.main.loop.iter.check260

vector.main.loop.iter.check260:                   ; preds = %iter.check278
  %min.iters.check261 = icmp ult i32 %indvars.iv.i.i, 31
  br i1 %min.iters.check261, label %vec.epilog.ph282, label %vector.ph262

vector.ph262:                                     ; preds = %vector.main.loop.iter.check260
  %i.ij = and i64 %i.gj, 24
  %n.vec263 = and i64 %i.gj, 8589934560           ; 4 uses
  %i.ik = sub nsw i64 %i.gk, %n.vec263
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next274, %vector.body264 ] ; 2 uses
  %i.il = sub i64 %i.gk, %index265                ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.il ; 4 uses
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -28
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 -60
  %i.ip = getelementptr inbounds i8, ptr %i.im, i64 -92
  %i.iq = getelementptr inbounds i8, ptr %i.im, i64 -124
  %wide.load266 = load <8 x float>, ptr %i.in, align 4, !tbaa !136
  %wide.load267 = load <8 x float>, ptr %i.io, align 4, !tbaa !136
  %wide.load268 = load <8 x float>, ptr %i.ip, align 4, !tbaa !136
  %wide.load269 = load <8 x float>, ptr %i.iq, align 4, !tbaa !136
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.il ; 4 uses
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -28 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.ir, i64 -60 ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %i.ir, i64 -92 ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %i.ir, i64 -124 ; 2 uses
  %wide.load270 = load <8 x float>, ptr %i.is, align 4, !tbaa !136
  %wide.load271 = load <8 x float>, ptr %i.it, align 4, !tbaa !136
  %wide.load272 = load <8 x float>, ptr %i.iu, align 4, !tbaa !136
  %wide.load273 = load <8 x float>, ptr %i.iv, align 4, !tbaa !136
  %i.iw = fsub <8 x float> %wide.load270, %wide.load266
  %i.ix = fsub <8 x float> %wide.load271, %wide.load267
  %i.iy = fsub <8 x float> %wide.load272, %wide.load268
  %i.iz = fsub <8 x float> %wide.load273, %wide.load269
  store <8 x float> %i.iw, ptr %i.is, align 4, !tbaa !136
  store <8 x float> %i.ix, ptr %i.it, align 4, !tbaa !136
  store <8 x float> %i.iy, ptr %i.iu, align 4, !tbaa !136
  store <8 x float> %i.iz, ptr %i.iv, align 4, !tbaa !136
  %index.next274 = add nuw i64 %index265, 32      ; 2 uses
  %i.ja = icmp eq i64 %index.next274, %n.vec263
  br i1 %i.ja, label %middle.block275, label %vector.body264, !llvm.loop !141

middle.block275:                                  ; preds = %vector.body264
  %cmp.n276 = icmp eq i64 %i.gj, %n.vec263
  br i1 %cmp.n276, label %.loopexit.i.i, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block275
  %min.epilog.iters.check281 = icmp eq i64 %i.ij, 0
  br i1 %min.epilog.iters.check281, label %vec.epilog.scalar.ph279.preheader, label %vec.epilog.ph282, !prof !107

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check260, %vec.epilog.iter.check280
  %vec.epilog.resume.val277 = phi i64 [ %n.vec263, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check260 ]
  %n.vec283 = and i64 %i.gj, 8589934584           ; 3 uses
  %i.jb = sub nsw i64 %i.gk, %n.vec283
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph282
  %index285 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph282 ], [ %index.next288, %vec.epilog.vector.body284 ] ; 2 uses
  %i.jc = sub i64 %i.gk, %index285                ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.jc
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -28
  %wide.load286 = load <8 x float>, ptr %i.je, align 4, !tbaa !136
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -28 ; 2 uses
  %wide.load287 = load <8 x float>, ptr %i.jg, align 4, !tbaa !136
  %i.jh = fsub <8 x float> %wide.load287, %wide.load286
  store <8 x float> %i.jh, ptr %i.jg, align 4, !tbaa !136
  %index.next288 = add nuw i64 %index285, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.ji, label %vec.epilog.middle.block289, label %vec.epilog.vector.body284, !llvm.loop !142

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body284
  %cmp.n290 = icmp eq i64 %i.gj, %n.vec283
  br i1 %cmp.n290, label %.loopexit.i.i, label %vec.epilog.scalar.ph279.preheader

vec.epilog.scalar.ph279.preheader:                ; preds = %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block289
  %indvars.iv47.i.i.ph = phi i64 [ %i.gk, %iter.check278 ], [ %i.ik, %vec.epilog.iter.check280 ], [ %i.jb, %vec.epilog.middle.block289 ]
  br label %vec.epilog.scalar.ph279

vec.epilog.scalar.ph279:                          ; preds = %vec.epilog.scalar.ph279.preheader, %vec.epilog.scalar.ph279
  %indvars.iv47.i.i = phi i64 [ %indvars.iv.next48.i.i, %vec.epilog.scalar.ph279 ], [ %indvars.iv47.i.i.ph, %vec.epilog.scalar.ph279.preheader ] ; 4 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv47.i.i
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !136
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv47.i.i ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !136
  %i.jn = fsub float %i.jm, %i.jk
  store float %i.jn, ptr %i.jl, align 4, !tbaa !136
  %indvars.iv.next48.i.i = add nsw i64 %indvars.iv47.i.i, -1
  %.not.i81.i = icmp eq i64 %indvars.iv47.i.i, 0
  br i1 %.not.i81.i, label %.loopexit.i.i, label %vec.epilog.scalar.ph279, !llvm.loop !143

bb.ai:                                            ; preds = %bb.ag
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next54.i.i
  store i32 %i.ie, ptr %i.jo, align 4, !tbaa !15
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %vec.epilog.scalar.ph279, %vec.epilog.scalar.ph, %middle.block275, %vec.epilog.middle.block289, %middle.block, %vec.epilog.middle.block, %bb.ai
  %i.jp = icmp samesign ugt i64 %indvars.iv53.i.i, 1
  %indvars.iv.next.i.i = add nsw i32 %indvars.iv.i.i, -1
  br i1 %i.jp, label %bb.ae, label %_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i, !llvm.loop !144

_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i:  ; preds = %.loopexit.i.i, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.aj

vector.ph292:                                     ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.jq = load float, ptr %i.ec, align 4, !tbaa !136
  %i.jr = load float, ptr %i.gb, align 4, !tbaa !136
  %i.js = fsub float %i.jq, %i.jr
  %i.jt = load <2 x float>, ptr %i.ea, align 4, !tbaa !136
  %i.ju = load <2 x float>, ptr %i.el, align 4, !tbaa !136
  %i.jv = fsub <2 x float> %i.jt, %i.ju
  store <2 x float> %i.jv, ptr %i.b, align 16, !tbaa !136
  store float %i.js, ptr %i.at, align 8, !tbaa !136
  store i32 0, ptr %i.au, align 8, !tbaa !15
  %wide.masked.load = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.b, <4 x i1> %i.az, <4 x float> poison), !tbaa !136 ; 2 uses
  %wide.masked.load294 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.e, <4 x i1> %i.az, <4 x float> poison), !tbaa !136 ; 2 uses
  %i.jw = fneg <4 x float> %wide.masked.load294
  %i.jx = fcmp olt <4 x float> %wide.masked.load, %i.jw ; 4 uses
  %i.jy = xor <4 x i1> %i.jx, splat (i1 true)
  %i.jz = select <4 x i1> %i.az, <4 x i1> %i.jy, <4 x i1> zeroinitializer
  %i.ka = fcmp oge <4 x float> %wide.masked.load, %wide.masked.load294
  %wide.masked.load295 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.en, <4 x i1> %i.jz, <4 x i32> poison), !tbaa !15
  %i.kb = select <4 x i1> %i.az, <4 x i1> %i.jx, <4 x i1> zeroinitializer
  %wide.masked.load296 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.en, <4 x i1> %i.kb, <4 x i32> poison), !tbaa !15
  %i.kc = add nsw <4 x i32> %wide.masked.load296, splat (i32 -1)
  %.not300 = or <4 x i1> %i.jx, %i.ka
  %i.kd = zext <4 x i1> %.not300 to <4 x i32>
  %predphi = add nsw <4 x i32> %wide.masked.load295, %i.kd
  %predphi297 = select <4 x i1> %i.jx, <4 x i32> %i.kc, <4 x i32> %predphi
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %predphi297, ptr align 16 %i.f, <4 x i1> %i.az), !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.aj

bb.aj:                                            ; preds = %vector.ph292, %_ZL14mk_1shift_triciPA3_KfPS_S2_S2_PKiPi.exit.i, %_ZL15mk_1shift_screwPA3_KfPS_S2_S2_PKiPi.exit.i
  %i.ke = sub nsw i32 %i.eh, %i.do                ; 2 uses
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.kf ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !43
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %spec.select = call i32 @llvm.smin.i32(i32 %i.ke, i32 %.1)
  store i32 1, ptr %i.kg, align 4, !tbaa !43
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %i.ek ; 2 uses
  %i.kk = load <2 x i32>, ptr %i.f, align 16, !tbaa !15
  store <2 x i32> %i.kk, ptr %i.kj, align 4, !tbaa !15
  %i.kl = load i32, ptr %i.au, align 8, !tbaa !15
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !15
  %i.kn = add nsw i32 %.07696.i, 1
  br label %bb.ar

bb.al:                                            ; preds = %bb.aj
  %i.ko = load i32, ptr %i.f, align 16, !tbaa !15 ; 2 uses
  %i.kp = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %i.ek ; 3 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.ko, %i.kq
  br i1 %.not.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.kr = load i32, ptr %i.ax, align 4, !tbaa !15
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !15
  %.not78.i = icmp eq i32 %i.kr, %i.kt
  br i1 %.not78.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ku = load i32, ptr %i.au, align 8, !tbaa !15
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !15
  %.not79.i = icmp eq i32 %i.ku, %i.kw
  br i1 %.not79.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.kx = load i8, ptr @gmx_debug_at, align 1, !tbaa !86, !range !87, !noundef !88
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %6, i32 noundef 4, ptr noundef nonnull %3)
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.ea, ptr noundef %i.el, ptr noundef nonnull %i.d)
  %i.kz = load ptr, ptr @debug, align 8, !tbaa !79
  %i.la = add nsw i32 %i.eh, 1
  %i.lb = load i32, ptr %i.ax, align 4, !tbaa !15
  %i.lc = load i32, ptr %i.au, align 8, !tbaa !15
  %i.ld = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.le = getelementptr inbounds nuw [12 x i8], ptr %i.ld, i64 %i.ek ; 3 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !15
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !15
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !15
  %i.lk = load float, ptr %i.d, align 4, !tbaa !136
  %i.ll = fpext float %i.lk to double
  %i.lm = load <2 x float>, ptr %i.ay, align 4, !tbaa !136
  %i.ln = fpext <2 x float> %i.lm to <2 x double> ; 2 uses
  %i.lo = extractelement <2 x double> %i.ln, i64 0
  %i.lp = extractelement <2 x double> %i.ln, i64 1
  %i.lq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kz, ptr noundef nonnull @.str.37, i32 noundef %i.la, i32 noundef %i.eg, i32 noundef %i.ko, i32 noundef %i.lb, i32 noundef %i.lc, i32 noundef %i.lf, i32 noundef %i.lh, i32 noundef %i.lj, double noundef %i.ll, double noundef %i.lo, double noundef %i.lp) #24 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.lr = add nsw i32 %.2119, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.ak
  %.3120 = phi i32 [ %.2119, %bb.ak ], [ %.2119, %bb.an ], [ %i.lr, %bb.aq ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.ak ], [ %.1, %bb.an ], [ %.1, %bb.aq ] ; 2 uses
  %.1.i = phi i32 [ %i.kn, %bb.ak ], [ %.07696.i, %bb.an ], [ %.07696.i, %bb.aq ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0.095.i, i64 4 ; 2 uses
  %.not91.i = icmp eq ptr %i.ls, %i.dv
  br i1 %.not91.i, label %_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit, label %bb.p

_ZL7mk_greyN3gmx8ArrayRefI5egColEEP7t_graphPiiPA3_KfS8_S5_.exit: ; preds = %bb.ar, %bb.o
  %.4121 = phi i32 [ %.1118148, %bb.o ], [ %.3120, %bb.ar ] ; 2 uses
  %.4 = phi i32 [ %i.cv, %bb.o ], [ %.2, %bb.ar ]
  %.076.lcssa.i = phi i32 [ 0, %bb.o ], [ %.1.i, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.lt = add nsw i32 %i.da, %.076.lcssa.i        ; 3 uses
  %i.lu = sub nsw i32 %.177150, %.076.lcssa.i     ; 2 uses
  %i.lv = icmp sgt i32 %i.lt, 0
  br i1 %i.lv, label %.lr.ph154, label %.loopexit, !llvm.loop !145

._crit_edge164:                                   ; preds = %.loopexit
  %i.lw = icmp sgt i32 %.1118.lcssa, 0
  br i1 %i.lw, label %bb.as, label %.thread

bb.as:                                            ; preds = %._crit_edge164
  %i.lx = call noundef i32 @_Z16numPbcDimensions7PbcType(i32 noundef %2) ; 4 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ9mk_mshiftP8_IO_FILEP7t_graph7PbcTypePA3_KfS6_ENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 808) #21
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.lz = load float, ptr %3, align 4, !tbaa !136 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !136 ; 2 uses
  %i.mc = fmul float %i.mb, %i.mb
  %i.md = call float @llvm.fmuladd.f32(float %i.lz, float %i.lz, float %i.mc)
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mf = load float, ptr %i.me, align 4, !tbaa !136 ; 2 uses
  %i.mg = call noundef float @llvm.fmuladd.f32(float %i.mf, float %i.mf, float %i.md)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.mg) ; 3 uses
  %.not172 = icmp eq i32 %i.lx, 1
  br i1 %.not172, label %._crit_edge170, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %bb.au
  %wide.trip.count = zext nneg i32 %i.lx to i64
  %i.mh = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.mh, 3                    ; 3 uses
  %i.mi = add nsw i32 %i.lx, -2
  %i.mj = icmp ult i32 %i.mi, 3
  br i1 %i.mj, label %.lr.ph169.epil.preheader, label %.lr.ph169.preheader.new

.lr.ph169.preheader.new:                          ; preds = %.lr.ph169.preheader
  %unroll_iter = and i64 %i.mh, -4
  br label %.lr.ph169

._crit_edge170.loopexit.unr-lcssa:                ; preds = %.lr.ph169
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge170, label %.lr.ph169.epil.preheader

.lr.ph169.epil.preheader:                         ; preds = %._crit_edge170.loopexit.unr-lcssa, %.lr.ph169.preheader
  %indvars.iv189.epil.init = phi i64 [ 1, %.lr.ph169.preheader ], [ %indvars.iv.next190.3, %._crit_edge170.loopexit.unr-lcssa ]
  %.0116166.epil.init = phi float [ %sqrt.i, %.lr.ph169.preheader ], [ %.sroa.speculated.3, %._crit_edge170.loopexit.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph169.epil

.lr.ph169.epil:                                   ; preds = %.lr.ph169.epil, %.lr.ph169.epil.preheader
  %indvars.iv189.epil = phi i64 [ %indvars.iv189.epil.init, %.lr.ph169.epil.preheader ], [ %indvars.iv.next190.epil, %.lr.ph169.epil ] ; 2 uses
  %.0116166.epil = phi float [ %.0116166.epil.init, %.lr.ph169.epil.preheader ], [ %.sroa.speculated.epil, %.lr.ph169.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph169.epil.preheader ], [ %epil.iter.next, %.lr.ph169.epil ]
  %i.mk = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv189.epil ; 3 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !136 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !136 ; 2 uses
  %i.mo = fmul float %i.mn, %i.mn
  %i.mp = call float @llvm.fmuladd.f32(float %i.ml, float %i.ml, float %i.mo)
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !136 ; 2 uses
  %i.ms = call noundef float @llvm.fmuladd.f32(float %i.mr, float %i.mr, float %i.mp)
  %sqrt.i100.epil = call noundef float @llvm.sqrt.f32(float %i.ms) ; 2 uses
  %i.mt = fcmp olt float %sqrt.i100.epil, %.0116166.epil
  %.sroa.speculated.epil = select i1 %i.mt, float %sqrt.i100.epil, float %.0116166.epil ; 2 uses
  %indvars.iv.next190.epil = add nuw nsw i64 %indvars.iv189.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge170, label %.lr.ph169.epil, !llvm.loop !146

._crit_edge170:                                   ; preds = %._crit_edge170.loopexit.unr-lcssa, %.lr.ph169.epil, %bb.au
  %.0116.lcssa = phi float [ %sqrt.i, %bb.au ], [ %.sroa.speculated.3, %._crit_edge170.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph169.epil ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %5, i32 noundef %2, ptr noundef nonnull %3)
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !20 ; 2 uses
  %i.mx = load ptr, ptr %i.mu, align 8, !tbaa !21 ; 2 uses
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = lshr exact i64 %i.na, 2
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = add i32 %i.nc, -1
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.lr.ph25.i, label %_ZL13maxEdgeLengthRK7t_graph7PbcTypePA3_KfS5_.exit

.lr.ph25.i:                                       ; preds = %._crit_edge170
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i, %.lr.ph25.i
  %i.ni = phi ptr [ %i.mx, %.lr.ph25.i ], [ %i.nu, %._crit_edge.i ] ; 2 uses
  %i.nj = phi ptr [ %i.mw, %.lr.ph25.i ], [ %i.nv, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph25.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.01822.i = phi float [ 0.000000e+00, %.lr.ph25.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.nk = load ptr, ptr %i.nf, align 8, !tbaa !21 ; 2 uses
  %i.nl = getelementptr [4 x i8], ptr %i.ni, i64 %indvars.iv.i ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !15 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nl, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !15 ; 2 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.np
  %.not19.i = icmp eq i32 %i.nm, %i.no
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.av
  %i.nr = sext i32 %i.nm to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nr
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.i
  br label %bb.aw

._crit_edge.loopexit.i:                           ; preds = %bb.aw
  %.pre.i = load ptr, ptr %i.mv, align 8, !tbaa !20
  %.pre29.i = load ptr, ptr %i.mu, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.av
  %i.nu = phi ptr [ %i.ni, %bb.av ], [ %.pre29.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.nv = phi ptr [ %i.nj, %bb.av ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi float [ %.01822.i, %bb.av ], [ %.sroa.speculated.i, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = shl i64 %i.ny, 30
end_hunk_0
