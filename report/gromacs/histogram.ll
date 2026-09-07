Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/histogram?download=true
inline.NumInlined: 1115
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx35AnalysisDataWeightedHistogramModule11pointsAddedERKNS_23AnalysisDataPointSetRefE:bb.a
  %2 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp slt i32 %i.j, 2
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 24) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.33)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.e unwind label %.thread31

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %2, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx35AnalysisDataWeightedHistogramModule11pointsAddedERKNS_23AnalysisDataPointSetRefE, ptr %i.m, align 8, !tbaa !132
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.2, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !132
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 778, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !87
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.l, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.l, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #33
          to label %bb.n unwind label %bb.g

.thread:                                          ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread31:                                        ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #31
  br label %.sink.split

bb.g:                                             ; preds = %bb.e, %bb.f
  %.015 = phi i1 [ false, %bb.f ], [ true, %bb.e ]
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #31
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.015, label %bb.h, label %bb.m

.sink.split:                                      ; preds = %.thread, %.thread31
  %.pn.pn30.ph = phi { ptr, i32 } [ %i.o, %.thread31 ], [ %i.n, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.pn.pn30 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %.pn.pn30.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.l) #31
  br label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121  ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load float, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !72 ; 2 uses
  %i.u = load float, ptr %i.s, align 8, !tbaa !110 ; 2 uses
  %i.v = fcmp olt float %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.x = load i8, ptr %i.w, align 8, !tbaa !111, !range !43, !noundef !44
  %i.y = xor i8 %i.x, 1
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  br label %_ZNK3gmx25AnalysisHistogramSettings7findBinEf.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = fsub float %i.t, %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !112
  %i.ae = fmul float %i.ab, %i.ad
  %i.af = fptoui float %i.ae to i64               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp ugt i64 %i.ah, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.aj = load i8, ptr %i.ai, align 8, !range !43
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = add i64 %i.ah, -1
  %spec.select.i = select i1 %i.ak, i64 %i.al, i64 -1
  %.0.i = select i1 %.not.i, i64 %i.af, i64 %spec.select.i
  br label %_ZNK3gmx25AnalysisHistogramSettings7findBinEf.exit

_ZNK3gmx25AnalysisHistogramSettings7findBinEf.exit: ; preds = %bb.j, %bb.k
  %.1.i = phi i64 [ %i.aa, %bb.j ], [ %.0.i, %bb.k ] ; 2 uses
  %.not21 = icmp eq i64 %.1.i, -1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3gmx25AnalysisHistogramSettings7findBinEf.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !126 ; 2 uses
  %i.ao = load i32, ptr %1, align 8, !tbaa !100
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !125
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 24
  %i.aw = urem i64 %i.ap, %i.av
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !99
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !63
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !87
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bg
  %sext = shl i64 %.1.i, 32
  %i.bi = ashr exact i64 %sext, 29
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi ; 2 uses
  %.pre = load double, ptr %i.bj, align 8, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %i.bk = phi double [ %.pre, %.lr.ph ], [ %i.bo, %bb.l ]
  %.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i24, %bb.l ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.ptr, i64 %indvars.iv
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !72
  %i.bn = fpext float %i.bm to double
  %i.bo = fadd double %i.bk, %i.bn                ; 2 uses
  store double %i.bo, ptr %i.bj, align 8, !tbaa !129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.sroa.0.0.copyload.i.i.i24 = load ptr, ptr %i.c, align 8 ; 2 uses
  %i.bp = ptrtoint ptr %.sroa.0.0.copyload.i.i.i24 to i64
  %i.bq = sub i64 %i.f, %i.bp
  %sext39 = shl i64 %i.bq, 28
  %i.br = ashr i64 %sext39, 32
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.l, label %.loopexit, !llvm.loop !183

.loopexit:                                        ; preds = %bb.l, %_ZNK3gmx25AnalysisHistogramSettings7findBinEf.exit
  ret void

bb.m:                                             ; preds = %bb.g, %bb.h
  %.pn.pn29 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %.pn.pn30, %bb.h ]
  resume { ptr, i32 } %.pn.pn29

bb.n:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx35AnalysisDataWeightedHistogramModule13frameFinishedERKNS_23AnalysisDataFrameHeaderE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %1, align 4, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = urem i64 %i.f, %i.m
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(45) ptr @_ZN3gmx19AnalysisDataStorage10startFrameERKNS_23AnalysisDataFrameHeaderE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 6 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !93
  %.fr23 = freeze i64 %i.t                        ; 8 uses
  %i.u = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a
  %.not24 = icmp eq i64 %.fr23, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  br i1 %.not24, label %.lr.ph21.split, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph21
  %i.y = add i64 %.fr23, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %.fr23, 17
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp ugt i64 %i.y, 2147483647
  %i.ab = and i64 %.fr23, 3                       ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 4, i64 %i.ab
  %n.vec = sub nsw i64 %.fr23, %i.ad              ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.01419.us = phi i64 [ %i.cl, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %sext.us = shl i64 %.01419.us, 32
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.af = ashr exact i64 %sext.us, 30
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !87
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj ; 4 uses
  tail call void @_ZN3gmx24AnalysisDataStorageFrame13selectDataSetEm(ptr noundef nonnull align 8 dereferenceable(45) %i.q, i64 noundef %.01419.us)
  %i.al = load i32, ptr %i.w, align 4, !tbaa !115 ; 6 uses
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !64  ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.an = add i32 %i.al, %i.z
  %i.ao = icmp slt i32 %i.an, %i.al
  %i.ap = or i1 %i.ao, %i.aa
  br i1 %i.ap, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 32
  %i.ar = ashr exact i64 %i.aq, 29
  %i.as = getelementptr inbounds i8, ptr %i.ak, i64 %i.ar
  %wide.load = load <4 x double>, ptr %i.as, align 8, !tbaa !129
  %i.at = fptrunc <4 x double> %wide.load to <4 x float>
  %i.au = add nsw <4 x i32> %broadcast.splat, %vec.ind
  %i.av = sext <4 x i32> %i.au to <4 x i64>
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.am, <4 x i64> %i.av ; 2 uses
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.at, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !72
  %wide.gep29 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8 ; 2 uses
  %i.aw = extractelement <4 x ptr> %wide.gep29, i64 0
  %wide.vec = load <8 x i64>, ptr %i.aw, align 8, !tbaa !74
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ax = or <4 x i64> %strided.vec, splat (i64 5)
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> %i.ax, <4 x ptr> align 8 %wide.gep29, <4 x i1> splat (i1 true)), !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %scalar.ph.preheader, label %vector.body, !llvm.loop !184

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph.us
  %.018.us.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %vector.body ] ; 6 uses
  %i.az = sub i64 %.fr23, %.018.us.ph
  %.neg = add nsw i64 %.018.us.ph, 1
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ba = trunc i64 %.018.us.ph to i32
  %sext17.us.prol = shl i64 %.018.us.ph, 32
  %i.bb = ashr exact i64 %sext17.us.prol, 29
  %i.bc = getelementptr inbounds i8, ptr %i.ak, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !129
  %i.be = fptrunc double %i.bd to float
  %i.bf = add nsw i32 %i.al, %i.ba
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.bg ; 2 uses
  store float %i.be, ptr %i.bh, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !74
  %i.bk = or i64 %i.bj, 5
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !74
  %i.bl = add nuw nsw i64 %.018.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.018.us.unr = phi i64 [ %.018.us.ph, %scalar.ph.preheader ], [ %i.bl, %scalar.ph.prol ]
  %i.bm = icmp eq i64 %.fr23, %.neg
  br i1 %i.bm, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.018.us = phi i64 [ %i.ck, %scalar.ph ], [ %.018.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bn = trunc i64 %.018.us to i32
  %sext17.us = shl i64 %.018.us, 32
  %i.bo = ashr exact i64 %sext17.us, 29
  %i.bp = getelementptr inbounds i8, ptr %i.ak, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !129
  %i.br = fptrunc double %i.bq to float
  %i.bs = add nsw i32 %i.al, %i.bn
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.bt ; 2 uses
  store float %i.br, ptr %i.bu, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !74
  %i.bx = or i64 %i.bw, 5
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !74
  %i.by = add nuw i64 %.018.us, 1                 ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %sext17.us.1 = shl i64 %i.by, 32
  %i.ca = ashr exact i64 %sext17.us.1, 29
  %i.cb = getelementptr inbounds i8, ptr %i.ak, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !129
  %i.cd = fptrunc double %i.cc to float
  %i.ce = add nsw i32 %i.al, %i.bz
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.cf ; 2 uses
  store float %i.cd, ptr %i.cg, align 8, !tbaa !72
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !74
  %i.cj = or i64 %i.ci, 5
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !74
  %i.ck = add nuw i64 %.018.us, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ck, %.fr23
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !185

._crit_edge.us:                                   ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  store i8 1, ptr %i.x, align 4, !tbaa !119
  %i.cl = add nuw i64 %.01419.us, 1               ; 2 uses
  %i.cm = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.cn = icmp ult i64 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph.us, label %._crit_edge22, !llvm.loop !186

._crit_edge22:                                    ; preds = %._crit_edge.us, %.lr.ph21.split, %bb.a
  tail call void @_ZN3gmx24AnalysisDataStorageFrame11finishFrameEv(ptr noundef nonnull align 8 dereferenceable(45) %i.q)
  ret void

.lr.ph21.split:                                   ; preds = %.lr.ph21, %.lr.ph21.split
  %.01419 = phi i64 [ %i.co, %.lr.ph21.split ], [ 0, %.lr.ph21 ] ; 2 uses
  tail call void @_ZN3gmx24AnalysisDataStorageFrame13selectDataSetEm(ptr noundef nonnull align 8 dereferenceable(45) %i.q, i64 noundef %.01419)
  %i.co = add nuw i64 %.01419, 1                  ; 2 uses
  %i.cp = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.cq = icmp ult i64 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph21.split, label %._crit_edge22, !llvm.loop !186
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx35AnalysisDataWeightedHistogramModule19frameFinishedSerialEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = trunc i64 %1 to i32
  tail call void @_ZN3gmx19AnalysisDataStorage17finishFrameSerialEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx35AnalysisDataWeightedHistogramModule12dataFinishedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN3gmx19AnalysisDataStorage17finishDataStorageEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn16_N3gmx35AnalysisDataWeightedHistogramModuleD1Ev(ptr noundef %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN3gmx35AnalysisDataWeightedHistogramModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn16_N3gmx35AnalysisDataWeightedHistogramModuleD0Ev(ptr noundef %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN3gmx35AnalysisDataWeightedHistogramModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #31, !inline_history !187
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 32) #32, !inline_history !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZThn16_NK3gmx35AnalysisDataWeightedHistogramModule5flagsEv(ptr nofree readnone captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i32 21
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZThn16_N3gmx35AnalysisDataWeightedHistogramModule19parallelDataStartedEPNS_20AbstractAnalysisDataERKNS_27AnalysisDataParallelOptionsE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = tail call noundef zeroext i1 @_ZN3gmx35AnalysisDataWeightedHistogramModule19parallelDataStartedEPNS_20AbstractAnalysisDataERKNS_27AnalysisDataParallelOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZThn16_N3gmx35AnalysisDataWeightedHistogramModule12frameStartedERKNS_23AnalysisDataFrameHeaderE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !126  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  %i.m = urem i64 %i.e, %i.l
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !128  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not6.i.i.i.i.i.i, label %_ZN3gmx35AnalysisDataWeightedHistogramModule12frameStartedERKNS_23AnalysisDataFrameHeaderE.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.a
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %reass.sub.i = sub i64 %i.r, %i.s
  %i.t = and i64 %reass.sub.i, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.t, i1 false), !tbaa !129
  br label %_ZN3gmx35AnalysisDataWeightedHistogramModule12frameStartedERKNS_23AnalysisDataFrameHeaderE.exit

_ZN3gmx35AnalysisDataWeightedHistogramModule12frameStartedERKNS_23AnalysisDataFrameHeaderE.exit: ; preds = %bb.a, %.lr.ph.i.i.i.i.preheader.i.i
  ret void
}

; Function Attrs: uwtable
define void @_ZThn16_N3gmx35AnalysisDataWeightedHistogramModule11pointsAddedERKNS_23AnalysisDataPointSetRefE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN3gmx35AnalysisDataWeightedHistogramModule11pointsAddedERKNS_23AnalysisDataPointSetRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: uwtable
define void @_ZThn16_N3gmx35AnalysisDataWeightedHistogramModule13frameFinishedERKNS_23AnalysisDataFrameHeaderE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN3gmx35AnalysisDataWeightedHistogramModule13frameFinishedERKNS_23AnalysisDataFrameHeaderE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1)
  ret void
}

; Function Attrs: uwtable
define void @_ZThn16_N3gmx35AnalysisDataWeightedHistogramModule19frameFinishedSerialEm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = trunc i64 %1 to i32
  tail call void @_ZN3gmx19AnalysisDataStorage17finishFrameSerialEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
  ret void
}

; Function Attrs: uwtable
define void @_ZThn16_N3gmx35AnalysisDataWeightedHistogramModule12dataFinishedEv(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN3gmx19AnalysisDataStorage17finishDataStorageEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx28AnalysisDataBinAverageModuleD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3gmx28AnalysisDataBinAverageModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZNK3gmx28AnalysisDataBinAverageModule5flagsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i32 21
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx28AnalysisDataBinAverageModule11dataStartedEPNS_20AbstractAnalysisDataE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK3gmx20AbstractAnalysisData12dataSetCountEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  tail call void @_ZN3gmx25AbstractAnalysisArrayData14setColumnCountEm(ptr noundef nonnull align 8 dereferenceable(98) %0, i64 noundef %i.a)
end_hunk_0
