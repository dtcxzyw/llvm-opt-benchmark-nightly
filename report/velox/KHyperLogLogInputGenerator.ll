Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/KHyperLogLogInputGenerator?download=true
inline.NumInlined: 997
inline.NumDeleted: 592
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook5velox6fuzzer26KHyperLogLogInputGenerator13generateTypedIlEENS0_7VariantEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.s
  store ptr %i.cs, ptr %5, align 8, !tbaa !111
  %i.cx = load i64, ptr %i.cb, align 8, !tbaa !43
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !43
  %.pre = load i64, ptr %i.co, align 8, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cy = phi i64 [ %i.cu, %bb.t ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !113
  store ptr %i.cb, ptr %4, align 8, !tbaa !111
  store i64 0, ptr %i.co, align 8, !tbaa !113
  store i8 0, ptr %i.cb, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.da = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc29 unwind label %bb.y   ; 5 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !109, !noalias !195
  %i.dc = load ptr, ptr %5, align 8, !tbaa !111, !noalias !195 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cr
  br i1 %i.dd, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.u:                                             ; preds = %.noexc29
  %i.de = load i64, ptr %i.cz, align 8, !tbaa !113, !noalias !195 ; 3 uses
  %i.df = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.df)
  %i.dg = add nuw nsw i64 %i.de, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(1) %i.cr, i64 %i.dg, i1 false), !noalias !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc29
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !111, !noalias !195
  %i.dh = load i64, ptr %i.cr, align 8, !tbaa !43, !noalias !195
  store i64 %i.dh, ptr %i.db, align 8, !tbaa !43, !noalias !195
  %.pre.i = load i64, ptr %i.cz, align 8, !tbaa !113, !noalias !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.u
  %i.di = phi i64 [ %i.de, %bb.u ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !113, !noalias !195
  store ptr %i.cr, ptr %5, align 8, !tbaa !111, !noalias !195
  store i64 0, ptr %i.cz, align 8, !tbaa !113, !noalias !195
  store i8 0, ptr %i.cr, align 8, !tbaa !43, !noalias !195
  store ptr %i.da, ptr %0, align 8, !tbaa !116, !alias.scope !195
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.dk, align 8, !tbaa !117, !alias.scope !195
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.dl, align 1, !tbaa !118, !alias.scope !195
  %i.dm = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cb
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.do = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.dq = load ptr, ptr %i.aj, align 8, !tbaa !102
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS3_19HashStringAllocatorEEEESt10_Select1stIS9_ESt4lessIlENS3_12StlAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef %i.dq)
          to label %_ZN8facebook5velox6common3hll12KHyperLogLogIlNS0_19HashStringAllocatorEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #30
  unreachable

_ZN8facebook5velox6common3hll12KHyperLogLogIlNS0_19HashStringAllocatorEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN8facebook5velox19HashStringAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(37384) dereferenceable(37384) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.w:                                             ; preds = %.thread7.i.i, %.noexc5.i, %.noexc.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.x:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.cr
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.y
  %i.dy = load i64, ptr %i.cr, align 8, !tbaa !43
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.x
  %.pn = phi { ptr, i32 } [ %i.du, %bb.x ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.dv, %bb.y ] ; 2 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cb
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.ec = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.q
  %.pn18.pn = phi { ptr, i32 } [ %i.cm, %bb.q ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  call void @_ZN8facebook5velox6common3hll12KHyperLogLogIlNS0_19HashStringAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #26
  br label %.body

.body:                                            ; preds = %bb.e, %bb.z
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.z ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN8facebook5velox19HashStringAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(37384) dereferenceable(37384) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn18.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6common3hll12KHyperLogLogIlNS0_19HashStringAllocatorEE9serializeEPc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  store i8 1, ptr %1, align 1, !tbaa !43
  %i.a = load i32, ptr %0, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i32 %i.a, ptr %i.b, align 4, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i32 %i.d, ptr %i.e, align 4, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !106
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i32 %i.h, ptr %i.i, align 4, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.n = phi ptr [ %i.k, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.027.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %._crit_edge.loopexit ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i32 %.027.lcssa, ptr %i.o, align 4, !tbaa !44
  %i.p = icmp eq ptr %i.n, %i.l
  br i1 %i.p, label %._crit_edge89, label %.lr.ph88

.lr.ph:                                           ; preds = %bb.a, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit
  %.02783 = phi i32 [ %i.y, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit ], [ 0, %bb.a ]
  %.sroa.057.082 = phi ptr [ %i.z, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit ], [ %i.k, %bb.a ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.057.082, i64 40
  %i.r = load i8, ptr %i.q, align 8, !tbaa !139, !range !140, !noundef !141
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.057.082, i64 48
  %i.u = tail call noundef i32 @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %i.t)
  br label %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.057.082, i64 96
  %i.w = tail call noundef i32 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.v)
  br label %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit

_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit: ; preds = %bb.b, %bb.c
  %i.x = phi i32 [ %i.u, %bb.b ], [ %i.w, %bb.c ]
  %i.y = add nsw i32 %i.x, %.02783                ; 2 uses
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.057.082) #31 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge89.loopexit:                           ; preds = %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit29
  %.pre105 = load ptr, ptr %i.j, align 8, !tbaa !103
  br label %._crit_edge89

._crit_edge89:                                    ; preds = %._crit_edge89.loopexit, %._crit_edge
  %i.ab = phi ptr [ %i.n, %._crit_edge ], [ %.pre105, %._crit_edge89.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %._crit_edge ], [ %.sroa.speculated, %._crit_edge89.loopexit ] ; 3 uses
  %.sroa.12.0.lcssa = phi i32 [ 17, %._crit_edge ], [ %i.an, %._crit_edge89.loopexit ] ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.l
  br i1 %i.ac, label %._crit_edge96, label %.lr.ph95

.lr.ph88:                                         ; preds = %._crit_edge, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit29
  %.sroa.12.086 = phi i32 [ %i.an, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit29 ], [ 17, %._crit_edge ] ; 2 uses
  %.sroa.050.085 = phi ptr [ %i.ao, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit29 ], [ %i.n, %._crit_edge ] ; 4 uses
  %.084 = phi i32 [ %.sroa.speculated, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit29 ], [ 0, %._crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.050.085, i64 40
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !139, !range !140, !noundef !141
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph88
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.050.085, i64 48
  %i.ah = tail call noundef i32 @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %i.ag)
  br label %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit29

bb.e:                                             ; preds = %.lr.ph88
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.050.085, i64 96
  %i.aj = tail call noundef i32 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ai)
  br label %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit29

_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit29: ; preds = %bb.d, %bb.e
  %i.ak = phi i32 [ %i.ah, %bb.d ], [ %i.aj, %bb.e ] ; 2 uses
  %i.al = sext i32 %.sroa.12.086 to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !44
  %i.an = add i32 %.sroa.12.086, 4                ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.084, i32 %i.ak) ; 2 uses
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.050.085) #31 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.l
  br i1 %i.ap, label %._crit_edge89.loopexit, label %.lr.ph88

._crit_edge96:                                    ; preds = %.lr.ph95, %._crit_edge89
  %.sroa.12.1.lcssa = phi i32 [ %.sroa.12.0.lcssa, %._crit_edge89 ], [ %i.ba, %.lr.ph95 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.aq = zext nneg i32 %.0.lcssa to i64          ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !109
  %i.as = icmp ugt i32 %.0.lcssa, 15
  br i1 %i.as, label %.thread7.i.i, label %bb.f

.thread7.i.i:                                     ; preds = %._crit_edge96
  %i.at = add nuw nsw i64 %i.aq, 1
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #27 ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !111
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !43
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge96
  switch i32 %.0.lcssa, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.ar, align 8, !tbaa !43
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread7.i.i
  %i.av = phi ptr [ %i.au, %.thread7.i.i ], [ %i.ar, %bb.f ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 0, i64 %i.aq, i1 false)
  br label %bb.i

.lr.ph95:                                         ; preds = %._crit_edge89, %.lr.ph95
  %.sroa.12.193 = phi i32 [ %i.ba, %.lr.ph95 ], [ %.sroa.12.0.lcssa, %._crit_edge89 ] ; 2 uses
  %.sroa.045.092 = phi ptr [ %i.bb, %.lr.ph95 ], [ %i.ab, %._crit_edge89 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.045.092, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !112
  %i.ay = sext i32 %.sroa.12.193 to i64
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !112
  %i.ba = add i32 %.sroa.12.193, 8                ; 2 uses
  %i.bb = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.045.092) #31 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.l
  br i1 %i.bc, label %._crit_edge96, label %.lr.ph95

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bd = phi ptr [ %i.ar, %bb.f ], [ %i.av, %bb.h ], [ %i.ar, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aq, ptr %i.be, align 8, !tbaa !113
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.aq
  store i8 0, ptr %i.bf, align 1, !tbaa !43
  %3 = load ptr, ptr %i.j, align 8, !tbaa !103    ; 2 uses
  %i.bg = icmp eq ptr %3, %i.l
  br i1 %i.bg, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit36, %bb.i
  %i.bh = load ptr, ptr %2, align 8, !tbaa !111   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ar
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge102
  %i.bj = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

.lr.ph101:                                        ; preds = %bb.i, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit36
  %.sroa.040.099 = phi ptr [ %i.cf, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit36 ], [ %3, %bb.i ] ; 7 uses
  %.sroa.12.298 = phi i32 [ %i.ce, %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit36 ], [ %.sroa.12.1.lcssa, %bb.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !111   ; 2 uses
  %i.bn = load i8, ptr %i.bl, align 8, !tbaa !139, !range !140, !noundef !141
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph101
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 41
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !142
  invoke void @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9serializeEaPc(ptr noundef nonnull align 8 dereferenceable(44) %i.bp, i8 noundef signext %i.br, ptr noundef %i.bm)
          to label %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE9serializeEPc.exit unwind label %bb.n

bb.k:                                             ; preds = %.lr.ph101
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 96
  invoke void @_ZN8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE9serializeEPc(ptr noundef nonnull align 8 dereferenceable(120) %i.bs, ptr noundef %i.bm)
          to label %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE9serializeEPc.exit unwind label %bb.n

_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE9serializeEPc.exit: ; preds = %bb.j, %bb.k
  %i.bt = load ptr, ptr %2, align 8, !tbaa !111
  %i.bu = load i8, ptr %i.bl, align 8, !tbaa !139, !range !140, !noundef !141
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE9serializeEPc.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 48
  %i.bx = invoke noundef i32 @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %i.bw)
          to label %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit36 unwind label %bb.n

bb.m:                                             ; preds = %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE9serializeEPc.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 96
  %i.bz = invoke noundef i32 @_ZNK8facebook5velox6common3hll8DenseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.by)
          to label %_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit36 unwind label %bb.n

_ZN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS0_19HashStringAllocatorEE14serializedSizeEv.exit36: ; preds = %bb.l, %bb.m
  %i.ca = phi i32 [ %i.bx, %bb.l ], [ %i.bz, %bb.m ] ; 2 uses
  %i.cb = sext i32 %.sroa.12.298 to i64
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %i.cb
  %i.cd = sext i32 %i.ca to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr align 1 %i.bt, i64 %i.cd, i1 false)
  %i.ce = add nsw i32 %i.ca, %.sroa.12.298
  %i.cf = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.040.099) #31 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.l
  br i1 %i.cg, label %._crit_edge102, label %.lr.ph101

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %2, align 8, !tbaa !111   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ar
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.n
  %i.ck = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ch
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6common3hll12KHyperLogLogIlNS0_19HashStringAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS3_19HashStringAllocatorEEEESt10_Select1stIS9_ESt4lessIlENS3_12StlAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIlN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS1_19HashStringAllocatorEEESt4lessIlENS1_12StlAllocatorISt4pairIKlS6_EEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZNSt3mapIlN8facebook5velox6common3hll14HllAccumulatorIlLb1ENS1_19HashStringAllocatorEEESt4lessIlENS1_12StlAllocatorISt4pairIKlS6_EEEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN8facebook5velox19HashStringAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(37384) dereferenceable(37384)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6fuzzer26KHyperLogLogInputGenerator13generateTypedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_7VariantEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::velox::Variant") align 8 captures(none) %0, ptr noundef nonnull align 32 dereferenceable(1416) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.facebook::velox::HashStringAllocator", align 8 ; 17 uses
  %3 = alloca %"class.facebook::velox::common::hll::KHyperLogLog", align 8 ; 16 uses
  %i.b = alloca [4 x i32], align 16               ; 5 uses
  %4 = alloca %"class.std::allocator.51", align 1 ; 4 uses
  %5 = alloca %"class.std::__cxx11::wstring_convert", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.d = load ptr, ptr %i.c, align 32, !tbaa !34  ; 2 uses
  call void @_ZN8facebook5velox11StreamArenaC2EPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(37384) %2, ptr noundef %i.d)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8facebook5velox19HashStringAllocatorE, i64 16), ptr %2, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx.i.i = phi i64 [ 0, %bb.a ], [ %.add.i.i.1, %bb.b ] ; 3 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 8
  %i.g = ptrtoint ptr %.ptr.i.i to i64            ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  store i32 %i.h, ptr %.ptr.i.i, align 8, !tbaa !44
  %i.i = lshr i64 %i.g, 32
  %i.j = trunc i64 %i.i to i16                    ; 2 uses
  store i16 %i.j, ptr %i.f, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 10
  store i32 %i.h, ptr %i.k, align 4, !tbaa !44
  store i16 %i.j, ptr %i.l, align 2, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i ; 4 uses
  %.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = ptrtoint ptr %.ptr.i.i.1 to i64          ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  store i32 %i.p, ptr %.ptr.i.i.1, align 4, !tbaa !44
  %i.q = lshr i64 %i.o, 32
  %i.r = trunc i64 %i.q to i16                    ; 2 uses
  store i16 %i.r, ptr %i.n, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  store i32 %i.p, ptr %i.s, align 8, !tbaa !44
  store i16 %i.r, ptr %i.t, align 2, !tbaa !58
  %.add.i.i.1 = add nuw nsw i64 %.idx.i.i, 24     ; 2 uses
  %i.u = icmp eq i64 %.add.i.i.1, 36696
  br i1 %i.u, label %_ZN8facebook5velox19HashStringAllocatorC2EPNS0_6memory10MemoryPoolE.exit, label %bb.b

_ZN8facebook5velox19HashStringAllocatorC2EPNS0_6memory10MemoryPoolE.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 36816
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 37248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.v, i8 0, i64 432, i1 false)
  store ptr %i.d, ptr %i.w, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 37256
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 37336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, i8 0, i64 80, i1 false)
  store i64 262144, ptr %i.y, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 37344
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.z, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 37352
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 37376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ab, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1392
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1396
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !52 ; 3 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 16, !tbaa !44
  store <2 x i32> %i.af, ptr %3, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.ag, align 8, !tbaa !99
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ai = ptrtoint ptr %2 to i64
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !101
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !103
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !104
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.ao = icmp slt i32 %i.ae, 1
  %i.ap = call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.ae)
  %i.aq = icmp samesign ugt i32 %i.ap, 1
  %i.ar = select i1 %i.ao, i1 true, i1 %i.aq, !prof !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  br i1 %i.ar, label %bb.c, label %bb.f, !prof !42
end_hunk_0
