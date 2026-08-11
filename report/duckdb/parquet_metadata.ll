inline.NumInlined: 3957
inline.NumDeleted: 1703
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6duckdb32ParquetRowGroupMetadataProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a
  %.238.i = phi ptr [ %.137262.i, %bb.hx ], [ %i.ud, %bb.hw ], [ %i.tu, %bb.hs ] ; 2 uses
  %.5.i = phi i1 [ %.4263.i, %bb.hx ], [ %.2.i, %bb.hw ], [ true, %bb.hs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27, !noalias !247
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %29) #27
  br i1 %.not102.i, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy, %.thread264.i
  %.7271.i = phi i1 [ true, %.thread264.i ], [ %.5.i, %bb.hy ]
  %.440270.i = phi ptr [ %i.tl, %.thread264.i ], [ %.238.i, %bb.hy ]
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn269.i = phi { ptr, i32 } [ %i.vz, %.thread264.i ], [ %.pn105.pn.pn.pn.pn.pn.pn.i, %bb.hy ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #27
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hr
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn269.i, %bb.hz ], [ %.pn105.pn.pn.pn.pn.pn.pn.i, %bb.hy ], [ %i.vy, %bb.hr ] ; 2 uses
  %.541.i = phi ptr [ %.440270.i, %bb.hz ], [ %.238.i, %bb.hy ], [ %i.tl, %bb.hr ] ; 2 uses
  %.8.i = phi i1 [ %.7271.i, %bb.hz ], [ %.5.i, %bb.hy ], [ true, %bb.hr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27, !noalias !247
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %27) #27
  br i1 %i.te, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.thread272.i
  %.10279.i = phi i1 [ true, %.thread272.i ], [ %.8.i, %bb.ia ]
  %.743278.i = phi ptr [ %i.tb, %.thread272.i ], [ %.541.i, %bb.ia ]
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn277.i = phi { ptr, i32 } [ %i.vx, %.thread272.i ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ia ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #27
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia, %bb.hq
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn277.i, %bb.ib ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ia ], [ %i.vw, %bb.hq ]
  %.844.i = phi ptr [ %.743278.i, %bb.ib ], [ %.541.i, %bb.ia ], [ %i.tb, %bb.hq ]
  %.11.i = phi i1 [ %.10279.i, %bb.ib ], [ %.8.i, %bb.ia ], [ true, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27, !noalias !247
  %i.wf = xor i1 %.11.i, true
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #27
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.hp
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ic ], [ %i.vv, %bb.hp ]
  %.1046.i = phi ptr [ %.844.i, %bb.ic ], [ %i.su, %bb.hp ]
  %.13.i = phi i1 [ %i.wf, %bb.ic ], [ false, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27, !noalias !247
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #27
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ho
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.id ], [ %i.vu, %bb.ho ]
  %.1248.i = phi ptr [ %.1046.i, %bb.id ], [ %i.sn, %bb.ho ]
  %.15.i = phi i1 [ %.13.i, %bb.id ], [ false, %bb.ho ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27, !noalias !247
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #27
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.hn
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ie ], [ %i.vt, %bb.hn ] ; 2 uses
  %.1450.i = phi ptr [ %.1248.i, %bb.ie ], [ %i.sg, %bb.hn ] ; 2 uses
  %.17.i = phi i1 [ %.15.i, %bb.ie ], [ false, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27, !noalias !247
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !247
  %i.wg = icmp eq ptr %22, %.1450.i
  %or.cond.i = select i1 %.17.i, i1 true, i1 %i.wg
  br i1 %or.cond.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.if, %.preheader.i
  %i.wh = phi ptr [ %i.wi, %.preheader.i ], [ %.1450.i, %bb.if ]
  %i.wi = getelementptr inbounds i8, ptr %i.wh, i64 -96 ; 3 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.wi) #27
  %i.wj = icmp eq ptr %i.wi, %22
  br i1 %i.wj, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.if, %.thread280.i
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn285.i = phi { ptr, i32 } [ %i.vs, %.thread280.i ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.if ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27, !noalias !247
  br label %.body346

bb.ig:                                            ; preds = %bb.hm, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.oa, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %93)
          to label %bb.ih unwind label %bb.lc

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %93) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #27
  %i.wk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 30)
          to label %bb.ii unwind label %bb.kk

bb.ii:                                            ; preds = %bb.ih
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.wm = load i8, ptr %i.ob, align 8, !noalias !264
  %i.wn = and i8 %i.wm, 2
  %.not.i = icmp eq i8 %i.wn, 0
  br i1 %.not.i, label %bb.ij, label %bb.ip

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !264
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 25)
          to label %.noexc362 unwind label %bb.ld

.noexc362:                                        ; preds = %bb.ij
  invoke void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ik unwind label %bb.im, !noalias !264

bb.ik:                                            ; preds = %.noexc362
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %94, ptr noundef nonnull %5)
          to label %bb.il unwind label %bb.in

bb.il:                                            ; preds = %bb.ik
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !264
  br label %bb.kf

bb.im:                                            ; preds = %.noexc362
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.in:                                            ; preds = %bb.ik
  %i.wp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.pn.i361 = phi { ptr, i32 } [ %i.wp, %bb.in ], [ %i.wo, %bb.im ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !264
  br label %.body363

bb.ip:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !264
  %i.wq = getelementptr inbounds nuw i8, ptr %i.q, i64 552
  %i.wr = getelementptr inbounds nuw i8, ptr %i.q, i64 560
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !267, !noalias !264 ; 3 uses
  %i.wt = load ptr, ptr %i.wq, align 8, !tbaa !268, !noalias !264 ; 3 uses
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = sub i64 %i.wu, %i.wv                    ; 2 uses
  %i.wx = ashr exact i64 %i.ww, 2                 ; 2 uses
  %i.wy = icmp ugt i64 %i.wx, 144115188075855871
  br i1 %i.wy, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #30
          to label %.noexc.i360 unwind label %bb.is, !noalias !264

.noexc.i360:                                      ; preds = %bb.iq
  unreachable

bb.ir:                                            ; preds = %bb.ip
  %i.wz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.not138.i = icmp eq ptr %i.ws, %i.wt
  br i1 %.not138.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit.i.thread, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit.i.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit.i.thread: ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !264
  store i32 0, ptr %8, align 4, !noalias !264
  br label %._crit_edge.i

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ir
  %i.xa = shl nuw nsw i64 %i.ww, 4
  %i.xb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xa) #29
          to label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit.i unwind label %bb.is, !noalias !264 ; 3 uses

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit.i.i
  %i.xc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.xb, ptr %7, align 8, !tbaa !241, !noalias !264
  store ptr %i.xb, ptr %i.xc, align 8, !tbaa !233, !noalias !264
  %i.xd = getelementptr inbounds nuw [64 x i8], ptr %i.xb, i64 %i.wx
  store ptr %i.xd, ptr %i.wz, align 8, !tbaa !236, !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !264
  store i32 0, ptr %8, align 4, !noalias !264
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.je, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !264
  invoke void @_ZNK6duckdb15GeometryTypeSet8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %13, ptr noundef nonnull align 1 dereferenceable(4) %8, i1 noundef zeroext true)
          to label %bb.jf unwind label %bb.jh, !noalias !264

bb.is:                                            ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit.i.i, %bb.iq
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit.i, %bb.je
  %.sroa.088.0105.i = phi ptr [ %i.yb, %bb.je ], [ %i.wt, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit.i ] ; 2 uses
  %i.xf = load i32, ptr %.sroa.088.0105.i, align 4, !tbaa !3, !noalias !264 ; 3 uses
  %i.xg = srem i32 %i.xf, 1000                    ; 2 uses
  %.lhs.trunc.i = trunc nsw i32 %i.xf to i16
  %95 = sdiv i16 %.lhs.trunc.i, 1000
  %i.xh = add nsw i32 %i.xg, -8
  %or.cond.i348 = icmp ult i32 %i.xh, -7
  br i1 %or.cond.i348, label %bb.it, label %bb.iy

bb.it:                                            ; preds = %.lr.ph.i
  %i.xi = call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !264 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !264
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.iu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, !noalias !264

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.xi, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.iv unwind label %bb.iw, !noalias !264

bb.iv:                                            ; preds = %bb.iu
  invoke void @__cxa_throw(ptr nonnull %i.xi, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ke unwind label %bb.iw, !noalias !264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.it
  %i.xj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !264
  br label %bb.ix

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %.036.i = phi i1 [ false, %bb.iv ], [ true, %bb.iu ] ; 2 uses
  %i.xk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xl = load ptr, ptr %9, align 8, !tbaa !24, !noalias !264 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.xn = icmp eq ptr %i.xl, %i.xm
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359: ; preds = %bb.iw
  call void @_ZdlPv(ptr noundef %i.xl) #28, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !264
  br i1 %.036.i, label %bb.ix, label %bb.kc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !264
  br i1 %.036.i, label %bb.ix, label %bb.kc

bb.ix:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn5094.i = phi { ptr, i32 } [ %i.xj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.xk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.xk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359 ]
  call void @__cxa_free_exception(ptr %i.xi) #27, !noalias !264
  br label %bb.kc

bb.iy:                                            ; preds = %.lr.ph.i
  %i.xo = add i32 %i.xf, -4000
  %or.cond3.i = icmp ult i32 %i.xo, -4999
  br i1 %or.cond3.i, label %bb.iz, label %bb.je

bb.iz:                                            ; preds = %bb.iy
  %i.xp = call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !264 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !264
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ja unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread.i, !noalias !264

bb.ja:                                            ; preds = %bb.iz
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.xp, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.jb unwind label %bb.jc, !noalias !264

bb.jb:                                            ; preds = %bb.ja
  invoke void @__cxa_throw(ptr nonnull %i.xp, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ke unwind label %bb.jc, !noalias !264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread.i: ; preds = %bb.iz
  %i.xq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !264
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %.034.i = phi i1 [ false, %bb.jb ], [ true, %bb.ja ] ; 2 uses
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xs = load ptr, ptr %11, align 8, !tbaa !24, !noalias !264 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.xu = icmp eq ptr %i.xs, %i.xt
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %bb.jc
  call void @_ZdlPv(ptr noundef %i.xs) #28, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !264
  br i1 %.034.i, label %bb.jd, label %bb.kc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !264
  br i1 %.034.i, label %bb.jd, label %bb.kc

bb.jd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread.i
  %.pn4897.i = phi { ptr, i32 } [ %i.xq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread.i ], [ %i.xr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ], [ %i.xr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i ]
  call void @__cxa_free_exception(ptr %i.xp) #27, !noalias !264
  br label %bb.kc

bb.je:                                            ; preds = %bb.iy
  %i.xv = shl nuw nsw i32 1, %i.xg
  %96 = and i16 %95, 255
  %i.xw = zext nneg i16 %96 to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %8, i64 %i.xw ; 2 uses
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !18, !noalias !264
  %i.xz = trunc nuw i32 %i.xv to i8
  %i.ya = or i8 %i.xy, %i.xz
  store i8 %i.ya, ptr %i.xx, align 1, !tbaa !18, !noalias !264
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.088.0105.i, i64 4 ; 2 uses
  %.not98.i = icmp eq ptr %i.yb, %i.ws
  br i1 %.not98.i, label %._crit_edge.i, label %.lr.ph.i

bb.jf:                                            ; preds = %._crit_edge.i
  %i.yc = load ptr, ptr %13, align 8, !tbaa !269, !noalias !264 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !269, !noalias !264 ; 2 uses
  %.not99106.i = icmp eq ptr %i.yc, %i.ye
  br i1 %.not99106.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %bb.jf
  %i.yf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.yh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.ji

._crit_edge110.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i
  %.pre.i350 = load ptr, ptr %13, align 8, !tbaa !215, !noalias !264 ; 3 uses
  %.pre111.i = load ptr, ptr %i.yd, align 8, !tbaa !7, !noalias !264 ; 2 uses
  %.not4.i.i.i.i351 = icmp eq ptr %.pre.i350, %.pre111.i
  br i1 %.not4.i.i.i.i351, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i352

.lr.ph.i.i.i.i352:                                ; preds = %._crit_edge110.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i353 = phi ptr [ %i.yl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %.pre.i350, %._crit_edge110.i ] ; 3 uses
  %i.yi = load ptr, ptr %.05.i.i.i.i353, align 8, !tbaa !24, !noalias !264 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i353, i64 16
  %i.yk = icmp eq ptr %i.yi, %i.yj
  br i1 %i.yk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i354: ; preds = %.lr.ph.i.i.i.i352
  call void @_ZdlPv(ptr noundef %i.yi) #28, !noalias !264
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i354
  %i.yl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i353, i64 32 ; 2 uses
  %.not.i.i.i.i355 = icmp eq ptr %i.yl, %.pre111.i
  br i1 %.not.i.i.i.i355, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i352, !llvm.loop !270

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i356 = load ptr, ptr %13, align 8, !tbaa !215, !noalias !264
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge110.i, %bb.jf
  %i.ym = phi ptr [ %.pr.i.i356, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre.i350, %._crit_edge110.i ], [ %i.yc, %bb.jf ] ; 2 uses
  %.not.i.i1.i.i357 = icmp eq ptr %i.ym, null
  br i1 %.not.i.i1.i.i357, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.jg

bb.jg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ym) #28, !noalias !264
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.jg, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !264
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 noundef zeroext 25)
          to label %bb.jt unwind label %bb.jx, !noalias !264

bb.jh:                                            ; preds = %._crit_edge.i
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

bb.ji:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %.lr.ph109.i
  %.sroa.084.0107.i = phi ptr [ %i.yc, %.lr.ph109.i ], [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !264
  store ptr %i.yf, ptr %15, align 8, !tbaa !12, !noalias !264
  %i.yo = load ptr, ptr %.sroa.084.0107.i, align 8, !tbaa !24, !noalias !264 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.084.0107.i, i64 8
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !15, !noalias !264 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !264
  store i64 %i.yq, ptr %i.a, align 8, !tbaa !23, !noalias !264
  %i.yr = icmp ugt i64 %i.yq, 15
  br i1 %i.yr, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ji
  %i.ys = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc60.i unwind label %bb.jp, !noalias !264 ; 2 uses

.noexc60.i:                                       ; preds = %.noexc.i.i
  store ptr %i.ys, ptr %15, align 8, !tbaa !24, !noalias !264
  %i.yt = load i64, ptr %i.a, align 8, !tbaa !23, !noalias !264
  store i64 %i.yt, ptr %i.yf, align 8, !tbaa !18, !noalias !264
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc60.i, %bb.ji
  %i.yu = phi ptr [ %i.ys, %.noexc60.i ], [ %i.yf, %bb.ji ] ; 2 uses
  switch i64 %i.yq, label %bb.jk [
    i64 1, label %bb.jj
    i64 0, label %bb.jl
  ]

bb.jj:                                            ; preds = %._crit_edge.i.i.i
  %i.yv = load i8, ptr %i.yo, align 1, !tbaa !18, !noalias !264
  store i8 %i.yv, ptr %i.yu, align 1, !tbaa !18, !noalias !264
  br label %bb.jl

bb.jk:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yu, ptr align 1 %i.yo, i64 %i.yq, i1 false), !noalias !264
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj, %._crit_edge.i.i.i
  %i.yw = load i64, ptr %i.a, align 8, !tbaa !23, !noalias !264 ; 2 uses
  store i64 %i.yw, ptr %i.yg, align 8, !tbaa !15, !noalias !264
  %i.yx = load ptr, ptr %15, align 8, !tbaa !24, !noalias !264
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.yw
  store i8 0, ptr %i.yy, align 1, !tbaa !18, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !264
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %15)
          to label %bb.jm unwind label %bb.jq, !noalias !264

bb.jm:                                            ; preds = %bb.jl
  %i.yz = load ptr, ptr %i.yh, align 8, !tbaa !233, !noalias !264 ; 3 uses
  %i.za = load ptr, ptr %i.wz, align 8, !tbaa !236, !noalias !264
  %.not.i.i.i349 = icmp eq ptr %i.yz, %i.za
  br i1 %.not.i.i.i349, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.yz, ptr noundef nonnull align 8 dereferenceable(64) %14) #27, !noalias !264
  %i.zb = load ptr, ptr %i.yh, align 8, !tbaa !233, !noalias !264
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 64
  store ptr %i.zc, ptr %i.yh, align 8, !tbaa !233, !noalias !264
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i

bb.jo:                                            ; preds = %bb.jm
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.yz, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i unwind label %bb.jr, !noalias !264

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i: ; preds = %bb.jo, %bb.jn
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #27, !noalias !264
  %i.zd = load ptr, ptr %15, align 8, !tbaa !24, !noalias !264 ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.yf
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i
  call void @_ZdlPv(ptr noundef %i.zd) #28, !noalias !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !264
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.084.0107.i, i64 32 ; 2 uses
  %.not99.i = icmp eq ptr %i.zf, %i.ye
  br i1 %.not99.i, label %._crit_edge110.i, label %bb.ji

bb.jp:                                            ; preds = %.noexc.i.i
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i

bb.jq:                                            ; preds = %bb.jl
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.jr:                                            ; preds = %bb.jo
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #27, !noalias !264
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.pn44.i = phi { ptr, i32 } [ %i.zi, %bb.jr ], [ %i.zh, %bb.jq ] ; 2 uses
  %i.zj = load ptr, ptr %15, align 8, !tbaa !24, !noalias !264 ; 2 uses
  %i.zk = icmp eq ptr %i.zj, %i.yf
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i: ; preds = %bb.js
  call void @_ZdlPv(ptr noundef %i.zj) #28, !noalias !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i: ; preds = %bb.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i, %bb.jp
  %.pn44.pn.i = phi { ptr, i32 } [ %i.zg, %bb.jp ], [ %.pn44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i ], [ %.pn44.i, %bb.js ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !264
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #27, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !264
  br label %bb.kc

bb.jt:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN6duckdb6vectorINS_5ValueELb1ESaIS1_EEC2ERKS3_.exit.i unwind label %bb.jy, !noalias !264

_ZN6duckdb6vectorINS_5ValueELb1ESaIS1_EEC2ERKS3_.exit.i: ; preds = %bb.jt
  invoke void @_ZN6duckdb5Value4LISTERKNS_11LogicalTypeENS_6vectorIS0_Lb1ESaIS0_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %94, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull %17)
          to label %bb.ju unwind label %bb.jz

bb.ju:                                            ; preds = %_ZN6duckdb6vectorINS_5ValueELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.zl = load ptr, ptr %17, align 8, !tbaa !241, !noalias !264 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !233, !noalias !264 ; 2 uses
  %.not4.i.i.i69.i = icmp eq ptr %i.zl, %i.zn
  br i1 %.not4.i.i.i69.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i70.i

.lr.ph.i.i.i70.i:                                 ; preds = %bb.ju, %.lr.ph.i.i.i70.i
  %.05.i.i.i71.i = phi ptr [ %i.zo, %.lr.ph.i.i.i70.i ], [ %i.zl, %bb.ju ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i71.i) #27
end_hunk_0
