Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/stable_vector_test?download=true
inline.NumInlined: 19302
inline.NumDeleted: 4121
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 197
begin_hunk_0_@_ZN5boost9container4test20vector_copyable_onlyINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  %i.bv = load ptr, ptr %1, align 8, !tbaa !158
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 1, ptr %i.d, align 4, !tbaa !126
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bw, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.bx = load ptr, ptr %1, align 8, !tbaa !158   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.by = load i64, ptr %i.ac, align 8, !tbaa !262 ; 2 uses
  %i.bz = add i64 %i.by, -3
  %.not.i.i194 = icmp eq i64 %i.by, 0             ; 3 uses
  %i.ca = select i1 %.not.i.i194, i64 0, i64 %i.bz ; 3 uses
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bx to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  %.not.i195 = icmp eq i64 %i.ca, %i.cf
  br i1 %.not.i195, label %bb.g, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit206.thread

bb.g:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  br i1 %.not.i.i194, label %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i197, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !263, !noalias !1920
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !110, !noalias !1920
  br label %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i197

_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i197: ; preds = %bb.g, %bb.h
  %storemerge.i.i198 = phi ptr [ %i.ci, %bb.h ], [ %i.af, %bb.g ] ; 3 uses
  %i.cj = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ck = load ptr, ptr %storemerge.i.i198, align 8, !tbaa !122
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %.not12.i199 = icmp eq i64 %i.co, %i.ca
  br i1 %.not12.i199, label %.preheader.i200, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit206.thread

.preheader.i200:                                  ; preds = %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i197
  %.not2425.i201 = icmp eq ptr %storemerge.i.i198, %i.af
  br i1 %.not2425.i201, label %.loopexit399, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.preheader.i200, %bb.i
  %.sroa.020.027.i203 = phi ptr [ %i.cv, %bb.i ], [ %storemerge.i.i198, %.preheader.i200 ] ; 2 uses
  %.sroa.016.026.i204 = phi ptr [ %i.cw, %bb.i ], [ %i.bx, %.preheader.i200 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i203, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !126
  %i.cr = load i32, ptr %.sroa.016.026.i204, align 4, !tbaa !126
  %i.cs = icmp eq i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit206.thread

bb.i:                                             ; preds = %.lr.ph.i202
  %i.ct = load ptr, ptr %.sroa.020.027.i203, align 8, !tbaa !122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !110 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i204, i64 4
  %.not24.i205 = icmp eq ptr %i.cv, %i.af
  br i1 %.not24.i205, label %.loopexit399, label %.lr.ph.i202, !llvm.loop !11

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit206.thread: ; preds = %.lr.ph.i202, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread

.loopexit399:                                     ; preds = %bb.i, %.preheader.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i32 2, ptr %i.e, align 4, !tbaa !126
  %i.cx = lshr i64 %i.ca, 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %.not.i.i194, label %._crit_edge.i.i, label %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i

_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i: ; preds = %.loopexit399
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !263, !noalias !1921
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !110, !noalias !1921 ; 3 uses
  %i.db = icmp ne ptr %i.da, %i.af
  %i.dc = icmp ne i64 %i.cx, 0
  %or.cond18.i.i = and i1 %i.dc, %i.db
  br i1 %or.cond18.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i, %.lr.ph.i.i
  %.sroa.06.020.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.da, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i ] ; 2 uses
  %.sroa.3.019.i.i = phi i64 [ %i.dh, %.lr.ph.i.i ], [ %i.cx, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i, i64 8
  store i32 2, ptr %i.dd, align 4, !tbaa !126
  %i.de = load ptr, ptr %.sroa.06.020.i.i, align 8, !tbaa !122
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !110 ; 3 uses
  %i.dh = add nsw i64 %.sroa.3.019.i.i, -1        ; 3 uses
  %i.di = icmp ne ptr %i.dg, %i.af
  %i.dj = icmp ne i64 %i.dh, 0
  %or.cond.i.i = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.loopexit399, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.cx, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i ], [ %i.cx, %.loopexit399 ], [ %i.dh, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi ptr [ %i.da, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i ], [ %i.af, %.loopexit399 ], [ %i.dg, %.lr.ph.i.i ]
  %i.dk = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  br i1 %i.dk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  store ptr %.sroa.06.0.lcssa.i.i, ptr %23, align 8, !tbaa !167
  store ptr %i.af, ptr %24, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN5boost9container13stable_vectorIiSaIiEE5eraseENS0_22stable_vector_iteratorIPiLb1EEES6_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %25, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.af, ptr %26, align 8, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @_ZN5boost9container13stable_vectorIiSaIiEE6insertINS0_17constant_iteratorIiEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPiLb0EEENS7_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENS7_5bool_ILb0EEESJ_E4typeENS9_ISA_Lb1EEESD_SD_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %28, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %26, ptr nonnull align 4 dereferenceable(4) %i.e, i64 %.sroa.3.0.lcssa.i.i, ptr noundef nonnull byval(%"class.boost::container::constant_iterator") align 8 %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit

_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.dl = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.dm = load ptr, ptr %1, align 8, !tbaa !160
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 2
  %i.dr = lshr i64 %i.dq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 2, ptr %i.f, align 4, !tbaa !126
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dr, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.ds = load i64, ptr %i.ac, align 8, !tbaa !262 ; 2 uses
  %i.dt = add i64 %i.ds, -3
  %.not.i.i208 = icmp eq i64 %i.ds, 0             ; 3 uses
  %i.du = select i1 %.not.i.i208, i64 0, i64 %i.dt ; 3 uses
  %i.dv = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.dw = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 2
  %.not.i209 = icmp eq i64 %i.du, %i.ea
  br i1 %.not.i209, label %bb.l, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit220.thread

bb.l:                                             ; preds = %_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit
  br i1 %.not.i.i208, label %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i211, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !263, !noalias !1922
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !110, !noalias !1922
  br label %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i211

_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i211: ; preds = %bb.l, %bb.m
  %storemerge.i.i212 = phi ptr [ %i.ed, %bb.m ], [ %i.af, %bb.l ] ; 3 uses
  %i.ee = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ef = load ptr, ptr %storemerge.i.i212, align 8, !tbaa !122
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 3
  %.not12.i213 = icmp eq i64 %i.ej, %i.du
  br i1 %.not12.i213, label %.preheader.i214, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit220.thread

.preheader.i214:                                  ; preds = %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i211
  %.not2425.i215 = icmp eq ptr %storemerge.i.i212, %i.af
  br i1 %.not2425.i215, label %.loopexit398, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %.preheader.i214, %bb.n
  %.sroa.020.027.i217 = phi ptr [ %i.eq, %bb.n ], [ %storemerge.i.i212, %.preheader.i214 ] ; 2 uses
  %.sroa.016.026.i218 = phi ptr [ %i.er, %bb.n ], [ %i.dw, %.preheader.i214 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i217, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !126
  %i.em = load i32, ptr %.sroa.016.026.i218, align 4, !tbaa !126
  %i.en = icmp eq i32 %i.el, %i.em
  br i1 %i.en, label %bb.n, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit220.thread

bb.n:                                             ; preds = %.lr.ph.i216
  %i.eo = load ptr, ptr %.sroa.020.027.i217, align 8, !tbaa !122
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !110 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i218, i64 4
  %.not24.i219 = icmp eq ptr %i.eq, %i.af
  br i1 %.not24.i219, label %.loopexit398, label %.lr.ph.i216, !llvm.loop !11

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit220.thread: ; preds = %.lr.ph.i216, %_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit, %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread

.loopexit398:                                     ; preds = %bb.n, %.preheader.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 3, ptr %i.g, align 4, !tbaa !126
  %i.es = mul nsw i64 %i.du, 3
  %i.et = add nsw i64 %i.es, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  br i1 %.not.i.i208, label %._crit_edge.i.i225, label %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i223

_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i223: ; preds = %.loopexit398
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !263, !noalias !1923
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !110, !noalias !1923 ; 3 uses
  %82 = icmp ne ptr %i.ew, %i.af
  %83 = icmp ne i64 %i.et, 0
  %or.cond18.i.i224 = and i1 %83, %82
  br i1 %or.cond18.i.i224, label %.lr.ph.i.i230, label %._crit_edge.i.i225

.lr.ph.i.i230:                                    ; preds = %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i223, %.lr.ph.i.i230
  %.sroa.06.020.i.i231 = phi ptr [ %i.fa, %.lr.ph.i.i230 ], [ %i.ew, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i223 ] ; 2 uses
  %.sroa.3.019.i.i232 = phi i64 [ %i.fb, %.lr.ph.i.i230 ], [ %i.et, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i223 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i231, i64 8
  store i32 3, ptr %i.ex, align 4, !tbaa !126
  %i.ey = load ptr, ptr %.sroa.06.020.i.i231, align 8, !tbaa !122
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !110 ; 3 uses
  %i.fb = add i64 %.sroa.3.019.i.i232, -1         ; 3 uses
  %i.fc = icmp ne ptr %i.fa, %i.af
  %i.fd = icmp ne i64 %i.fb, 0
  %or.cond.i.i233 = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond.i.i233, label %.lr.ph.i.i230, label %._crit_edge.i.i225

._crit_edge.i.i225:                               ; preds = %.lr.ph.i.i230, %.loopexit398, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i223
  %.sroa.3.0.lcssa.i.i226 = phi i64 [ %i.et, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i223 ], [ %i.et, %.loopexit398 ], [ %i.fb, %.lr.ph.i.i230 ] ; 2 uses
  %.sroa.06.0.lcssa.i.i227 = phi ptr [ %i.ew, %_ZN5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i.i223 ], [ %i.af, %.loopexit398 ], [ %i.fa, %.lr.ph.i.i230 ]
  %i.fe = icmp eq i64 %.sroa.3.0.lcssa.i.i226, 0
  br i1 %i.fe, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i225
  store ptr %.sroa.06.0.lcssa.i.i227, ptr %17, align 8, !tbaa !167
  store ptr %i.af, ptr %18, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN5boost9container13stable_vectorIiSaIiEE5eraseENS0_22stable_vector_iteratorIPiLb1EEES6_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit235

bb.p:                                             ; preds = %._crit_edge.i.i225
  store ptr %i.af, ptr %20, align 8, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @_ZN5boost9container13stable_vectorIiSaIiEE6insertINS0_17constant_iteratorIiEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPiLb0EEENS7_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENS7_5bool_ILb0EEESJ_E4typeENS9_ISA_Lb1EEESD_SD_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %20, ptr nonnull align 4 dereferenceable(4) %i.g, i64 %.sroa.3.0.lcssa.i.i226, ptr noundef nonnull byval(%"class.boost::container::constant_iterator") align 8 %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit235

_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit235: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.ff = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.fg = load ptr, ptr %1, align 8, !tbaa !160
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 2
  %i.fl = mul nsw i64 %i.fk, 3
  %i.fm = add nsw i64 %i.fl, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i32 3, ptr %i.h, align 4, !tbaa !126
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fm, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.fn = load i64, ptr %i.ac, align 8, !tbaa !262 ; 2 uses
  %i.fo = add i64 %i.fn, -3
  %.not.i.i236 = icmp eq i64 %i.fn, 0             ; 2 uses
  %i.fp = select i1 %.not.i.i236, i64 0, i64 %i.fo ; 2 uses
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.fr = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 2
  %.not.i237 = icmp eq i64 %i.fp, %i.fv
  br i1 %.not.i237, label %bb.q, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit248.thread

bb.q:                                             ; preds = %_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit235
  br i1 %.not.i.i236, label %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i239, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !263, !noalias !1924
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !110, !noalias !1924
  br label %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i239

_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i239: ; preds = %bb.q, %bb.r
  %storemerge.i.i240 = phi ptr [ %i.fy, %bb.r ], [ %i.af, %bb.q ] ; 3 uses
  %i.fz = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ga = load ptr, ptr %storemerge.i.i240, align 8, !tbaa !122
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %.not12.i241 = icmp eq i64 %i.ge, %i.fp
  br i1 %.not12.i241, label %.preheader.i242, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit248.thread

.preheader.i242:                                  ; preds = %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i239
  %.not2425.i243 = icmp eq ptr %storemerge.i.i240, %i.af
  br i1 %.not2425.i243, label %.loopexit397, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.preheader.i242, %bb.s
  %.sroa.020.027.i245 = phi ptr [ %i.gl, %bb.s ], [ %storemerge.i.i240, %.preheader.i242 ] ; 2 uses
  %.sroa.016.026.i246 = phi ptr [ %i.gm, %bb.s ], [ %i.fr, %.preheader.i242 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i245, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !126
  %i.gh = load i32, ptr %.sroa.016.026.i246, align 4, !tbaa !126
  %i.gi = icmp eq i32 %i.gg, %i.gh
  br i1 %i.gi, label %bb.s, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit248.thread

bb.s:                                             ; preds = %.lr.ph.i244
  %i.gj = load ptr, ptr %.sroa.020.027.i245, align 8, !tbaa !122
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !110 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i246, i64 4
  %.not24.i247 = icmp eq ptr %i.gl, %i.af
  br i1 %.not24.i247, label %.loopexit397, label %.lr.ph.i244, !llvm.loop !11

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit248.thread: ; preds = %.lr.ph.i244, %_ZN5boost9container13stable_vectorIiSaIiEE6assignEmRKi.exit235, %_ZNK5boost9container13stable_vectorIiSaIiEE5beginEv.exit.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiSaIiEEESt6vectorIiS4_EEEbRKT_RKT0_.exit.thread

.loopexit397:                                     ; preds = %bb.s, %.preheader.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i32 3, ptr %i.i, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i32 3, ptr %i.j, align 4, !tbaa !126
  call void @_ZN5boost9container13stable_vectorIiSaIiEE14priv_push_backIRKiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.gn = load ptr, ptr %i.ag, align 8, !tbaa !211 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !161
  %.not.i.i249 = icmp eq ptr %i.gn, %i.gp
  br i1 %.not.i.i249, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit397
  store i32 3, ptr %i.gn, align 4, !tbaa !126
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store ptr %i.gq, ptr %i.ag, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.u:                                             ; preds = %.loopexit397
  %i.gr = load ptr, ptr %1, align 8, !tbaa !160   ; 4 uses
  %i.gs = ptrtoint ptr %i.gn to i64
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 5 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.v, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.gw = ashr exact i64 %i.gu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 2305843009213693951)
  %i.ha = select i1 %i.gy, i64 2305843009213693951, i64 %i.gz ; 3 uses
  %.not.i.i.i.i250 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i.i250)
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #28 ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i32 3, ptr %i.hd, align 4, !tbaa !126
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %i.gr, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.w, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.hg = load ptr, ptr %i.go, align 8, !tbaa !161
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hi) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.hc, ptr %1, align 8, !tbaa !160
  store ptr %i.hf, ptr %i.ag, align 8, !tbaa !211
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hj, ptr %i.go, align 8, !tbaa !161
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  call void @_ZN5boost9container13stable_vectorIiSaIiEE14priv_push_backIRKiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  %i.hk = load ptr, ptr %i.ag, align 8, !tbaa !211 ; 4 uses
  %i.hl = load ptr, ptr %i.go, align 8, !tbaa !161
  %.not.i.i251 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i.i251, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 3, ptr %i.hk, align 4, !tbaa !126
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  store ptr %i.hm, ptr %i.ag, align 8, !tbaa !211
  %.pre = load ptr, ptr %1, align 8, !tbaa !160
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit258

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.hn = load ptr, ptr %1, align 8, !tbaa !160   ; 4 uses
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = ptrtoint ptr %i.hn to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20vector_copyable_onlyINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i217, i64 8
  %i.cq = load i32, ptr %.sroa.016.026.i218, align 4, !tbaa !126
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !287
  %i.cs = icmp eq i32 %i.cr, %i.cq
  br i1 %i.cs, label %bb.m, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread

bb.m:                                             ; preds = %.lr.ph.i216
  %i.ct = load ptr, ptr %.sroa.020.027.i217, align 8, !tbaa !122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !110 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i218, i64 4
  %.not24.i219 = icmp eq ptr %i.cv, %i.w
  br i1 %.not24.i219, label %.loopexit420, label %.lr.ph.i216, !llvm.loop !13

bb.n:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.v

bb.o:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.v

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread: ; preds = %.lr.ph.i216, %bb.j, %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i211
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit420:                                     ; preds = %bb.m, %.preheader.i214
  %i.db = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  store i32 2, ptr %37, align 4, !tbaa !287
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.dc = lshr i64 %i.ca, 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %.not.i.i208, label %._crit_edge.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i: ; preds = %.loopexit420
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !263, !noalias !4281
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !110, !noalias !4281 ; 3 uses
  %i.dg = icmp ne ptr %i.df, %i.w
  %i.dh = icmp ne i64 %i.dc, 0
  %or.cond18.i.i = and i1 %i.dh, %i.dg
  br i1 %or.cond18.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i, %.lr.ph.i.i
  %.sroa.06.020.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.df, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i ] ; 2 uses
  %.sroa.3.019.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %i.dc, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i, i64 8
  store i32 2, ptr %i.di, align 4, !tbaa !287
  %i.dj = load ptr, ptr %.sroa.06.020.i.i, align 8, !tbaa !122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !110 ; 3 uses
  %i.dm = add nsw i64 %.sroa.3.019.i.i, -1        ; 3 uses
  %i.dn = icmp ne ptr %i.dl, %i.w
  %i.do = icmp ne i64 %i.dm, 0
  %or.cond.i.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.loopexit420, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.dc, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i ], [ %i.dc, %.loopexit420 ], [ %i.dm, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi ptr [ %i.df, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i ], [ %i.w, %.loopexit420 ], [ %i.dl, %.lr.ph.i.i ]
  %i.dp = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  store ptr %.sroa.06.0.lcssa.i.i, ptr %23, align 8, !tbaa !283
  store ptr %i.w, ptr %24, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES8_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.139") align 8 %25, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  store ptr %i.w, ptr %26, align 8, !tbaa !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS0_17constant_iteratorIS3_EEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENS9_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENS9_5bool_ILb0EEESL_E4typeENSB_ISC_Lb1EEESF_SF_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.139") align 8 %28, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %26, ptr nonnull align 4 dereferenceable(4) %37, i64 %.sroa.3.0.lcssa.i.i, ptr noundef nonnull byval(%"class.boost::container::constant_iterator.159") align 8 %27)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.r

bb.r:                                             ; preds = %.noexc, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.dr = load ptr, ptr %1, align 8, !tbaa !160
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = lshr i64 %i.dv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 2, ptr %i.c, align 4, !tbaa !126
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dw, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit unwind label %bb.x

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.dx = load i64, ptr %i.t, align 8, !tbaa !262 ; 2 uses
  %i.dy = add i64 %i.dx, -3
  %.not.i.i223 = icmp eq i64 %i.dx, 0             ; 3 uses
  %i.dz = select i1 %.not.i.i223, i64 0, i64 %i.dy ; 3 uses
  %i.ea = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.eb = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 2
  %.not.i224 = icmp eq i64 %i.dz, %i.ef
  br i1 %.not.i224, label %bb.s, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  br i1 %.not.i.i223, label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i226, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !263, !noalias !4282
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !110, !noalias !4282
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i226

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i226: ; preds = %bb.s, %bb.t
  %storemerge.i.i227 = phi ptr [ %i.ei, %bb.t ], [ %i.w, %bb.s ] ; 3 uses
  %i.ej = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.ek = load ptr, ptr %storemerge.i.i227, align 8, !tbaa !122
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3
  %.not12.i228 = icmp eq i64 %i.eo, %i.dz
  br i1 %.not12.i228, label %.preheader.i229, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

.preheader.i229:                                  ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i226
  %.not2425.i230 = icmp eq ptr %storemerge.i.i227, %i.w
  br i1 %.not2425.i230, label %.loopexit419, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.preheader.i229, %bb.u
  %.sroa.020.027.i232 = phi ptr [ %i.ev, %bb.u ], [ %storemerge.i.i227, %.preheader.i229 ] ; 2 uses
  %.sroa.016.026.i233 = phi ptr [ %i.ew, %bb.u ], [ %i.eb, %.preheader.i229 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i232, i64 8
  %i.eq = load i32, ptr %.sroa.016.026.i233, align 4, !tbaa !126
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !287
  %i.es = icmp eq i32 %i.er, %i.eq
  br i1 %i.es, label %bb.u, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

bb.u:                                             ; preds = %.lr.ph.i231
  %i.et = load ptr, ptr %.sroa.020.027.i232, align 8, !tbaa !122
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !110 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i233, i64 4
  %.not24.i234 = icmp eq ptr %i.ev, %i.w
  br i1 %.not24.i234, label %.loopexit419, label %.lr.ph.i231, !llvm.loop !13

bb.v:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.n ], [ %i.cy, %bb.o ]
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.ey = add i32 %i.ex, -1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.x:                                             ; preds = %bb.r
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ae

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread: ; preds = %.lr.ph.i231, %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit, %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i226
  %i.fb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.fc = add i32 %i.fb, -1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit419:                                     ; preds = %bb.u, %.preheader.i229
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store i32 3, ptr %38, align 4, !tbaa !287
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.fe = mul nsw i64 %i.dz, 3
  %i.ff = add nsw i64 %i.fe, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  br i1 %.not.i.i223, label %._crit_edge.i.i240, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i238

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i238: ; preds = %.loopexit419
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !263, !noalias !4283
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !110, !noalias !4283 ; 3 uses
  %91 = icmp ne ptr %i.fi, %i.w
  %92 = icmp ne i64 %i.ff, 0
  %or.cond18.i.i239 = and i1 %92, %91
  br i1 %or.cond18.i.i239, label %.lr.ph.i.i245, label %._crit_edge.i.i240

.lr.ph.i.i245:                                    ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i238, %.lr.ph.i.i245
  %.sroa.06.020.i.i246 = phi ptr [ %i.fm, %.lr.ph.i.i245 ], [ %i.fi, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i238 ] ; 2 uses
  %.sroa.3.019.i.i247 = phi i64 [ %i.fn, %.lr.ph.i.i245 ], [ %i.ff, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i238 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i246, i64 8
  store i32 3, ptr %i.fj, align 4, !tbaa !287
  %i.fk = load ptr, ptr %.sroa.06.020.i.i246, align 8, !tbaa !122
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !110 ; 3 uses
  %i.fn = add i64 %.sroa.3.019.i.i247, -1         ; 3 uses
  %i.fo = icmp ne ptr %i.fm, %i.w
  %i.fp = icmp ne i64 %i.fn, 0
  %or.cond.i.i248 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond.i.i248, label %.lr.ph.i.i245, label %._crit_edge.i.i240

._crit_edge.i.i240:                               ; preds = %.lr.ph.i.i245, %.loopexit419, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i238
  %.sroa.3.0.lcssa.i.i241 = phi i64 [ %i.ff, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i238 ], [ %i.ff, %.loopexit419 ], [ %i.fn, %.lr.ph.i.i245 ] ; 2 uses
  %.sroa.06.0.lcssa.i.i242 = phi ptr [ %i.fi, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i.i238 ], [ %i.w, %.loopexit419 ], [ %i.fm, %.lr.ph.i.i245 ]
  %i.fq = icmp eq i64 %.sroa.3.0.lcssa.i.i241, 0
  br i1 %i.fq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i240
  store ptr %.sroa.06.0.lcssa.i.i242, ptr %17, align 8, !tbaa !283
  store ptr %i.w, ptr %18, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES8_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.139") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i240
  store ptr %i.w, ptr %20, align 8, !tbaa !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE6insertINS0_17constant_iteratorIS3_EEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENS9_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENS9_5bool_ILb0EEESL_E4typeENSB_ISC_Lb1EEESF_SF_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.139") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %20, ptr nonnull align 4 dereferenceable(4) %38, i64 %.sroa.3.0.lcssa.i.i241, ptr noundef nonnull byval(%"class.boost::container::constant_iterator.159") align 8 %21)
          to label %.noexc250 unwind label %bb.af

.noexc250:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc250, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.fr = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.fs = load ptr, ptr %1, align 8, !tbaa !160
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = mul nsw i64 %i.fw, 3
  %i.fy = add nsw i64 %i.fx, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 3, ptr %i.d, align 4, !tbaa !126
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fy, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253 unwind label %bb.ag

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253:         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.fz = load i64, ptr %i.t, align 8, !tbaa !262 ; 2 uses
  %i.ga = add i64 %i.fz, -3
  %.not.i.i254 = icmp eq i64 %i.fz, 0             ; 2 uses
  %i.gb = select i1 %.not.i.i254, i64 0, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.gd = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 2
  %.not.i255 = icmp eq i64 %i.gb, %i.gh
  br i1 %.not.i255, label %bb.ab, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253
  br i1 %.not.i.i254, label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i257, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !263, !noalias !4284
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !110, !noalias !4284
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i257

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i257: ; preds = %bb.ab, %bb.ac
  %storemerge.i.i258 = phi ptr [ %i.gk, %bb.ac ], [ %i.w, %bb.ab ] ; 3 uses
  %i.gl = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.gm = load ptr, ptr %storemerge.i.i258, align 8, !tbaa !122
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 3
  %.not12.i259 = icmp eq i64 %i.gq, %i.gb
  br i1 %.not12.i259, label %.preheader.i260, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

.preheader.i260:                                  ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i257
  %.not2425.i261 = icmp eq ptr %storemerge.i.i258, %i.w
  br i1 %.not2425.i261, label %.loopexit, label %.lr.ph.i262

.lr.ph.i262:                                      ; preds = %.preheader.i260, %bb.ad
  %.sroa.020.027.i263 = phi ptr [ %i.gx, %bb.ad ], [ %storemerge.i.i258, %.preheader.i260 ] ; 2 uses
  %.sroa.016.026.i264 = phi ptr [ %i.gy, %bb.ad ], [ %i.gd, %.preheader.i260 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i263, i64 8
  %i.gs = load i32, ptr %.sroa.016.026.i264, align 4, !tbaa !126
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !287
  %i.gu = icmp eq i32 %i.gt, %i.gs
  br i1 %i.gu, label %bb.ad, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

bb.ad:                                            ; preds = %.lr.ph.i262
  %i.gv = load ptr, ptr %.sroa.020.027.i263, align 8, !tbaa !122
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !110 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i264, i64 4
  %.not24.i265 = icmp eq ptr %i.gx, %i.w
  br i1 %.not24.i265, label %.loopexit, label %.lr.ph.i262, !llvm.loop !13

bb.ae:                                            ; preds = %bb.x, %bb.w
  %.pn162 = phi { ptr, i32 } [ %i.ez, %bb.w ], [ %i.fa, %bb.x ]
  %i.gz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %common.resume

bb.af:                                            ; preds = %bb.z
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ag:                                            ; preds = %bb.aa
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.au

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread: ; preds = %.lr.ph.i262, %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253, %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE5beginEv.exit.i257
  %i.hd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit:                                        ; preds = %bb.ad, %.preheader.i260
  %i.hf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  store i32 3, ptr %39, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  store i32 3, ptr %40, align 4, !tbaa !287
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE14priv_push_backIRKS3_EEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %39)
          to label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE9push_backERKS3_.exit203 unwind label %bb.av

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE9push_backERKS3_.exit203: ; preds = %.loopexit
  %i.hh = load ptr, ptr %i.ab, align 8, !tbaa !211 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !161
  %.not.i.i267 = icmp eq ptr %i.hh, %i.hj
  br i1 %.not.i.i267, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE9push_backERKS3_.exit203
  store i32 3, ptr %i.hh, align 4, !tbaa !126
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store ptr %i.hk, ptr %i.ab, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ai:                                            ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intESaIS3_EE9push_backERKS3_.exit203
  %i.hl = load ptr, ptr %1, align 8, !tbaa !160   ; 4 uses
  %i.hm = ptrtoint ptr %i.hh to i64
  %i.hn = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn                    ; 5 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775804
  br i1 %i.hp, label %bb.aj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc269 unwind label %bb.aw

.noexc269:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.hq = ashr exact i64 %i.ho, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 2305843009213693951)
  %i.hu = select i1 %i.hs, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i.i268 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i268)
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #28
          to label %.noexc270 unwind label %bb.aw ; 4 uses

.noexc270:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  store i32 3, ptr %i.hx, align 4, !tbaa !126
  %i.hy = icmp sgt i64 %i.ho, 0
  br i1 %i.hy, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc270
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20vector_copyable_onlyINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i217, i64 8
  %i.cq = load i32, ptr %.sroa.016.026.i218, align 4, !tbaa !126
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !297
  %i.cs = icmp eq i32 %i.cr, %i.cq
  br i1 %i.cs, label %bb.m, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread

bb.m:                                             ; preds = %.lr.ph.i216
  %i.ct = load ptr, ptr %.sroa.020.027.i217, align 8, !tbaa !122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !110 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i218, i64 4
  %.not24.i219 = icmp eq ptr %i.cv, %i.w
  br i1 %.not24.i219, label %.loopexit420, label %.lr.ph.i216, !llvm.loop !14

bb.n:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test12copyable_intELb0EEEl.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.v

bb.o:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.v

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread: ; preds = %.lr.ph.i216, %bb.j, %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i211
  %i.cz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit420:                                     ; preds = %bb.m, %.preheader.i214
  %i.db = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  store i32 2, ptr %37, align 4, !tbaa !297
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.dc = lshr i64 %i.ca, 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %.not.i.i208, label %._crit_edge.i.i, label %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i

_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i: ; preds = %.loopexit420
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !263, !noalias !5486
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !110, !noalias !5486 ; 3 uses
  %i.dg = icmp ne ptr %i.df, %i.w
  %i.dh = icmp ne i64 %i.dc, 0
  %or.cond18.i.i = and i1 %i.dh, %i.dg
  br i1 %or.cond18.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i, %.lr.ph.i.i
  %.sroa.06.020.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.df, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i ] ; 2 uses
  %.sroa.3.019.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %i.dc, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i, i64 8
  store i32 2, ptr %i.di, align 4, !tbaa !297
  %i.dj = load ptr, ptr %.sroa.06.020.i.i, align 8, !tbaa !122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !110 ; 3 uses
  %i.dm = add nsw i64 %.sroa.3.019.i.i, -1        ; 3 uses
  %i.dn = icmp ne ptr %i.dl, %i.w
  %i.do = icmp ne i64 %i.dm, 0
  %or.cond.i.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.loopexit420, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.dc, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i ], [ %i.dc, %.loopexit420 ], [ %i.dm, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi ptr [ %i.df, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i ], [ %i.w, %.loopexit420 ], [ %i.dl, %.lr.ph.i.i ]
  %i.dp = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  store ptr %.sroa.06.0.lcssa.i.i, ptr %23, align 8, !tbaa !293
  store ptr %i.w, ptr %24, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES8_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.178") align 8 %25, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  store ptr %i.w, ptr %26, align 8, !tbaa !293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  invoke void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE6insertINS0_17constant_iteratorIS3_EEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENS9_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENS9_5bool_ILb0EEESL_E4typeENSB_ISC_Lb1EEESF_SF_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.178") align 8 %28, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %26, ptr nonnull align 4 dereferenceable(4) %37, i64 %.sroa.3.0.lcssa.i.i, ptr noundef nonnull byval(%"class.boost::container::constant_iterator.198") align 8 %27)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.r

bb.r:                                             ; preds = %.noexc, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.dr = load ptr, ptr %1, align 8, !tbaa !160
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = lshr i64 %i.dv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 2, ptr %i.c, align 4, !tbaa !126
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dw, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit unwind label %bb.x

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.dx = load i64, ptr %i.t, align 8, !tbaa !262 ; 2 uses
  %i.dy = add i64 %i.dx, -3
  %.not.i.i223 = icmp eq i64 %i.dx, 0             ; 3 uses
  %i.dz = select i1 %.not.i.i223, i64 0, i64 %i.dy ; 3 uses
  %i.ea = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.eb = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 2
  %.not.i224 = icmp eq i64 %i.dz, %i.ef
  br i1 %.not.i224, label %bb.s, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  br i1 %.not.i.i223, label %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i226, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !263, !noalias !5487
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !110, !noalias !5487
  br label %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i226

_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i226: ; preds = %bb.s, %bb.t
  %storemerge.i.i227 = phi ptr [ %i.ei, %bb.t ], [ %i.w, %bb.s ] ; 3 uses
  %i.ej = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.ek = load ptr, ptr %storemerge.i.i227, align 8, !tbaa !122
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3
  %.not12.i228 = icmp eq i64 %i.eo, %i.dz
  br i1 %.not12.i228, label %.preheader.i229, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

.preheader.i229:                                  ; preds = %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i226
  %.not2425.i230 = icmp eq ptr %storemerge.i.i227, %i.w
  br i1 %.not2425.i230, label %.loopexit419, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.preheader.i229, %bb.u
  %.sroa.020.027.i232 = phi ptr [ %i.ev, %bb.u ], [ %storemerge.i.i227, %.preheader.i229 ] ; 2 uses
  %.sroa.016.026.i233 = phi ptr [ %i.ew, %bb.u ], [ %i.eb, %.preheader.i229 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i232, i64 8
  %i.eq = load i32, ptr %.sroa.016.026.i233, align 4, !tbaa !126
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !297
  %i.es = icmp eq i32 %i.er, %i.eq
  br i1 %i.es, label %bb.u, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

bb.u:                                             ; preds = %.lr.ph.i231
  %i.et = load ptr, ptr %.sroa.020.027.i232, align 8, !tbaa !122
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !110 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i233, i64 4
  %.not24.i234 = icmp eq ptr %i.ev, %i.w
  br i1 %.not24.i234, label %.loopexit419, label %.lr.ph.i231, !llvm.loop !14

bb.v:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.n ], [ %i.cy, %bb.o ]
  %i.ex = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.ey = add i32 %i.ex, -1
  store i32 %i.ey, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.x:                                             ; preds = %bb.r
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ae

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread: ; preds = %.lr.ph.i231, %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit, %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i226
  %i.fb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.fc = add i32 %i.fb, -1
  store i32 %i.fc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit419:                                     ; preds = %bb.u, %.preheader.i229
  %i.fd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store i32 3, ptr %38, align 4, !tbaa !297
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.fe = mul nsw i64 %i.dz, 3
  %i.ff = add nsw i64 %i.fe, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  br i1 %.not.i.i223, label %._crit_edge.i.i240, label %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i238

_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i238: ; preds = %.loopexit419
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !263, !noalias !5488
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !110, !noalias !5488 ; 3 uses
  %91 = icmp ne ptr %i.fi, %i.w
  %92 = icmp ne i64 %i.ff, 0
  %or.cond18.i.i239 = and i1 %92, %91
  br i1 %or.cond18.i.i239, label %.lr.ph.i.i245, label %._crit_edge.i.i240

.lr.ph.i.i245:                                    ; preds = %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i238, %.lr.ph.i.i245
  %.sroa.06.020.i.i246 = phi ptr [ %i.fm, %.lr.ph.i.i245 ], [ %i.fi, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i238 ] ; 2 uses
  %.sroa.3.019.i.i247 = phi i64 [ %i.fn, %.lr.ph.i.i245 ], [ %i.ff, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i238 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i246, i64 8
  store i32 3, ptr %i.fj, align 4, !tbaa !297
  %i.fk = load ptr, ptr %.sroa.06.020.i.i246, align 8, !tbaa !122
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !110 ; 3 uses
  %i.fn = add i64 %.sroa.3.019.i.i247, -1         ; 3 uses
  %i.fo = icmp ne ptr %i.fm, %i.w
  %i.fp = icmp ne i64 %i.fn, 0
  %or.cond.i.i248 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond.i.i248, label %.lr.ph.i.i245, label %._crit_edge.i.i240

._crit_edge.i.i240:                               ; preds = %.lr.ph.i.i245, %.loopexit419, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i238
  %.sroa.3.0.lcssa.i.i241 = phi i64 [ %i.ff, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i238 ], [ %i.ff, %.loopexit419 ], [ %i.fn, %.lr.ph.i.i245 ] ; 2 uses
  %.sroa.06.0.lcssa.i.i242 = phi ptr [ %i.fi, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i.i238 ], [ %i.w, %.loopexit419 ], [ %i.fm, %.lr.ph.i.i245 ]
  %i.fq = icmp eq i64 %.sroa.3.0.lcssa.i.i241, 0
  br i1 %i.fq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i240
  store ptr %.sroa.06.0.lcssa.i.i242, ptr %17, align 8, !tbaa !293
  store ptr %i.w, ptr %18, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES8_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.178") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i240
  store ptr %i.w, ptr %20, align 8, !tbaa !293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE6insertINS0_17constant_iteratorIS3_EEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENS9_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENS9_5bool_ILb0EEESL_E4typeENSB_ISC_Lb1EEESF_SF_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.178") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %20, ptr nonnull align 4 dereferenceable(4) %38, i64 %.sroa.3.0.lcssa.i.i241, ptr noundef nonnull byval(%"class.boost::container::constant_iterator.198") align 8 %21)
          to label %.noexc250 unwind label %bb.af

.noexc250:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc250, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.fr = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.fs = load ptr, ptr %1, align 8, !tbaa !160
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = mul nsw i64 %i.fw, 3
  %i.fy = add nsw i64 %i.fx, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 3, ptr %i.d, align 4, !tbaa !126
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fy, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253 unwind label %bb.ag

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253:         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.fz = load i64, ptr %i.t, align 8, !tbaa !262 ; 2 uses
  %i.ga = add i64 %i.fz, -3
  %.not.i.i254 = icmp eq i64 %i.fz, 0             ; 2 uses
  %i.gb = select i1 %.not.i.i254, i64 0, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.gd = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 2
  %.not.i255 = icmp eq i64 %i.gb, %i.gh
  br i1 %.not.i255, label %bb.ab, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253
  br i1 %.not.i.i254, label %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i257, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !263, !noalias !5489
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !110, !noalias !5489
  br label %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i257

_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i257: ; preds = %bb.ab, %bb.ac
  %storemerge.i.i258 = phi ptr [ %i.gk, %bb.ac ], [ %i.w, %bb.ab ] ; 3 uses
  %i.gl = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.gm = load ptr, ptr %storemerge.i.i258, align 8, !tbaa !122
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 3
  %.not12.i259 = icmp eq i64 %i.gq, %i.gb
  br i1 %.not12.i259, label %.preheader.i260, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

.preheader.i260:                                  ; preds = %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i257
  %.not2425.i261 = icmp eq ptr %storemerge.i.i258, %i.w
  br i1 %.not2425.i261, label %.loopexit, label %.lr.ph.i262

.lr.ph.i262:                                      ; preds = %.preheader.i260, %bb.ad
  %.sroa.020.027.i263 = phi ptr [ %i.gx, %bb.ad ], [ %storemerge.i.i258, %.preheader.i260 ] ; 2 uses
  %.sroa.016.026.i264 = phi ptr [ %i.gy, %bb.ad ], [ %i.gd, %.preheader.i260 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i263, i64 8
  %i.gs = load i32, ptr %.sroa.016.026.i264, align 4, !tbaa !126
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !297
  %i.gu = icmp eq i32 %i.gt, %i.gs
  br i1 %i.gu, label %bb.ad, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

bb.ad:                                            ; preds = %.lr.ph.i262
  %i.gv = load ptr, ptr %.sroa.020.027.i263, align 8, !tbaa !122
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !110 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i264, i64 4
  %.not24.i265 = icmp eq ptr %i.gx, %i.w
  br i1 %.not24.i265, label %.loopexit, label %.lr.ph.i262, !llvm.loop !14

bb.ae:                                            ; preds = %bb.x, %bb.w
  %.pn162 = phi { ptr, i32 } [ %i.ez, %bb.w ], [ %i.fa, %bb.x ]
  %i.gz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %common.resume

bb.af:                                            ; preds = %bb.z
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ag:                                            ; preds = %bb.aa
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.au

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread: ; preds = %.lr.ph.i262, %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253, %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE5beginEv.exit.i257
  %i.hd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intESaIS4_EEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit:                                        ; preds = %bb.ad, %.preheader.i260
  %i.hf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  store i32 3, ptr %39, align 4, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  store i32 3, ptr %40, align 4, !tbaa !297
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE14priv_push_backIRKS3_EEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %39)
          to label %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE9push_backERKS3_.exit203 unwind label %bb.av

_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE9push_backERKS3_.exit203: ; preds = %.loopexit
  %i.hh = load ptr, ptr %i.ab, align 8, !tbaa !211 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !161
  %.not.i.i267 = icmp eq ptr %i.hh, %i.hj
  br i1 %.not.i.i267, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE9push_backERKS3_.exit203
  store i32 3, ptr %i.hh, align 4, !tbaa !126
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store ptr %i.hk, ptr %i.ab, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ai:                                            ; preds = %_ZN5boost9container13stable_vectorINS0_4test12copyable_intESaIS3_EE9push_backERKS3_.exit203
  %i.hl = load ptr, ptr %1, align 8, !tbaa !160   ; 4 uses
  %i.hm = ptrtoint ptr %i.hh to i64
  %i.hn = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn                    ; 5 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775804
  br i1 %i.hp, label %bb.aj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc269 unwind label %bb.aw

.noexc269:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.hq = ashr exact i64 %i.ho, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 2305843009213693951)
  %i.hu = select i1 %i.hs, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i.i268 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i268)
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #28
          to label %.noexc270 unwind label %bb.aw ; 4 uses

.noexc270:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  store i32 3, ptr %i.hx, align 4, !tbaa !126
  %i.hy = icmp sgt i64 %i.ho, 0
  br i1 %i.hy, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc270
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20vector_copyable_onlyINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  %i.bv = load ptr, ptr %1, align 8, !tbaa !158
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 1, ptr %i.d, align 4, !tbaa !126
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bw, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.bx = load ptr, ptr %1, align 8, !tbaa !158   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.by = load i64, ptr %i.ac, align 8, !tbaa !415 ; 2 uses
  %i.bz = add i64 %i.by, -3
  %.not.i.i194 = icmp eq i64 %i.by, 0             ; 3 uses
  %i.ca = select i1 %.not.i.i194, i64 0, i64 %i.bz ; 3 uses
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bx to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  %.not.i195 = icmp eq i64 %i.ca, %i.cf
  br i1 %.not.i195, label %bb.g, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit206.thread

bb.g:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  br i1 %.not.i.i194, label %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i197, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !416, !noalias !7234
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !110, !noalias !7234
  br label %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i197

_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i197: ; preds = %bb.g, %bb.h
  %storemerge.i.i198 = phi ptr [ %i.ci, %bb.h ], [ %i.af, %bb.g ] ; 3 uses
  %i.cj = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ck = load ptr, ptr %storemerge.i.i198, align 8, !tbaa !122
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %.not12.i199 = icmp eq i64 %i.co, %i.ca
  br i1 %.not12.i199, label %.preheader.i200, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit206.thread

.preheader.i200:                                  ; preds = %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i197
  %.not2425.i201 = icmp eq ptr %storemerge.i.i198, %i.af
  br i1 %.not2425.i201, label %.loopexit399, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.preheader.i200, %bb.i
  %.sroa.020.027.i203 = phi ptr [ %i.cv, %bb.i ], [ %storemerge.i.i198, %.preheader.i200 ] ; 2 uses
  %.sroa.016.026.i204 = phi ptr [ %i.cw, %bb.i ], [ %i.bx, %.preheader.i200 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i203, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !126
  %i.cr = load i32, ptr %.sroa.016.026.i204, align 4, !tbaa !126
  %i.cs = icmp eq i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit206.thread

bb.i:                                             ; preds = %.lr.ph.i202
  %i.ct = load ptr, ptr %.sroa.020.027.i203, align 8, !tbaa !122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !110 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i204, i64 4
  %.not24.i205 = icmp eq ptr %i.cv, %i.af
  br i1 %.not24.i205, label %.loopexit399, label %.lr.ph.i202, !llvm.loop !64

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit206.thread: ; preds = %.lr.ph.i202, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit399:                                     ; preds = %bb.i, %.preheader.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i32 2, ptr %i.e, align 4, !tbaa !126
  %i.cx = lshr i64 %i.ca, 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %.not.i.i194, label %._crit_edge.i.i, label %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i

_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i: ; preds = %.loopexit399
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !416, !noalias !7235
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !110, !noalias !7235 ; 3 uses
  %i.db = icmp ne ptr %i.da, %i.af
  %i.dc = icmp ne i64 %i.cx, 0
  %or.cond18.i.i = and i1 %i.dc, %i.db
  br i1 %or.cond18.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i, %.lr.ph.i.i
  %.sroa.06.020.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.da, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i ] ; 2 uses
  %.sroa.3.019.i.i = phi i64 [ %i.dh, %.lr.ph.i.i ], [ %i.cx, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i, i64 8
  store i32 2, ptr %i.dd, align 4, !tbaa !126
  %i.de = load ptr, ptr %.sroa.06.020.i.i, align 8, !tbaa !122
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !110 ; 3 uses
  %i.dh = add nsw i64 %.sroa.3.019.i.i, -1        ; 3 uses
  %i.di = icmp ne ptr %i.dg, %i.af
  %i.dj = icmp ne i64 %i.dh, 0
  %or.cond.i.i = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.loopexit399, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.cx, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i ], [ %i.cx, %.loopexit399 ], [ %i.dh, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi ptr [ %i.da, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i ], [ %i.af, %.loopexit399 ], [ %i.dg, %.lr.ph.i.i ]
  %i.dk = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  br i1 %i.dk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  store ptr %.sroa.06.0.lcssa.i.i, ptr %23, align 8, !tbaa !167
  store ptr %i.af, ptr %24, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_22stable_vector_iteratorIPiLb1EEES7_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %25, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.af, ptr %26, align 8, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6insertINS0_17constant_iteratorIiEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPiLb0EEENS8_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENS8_5bool_ILb0EEESK_E4typeENSA_ISB_Lb1EEESE_SE_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %28, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %26, ptr nonnull align 4 dereferenceable(4) %i.e, i64 %.sroa.3.0.lcssa.i.i, ptr noundef nonnull byval(%"class.boost::container::constant_iterator") align 8 %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit

_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.dl = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.dm = load ptr, ptr %1, align 8, !tbaa !160
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 2
  %i.dr = lshr i64 %i.dq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 2, ptr %i.f, align 4, !tbaa !126
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dr, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.ds = load i64, ptr %i.ac, align 8, !tbaa !415 ; 2 uses
  %i.dt = add i64 %i.ds, -3
  %.not.i.i208 = icmp eq i64 %i.ds, 0             ; 3 uses
  %i.du = select i1 %.not.i.i208, i64 0, i64 %i.dt ; 3 uses
  %i.dv = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.dw = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 2
  %.not.i209 = icmp eq i64 %i.du, %i.ea
  br i1 %.not.i209, label %bb.l, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread

bb.l:                                             ; preds = %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit
  br i1 %.not.i.i208, label %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i211, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !416, !noalias !7236
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !110, !noalias !7236
  br label %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i211

_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i211: ; preds = %bb.l, %bb.m
  %storemerge.i.i212 = phi ptr [ %i.ed, %bb.m ], [ %i.af, %bb.l ] ; 3 uses
  %i.ee = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ef = load ptr, ptr %storemerge.i.i212, align 8, !tbaa !122
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 3
  %.not12.i213 = icmp eq i64 %i.ej, %i.du
  br i1 %.not12.i213, label %.preheader.i214, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread

.preheader.i214:                                  ; preds = %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i211
  %.not2425.i215 = icmp eq ptr %storemerge.i.i212, %i.af
  br i1 %.not2425.i215, label %.loopexit398, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %.preheader.i214, %bb.n
  %.sroa.020.027.i217 = phi ptr [ %i.eq, %bb.n ], [ %storemerge.i.i212, %.preheader.i214 ] ; 2 uses
  %.sroa.016.026.i218 = phi ptr [ %i.er, %bb.n ], [ %i.dw, %.preheader.i214 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i217, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !126
  %i.em = load i32, ptr %.sroa.016.026.i218, align 4, !tbaa !126
  %i.en = icmp eq i32 %i.el, %i.em
  br i1 %i.en, label %bb.n, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread

bb.n:                                             ; preds = %.lr.ph.i216
  %i.eo = load ptr, ptr %.sroa.020.027.i217, align 8, !tbaa !122
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !110 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i218, i64 4
  %.not24.i219 = icmp eq ptr %i.eq, %i.af
  br i1 %.not24.i219, label %.loopexit398, label %.lr.ph.i216, !llvm.loop !64

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread: ; preds = %.lr.ph.i216, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit, %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit398:                                     ; preds = %bb.n, %.preheader.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 3, ptr %i.g, align 4, !tbaa !126
  %i.es = mul nsw i64 %i.du, 3
  %i.et = add nsw i64 %i.es, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  br i1 %.not.i.i208, label %._crit_edge.i.i225, label %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i223

_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i223: ; preds = %.loopexit398
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !416, !noalias !7237
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !110, !noalias !7237 ; 3 uses
  %82 = icmp ne ptr %i.ew, %i.af
  %83 = icmp ne i64 %i.et, 0
  %or.cond18.i.i224 = and i1 %83, %82
  br i1 %or.cond18.i.i224, label %.lr.ph.i.i230, label %._crit_edge.i.i225

.lr.ph.i.i230:                                    ; preds = %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i223, %.lr.ph.i.i230
  %.sroa.06.020.i.i231 = phi ptr [ %i.fa, %.lr.ph.i.i230 ], [ %i.ew, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i223 ] ; 2 uses
  %.sroa.3.019.i.i232 = phi i64 [ %i.fb, %.lr.ph.i.i230 ], [ %i.et, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i223 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i231, i64 8
  store i32 3, ptr %i.ex, align 4, !tbaa !126
  %i.ey = load ptr, ptr %.sroa.06.020.i.i231, align 8, !tbaa !122
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !110 ; 3 uses
  %i.fb = add i64 %.sroa.3.019.i.i232, -1         ; 3 uses
  %i.fc = icmp ne ptr %i.fa, %i.af
  %i.fd = icmp ne i64 %i.fb, 0
  %or.cond.i.i233 = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond.i.i233, label %.lr.ph.i.i230, label %._crit_edge.i.i225

._crit_edge.i.i225:                               ; preds = %.lr.ph.i.i230, %.loopexit398, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i223
  %.sroa.3.0.lcssa.i.i226 = phi i64 [ %i.et, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i223 ], [ %i.et, %.loopexit398 ], [ %i.fb, %.lr.ph.i.i230 ] ; 2 uses
  %.sroa.06.0.lcssa.i.i227 = phi ptr [ %i.ew, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i.i223 ], [ %i.af, %.loopexit398 ], [ %i.fa, %.lr.ph.i.i230 ]
  %i.fe = icmp eq i64 %.sroa.3.0.lcssa.i.i226, 0
  br i1 %i.fe, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i225
  store ptr %.sroa.06.0.lcssa.i.i227, ptr %17, align 8, !tbaa !167
  store ptr %i.af, ptr %18, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5eraseENS0_22stable_vector_iteratorIPiLb1EEES7_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit235

bb.p:                                             ; preds = %._crit_edge.i.i225
  store ptr %i.af, ptr %20, align 8, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6insertINS0_17constant_iteratorIiEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPiLb0EEENS8_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENS8_5bool_ILb0EEESK_E4typeENSA_ISB_Lb1EEESE_SE_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %20, ptr nonnull align 4 dereferenceable(4) %i.g, i64 %.sroa.3.0.lcssa.i.i226, ptr noundef nonnull byval(%"class.boost::container::constant_iterator") align 8 %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit235

_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit235: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.ff = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.fg = load ptr, ptr %1, align 8, !tbaa !160
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 2
  %i.fl = mul nsw i64 %i.fk, 3
  %i.fm = add nsw i64 %i.fl, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i32 3, ptr %i.h, align 4, !tbaa !126
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fm, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.fn = load i64, ptr %i.ac, align 8, !tbaa !415 ; 2 uses
  %i.fo = add i64 %i.fn, -3
  %.not.i.i236 = icmp eq i64 %i.fn, 0             ; 2 uses
  %i.fp = select i1 %.not.i.i236, i64 0, i64 %i.fo ; 2 uses
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.fr = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 2
  %.not.i237 = icmp eq i64 %i.fp, %i.fv
  br i1 %.not.i237, label %bb.q, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit248.thread

bb.q:                                             ; preds = %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit235
  br i1 %.not.i.i236, label %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i239, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !416, !noalias !7238
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !110, !noalias !7238
  br label %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i239

_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i239: ; preds = %bb.q, %bb.r
  %storemerge.i.i240 = phi ptr [ %i.fy, %bb.r ], [ %i.af, %bb.q ] ; 3 uses
  %i.fz = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ga = load ptr, ptr %storemerge.i.i240, align 8, !tbaa !122
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %.not12.i241 = icmp eq i64 %i.ge, %i.fp
  br i1 %.not12.i241, label %.preheader.i242, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit248.thread

.preheader.i242:                                  ; preds = %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i239
  %.not2425.i243 = icmp eq ptr %storemerge.i.i240, %i.af
  br i1 %.not2425.i243, label %.loopexit397, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.preheader.i242, %bb.s
  %.sroa.020.027.i245 = phi ptr [ %i.gl, %bb.s ], [ %storemerge.i.i240, %.preheader.i242 ] ; 2 uses
  %.sroa.016.026.i246 = phi ptr [ %i.gm, %bb.s ], [ %i.fr, %.preheader.i242 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i245, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !126
  %i.gh = load i32, ptr %.sroa.016.026.i246, align 4, !tbaa !126
  %i.gi = icmp eq i32 %i.gg, %i.gh
  br i1 %i.gi, label %bb.s, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit248.thread

bb.s:                                             ; preds = %.lr.ph.i244
  %i.gj = load ptr, ptr %.sroa.020.027.i245, align 8, !tbaa !122
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !110 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i246, i64 4
  %.not24.i247 = icmp eq ptr %i.gl, %i.af
  br i1 %.not24.i247, label %.loopexit397, label %.lr.ph.i244, !llvm.loop !64

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit248.thread: ; preds = %.lr.ph.i244, %_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE6assignEmRKi.exit235, %_ZNK5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE5beginEv.exit.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit397:                                     ; preds = %bb.s, %.preheader.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i32 3, ptr %i.i, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i32 3, ptr %i.j, align 4, !tbaa !126
  call void @_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE14priv_push_backIRKiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.gn = load ptr, ptr %i.ag, align 8, !tbaa !211 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !161
  %.not.i.i249 = icmp eq ptr %i.gn, %i.gp
  br i1 %.not.i.i249, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit397
  store i32 3, ptr %i.gn, align 4, !tbaa !126
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store ptr %i.gq, ptr %i.ag, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.u:                                             ; preds = %.loopexit397
  %i.gr = load ptr, ptr %1, align 8, !tbaa !160   ; 4 uses
  %i.gs = ptrtoint ptr %i.gn to i64
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 5 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.v, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.gw = ashr exact i64 %i.gu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 2305843009213693951)
  %i.ha = select i1 %i.gy, i64 2305843009213693951, i64 %i.gz ; 3 uses
  %.not.i.i.i.i250 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i.i250)
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #28 ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i32 3, ptr %i.hd, align 4, !tbaa !126
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %i.gr, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.w, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.hg = load ptr, ptr %i.go, align 8, !tbaa !161
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hi) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.hc, ptr %1, align 8, !tbaa !160
  store ptr %i.hf, ptr %i.ag, align 8, !tbaa !211
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hj, ptr %i.go, align 8, !tbaa !161
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  call void @_ZN5boost9container13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEE14priv_push_backIRKiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  %i.hk = load ptr, ptr %i.ag, align 8, !tbaa !211 ; 4 uses
  %i.hl = load ptr, ptr %i.go, align 8, !tbaa !161
  %.not.i.i251 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i.i251, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 3, ptr %i.hk, align 4, !tbaa !126
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  store ptr %i.hm, ptr %i.ag, align 8, !tbaa !211
  %.pre = load ptr, ptr %1, align 8, !tbaa !160
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit258

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.hn = load ptr, ptr %1, align 8, !tbaa !160   ; 4 uses
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = ptrtoint ptr %i.hn to i64               ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test20vector_copyable_onlyINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i217, i64 8
  %i.cq = load i32, ptr %.sroa.016.026.i218, align 4, !tbaa !126
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !287
  %i.cs = icmp eq i32 %i.cr, %i.cq
  br i1 %i.cs, label %bb.m, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread

bb.m:                                             ; preds = %.lr.ph.i216
  %i.ct = load ptr, ptr %.sroa.020.027.i217, align 8, !tbaa !122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !110 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i218, i64 4
  %.not24.i219 = icmp eq ptr %i.cv, %i.w
  br i1 %.not24.i219, label %.loopexit420, label %.lr.ph.i216, !llvm.loop !66

bb.n:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.v

bb.o:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.v

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread: ; preds = %.lr.ph.i216, %bb.j, %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i211
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit420:                                     ; preds = %bb.m, %.preheader.i214
  %i.db = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  store i32 2, ptr %37, align 4, !tbaa !287
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.dc = lshr i64 %i.ca, 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %.not.i.i208, label %._crit_edge.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i: ; preds = %.loopexit420
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !416, !noalias !9346
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !110, !noalias !9346 ; 3 uses
  %i.dg = icmp ne ptr %i.df, %i.w
  %i.dh = icmp ne i64 %i.dc, 0
  %or.cond18.i.i = and i1 %i.dh, %i.dg
  br i1 %or.cond18.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i, %.lr.ph.i.i
  %.sroa.06.020.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.df, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i ] ; 2 uses
  %.sroa.3.019.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %i.dc, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i, i64 8
  store i32 2, ptr %i.di, align 4, !tbaa !287
  %i.dj = load ptr, ptr %.sroa.06.020.i.i, align 8, !tbaa !122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !110 ; 3 uses
  %i.dm = add nsw i64 %.sroa.3.019.i.i, -1        ; 3 uses
  %i.dn = icmp ne ptr %i.dl, %i.w
  %i.do = icmp ne i64 %i.dm, 0
  %or.cond.i.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.loopexit420, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.dc, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i ], [ %i.dc, %.loopexit420 ], [ %i.dm, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi ptr [ %i.df, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i ], [ %i.w, %.loopexit420 ], [ %i.dl, %.lr.ph.i.i ]
  %i.dp = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  store ptr %.sroa.06.0.lcssa.i.i, ptr %23, align 8, !tbaa !283
  store ptr %i.w, ptr %24, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.139") align 8 %25, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  store ptr %i.w, ptr %26, align 8, !tbaa !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6insertINS0_17constant_iteratorIS3_EEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSA_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSA_5bool_ILb0EEESM_E4typeENSC_ISD_Lb1EEESG_SG_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.139") align 8 %28, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %26, ptr nonnull align 4 dereferenceable(4) %37, i64 %.sroa.3.0.lcssa.i.i, ptr noundef nonnull byval(%"class.boost::container::constant_iterator.159") align 8 %27)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.r

bb.r:                                             ; preds = %.noexc, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.dr = load ptr, ptr %1, align 8, !tbaa !160
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = lshr i64 %i.dv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 2, ptr %i.c, align 4, !tbaa !126
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dw, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit unwind label %bb.x

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.dx = load i64, ptr %i.t, align 8, !tbaa !415 ; 2 uses
  %i.dy = add i64 %i.dx, -3
  %.not.i.i223 = icmp eq i64 %i.dx, 0             ; 3 uses
  %i.dz = select i1 %.not.i.i223, i64 0, i64 %i.dy ; 3 uses
  %i.ea = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.eb = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 2
  %.not.i224 = icmp eq i64 %i.dz, %i.ef
  br i1 %.not.i224, label %bb.s, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  br i1 %.not.i.i223, label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !416, !noalias !9347
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !110, !noalias !9347
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226: ; preds = %bb.s, %bb.t
  %storemerge.i.i227 = phi ptr [ %i.ei, %bb.t ], [ %i.w, %bb.s ] ; 3 uses
  %i.ej = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.ek = load ptr, ptr %storemerge.i.i227, align 8, !tbaa !122
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3
  %.not12.i228 = icmp eq i64 %i.eo, %i.dz
  br i1 %.not12.i228, label %.preheader.i229, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

.preheader.i229:                                  ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226
  %.not2425.i230 = icmp eq ptr %storemerge.i.i227, %i.w
  br i1 %.not2425.i230, label %.loopexit419, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.preheader.i229, %bb.u
  %.sroa.020.027.i232 = phi ptr [ %i.ev, %bb.u ], [ %storemerge.i.i227, %.preheader.i229 ] ; 2 uses
  %.sroa.016.026.i233 = phi ptr [ %i.ew, %bb.u ], [ %i.eb, %.preheader.i229 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i232, i64 8
  %i.eq = load i32, ptr %.sroa.016.026.i233, align 4, !tbaa !126
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !287
  %i.es = icmp eq i32 %i.er, %i.eq
  br i1 %i.es, label %bb.u, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

bb.u:                                             ; preds = %.lr.ph.i231
  %i.et = load ptr, ptr %.sroa.020.027.i232, align 8, !tbaa !122
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !110 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i233, i64 4
  %.not24.i234 = icmp eq ptr %i.ev, %i.w
  br i1 %.not24.i234, label %.loopexit419, label %.lr.ph.i231, !llvm.loop !66

bb.v:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.n ], [ %i.cy, %bb.o ]
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.ey = add i32 %i.ex, -1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.x:                                             ; preds = %bb.r
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ae

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread: ; preds = %.lr.ph.i231, %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit, %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226
  %i.fb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.fc = add i32 %i.fb, -1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit419:                                     ; preds = %bb.u, %.preheader.i229
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store i32 3, ptr %38, align 4, !tbaa !287
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.fe = mul nsw i64 %i.dz, 3
  %i.ff = add nsw i64 %i.fe, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  br i1 %.not.i.i223, label %._crit_edge.i.i240, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238: ; preds = %.loopexit419
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !416, !noalias !9348
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !110, !noalias !9348 ; 3 uses
  %91 = icmp ne ptr %i.fi, %i.w
  %92 = icmp ne i64 %i.ff, 0
  %or.cond18.i.i239 = and i1 %92, %91
  br i1 %or.cond18.i.i239, label %.lr.ph.i.i245, label %._crit_edge.i.i240

.lr.ph.i.i245:                                    ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238, %.lr.ph.i.i245
  %.sroa.06.020.i.i246 = phi ptr [ %i.fm, %.lr.ph.i.i245 ], [ %i.fi, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238 ] ; 2 uses
  %.sroa.3.019.i.i247 = phi i64 [ %i.fn, %.lr.ph.i.i245 ], [ %i.ff, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i246, i64 8
  store i32 3, ptr %i.fj, align 4, !tbaa !287
  %i.fk = load ptr, ptr %.sroa.06.020.i.i246, align 8, !tbaa !122
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !110 ; 3 uses
  %i.fn = add i64 %.sroa.3.019.i.i247, -1         ; 3 uses
  %i.fo = icmp ne ptr %i.fm, %i.w
  %i.fp = icmp ne i64 %i.fn, 0
  %or.cond.i.i248 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond.i.i248, label %.lr.ph.i.i245, label %._crit_edge.i.i240

._crit_edge.i.i240:                               ; preds = %.lr.ph.i.i245, %.loopexit419, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238
  %.sroa.3.0.lcssa.i.i241 = phi i64 [ %i.ff, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238 ], [ %i.ff, %.loopexit419 ], [ %i.fn, %.lr.ph.i.i245 ] ; 2 uses
  %.sroa.06.0.lcssa.i.i242 = phi ptr [ %i.fi, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238 ], [ %i.w, %.loopexit419 ], [ %i.fm, %.lr.ph.i.i245 ]
  %i.fq = icmp eq i64 %.sroa.3.0.lcssa.i.i241, 0
  br i1 %i.fq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i240
  store ptr %.sroa.06.0.lcssa.i.i242, ptr %17, align 8, !tbaa !283
  store ptr %i.w, ptr %18, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.139") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i240
  store ptr %i.w, ptr %20, align 8, !tbaa !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6insertINS0_17constant_iteratorIS3_EEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSA_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSA_5bool_ILb0EEESM_E4typeENSC_ISD_Lb1EEESG_SG_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.139") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %20, ptr nonnull align 4 dereferenceable(4) %38, i64 %.sroa.3.0.lcssa.i.i241, ptr noundef nonnull byval(%"class.boost::container::constant_iterator.159") align 8 %21)
          to label %.noexc250 unwind label %bb.af

.noexc250:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc250, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.fr = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.fs = load ptr, ptr %1, align 8, !tbaa !160
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = mul nsw i64 %i.fw, 3
  %i.fy = add nsw i64 %i.fx, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 3, ptr %i.d, align 4, !tbaa !126
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fy, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253 unwind label %bb.ag

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253:         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.fz = load i64, ptr %i.t, align 8, !tbaa !415 ; 2 uses
  %i.ga = add i64 %i.fz, -3
  %.not.i.i254 = icmp eq i64 %i.fz, 0             ; 2 uses
  %i.gb = select i1 %.not.i.i254, i64 0, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.gd = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 2
  %.not.i255 = icmp eq i64 %i.gb, %i.gh
  br i1 %.not.i255, label %bb.ab, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253
  br i1 %.not.i.i254, label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !416, !noalias !9349
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !110, !noalias !9349
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257: ; preds = %bb.ab, %bb.ac
  %storemerge.i.i258 = phi ptr [ %i.gk, %bb.ac ], [ %i.w, %bb.ab ] ; 3 uses
  %i.gl = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.gm = load ptr, ptr %storemerge.i.i258, align 8, !tbaa !122
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 3
  %.not12.i259 = icmp eq i64 %i.gq, %i.gb
  br i1 %.not12.i259, label %.preheader.i260, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

.preheader.i260:                                  ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257
  %.not2425.i261 = icmp eq ptr %storemerge.i.i258, %i.w
  br i1 %.not2425.i261, label %.loopexit, label %.lr.ph.i262

.lr.ph.i262:                                      ; preds = %.preheader.i260, %bb.ad
  %.sroa.020.027.i263 = phi ptr [ %i.gx, %bb.ad ], [ %storemerge.i.i258, %.preheader.i260 ] ; 2 uses
  %.sroa.016.026.i264 = phi ptr [ %i.gy, %bb.ad ], [ %i.gd, %.preheader.i260 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i263, i64 8
  %i.gs = load i32, ptr %.sroa.016.026.i264, align 4, !tbaa !126
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !287
  %i.gu = icmp eq i32 %i.gt, %i.gs
  br i1 %i.gu, label %bb.ad, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

bb.ad:                                            ; preds = %.lr.ph.i262
  %i.gv = load ptr, ptr %.sroa.020.027.i263, align 8, !tbaa !122
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !110 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i264, i64 4
  %.not24.i265 = icmp eq ptr %i.gx, %i.w
  br i1 %.not24.i265, label %.loopexit, label %.lr.ph.i262, !llvm.loop !66

bb.ae:                                            ; preds = %bb.x, %bb.w
  %.pn162 = phi { ptr, i32 } [ %i.ez, %bb.w ], [ %i.fa, %bb.x ]
  %i.gz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %common.resume

bb.af:                                            ; preds = %bb.z
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ag:                                            ; preds = %bb.aa
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.au

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread: ; preds = %.lr.ph.i262, %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253, %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257
  %i.hd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit:                                        ; preds = %bb.ad, %.preheader.i260
  %i.hf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  store i32 3, ptr %39, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  store i32 3, ptr %40, align 4, !tbaa !287
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE14priv_push_backIRKS3_EEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %39)
          to label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE9push_backERKS3_.exit203 unwind label %bb.av

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE9push_backERKS3_.exit203: ; preds = %.loopexit
  %i.hh = load ptr, ptr %i.ab, align 8, !tbaa !211 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !161
  %.not.i.i267 = icmp eq ptr %i.hh, %i.hj
  br i1 %.not.i.i267, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE9push_backERKS3_.exit203
  store i32 3, ptr %i.hh, align 4, !tbaa !126
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store ptr %i.hk, ptr %i.ab, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ai:                                            ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE9push_backERKS3_.exit203
  %i.hl = load ptr, ptr %1, align 8, !tbaa !160   ; 4 uses
  %i.hm = ptrtoint ptr %i.hh to i64
  %i.hn = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn                    ; 5 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775804
  br i1 %i.hp, label %bb.aj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc269 unwind label %bb.aw

.noexc269:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.hq = ashr exact i64 %i.ho, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 2305843009213693951)
  %i.hu = select i1 %i.hs, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i.i268 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i268)
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #28
          to label %.noexc270 unwind label %bb.aw ; 4 uses

.noexc270:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  store i32 3, ptr %i.hx, align 4, !tbaa !126
  %i.hy = icmp sgt i64 %i.ho, 0
  br i1 %i.hy, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc270
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test20vector_copyable_onlyINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i217, i64 8
  %i.cq = load i32, ptr %.sroa.016.026.i218, align 4, !tbaa !126
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !297
  %i.cs = icmp eq i32 %i.cr, %i.cq
  br i1 %i.cs, label %bb.m, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread

bb.m:                                             ; preds = %.lr.ph.i216
  %i.ct = load ptr, ptr %.sroa.020.027.i217, align 8, !tbaa !122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !110 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i218, i64 4
  %.not24.i219 = icmp eq ptr %i.cv, %i.w
  br i1 %.not24.i219, label %.loopexit420, label %.lr.ph.i216, !llvm.loop !67

bb.n:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test12copyable_intELb0EEEl.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.v

bb.o:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.v

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit220.thread: ; preds = %.lr.ph.i216, %bb.j, %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i211
  %i.cz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit420:                                     ; preds = %bb.m, %.preheader.i214
  %i.db = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  store i32 2, ptr %37, align 4, !tbaa !297
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.dc = lshr i64 %i.ca, 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %.not.i.i208, label %._crit_edge.i.i, label %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i

_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i: ; preds = %.loopexit420
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !416, !noalias !10587
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !110, !noalias !10587 ; 3 uses
  %i.dg = icmp ne ptr %i.df, %i.w
  %i.dh = icmp ne i64 %i.dc, 0
  %or.cond18.i.i = and i1 %i.dh, %i.dg
  br i1 %or.cond18.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i, %.lr.ph.i.i
  %.sroa.06.020.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.df, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i ] ; 2 uses
  %.sroa.3.019.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %i.dc, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i, i64 8
  store i32 2, ptr %i.di, align 4, !tbaa !297
  %i.dj = load ptr, ptr %.sroa.06.020.i.i, align 8, !tbaa !122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !110 ; 3 uses
  %i.dm = add nsw i64 %.sroa.3.019.i.i, -1        ; 3 uses
  %i.dn = icmp ne ptr %i.dl, %i.w
  %i.do = icmp ne i64 %i.dm, 0
  %or.cond.i.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.loopexit420, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.dc, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i ], [ %i.dc, %.loopexit420 ], [ %i.dm, %.lr.ph.i.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi ptr [ %i.df, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i ], [ %i.w, %.loopexit420 ], [ %i.dl, %.lr.ph.i.i ]
  %i.dp = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  store ptr %.sroa.06.0.lcssa.i.i, ptr %23, align 8, !tbaa !293
  store ptr %i.w, ptr %24, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.178") align 8 %25, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  store ptr %i.w, ptr %26, align 8, !tbaa !293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  invoke void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6insertINS0_17constant_iteratorIS3_EEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSA_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSA_5bool_ILb0EEESM_E4typeENSC_ISD_Lb1EEESG_SG_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.178") align 8 %28, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %26, ptr nonnull align 4 dereferenceable(4) %37, i64 %.sroa.3.0.lcssa.i.i, ptr noundef nonnull byval(%"class.boost::container::constant_iterator.198") align 8 %27)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.r

bb.r:                                             ; preds = %.noexc, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.dr = load ptr, ptr %1, align 8, !tbaa !160
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = lshr i64 %i.dv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 2, ptr %i.c, align 4, !tbaa !126
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dw, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit unwind label %bb.x

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.dx = load i64, ptr %i.t, align 8, !tbaa !415 ; 2 uses
  %i.dy = add i64 %i.dx, -3
  %.not.i.i223 = icmp eq i64 %i.dx, 0             ; 3 uses
  %i.dz = select i1 %.not.i.i223, i64 0, i64 %i.dy ; 3 uses
  %i.ea = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.eb = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 2
  %.not.i224 = icmp eq i64 %i.dz, %i.ef
  br i1 %.not.i224, label %bb.s, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  br i1 %.not.i.i223, label %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !416, !noalias !10588
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !110, !noalias !10588
  br label %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226

_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226: ; preds = %bb.s, %bb.t
  %storemerge.i.i227 = phi ptr [ %i.ei, %bb.t ], [ %i.w, %bb.s ] ; 3 uses
  %i.ej = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.ek = load ptr, ptr %storemerge.i.i227, align 8, !tbaa !122
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3
  %.not12.i228 = icmp eq i64 %i.eo, %i.dz
  br i1 %.not12.i228, label %.preheader.i229, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

.preheader.i229:                                  ; preds = %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226
  %.not2425.i230 = icmp eq ptr %storemerge.i.i227, %i.w
  br i1 %.not2425.i230, label %.loopexit419, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.preheader.i229, %bb.u
  %.sroa.020.027.i232 = phi ptr [ %i.ev, %bb.u ], [ %storemerge.i.i227, %.preheader.i229 ] ; 2 uses
  %.sroa.016.026.i233 = phi ptr [ %i.ew, %bb.u ], [ %i.eb, %.preheader.i229 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i232, i64 8
  %i.eq = load i32, ptr %.sroa.016.026.i233, align 4, !tbaa !126
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !297
  %i.es = icmp eq i32 %i.er, %i.eq
  br i1 %i.es, label %bb.u, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread

bb.u:                                             ; preds = %.lr.ph.i231
  %i.et = load ptr, ptr %.sroa.020.027.i232, align 8, !tbaa !122
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !110 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i233, i64 4
  %.not24.i234 = icmp eq ptr %i.ev, %i.w
  br i1 %.not24.i234, label %.loopexit419, label %.lr.ph.i231, !llvm.loop !67

bb.v:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.n ], [ %i.cy, %bb.o ]
  %i.ex = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.ey = add i32 %i.ex, -1
  store i32 %i.ey, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.x:                                             ; preds = %bb.r
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ae

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235.thread: ; preds = %.lr.ph.i231, %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit, %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i226
  %i.fb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.fc = add i32 %i.fb, -1
  store i32 %i.fc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit419:                                     ; preds = %bb.u, %.preheader.i229
  %i.fd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store i32 3, ptr %38, align 4, !tbaa !297
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.fe = mul nsw i64 %i.dz, 3
  %i.ff = add nsw i64 %i.fe, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  br i1 %.not.i.i223, label %._crit_edge.i.i240, label %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238

_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238: ; preds = %.loopexit419
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !416, !noalias !10589
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !110, !noalias !10589 ; 3 uses
  %91 = icmp ne ptr %i.fi, %i.w
  %92 = icmp ne i64 %i.ff, 0
  %or.cond18.i.i239 = and i1 %92, %91
  br i1 %or.cond18.i.i239, label %.lr.ph.i.i245, label %._crit_edge.i.i240

.lr.ph.i.i245:                                    ; preds = %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238, %.lr.ph.i.i245
  %.sroa.06.020.i.i246 = phi ptr [ %i.fm, %.lr.ph.i.i245 ], [ %i.fi, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238 ] ; 2 uses
  %.sroa.3.019.i.i247 = phi i64 [ %i.fn, %.lr.ph.i.i245 ], [ %i.ff, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i246, i64 8
  store i32 3, ptr %i.fj, align 4, !tbaa !297
  %i.fk = load ptr, ptr %.sroa.06.020.i.i246, align 8, !tbaa !122
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !110 ; 3 uses
  %i.fn = add i64 %.sroa.3.019.i.i247, -1         ; 3 uses
  %i.fo = icmp ne ptr %i.fm, %i.w
  %i.fp = icmp ne i64 %i.fn, 0
  %or.cond.i.i248 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond.i.i248, label %.lr.ph.i.i245, label %._crit_edge.i.i240

._crit_edge.i.i240:                               ; preds = %.lr.ph.i.i245, %.loopexit419, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238
  %.sroa.3.0.lcssa.i.i241 = phi i64 [ %i.ff, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238 ], [ %i.ff, %.loopexit419 ], [ %i.fn, %.lr.ph.i.i245 ] ; 2 uses
  %.sroa.06.0.lcssa.i.i242 = phi ptr [ %i.fi, %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i.i238 ], [ %i.w, %.loopexit419 ], [ %i.fm, %.lr.ph.i.i245 ]
  %i.fq = icmp eq i64 %.sroa.3.0.lcssa.i.i241, 0
  br i1 %i.fq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i240
  store ptr %.sroa.06.0.lcssa.i.i242, ptr %17, align 8, !tbaa !293
  store ptr %i.w, ptr %18, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES9_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.178") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i240
  store ptr %i.w, ptr %20, align 8, !tbaa !293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6insertINS0_17constant_iteratorIS3_EEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSA_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSA_5bool_ILb0EEESM_E4typeENSC_ISD_Lb1EEESG_SG_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.178") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %20, ptr nonnull align 4 dereferenceable(4) %38, i64 %.sroa.3.0.lcssa.i.i241, ptr noundef nonnull byval(%"class.boost::container::constant_iterator.198") align 8 %21)
          to label %.noexc250 unwind label %bb.af

.noexc250:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc250, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.fr = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.fs = load ptr, ptr %1, align 8, !tbaa !160
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 2
  %i.fx = mul nsw i64 %i.fw, 3
  %i.fy = add nsw i64 %i.fx, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 3, ptr %i.d, align 4, !tbaa !126
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fy, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253 unwind label %bb.ag

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253:         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.fz = load i64, ptr %i.t, align 8, !tbaa !415 ; 2 uses
  %i.ga = add i64 %i.fz, -3
  %.not.i.i254 = icmp eq i64 %i.fz, 0             ; 2 uses
  %i.gb = select i1 %.not.i.i254, i64 0, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.gd = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 2
  %.not.i255 = icmp eq i64 %i.gb, %i.gh
  br i1 %.not.i255, label %bb.ab, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253
  br i1 %.not.i.i254, label %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !416, !noalias !10590
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !110, !noalias !10590
  br label %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257

_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257: ; preds = %bb.ab, %bb.ac
  %storemerge.i.i258 = phi ptr [ %i.gk, %bb.ac ], [ %i.w, %bb.ab ] ; 3 uses
  %i.gl = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.gm = load ptr, ptr %storemerge.i.i258, align 8, !tbaa !122
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 3
  %.not12.i259 = icmp eq i64 %i.gq, %i.gb
  br i1 %.not12.i259, label %.preheader.i260, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

.preheader.i260:                                  ; preds = %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257
  %.not2425.i261 = icmp eq ptr %storemerge.i.i258, %i.w
  br i1 %.not2425.i261, label %.loopexit, label %.lr.ph.i262

.lr.ph.i262:                                      ; preds = %.preheader.i260, %bb.ad
  %.sroa.020.027.i263 = phi ptr [ %i.gx, %bb.ad ], [ %storemerge.i.i258, %.preheader.i260 ] ; 2 uses
  %.sroa.016.026.i264 = phi ptr [ %i.gy, %bb.ad ], [ %i.gd, %.preheader.i260 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i263, i64 8
  %i.gs = load i32, ptr %.sroa.016.026.i264, align 4, !tbaa !126
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !297
  %i.gu = icmp eq i32 %i.gt, %i.gs
  br i1 %i.gu, label %bb.ad, label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread

bb.ad:                                            ; preds = %.lr.ph.i262
  %i.gv = load ptr, ptr %.sroa.020.027.i263, align 8, !tbaa !122
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !110 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i264, i64 4
  %.not24.i265 = icmp eq ptr %i.gx, %i.w
  br i1 %.not24.i265, label %.loopexit, label %.lr.ph.i262, !llvm.loop !67

bb.ae:                                            ; preds = %bb.x, %bb.w
  %.pn162 = phi { ptr, i32 } [ %i.ez, %bb.w ], [ %i.fa, %bb.x ]
  %i.gz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %common.resume

bb.af:                                            ; preds = %bb.z
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ag:                                            ; preds = %bb.aa
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.au

_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit266.thread: ; preds = %.lr.ph.i262, %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit253, %_ZNK5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE5beginEv.exit.i257
  %i.hd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.loopexit:                                        ; preds = %bb.ad, %.preheader.i260
  %i.hf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  store i32 3, ptr %39, align 4, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  store i32 3, ptr %40, align 4, !tbaa !297
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE14priv_push_backIRKS3_EEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %39)
          to label %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE9push_backERKS3_.exit203 unwind label %bb.av

_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE9push_backERKS3_.exit203: ; preds = %.loopexit
  %i.hh = load ptr, ptr %i.ab, align 8, !tbaa !211 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !161
  %.not.i.i267 = icmp eq ptr %i.hh, %i.hj
  br i1 %.not.i.i267, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE9push_backERKS3_.exit203
  store i32 3, ptr %i.hh, align 4, !tbaa !126
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store ptr %i.hk, ptr %i.ab, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ai:                                            ; preds = %_ZN5boost9container13stable_vectorINS0_4test12copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE9push_backERKS3_.exit203
  %i.hl = load ptr, ptr %1, align 8, !tbaa !160   ; 4 uses
  %i.hm = ptrtoint ptr %i.hh to i64
  %i.hn = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn                    ; 5 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775804
  br i1 %i.hp, label %bb.aj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc269 unwind label %bb.aw

.noexc269:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.hq = ashr exact i64 %i.ho, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 2305843009213693951)
  %i.hu = select i1 %i.hs, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i.i268 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i268)
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #28
          to label %.noexc270 unwind label %bb.aw ; 4 uses

.noexc270:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  store i32 3, ptr %i.hx, align 4, !tbaa !126
  %i.hy = icmp sgt i64 %i.ho, 0
  br i1 %i.hy, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc270
end_hunk_5
