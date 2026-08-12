inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3igl8geodesic21GeodesicAlgorithmBase19set_stop_conditionsEPSt6vectorINS0_12SurfacePointESaIS3_EEd:bb.a

._crit_edge45:                                    ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge45
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !114
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ao to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.af) #23
  br label %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EED2Ev.exit

_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN3igl8geodesic6VertexEdESaIS5_EE6resizeEm.exit, %._crit_edge45, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt6vectorISt4pairIPN3igl8geodesic6VertexEdESaIS5_EE5clearEv.exit

bb.h:                                             ; preds = %.lr.ph44, %._crit_edge
  %i.ag = phi ptr [ null, %.lr.ph44 ], [ %i.an, %._crit_edge ]
  %i.ah = phi ptr [ null, %.lr.ph44 ], [ %i.ao, %._crit_edge ] ; 2 uses
  %i.ai = phi ptr [ %i.x, %.lr.ph44 ], [ %i.be, %._crit_edge ]
  %i.aj = phi i64 [ 0, %.lr.ph44 ], [ %i.bc, %._crit_edge ] ; 2 uses
  %.043 = phi i32 [ 0, %.lr.ph44 ], [ %i.bb, %._crit_edge ]
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i36, label %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN3igl8geodesic6VertexES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN3igl8geodesic6VertexES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !116
  br label %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EE5clearEv.exit: ; preds = %bb.h, %_ZSt8_DestroyIPPN3igl8geodesic6VertexES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !117
  %i.am = invoke noundef i32 @_ZN3igl8geodesic4Mesh16closest_verticesEPNS0_12SurfacePointEPSt6vectorIPNS0_6VertexESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(112) %i.al, ptr noundef nonnull %i.ak, ptr noundef nonnull %3)
          to label %.preheader unwind label %bb.i ; 0 uses

.preheader:                                       ; preds = %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EE5clearEv.exit
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !116 ; 3 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !118   ; 7 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %.not47 = icmp eq ptr %i.an, %i.ao
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.at = load double, ptr %i.ak, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !79
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %.025.lcssa = phi ptr [ null, %.preheader ], [ %.126, %bb.j ]
  %.024.lcssa = phi double [ 1.000000e+100, %.preheader ], [ %.1, %bb.j ]
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.aj ; 2 uses
  store ptr %.025.lcssa, ptr %i.az, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store double %.024.lcssa, ptr %i.ba, align 8, !tbaa !121
  %i.bb = add i32 %.043, 1                        ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.be = load ptr, ptr %1, align 8, !tbaa !113   ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 5
  %i.bj = icmp ugt i64 %i.bi, %i.bc
  br i1 %i.bj, label %bb.h, label %._crit_edge45, !llvm.loop !122

bb.i:                                             ; preds = %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EE5clearEv.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 8, !tbaa !118   ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EED2Ev.exit38, label %bb.k

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.02440 = phi double [ 1.000000e+100, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %.02539 = phi ptr [ null, %.lr.ph ], [ %.126, %bb.j ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !86 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !79
  %i.bq = fsub double %i.at, %i.bp                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bs = load double, ptr %i.br, align 8, !tbaa !79
  %i.bt = fsub double %i.av, %i.bs                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !79
  %i.bw = fsub double %i.ax, %i.bv                ; 2 uses
  %i.bx = fmul double %i.bt, %i.bt
  %i.by = call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bx)
  %i.bz = call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.by)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.bz) ; 2 uses
  %i.ca = fcmp olt double %sqrt.i.i, %.02440      ; 2 uses
  %.126 = select i1 %i.ca, ptr %i.bn, ptr %.02539 ; 2 uses
  %.1 = select i1 %i.ca, double %sqrt.i.i, double %.02440 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cb = and i64 %indvars.iv.next, 4294967295
  %i.cc = icmp ugt i64 %i.as, %i.cb
  br i1 %i.cc, label %bb.j, label %._crit_edge, !llvm.loop !123

bb.k:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !114
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.bl to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.ch) #23
  br label %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EED2Ev.exit38

_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EED2Ev.exit38: ; preds = %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.bk

_ZNSt6vectorISt4pairIPN3igl8geodesic6VertexEdESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPSt4pairIPN3igl8geodesic6VertexEdES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b, %_ZNSt6vectorIPN3igl8geodesic6VertexESaIS3_EED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic22GeodesicAlgorithmExact27initialize_propagation_dataEv(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.igl::geodesic::IntervalWithStop", align 8 ; 13 uses
  %2 = alloca %"class.std::vector.96", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4, !tbaa !125
  tail call void @_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE5resetEjj(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.c, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126
  invoke void @_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef %i.h)
          to label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE5clearEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE5clearEv.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %i.l, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %i.m, align 8, !tbaa !127
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.n, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !103  ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %_ZN3igl8geodesic22GeodesicAlgorithmExact5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE5clearEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE5clearEv.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.i
  store ptr null, ptr %i.w, align 8, !tbaa !129
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.x = and i64 %indvars.iv.next.i, 4294967295
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %.lr.ph.i, label %_ZN3igl8geodesic22GeodesicAlgorithmExact5clearEv.exit, !llvm.loop !131

_ZN3igl8geodesic22GeodesicAlgorithmExact5clearEv.exit: ; preds = %.lr.ph.i, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE5clearEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double 1.000000e+100, ptr %i.z, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !132
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not, label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EED2Ev.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact5clearEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  br label %bb.d

._crit_edge26:                                    ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge26
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.be to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ar) #23
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EED2Ev.exit: ; preds = %_ZN3igl8geodesic22GeodesicAlgorithmExact5clearEv.exit, %._crit_edge26, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.d:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.as = phi ptr [ null, %.lr.ph25 ], [ %i.bd, %._crit_edge ]
  %i.at = phi ptr [ null, %.lr.ph25 ], [ %i.be, %._crit_edge ] ; 2 uses
  %i.au = phi ptr [ %i.ad, %.lr.ph25 ], [ %i.bi, %._crit_edge ]
  %i.av = phi i64 [ 0, %.lr.ph25 ], [ %i.bg, %._crit_edge ]
  %.023 = phi i32 [ 0, %.lr.ph25 ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.av ; 4 uses
  %.not.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i, label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN3igl8geodesic4EdgeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN3igl8geodesic4EdgeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !136
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE5clearEv.exit: ; preds = %bb.d, %_ZSt8_DestroyIPPN3igl8geodesic4EdgeES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !137
  invoke void @_ZN3igl8geodesic22GeodesicAlgorithmExact30list_edges_visible_from_sourceEPNS0_15MeshElementBaseERSt6vectorIPNS0_4EdgeESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE5clearEv.exit
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !136 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !138   ; 3 uses
  %.not27 = icmp eq ptr %i.az, %i.ba
  br i1 %.not27, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.o, %.preheader
  %i.bd = phi ptr [ %i.az, %.preheader ], [ %i.fc, %bb.o ]
  %i.be = phi ptr [ %i.ba, %.preheader ], [ %i.fd, %bb.o ] ; 4 uses
  %i.bf = add i32 %.023, 1                        ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !132
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !133 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 40
  %i.bn = icmp ugt i64 %i.bm, %i.bg
  br i1 %i.bn, label %bb.d, label %._crit_edge26, !llvm.loop !139

bb.e:                                             ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE5clearEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.o
  %i.bp = phi ptr [ %i.fd, %bb.o ], [ %i.ba, %.lr.ph.split.preheader ]
  %i.bq = phi i64 [ %i.fb, %bb.o ], [ 0, %.lr.ph.split.preheader ]
  %.01422 = phi i32 [ %i.fa, %bb.o ], [ 0, %.lr.ph.split.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !78 ; 8 uses
  store ptr null, ptr %i.af, align 8, !tbaa !99
  store ptr %i.bs, ptr %i.ah, align 8, !tbaa !140
  store i32 %.023, ptr %i.ai, align 8, !tbaa !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.bt = load ptr, ptr %i.ax, align 8, !tbaa !137 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 52
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !142
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.split
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !83 ; 2 uses
  %.pre12.i = load ptr, ptr %.pre.i, align 8, !tbaa !86
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.split
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !27 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !83 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !86 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !27
  %i.ce = icmp eq i32 %i.by, %i.cd
  br i1 %i.ce, label %.thread62, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !86
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = icmp eq i32 %i.by, %i.ci
  br i1 %i.cj, label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %i.ck = phi ptr [ %.pre12.i, %._crit_edge.i ], [ %i.cb, %bb.g ] ; 3 uses
  %i.cl = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ca, %bb.g ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cn = load double, ptr %i.aw, align 8, !tbaa !79 ; 2 uses
  %i.co = load double, ptr %i.cm, align 8, !tbaa !79
  %i.cp = fsub double %i.cn, %i.co                ; 2 uses
  %i.cq = load double, ptr %i.bb, align 8, !tbaa !79 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !79
  %i.ct = fsub double %i.cq, %i.cs                ; 2 uses
  %i.cu = load double, ptr %i.bc, align 8, !tbaa !79 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !79
  %i.cx = fsub double %i.cu, %i.cw                ; 2 uses
  %i.cy = fmul double %i.ct, %i.ct
  %i.cz = call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.cy)
  %i.da = call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.cz)
  %sqrt.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.da) ; 5 uses
  %i.db = fcmp olt double %sqrt.i.i.i.i, 1.000000e-50
  br i1 %i.db, label %.thread56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !86 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load double, ptr %i.de, align 8, !tbaa !79
  %i.dg = fsub double %i.cn, %i.df                ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.di = load double, ptr %i.dh, align 8, !tbaa !79
  %i.dj = fsub double %i.cq, %i.di                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !79
  %i.dm = fsub double %i.cu, %i.dl                ; 2 uses
  %i.dn = fmul double %i.dj, %i.dj
  %i.do = call double @llvm.fmuladd.f64(double %i.dg, double %i.dg, double %i.dn)
  %i.dp = call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %i.do)
  %sqrt.i.i21.i.i = call noundef double @llvm.sqrt.f64(double %i.dp) ; 3 uses
  %i.dq = fcmp olt double %sqrt.i.i21.i.i, 1.000000e-50
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !145 ; 8 uses
  br i1 %i.dq, label %.thread18.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dt = fmul double %i.ds, 5.000000e-01
  %i.du = fneg double %sqrt.i.i21.i.i
  %i.dv = fmul double %sqrt.i.i21.i.i, %i.du
  %i.dw = call double @llvm.fmuladd.f64(double %sqrt.i.i.i.i, double %sqrt.i.i.i.i, double %i.dv)
  %i.dx = fmul double %i.ds, 2.000000e+00
  %i.dy = fdiv double %i.dw, %i.dx
  %i.dz = fadd double %i.dt, %i.dy                ; 7 uses
  store double %i.dz, ptr %i.aj, align 8, !tbaa !79
  %i.ea = fneg double %i.dz
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = call double @llvm.fmuladd.f64(double %sqrt.i.i.i.i, double %sqrt.i.i.i.i, double %i.eb) ; 2 uses
  %i.ed = fcmp ogt double %i.ec, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ed, double %i.ec, double 0.000000e+00
  %i.ee = call double @sqrt(double noundef %.sroa.speculated.i.i) #22
  %i.ef = fneg double %i.ee                       ; 3 uses
  store double %i.ef, ptr %i.ak, align 8, !tbaa !147
  %3 = fcmp uge double %i.dz, 0.000000e+00
  %4 = fcmp olt double %i.ds, %i.dz
  %or.cond = select i1 %3, i1 %4, i1 false
  br i1 %or.cond, label %.thread71, label %.thread18.i..thread21.i_crit_edge

.thread18.i:                                      ; preds = %bb.i
  %i.eg = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ds, i64 0
  store <2 x double> %i.eg, ptr %i.aj, align 8, !tbaa !79
  br label %.thread18.i..thread21.i_crit_edge

.thread56:                                        ; preds = %bb.h
  store <2 x double> <double 0.000000e+00, double -0.000000e+00>, ptr %i.aj, align 8, !tbaa !79
  %.in.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %.pre = load double, ptr %.in.i.phi.trans.insert, align 8, !tbaa !79 ; 3 uses
  %5 = fcmp olt double %.pre, 0.000000e+00
  br i1 %5, label %.thread71, label %.thread18.i..thread21.i_crit_edge

.thread71:                                        ; preds = %bb.j, %.thread56
  %.ph = phi double [ -0.000000e+00, %.thread56 ], [ %i.ef, %bb.j ]
  %.ph69 = phi double [ 0.000000e+00, %.thread56 ], [ %i.dz, %bb.j ]
  %.ph70 = phi double [ %.pre, %.thread56 ], [ %i.ds, %bb.j ] ; 2 uses
  store double %.ph70, ptr %i.am, align 8, !tbaa !79
  br label %bb.k

.thread18.i..thread21.i_crit_edge:                ; preds = %bb.j, %.thread18.i, %.thread56
  %6 = phi double [ -0.000000e+00, %.thread18.i ], [ %i.ef, %bb.j ], [ -0.000000e+00, %.thread56 ] ; 4 uses
  %7 = phi double [ %i.ds, %.thread18.i ], [ %i.dz, %bb.j ], [ 0.000000e+00, %.thread56 ] ; 5 uses
  %8 = phi double [ %i.ds, %.thread18.i ], [ %i.ds, %bb.j ], [ %.pre, %.thread56 ] ; 2 uses
  store double %8, ptr %i.am, align 8, !tbaa !79
  %9 = fcmp olt double %7, 0.000000e+00
  br i1 %9, label %12, label %bb.k

_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit.i: ; preds = %bb.g
  %10 = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %11 = load double, ptr %10, align 8, !tbaa !79  ; 4 uses
  store double %11, ptr %i.aj, align 8, !tbaa !148
  store i64 0, ptr %i.ak, align 8
  store double %11, ptr %i.am, align 8, !tbaa !79
  %i.eh = fcmp olt double %11, 0.000000e+00
  br i1 %i.eh, label %.thread65, label %bb.n

12:                                               ; preds = %.thread18.i..thread21.i_crit_edge
  %13 = fcmp oeq double %6, 0.000000e+00
  br i1 %13, label %.thread65, label %_ZN3igl8geodesic8Interval6signalEd.exit.i.a

.thread65:                                        ; preds = %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit.i, %12
  %14 = phi double [ %7, %12 ], [ %11, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit.i ]
  %15 = fneg double %14
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i

_ZN3igl8geodesic8Interval6signalEd.exit.i.a:      ; preds = %12
  %i.ei = fmul double %6, %6
  %i.ej = call double @llvm.fmuladd.f64(double %7, double %7, double %i.ei)
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.ej)
  %i.ek = fadd double %sqrt.i.i, 0.000000e+00
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i

bb.k:                                             ; preds = %.thread71, %.thread18.i..thread21.i_crit_edge
  %16 = phi double [ %.ph70, %.thread71 ], [ %8, %.thread18.i..thread21.i_crit_edge ] ; 2 uses
  %17 = phi double [ %.ph69, %.thread71 ], [ %7, %.thread18.i..thread21.i_crit_edge ] ; 2 uses
  %18 = phi double [ %.ph, %.thread71 ], [ %6, %.thread18.i..thread21.i_crit_edge ] ; 4 uses
  %i.el = fcmp olt double %16, %17
  br i1 %i.el, label %bb.l, label %bb.n

.thread62:                                        ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 16, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %.pre29 = load double, ptr %.phi.trans.insert, align 8, !tbaa !79 ; 3 uses
  store double %.pre29, ptr %i.am, align 8, !tbaa !79
  %i.em = fcmp olt double %.pre29, 0.000000e+00
  br i1 %i.em, label %.thread63, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.en = fsub double %16, %17                    ; 3 uses
  %i.eo = fcmp oeq double %18, 0.000000e+00
  br i1 %i.eo, label %.thread63, label %bb.m

.thread63:                                        ; preds = %.thread62, %bb.l
  %i.ep = phi double [ %i.en, %bb.l ], [ %.pre29, %.thread62 ]
  %i.eq = call noundef double @llvm.fabs.f64(double %i.ep)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i

bb.m:                                             ; preds = %bb.l
  %i.er = fmul double %18, %18
  %i.es = call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %i.er)
  %sqrt.i6.i = call double @llvm.sqrt.f64(double %i.es)
  %i.et = fadd double %sqrt.i6.i, 0.000000e+00
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i

bb.n:                                             ; preds = %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit.i, %.thread62, %bb.k
  %19 = phi double [ 0.000000e+00, %.thread62 ], [ %18, %bb.k ], [ 0.000000e+00, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit.i ]
  %i.eu = fsub double 0.000000e+00, %19
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i

_ZN3igl8geodesic8Interval6signalEd.exit10.i:      ; preds = %.thread63, %bb.m, %.thread65, %_ZN3igl8geodesic8Interval6signalEd.exit.i.a, %bb.n
  %.0.i.sink.i = phi double [ %i.ek, %_ZN3igl8geodesic8Interval6signalEd.exit.i.a ], [ %i.eu, %bb.n ], [ %15, %.thread65 ], [ %i.eq, %.thread63 ], [ %i.et, %bb.m ]
  store double %.0.i.sink.i, ptr %i.al, align 8, !tbaa !149
  store i32 2, ptr %i.ag, align 4, !tbaa !92
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !27
  %i.ex = zext i32 %i.ew to i64
  %i.ey = load ptr, ptr %i.o, align 8, !tbaa !103
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.ex
  invoke void @_ZN3igl8geodesic22GeodesicAlgorithmExact21update_list_and_queueEPNS0_12IntervalListEPNS0_16IntervalWithStopEj(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef %i.ez, ptr noundef nonnull %1, i32 noundef 1)
          to label %bb.o unwind label %.split

bb.o:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit10.i
  %i.fa = add i32 %.01422, 1                      ; 2 uses
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = load ptr, ptr %i.ae, align 8, !tbaa !136 ; 2 uses
  %i.fd = load ptr, ptr %2, align 8, !tbaa !138   ; 3 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ashr exact i64 %i.fg, 3
  %i.fi = icmp ugt i64 %i.fh, %i.fb
  br i1 %i.fi, label %.lr.ph.split, label %._crit_edge, !llvm.loop !150

.split:                                           ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit10.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.split, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.e ], [ %i.fj, %.split ]
  %i.fk = load ptr, ptr %2, align 8, !tbaa !138   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EED2Ev.exit21, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !134
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #23
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EED2Ev.exit21

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EED2Ev.exit21: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl8geodesic22GeodesicAlgorithmExact21check_stop_conditionsERj(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !79 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !107
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %.promoted = load i32, ptr %1, align 4, !tbaa !27 ; 2 uses
  %i.r = zext i32 %.promoted to i64               ; 2 uses
  %i.s = icmp ugt i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.u = load ptr, ptr %i.t, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %i.v = phi i64 [ %i.r, %.lr.ph ], [ %i.ci, %bb.q ]
  %i.w = phi i32 [ %.promoted, %.lr.ph ], [ %i.ch, %bb.q ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.v ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !119  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.aj = icmp eq i32 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.am ; 2 uses
  br i1 %i.aj, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %.0.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i = phi ptr [ %.0.pre.i.i, %bb.c ], [ %i.ap, %bb.e ] ; 6 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN3igl8geodesic12IntervalList6signalEd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %.in.i.i.i = select i1 %.not.i.i.i, ptr %i.as, ptr %i.ap
  %i.at = load double, ptr %.in.i.i.i, align 8, !tbaa !79
  %i.au = fcmp olt double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.d, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i, !llvm.loop !151

_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i: ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !152 ; 2 uses
  %i.ax = fcmp oeq double %i.aw, 1.000000e+100
  br i1 %i.ax, label %_ZN3igl8geodesic12IntervalList6signalEd.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !148
  %i.ba = fsub double 0.000000e+00, %i.az         ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !147 ; 3 uses
  %i.bd = fcmp oeq double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.ba)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bf = fmul double %i.bc, %i.bc
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.bf)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bg)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.i.i = phi double [ %i.be, %bb.g ], [ %sqrt.i.i, %bb.h ]
  %.0.i5.i = fadd double %i.aw, %.pn.i.i
  br label %_ZN3igl8geodesic12IntervalList6signalEd.exit

bb.j:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !79 ; 2 uses
  %.0.pre.i.i16 = load ptr, ptr %i.an, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i.i17 = phi ptr [ %.0.pre.i.i16, %bb.j ], [ %i.bk, %bb.l ] ; 6 uses
  %.not.i.i18 = icmp eq ptr %.0.i.i17, null
  br i1 %.not.i.i18, label %_ZN3igl8geodesic12IntervalList6signalEd.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bk, null
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %.in.i.i.i20 = select i1 %.not.i.i.i19, ptr %i.bn, ptr %i.bk
  %i.bo = load double, ptr %.in.i.i.i20, align 8, !tbaa !79
  %i.bp = fcmp olt double %i.bo, %i.bi
  br i1 %i.bp, label %bb.k, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i21, !llvm.loop !151

_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i21: ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !152 ; 2 uses
  %i.bs = fcmp oeq double %i.br, 1.000000e+100
  br i1 %i.bs, label %_ZN3igl8geodesic12IntervalList6signalEd.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i21
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !148
  %i.bv = fsub double %i.bi, %i.bu                ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !147 ; 3 uses
  %i.by = fcmp oeq double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ca = fmul double %i.bx, %i.bx
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.ca)
  %sqrt.i.i22 = tail call double @llvm.sqrt.f64(double %i.cb)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i.i23 = phi double [ %i.bz, %bb.n ], [ %sqrt.i.i22, %bb.o ]
  %.0.i5.i24 = fadd double %i.br, %.pn.i.i23
  br label %_ZN3igl8geodesic12IntervalList6signalEd.exit

_ZN3igl8geodesic12IntervalList6signalEd.exit:     ; preds = %bb.k, %bb.d, %bb.p, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i21, %bb.i, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i
  %i.cc = phi double [ 1.000000e+100, %bb.d ], [ 1.000000e+100, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i ], [ %.0.i5.i, %bb.i ], [ 1.000000e+100, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit.i21 ], [ %.0.i5.i24, %bb.p ], [ 1.000000e+100, %bb.k ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !121
  %i.cf = fadd double %i.cc, %i.ce
  %i.cg = fcmp uge double %i.f, %i.cf             ; 3 uses
  br i1 %i.cg, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZN3igl8geodesic12IntervalList6signalEd.exit
  %i.ch = add i32 %i.w, 1                         ; 3 uses
  store i32 %i.ch, ptr %1, align 4, !tbaa !27
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = icmp ugt i64 %i.q, %i.ci
  br i1 %i.cj, label %bb.b, label %.critedge, !llvm.loop !153

.critedge:                                        ; preds = %bb.q, %_ZN3igl8geodesic12IntervalList6signalEd.exit, %.preheader, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.cg, %_ZN3igl8geodesic12IntervalList6signalEd.exit ], [ %i.cg, %bb.q ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic22GeodesicAlgorithmExact21update_list_and_queueEPNS0_12IntervalListEPNS0_16IntervalWithStopEj(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca { ptr, i32, i32 }, align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !79
  %i.e = fmul double %i.d, f0x3EB0C6F7A0B5ED8D    ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !77
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.preheader492

.preheader492:                                    ; preds = %bb.a
  %.not523 = icmp eq i32 %3, 0
  br i1 %.not523, label %.loopexit, label %.lr.ph522

.lr.ph522:                                        ; preds = %.preheader492
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 21 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %wide.trip.count546 = zext i32 %3 to i64
  br label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.x = icmp eq i32 %3, 1
  br i1 %i.x, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.z = load double, ptr %i.y, align 8, !tbaa !79 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !152 ; 4 uses
  %i.ac = fcmp oeq double %i.ab, 1.000000e+100
  br i1 %i.ac, label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load double, ptr %2, align 8, !tbaa !154 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !148 ; 4 uses
  %i.ag = fcmp ogt double %i.ad, %i.af
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = fsub double %i.ad, %i.af                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !147 ; 3 uses
  %i.ak = fcmp oeq double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = tail call noundef double @llvm.fabs.f64(double %i.ah)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i

bb.g:                                             ; preds = %bb.e
  %i.am = fmul double %i.aj, %i.aj
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.am)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.an)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i

_ZN3igl8geodesic8Interval6signalEd.exit.i:        ; preds = %bb.g, %bb.f
  %.pn.i.i = phi double [ %i.al, %bb.f ], [ %sqrt.i.i, %bb.g ]
  %.0.i.i = fadd double %i.ab, %.pn.i.i
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit

bb.h:                                             ; preds = %bb.d
  %i.ao = fcmp olt double %i.z, %i.af
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ap = fsub double %i.z, %i.af                 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !147 ; 3 uses
  %i.as = fcmp oeq double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.ap)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i

bb.k:                                             ; preds = %bb.i
  %i.au = fmul double %i.ar, %i.ar
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.au)
  %sqrt.i6.i = tail call double @llvm.sqrt.f64(double %i.av)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i

_ZN3igl8geodesic8Interval6signalEd.exit10.i:      ; preds = %bb.k, %bb.j
  %.pn.i7.i = phi double [ %i.at, %bb.j ], [ %sqrt.i6.i, %bb.k ]
  %.0.i8.i = fadd double %i.ab, %.pn.i7.i
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit

bb.l:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !147
  %i.ay = fsub double %i.ab, %i.ax
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit

bb.m:                                             ; preds = %bb.b
  %i.az = load double, ptr %2, align 8, !tbaa !79 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !79 ; 3 uses
  %i.bc = fcmp ugt double %i.az, %i.bb            ; 4 uses
  %. = select i1 %i.bc, ptr %2, ptr %i.ba         ; 10 uses
  %.155 = select i1 %i.bc, ptr %i.ba, ptr %2      ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.155, i64 64
  %i.be = load double, ptr %i.bd, align 8, !tbaa !79 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.155, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !152 ; 4 uses
  %i.bh = fcmp oeq double %i.bg, 1.000000e+100
  %i.bi = select i1 %i.bc, double %i.bb, double %i.az ; 2 uses
  %i.bj = select i1 %i.bc, double %i.az, double %i.bb ; 2 uses
  br i1 %i.bh, label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.155, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !148 ; 4 uses
  %i.bm = fcmp ogt double %i.bi, %i.bl
  br i1 %i.bm, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bn = fsub double %i.bi, %i.bl                ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.155, i64 24
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !147 ; 3 uses
  %i.bq = fcmp oeq double %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bn)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i163

bb.q:                                             ; preds = %bb.o
  %i.bs = fmul double %i.bp, %i.bp
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.bs)
  %sqrt.i.i162 = tail call double @llvm.sqrt.f64(double %i.bt)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i163

_ZN3igl8geodesic8Interval6signalEd.exit.i163:     ; preds = %bb.q, %bb.p
  %.pn.i.i164 = phi double [ %i.br, %bb.p ], [ %sqrt.i.i162, %bb.q ]
  %.0.i.i165 = fadd double %i.bg, %.pn.i.i164
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166

bb.r:                                             ; preds = %bb.n
  %i.bu = fcmp olt double %i.be, %i.bl
  br i1 %i.bu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bv = fsub double %i.be, %i.bl                ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.155, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !147 ; 3 uses
  %i.by = fcmp oeq double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.bv)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i159

bb.u:                                             ; preds = %bb.s
  %i.ca = fmul double %i.bx, %i.bx
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.ca)
  %sqrt.i6.i158 = tail call double @llvm.sqrt.f64(double %i.cb)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i159

_ZN3igl8geodesic8Interval6signalEd.exit10.i159:   ; preds = %bb.u, %bb.t
  %.pn.i7.i160 = phi double [ %i.bz, %bb.t ], [ %sqrt.i6.i158, %bb.u ]
  %.0.i8.i161 = fadd double %i.bg, %.pn.i7.i160
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166

bb.v:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.155, i64 24
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !147
  %i.ce = fsub double %i.bg, %i.cd
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166

_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166: ; preds = %bb.m, %_ZN3igl8geodesic8Interval6signalEd.exit.i163, %_ZN3igl8geodesic8Interval6signalEd.exit10.i159, %bb.v
  %.0.i.sink.i157 = phi double [ %.0.i.i165, %_ZN3igl8geodesic8Interval6signalEd.exit.i163 ], [ %i.ce, %bb.v ], [ %.0.i8.i161, %_ZN3igl8geodesic8Interval6signalEd.exit10.i159 ], [ 1.000000e+100, %bb.m ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.155, i64 32
  store double %.0.i.sink.i157, ptr %i.cf, align 8, !tbaa !149
  %i.cg = getelementptr inbounds nuw i8, ptr %., i64 64
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !79 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %., i64 8
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !152 ; 4 uses
  %i.ck = fcmp oeq double %i.cj, 1.000000e+100
  br i1 %i.ck, label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit, label %bb.w

bb.w:                                             ; preds = %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166
  %i.cl = getelementptr inbounds nuw i8, ptr %., i64 16
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !148 ; 4 uses
  %i.cn = fcmp ogt double %i.bj, %i.cm
  br i1 %i.cn, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.co = fsub double %i.bj, %i.cm                ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %., i64 24
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !147 ; 3 uses
  %i.cr = fcmp oeq double %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cs = tail call noundef double @llvm.fabs.f64(double %i.co)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i173

bb.z:                                             ; preds = %bb.x
  %i.ct = fmul double %i.cq, %i.cq
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.co, double %i.co, double %i.ct)
  %sqrt.i.i172 = tail call double @llvm.sqrt.f64(double %i.cu)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i173

_ZN3igl8geodesic8Interval6signalEd.exit.i173:     ; preds = %bb.z, %bb.y
  %.pn.i.i174 = phi double [ %i.cs, %bb.y ], [ %sqrt.i.i172, %bb.z ]
  %.0.i.i175 = fadd double %i.cj, %.pn.i.i174
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit

bb.aa:                                            ; preds = %bb.w
  %i.cv = fcmp olt double %i.ch, %i.cm
  br i1 %i.cv, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cw = fsub double %i.ch, %i.cm                ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %., i64 24
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !147 ; 3 uses
  %i.cz = fcmp oeq double %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = tail call noundef double @llvm.fabs.f64(double %i.cw)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i169

bb.ad:                                            ; preds = %bb.ab
  %i.db = fmul double %i.cy, %i.cy
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.db)
  %sqrt.i6.i168 = tail call double @llvm.sqrt.f64(double %i.dc)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i169

_ZN3igl8geodesic8Interval6signalEd.exit10.i169:   ; preds = %bb.ad, %bb.ac
  %.pn.i7.i170 = phi double [ %i.da, %bb.ac ], [ %sqrt.i6.i168, %bb.ad ]
  %.0.i8.i171 = fadd double %i.cj, %.pn.i7.i170
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit

bb.ae:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %., i64 24
  %i.de = load double, ptr %i.dd, align 8, !tbaa !147
  %i.df = fsub double %i.cj, %i.de
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit

_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit: ; preds = %bb.ae, %_ZN3igl8geodesic8Interval6signalEd.exit10.i169, %_ZN3igl8geodesic8Interval6signalEd.exit.i173, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166, %bb.l, %_ZN3igl8geodesic8Interval6signalEd.exit10.i, %_ZN3igl8geodesic8Interval6signalEd.exit.i, %bb.c
  %..sink = phi ptr [ %2, %bb.l ], [ %2, %bb.c ], [ %2, %_ZN3igl8geodesic8Interval6signalEd.exit.i ], [ %2, %_ZN3igl8geodesic8Interval6signalEd.exit10.i ], [ %., %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166 ], [ %., %_ZN3igl8geodesic8Interval6signalEd.exit.i173 ], [ %., %_ZN3igl8geodesic8Interval6signalEd.exit10.i169 ], [ %., %bb.ae ] ; 3 uses
  %.0.i.sink.i167.sink = phi double [ %i.ay, %bb.l ], [ 1.000000e+100, %bb.c ], [ %.0.i.i, %_ZN3igl8geodesic8Interval6signalEd.exit.i ], [ %.0.i8.i, %_ZN3igl8geodesic8Interval6signalEd.exit10.i ], [ 1.000000e+100, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166 ], [ %.0.i.i175, %_ZN3igl8geodesic8Interval6signalEd.exit.i173 ], [ %.0.i8.i171, %_ZN3igl8geodesic8Interval6signalEd.exit10.i169 ], [ %i.df, %bb.ae ]
  %.1131 = phi ptr [ %2, %bb.l ], [ %2, %bb.c ], [ %2, %_ZN3igl8geodesic8Interval6signalEd.exit.i ], [ %2, %_ZN3igl8geodesic8Interval6signalEd.exit10.i ], [ %.155, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit166 ], [ %.155, %_ZN3igl8geodesic8Interval6signalEd.exit.i173 ], [ %.155, %_ZN3igl8geodesic8Interval6signalEd.exit10.i169 ], [ %.155, %bb.ae ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %..sink, i64 32
  store double %.0.i.sink.i167.sink, ptr %i.dg, align 8, !tbaa !149
  %i.dh = load double, ptr %.1131, align 8, !tbaa !79
  %i.di = fcmp ogt double %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dk = tail call noundef ptr @_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE8allocateEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dj) ; 7 uses
  store ptr %i.dk, ptr %1, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  store ptr null, ptr %i.dl, align 8, !tbaa !99
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 60
  store i32 3, ptr %i.dm, align 4, !tbaa !155
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store ptr %i.b, ptr %i.dn, align 8, !tbaa !140
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  store i32 0, ptr %i.do, align 8, !tbaa !141
  store <2 x double> <double 0.000000e+00, double 1.000000e+100>, ptr %i.dk, align 8, !tbaa !79
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store double 1.000000e+100, ptr %i.dp, align 8, !tbaa !149
  %i.dq = load ptr, ptr %1, align 8, !tbaa !77
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit
  %.0 = phi ptr [ %i.dr, %bb.af ], [ %1, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.dt = tail call noundef ptr @_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE8allocateEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ds) ; 2 uses
  store ptr %i.dt, ptr %.0, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dt, ptr noundef nonnull align 8 dereferenceable(64) %.1131, i64 64, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dv = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE24_M_get_insert_unique_posERKS3_(ptr noundef nonnull align 8 dereferenceable(104) %i.du, ptr noundef nonnull align 8 dereferenceable(8) %.0) ; 2 uses
  %i.dw = extractvalue { ptr, ptr } %i.dv, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = extractvalue { ptr, ptr } %i.dv, 0
  %.not.i.i.i = icmp ne ptr %i.dx, null
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dz = icmp eq ptr %i.dw, %i.dy
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.dz
  %.pre.i.i.i = load ptr, ptr %.0, align 8, !tbaa !77 ; 4 uses
  br i1 %or.cond.i.i.i, label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !77 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 32
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !79 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !79 ; 2 uses
  %i.eg = fcmp une double %i.ed, %i.ef
  br i1 %i.eg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eh = fcmp olt double %i.ed, %i.ef
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.ei = load double, ptr %.pre.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.ej = load double, ptr %i.eb, align 8, !tbaa !79 ; 2 uses
  %i.ek = fcmp une double %i.ei, %i.ej
  br i1 %i.ek, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.el = fcmp olt double %i.ei, %i.ej
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !78
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !78
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load i32, ptr %i.es, align 4, !tbaa !27
  %i.eu = icmp ult i32 %i.ep, %i.et
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.aj, %bb.ah
  %i.ev = phi i1 [ %i.eu, %bb.am ], [ true, %bb.ah ], [ %i.eh, %bb.aj ], [ %i.el, %bb.al ]
  %i.ew = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store ptr %.pre.i.i.i, ptr %i.ex, align 8, !tbaa !77
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ev, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #22
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !75
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !75
  br label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit

_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit: ; preds = %bb.ag, %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.fb = icmp eq i32 %3, 2
  br i1 %i.fb, label %bb.an, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit186

bb.an:                                            ; preds = %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit
  %i.fc = load ptr, ptr %.0, align 8, !tbaa !77
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40 ; 5 uses
  %i.fe = tail call noundef ptr @_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE8allocateEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ds) ; 2 uses
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fe, ptr noundef nonnull align 8 dereferenceable(64) %..sink, i64 64, i1 false)
  %i.ff = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE24_M_get_insert_unique_posERKS3_(ptr noundef nonnull align 8 dereferenceable(104) %i.du, ptr noundef nonnull align 8 dereferenceable(8) %i.fd) ; 2 uses
  %i.fg = extractvalue { ptr, ptr } %i.ff, 1      ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i177, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit186, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fh = extractvalue { ptr, ptr } %i.ff, 0
  %.not.i.i.i178 = icmp ne ptr %i.fh, null
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fj = icmp eq ptr %i.fg, %i.fi
  %or.cond.i.i.i179 = select i1 %.not.i.i.i178, i1 true, i1 %i.fj
  %.pre.i.i.i180 = load ptr, ptr %i.fd, align 8, !tbaa !77 ; 4 uses
  br i1 %or.cond.i.i.i179, label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i181, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !77 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.pre.i.i.i180, i64 32
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !79 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !79 ; 2 uses
  %i.fq = fcmp une double %i.fn, %i.fp
  br i1 %i.fq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fr = fcmp olt double %i.fn, %i.fp
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i181

bb.ar:                                            ; preds = %bb.ap
  %i.fs = load double, ptr %.pre.i.i.i180, align 8, !tbaa !79 ; 2 uses
  %i.ft = load double, ptr %i.fl, align 8, !tbaa !79 ; 2 uses
  %i.fu = fcmp une double %i.fs, %i.ft
  br i1 %i.fu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fv = fcmp olt double %i.fs, %i.ft
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i181

bb.at:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i180, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !78
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !27
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !78
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !27
  %i.ge = icmp ult i32 %i.fz, %i.gd
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i181

_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i181: ; preds = %bb.at, %bb.as, %bb.aq, %bb.ao
  %i.gf = phi i1 [ %i.ge, %bb.at ], [ true, %bb.ao ], [ %i.fr, %bb.aq ], [ %i.fv, %bb.as ]
  %i.gg = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %.pre.i.i.i180, ptr %i.gh, align 8, !tbaa !77
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gf, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.fi) #22
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !75
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !75
  br label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit186

_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit186: ; preds = %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i181, %bb.an, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit
  %.1 = phi ptr [ %.0, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit ], [ %i.fd, %bb.an ], [ %i.fd, %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i181 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %..sink, i64 64 ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !79
  %i.gn = load double, ptr %i.c, align 8, !tbaa !79
  %i.go = fcmp olt double %i.gm, %i.gn
  %i.gp = load ptr, ptr %.1, align 8, !tbaa !77
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40 ; 3 uses
  br i1 %i.go, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit186
  %i.gr = tail call noundef ptr @_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE8allocateEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ds) ; 7 uses
  store ptr %i.gr, ptr %i.gq, align 8, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  store ptr null, ptr %i.gs, align 8, !tbaa !99
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 60
  store i32 3, ptr %i.gt, align 4, !tbaa !155
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  store ptr %i.b, ptr %i.gu, align 8, !tbaa !140
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  store i32 0, ptr %i.gv, align 8, !tbaa !141
  store <2 x double> <double 0.000000e+00, double 1.000000e+100>, ptr %i.gr, align 8, !tbaa !79
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store double 1.000000e+100, ptr %i.gw, align 8, !tbaa !149
  %i.gx = load double, ptr %i.gl, align 8, !tbaa !79
  %i.gy = load ptr, ptr %i.gq, align 8, !tbaa !77
  store double %i.gx, ptr %i.gy, align 8, !tbaa !79
  br label %.loopexit

bb.av:                                            ; preds = %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit186
  store ptr null, ptr %i.gq, align 8, !tbaa !77
  br label %.loopexit

bb.aw:                                            ; preds = %.lr.ph522, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328
  %indvars.iv543 = phi i64 [ 0, %.lr.ph522 ], [ %indvars.iv.next544, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %indvars.iv543 ; 6 uses
  %.0137.pre = load ptr, ptr %1, align 8, !tbaa !77
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.0137 = phi ptr [ %.0137.pre, %bb.aw ], [ %i.hb, %bb.ay ] ; 4 uses
  %.not = icmp eq ptr %.0137, null
  br i1 %.not, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ha = getelementptr inbounds nuw i8, ptr %.0137, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !99 ; 3 uses
  %.not.i = icmp eq ptr %i.hb, null
  %i.hc = getelementptr inbounds nuw i8, ptr %.0137, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  %.in.i = select i1 %.not.i, ptr %i.he, ptr %i.hb
  %i.hf = load double, ptr %.in.i, align 8, !tbaa !79
  %i.hg = fsub double %i.hf, %i.e
  %i.hh = load double, ptr %i.gz, align 8, !tbaa !79
  %i.hi = fcmp olt double %i.hg, %i.hh
  br i1 %i.hi, label %bb.ax, label %.lr.ph517, !llvm.loop !156

.lr.ph517:                                        ; preds = %bb.ay
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph517, %bb.fx
  %.1138516 = phi ptr [ %.0137, %.lr.ph517 ], [ %.3, %bb.fx ] ; 34 uses
  %.0434511 = phi ptr [ null, %.lr.ph517 ], [ %.6, %bb.fx ] ; 35 uses
  %i.hk = load double, ptr %.1138516, align 8, !tbaa !79
  %i.hl = load double, ptr %i.hj, align 8, !tbaa !79
  %i.hm = fsub double %i.hl, %i.e
  %i.hn = fcmp olt double %i.hk, %i.hm
  br i1 %i.hn, label %bb.ba, label %.critedge2

bb.ba:                                            ; preds = %bb.az
  %i.ho = tail call noundef i32 @_ZN3igl8geodesic22GeodesicAlgorithmExact19intersect_intervalsEPNS0_8IntervalEPNS0_16IntervalWithStopE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull %.1138516, ptr noundef nonnull %i.gz) ; 7 uses
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.bb, label %bb.cw

bb.bb:                                            ; preds = %bb.ba
  %i.hq = load i32, ptr %i.s, align 8, !tbaa !157
  %i.hr = icmp eq i32 %i.hq, 0
  %.not154 = icmp eq ptr %.0434511, null          ; 2 uses
  br i1 %i.hr, label %bb.bc, label %bb.bx

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not154, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hs = getelementptr inbounds nuw i8, ptr %.0434511, i64 40
  store ptr %.1138516, ptr %i.hs, align 8, !tbaa !77
  %i.ht = load double, ptr %.1138516, align 8, !tbaa !79 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0434511, i64 8
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !152 ; 4 uses
  %i.hw = fcmp oeq double %i.hv, 1.000000e+100
  br i1 %i.hw, label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit196, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hx = load double, ptr %.0434511, align 8, !tbaa !154 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0434511, i64 16
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !148 ; 4 uses
  %i.ia = fcmp ogt double %i.hx, %i.hz
  br i1 %i.ia, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ib = fsub double %i.hx, %i.hz                ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0434511, i64 24
  %i.id = load double, ptr %i.ic, align 8, !tbaa !147 ; 3 uses
  %i.ie = fcmp oeq double %i.id, 0.000000e+00
  br i1 %i.ie, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.if = tail call noundef double @llvm.fabs.f64(double %i.ib)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i193

bb.bh:                                            ; preds = %bb.bf
  %i.ig = fmul double %i.id, %i.id
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ib, double %i.ib, double %i.ig)
  %sqrt.i.i192 = tail call double @llvm.sqrt.f64(double %i.ih)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i193

_ZN3igl8geodesic8Interval6signalEd.exit.i193:     ; preds = %bb.bh, %bb.bg
  %.pn.i.i194 = phi double [ %i.if, %bb.bg ], [ %sqrt.i.i192, %bb.bh ]
  %.0.i.i195 = fadd double %i.hv, %.pn.i.i194
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit196

bb.bi:                                            ; preds = %bb.be
  %i.ii = fcmp olt double %i.ht, %i.hz
  br i1 %i.ii, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.ij = fsub double %i.ht, %i.hz                ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0434511, i64 24
  %i.il = load double, ptr %i.ik, align 8, !tbaa !147 ; 3 uses
  %i.im = fcmp oeq double %i.il, 0.000000e+00
  br i1 %i.im, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.in = tail call noundef double @llvm.fabs.f64(double %i.ij)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i189

bb.bl:                                            ; preds = %bb.bj
  %i.io = fmul double %i.il, %i.il
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.ij, double %i.io)
  %sqrt.i6.i188 = tail call double @llvm.sqrt.f64(double %i.ip)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i189

_ZN3igl8geodesic8Interval6signalEd.exit10.i189:   ; preds = %bb.bl, %bb.bk
  %.pn.i7.i190 = phi double [ %i.in, %bb.bk ], [ %sqrt.i6.i188, %bb.bl ]
  %.0.i8.i191 = fadd double %i.hv, %.pn.i7.i190
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit196

bb.bm:                                            ; preds = %bb.bi
  %i.iq = getelementptr inbounds nuw i8, ptr %.0434511, i64 24
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !147
  %i.is = fsub double %i.hv, %i.ir
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit196

_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit196: ; preds = %bb.bd, %_ZN3igl8geodesic8Interval6signalEd.exit.i193, %_ZN3igl8geodesic8Interval6signalEd.exit10.i189, %bb.bm
  %.0.i.sink.i187 = phi double [ %.0.i.i195, %_ZN3igl8geodesic8Interval6signalEd.exit.i193 ], [ %i.is, %bb.bm ], [ %.0.i8.i191, %_ZN3igl8geodesic8Interval6signalEd.exit10.i189 ], [ 1.000000e+100, %bb.bd ] ; 7 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0434511, i64 32
  store double %.0.i.sink.i187, ptr %i.it, align 8, !tbaa !149
  %.02229.i = load ptr, ptr %i.h, align 8, !tbaa !159 ; 2 uses
  %.not30.i = icmp eq ptr %.02229.i, null
  br i1 %.not30.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit196
  %i.iu = getelementptr inbounds nuw i8, ptr %.0434511, i64 48
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02231.i = phi ptr [ %.02229.i, %.lr.ph.i ], [ %.02231.i.be, %.backedge.backedge ] ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.02231.i, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !77 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !79 ; 3 uses
  %i.iz = fcmp une double %.0.i.sink.i187, %i.iy
  br i1 %i.iz, label %.split.i, label %bb.bn

.split.i:                                         ; preds = %.backedge
  %i.ja = fcmp olt double %.0.i.sink.i187, %i.iy
  br i1 %i.ja, label %bb.bo, label %.thread

bb.bn:                                            ; preds = %.backedge
  %i.jb = load double, ptr %.0434511, align 8, !tbaa !79 ; 2 uses
  %i.jc = load double, ptr %i.iw, align 8, !tbaa !79 ; 2 uses
  %i.jd = fcmp une double %i.jb, %i.jc
  br i1 %i.jd, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i, label %.split26.i

.split26.i:                                       ; preds = %bb.bn
  %i.je = load ptr, ptr %i.iu, align 8, !tbaa !78
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !27
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !78
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !27
  %i.jl = icmp ult i32 %i.jg, %i.jk
  br i1 %i.jl, label %bb.bo, label %.thread

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i:      ; preds = %bb.bn
  %i.jm = fcmp olt double %i.jb, %i.jc
  br i1 %i.jm, label %bb.bo, label %.thread

bb.bo:                                            ; preds = %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i, %.split26.i, %.split.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.02231.i, i64 16
  %.022.i = load ptr, ptr %i.jn, align 8, !tbaa !159 ; 2 uses
  %.not.i329 = icmp eq ptr %.022.i, null
  br i1 %.not.i329, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bo, %.thread
  %.02231.i.be = phi ptr [ %.022.i, %bb.bo ], [ %.022.i439, %.thread ]
  br label %.backedge, !llvm.loop !160

.thread:                                          ; preds = %.split.i, %.split26.i, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.02231.i, i64 24
  %.022.i439 = load ptr, ptr %i.jo, align 8, !tbaa !159 ; 2 uses
  %.not.i329440 = icmp eq ptr %.022.i439, null
  br i1 %.not.i329440, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %bb.bo, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit196
  %.021.lcssa43.i = phi ptr [ %i.i, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit196 ], [ %.02231.i, %bb.bo ] ; 4 uses
  %i.jp = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.jq = icmp eq ptr %.021.lcssa43.i, %i.jp
  br i1 %i.jq, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge.thread.i
  %i.jr = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa43.i) #26
  %.phi.trans.insert557 = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %.pre558 = load ptr, ptr %.phi.trans.insert557, align 8, !tbaa !77 ; 2 uses
  %.phi.trans.insert559 = getelementptr inbounds nuw i8, ptr %.pre558, i64 32
  %.pre560 = load double, ptr %.phi.trans.insert559, align 8, !tbaa !79
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.thread, %bb.bp
  %i.js = phi double [ %.pre560, %bb.bp ], [ %i.iy, %.thread ] ; 2 uses
  %i.jt = phi ptr [ %.pre558, %bb.bp ], [ %i.iw, %.thread ] ; 2 uses
  %.021.lcssa42.i = phi ptr [ %.021.lcssa43.i, %bb.bp ], [ %.02231.i, %.thread ] ; 3 uses
  %i.ju = fcmp une double %i.js, %.0.i.sink.i187
  br i1 %i.ju, label %.split27.i, label %bb.bq

.split27.i:                                       ; preds = %._crit_edge.i.thread
  %i.jv = fcmp olt double %i.js, %.0.i.sink.i187
  br i1 %i.jv, label %bb.br, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206

bb.bq:                                            ; preds = %._crit_edge.i.thread
  %i.jw = load double, ptr %i.jt, align 8, !tbaa !79 ; 2 uses
  %i.jx = load double, ptr %.0434511, align 8, !tbaa !79 ; 2 uses
  %i.jy = fcmp une double %i.jw, %i.jx
  br i1 %i.jy, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i, label %.split28.i

.split28.i:                                       ; preds = %bb.bq
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !78
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !27
  %i.kd = getelementptr inbounds nuw i8, ptr %.0434511, i64 48
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !78
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !27
  %i.kh = icmp ult i32 %i.kc, %i.kg
  br i1 %i.kh, label %bb.br, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i:     ; preds = %bb.bq
  %i.ki = fcmp olt double %i.jw, %i.jx
  br i1 %i.ki, label %bb.br, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206

bb.br:                                            ; preds = %._crit_edge.thread.i, %.split28.i, %.split27.i, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i
  %.sroa.4.0.i.ph = phi ptr [ %.021.lcssa42.i, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i ], [ %.021.lcssa42.i, %.split27.i ], [ %.021.lcssa42.i, %.split28.i ], [ %.021.lcssa43.i, %._crit_edge.thread.i ] ; 3 uses
  %i.kj = icmp eq ptr %.sroa.4.0.i.ph, %i.i
  br i1 %i.kj, label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i201, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !77 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.kn = load double, ptr %i.km, align 8, !tbaa !79 ; 2 uses
  %i.ko = fcmp une double %.0.i.sink.i187, %i.kn
  br i1 %i.ko, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kp = fcmp olt double %.0.i.sink.i187, %i.kn
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i201

bb.bu:                                            ; preds = %bb.bs
  %i.kq = load double, ptr %.0434511, align 8, !tbaa !79 ; 2 uses
  %i.kr = load double, ptr %i.kl, align 8, !tbaa !79 ; 2 uses
  %i.ks = fcmp une double %i.kq, %i.kr
  br i1 %i.ks, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.kt = fcmp olt double %i.kq, %i.kr
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i201

bb.bw:                                            ; preds = %bb.bu
  %i.ku = getelementptr inbounds nuw i8, ptr %.0434511, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !78
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !27
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !78
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !27
  %i.lc = icmp ult i32 %i.kx, %i.lb
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i201

_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i201: ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.br
  %i.ld = phi i1 [ %i.lc, %bb.bw ], [ true, %bb.br ], [ %i.kp, %bb.bt ], [ %i.kt, %bb.bv ]
  %i.le = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  store ptr %.0434511, ptr %i.lf, align 8, !tbaa !77
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ld, ptr noundef nonnull %i.le, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  %i.lg = load i64, ptr %i.j, align 8, !tbaa !75
  %i.lh = add i64 %i.lg, 1
  store i64 %i.lh, ptr %i.j, align 8, !tbaa !75
  br label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206

_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206: ; preds = %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i201, %.split27.i, %.split28.i, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i, %bb.bc
  %i.li = getelementptr inbounds nuw i8, ptr %.1138516, i64 40
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !77
  br label %bb.fx, !llvm.loop !161

bb.bx:                                            ; preds = %bb.bb
  %i.lk = getelementptr inbounds nuw i8, ptr %.1138516, i64 40 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !77 ; 3 uses
  br i1 %.not154, label %bb.cn, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lm = getelementptr inbounds nuw i8, ptr %.0434511, i64 40 ; 2 uses
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !77
  %i.ln = getelementptr inbounds nuw i8, ptr %.1138516, i64 32
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !79 ; 5 uses
  %i.lp = fcmp olt double %i.lo, f0x547D42AEA2879F2E
  br i1 %i.lp, label %bb.bz, label %_ZN3igl8geodesic22GeodesicAlgorithmExact16erase_from_queueEPNS0_8IntervalE.exit

bb.bz:                                            ; preds = %bb.by
  %i.lq = load ptr, ptr %i.h, align 8, !tbaa !126 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not11.i.i.i.i, label %_ZN3igl8geodesic22GeodesicAlgorithmExact16erase_from_queueEPNS0_8IntervalE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bz
  %i.lr = getelementptr inbounds nuw i8, ptr %.1138516, i64 48 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cd, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.lq, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.cd ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.cd ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !77 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !79 ; 2 uses
  %i.lw = fcmp une double %i.lv, %i.lo
  br i1 %i.lw, label %.split.i.i.i.i, label %bb.cb

.split.i.i.i.i:                                   ; preds = %bb.ca
end_hunk_0
begin_hunk_1_@_ZN3igl8geodesic22GeodesicAlgorithmExact21update_list_and_queueEPNS0_12IntervalListEPNS0_16IntervalWithStopEj:bb.a
  %.not.i.i.i247 = icmp eq ptr %.pre549, %i.rx
  br i1 %.not.i.i.i247, label %bb.dg, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.thread.i

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.thread.i: ; preds = %bb.df
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.pre549, i8 0, i64 24, i1 false)
  %i.ry = getelementptr inbounds nuw i8, ptr %.pre549, i64 24 ; 2 uses
  store ptr %i.ry, ptr %i.p, align 8, !tbaa !171
  br label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit.i

bb.dg:                                            ; preds = %bb.df
  %i.rz = load ptr, ptr %i.k, align 8, !tbaa !172 ; 5 uses
  %i.sa = ptrtoint ptr %.pre549 to i64
  %i.sb = ptrtoint ptr %i.rz to i64               ; 2 uses
  %i.sc = sub i64 %i.sa, %i.sb                    ; 3 uses
  %i.sd = icmp eq i64 %i.sc, 9223372036854775800
  br i1 %i.sd, label %.noexc335, label %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

.noexc335:                                        ; preds = %bb.dg
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dg
  %i.se = sdiv exact i64 %i.sc, 24                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.se, i64 1)
  %i.sf = add nsw i64 %.sroa.speculated.i.i, %i.se ; 2 uses
  %i.sg = icmp ult i64 %i.sf, %i.se
  %i.sh = tail call i64 @llvm.umin.i64(i64 %i.sf, i64 384307168202282325)
  %i.si = select i1 %i.sg, i64 384307168202282325, i64 %i.sh ; 3 uses
  %.not.i.i332 = icmp ne i64 %i.si, 0
  tail call void @llvm.assume(i1 %.not.i.i332)
  %i.sj = mul nuw nsw i64 %i.si, 24
  %i.sk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sj) #25 ; 5 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sc
  %.not10.i.i.i.i = icmp eq ptr %i.rz, %.pre549
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sl, i8 0, i64 24, i1 false)
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i333

.lr.ph.i.i.i.i333:                                ; preds = %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i333
  %.012.i.i.i.i = phi ptr [ %i.sr, %.lr.ph.i.i.i.i333 ], [ %i.sk, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.sq, %.lr.ph.i.i.i.i333 ], [ %i.rz, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.sm = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !77, !alias.scope !176, !noalias !173
  store <2 x ptr> %i.sm, ptr %.012.i.i.i.i, align 8, !tbaa !77, !alias.scope !173, !noalias !176
  %i.sn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !178, !alias.scope !176, !noalias !173
  store ptr %i.sp, ptr %i.sn, align 8, !tbaa !178, !alias.scope !173, !noalias !176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !176, !noalias !173
  %i.sq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i334 = icmp eq ptr %i.sq, %.pre549
  br i1 %.not.i.i.i.i334, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i333, !llvm.loop !180

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i333, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.sk, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.sr, %.lr.ph.i.i.i.i333 ]
  %i.ss = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.rz, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.st = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = sub i64 %i.su, %i.sb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.rz, i64 noundef %i.sv) #23
  br label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.i

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.i: ; preds = %bb.dh, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.sk, ptr %i.k, align 8, !tbaa !172
  store ptr %i.ss, ptr %i.p, align 8, !tbaa !171
  %i.sw = getelementptr inbounds nuw [24 x i8], ptr %i.sk, i64 %i.si
  store ptr %i.sw, ptr %i.q, align 8, !tbaa !170
  br label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.i, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.thread.i
  %i.sx = phi ptr [ %i.ss, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.i ], [ %i.ry, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE9push_backEOS4_.exit.thread.i ] ; 8 uses
  %i.sy = getelementptr inbounds i8, ptr %i.sx, i64 -24 ; 2 uses
  %i.sz = load i32, ptr %i.o, align 8, !tbaa !124
  %i.ta = zext i32 %i.sz to i64                   ; 4 uses
  %i.tb = getelementptr inbounds i8, ptr %i.sx, i64 -16 ; 4 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !181 ; 5 uses
  %i.td = load ptr, ptr %i.sy, align 8, !tbaa !182 ; 6 uses
  %i.te = ptrtoint ptr %i.tc to i64               ; 2 uses
  %i.tf = ptrtoint ptr %i.td to i64               ; 2 uses
  %i.tg = sub i64 %i.te, %i.tf                    ; 2 uses
  %i.th = ashr exact i64 %i.tg, 6                 ; 6 uses
  %i.ti = icmp ult i64 %i.th, %i.ta
  br i1 %i.ti, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit.i
  %i.tj = sub nuw nsw i64 %i.ta, %i.th            ; 4 uses
  %i.tk = getelementptr inbounds i8, ptr %i.sx, i64 -8 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !178
  %i.tm = ptrtoint ptr %i.tl to i64               ; 2 uses
  %i.tn = sub i64 %i.tm, %i.te
  %i.to = ashr exact i64 %i.tn, 6                 ; 2 uses
  %i.tp = xor i64 %i.th, 144115188075855871
  %i.tq = icmp ule i64 %i.to, %i.tp
  tail call void @llvm.assume(i1 %i.tq)
  %.not28.i.i = icmp ult i64 %i.to, %i.tj
  br i1 %.not28.i.i, label %_ZNKSt6vectorIN3igl8geodesic8IntervalESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.tr = shl nuw nsw i64 %i.tj, 6
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.tc, i64 %i.tr
  store ptr %scevgep.i.i.i.i.i, ptr %i.tb, align 8, !tbaa !181
  br label %.noexc

_ZNKSt6vectorIN3igl8geodesic8IntervalESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.di
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.th, i64 %i.tj)
  %i.ts = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.th ; 2 uses
  %i.tt = shl nuw nsw i64 %i.ts, 6
  %i.tu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tt) #25 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.tg
  %.not10.i.i.i.i.i = icmp eq ptr %i.td, %i.tc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN3igl8geodesic8IntervalESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.tx, %.lr.ph.i.i.i.i.i ], [ %i.tu, %_ZNKSt6vectorIN3igl8geodesic8IntervalESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.tw, %.lr.ph.i.i.i.i.i ], [ %i.td, %_ZNKSt6vectorIN3igl8geodesic8IntervalESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !183, !alias.scope !184
  %i.tw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i = icmp eq ptr %i.tw, %i.tc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !188

_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN3igl8geodesic8IntervalESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i31.i.i = icmp eq ptr %i.td, null
  br i1 %.not.i31.i.i, label %_ZNSt12_Vector_baseIN3igl8geodesic8IntervalESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %i.ty = sub i64 %i.tm, %i.tf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.ty) #23
  %.pre.pre.pre = load ptr, ptr %i.p, align 8, !tbaa !169
  br label %_ZNSt12_Vector_baseIN3igl8geodesic8IntervalESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i

_ZNSt12_Vector_baseIN3igl8geodesic8IntervalESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i: ; preds = %bb.dk, %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %.pre.pre = phi ptr [ %.pre.pre.pre, %bb.dk ], [ %i.sx, %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i ]
  store ptr %i.tu, ptr %i.sy, align 8, !tbaa !182
  %i.tz = getelementptr inbounds nuw [64 x i8], ptr %i.tv, i64 %i.tj
  store ptr %i.tz, ptr %i.tb, align 8, !tbaa !181
  %i.ua = getelementptr inbounds nuw [64 x i8], ptr %i.tu, i64 %i.ts
  store ptr %i.ua, ptr %i.tk, align 8, !tbaa !178
  br label %.noexc

bb.dl:                                            ; preds = %_ZNSt6vectorIN3igl8geodesic8IntervalESaIS2_EED2Ev.exit.i
  %i.ub = icmp ugt i64 %i.th, %i.ta
  br i1 %i.ub, label %bb.dm, label %.noexc

bb.dm:                                            ; preds = %bb.dl
  %i.uc = getelementptr inbounds nuw [64 x i8], ptr %i.td, i64 %i.ta ; 2 uses
  %.not.i4.i = icmp eq ptr %i.tc, %i.uc
  br i1 %.not.i4.i, label %.noexc, label %_ZSt8_DestroyIPN3igl8geodesic8IntervalES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3igl8geodesic8IntervalES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.dm
  store ptr %i.uc, ptr %i.tb, align 8, !tbaa !181
  br label %.noexc

.noexc:                                           ; preds = %bb.dj, %_ZNSt12_Vector_baseIN3igl8geodesic8IntervalESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i, %bb.dl, %bb.dm, %_ZSt8_DestroyIPN3igl8geodesic8IntervalES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.de
  %i.ud = phi ptr [ %.pre549, %bb.de ], [ %i.sx, %_ZSt8_DestroyIPN3igl8geodesic8IntervalES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.sx, %bb.dm ], [ %i.sx, %bb.dl ], [ %.pre.pre, %_ZNSt12_Vector_baseIN3igl8geodesic8IntervalESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i ], [ %i.sx, %bb.dj ]
  %i.ue = phi i32 [ %i.ru, %bb.de ], [ 0, %_ZSt8_DestroyIPN3igl8geodesic8IntervalES2_EvT_S4_RSaIT0_E.exit.i.i ], [ 0, %bb.dm ], [ 0, %bb.dl ], [ 0, %_ZNSt12_Vector_baseIN3igl8geodesic8IntervalESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i ], [ 0, %bb.dj ] ; 2 uses
  %i.uf = getelementptr inbounds i8, ptr %i.ud, i64 -24
  %i.ug = zext i32 %i.ue to i64
  %i.uh = load ptr, ptr %i.uf, align 8, !tbaa !182
  %i.ui = getelementptr inbounds nuw [64 x i8], ptr %i.uh, i64 %i.ug
  %i.uj = add i32 %i.ue, 1
  store i32 %i.uj, ptr %i.n, align 8, !tbaa !168
  br label %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE8allocateEv.exit

bb.dn:                                            ; preds = %.lr.ph
  %i.uk = getelementptr inbounds i8, ptr %i.rs, i64 -8 ; 2 uses
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !77
  store ptr %i.uk, ptr %i.m, align 8, !tbaa !163
  br label %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE8allocateEv.exit

_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE8allocateEv.exit: ; preds = %bb.dn, %.noexc
  %.0.i = phi ptr [ %i.ui, %.noexc ], [ %i.ul, %bb.dn ]
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %.0.i, ptr %i.um, align 8, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

bb.do:                                            ; preds = %._crit_edge
  br i1 %.not151, label %.noexc270, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.un = getelementptr inbounds nuw i8, ptr %.0434511, i64 40
  store ptr %.1138516, ptr %i.un, align 8, !tbaa !77
  %i.uo = getelementptr inbounds nuw i8, ptr %.0434511, i64 48
  %i.up = load ptr, ptr %i.uo, align 8            ; 3 uses
  %i.uq = load double, ptr %.1138516, align 8, !tbaa !79 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.0434511, i64 8
  %i.us = load double, ptr %i.ur, align 8, !tbaa !152 ; 4 uses
  %i.ut = fcmp oeq double %i.us, 1.000000e+100
  br i1 %i.ut, label %bb.dz, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.uu = load double, ptr %.0434511, align 8, !tbaa !154 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.0434511, i64 16
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !148 ; 4 uses
  %i.ux = fcmp ogt double %i.uu, %i.uw
  br i1 %i.ux, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.uy = fsub double %i.uu, %i.uw                ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.0434511, i64 24
  %i.va = load double, ptr %i.uz, align 8, !tbaa !147 ; 3 uses
  %i.vb = fcmp oeq double %i.va, 0.000000e+00
  br i1 %i.vb, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.vc = tail call noundef double @llvm.fabs.f64(double %i.uy)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i257

bb.dt:                                            ; preds = %bb.dr
  %i.vd = fmul double %i.va, %i.va
  %i.ve = tail call double @llvm.fmuladd.f64(double %i.uy, double %i.uy, double %i.vd)
  %sqrt.i.i256 = tail call double @llvm.sqrt.f64(double %i.ve)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i257

_ZN3igl8geodesic8Interval6signalEd.exit.i257:     ; preds = %bb.dt, %bb.ds
  %.pn.i.i258 = phi double [ %i.vc, %bb.ds ], [ %sqrt.i.i256, %bb.dt ]
  %.0.i.i259 = fadd double %i.us, %.pn.i.i258
  br label %bb.dz

bb.du:                                            ; preds = %bb.dq
  %i.vf = fcmp olt double %i.uq, %i.uw
  br i1 %i.vf, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.vg = fsub double %i.uq, %i.uw                ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.0434511, i64 24
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !147 ; 3 uses
  %i.vj = fcmp oeq double %i.vi, 0.000000e+00
  br i1 %i.vj, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.vk = tail call noundef double @llvm.fabs.f64(double %i.vg)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i253

bb.dx:                                            ; preds = %bb.dv
  %i.vl = fmul double %i.vi, %i.vi
  %i.vm = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vg, double %i.vl)
  %sqrt.i6.i252 = tail call double @llvm.sqrt.f64(double %i.vm)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i253

_ZN3igl8geodesic8Interval6signalEd.exit10.i253:   ; preds = %bb.dx, %bb.dw
  %.pn.i7.i254 = phi double [ %i.vk, %bb.dw ], [ %sqrt.i6.i252, %bb.dx ]
  %.0.i8.i255 = fadd double %i.us, %.pn.i7.i254
  br label %bb.dz

bb.dy:                                            ; preds = %bb.du
  %i.vn = getelementptr inbounds nuw i8, ptr %.0434511, i64 24
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !147
  %i.vp = fsub double %i.us, %i.vo
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %_ZN3igl8geodesic8Interval6signalEd.exit10.i253, %_ZN3igl8geodesic8Interval6signalEd.exit.i257, %bb.dp
  %.0.i.sink.i251 = phi double [ %.0.i.i259, %_ZN3igl8geodesic8Interval6signalEd.exit.i257 ], [ %i.vp, %bb.dy ], [ %.0.i8.i255, %_ZN3igl8geodesic8Interval6signalEd.exit10.i253 ], [ 1.000000e+100, %bb.dp ] ; 7 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.0434511, i64 32
  store double %.0.i.sink.i251, ptr %i.vq, align 8, !tbaa !149
  %.02229.i337 = load ptr, ptr %i.h, align 8, !tbaa !159 ; 2 uses
  %.not30.i338 = icmp eq ptr %.02229.i337, null
  br i1 %.not30.i338, label %._crit_edge.thread.i356, label %.lr.ph.i339.preheader

.lr.ph.i339.preheader:                            ; preds = %bb.dz
  %i.vr = getelementptr inbounds nuw i8, ptr %i.up, i64 48
  br label %.lr.ph.i339

.lr.ph.i339:                                      ; preds = %.lr.ph.i339.backedge, %.lr.ph.i339.preheader
  %.02231.i340 = phi ptr [ %.02229.i337, %.lr.ph.i339.preheader ], [ %.02231.i340.be, %.lr.ph.i339.backedge ] ; 5 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.02231.i340, i64 32
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !77 ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 32
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !79 ; 3 uses
  %i.vw = fcmp une double %.0.i.sink.i251, %i.vv
  br i1 %i.vw, label %.split.i359, label %bb.ea

.split.i359:                                      ; preds = %.lr.ph.i339
  %i.vx = fcmp olt double %.0.i.sink.i251, %i.vv
  br i1 %i.vx, label %bb.eb, label %.thread450

bb.ea:                                            ; preds = %.lr.ph.i339
  %i.vy = load double, ptr %.0434511, align 8, !tbaa !79 ; 2 uses
  %i.vz = load double, ptr %i.vt, align 8, !tbaa !79 ; 2 uses
  %i.wa = fcmp une double %i.vy, %i.vz
  br i1 %i.wa, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i358, label %.split26.i341

.split26.i341:                                    ; preds = %bb.ea
  %i.wb = load i32, ptr %i.vr, align 4, !tbaa !27
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vt, i64 48
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !78
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 48
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !27
  %i.wg = icmp ult i32 %i.wb, %i.wf
  br i1 %i.wg, label %bb.eb, label %.thread450

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i358:   ; preds = %bb.ea
  %i.wh = fcmp olt double %i.vy, %i.vz
  br i1 %i.wh, label %bb.eb, label %.thread450

bb.eb:                                            ; preds = %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i358, %.split26.i341, %.split.i359
  %i.wi = getelementptr inbounds nuw i8, ptr %.02231.i340, i64 16
  %.022.i344 = load ptr, ptr %i.wi, align 8, !tbaa !159 ; 2 uses
  %.not.i345 = icmp eq ptr %.022.i344, null
  br i1 %.not.i345, label %._crit_edge.thread.i356, label %.lr.ph.i339.backedge

.lr.ph.i339.backedge:                             ; preds = %bb.eb, %.thread450
  %.02231.i340.be = phi ptr [ %.022.i344453, %.thread450 ], [ %.022.i344, %bb.eb ]
  br label %.lr.ph.i339, !llvm.loop !160

.thread450:                                       ; preds = %.split.i359, %.split26.i341, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i358
  %i.wj = getelementptr inbounds nuw i8, ptr %.02231.i340, i64 24
  %.022.i344453 = load ptr, ptr %i.wj, align 8, !tbaa !159 ; 2 uses
  %.not.i345454 = icmp eq ptr %.022.i344453, null
  br i1 %.not.i345454, label %._crit_edge.i346.thread, label %.lr.ph.i339.backedge

._crit_edge.thread.i356:                          ; preds = %bb.eb, %bb.dz
  %.021.lcssa43.i357 = phi ptr [ %i.i, %bb.dz ], [ %.02231.i340, %bb.eb ] ; 4 uses
  %i.wk = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.wl = icmp eq ptr %.021.lcssa43.i357, %i.wk
  br i1 %i.wl, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.thread.i356
  %i.wm = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa43.i357) #26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.wm, i64 32
  %.pre550 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77 ; 2 uses
  %.phi.trans.insert551 = getelementptr inbounds nuw i8, ptr %.pre550, i64 32
  %.pre552 = load double, ptr %.phi.trans.insert551, align 8, !tbaa !79
  br label %._crit_edge.i346.thread

._crit_edge.i346.thread:                          ; preds = %.thread450, %bb.ec
  %i.wn = phi double [ %.pre552, %bb.ec ], [ %i.vv, %.thread450 ] ; 2 uses
  %i.wo = phi ptr [ %.pre550, %bb.ec ], [ %i.vt, %.thread450 ] ; 2 uses
  %.021.lcssa42.i347 = phi ptr [ %.021.lcssa43.i357, %bb.ec ], [ %.02231.i340, %.thread450 ] ; 3 uses
  %i.wp = fcmp une double %i.wn, %.0.i.sink.i251
  br i1 %i.wp, label %.split27.i355, label %bb.ed

.split27.i355:                                    ; preds = %._crit_edge.i346.thread
  %i.wq = fcmp olt double %i.wn, %.0.i.sink.i251
  br i1 %i.wq, label %bb.ee, label %.noexc270

bb.ed:                                            ; preds = %._crit_edge.i346.thread
  %i.wr = load double, ptr %i.wo, align 8, !tbaa !79 ; 2 uses
  %i.ws = load double, ptr %.0434511, align 8, !tbaa !79 ; 2 uses
  %i.wt = fcmp une double %i.wr, %i.ws
  br i1 %i.wt, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i354, label %.split28.i349

.split28.i349:                                    ; preds = %bb.ed
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 48
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !78
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 48
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !27
  %i.wy = getelementptr inbounds nuw i8, ptr %i.up, i64 48
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !27
  %i.xa = icmp ult i32 %i.wx, %i.wz
  br i1 %i.xa, label %bb.ee, label %.noexc270

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i354:  ; preds = %bb.ed
  %i.xb = fcmp olt double %i.wr, %i.ws
  br i1 %i.xb, label %bb.ee, label %.noexc270

bb.ee:                                            ; preds = %._crit_edge.thread.i356, %.split28.i349, %.split27.i355, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i354
  %.sroa.4.0.i351.ph = phi ptr [ %.021.lcssa42.i347, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i354 ], [ %.021.lcssa42.i347, %.split27.i355 ], [ %.021.lcssa42.i347, %.split28.i349 ], [ %.021.lcssa43.i357, %._crit_edge.thread.i356 ] ; 3 uses
  %i.xc = icmp eq ptr %.sroa.4.0.i351.ph, %i.i
  br i1 %i.xc, label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i265, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i351.ph, i64 32
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !77 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !79 ; 2 uses
  %i.xh = fcmp une double %.0.i.sink.i251, %i.xg
  br i1 %i.xh, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.xi = fcmp olt double %.0.i.sink.i251, %i.xg
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i265

bb.eh:                                            ; preds = %bb.ef
  %i.xj = load double, ptr %.0434511, align 8, !tbaa !79 ; 2 uses
  %i.xk = load double, ptr %i.xe, align 8, !tbaa !79 ; 2 uses
  %i.xl = fcmp une double %i.xj, %i.xk
  br i1 %i.xl, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.xm = fcmp olt double %i.xj, %i.xk
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i265

bb.ej:                                            ; preds = %bb.eh
  %i.xn = getelementptr inbounds nuw i8, ptr %i.up, i64 48
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !27
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xe, i64 48
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !78
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 48
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !27
  %i.xt = icmp ult i32 %i.xo, %i.xs
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i265

_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i265: ; preds = %bb.ej, %bb.ei, %bb.eg, %bb.ee
  %i.xu = phi i1 [ %i.xt, %bb.ej ], [ true, %bb.ee ], [ %i.xi, %bb.eg ], [ %i.xm, %bb.ei ]
  %i.xv = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 32
  store ptr %.0434511, ptr %i.xw, align 8, !tbaa !77
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.xu, ptr noundef nonnull %i.xv, ptr noundef nonnull %.sroa.4.0.i351.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  %i.xx = load i64, ptr %i.j, align 8, !tbaa !75
  %i.xy = add i64 %i.xx, 1
  store i64 %i.xy, ptr %i.j, align 8, !tbaa !75
  br label %.noexc270

.noexc270:                                        ; preds = %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i265, %.split27.i355, %.split28.i349, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i354, %bb.do
  store ptr %.1138516, ptr %i.r, align 8, !tbaa !77
  %i.xz = load ptr, ptr %i.t, align 8, !tbaa !77
  store ptr %i.xz, ptr %.sroa.5.0..1138.sroa_idx, align 8, !tbaa !77
  %i.ya = load double, ptr %i.v, align 8, !tbaa !79
  store double %i.ya, ptr %.1138516, align 8, !tbaa !79
  br label %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282

bb.ek:                                            ; preds = %._crit_edge
  br i1 %.not151, label %bb.er, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store ptr %.0434511, ptr %i.r, align 8, !tbaa !77
  %i.yb = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.yc = getelementptr inbounds nuw i8, ptr %.0434511, i64 40
  store ptr %i.yb, ptr %i.yc, align 8, !tbaa !77
  %i.yd = load ptr, ptr %i.m, align 8, !tbaa !163 ; 4 uses
  %i.ye = load ptr, ptr %i.l, align 8, !tbaa !164 ; 4 uses
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = ptrtoint ptr %i.ye to i64               ; 2 uses
  %i.yh = sub i64 %i.yf, %i.yg                    ; 7 uses
  %i.yi = ashr exact i64 %i.yh, 3                 ; 3 uses
  %i.yj = load ptr, ptr %i.u, align 8, !tbaa !165 ; 2 uses
  %i.yk = ptrtoint ptr %i.yj to i64
  %i.yl = sub i64 %i.yk, %i.yg
  %i.ym = icmp ult i64 %i.yh, %i.yl
  br i1 %i.ym, label %bb.em, label %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282

bb.em:                                            ; preds = %bb.el
  %.not.i.i273 = icmp eq ptr %i.yd, %i.yj
  br i1 %.not.i.i273, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  store ptr %.1138516, ptr %i.yd, align 8, !tbaa !77
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  store ptr %i.yn, ptr %i.m, align 8, !tbaa !163
  br label %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282

bb.eo:                                            ; preds = %bb.em
  %i.yo = icmp eq i64 %i.yh, 9223372036854775800
  br i1 %i.yo, label %.noexc280, label %_ZNKSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i274

.noexc280:                                        ; preds = %bb.eo
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i274: ; preds = %bb.eo
  %.sroa.speculated.i.i.i.i275 = tail call i64 @llvm.umax.i64(i64 %i.yi, i64 1)
  %i.yp = add nsw i64 %.sroa.speculated.i.i.i.i275, %i.yi ; 2 uses
  %i.yq = icmp ult i64 %i.yp, %i.yi
  %i.yr = tail call i64 @llvm.umin.i64(i64 %i.yp, i64 1152921504606846975)
  %i.ys = select i1 %i.yq, i64 1152921504606846975, i64 %i.yr ; 3 uses
  %.not.i.i.i.i276 = icmp ne i64 %i.ys, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i276)
  %i.yt = shl nuw nsw i64 %i.ys, 3
  %i.yu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yt) #25 ; 4 uses
  %i.yv = getelementptr inbounds i8, ptr %i.yu, i64 %i.yh ; 2 uses
  store ptr %.1138516, ptr %i.yv, align 8, !tbaa !77
  %i.yw = icmp sgt i64 %i.yh, 0
  br i1 %i.yw, label %bb.ep, label %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277

bb.ep:                                            ; preds = %_ZNKSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i274
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yu, ptr align 8 %i.ye, i64 %i.yh, i1 false)
  br label %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277

_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277: ; preds = %bb.ep, %_ZNKSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i274
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %.not.i17.i.i.i278 = icmp eq ptr %i.ye, null
  br i1 %.not.i17.i.i.i278, label %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ye, i64 noundef %i.yh) #23
  br label %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279

_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279: ; preds = %bb.eq, %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277
  store ptr %i.yu, ptr %i.l, align 8, !tbaa !164
  store ptr %i.yx, ptr %i.m, align 8, !tbaa !163
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.ys
  store ptr %i.yy, ptr %i.u, align 8, !tbaa !165
  br label %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282

bb.er:                                            ; preds = %bb.ek
  store ptr %.1138516, ptr %i.r, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.1138516, ptr noundef nonnull align 8 dereferenceable(64) %i.gz, i64 64, i1 false)
  %i.yz = load ptr, ptr %i.t, align 8, !tbaa !77
  store ptr %i.yz, ptr %.sroa.5.0..1138.sroa_idx, align 8, !tbaa !77
  %i.za = load double, ptr %i.v, align 8, !tbaa !79
  store double %i.za, ptr %.1138516, align 8, !tbaa !79
  br label %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282

_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282: ; preds = %bb.el, %bb.en, %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279, %bb.er, %.noexc270
  br i1 %.not524, label %._crit_edge509, label %.lr.ph504

.lr.ph504:                                        ; preds = %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282
  %i.zb = add i32 %i.ho, -1
  %i.zc = zext i32 %i.zb to i64
  %umax535 = tail call i32 @llvm.umax.i32(i32 %i.ho, i32 2)
  %wide.trip.count536 = zext i32 %umax535 to i64
  br label %bb.es

.lr.ph508:                                        ; preds = %bb.ex
  %i.zd = add i32 %i.ho, -1
  %i.ze = zext i32 %i.zd to i64                   ; 3 uses
  %wide.trip.count541 = zext i32 %i.ho to i64
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ze
  br label %bb.ey

bb.es:                                            ; preds = %.lr.ph504, %bb.ex
  %indvars.iv532 = phi i64 [ 1, %.lr.ph504 ], [ %.pre567, %bb.ex ] ; 5 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv532
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !77 ; 6 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv532
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !157
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store <5 x double> %.sroa.0.sroa.0.0.copyload, ptr %i.zi, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zi, i64 40
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zi, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.zi, ptr noundef nonnull align 8 dereferenceable(64) %i.gz, i64 64, i1 false)
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.zm = icmp eq i64 %indvars.iv532, %i.zc
  %.pre567 = add nuw nsw i64 %indvars.iv532, 1    ; 3 uses
  br i1 %i.zm, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre567
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !77
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.ew
  %.sink = phi ptr [ %i.zo, %bb.ew ], [ %.sroa.5.0.copyload, %bb.ev ]
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zi, i64 40
  store ptr %.sink, ptr %i.zp, align 8, !tbaa !77
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv532
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !79
  store double %i.zr, ptr %i.zi, align 8, !tbaa !79
  %exitcond537.not = icmp eq i64 %.pre567, %wide.trip.count536
  br i1 %exitcond537.not, label %.lr.ph508, label %bb.es, !llvm.loop !190

._crit_edge509:                                   ; preds = %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306, %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282
  %.4.lcssa = phi ptr [ null, %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit282 ], [ %.5, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.fx

bb.ey:                                            ; preds = %.lr.ph508, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306
  %indvars.iv538 = phi i64 [ 0, %.lr.ph508 ], [ %indvars.iv.next539, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306 ] ; 4 uses
  %.4505 = phi ptr [ null, %.lr.ph508 ], [ %.5, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306 ] ; 5 uses
  %i.zs = icmp eq i64 %indvars.iv538, %i.ze
  br i1 %i.zs, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.zt = load i32, ptr %i.zf, align 4, !tbaa !157
  %i.zu = icmp eq i32 %i.zt, 1
  br i1 %i.zu, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.zv = load ptr, ptr %i.zg, align 8, !tbaa !77
  br label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306

bb.fb:                                            ; preds = %bb.ey, %bb.ez
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv538
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !77 ; 13 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 40
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !99 ; 2 uses
  %.not.i283 = icmp eq ptr %i.zz, null
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zx, i64 48
  %i.aab = load ptr, ptr %i.aaa, align 8          ; 4 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 56
  %.in.i284 = select i1 %.not.i283, ptr %i.aac, ptr %i.zz
  %i.aad = load double, ptr %.in.i284, align 8, !tbaa !79 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !152 ; 4 uses
  %i.aag = fcmp oeq double %i.aaf, 1.000000e+100
  br i1 %i.aag, label %bb.fl, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aah = load double, ptr %i.zx, align 8, !tbaa !154 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !148 ; 4 uses
  %i.aak = fcmp ogt double %i.aah, %i.aaj
  br i1 %i.aak, label %bb.fd, label %bb.fg

bb.fd:                                            ; preds = %bb.fc
  %i.aal = fsub double %i.aah, %i.aaj             ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !147 ; 3 uses
  %i.aao = fcmp oeq double %i.aan, 0.000000e+00
  br i1 %i.aao, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aap = tail call noundef double @llvm.fabs.f64(double %i.aal)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i291

bb.ff:                                            ; preds = %bb.fd
  %i.aaq = fmul double %i.aan, %i.aan
  %i.aar = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.aal, double %i.aaq)
  %sqrt.i.i290 = tail call double @llvm.sqrt.f64(double %i.aar)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i291

_ZN3igl8geodesic8Interval6signalEd.exit.i291:     ; preds = %bb.ff, %bb.fe
  %.pn.i.i292 = phi double [ %i.aap, %bb.fe ], [ %sqrt.i.i290, %bb.ff ]
  %.0.i.i293 = fadd double %i.aaf, %.pn.i.i292
  br label %bb.fl

bb.fg:                                            ; preds = %bb.fc
  %i.aas = fcmp olt double %i.aad, %i.aaj
  br i1 %i.aas, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.aat = fsub double %i.aad, %i.aaj             ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.aav = load double, ptr %i.aau, align 8, !tbaa !147 ; 3 uses
  %i.aaw = fcmp oeq double %i.aav, 0.000000e+00
  br i1 %i.aaw, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.aax = tail call noundef double @llvm.fabs.f64(double %i.aat)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i287

bb.fj:                                            ; preds = %bb.fh
  %i.aay = fmul double %i.aav, %i.aav
  %i.aaz = tail call double @llvm.fmuladd.f64(double %i.aat, double %i.aat, double %i.aay)
  %sqrt.i6.i286 = tail call double @llvm.sqrt.f64(double %i.aaz)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i287

_ZN3igl8geodesic8Interval6signalEd.exit10.i287:   ; preds = %bb.fj, %bb.fi
  %.pn.i7.i288 = phi double [ %i.aax, %bb.fi ], [ %sqrt.i6.i286, %bb.fj ]
  %.0.i8.i289 = fadd double %i.aaf, %.pn.i7.i288
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fg
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !147
  %i.abc = fsub double %i.aaf, %i.abb
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %_ZN3igl8geodesic8Interval6signalEd.exit10.i287, %_ZN3igl8geodesic8Interval6signalEd.exit.i291, %bb.fb
  %.0.i.sink.i285 = phi double [ %.0.i.i293, %_ZN3igl8geodesic8Interval6signalEd.exit.i291 ], [ %i.abc, %bb.fk ], [ %.0.i8.i289, %_ZN3igl8geodesic8Interval6signalEd.exit10.i287 ], [ 1.000000e+100, %bb.fb ] ; 7 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zx, i64 32
  store double %.0.i.sink.i285, ptr %i.abd, align 8, !tbaa !149
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv538
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !157 ; 2 uses
  %i.abg = icmp eq i32 %i.abf, 1
  %i.abh = icmp eq i32 %i.abf, 0
  %or.cond = and i1 %.1.i228, %i.abh
  %or.cond156 = or i1 %i.abg, %or.cond
  br i1 %or.cond156, label %bb.fm, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306

bb.fm:                                            ; preds = %bb.fl
  %.02229.i361 = load ptr, ptr %i.h, align 8, !tbaa !159 ; 2 uses
  %.not30.i362 = icmp eq ptr %.02229.i361, null
  br i1 %.not30.i362, label %._crit_edge.thread.i380, label %.lr.ph.i363.preheader

.lr.ph.i363.preheader:                            ; preds = %bb.fm
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aab, i64 48
  br label %.lr.ph.i363

.lr.ph.i363:                                      ; preds = %.lr.ph.i363.backedge, %.lr.ph.i363.preheader
  %.02231.i364 = phi ptr [ %.02229.i361, %.lr.ph.i363.preheader ], [ %.02231.i364.be, %.lr.ph.i363.backedge ] ; 5 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.02231.i364, i64 32
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !77 ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 32
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !79 ; 3 uses
  %i.abn = fcmp une double %.0.i.sink.i285, %i.abm
  br i1 %i.abn, label %.split.i383, label %bb.fn

.split.i383:                                      ; preds = %.lr.ph.i363
  %i.abo = fcmp olt double %.0.i.sink.i285, %i.abm
  br i1 %i.abo, label %bb.fo, label %.thread464

bb.fn:                                            ; preds = %.lr.ph.i363
  %i.abp = load double, ptr %i.zx, align 8, !tbaa !79 ; 2 uses
  %i.abq = load double, ptr %i.abk, align 8, !tbaa !79 ; 2 uses
  %i.abr = fcmp une double %i.abp, %i.abq
  br i1 %i.abr, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i382, label %.split26.i365

.split26.i365:                                    ; preds = %bb.fn
  %i.abs = load i32, ptr %i.abi, align 4, !tbaa !27
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abk, i64 48
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !78
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 48
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !27
  %i.abx = icmp ult i32 %i.abs, %i.abw
  br i1 %i.abx, label %bb.fo, label %.thread464

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i382:   ; preds = %bb.fn
  %i.aby = fcmp olt double %i.abp, %i.abq
  br i1 %i.aby, label %bb.fo, label %.thread464

bb.fo:                                            ; preds = %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i382, %.split26.i365, %.split.i383
  %i.abz = getelementptr inbounds nuw i8, ptr %.02231.i364, i64 16
  %.022.i368 = load ptr, ptr %i.abz, align 8, !tbaa !159 ; 2 uses
  %.not.i369 = icmp eq ptr %.022.i368, null
  br i1 %.not.i369, label %._crit_edge.thread.i380, label %.lr.ph.i363.backedge

.lr.ph.i363.backedge:                             ; preds = %bb.fo, %.thread464
  %.02231.i364.be = phi ptr [ %.022.i368467, %.thread464 ], [ %.022.i368, %bb.fo ]
  br label %.lr.ph.i363, !llvm.loop !160

.thread464:                                       ; preds = %.split.i383, %.split26.i365, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i382
  %i.aca = getelementptr inbounds nuw i8, ptr %.02231.i364, i64 24
  %.022.i368467 = load ptr, ptr %i.aca, align 8, !tbaa !159 ; 2 uses
  %.not.i369468 = icmp eq ptr %.022.i368467, null
  br i1 %.not.i369468, label %._crit_edge.i370.thread, label %.lr.ph.i363.backedge

._crit_edge.thread.i380:                          ; preds = %bb.fo, %bb.fm
  %.021.lcssa43.i381 = phi ptr [ %i.i, %bb.fm ], [ %.02231.i364, %bb.fo ] ; 4 uses
  %i.acb = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.acc = icmp eq ptr %.021.lcssa43.i381, %i.acb
  br i1 %i.acc, label %bb.fr, label %bb.fp

bb.fp:                                            ; preds = %._crit_edge.thread.i380
  %i.acd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa43.i381) #26
  %.phi.trans.insert553 = getelementptr inbounds nuw i8, ptr %i.acd, i64 32
  %.pre554 = load ptr, ptr %.phi.trans.insert553, align 8, !tbaa !77 ; 2 uses
  %.phi.trans.insert555 = getelementptr inbounds nuw i8, ptr %.pre554, i64 32
  %.pre556 = load double, ptr %.phi.trans.insert555, align 8, !tbaa !79
  br label %._crit_edge.i370.thread

._crit_edge.i370.thread:                          ; preds = %.thread464, %bb.fp
  %i.ace = phi double [ %.pre556, %bb.fp ], [ %i.abm, %.thread464 ] ; 2 uses
  %i.acf = phi ptr [ %.pre554, %bb.fp ], [ %i.abk, %.thread464 ] ; 2 uses
  %.021.lcssa42.i371 = phi ptr [ %.021.lcssa43.i381, %bb.fp ], [ %.02231.i364, %.thread464 ] ; 3 uses
  %i.acg = fcmp une double %i.ace, %.0.i.sink.i285
  br i1 %i.acg, label %.split27.i379, label %bb.fq

.split27.i379:                                    ; preds = %._crit_edge.i370.thread
  %i.ach = fcmp olt double %i.ace, %.0.i.sink.i285
  br i1 %i.ach, label %bb.fr, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306

bb.fq:                                            ; preds = %._crit_edge.i370.thread
  %i.aci = load double, ptr %i.acf, align 8, !tbaa !79 ; 2 uses
  %i.acj = load double, ptr %i.zx, align 8, !tbaa !79 ; 2 uses
  %i.ack = fcmp une double %i.aci, %i.acj
  br i1 %i.ack, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i378, label %.split28.i373

.split28.i373:                                    ; preds = %bb.fq
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acf, i64 48
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !78
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 48
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !27
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aab, i64 48
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !27
  %i.acr = icmp ult i32 %i.aco, %i.acq
  br i1 %i.acr, label %bb.fr, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i378:  ; preds = %bb.fq
  %i.acs = fcmp olt double %i.aci, %i.acj
  br i1 %i.acs, label %bb.fr, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306

bb.fr:                                            ; preds = %._crit_edge.thread.i380, %.split28.i373, %.split27.i379, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i378
  %.sroa.4.0.i375.ph = phi ptr [ %.021.lcssa42.i371, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i378 ], [ %.021.lcssa42.i371, %.split27.i379 ], [ %.021.lcssa42.i371, %.split28.i373 ], [ %.021.lcssa43.i381, %._crit_edge.thread.i380 ] ; 3 uses
  %i.act = icmp eq ptr %.sroa.4.0.i375.ph, %i.i
  br i1 %i.act, label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i299, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i375.ph, i64 32
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !77 ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 32
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !79 ; 2 uses
  %i.acy = fcmp une double %.0.i.sink.i285, %i.acx
  br i1 %i.acy, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.acz = fcmp olt double %.0.i.sink.i285, %i.acx
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i299

bb.fu:                                            ; preds = %bb.fs
  %i.ada = load double, ptr %i.zx, align 8, !tbaa !79 ; 2 uses
  %i.adb = load double, ptr %i.acv, align 8, !tbaa !79 ; 2 uses
  %i.adc = fcmp une double %i.ada, %i.adb
  br i1 %i.adc, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.add = fcmp olt double %i.ada, %i.adb
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i299

bb.fw:                                            ; preds = %bb.fu
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aab, i64 48
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !27
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acv, i64 48
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !78
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 48
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !27
  %i.adk = icmp ult i32 %i.adf, %i.adj
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i299

_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i299: ; preds = %bb.fw, %bb.fv, %bb.ft, %bb.fr
  %i.adl = phi i1 [ %i.adk, %bb.fw ], [ true, %bb.fr ], [ %i.acz, %bb.ft ], [ %i.add, %bb.fv ]
  %i.adm = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 32
  store ptr %i.zx, ptr %i.adn, align 8, !tbaa !77
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.adl, ptr noundef nonnull %i.adm, ptr noundef nonnull %.sroa.4.0.i375.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  %i.ado = load i64, ptr %i.j, align 8, !tbaa !75
  %i.adp = add i64 %i.ado, 1
  store i64 %i.adp, ptr %i.j, align 8, !tbaa !75
  br label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306

_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit306: ; preds = %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i299, %.split27.i379, %.split28.i373, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i378, %bb.fl, %bb.fa
  %.5 = phi ptr [ %i.zv, %bb.fa ], [ %.4505, %bb.fl ], [ %.4505, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i378 ], [ %.4505, %.split28.i373 ], [ %.4505, %.split27.i379 ], [ %.4505, %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i299 ] ; 2 uses
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %exitcond542.not = icmp eq i64 %indvars.iv.next539, %wide.trip.count541
  br i1 %exitcond542.not, label %._crit_edge509, label %bb.ey, !llvm.loop !191

bb.fx:                                            ; preds = %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206, %_ZN3igl8geodesic22GeodesicAlgorithmExact16erase_from_queueEPNS0_8IntervalE.exit227, %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit, %._crit_edge509
  %.6 = phi ptr [ null, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206 ], [ %.1138516, %_ZN3igl8geodesic22GeodesicAlgorithmExact16erase_from_queueEPNS0_8IntervalE.exit227 ], [ %.0434511, %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit ], [ %.4.lcssa, %._crit_edge509 ] ; 2 uses
  %.3 = phi ptr [ %i.lj, %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit206 ], [ %i.ll, %_ZN3igl8geodesic22GeodesicAlgorithmExact16erase_from_queueEPNS0_8IntervalE.exit227 ], [ %i.oc, %_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEE10deallocateEPS2_.exit ], [ %.sroa.5.0.copyload, %._crit_edge509 ] ; 2 uses
  %.not148 = icmp eq ptr %.3, null
  br i1 %.not148, label %.critedge2, label %bb.az

.critedge2:                                       ; preds = %bb.az, %bb.fx
  %.0434.lcssa = phi ptr [ %.6, %bb.fx ], [ %.0434511, %bb.az ] ; 14 uses
  %.not149 = icmp eq ptr %.0434.lcssa, null
  br i1 %.not149, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328, label %bb.fy

bb.fy:                                            ; preds = %.critedge2
  %i.adq = getelementptr inbounds nuw i8, ptr %.0434.lcssa, i64 40
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !99 ; 2 uses
  %.not.i307 = icmp eq ptr %i.adr, null
  %i.ads = getelementptr inbounds nuw i8, ptr %.0434.lcssa, i64 48
  %i.adt = load ptr, ptr %i.ads, align 8          ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 56
  %.in.i308 = select i1 %.not.i307, ptr %i.adu, ptr %i.adr
  %i.adv = load double, ptr %.in.i308, align 8, !tbaa !79 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.0434.lcssa, i64 8
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !152 ; 4 uses
  %i.ady = fcmp oeq double %i.adx, 1.000000e+100
  br i1 %i.ady, label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit318, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.adz = load double, ptr %.0434.lcssa, align 8, !tbaa !154 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.0434.lcssa, i64 16
  %i.aeb = load double, ptr %i.aea, align 8, !tbaa !148 ; 4 uses
  %i.aec = fcmp ogt double %i.adz, %i.aeb
  br i1 %i.aec, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  %i.aed = fsub double %i.adz, %i.aeb             ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.0434.lcssa, i64 24
  %i.aef = load double, ptr %i.aee, align 8, !tbaa !147 ; 3 uses
  %i.aeg = fcmp oeq double %i.aef, 0.000000e+00
  br i1 %i.aeg, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.aeh = tail call noundef double @llvm.fabs.f64(double %i.aed)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i315

bb.gc:                                            ; preds = %bb.ga
  %i.aei = fmul double %i.aef, %i.aef
  %i.aej = tail call double @llvm.fmuladd.f64(double %i.aed, double %i.aed, double %i.aei)
  %sqrt.i.i314 = tail call double @llvm.sqrt.f64(double %i.aej)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i315

_ZN3igl8geodesic8Interval6signalEd.exit.i315:     ; preds = %bb.gc, %bb.gb
  %.pn.i.i316 = phi double [ %i.aeh, %bb.gb ], [ %sqrt.i.i314, %bb.gc ]
  %.0.i.i317 = fadd double %i.adx, %.pn.i.i316
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit318

bb.gd:                                            ; preds = %bb.fz
  %i.aek = fcmp olt double %i.adv, %i.aeb
  br i1 %i.aek, label %bb.ge, label %bb.gh

bb.ge:                                            ; preds = %bb.gd
  %i.ael = fsub double %i.adv, %i.aeb             ; 3 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.0434.lcssa, i64 24
  %i.aen = load double, ptr %i.aem, align 8, !tbaa !147 ; 3 uses
  %i.aeo = fcmp oeq double %i.aen, 0.000000e+00
  br i1 %i.aeo, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aep = tail call noundef double @llvm.fabs.f64(double %i.ael)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i311

bb.gg:                                            ; preds = %bb.ge
  %i.aeq = fmul double %i.aen, %i.aen
  %i.aer = tail call double @llvm.fmuladd.f64(double %i.ael, double %i.ael, double %i.aeq)
  %sqrt.i6.i310 = tail call double @llvm.sqrt.f64(double %i.aer)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i311

_ZN3igl8geodesic8Interval6signalEd.exit10.i311:   ; preds = %bb.gg, %bb.gf
  %.pn.i7.i312 = phi double [ %i.aep, %bb.gf ], [ %sqrt.i6.i310, %bb.gg ]
  %.0.i8.i313 = fadd double %i.adx, %.pn.i7.i312
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit318

bb.gh:                                            ; preds = %bb.gd
  %i.aes = getelementptr inbounds nuw i8, ptr %.0434.lcssa, i64 24
  %i.aet = load double, ptr %i.aes, align 8, !tbaa !147
  %i.aeu = fsub double %i.adx, %i.aet
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit318

_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit318: ; preds = %bb.fy, %_ZN3igl8geodesic8Interval6signalEd.exit.i315, %_ZN3igl8geodesic8Interval6signalEd.exit10.i311, %bb.gh
  %.0.i.sink.i309 = phi double [ %.0.i.i317, %_ZN3igl8geodesic8Interval6signalEd.exit.i315 ], [ %i.aeu, %bb.gh ], [ %.0.i8.i313, %_ZN3igl8geodesic8Interval6signalEd.exit10.i311 ], [ 1.000000e+100, %bb.fy ] ; 7 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.0434.lcssa, i64 32
  store double %.0.i.sink.i309, ptr %i.aev, align 8, !tbaa !149
  %.02229.i385 = load ptr, ptr %i.h, align 8, !tbaa !159 ; 2 uses
  %.not30.i386 = icmp eq ptr %.02229.i385, null
  br i1 %.not30.i386, label %._crit_edge.thread.i404, label %.lr.ph.i387.preheader

.lr.ph.i387.preheader:                            ; preds = %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit318
  %i.aew = getelementptr inbounds nuw i8, ptr %i.adt, i64 48
  br label %.lr.ph.i387

.lr.ph.i387:                                      ; preds = %.lr.ph.i387.backedge, %.lr.ph.i387.preheader
  %.02231.i388 = phi ptr [ %.02229.i385, %.lr.ph.i387.preheader ], [ %.02231.i388.be, %.lr.ph.i387.backedge ] ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.02231.i388, i64 32
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !77 ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 32
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !79 ; 3 uses
  %i.afb = fcmp une double %.0.i.sink.i309, %i.afa
  br i1 %i.afb, label %.split.i407, label %bb.gi

.split.i407:                                      ; preds = %.lr.ph.i387
  %i.afc = fcmp olt double %.0.i.sink.i309, %i.afa
  br i1 %i.afc, label %bb.gj, label %.thread478

bb.gi:                                            ; preds = %.lr.ph.i387
  %i.afd = load double, ptr %.0434.lcssa, align 8, !tbaa !79 ; 2 uses
  %i.afe = load double, ptr %i.aey, align 8, !tbaa !79 ; 2 uses
  %i.aff = fcmp une double %i.afd, %i.afe
  br i1 %i.aff, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i406, label %.split26.i389

.split26.i389:                                    ; preds = %bb.gi
  %i.afg = load i32, ptr %i.aew, align 4, !tbaa !27
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aey, i64 48
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !78
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 48
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !27
  %i.afl = icmp ult i32 %i.afg, %i.afk
  br i1 %i.afl, label %bb.gj, label %.thread478

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i406:   ; preds = %bb.gi
  %i.afm = fcmp olt double %i.afd, %i.afe
  br i1 %i.afm, label %bb.gj, label %.thread478

bb.gj:                                            ; preds = %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i406, %.split26.i389, %.split.i407
  %i.afn = getelementptr inbounds nuw i8, ptr %.02231.i388, i64 16
  %.022.i392 = load ptr, ptr %i.afn, align 8, !tbaa !159 ; 2 uses
  %.not.i393 = icmp eq ptr %.022.i392, null
  br i1 %.not.i393, label %._crit_edge.thread.i404, label %.lr.ph.i387.backedge

.lr.ph.i387.backedge:                             ; preds = %bb.gj, %.thread478
  %.02231.i388.be = phi ptr [ %.022.i392481, %.thread478 ], [ %.022.i392, %bb.gj ]
  br label %.lr.ph.i387, !llvm.loop !160

.thread478:                                       ; preds = %.split.i407, %.split26.i389, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i406
  %i.afo = getelementptr inbounds nuw i8, ptr %.02231.i388, i64 24
  %.022.i392481 = load ptr, ptr %i.afo, align 8, !tbaa !159 ; 2 uses
  %.not.i393482 = icmp eq ptr %.022.i392481, null
  br i1 %.not.i393482, label %._crit_edge.i394.thread, label %.lr.ph.i387.backedge

._crit_edge.thread.i404:                          ; preds = %bb.gj, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit318
  %.021.lcssa43.i405 = phi ptr [ %i.i, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit318 ], [ %.02231.i388, %bb.gj ] ; 4 uses
  %i.afp = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.afq = icmp eq ptr %.021.lcssa43.i405, %i.afp
  br i1 %i.afq, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %._crit_edge.thread.i404
  %i.afr = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa43.i405) #26
  %.phi.trans.insert561 = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  %.pre562 = load ptr, ptr %.phi.trans.insert561, align 8, !tbaa !77 ; 2 uses
  %.phi.trans.insert563 = getelementptr inbounds nuw i8, ptr %.pre562, i64 32
  %.pre564 = load double, ptr %.phi.trans.insert563, align 8, !tbaa !79
  br label %._crit_edge.i394.thread

._crit_edge.i394.thread:                          ; preds = %.thread478, %bb.gk
  %i.afs = phi double [ %.pre564, %bb.gk ], [ %i.afa, %.thread478 ] ; 2 uses
  %i.aft = phi ptr [ %.pre562, %bb.gk ], [ %i.aey, %.thread478 ] ; 2 uses
  %.021.lcssa42.i395 = phi ptr [ %.021.lcssa43.i405, %bb.gk ], [ %.02231.i388, %.thread478 ] ; 3 uses
  %i.afu = fcmp une double %i.afs, %.0.i.sink.i309
  br i1 %i.afu, label %.split27.i403, label %bb.gl

.split27.i403:                                    ; preds = %._crit_edge.i394.thread
  %i.afv = fcmp olt double %i.afs, %.0.i.sink.i309
  br i1 %i.afv, label %bb.gm, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328

bb.gl:                                            ; preds = %._crit_edge.i394.thread
  %i.afw = load double, ptr %i.aft, align 8, !tbaa !79 ; 2 uses
  %i.afx = load double, ptr %.0434.lcssa, align 8, !tbaa !79 ; 2 uses
  %i.afy = fcmp une double %i.afw, %i.afx
  br i1 %i.afy, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i402, label %.split28.i397

.split28.i397:                                    ; preds = %bb.gl
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aft, i64 48
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !78
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 48
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !27
  %i.agd = getelementptr inbounds nuw i8, ptr %i.adt, i64 48
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !27
  %i.agf = icmp ult i32 %i.agc, %i.age
  br i1 %i.agf, label %bb.gm, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i402:  ; preds = %bb.gl
  %i.agg = fcmp olt double %i.afw, %i.afx
  br i1 %i.agg, label %bb.gm, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328

bb.gm:                                            ; preds = %._crit_edge.thread.i404, %.split28.i397, %.split27.i403, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i402
  %.sroa.4.0.i399.ph = phi ptr [ %.021.lcssa42.i395, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i402 ], [ %.021.lcssa42.i395, %.split27.i403 ], [ %.021.lcssa42.i395, %.split28.i397 ], [ %.021.lcssa43.i405, %._crit_edge.thread.i404 ] ; 3 uses
  %i.agh = icmp eq ptr %.sroa.4.0.i399.ph, %i.i
  br i1 %i.agh, label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i323, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i399.ph, i64 32
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !77 ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 32
  %i.agl = load double, ptr %i.agk, align 8, !tbaa !79 ; 2 uses
  %i.agm = fcmp une double %.0.i.sink.i309, %i.agl
  br i1 %i.agm, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.agn = fcmp olt double %.0.i.sink.i309, %i.agl
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i323

bb.gp:                                            ; preds = %bb.gn
  %i.ago = load double, ptr %.0434.lcssa, align 8, !tbaa !79 ; 2 uses
  %i.agp = load double, ptr %i.agj, align 8, !tbaa !79 ; 2 uses
  %i.agq = fcmp une double %i.ago, %i.agp
  br i1 %i.agq, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.agr = fcmp olt double %i.ago, %i.agp
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i323

bb.gr:                                            ; preds = %bb.gp
  %i.ags = getelementptr inbounds nuw i8, ptr %i.adt, i64 48
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !27
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agj, i64 48
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !78
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 48
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !27
  %i.agy = icmp ult i32 %i.agt, %i.agx
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i323

_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i323: ; preds = %bb.gr, %bb.gq, %bb.go, %bb.gm
  %i.agz = phi i1 [ %i.agy, %bb.gr ], [ true, %bb.gm ], [ %i.agn, %bb.go ], [ %i.agr, %bb.gq ]
  %i.aha = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  store ptr %.0434.lcssa, ptr %i.ahb, align 8, !tbaa !77
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.agz, ptr noundef nonnull %i.aha, ptr noundef nonnull %.sroa.4.0.i399.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  %i.ahc = load i64, ptr %i.j, align 8, !tbaa !75
  %i.ahd = add i64 %i.ahc, 1
  store i64 %i.ahd, ptr %i.j, align 8, !tbaa !75
  br label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328

_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328: ; preds = %bb.ax, %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i323, %.split27.i403, %.split28.i397, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i402, %.critedge2
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1 ; 2 uses
  %exitcond547.not = icmp eq i64 %indvars.iv.next544, %wide.trip.count546
  br i1 %exitcond547.not, label %.loopexit, label %bb.aw, !llvm.loop !192

.loopexit:                                        ; preds = %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit328, %.preheader492, %bb.au, %bb.av
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl14exact_geodesicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES5_S5_S5_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERKNS7_IT4_EERNS1_15PlainObjectBaseIT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.39", align 8    ; 13 uses
  %8 = alloca %"class.std::vector.46", align 8    ; 13 uses
  %9 = alloca %"class.igl::geodesic::Mesh", align 8 ; 14 uses
  %10 = alloca %"class.igl::geodesic::GeodesicAlgorithmExact", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.32", align 8   ; 16 uses
  %12 = alloca %"class.std::vector.32", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !193  ; 4 uses
  %i.c = mul nsw i64 %i.b, 3                      ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %.noexc107

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc107:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = mul i64 %i.b, 24
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 6 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !198
end_hunk_1
begin_hunk_2_@_ZN3igl8geodesic22GeodesicAlgorithmExact10trace_backERNS0_12SurfacePointERSt6vectorIS2_SaIS2_EE:bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !113    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 23 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN3igl8geodesic12SurfacePointES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3igl8geodesic12SurfacePointES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !110
  br label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE5clearEv.exit

_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN3igl8geodesic12SurfacePointES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 -1, ptr %i.c, align 4, !tbaa !27
  %i.g = call noundef ptr @_ZN3igl8geodesic22GeodesicAlgorithmExact19best_first_intervalERNS0_12SurfacePointERdS4_Rj(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.h = load double, ptr %i.a, align 8, !tbaa !79
  %i.i = fcmp ult double %i.h, 5.000000e+99
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backERKS2_.exit95

bb.b:                                             ; preds = %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE5clearEv.exit
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !110  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !215
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.e, align 8, !tbaa !110
  br label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !113    ; 5 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775776
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = call i64 @llvm.umin.i64(i64 %i.u, i64 288230376151711743)
  %i.x = select i1 %i.v, i64 288230376151711743, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 5
  %i.z = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #25 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !266
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !224

_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #23
  br label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.z, ptr %2, align 8, !tbaa !113
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !215
  br label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.af = phi ptr [ %i.n, %bb.c ], [ %i.ad, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.bg, label %_ZNSt12_Vector_baseIPN3igl8geodesic4EdgeESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN3igl8geodesic4EdgeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ah = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25
          to label %.noexc unwind label %.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIPN3igl8geodesic4EdgeESaIS3_EE11_M_allocateEm.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !138
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !136
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backEOS2_.exit.backedge, %.noexc
  %i.al = phi ptr [ %i.af, %.noexc ], [ %.be, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backEOS2_.exit.backedge ]
  %.0155 = phi double [ undef, %.noexc ], [ %.3158, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backEOS2_.exit.backedge ] ; 2 uses
  %.0149 = phi ptr [ undef, %.noexc ], [ %.3152, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backEOS2_.exit.backedge ] ; 2 uses
  %.0140 = phi double [ undef, %.noexc ], [ %.2, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backEOS2_.exit.backedge ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32
  %i.an = invoke noundef i64 @_ZN3igl8geodesic22GeodesicAlgorithmExact19visible_from_sourceERNS0_12SurfacePointE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE9push_backEOS2_.exit
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.bc

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !248 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32 ; 2 uses
  invoke void @_ZN3igl8geodesic22GeodesicAlgorithmExact24possible_traceback_edgesERNS0_12SurfacePointERSt6vectorIPNS0_4EdgeESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.aq

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !136 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !138   ; 3 uses
  %.not.i42 = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i42, label %_ZN3igl8geodesic22GeodesicAlgorithmExact26best_point_on_the_edge_setERNS0_12SurfacePointERKSt6vectorIPNS0_4EdgeESaIS6_EERPNS0_8IntervalERdSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !103
  %i.au = load double, ptr %i.aq, align 8, !tbaa !79 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 -24
  %i.aw = load double, ptr %i.av, align 8, !tbaa !79 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.ap, i64 -16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !79 ; 2 uses
  %i.az = ptrtoint ptr %i.ar to i64
  %i.ba = ptrtoint ptr %i.as to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  br label %bb.j

bb.j:                                             ; preds = %.noexc43, %.lr.ph.i
  %.1156 = phi double [ %.0155, %.lr.ph.i ], [ %.2157, %.noexc43 ]
  %.0153 = phi double [ 1.000000e+100, %.lr.ph.i ], [ %.1154, %.noexc43 ] ; 2 uses
  %.1150 = phi ptr [ %.0149, %.lr.ph.i ], [ %.2151, %.noexc43 ]
  %.1 = phi double [ %.0140, %.lr.ph.i ], [ %.6, %.noexc43 ] ; 2 uses
  %i.bd = phi i64 [ 0, %.lr.ph.i ], [ %i.ge, %.noexc43 ]
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gd, %.noexc43 ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !78
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !27
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !129 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !262 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load double, ptr %i.bq, align 8, !tbaa !79
  %i.bs = fsub double %i.au, %i.br                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !79
  %i.bv = fsub double %i.aw, %i.bu                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !79
  %i.by = fsub double %i.ay, %i.bx                ; 2 uses
  %i.bz = fmul double %i.bv, %i.bv
  %i.ca = call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bz)
  %i.cb = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.ca)
  %sqrt.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.cb) ; 5 uses
  %i.cc = fcmp olt double %sqrt.i.i.i.i, 1.000000e-50
  br i1 %i.cc, label %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !86 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !79
  %i.ch = fsub double %i.au, %i.cg                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !79
  %i.ck = fsub double %i.aw, %i.cj                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !79
  %i.cn = fsub double %i.ay, %i.cm                ; 2 uses
  %i.co = fmul double %i.ck, %i.ck
  %i.cp = call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.co)
  %i.cq = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.cp)
  %sqrt.i.i21.i.i = call noundef double @llvm.sqrt.f64(double %i.cq) ; 3 uses
  %i.cr = fcmp olt double %sqrt.i.i21.i.i, 1.000000e-50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !145 ; 3 uses
  br i1 %i.cr, label %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = fmul double %i.ct, 5.000000e-01
  %i.cv = fneg double %sqrt.i.i21.i.i
  %i.cw = fmul double %sqrt.i.i21.i.i, %i.cv
  %i.cx = call double @llvm.fmuladd.f64(double %sqrt.i.i.i.i, double %sqrt.i.i.i.i, double %i.cw)
  %i.cy = fmul double %i.ct, 2.000000e+00
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fadd double %i.cu, %i.cz                ; 3 uses
  %i.db = fneg double %i.da
  %i.dc = fmul double %i.da, %i.db
  %i.dd = call double @llvm.fmuladd.f64(double %sqrt.i.i.i.i, double %sqrt.i.i.i.i, double %i.dc) ; 2 uses
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.de, double %i.dd, double 0.000000e+00
  %i.df = call double @sqrt(double noundef %.sroa.speculated.i.i) #22
  br label %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i

_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %.015.i = phi double [ %i.da, %bb.l ], [ 0.000000e+00, %bb.j ], [ %i.ct, %bb.k ] ; 10 uses
  %.sink.i.i = phi double [ %i.df, %bb.l ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ] ; 4 uses
  %.not16.i = icmp eq ptr %i.bk, null
  br i1 %.not16.i, label %.noexc43, label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i
  %i.dg = fmul double %.sink.i.i, %.sink.i.i      ; 2 uses
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.preheader, %bb.ak
  %.0145 = phi ptr [ %.1146, %bb.ak ], [ null, %.lr.ph.i96.preheader ] ; 2 uses
  %.0141 = phi double [ %.1142, %bb.ak ], [ 1.000000e+100, %.lr.ph.i96.preheader ] ; 3 uses
  %.3 = phi double [ %.4, %bb.ak ], [ %.1, %.lr.ph.i96.preheader ] ; 2 uses
  %.017.i = phi ptr [ %i.gb, %bb.ak ], [ %i.bk, %.lr.ph.i96.preheader ] ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.017.i, i64 32
  %i.di = load double, ptr %i.dh, align 8, !tbaa !79
  %i.dj = fcmp olt double %i.di, 1.000000e+100
  br i1 %i.dj, label %bb.m, label %bb.ak

bb.m:                                             ; preds = %.lr.ph.i96
  %i.dk = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !152 ; 7 uses
  %i.dm = fcmp oeq double %i.dl, 1.000000e+100
  br i1 %i.dm, label %.noexc98, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %.017.i, i64 24
  %i.do = load double, ptr %i.dn, align 8, !tbaa !147 ; 15 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !148 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.017.i, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !99 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.ds, null
  %i.dt = getelementptr inbounds nuw i8, ptr %.017.i, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56 ; 2 uses
  %.in.i.i = select i1 %.not.i.i99, ptr %i.dv, ptr %i.ds
  %i.dw = load double, ptr %.in.i.i, align 8, !tbaa !79 ; 8 uses
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !79
  %i.dy = fmul double %i.dx, f0x3EB0C6F7A0B5ED8D
  %i.dz = fsub double %.sink.i.i, %i.do           ; 4 uses
  %i.ea = call noundef double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp olt double %i.ea, %i.dy
  br i1 %i.eb, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ec = load double, ptr %.017.i, align 8, !tbaa !154 ; 4 uses
  %i.ed = fcmp ugt double %.015.i, %i.ec
  %i.ee = fcmp oeq double %i.do, 0.000000e+00     ; 3 uses
  br i1 %i.ed, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = fsub double %i.ec, %i.dq                ; 3 uses
  br i1 %i.ee, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eg = call noundef double @llvm.fabs.f64(double %i.ef)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i

bb.r:                                             ; preds = %bb.p
  %i.eh = fmul double %i.do, %i.do
  %i.ei = call double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.eh)
  %sqrt.i.i100 = call double @llvm.sqrt.f64(double %i.ei)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.i

_ZN3igl8geodesic8Interval6signalEd.exit.i:        ; preds = %bb.q, %bb.r
  %.pn.i.i = phi double [ %i.eg, %bb.q ], [ %sqrt.i.i100, %bb.r ]
  %.0.i.i = fadd double %i.dl, %.pn.i.i
  %i.ej = fsub double %.015.i, %i.ec
  %i.ek = call noundef double @llvm.fabs.f64(double %i.ej)
  %i.el = fadd double %i.ek, %.0.i.i
  br label %.noexc98

bb.s:                                             ; preds = %bb.o
  %i.em = fcmp ult double %.015.i, %i.dw
  br i1 %i.em, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.en = fsub double %i.dw, %i.dq                ; 3 uses
  br i1 %i.ee, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eo = call noundef double @llvm.fabs.f64(double %i.en)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit58.i

bb.v:                                             ; preds = %bb.t
  %i.ep = fmul double %i.do, %i.do
  %i.eq = call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %i.ep)
  %sqrt.i54.i = call double @llvm.sqrt.f64(double %i.eq)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit58.i

_ZN3igl8geodesic8Interval6signalEd.exit58.i:      ; preds = %bb.u, %bb.v
  %.pn.i55.i = phi double [ %i.eo, %bb.u ], [ %sqrt.i54.i, %bb.v ]
  %.0.i56.i = fadd double %i.dl, %.pn.i55.i
  %i.er = fsub double %i.dw, %.015.i
  %i.es = call double @llvm.fabs.f64(double %i.er)
  %i.et = fadd double %i.es, %.0.i56.i
  br label %.noexc98

bb.w:                                             ; preds = %bb.s
  %i.eu = fsub double %.015.i, %i.dq              ; 3 uses
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ev = call noundef double @llvm.fabs.f64(double %i.eu)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ew = fmul double %i.do, %i.do
  %i.ex = call double @llvm.fmuladd.f64(double %i.eu, double %i.eu, double %i.ew)
  %sqrt.i59.i = call double @llvm.sqrt.f64(double %i.ex)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.i60.i = phi double [ %i.ev, %bb.x ], [ %sqrt.i59.i, %bb.y ]
  %.0.i61.i = fadd double %i.dl, %.pn.i60.i
  br label %.noexc98

bb.aa:                                            ; preds = %bb.n
  %i.ey = fneg double %i.do
  %i.ez = fmul double %.sink.i.i, %i.dq
  %i.fa = call double @llvm.fmuladd.f64(double %.015.i, double %i.ey, double %i.ez)
  %i.fb = fdiv double %i.fa, %i.dz                ; 3 uses
  %i.fc = load double, ptr %.017.i, align 8, !tbaa !154 ; 4 uses
  %i.fd = fcmp olt double %i.fb, %i.fc
  br i1 %i.fd, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.fe = fsub double %i.fc, %i.dq                ; 3 uses
  %i.ff = fcmp oeq double %i.do, 0.000000e+00
  br i1 %i.ff, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fg = call noundef double @llvm.fabs.f64(double %i.fe)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit68.i

bb.ad:                                            ; preds = %bb.ab
  %i.fh = fmul double %i.do, %i.do
  %i.fi = call double @llvm.fmuladd.f64(double %i.fe, double %i.fe, double %i.fh)
  %sqrt.i64.i = call double @llvm.sqrt.f64(double %i.fi)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit68.i

_ZN3igl8geodesic8Interval6signalEd.exit68.i:      ; preds = %bb.ac, %bb.ad
  %.pn.i65.i = phi double [ %i.fg, %bb.ac ], [ %sqrt.i64.i, %bb.ad ]
  %.0.i66.i = fadd double %i.dl, %.pn.i65.i
  %i.fj = fsub double %i.fc, %.015.i              ; 2 uses
  %i.fk = call double @llvm.fmuladd.f64(double %i.fj, double %i.fj, double %i.dg)
  %sqrt.i69.i = call noundef double @llvm.sqrt.f64(double %i.fk)
  %i.fl = fadd double %sqrt.i69.i, %.0.i66.i
  br label %.noexc98

bb.ae:                                            ; preds = %bb.aa
  %i.fm = fcmp ogt double %i.fb, %i.dw
  br i1 %i.fm, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.fn = fsub double %i.dw, %i.dq                ; 3 uses
  %i.fo = fcmp oeq double %i.do, 0.000000e+00
  br i1 %i.fo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fp = call noundef double @llvm.fabs.f64(double %i.fn)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit74.i

bb.ah:                                            ; preds = %bb.af
  %i.fq = fmul double %i.do, %i.do
  %i.fr = call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fq)
  %sqrt.i70.i = call double @llvm.sqrt.f64(double %i.fr)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit74.i

_ZN3igl8geodesic8Interval6signalEd.exit74.i:      ; preds = %bb.ag, %bb.ah
  %.pn.i71.i = phi double [ %i.fp, %bb.ag ], [ %sqrt.i70.i, %bb.ah ]
  %.0.i72.i = fadd double %i.dl, %.pn.i71.i
  %i.fs = fsub double %i.dw, %.015.i              ; 2 uses
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.dg)
  %sqrt.i75.i = call noundef double @llvm.sqrt.f64(double %i.ft)
  %i.fu = fadd double %sqrt.i75.i, %.0.i72.i
  br label %.noexc98

bb.ai:                                            ; preds = %bb.ae
  %i.fv = fsub double %i.dq, %.015.i              ; 2 uses
  %i.fw = fmul double %i.dz, %i.dz
  %i.fx = call double @llvm.fmuladd.f64(double %i.fv, double %i.fv, double %i.fw)
  %sqrt.i76.i = call noundef double @llvm.sqrt.f64(double %i.fx)
  %i.fy = fadd double %i.dl, %sqrt.i76.i
  br label %.noexc98

.noexc98:                                         ; preds = %bb.ai, %_ZN3igl8geodesic8Interval6signalEd.exit74.i, %_ZN3igl8geodesic8Interval6signalEd.exit68.i, %bb.z, %_ZN3igl8geodesic8Interval6signalEd.exit58.i, %_ZN3igl8geodesic8Interval6signalEd.exit.i, %bb.m
  %.0 = phi double [ %i.fb, %bb.ai ], [ 1.000000e+100, %bb.m ], [ %.015.i, %bb.z ], [ %i.dw, %_ZN3igl8geodesic8Interval6signalEd.exit58.i ], [ %i.ec, %_ZN3igl8geodesic8Interval6signalEd.exit.i ], [ %i.fc, %_ZN3igl8geodesic8Interval6signalEd.exit68.i ], [ %i.dw, %_ZN3igl8geodesic8Interval6signalEd.exit74.i ]
  %.sink.i = phi double [ %i.fy, %bb.ai ], [ 1.000000e+100, %bb.m ], [ %.0.i61.i, %bb.z ], [ %i.et, %_ZN3igl8geodesic8Interval6signalEd.exit58.i ], [ %i.el, %_ZN3igl8geodesic8Interval6signalEd.exit.i ], [ %i.fl, %_ZN3igl8geodesic8Interval6signalEd.exit68.i ], [ %i.fu, %_ZN3igl8geodesic8Interval6signalEd.exit74.i ] ; 2 uses
  %i.fz = fcmp olt double %.sink.i, %.0141
  br i1 %i.fz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc98
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc98, %bb.aj, %.lr.ph.i96
  %.1146 = phi ptr [ %.0145, %.lr.ph.i96 ], [ %.017.i, %bb.aj ], [ %.0145, %.noexc98 ] ; 2 uses
  %.1142 = phi double [ %.0141, %.lr.ph.i96 ], [ %.sink.i, %bb.aj ], [ %.0141, %.noexc98 ] ; 2 uses
  %.4 = phi double [ %.3, %.lr.ph.i96 ], [ %.0, %bb.aj ], [ %.3, %.noexc98 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.017.i, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !77 ; 2 uses
  %.not.i97 = icmp eq ptr %i.gb, null
  br i1 %.not.i97, label %.noexc43, label %.lr.ph.i96, !llvm.loop !270

.noexc43:                                         ; preds = %bb.ak, %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i
  %.3148 = phi ptr [ null, %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i ], [ %.1146, %bb.ak ]
  %.3144 = phi double [ 1.000000e+100, %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i ], [ %.1142, %bb.ak ] ; 2 uses
  %.6 = phi double [ %.1, %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit.i ], [ %.4, %bb.ak ] ; 3 uses
  %i.gc = fcmp olt double %.3144, %.0153          ; 3 uses
  %.2157 = select i1 %i.gc, double %.6, double %.1156 ; 2 uses
  %.1154 = select i1 %i.gc, double %.3144, double %.0153
  %.2151 = select i1 %i.gc, ptr %.3148, ptr %.1150 ; 2 uses
  %i.gd = add i32 %.014.i, 1                      ; 2 uses
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = icmp ugt i64 %i.bc, %i.ge
  br i1 %i.gf, label %bb.j, label %_ZN3igl8geodesic22GeodesicAlgorithmExact26best_point_on_the_edge_setERNS0_12SurfacePointERKSt6vectorIPNS0_4EdgeESaIS6_EERPNS0_8IntervalERdSE_.exit, !llvm.loop !271

_ZN3igl8geodesic22GeodesicAlgorithmExact26best_point_on_the_edge_setERNS0_12SurfacePointERKSt6vectorIPNS0_4EdgeESaIS6_EERPNS0_8IntervalERdSE_.exit: ; preds = %.noexc43, %bb.i
  %.3158 = phi double [ %.0155, %bb.i ], [ %.2157, %.noexc43 ] ; 4 uses
  %.3152 = phi ptr [ %.0149, %bb.i ], [ %.2151, %.noexc43 ] ; 3 uses
  %.2 = phi double [ %.0140, %bb.i ], [ %.6, %.noexc43 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.3152, i64 56
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !27
  store i32 %i.gh, ptr %i.c, align 4, !tbaa !27
  %i.gi = getelementptr inbounds nuw i8, ptr %.3152, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !78 ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !79 ; 3 uses
  %i.gm = fmul double %i.gl, f0x3EB0C6F7A0B5ED8D  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3igl8geodesic15MemoryAllocatorINS0_8IntervalEED2Ev:bb.a
_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !172    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !171  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EED2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !178
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.q, %i.j
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !293

_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !172
  br label %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EED2Ev.exit
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt6vectorIPN3igl8geodesic8IntervalESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #23
  br label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  invoke void @_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !172    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !293

_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN3igl8geodesic8IntervalESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !172
  br label %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !170
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3igl8geodesic22GeodesicAlgorithmExact19best_first_intervalERNS0_12SurfacePointERdS4_Rj(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 4 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 12 uses
  %i.c = alloca double, align 8                   ; 12 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  store double 1.000000e+100, ptr %2, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !219  ; 9 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit

_ZN3igl8geodesic12SurfacePoint4typeEv.exit:       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !142
  switch i32 %i.h, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread [
    i32 1, label %bb.b
    i32 2, label %.preheader
    i32 0, label %.preheader101
  ]

bb.b:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load double, ptr %1, align 8, !tbaa !79
  %i.t = load double, ptr %i.r, align 8, !tbaa !79
  %i.u = fsub double %i.s, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !79
  %i.z = fsub double %i.w, %i.y                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !79
  %i.ae = fsub double %i.ab, %i.ad                ; 2 uses
  %i.af = fmul double %i.z, %i.z
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.af)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.ag)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ah) ; 3 uses
  store double %sqrt.i.i, ptr %3, align 8, !tbaa !79
  %.0.pre.i = load ptr, ptr %i.n, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i = phi ptr [ %.0.pre.i, %bb.b ], [ %i.aj, %bb.d ] ; 8 uses
  %.not.i78 = icmp eq ptr %.0.i, null
  br i1 %.not.i78, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !99 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %.in.i.i = select i1 %.not.i.i, ptr %i.am, ptr %i.aj
  %i.an = load double, ptr %.in.i.i, align 8, !tbaa !79
  %i.ao = fcmp olt double %i.an, %sqrt.i.i
  br i1 %i.ao, label %bb.c, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit, !llvm.loop !151

_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !152 ; 2 uses
  %i.ar = fcmp oeq double %i.aq, 1.000000e+100
  br i1 %i.ar, label %_ZN3igl8geodesic8Interval6signalEd.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.at = load double, ptr %i.as, align 8, !tbaa !148
  %i.au = fsub double %sqrt.i.i, %i.at            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.aw = load double, ptr %i.av, align 8, !tbaa !147 ; 3 uses
  %i.ax = fcmp oeq double %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = tail call noundef double @llvm.fabs.f64(double %i.au)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.az = fmul double %i.aw, %i.aw
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.au, double %i.au, double %i.az)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ba)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi double [ %i.ay, %bb.f ], [ %sqrt.i, %bb.g ]
  %.0.i79 = fadd double %i.aq, %.pn.i
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

_ZN3igl8geodesic8Interval6signalEd.exit:          ; preds = %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit, %bb.h
  %.1.i = phi double [ %.0.i79, %bb.h ], [ 1.000000e+100, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit ]
  store double %.1.i, ptr %2, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !27
  store i32 %i.bc, ptr %4, align 4, !tbaa !27
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread

.preheader:                                       ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !96
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @_ZN3igl8geodesic12IntervalList18find_closest_pointEPNS0_12SurfacePointERdS4_RPNS0_8IntervalE(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !77  ; 3 uses
  %.not76 = icmp eq ptr %i.bm, null
  br i1 %.not76, label %bb.k, label %bb.i

.lr.ph112:                                        ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.r

bb.i:                                             ; preds = %.preheader
  %i.bp = load double, ptr %i.c, align 8, !tbaa !79 ; 2 uses
  %i.bq = load double, ptr %2, align 8, !tbaa !79
  %i.br = fcmp olt double %i.bp, %i.bq
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.bp, ptr %2, align 8, !tbaa !79
  %i.bs = load double, ptr %i.b, align 8, !tbaa !79
  store double %i.bs, ptr %3, align 8, !tbaa !79
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !27
  store i32 %i.bu, ptr %4, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.preheader
  %.1 = phi ptr [ %i.bm, %bb.j ], [ null, %bb.i ], [ null, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bv = load ptr, ptr %i.bd, align 8, !tbaa !96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !78
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !27
  %i.ca = zext i32 %i.bz to i64
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !103
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @_ZN3igl8geodesic12IntervalList18find_closest_pointEPNS0_12SurfacePointERdS4_RPNS0_8IntervalE(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !77  ; 3 uses
  %.not76.1 = icmp eq ptr %i.cd, null
  br i1 %.not76.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = load double, ptr %i.c, align 8, !tbaa !79 ; 2 uses
  %i.cf = load double, ptr %2, align 8, !tbaa !79
  %i.cg = fcmp olt double %i.ce, %i.cf
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %i.ce, ptr %2, align 8, !tbaa !79
  %i.ch = load double, ptr %i.b, align 8, !tbaa !79
  store double %i.ch, ptr %3, align 8, !tbaa !79
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27
  store i32 %i.cj, ptr %4, align 4, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1.1 = phi ptr [ %i.cd, %bb.m ], [ %.1, %bb.l ], [ %.1, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ck = load ptr, ptr %i.bd, align 8, !tbaa !96
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !78
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !27
  %i.cp = zext i32 %i.co to i64
  %i.cq = load ptr, ptr %i.be, align 8, !tbaa !103
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @_ZN3igl8geodesic12IntervalList18find_closest_pointEPNS0_12SurfacePointERdS4_RPNS0_8IntervalE(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !77  ; 3 uses
  %.not76.2 = icmp eq ptr %i.cs, null
  br i1 %.not76.2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = load double, ptr %i.c, align 8, !tbaa !79 ; 2 uses
  %i.cu = load double, ptr %2, align 8, !tbaa !79
  %i.cv = fcmp olt double %i.ct, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.ct, ptr %2, align 8, !tbaa !79
  %i.cw = load double, ptr %i.b, align 8, !tbaa !79
  store double %i.cw, ptr %3, align 8, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !27
  store i32 %i.cy, ptr %4, align 4, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.2 = phi ptr [ %i.cs, %bb.p ], [ %.1.1, %bb.o ], [ %.1.1, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.f, ptr %i.da, align 8, !tbaa !137
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !333
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !285
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.df, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.df, i64 40, i1 false)
  %i.dg = call { ptr, ptr } @_ZSt13__equal_rangeIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIS4_EENSB_14_Val_comp_iterIS4_EEESt4pairIT_SH_ESH_SH_RKT0_T1_T2_(ptr %i.dc, ptr %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.dg, 1      ; 2 uses
  %.not109 = icmp eq ptr %i.dh, %i.di
  br i1 %.not109, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread, label %.lr.ph112

bb.r:                                             ; preds = %.lr.ph112, %bb.t
  %.2111 = phi ptr [ %.1.2, %.lr.ph112 ], [ %.3, %bb.t ]
  %.sroa.0.0110 = phi ptr [ %i.dh, %.lr.ph112 ], [ %i.ec, %bb.t ] ; 2 uses
  %i.dj = load ptr, ptr %.sroa.0.0110, align 8, !tbaa !285 ; 4 uses
  %i.dk = load double, ptr %1, align 8, !tbaa !79
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !79
  %i.dm = fsub double %i.dk, %i.dl                ; 2 uses
  %i.dn = load double, ptr %i.bn, align 8, !tbaa !79
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !79
  %i.dq = fsub double %i.dn, %i.dp                ; 2 uses
  %i.dr = load double, ptr %i.bo, align 8, !tbaa !79
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !79
  %i.du = fsub double %i.dr, %i.dt                ; 2 uses
  %i.dv = fmul double %i.dq, %i.dq
  %i.dw = call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %i.dv)
  %i.dx = call double @llvm.fmuladd.f64(double %i.du, double %i.du, double %i.dw)
  %sqrt.i.i82 = call noundef double @llvm.sqrt.f64(double %i.dx) ; 2 uses
  %i.dy = load double, ptr %2, align 8, !tbaa !79
  %i.dz = fcmp olt double %sqrt.i.i82, %i.dy
  br i1 %i.dz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %sqrt.i.i82, ptr %2, align 8, !tbaa !79
  store double 0.000000e+00, ptr %3, align 8, !tbaa !79
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !334
  store i32 %i.eb, ptr %4, align 4, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.3 = phi ptr [ null, %bb.s ], [ %.2111, %bb.r ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0110, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ec, %i.di
  br i1 %.not, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread, label %bb.r, !llvm.loop !415

.preheader101:                                    ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !353 ; 2 uses
  %.not114 = icmp eq i32 %i.ee, 0
  br i1 %.not114, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader101
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !96
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !103
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread
  %i.ek = phi i32 [ %i.ee, %.lr.ph ], [ %i.fy, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread ] ; 2 uses
  %.4106 = phi ptr [ null, %.lr.ph ], [ %.6, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !78 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !27
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !83
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !86
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !27
  %i.ew = load i32, ptr %i.ej, align 8, !tbaa !27
  %i.ex = icmp eq i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !79
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.fa = phi double [ %i.ez, %bb.v ], [ 0.000000e+00, %bb.u ] ; 3 uses
  %.0.pre.i85 = load ptr, ptr %i.eq, align 8, !tbaa !77
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.0.i86 = phi ptr [ %.0.pre.i85, %bb.w ], [ %i.fc, %bb.y ] ; 8 uses
  %.not.i87 = icmp eq ptr %.0.i86, null
  br i1 %.not.i87, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i86, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !99 ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.fc, null
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i86, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %.in.i.i89 = select i1 %.not.i.i88, ptr %i.ff, ptr %i.fc
  %i.fg = load double, ptr %.in.i.i89, align 8, !tbaa !79
  %i.fh = fcmp olt double %i.fg, %i.fa
  br i1 %i.fh, label %bb.x, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90, !llvm.loop !151

_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90: ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i86, i64 8
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !152 ; 2 uses
  %i.fk = fcmp oeq double %i.fj, 1.000000e+100
  br i1 %i.fk, label %_ZN3igl8geodesic8Interval6signalEd.exit95, label %bb.z

bb.z:                                             ; preds = %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i86, i64 16
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !148
  %i.fn = fsub double %i.fa, %i.fm                ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i86, i64 24
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !147 ; 3 uses
  %i.fq = fcmp oeq double %i.fp, 0.000000e+00
  br i1 %i.fq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fr = tail call noundef double @llvm.fabs.f64(double %i.fn)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.fs = fmul double %i.fp, %i.fp
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fs)
  %sqrt.i91 = tail call double @llvm.sqrt.f64(double %i.ft)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i92 = phi double [ %i.fr, %bb.aa ], [ %sqrt.i91, %bb.ab ]
  %.0.i93 = fadd double %i.fj, %.pn.i92
  br label %_ZN3igl8geodesic8Interval6signalEd.exit95

_ZN3igl8geodesic8Interval6signalEd.exit95:        ; preds = %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90, %bb.ac
  %.1.i94 = phi double [ %.0.i93, %bb.ac ], [ 1.000000e+100, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90 ] ; 2 uses
  %i.fu = load double, ptr %2, align 8, !tbaa !79
  %i.fv = fcmp olt double %.1.i94, %i.fu
  br i1 %i.fv, label %bb.ad, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread

bb.ad:                                            ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit95
  store double %.1.i94, ptr %2, align 8, !tbaa !79
  store double %i.fa, ptr %3, align 8, !tbaa !79
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i86, i64 56
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !27
  store i32 %i.fx, ptr %4, align 4, !tbaa !27
  %.pre = load i32, ptr %i.ed, align 8, !tbaa !353
  br label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread

_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread: ; preds = %bb.x, %_ZN3igl8geodesic8Interval6signalEd.exit95, %bb.ad
  %i.fy = phi i32 [ %i.ek, %_ZN3igl8geodesic8Interval6signalEd.exit95 ], [ %.pre, %bb.ad ], [ %i.ek, %bb.x ] ; 2 uses
  %.6 = phi ptr [ %.4106, %_ZN3igl8geodesic8Interval6signalEd.exit95 ], [ %.0.i86, %bb.ad ], [ %.4106, %bb.x ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = icmp samesign ult i64 %indvars.iv.next, %i.fz
  br i1 %i.ga, label %bb.u, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread, !llvm.loop !416

_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread: ; preds = %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread, %bb.t, %bb.c, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit, %.preheader101, %bb.q, %bb.a, %_ZN3igl8geodesic8Interval6signalEd.exit
  %.7 = phi ptr [ null, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit ], [ null, %bb.c ], [ null, %bb.a ], [ %.0.i, %_ZN3igl8geodesic8Interval6signalEd.exit ], [ %.3, %bb.t ], [ %.1.2, %bb.q ], [ null, %.preheader101 ], [ %.6, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit90.thread ]
  %i.gb = load double, ptr %2, align 8, !tbaa !79
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !105
  %i.ge = fcmp ogt double %i.gb, %i.gd
  br i1 %i.ge, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread
  store double 1.000000e+100, ptr %2, align 8, !tbaa !79
  br label %bb.af

bb.af:                                            ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread, %bb.ae
  %.0 = phi ptr [ null, %bb.ae ], [ %.7, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit84.thread ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN3igl8geodesic22GeodesicAlgorithmExact19visible_from_sourceERNS0_12SurfacePointE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit44.thread, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit

_ZN3igl8geodesic12SurfacePoint4typeEv.exit:       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !142
  switch i32 %i.d, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit44.thread.fold.split [
    i32 1, label %bb.b
    i32 2, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit44.thread
    i32 0, label %.preheader
  ]

bb.b:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load double, ptr %1, align 8, !tbaa !79
  %i.p = load double, ptr %i.n, align 8, !tbaa !79
  %i.q = fsub double %i.o, %i.p                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.u = load double, ptr %i.t, align 8, !tbaa !79
  %i.v = fsub double %i.s, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.z = load double, ptr %i.y, align 8, !tbaa !79
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = fmul double %i.v, %i.v
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.ab)
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ac)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ad) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.af = load double, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %i.ag = fcmp olt double %i.af, %sqrt.i.i
  %.sroa.speculated = select i1 %i.ag, double %i.af, double %sqrt.i.i
  %.0.pre.i = load ptr, ptr %i.j, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i = phi ptr [ %.0.pre.i, %bb.b ], [ %i.ai, %bb.d ] ; 5 uses
  %.not.i40 = icmp eq ptr %.0.i, null
  br i1 %.not.i40, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit44.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !99 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %.in.i.i = select i1 %.not.i.i, ptr %i.al, ptr %i.ai
  %i.am = load double, ptr %.in.i.i, align 8, !tbaa !79
  %i.an = fcmp olt double %i.am, %.sroa.speculated
  br i1 %i.an, label %bb.c, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit, !llvm.loop !151

_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !155
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.e, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit44.thread

bb.e:                                             ; preds = %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !27
  %i.at = zext i32 %i.as to i64
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit44.thread

.preheader:                                       ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !353 ; 2 uses
  %.not3759.not = icmp eq i32 %i.av, 0
  br i1 %.not3759.not, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit44.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !103
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !27
  %wide.trip.count = zext i32 %i.av to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit50.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit50.thread ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !78 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !27
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !27
  %i.bn = icmp eq i32 %i.bm, %i.bb
  br i1 %i.bn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bq = phi double [ %i.bp, %bb.g ], [ 0.000000e+00, %bb.f ]
  %.0.pre.i45 = load ptr, ptr %i.bh, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0.i46 = phi ptr [ %.0.pre.i45, %bb.h ], [ %i.bs, %bb.j ] ; 5 uses
  %.not.i47 = icmp eq ptr %.0.i46, null
  br i1 %.not.i47, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit50.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i46, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !99 ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.bs, null
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i46, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %.in.i.i49 = select i1 %.not.i.i48, ptr %i.bv, ptr %i.bs
  %i.bw = load double, ptr %.in.i.i49, align 8, !tbaa !79
  %i.bx = fcmp olt double %i.bw, %i.bq
  br i1 %i.bx, label %bb.i, label %_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit50, !llvm.loop !151

_ZN3igl8geodesic12IntervalList17covering_intervalEd.exit50: ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i46, i64 60
end_hunk_3
begin_hunk_4_@_ZN3igl8geodesic22GeodesicAlgorithmExact24possible_traceback_edgesERNS0_12SurfacePointERSt6vectorIPNS0_4EdgeESaIS6_EE:bb.a

bb.ai:                                            ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ir) #23
  %.pre101.pre = load ptr, ptr %i.ij, align 8, !tbaa !96
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %.pre101 = phi ptr [ %.pre101.pre, %bb.ai ], [ %i.ik, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i ]
  store ptr %i.iz, ptr %2, align 8, !tbaa !138
  store ptr %i.jd, ptr %i.b, align 8, !tbaa !136
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ix ; 2 uses
  store ptr %i.je, ptr %i.il, align 8, !tbaa !134
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.ae, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.jf = phi ptr [ %i.a, %bb.ae ], [ %i.iz, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 5 uses
  %i.jg = phi ptr [ %i.im, %bb.ae ], [ %i.je, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 3 uses
  %i.jh = phi ptr [ %i.io, %bb.ae ], [ %i.jd, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 3 uses
  %i.ji = phi ptr [ %i.ik, %bb.ae ], [ %.pre101, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %.not.i66 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not.i66, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !78
  store ptr %i.jk, ptr %i.jh, align 8, !tbaa !78
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  store ptr %i.jl, ptr %i.b, align 8, !tbaa !136
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit73

bb.ak:                                            ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit
  %i.jm = ptrtoint ptr %i.jg to i64
  %i.jn = ptrtoint ptr %i.jf to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 6 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775800
  br i1 %i.jp, label %bb.al, label %_ZNKSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i67

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i67: ; preds = %bb.ak
  %i.jq = ashr exact i64 %i.jo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i68 = tail call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i68, %i.jq ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jq
  %i.jt = tail call i64 @llvm.umin.i64(i64 %i.jr, i64 1152921504606846975)
  %i.ju = select i1 %i.js, i64 1152921504606846975, i64 %i.jt ; 3 uses
  %.not.i.i.i69 = icmp ne i64 %i.ju, 0
  tail call void @llvm.assume(i1 %.not.i.i.i69)
  %i.jv = shl nuw nsw i64 %i.ju, 3
  %i.jw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #25 ; 5 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.jo ; 2 uses
  %i.jy = load ptr, ptr %i.jj, align 8, !tbaa !78
  store ptr %i.jy, ptr %i.jx, align 8, !tbaa !78
  %i.jz = icmp sgt i64 %i.jo, 0
  br i1 %i.jz, label %bb.am, label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i70

bb.am:                                            ; preds = %_ZNKSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i67
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jw, ptr align 8 %i.jf, i64 %i.jo, i1 false)
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i70

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i70: ; preds = %bb.am, %_ZNKSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i67
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %.not.i17.i.i71 = icmp eq ptr %i.jf, null
  br i1 %.not.i17.i.i71, label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i72, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i70
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jo) #23
  %.pre102.pre = load ptr, ptr %i.ij, align 8, !tbaa !96
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i72

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i72: ; preds = %bb.an, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i70
  %.pre102 = phi ptr [ %.pre102.pre, %bb.an ], [ %i.ji, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i70 ]
  store ptr %i.jw, ptr %2, align 8, !tbaa !138
  store ptr %i.ka, ptr %i.b, align 8, !tbaa !136
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.ju ; 2 uses
  store ptr %i.kb, ptr %i.il, align 8, !tbaa !134
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit73

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit73: ; preds = %bb.aj, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i72
  %i.kc = phi ptr [ %i.jf, %bb.aj ], [ %i.jw, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i72 ] ; 4 uses
  %i.kd = phi ptr [ %i.jg, %bb.aj ], [ %i.kb, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i72 ] ; 2 uses
  %i.ke = phi ptr [ %i.jl, %bb.aj ], [ %i.ka, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i72 ] ; 3 uses
  %i.kf = phi ptr [ %i.ji, %bb.aj ], [ %.pre102, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i72 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ke, %i.kd
  br i1 %.not.i74, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit73
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !78
  store ptr %i.kh, ptr %i.ke, align 8, !tbaa !78
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store ptr %i.ki, ptr %i.b, align 8, !tbaa !136
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit81

bb.ap:                                            ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit73
  %i.kj = ptrtoint ptr %i.kd to i64
  %i.kk = ptrtoint ptr %i.kc to i64
  %i.kl = sub i64 %i.kj, %i.kk                    ; 6 uses
  %i.km = icmp eq i64 %i.kl, 9223372036854775800
  br i1 %i.km, label %bb.aq, label %_ZNKSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i75

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i75: ; preds = %bb.ap
  %i.kn = ashr exact i64 %i.kl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i76 = tail call i64 @llvm.umax.i64(i64 %i.kn, i64 1)
  %i.ko = add nsw i64 %.sroa.speculated.i.i.i76, %i.kn ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.kn
  %i.kq = tail call i64 @llvm.umin.i64(i64 %i.ko, i64 1152921504606846975)
  %i.kr = select i1 %i.kp, i64 1152921504606846975, i64 %i.kq ; 3 uses
  %.not.i.i.i77 = icmp ne i64 %i.kr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i77)
  %i.ks = shl nuw nsw i64 %i.kr, 3
  %i.kt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #25 ; 4 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.kl ; 2 uses
  %i.kv = load ptr, ptr %i.kg, align 8, !tbaa !78
  store ptr %i.kv, ptr %i.ku, align 8, !tbaa !78
  %i.kw = icmp sgt i64 %i.kl, 0
  br i1 %i.kw, label %bb.ar, label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i78

bb.ar:                                            ; preds = %_ZNKSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kt, ptr align 8 %i.kc, i64 %i.kl, i1 false)
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i78

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i78: ; preds = %bb.ar, %_ZNKSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i75
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %.not.i17.i.i79 = icmp eq ptr %i.kc, null
  br i1 %.not.i17.i.i79, label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i80, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i78
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kl) #23
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i80

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i80: ; preds = %bb.as, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i78
  store ptr %i.kt, ptr %2, align 8, !tbaa !138
  store ptr %i.kx, ptr %i.b, align 8, !tbaa !136
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kr
  store ptr %i.ky, ptr %i.il, align 8, !tbaa !134
  br label %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit81

_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backERKS3_.exit81: ; preds = %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backEOS3_.exit64, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE9push_backEOS3_.exit, %.preheader87, %.preheader, %_ZNSt6vectorIPN3igl8geodesic4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i80, %bb.ao
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic12IntervalList18find_closest_pointEPNS0_12SurfacePointERdS4_RPNS0_8IntervalE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !129    ; 2 uses
  store double 1.000000e+100, ptr %3, align 8, !tbaa !79
  store ptr null, ptr %4, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load double, ptr %1, align 8, !tbaa !79  ; 2 uses
  %i.k = load double, ptr %i.i, align 8, !tbaa !79
  %i.l = fsub double %i.j, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !79 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.p = load double, ptr %i.o, align 8, !tbaa !79
  %i.q = fsub double %i.n, %i.p                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !79 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !79
  %i.v = fsub double %i.s, %i.u                   ; 2 uses
  %i.w = fmul double %i.q, %i.q
  %i.x = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.w)
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.x)
  %sqrt.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.y) ; 5 uses
  %i.z = fcmp olt double %sqrt.i.i.i, 1.000000e-50
  br i1 %i.z, label %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !86 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !79
  %i.ae = fsub double %i.j, %i.ad                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ag = load double, ptr %i.af, align 8, !tbaa !79
  %i.ah = fsub double %i.n, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !79
  %i.ak = fsub double %i.s, %i.aj                 ; 2 uses
  %i.al = fmul double %i.ah, %i.ah
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.al)
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.am)
  %sqrt.i.i21.i = tail call noundef double @llvm.sqrt.f64(double %i.an) ; 3 uses
  %i.ao = fcmp olt double %sqrt.i.i21.i, 1.000000e-50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !145 ; 3 uses
  br i1 %i.ao, label %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = fmul double %i.aq, 5.000000e-01
  %i.as = fneg double %sqrt.i.i21.i
  %i.at = fmul double %sqrt.i.i21.i, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %sqrt.i.i.i, double %sqrt.i.i.i, double %i.at)
  %i.av = fmul double %i.aq, 2.000000e+00
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = fadd double %i.ar, %i.aw                ; 3 uses
  %i.ay = fneg double %i.ax
  %i.az = fmul double %i.ax, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %sqrt.i.i.i, double %sqrt.i.i.i, double %i.az) ; 2 uses
  %i.bb = fcmp ogt double %i.ba, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.bb, double %i.ba, double 0.000000e+00
  %i.bc = tail call double @sqrt(double noundef %.sroa.speculated.i) #22
  br label %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit

_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.015 = phi double [ %i.ax, %bb.c ], [ 0.000000e+00, %bb.a ], [ %i.aq, %bb.b ]
  %.sink.i = phi double [ %i.bc, %bb.c ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ]
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit, %bb.g
  %.017 = phi ptr [ %i.bl, %bb.g ], [ %i.c, %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.017, i64 32
  %i.be = load double, ptr %i.bd, align 8, !tbaa !79
  %i.bf = fcmp olt double %i.be, 1.000000e+100
  br i1 %i.bf, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @_ZN3igl8geodesic8Interval18find_closest_pointEddRdS2_(ptr noundef nonnull align 8 dereferenceable(64) %.017, double noundef %.015, double noundef %.sink.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.bg = load double, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  %i.bh = load double, ptr %3, align 8, !tbaa !79
  %i.bi = fcmp olt double %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.bg, ptr %3, align 8, !tbaa !79
  %i.bj = load double, ptr %i.a, align 8, !tbaa !79
  store double %i.bj, ptr %2, align 8, !tbaa !79
  store ptr %.017, ptr %4, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.017, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !77 ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !270

._crit_edge:                                      ; preds = %bb.g, %_ZN3igl8geodesic4Edge17local_coordinatesEPNS0_7Point3DERdS4_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8geodesic8Interval18find_closest_pointEddRdS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !152
  %i.c = fcmp oeq double %i.b, 1.000000e+100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+100, ptr %3, align 8, !tbaa !79
  br label %_ZN3igl8geodesic8Interval6signalEd.exit63

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !148 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %.in.i = select i1 %.not.i, ptr %i.l, ptr %i.i
  %i.m = load double, ptr %.in.i, align 8, !tbaa !79 ; 8 uses
  %i.n = load double, ptr %i.l, align 8, !tbaa !79
  %i.o = fmul double %i.n, f0x3EB0C6F7A0B5ED8D
  %i.p = fsub double %2, %i.e                     ; 4 uses
  %i.q = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp olt double %i.q, %i.o
  br i1 %i.r, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.s = load double, ptr %0, align 8, !tbaa !154 ; 2 uses
  %i.t = fcmp ugt double %1, %i.s
  br i1 %i.t, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %i.s, ptr %3, align 8, !tbaa !79
  %i.u = load double, ptr %0, align 8, !tbaa !154 ; 2 uses
  %i.v = load double, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %i.w = fcmp oeq double %i.v, 1.000000e+100
  br i1 %i.w, label %_ZN3igl8geodesic8Interval6signalEd.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load double, ptr %i.f, align 8, !tbaa !148
  %i.y = fsub double %i.u, %i.x                   ; 3 uses
  %i.z = load double, ptr %i.d, align 8, !tbaa !147 ; 3 uses
  %i.aa = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.y)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = fmul double %i.z, %i.z
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.ac)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ad)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.i = phi double [ %i.ab, %bb.g ], [ %sqrt.i, %bb.h ]
  %.0.i = fadd double %i.v, %.pn.i
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

_ZN3igl8geodesic8Interval6signalEd.exit:          ; preds = %bb.e, %bb.i
  %.1.i = phi double [ %.0.i, %bb.i ], [ 1.000000e+100, %bb.e ]
  %i.ae = fsub double %1, %i.u
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ae)
  %i.ag = fadd double %i.af, %.1.i
  br label %_ZN3igl8geodesic8Interval6signalEd.exit63

bb.j:                                             ; preds = %bb.d
  %i.ah = fcmp ult double %1, %i.m
  br i1 %i.ah, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double %i.m, ptr %3, align 8, !tbaa !79
  %i.ai = load double, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %i.aj = fcmp oeq double %i.ai, 1.000000e+100
  br i1 %i.aj, label %_ZN3igl8geodesic8Interval6signalEd.exit58, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load double, ptr %i.f, align 8, !tbaa !148
  %i.al = fsub double %i.m, %i.ak                 ; 3 uses
  %i.am = load double, ptr %i.d, align 8, !tbaa !147 ; 3 uses
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call noundef double @llvm.fabs.f64(double %i.al)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ap = fmul double %i.am, %i.am
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.ap)
  %sqrt.i54 = tail call double @llvm.sqrt.f64(double %i.aq)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i55 = phi double [ %i.ao, %bb.m ], [ %sqrt.i54, %bb.n ]
  %.0.i56 = fadd double %i.ai, %.pn.i55
  br label %_ZN3igl8geodesic8Interval6signalEd.exit58

_ZN3igl8geodesic8Interval6signalEd.exit58:        ; preds = %bb.k, %bb.o
  %.1.i57 = phi double [ %.0.i56, %bb.o ], [ 1.000000e+100, %bb.k ]
  %i.ar = fsub double %i.m, %1
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fadd double %i.as, %.1.i57
  br label %_ZN3igl8geodesic8Interval6signalEd.exit63

bb.p:                                             ; preds = %bb.j
  store double %1, ptr %3, align 8, !tbaa !79
  %i.au = load double, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %i.av = fcmp oeq double %i.au, 1.000000e+100
  br i1 %i.av, label %_ZN3igl8geodesic8Interval6signalEd.exit63, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load double, ptr %i.f, align 8, !tbaa !148
  %i.ax = fsub double %1, %i.aw                   ; 3 uses
  %i.ay = load double, ptr %i.d, align 8, !tbaa !147 ; 3 uses
  %i.az = fcmp oeq double %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.ax)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bb = fmul double %i.ay, %i.ay
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.bb)
  %sqrt.i59 = tail call double @llvm.sqrt.f64(double %i.bc)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.i60 = phi double [ %i.ba, %bb.r ], [ %sqrt.i59, %bb.s ]
  %.0.i61 = fadd double %i.au, %.pn.i60
  br label %_ZN3igl8geodesic8Interval6signalEd.exit63

bb.u:                                             ; preds = %bb.c
  %i.bd = fneg double %i.e
  %i.be = fmul double %2, %i.g
  %i.bf = tail call double @llvm.fmuladd.f64(double %1, double %i.bd, double %i.be)
  %i.bg = fdiv double %i.bf, %i.p                 ; 3 uses
  %i.bh = load double, ptr %0, align 8, !tbaa !154 ; 2 uses
  %i.bi = fcmp olt double %i.bg, %i.bh
  br i1 %i.bi, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  store double %i.bh, ptr %3, align 8, !tbaa !79
  %i.bj = load double, ptr %0, align 8, !tbaa !154 ; 2 uses
  %i.bk = load double, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %i.bl = fcmp oeq double %i.bk, 1.000000e+100
  br i1 %i.bl, label %_ZN3igl8geodesic8Interval6signalEd.exit68, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = load double, ptr %i.f, align 8, !tbaa !148
  %i.bn = fsub double %i.bj, %i.bm                ; 3 uses
  %i.bo = load double, ptr %i.d, align 8, !tbaa !147 ; 3 uses
  %i.bp = fcmp oeq double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bq = tail call noundef double @llvm.fabs.f64(double %i.bn)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.br = fmul double %i.bo, %i.bo
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.br)
  %sqrt.i64 = tail call double @llvm.sqrt.f64(double %i.bs)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.i65 = phi double [ %i.bq, %bb.x ], [ %sqrt.i64, %bb.y ]
  %.0.i66 = fadd double %i.bk, %.pn.i65
  br label %_ZN3igl8geodesic8Interval6signalEd.exit68

_ZN3igl8geodesic8Interval6signalEd.exit68:        ; preds = %bb.v, %bb.z
  %.1.i67 = phi double [ %.0.i66, %bb.z ], [ 1.000000e+100, %bb.v ]
  %i.bt = fsub double %i.bj, %1                   ; 2 uses
  %i.bu = fmul double %2, %2
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bu)
  %sqrt.i69 = tail call noundef double @llvm.sqrt.f64(double %i.bv)
  %i.bw = fadd double %sqrt.i69, %.1.i67
  br label %_ZN3igl8geodesic8Interval6signalEd.exit63

bb.aa:                                            ; preds = %bb.u
  %i.bx = fcmp ogt double %i.bg, %i.m
  br i1 %i.bx, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  store double %i.m, ptr %3, align 8, !tbaa !79
  %i.by = load double, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %i.bz = fcmp oeq double %i.by, 1.000000e+100
  br i1 %i.bz, label %_ZN3igl8geodesic8Interval6signalEd.exit74, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load double, ptr %i.f, align 8, !tbaa !148
  %i.cb = fsub double %i.m, %i.ca                 ; 3 uses
  %i.cc = load double, ptr %i.d, align 8, !tbaa !147 ; 3 uses
  %i.cd = fcmp oeq double %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ce = tail call noundef double @llvm.fabs.f64(double %i.cb)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cf = fmul double %i.cc, %i.cc
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %i.cf)
  %sqrt.i70 = tail call double @llvm.sqrt.f64(double %i.cg)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn.i71 = phi double [ %i.ce, %bb.ad ], [ %sqrt.i70, %bb.ae ]
  %.0.i72 = fadd double %i.by, %.pn.i71
  br label %_ZN3igl8geodesic8Interval6signalEd.exit74

_ZN3igl8geodesic8Interval6signalEd.exit74:        ; preds = %bb.ab, %bb.af
  %.1.i73 = phi double [ %.0.i72, %bb.af ], [ 1.000000e+100, %bb.ab ]
  %i.ch = fsub double %i.m, %1                    ; 2 uses
  %i.ci = fmul double %2, %2
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.ci)
  %sqrt.i75 = tail call noundef double @llvm.sqrt.f64(double %i.cj)
  %i.ck = fadd double %sqrt.i75, %.1.i73
  br label %_ZN3igl8geodesic8Interval6signalEd.exit63

bb.ag:                                            ; preds = %bb.aa
  store double %i.bg, ptr %3, align 8, !tbaa !79
  %i.cl = load double, ptr %i.a, align 8, !tbaa !152
  %i.cm = fsub double %i.g, %1                    ; 2 uses
  %i.cn = fmul double %i.p, %i.p
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cn)
  %sqrt.i76 = tail call noundef double @llvm.sqrt.f64(double %i.co)
  %i.cp = fadd double %sqrt.i76, %i.cl
  br label %_ZN3igl8geodesic8Interval6signalEd.exit63

_ZN3igl8geodesic8Interval6signalEd.exit63:        ; preds = %bb.t, %bb.p, %_ZN3igl8geodesic8Interval6signalEd.exit58, %_ZN3igl8geodesic8Interval6signalEd.exit, %_ZN3igl8geodesic8Interval6signalEd.exit74, %bb.ag, %_ZN3igl8geodesic8Interval6signalEd.exit68, %bb.b
  %.sink = phi double [ %i.at, %_ZN3igl8geodesic8Interval6signalEd.exit58 ], [ 1.000000e+100, %bb.b ], [ %i.ag, %_ZN3igl8geodesic8Interval6signalEd.exit ], [ %i.ck, %_ZN3igl8geodesic8Interval6signalEd.exit74 ], [ %i.cp, %bb.ag ], [ %i.bw, %_ZN3igl8geodesic8Interval6signalEd.exit68 ], [ %.0.i61, %bb.t ], [ 1.000000e+100, %bb.p ]
  store double %.sink, ptr %4, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZSt13__equal_rangeIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIS4_EENSB_14_Val_comp_iterIS4_EEESt4pairIT_SH_ESH_SH_RKT0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef align 8 %3, ptr noundef align 8 %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, label %.critedge

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph: ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !285
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !219  ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.h, null           ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 52 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, %bb.v
  %.02177 = phi i64 [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.2, %bb.v ] ; 3 uses
  %.sroa.059.076 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.sroa.059.1, %bb.v ] ; 5 uses
  %i.k = lshr i64 %.02177, 1                      ; 6 uses
  %.idx109 = shl nuw nsw i64 %i.k, 3              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.059.076, i64 %.idx109 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !285
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !219  ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.o, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !142
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit.i.i

_ZN3igl8geodesic12SurfacePoint4typeEv.exit.i.i:   ; preds = %bb.b, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.r = phi i32 [ %i.q, %bb.b ], [ 3, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  br i1 %.not.i7.i.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit.i.i
  %i.s = load i32, ptr %i.i, align 4, !tbaa !142
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i

_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i:  ; preds = %bb.c, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit.i.i
  %i.t = phi i32 [ %i.s, %bb.c ], [ 3, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit.i.i ]
  %.not.i.i = icmp eq i32 %i.r, %i.t
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3igl8geodesic21SurfacePointWithIndexEEclINS_17__normal_iteratorIPPS4_St6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i
  br i1 %.not.i.i.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.thread, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i

_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !142  ; 2 uses
  br i1 %.not.i7.i.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.thread.thread

_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.thread: ; preds = %bb.d
  br i1 %.not.i7.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.thread

_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i
  %i.w = icmp slt i32 %i.v, 3
  br i1 %i.w, label %bb.e, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread97

_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.thread: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.thread
  %i.x = load i32, ptr %i.i, align 4, !tbaa !142  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %bb.e, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread

_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.thread.thread: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i
  %i.z = load i32, ptr %i.i, align 4, !tbaa !142  ; 2 uses
  %i.aa = icmp slt i32 %i.v, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread94

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3igl8geodesic21SurfacePointWithIndexEEclINS_17__normal_iteratorIPPS4_St6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !27
  %i.ae = icmp ult i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28

bb.e:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.thread.thread, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.thread, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3igl8geodesic21SurfacePointWithIndexEEclINS_17__normal_iteratorIPPS4_St6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = xor i64 %i.k, -1
  %i.ah = add nsw i64 %.02177, %i.ag
  br label %bb.v

_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3igl8geodesic21SurfacePointWithIndexEEclINS_17__normal_iteratorIPPS4_St6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit
  %.pre = load i32, ptr %i.i, align 4, !tbaa !142
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !142
  %.not.i.i29 = icmp eq i32 %.pre, %i.aj
  br i1 %.not.i.i29, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit, label %bb.f

_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread97: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !142
  %.not.i.i2998 = icmp eq i32 %i.al, 3
  br i1 %.not.i.i2998, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread

_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread94: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.thread.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !142
  %.not.i.i2995 = icmp eq i32 %i.z, %i.an
  br i1 %.not.i.i2995, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread93

_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i.thread
  %.not.i.i2992 = icmp eq i32 %i.x, 3
  br i1 %.not.i.i2992, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30

bb.f:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28
  br i1 %.not.i7.i.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread93

_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread93: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread94, %bb.f
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !142
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread

_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !142
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i31

_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread97, %bb.f, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread93
  %i.aq = phi i32 [ %i.ao, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread93 ], [ 3, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread97 ], [ 3, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !142
  br label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i31

_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i31: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread
  %i.at = phi i32 [ %i.aq, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread ], [ %i.ap, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30 ]
  %i.au = phi i32 [ %i.as, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30.thread ], [ 3, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i30 ]
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.v, label %bb.g

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit: ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread97, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread94, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28.thread, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit10.i.i.thread, %_ZN3igl8geodesic12SurfacePoint4typeEv.exit8.i.i28
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !27
  %i.az = icmp ult i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.v, label %bb.g

bb.g:                                             ; preds = %_ZN3igl8geodesic12SurfacePoint4typeEv.exit12.i.i31, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3igl8geodesic21SurfacePointWithIndexEEclIKPS4_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIS4_EEET_SE_SE_RKT0_T1_.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.g, %bb.n
  %.016.i = phi i64 [ %.1.i, %bb.n ], [ %i.k, %bb.g ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %bb.n ], [ %.sroa.059.076, %bb.g ] ; 3 uses
  %i.ba = lshr i64 %.016.i, 1                     ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !285
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !219 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null         ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN3igl8geodesic12SurfacePoint4typeEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN3igl8geodesic21SurfacePointWithIndexESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 52
end_hunk_4
begin_hunk_5_@llvm.umin.i64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #11

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN3igl8geodesic21GeodesicAlgorithmBaseE", !11, i64 8, !12, i64 16, !18, i64 40, !19, i64 48, !18, i64 56, !18, i64 64}
!11 = !{!"_ZTSN3igl8geodesic21GeodesicAlgorithmBase13AlgorithmTypeE", !7, i64 0}
!12 = !{!"_ZTSSt6vectorISt4pairIPN3igl8geodesic6VertexEdESaIS5_EE", !13, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseISt4pairIPN3igl8geodesic6VertexEdESaIS5_EE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN3igl8geodesic6VertexEdESaIS5_EE12_Vector_implE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN3igl8geodesic6VertexEdESaIS5_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 _ZTSSt4pairIPN3igl8geodesic6VertexEdE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"double", !7, i64 0}
!19 = !{!"p1 _ZTSN3igl8geodesic4MeshE", !17, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!22 = !{!"p1 omnipotent char", !17, i64 0}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !25, i64 8, !7, i64 16}
!25 = !{!"long", !7, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{!29, !6, i64 380}
!29 = !{!"_ZTSN3igl8geodesic22GeodesicAlgorithmExactE", !10, i64 0, !30, i64 72, !42, i64 176, !54, i64 240, !7, i64 264, !7, i64 288, !7, i64 336, !6, i64 376, !6, i64 380, !59, i64 384}
!30 = !{!"_ZTSSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE", !31, i64 0}
!31 = !{!"_ZTSSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE", !32, i64 0}
!32 = !{!"_ZTSNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE13_Rb_tree_implIS2_Lb0EEE", !33, i64 0, !38, i64 64}
!33 = !{!"_ZTSSt20_Rb_tree_key_compareIN3igl8geodesic8IntervalEE", !34, i64 0}
!34 = !{!"_ZTSN3igl8geodesic8IntervalE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !35, i64 40, !36, i64 48, !6, i64 56, !37, i64 60}
!35 = !{!"p1 _ZTSN3igl8geodesic8IntervalE", !17, i64 0}
!36 = !{!"p1 _ZTSN3igl8geodesic4EdgeE", !17, i64 0}
!37 = !{!"_ZTSN3igl8geodesic8Interval13DirectionTypeE", !7, i64 0}
!38 = !{!"_ZTSSt15_Rb_tree_header", !39, i64 0, !25, i64 32}
!39 = !{!"_ZTSSt18_Rb_tree_node_base", !40, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!40 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!41 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !17, i64 0}
!42 = !{!"_ZTSN3igl8geodesic15MemoryAllocatorINS0_8IntervalEEE", !43, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !48, i64 40}
!43 = !{!"_ZTSSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSSt6vectorIN3igl8geodesic8IntervalESaIS2_EE", !17, i64 0}
!48 = !{!"_ZTSSt6vectorIPN3igl8geodesic8IntervalESaIS3_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIPN3igl8geodesic8IntervalESaIS3_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIPN3igl8geodesic8IntervalESaIS3_EE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIPN3igl8geodesic8IntervalESaIS3_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p2 _ZTSN3igl8geodesic8IntervalE", !53, i64 0}
!53 = !{!"any p2 pointer", !17, i64 0}
!54 = !{!"_ZTSSt6vectorIN3igl8geodesic12IntervalListESaIS2_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIN3igl8geodesic12IntervalListESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic12IntervalListESaIS2_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic12IntervalListESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 _ZTSN3igl8geodesic12IntervalListE", !17, i64 0}
!59 = !{!"_ZTSN3igl8geodesic13SortedSourcesE", !60, i64 0, !65, i64 24, !70, i64 48, !70, i64 88}
!60 = !{!"_ZTSSt6vectorIN3igl8geodesic21SurfacePointWithIndexESaIS2_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN3igl8geodesic21SurfacePointWithIndexESaIS2_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic21SurfacePointWithIndexESaIS2_EE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic21SurfacePointWithIndexESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTSN3igl8geodesic21SurfacePointWithIndexE", !17, i64 0}
!65 = !{!"_ZTSSt6vectorIPN3igl8geodesic21SurfacePointWithIndexESaIS3_EE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIPN3igl8geodesic21SurfacePointWithIndexESaIS3_EE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIPN3igl8geodesic21SurfacePointWithIndexESaIS3_EE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIPN3igl8geodesic21SurfacePointWithIndexESaIS3_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!69 = !{!"p2 _ZTSN3igl8geodesic21SurfacePointWithIndexE", !53, i64 0}
!70 = !{!"_ZTSN3igl8geodesic21SurfacePointWithIndexE", !71, i64 0, !6, i64 32}
!71 = !{!"_ZTSN3igl8geodesic12SurfacePointE", !72, i64 0, !73, i64 24}
!72 = !{!"_ZTSN3igl8geodesic7Point3DE", !7, i64 0}
!73 = !{!"p1 _ZTSN3igl8geodesic15MeshElementBaseE", !17, i64 0}
!74 = !{!29, !6, i64 376}
!75 = !{!38, !25, i64 32}
!76 = !{!38, !41, i64 16}
!77 = !{!35, !35, i64 0}
!78 = !{!36, !36, i64 0}
!79 = !{!18, !18, i64 0}
!80 = !{!81, !6, i64 0}
!81 = !{!"_ZTSN3igl8geodesic12SimpleVectorIPNS0_4FaceEEE", !6, i64 0, !82, i64 8}
!82 = !{!"p2 _ZTSN3igl8geodesic4FaceE", !53, i64 0}
!83 = !{!84, !85, i64 8}
!84 = !{!"_ZTSN3igl8geodesic12SimpleVectorIPNS0_6VertexEEE", !6, i64 0, !85, i64 8}
!85 = !{!"p2 _ZTSN3igl8geodesic6VertexE", !53, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"p1 _ZTSN3igl8geodesic6VertexE", !17, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"bool", !7, i64 0}
!90 = !{i8 0, i8 2}
!91 = !{}
!92 = !{!37, !37, i64 0}
!93 = !{!81, !82, i64 8}
!94 = !{!95, !95, i64 0}
!95 = !{!"p1 _ZTSN3igl8geodesic4FaceE", !17, i64 0}
!96 = !{!97, !98, i64 8}
!97 = !{!"_ZTSN3igl8geodesic12SimpleVectorIPNS0_4EdgeEEE", !6, i64 0, !98, i64 8}
!98 = !{!"p2 _ZTSN3igl8geodesic4EdgeE", !53, i64 0}
!99 = !{!34, !35, i64 40}
!100 = distinct !{!100, !101, !102}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"llvm.loop.peeled.count", i32 1}
!103 = !{!57, !58, i64 0}
!104 = distinct !{!104, !101}
!105 = !{!10, !18, i64 64}
!106 = !{!10, !18, i64 56}
!107 = !{!10, !18, i64 40}
!108 = !{!15, !16, i64 0}
!109 = !{!15, !16, i64 8}
!110 = !{!111, !112, i64 8}
!111 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!112 = !{!"p1 _ZTSN3igl8geodesic12SurfacePointE", !17, i64 0}
!113 = !{!111, !112, i64 0}
!114 = !{!115, !85, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIPN3igl8geodesic6VertexESaIS3_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!116 = !{!115, !85, i64 8}
!117 = !{!10, !19, i64 48}
!118 = !{!115, !85, i64 0}
!119 = !{!120, !87, i64 0}
!120 = !{!"_ZTSSt4pairIPN3igl8geodesic6VertexEdE", !87, i64 0, !18, i64 8}
!121 = !{!120, !18, i64 8}
!122 = distinct !{!122, !101}
!123 = distinct !{!123, !101}
!124 = !{!42, !6, i64 24}
!125 = !{!42, !6, i64 28}
!126 = !{!38, !41, i64 8}
!127 = !{!38, !41, i64 24}
!128 = !{!57, !58, i64 8}
!129 = !{!130, !35, i64 0}
!130 = !{!"_ZTSN3igl8geodesic12IntervalListE", !35, i64 0, !36, i64 8}
!131 = distinct !{!131, !101}
!132 = !{!63, !64, i64 8}
!133 = !{!63, !64, i64 0}
!134 = !{!135, !98, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIPN3igl8geodesic4EdgeESaIS3_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!136 = !{!135, !98, i64 8}
!137 = !{!73, !73, i64 0}
!138 = !{!135, !98, i64 0}
!139 = distinct !{!139, !101}
!140 = !{!34, !36, i64 48}
!141 = !{!34, !6, i64 56}
!142 = !{!143, !144, i64 52}
!143 = !{!"_ZTSN3igl8geodesic15MeshElementBaseE", !84, i64 0, !97, i64 16, !81, i64 32, !6, i64 48, !144, i64 52}
!144 = !{!"_ZTSN3igl8geodesic9PointTypeE", !7, i64 0}
!145 = !{!146, !18, i64 56}
!146 = !{!"_ZTSN3igl8geodesic4EdgeE", !143, i64 0, !18, i64 56}
!147 = !{!34, !18, i64 24}
!148 = !{!34, !18, i64 16}
!149 = !{!34, !18, i64 32}
!150 = distinct !{!150, !101}
!151 = distinct !{!151, !101}
!152 = !{!34, !18, i64 8}
!153 = distinct !{!153, !101}
!154 = !{!34, !18, i64 0}
!155 = !{!34, !37, i64 60}
!156 = distinct !{!156, !101}
!157 = !{!158, !158, i64 0}
!158 = !{!"_ZTSN3igl8geodesic22GeodesicAlgorithmExact7MapTypeE", !7, i64 0}
!159 = !{!41, !41, i64 0}
!160 = distinct !{!160, !101}
!161 = distinct !{!161, !101}
!162 = distinct !{!162, !101}
!163 = !{!51, !52, i64 8}
!164 = !{!51, !52, i64 0}
!165 = !{!51, !52, i64 16}
!166 = !{i64 0, i64 8, !78, i64 8, i64 4, !27, i64 12, i64 4, !92}
!167 = !{!52, !52, i64 0}
!168 = !{!42, !6, i64 32}
!169 = !{!47, !47, i64 0}
!170 = !{!46, !47, i64 16}
!171 = !{!46, !47, i64 8}
!172 = !{!46, !47, i64 0}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZSt19__relocate_object_aISt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!175 = distinct !{!175, !"_ZSt19__relocate_object_aISt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"_ZSt19__relocate_object_aISt6vectorIN3igl8geodesic8IntervalESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!178 = !{!179, !35, i64 16}
!179 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic8IntervalESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!180 = distinct !{!180, !101}
!181 = !{!179, !35, i64 8}
!182 = !{!179, !35, i64 0}
!183 = !{i64 0, i64 8, !79, i64 8, i64 8, !79, i64 16, i64 8, !79, i64 24, i64 8, !79, i64 32, i64 8, !79, i64 40, i64 8, !77, i64 48, i64 8, !78, i64 56, i64 4, !27, i64 60, i64 4, !92}
!184 = !{!185, !187}
!185 = distinct !{!185, !186, !"_ZSt19__relocate_object_aIN3igl8geodesic8IntervalES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!186 = distinct !{!186, !"_ZSt19__relocate_object_aIN3igl8geodesic8IntervalES2_SaIS2_EEvPT_PT0_RT1_"}
!187 = distinct !{!187, !186, !"_ZSt19__relocate_object_aIN3igl8geodesic8IntervalES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!188 = distinct !{!188, !101}
!189 = distinct !{!189, !101}
!190 = distinct !{!190, !101}
!191 = distinct !{!191, !101}
!192 = distinct !{!192, !101}
!193 = !{!194, !25, i64 8}
!194 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !195, i64 0, !25, i64 8, !25, i64 16}
!195 = !{!"p1 double", !17, i64 0}
!196 = !{!197, !195, i64 0}
!197 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !195, i64 0, !195, i64 8, !195, i64 16}
!198 = !{!197, !195, i64 16}
!199 = !{!197, !195, i64 8}
!200 = !{!201, !25, i64 8}
!201 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !202, i64 0, !25, i64 8, !25, i64 16}
!202 = !{!"p1 int", !17, i64 0}
!203 = !{!201, !25, i64 16}
!204 = !{!205, !202, i64 0}
!205 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !202, i64 0, !202, i64 8, !202, i64 16}
!206 = !{!205, !202, i64 16}
!207 = !{!205, !202, i64 8}
!208 = !{!201, !202, i64 0}
!209 = !{!194, !25, i64 16}
!210 = !{!194, !195, i64 0}
!211 = distinct !{!211, !101}
!212 = distinct !{!212, !101}
!213 = !{!214, !25, i64 8}
!214 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !202, i64 0, !25, i64 8}
!215 = !{!111, !112, i64 16}
!216 = !{!217, !87, i64 0}
!217 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic6VertexESaIS2_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!218 = !{!214, !202, i64 0}
!219 = !{!71, !73, i64 24}
!220 = !{!221, !223}
!221 = distinct !{!221, !222, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!222 = distinct !{!222, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!223 = distinct !{!223, !222, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!224 = distinct !{!224, !101}
!225 = distinct !{!225, !101}
!226 = !{!227, !95, i64 0}
!227 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic4FaceESaIS2_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!228 = !{!229, !231}
!229 = distinct !{!229, !230, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!230 = distinct !{!230, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!231 = distinct !{!231, !230, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!232 = distinct !{!232, !101}
!233 = !{!234, !236}
!234 = distinct !{!234, !235, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!235 = distinct !{!235, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!236 = distinct !{!236, !235, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!237 = distinct !{!237, !101}
!238 = !{!239, !241}
!239 = distinct !{!239, !240, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!240 = distinct !{!240, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!241 = distinct !{!241, !240, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!242 = distinct !{!242, !101}
!243 = !{!244, !25, i64 8}
!244 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !195, i64 0, !25, i64 8}
!245 = !{!244, !195, i64 0}
!246 = !{!247, !247, i64 0}
!247 = !{!"vtable pointer", !8, i64 0}
!248 = !{!112, !112, i64 0}
!249 = distinct !{!249, !101}
!250 = distinct !{!250, !101}
!251 = !{!227, !95, i64 16}
!252 = !{!253, !36, i64 0}
!253 = !{!"_ZTSNSt12_Vector_baseIN3igl8geodesic4EdgeESaIS2_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!254 = !{!253, !36, i64 16}
!255 = !{!217, !87, i64 16}
!256 = !{!38, !40, i64 0}
!257 = !{!253, !36, i64 8}
!258 = !{!57, !58, i64 16}
!259 = distinct !{!259, !260}
!260 = !{!"llvm.loop.unroll.disable"}
!261 = distinct !{!261, !101}
!262 = !{!130, !36, i64 8}
!263 = distinct !{!263, !101}
!264 = !{!15, !16, i64 16}
!265 = !{ptr @_ZN3igl8geodesic21GeodesicAlgorithmBaseD2Ev}
!266 = !{!267, !269}
!267 = distinct !{!267, !268, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!268 = distinct !{!268, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!269 = distinct !{!269, !268, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!270 = distinct !{!270, !101}
!271 = distinct !{!271, !101}
!272 = !{!273, !275}
!273 = distinct !{!273, !274, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!274 = distinct !{!274, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!275 = distinct !{!275, !274, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!276 = !{!277, !279}
!277 = distinct !{!277, !278, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!278 = distinct !{!278, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!279 = distinct !{!279, !278, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!280 = distinct !{!280, !101}
!281 = !{!282, !284}
!282 = distinct !{!282, !283, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!283 = distinct !{!283, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!284 = distinct !{!284, !283, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!285 = !{!64, !64, i64 0}
!286 = !{!287, !289}
!287 = distinct !{!287, !288, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!288 = distinct !{!288, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_"}
!289 = distinct !{!289, !288, !"_ZSt19__relocate_object_aIN3igl8geodesic12SurfacePointES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!290 = !{!68, !69, i64 0}
!291 = !{!68, !69, i64 16}
!292 = !{!63, !64, i64 16}
!293 = distinct !{!293, !101}
!294 = !{!295, !296, i64 0}
!295 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPvSaIS1_EESaIS3_EE17_Vector_impl_dataE", !296, i64 0, !296, i64 8, !296, i64 16}
!296 = !{!"p1 _ZTSSt6vectorIPvSaIS0_EE", !17, i64 0}
!297 = !{!295, !296, i64 8}
!298 = !{!299, !53, i64 0}
!299 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!300 = !{!299, !53, i64 16}
!301 = distinct !{!301, !101}
!302 = !{!295, !296, i64 16}
!303 = !{!304, !315, i64 240}
!304 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !305, i64 0, !313, i64 216, !7, i64 224, !89, i64 225, !314, i64 232, !315, i64 240, !316, i64 248, !317, i64 256}
!305 = !{!"_ZTSSt8ios_base", !25, i64 8, !25, i64 16, !306, i64 24, !307, i64 28, !307, i64 32, !308, i64 40, !309, i64 48, !7, i64 64, !6, i64 192, !310, i64 200, !311, i64 208}
!306 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!307 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!308 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!309 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !25, i64 8}
!310 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!311 = !{!"_ZTSSt6locale", !312, i64 0}
!312 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!313 = !{!"p1 _ZTSSo", !17, i64 0}
!314 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!315 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!316 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!317 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!318 = !{!319, !7, i64 56}
!319 = !{!"_ZTSSt5ctypeIcE", !320, i64 0, !321, i64 16, !89, i64 24, !202, i64 32, !202, i64 40, !322, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!320 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!321 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!322 = !{!"p1 short", !17, i64 0}
!323 = distinct !{null, null, null, null}
!324 = distinct !{!324, !101}
!325 = distinct !{!325, !101}
!326 = distinct !{!326, !101}
!327 = !{!328, !330}
!328 = distinct !{!328, !329, !"_ZSt19__relocate_object_aISt4pairIPN3igl8geodesic6VertexEdES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!329 = distinct !{!329, !"_ZSt19__relocate_object_aISt4pairIPN3igl8geodesic6VertexEdES5_SaIS5_EEvPT_PT0_RT1_"}
!330 = distinct !{!330, !329, !"_ZSt19__relocate_object_aISt4pairIPN3igl8geodesic6VertexEdES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!331 = distinct !{!331, !101}
!332 = !{!68, !69, i64 8}
!333 = !{!69, !69, i64 0}
!334 = !{!70, !6, i64 32}
!335 = distinct !{!335, !101}
!336 = !{!337, !339}
!337 = distinct !{!337, !338, !"_ZSt19__relocate_object_aIN3igl8geodesic21SurfacePointWithIndexES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!338 = distinct !{!338, !"_ZSt19__relocate_object_aIN3igl8geodesic21SurfacePointWithIndexES2_SaIS2_EEvPT_PT0_RT1_"}
!339 = distinct !{!339, !338, !"_ZSt19__relocate_object_aIN3igl8geodesic21SurfacePointWithIndexES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!340 = distinct !{!340, !101}
!341 = distinct !{!341, !101}
!342 = distinct !{!342, !101}
!343 = distinct !{!343, !101}
!344 = distinct !{!344, !101}
!345 = distinct !{!345, !101}
!346 = distinct !{!346, !101}
!347 = distinct !{!347, !101}
!348 = distinct !{!348, !101}
end_hunk_5
