inline.NumInlined: 2075
inline.NumDeleted: 1248
begin_hunk_0_@_ZN6duckdb8TopNHeap19CheckBoundaryValuesERNS_9DataChunkES2_RNS_17TopNBoundaryValueE:bb.a
          cleanup
  br label %bb.bx

.lr.ph:                                           ; preds = %bb.m, %bb.o
  %.sroa.0107.0123 = phi ptr [ %i.aq, %bb.o ], [ %i.am, %bb.m ] ; 2 uses
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0107.0123, i8 noundef zeroext 2)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0107.0123, i64 104 ; 2 uses
  %.not121 = icmp eq ptr %i.aq, %i.ao
  br i1 %.not121, label %.loopexit, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit:                                        ; preds = %bb.o, %bb.m, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !368 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 %i.au, ptr %i.av, align 8, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !299, !nonnull !78, !align !79 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !151
  %.not130 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not130, label %.critedge.thread, label %.lr.ph127

.lr.ph127:                                        ; preds = %.loopexit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  %i.bh = icmp eq ptr %5, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.r

bb.q:                                             ; preds = %bb.bo, %bb.bn
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.r:                                             ; preds = %.lr.ph127, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit
  %i.bm = phi ptr [ null, %.lr.ph127 ], [ %i.ej, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit ]
  %.061126 = phi i64 [ 0, %.lr.ph127 ], [ %i.bs, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit ] ; 20 uses
  %.062125 = phi i64 [ %i.au, %.lr.ph127 ], [ %i.dl, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit ] ; 7 uses
  %.064124 = phi i64 [ 0, %.lr.ph127 ], [ %.165, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit ] ; 3 uses
  %.not75 = icmp eq ptr %i.bm, null
  br i1 %.not75, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.061126)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bo = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.061126)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.bn, ptr noundef nonnull align 8 dereferenceable(104) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.062125)
          to label %bb.z unwind label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.w:                                             ; preds = %bb.r
  %i.bq = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.061126)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.br = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.061126)
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.bq, ptr noundef nonnull align 8 dereferenceable(104) %i.br)
          to label %bb.z unwind label %bb.v

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.bs = add nuw i64 %.061126, 1                 ; 3 uses
  %i.bt = load ptr, ptr %i.ax, align 8, !tbaa !299, !nonnull !78, !align !79 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !150
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !151
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 24
  %i.cb = icmp ne i64 %i.bs, %i.ca
  %i.cc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %.061126)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !379
  %i.cf = icmp eq i8 %i.ce, 3
  %i.cg = load ptr, ptr %i.ax, align 8, !tbaa !299, !nonnull !78, !align !79 ; 2 uses
  br i1 %i.cf, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.ch = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 noundef %.061126)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !155
  %i.cj = icmp eq i8 %i.ci, 2
  br i1 %i.cj, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.ck = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.061126)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %.061126)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cm = invoke noundef i64 @_ZN6duckdb16VectorOperations16DistinctLessThanERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_NS3_INS_12ValidityMaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %i.ck, ptr noundef nonnull align 8 dereferenceable(104) %i.cl, ptr nonnull %5, i64 noundef %.062125, ptr nonnull %i.bd, ptr nonnull %i.be, i64 0)
          to label %bb.as unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.z
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ah:                                            ; preds = %bb.ac
  %i.co = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.061126)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %i.cp = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %.061126)
          to label %bb.aj unwind label %bb.ag

bb.aj:                                            ; preds = %bb.ai
  %i.cq = invoke noundef i64 @_ZN6duckdb16VectorOperations29DistinctGreaterThanNullsFirstERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_NS3_INS_12ValidityMaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %i.co, ptr noundef nonnull align 8 dereferenceable(104) %i.cp, ptr nonnull %5, i64 noundef %.062125, ptr nonnull %i.bd, ptr nonnull %i.be, i64 0)
          to label %bb.as unwind label %bb.ag

bb.ak:                                            ; preds = %bb.aa
  %i.cr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 noundef %.061126)
          to label %bb.al unwind label %bb.ag

bb.al:                                            ; preds = %bb.ak
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !155
  %i.ct = icmp eq i8 %i.cs, 2
  br i1 %i.ct, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.cu = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.061126)
          to label %bb.an unwind label %bb.ag

bb.an:                                            ; preds = %bb.am
  %i.cv = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %.061126)
          to label %bb.ao unwind label %bb.ag

bb.ao:                                            ; preds = %bb.an
  %i.cw = invoke noundef i64 @_ZN6duckdb16VectorOperations26DistinctLessThanNullsFirstERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_NS3_INS_12ValidityMaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %i.cu, ptr noundef nonnull align 8 dereferenceable(104) %i.cv, ptr nonnull %5, i64 noundef %.062125, ptr nonnull %i.bd, ptr nonnull %i.be, i64 0)
          to label %bb.as unwind label %bb.ag

bb.ap:                                            ; preds = %bb.al
  %i.cx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.061126)
          to label %bb.aq unwind label %bb.ag

bb.aq:                                            ; preds = %bb.ap
  %i.cy = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %.061126)
          to label %bb.ar unwind label %bb.ag

bb.ar:                                            ; preds = %bb.aq
  %i.cz = invoke noundef i64 @_ZN6duckdb16VectorOperations19DistinctGreaterThanERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_NS3_INS_12ValidityMaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %i.cx, ptr noundef nonnull align 8 dereferenceable(104) %i.cy, ptr nonnull %5, i64 noundef %.062125, ptr nonnull %i.bd, ptr nonnull %i.be, i64 0)
          to label %bb.as unwind label %bb.ag

bb.as:                                            ; preds = %bb.ar, %bb.ao, %bb.aj, %bb.af
  %.059 = phi i64 [ %i.cw, %bb.ao ], [ %i.cm, %bb.af ], [ %i.cq, %bb.aj ], [ %i.cz, %bb.ar ] ; 5 uses
  %.not76 = icmp eq i64 %.059, 0
  br i1 %.not76, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.da = load ptr, ptr %i.bf, align 8, !tbaa !375
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.064124
  %i.dc = load ptr, ptr %i.bd, align 8, !tbaa !375
  %i.dd = shl i64 %.059, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.db, ptr align 4 %i.dc, i64 %i.dd, i1 false)
  %i.de = add i64 %.059, %.064124
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.165 = phi i64 [ %i.de, %bb.at ], [ %.064124, %bb.as ] ; 5 uses
  %i.df = sub i64 %.062125, %.059                 ; 2 uses
  %i.dg = icmp ne i64 %.062125, %.059
  %or.cond = select i1 %i.cb, i1 %i.dg, i1 false
  br i1 %or.cond, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  %i.dh = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.061126)
          to label %bb.aw unwind label %bb.bm

bb.aw:                                            ; preds = %bb.av
  %i.di = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.061126)
          to label %bb.ax unwind label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.dh, ptr noundef nonnull align 8 dereferenceable(104) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.df)
          to label %bb.ay unwind label %bb.bm

bb.ay:                                            ; preds = %bb.ax
  %i.dj = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.061126)
          to label %bb.az unwind label %bb.bm

bb.az:                                            ; preds = %bb.ay
  %i.dk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %.061126)
          to label %bb.ba unwind label %bb.bm

bb.ba:                                            ; preds = %bb.az
  %i.dl = invoke noundef i64 @_ZN6duckdb16VectorOperations15NotDistinctFromERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, ptr noundef nonnull align 8 dereferenceable(104) %i.dk, ptr nonnull %i.be, i64 noundef %i.df, ptr nonnull %i.bg, ptr null)
          to label %bb.bb unwind label %bb.bm

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.bh, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dm = load ptr, ptr %i.bj, align 8, !tbaa !205 ; 2 uses
  %i.dn = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !206
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !149
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.ds = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bf, %bb.be, %bb.bc
  %i.dt = load ptr, ptr %i.bk, align 8, !tbaa !205 ; 8 uses
  store <2 x ptr> %i.dn, ptr %i.aw, align 8, !tbaa !206
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.du, align 8, !tbaa !208
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 0, ptr %i.dy, align 4, !tbaa !210
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #21, !inline_history !380
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #21, !inline_history !380
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !149
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.eg = add nsw i32 %i.dx, -1
  store i32 %i.eg, ptr %i.du, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.eh = atomicrmw volatile add ptr %i.du, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dx, %bb.bj ], [ %i.eh, %bb.bk ]
  %i.ei = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ei, label %bb.bl, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, !prof !87

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #21
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit: ; preds = %bb.bb, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bl
  %i.ej = load ptr, ptr %i.bg, align 8, !tbaa !375 ; 2 uses
  store ptr %i.ej, ptr %5, align 8, !tbaa !375
  %i.ek = load ptr, ptr %i.ax, align 8, !tbaa !299, !nonnull !78, !align !79 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !150
  %i.en = load ptr, ptr %i.ek, align 8, !tbaa !151
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 24
  %i.es = icmp ult i64 %i.bs, %i.er
  br i1 %i.es, label %bb.r, label %.critedge, !llvm.loop !381

bb.bm:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.critedge:                                        ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, %bb.au
  %.not158 = icmp eq i64 %.165, 0
  br i1 %.not158, label %.critedge.thread, label %.critedge.a

.critedge.a:                                      ; preds = %.critedge
  %.pre = load i64, ptr %i.at, align 8, !tbaa !368
  %i.eu = icmp ult i64 %.165, %.pre
  br i1 %i.eu, label %bb.bn, label %.critedge.thread

bb.bn:                                            ; preds = %.critedge.a
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  invoke void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 noundef %.165)
          to label %bb.bo unwind label %bb.q

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 noundef %.165)
          to label %.critedge.thread unwind label %bb.q

.critedge.thread:                                 ; preds = %.loopexit, %.critedge.a, %bb.bo, %.critedge
  %6 = phi i1 [ false, %.critedge ], [ true, %.critedge.a ], [ true, %bb.bo ], [ false, %.loopexit ]
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !205 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %.critedge.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.ey, align 8, !tbaa !208
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !210
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #21, !inline_history !382
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #21, !inline_history !382
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.br:                                            ; preds = %bb.bp
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !149
  %.not.i.i.i.i.i84 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i.i84, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i = phi i32 [ %i.fb, %bb.bs ], [ %i.fl, %bb.bt ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fm, label %bb.bu, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !87

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %.critedge.thread, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bw

bb.bv:                                            ; preds = %bb.v, %bb.bm, %bb.ag, %bb.q
  %.pn79 = phi { ptr, i32 } [ %i.bl, %bb.q ], [ %i.bp, %bb.v ], [ %i.et, %bb.bm ], [ %i.cn, %bb.ag ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bx

bb.bw:                                            ; preds = %bb.a, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %.1 = phi i1 [ %6, %_ZN6duckdb15SelectionVectorD2Ev.exit ], [ true, %bb.a ]
  %i.fn = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bw
  call void @_ZdlPv(ptr noundef %i.fn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.1

bb.bx:                                            ; preds = %bb.bv, %bb.p, %bb.n
  %.pn82 = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %.pn79, %bb.bv ], [ %i.ap, %bb.n ]
  %i.fq = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.bx
  call void @_ZdlPv(ptr noundef %i.fq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn82
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17TopNBoundaryValue16GetBoundaryValueB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(194) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #24
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !147
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !148  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.h, ptr %i.a, align 8, !tbaa !179
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %0, align 8, !tbaa !88
  %i.k = load i64, ptr %i.a, align 8, !tbaa !179
  store i64 %i.k, ptr %i.e, align 8, !tbaa !149
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !149
  store i8 %i.m, ptr %i.l, align 1, !tbaa !149
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !179  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !148
  %i.p = load ptr, ptr %0, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  ret void

bb.f:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  resume { ptr, i32 } %i.s
}

declare void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN6duckdb20CreateSortKeyHelpers13DecodeSortKeyENS_8string_tERNS_9DataChunkEmRKNS_6vectorINS_14OrderModifiersELb1ESaIS5_EEE(i64, ptr, ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.128", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !383
  %i.e = load ptr, ptr %0, align 8, !tbaa !384    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !179
  store i64 %i.i, ptr %i.b, align 8, !tbaa !179
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !180

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb16VectorOperations16DistinctLessThanERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_NS3_INS_12ValidityMaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr, i64 noundef, ptr, ptr, i64) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb16VectorOperations29DistinctGreaterThanNullsFirstERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_NS3_INS_12ValidityMaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr, i64 noundef, ptr, ptr, i64) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb16VectorOperations26DistinctLessThanNullsFirstERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_NS3_INS_12ValidityMaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr, i64 noundef, ptr, ptr, i64) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb16VectorOperations19DistinctGreaterThanERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_NS3_INS_12ValidityMaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr, i64 noundef, ptr, ptr, i64) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb16VectorOperations15NotDistinctFromERNS_6VectorES2_NS_12optional_ptrIKNS_15SelectionVectorELb1EEEmNS3_IS4_Lb1EEES7_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr, i64 noundef, ptr, ptr) local_unnamed_addr #1

end_hunk_0
begin_hunk_1_@_ZN6duckdb8TopNHeap6ReduceEv:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.s ], [ %i.bs, %bb.t ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.u, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !87

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZN6duckdb15SelectionVectorD2Ev.exit
  ret void

bb.w:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.j, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %i.ao, %bb.j ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  br label %.body

.body:                                            ; preds = %bb.e, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.ad, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.af, %bb.g ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.y ], [ %i.ae, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8TopNHeap8FinalizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(912) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !374  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !374  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb9TopNEntryESt6vectorIS3_NS2_19arena_stl_allocatorIS3_EEEEEEvT_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb9TopNEntryESt6vectorIS3_NS2_19arena_stl_allocatorIS3_EEEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.b, ptr %i.d, i64 noundef %i.k)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb9TopNEntryESt6vectorIS3_NS2_19arena_stl_allocatorIS3_EEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.b, ptr %i.d)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb9TopNEntryESt6vectorIS3_NS2_19arena_stl_allocatorIS3_EEEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb9TopNEntryESt6vectorIS3_NS2_19arena_stl_allocatorIS3_EEEEEEvT_SA_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv() local_unnamed_addr #1

declare void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb9DataChunk7FlattenEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN6duckdb10StringHeap7DestroyEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN6duckdb10StringHeap4MoveERS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN6duckdb9DataChunk9ReferenceERS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8TopNHeap14InitializeScanERNS_13TopNScanStateEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(912) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !321  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !320  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEEC2EmRKS3_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ArenaAllocator9AlignNextEv(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.copyload.i.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !323  ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !324  ; 2 uses
  %i.m = add i64 %i.l, %i.h                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !328
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_9TopNEntryEEEE8allocateERS3_m.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.h)
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !323 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i, i64 24
  %.pre4.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !324 ; 2 uses
  %.pre5.i.i.i.i.i.i.i.i = add i64 %.pre4.i.i.i.i.i.i.i.i, %i.h
  br label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_9TopNEntryEEEE8allocateERS3_m.exit.i.i.i.i.i

_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_9TopNEntryEEEE8allocateERS3_m.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ %.pre5.i.i.i.i.i.i.i.i, %bb.d ], [ %i.m, %bb.c ]
  %i.q = phi i64 [ %.pre4.i.i.i.i.i.i.i.i, %bb.d ], [ %i.l, %bb.c ]
  %i.r = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !329
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  store i64 %.pre-phi.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !324
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !374
  %.pre17 = load ptr, ptr %i.c, align 8, !tbaa !374
  br label %_ZNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_9TopNEntryEEEE8allocateERS3_m.exit.i.i.i.i.i, %bb.a
  %i.w = phi ptr [ %.pre17, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_9TopNEntryEEEE8allocateERS3_m.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.x = phi ptr [ %.pre, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_9TopNEntryEEEE8allocateERS3_m.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.y = phi ptr [ %i.v, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorINS0_9TopNEntryEEEE8allocateERS3_m.exit.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  %.not13.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not13.i.i.i, label %_ZN6duckdb6vectorINS_9TopNEntryELb0ENS_19arena_stl_allocatorIS1_EEEC2ERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEEC2EmRKS3_.exit.i.i, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.y, %_ZNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEEC2EmRKS3_.exit.i.i ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEEC2EmRKS3_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.014.i.i.i, i64 24, i1 false), !tbaa.struct !330
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.w
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_9TopNEntryELb0ENS_19arena_stl_allocatorIS1_EEEC2ERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !399

_ZN6duckdb6vectorINS_9TopNEntryELb0ENS_19arena_stl_allocatorIS1_EEEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEEC2EmRKS3_.exit.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.y, %_ZNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEEC2EmRKS3_.exit.i.i ], [ %i.aa, %.lr.ph.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24                ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !400 ; 2 uses
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !402 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 3 uses
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb6vectorINS_9TopNEntryELb0ENS_19arena_stl_allocatorIS1_EEEC2ERKS4_.exit
  %i.ao = sub nuw nsw i64 %i.af, %i.am
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.ao)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.f:                                             ; preds = %_ZN6duckdb6vectorINS_9TopNEntryELb0ENS_19arena_stl_allocatorIS1_EEEC2ERKS4_.exit
  %i.ap = icmp ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.g, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !400
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.not = icmp eq ptr %.0.lcssa.i.i.i, %i.y
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  br i1 %2, label %3, label %6

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %.lr.ph
  %.016 = phi i64 [ %i.aw, %.lr.ph ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.016
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !371
  %i.au = trunc i64 %i.at to i32
  %i.av = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.016)
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  %i.aw = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !403

3:                                                ; preds = %._crit_edge
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %5 = load i64, ptr %4, align 8, !tbaa !297
  br label %6

6:                                                ; preds = %._crit_edge, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %._crit_edge ]
  store i64 %7, ptr %1, align 8, !tbaa !404
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.128", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400
  %i.e = load ptr, ptr %0, align 8, !tbaa !402    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !179
  store i64 %i.i, ptr %i.b, align 8, !tbaa !179
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorIjLb1ESaIjEE3getILb1EEERjm.exit, label %bb.b, !prof !180

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorIjLb1ESaIjEE3getILb1EEERjm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8TopNHeap4ScanERNS_13TopNScanStateERNS_9DataChunkERm(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !179    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !402  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  %.not = icmp ult i64 %i.a, %i.i
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %4, align 8, !tbaa !375
  %i.l = add i64 %i.a, 2048
  store i64 %i.l, ptr %3, align 8, !tbaa !179
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %i.i, %i.a
  %i.n = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 2048)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.n, i64 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !205  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.r, align 8, !tbaa !208
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !210
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #21, !inline_history !382
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #21, !inline_history !382
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !149
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.j, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !87

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6duckdb15SelectionVectorD2Ev.exit
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb12PhysicalTopN17GetLocalSinkStateERNS_16ExecutionContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.23") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = tail call noalias noundef nonnull dereferenceable(960) ptr @_Znwm(i64 noundef 960) #23, !noalias !410 ; 7 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !179, !noalias !410
  %i.g = load i64, ptr %i.d, align 8, !tbaa !179, !noalias !410
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 -1, i64 16, i1 false), !noalias !410
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !noalias !410
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb18TopNLocalSinkStateE, i64 16), ptr %i.e, align 8, !tbaa !16, !noalias !410
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke void @_ZN6duckdb8TopNHeapC1ERNS_16ExecutionContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERKNS3_INS_16BoundOrderByNodeELb1ESaIS9_EEEmm(ptr noundef nonnull align 8 dereferenceable(912) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.f, i64 noundef %i.g)
end_hunk_1
begin_hunk_2_@bcmp
!203 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!204 = !{!197, !32, i64 168}
!205 = !{!202, !203, i64 0}
!206 = !{!9, !9, i64 0}
!207 = !{!200, !201, i64 0}
!208 = !{!209, !4, i64 8}
!209 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!210 = !{!209, !4, i64 12}
!211 = distinct !{null, null, null, null}
!212 = !{!174, !174, i64 0}
!213 = distinct !{null, null, null, null, null, null, null}
!214 = distinct !{!214, !15}
!215 = !{!53, !53, i64 0}
!216 = distinct !{null, null, null}
!217 = distinct !{null, null, null}
!218 = !{!219, !219, i64 0}
!219 = !{!"p1 _ZTSN6duckdb9AllocatorE", !9, i64 0}
!220 = !{!221, !221, i64 0}
!221 = !{!"p1 _ZTSN6duckdb13BufferManagerE", !9, i64 0}
!222 = !{!223, !223, i64 0}
!223 = !{!"p1 _ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !9, i64 0}
!224 = !{!225, !225, i64 0}
!225 = !{!"p1 _ZTSN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEE", !9, i64 0}
!226 = !{!227, !32, i64 160}
!227 = !{!"_ZTSN6duckdb8TopNHeapE", !219, i64 0, !221, i64 8, !228, i64 16, !246, i64 88, !223, i64 120, !225, i64 128, !254, i64 136, !32, i64 160, !32, i64 168, !32, i64 176, !260, i64 184, !277, i64 256, !277, i64 328, !277, i64 400, !277, i64 472, !290, i64 544, !291, i64 616, !277, i64 640, !277, i64 712, !89, i64 784, !291, i64 816, !291, i64 840, !291, i64 864, !291, i64 888}
!228 = !{!"_ZTSN6duckdb14ArenaAllocatorE", !219, i64 0, !32, i64 8, !229, i64 16, !236, i64 24, !237, i64 32, !32, i64 64}
!229 = !{!"_ZTSN6duckdb10unique_ptrINS_10ArenaChunkESt14default_deleteIS1_ELb0EEE", !230, i64 0}
!230 = !{!"_ZTSSt10unique_ptrIN6duckdb10ArenaChunkESt14default_deleteIS1_EE", !231, i64 0}
!231 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10ArenaChunkESt14default_deleteIS1_ELb1ELb1EE", !232, i64 0}
!232 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10ArenaChunkESt14default_deleteIS1_EE", !233, i64 0}
!233 = !{!"_ZTSSt5tupleIJPN6duckdb10ArenaChunkESt14default_deleteIS1_EEE", !234, i64 0}
!234 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10ArenaChunkESt14default_deleteIS1_EEE", !235, i64 0}
!235 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10ArenaChunkELb0EE", !236, i64 0}
!236 = !{!"p1 _ZTSN6duckdb10ArenaChunkE", !9, i64 0}
!237 = !{!"_ZTSN6duckdb9AllocatorE", !9, i64 0, !9, i64 8, !9, i64 16, !238, i64 24}
!238 = !{!"_ZTSN6duckdb10unique_ptrINS_20PrivateAllocatorDataESt14default_deleteIS1_ELb1EEE", !239, i64 0}
!239 = !{!"_ZTSSt10unique_ptrIN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_EE", !240, i64 0}
!240 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_ELb1ELb1EE", !241, i64 0}
!241 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_EE", !242, i64 0}
!242 = !{!"_ZTSSt5tupleIJPN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_EEE", !243, i64 0}
!243 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb20PrivateAllocatorDataESt14default_deleteIS1_EEE", !244, i64 0}
!244 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb20PrivateAllocatorDataELb0EE", !245, i64 0}
!245 = !{!"p1 _ZTSN6duckdb20PrivateAllocatorDataE", !9, i64 0}
!246 = !{!"_ZTSN6duckdb6vectorINS_9TopNEntryELb0ENS_19arena_stl_allocatorIS1_EEEE", !247, i64 0}
!247 = !{!"_ZTSSt6vectorIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEE", !248, i64 0}
!248 = !{!"_ZTSSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEE", !249, i64 0}
!249 = !{!"_ZTSNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEE12_Vector_implE", !250, i64 0, !252, i64 8}
!250 = !{!"_ZTSN6duckdb19arena_stl_allocatorINS_9TopNEntryEEE", !251, i64 0}
!251 = !{!"_ZTSSt17reference_wrapperIN6duckdb14ArenaAllocatorEE", !30, i64 0}
!252 = !{!"_ZTSNSt12_Vector_baseIN6duckdb9TopNEntryENS0_19arena_stl_allocatorIS1_EEE17_Vector_impl_dataE", !253, i64 0, !253, i64 8, !253, i64 16}
!253 = !{!"p1 _ZTSN6duckdb9TopNEntryE", !9, i64 0}
!254 = !{!"_ZTSN6duckdb6vectorINS_14OrderModifiersELb1ESaIS1_EEE", !255, i64 0}
!255 = !{!"_ZTSSt6vectorIN6duckdb14OrderModifiersESaIS1_EE", !256, i64 0}
!256 = !{!"_ZTSSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE", !257, i64 0}
!257 = !{!"_ZTSNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE12_Vector_implE", !258, i64 0}
!258 = !{!"_ZTSNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE17_Vector_impl_dataE", !259, i64 0, !259, i64 8, !259, i64 16}
!259 = !{!"p1 _ZTSN6duckdb14OrderModifiersE", !9, i64 0}
!260 = !{!"_ZTSN6duckdb18ExpressionExecutorE", !261, i64 0, !267, i64 24, !268, i64 32, !270, i64 40, !276, i64 64}
!261 = !{!"_ZTSN6duckdb6vectorIPKNS_10ExpressionELb1ESaIS3_EEE", !262, i64 0}
!262 = !{!"_ZTSSt6vectorIPKN6duckdb10ExpressionESaIS3_EE", !263, i64 0}
!263 = !{!"_ZTSSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE", !264, i64 0}
!264 = !{!"_ZTSNSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE12_Vector_implE", !265, i64 0}
!265 = !{!"_ZTSNSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE17_Vector_impl_dataE", !266, i64 0, !266, i64 8, !266, i64 16}
!266 = !{!"p2 _ZTSN6duckdb10ExpressionE", !140, i64 0}
!267 = !{!"p1 _ZTSN6duckdb9DataChunkE", !9, i64 0}
!268 = !{!"_ZTSN6duckdb12optional_ptrINS_13ClientContextELb1EEE", !269, i64 0}
!269 = !{!"p1 _ZTSN6duckdb13ClientContextE", !9, i64 0}
!270 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !271, i64 0}
!271 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !272, i64 0}
!272 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !273, i64 0}
!273 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !274, i64 0}
!274 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !275, i64 0, !275, i64 8, !275, i64 16}
!275 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS1_ELb1EEE", !9, i64 0}
!276 = !{!"_ZTSN6duckdb23DebugVectorVerificationE", !5, i64 0}
!277 = !{!"_ZTSN6duckdb9DataChunkE", !278, i64 0, !32, i64 24, !32, i64 32, !32, i64 40, !284, i64 48}
!278 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !279, i64 0}
!279 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !280, i64 0}
!280 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !281, i64 0}
!281 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !282, i64 0}
!282 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE17_Vector_impl_dataE", !283, i64 0, !283, i64 8, !283, i64 16}
!283 = !{!"p1 _ZTSN6duckdb6VectorE", !9, i64 0}
!284 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !285, i64 0}
!285 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !286, i64 0}
!286 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !287, i64 0}
!287 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !288, i64 0}
!288 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !289, i64 0, !289, i64 8, !289, i64 16}
!289 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !9, i64 0}
!290 = !{!"_ZTSN6duckdb10StringHeapE", !228, i64 0}
!291 = !{!"_ZTSN6duckdb15SelectionVectorE", !292, i64 0, !293, i64 8}
!292 = !{!"p1 int", !9, i64 0}
!293 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !294, i64 0}
!294 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !295, i64 0}
!295 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !296, i64 0, !202, i64 8}
!296 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !9, i64 0}
!297 = !{!227, !32, i64 168}
!298 = !{!227, !32, i64 176}
!299 = !{!227, !225, i64 128}
!300 = !{!258, !259, i64 8}
!301 = !{!258, !259, i64 16}
!302 = !{!157, !157, i64 0}
!303 = !{!158, !158, i64 0}
!304 = !{!305, !157, i64 0}
!305 = !{!"_ZTSN6duckdb14OrderModifiersE", !157, i64 0, !158, i64 1}
!306 = !{!305, !158, i64 1}
!307 = !{!258, !259, i64 0}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZSt19__relocate_object_aIN6duckdb14OrderModifiersES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!310 = distinct !{!310, !"_ZSt19__relocate_object_aIN6duckdb14OrderModifiersES1_SaIS1_EEvPT_PT0_RT1_"}
!311 = !{!312}
!312 = distinct !{!312, !310, !"_ZSt19__relocate_object_aIN6duckdb14OrderModifiersES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!313 = distinct !{!313, !15, !314, !315}
!314 = !{!"llvm.loop.isvectorized", i32 1}
!315 = !{!"llvm.loop.unroll.runtime.disable"}
!316 = !{!"branch_weights", i32 4, i32 12}
!317 = distinct !{!317, !15, !314, !315}
!318 = distinct !{!318, !15, !314}
!319 = !{!252, !253, i64 16}
!320 = !{!252, !253, i64 0}
!321 = !{!252, !253, i64 8}
!322 = !{!251, !30, i64 0}
!323 = !{!236, !236, i64 0}
!324 = !{!325, !32, i64 24}
!325 = !{!"_ZTSN6duckdb10ArenaChunkE", !326, i64 0, !32, i64 24, !32, i64 32, !229, i64 40, !236, i64 48}
!326 = !{!"_ZTSN6duckdb13AllocatedDataE", !327, i64 0, !91, i64 8, !32, i64 16}
!327 = !{!"_ZTSN6duckdb12optional_ptrINS_9AllocatorELb1EEE", !219, i64 0}
!328 = !{!325, !32, i64 32}
!329 = !{!326, !91, i64 8}
!330 = !{i64 0, i64 16, !149, i64 16, i64 8, !179}
!331 = distinct !{!331, !15}
!332 = !{!227, !223, i64 120}
!333 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!334 = !{!274, !275, i64 0}
!335 = !{!274, !275, i64 8}
!336 = !{!337, !337, i64 0}
!337 = !{!"p1 _ZTSN6duckdb23ExpressionExecutorStateE", !9, i64 0}
!338 = !{!339, !339, i64 0}
!339 = !{!"p1 _ZTSN6duckdb15ExpressionStateE", !9, i64 0}
!340 = distinct !{null, null, null, null, null, null, null, null, null}
!341 = distinct !{!341, !15}
!342 = !{!265, !266, i64 0}
!343 = !{!344, !269, i64 0}
!344 = !{!"_ZTSN6duckdb16ExecutionContextE", !269, i64 0, !345, i64 8, !346, i64 16}
!345 = !{!"p1 _ZTSN6duckdb13ThreadContextE", !9, i64 0}
!346 = !{!"_ZTSN6duckdb12optional_ptrINS_8PipelineELb1EEE", !347, i64 0}
!347 = !{!"p1 _ZTSN6duckdb8PipelineE", !9, i64 0}
!348 = !{!349, !91, i64 32}
!349 = !{!"_ZTSN6duckdb6VectorE", !350, i64 0, !351, i64 8, !91, i64 32, !358, i64 40, !364, i64 72, !364, i64 88}
!350 = !{!"_ZTSN6duckdb10VectorTypeE", !5, i64 0}
!351 = !{!"_ZTSN6duckdb11LogicalTypeE", !352, i64 0, !353, i64 1, !354, i64 8}
!352 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!353 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!354 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !355, i64 0}
!355 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !356, i64 0}
!356 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !357, i64 0, !202, i64 8}
!357 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !9, i64 0}
!358 = !{!"_ZTSN6duckdb12ValidityMaskE", !359, i64 0}
!359 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !23, i64 0, !360, i64 8, !32, i64 24}
!360 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !361, i64 0}
!361 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !362, i64 0}
!362 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !363, i64 0, !202, i64 8}
!363 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !9, i64 0}
!364 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !365, i64 0}
!365 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !366, i64 0}
!366 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !367, i64 0, !202, i64 8}
!367 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !9, i64 0}
!368 = !{!277, !32, i64 24}
!369 = distinct !{!369, !15}
!370 = !{i64 0, i64 16, !149}
!371 = !{!372, !32, i64 16}
!372 = !{!"_ZTSN6duckdb9TopNEntryE", !373, i64 0, !32, i64 16}
!373 = !{!"_ZTSN6duckdb8string_tE", !5, i64 0}
!374 = !{!253, !253, i64 0}
!375 = !{!291, !292, i64 0}
!376 = distinct !{!376, !15}
!377 = distinct !{!377, !15}
!378 = !{!283, !283, i64 0}
!379 = !{!156, !158, i64 1}
!380 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!381 = distinct !{!381, !15}
!382 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!383 = !{!282, !283, i64 8}
!384 = !{!282, !283, i64 0}
!385 = !{!386, !387, i64 0}
!386 = !{!"_ZTSN6duckdb12optional_ptrINS_17TopNBoundaryValueELb1EEE", !387, i64 0}
!387 = !{!"p1 _ZTSN6duckdb17TopNBoundaryValueE", !9, i64 0}
!388 = !{!389, !64, i64 80}
!389 = !{!"_ZTSN6duckdb17TopNBoundaryValueE", !390, i64 0, !54, i64 8, !89, i64 48, !64, i64 80, !349, i64 88, !305, i64 192}
!390 = !{!"p1 _ZTSN6duckdb12PhysicalTopNE", !9, i64 0}
!391 = !{i8 0, i8 2}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZNK6duckdb8string_t9GetStringB5cxx11Ev: argument 0"}
!394 = distinct !{!394, !"_ZNK6duckdb8string_t9GetStringB5cxx11Ev"}
!395 = !{!389, !390, i64 0}
!396 = distinct !{!396, !15}
!397 = !{!227, !219, i64 0}
!398 = distinct !{!398, !15}
!399 = distinct !{!399, !15}
!400 = !{!401, !292, i64 8}
!401 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !292, i64 0, !292, i64 8, !292, i64 16}
!402 = !{!401, !292, i64 0}
!403 = distinct !{!403, !15}
!404 = !{!405, !32, i64 0}
!405 = !{!"_ZTSN6duckdb13TopNScanStateE", !32, i64 0, !406, i64 8, !291, i64 32}
!406 = !{!"_ZTSN6duckdb6vectorIjLb1ESaIjEEE", !407, i64 0}
!407 = !{!"_ZTSSt6vectorIjSaIjEE", !408, i64 0}
!408 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !409, i64 0}
!409 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !401, i64 0}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZN6duckdb9make_uniqINS_18TopNLocalSinkStateEJRNS_16ExecutionContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERKNS4_INS_16BoundOrderByNodeELb1ESaISA_EEERKmSG_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!412 = distinct !{!412, !"_ZN6duckdb9make_uniqINS_18TopNLocalSinkStateEJRNS_16ExecutionContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERKNS4_INS_16BoundOrderByNodeELb1ESaISA_EEERKmSG_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN6duckdb9make_uniqINS_19TopNGlobalSinkStateEJRNS_13ClientContextERKNS_12PhysicalTopNEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!415 = distinct !{!415, !"_ZN6duckdb9make_uniqINS_19TopNGlobalSinkStateEJRNS_13ClientContextERKNS_12PhysicalTopNEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN6duckdb9make_uniqINS_21TopNGlobalSourceStateEJRNS_19TopNGlobalSinkStateEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!418 = distinct !{!418, !"_ZN6duckdb9make_uniqINS_21TopNGlobalSourceStateEJRNS_19TopNGlobalSinkStateEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZN6duckdb9make_uniqINS_20TopNLocalSourceStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!421 = distinct !{!421, !"_ZN6duckdb9make_uniqINS_20TopNLocalSourceStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!422 = !{!423, !32, i64 8}
!423 = !{!"_ZTSN6duckdb20TopNLocalSourceStateE", !424, i64 0, !32, i64 8, !32, i64 16, !32, i64 24}
!424 = !{!"_ZTSN6duckdb16LocalSourceStateE"}
!425 = !{!423, !32, i64 16}
!426 = !{!427}
!427 = distinct !{!427, !428, !"_ZN6duckdb23StateWithBlockableTasks4LockEv: argument 0"}
!428 = distinct !{!428, !"_ZN6duckdb23StateWithBlockableTasks4LockEv"}
!429 = !{!430, !32, i64 88}
!430 = !{!"_ZTSN6duckdb21TopNGlobalSourceStateE", !104, i64 0, !431, i64 80, !405, i64 88, !32, i64 144}
!431 = !{!"p1 _ZTSN6duckdb19TopNGlobalSinkStateE", !9, i64 0}
!432 = !{!430, !32, i64 144}
!433 = !{!423, !32, i64 24}
!434 = !{!435, !32, i64 0}
!435 = !{!"_ZTSN6duckdb21OperatorPartitionDataE", !32, i64 0, !436, i64 8}
!436 = !{!"_ZTSN6duckdb6vectorINS_19ColumnPartitionDataELb1ESaIS1_EEE", !437, i64 0}
!437 = !{!"_ZTSSt6vectorIN6duckdb19ColumnPartitionDataESaIS1_EE", !438, i64 0}
!438 = !{!"_ZTSSt12_Vector_baseIN6duckdb19ColumnPartitionDataESaIS1_EE", !439, i64 0}
!439 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19ColumnPartitionDataESaIS1_EE12_Vector_implE", !440, i64 0}
!440 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19ColumnPartitionDataESaIS1_EE17_Vector_impl_dataE", !441, i64 0, !441, i64 8, !441, i64 16}
!441 = !{!"p1 _ZTSN6duckdb19ColumnPartitionDataE", !9, i64 0}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!444 = distinct !{!444, !"_ZNSt7__cxx119to_stringEm"}
!445 = distinct !{!445, !15}
!446 = distinct !{!446, !15}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!449 = distinct !{!449, !"_ZNSt7__cxx119to_stringEm"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0:Peel0"}
!452 = distinct !{!452, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!455 = distinct !{!455, !15, !178}
!456 = !{!25, !23, i64 0}
!457 = !{!458, !64, i64 0}
!458 = !{!"_ZTSN6duckdb21OperatorPartitionInfoE", !64, i64 0, !60, i64 8}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN6duckdb21OperatorPartitionInfo15NoPartitionInfoEv: argument 0"}
!461 = distinct !{!461, !"_ZN6duckdb21OperatorPartitionInfo15NoPartitionInfoEv"}
!462 = !{i64 0, i64 8, !463, i64 8, i64 8, !463, i64 16, i64 1, !465}
!463 = !{!464, !464, i64 0}
!464 = !{!"double", !5, i64 0}
!465 = !{!64, !64, i64 0}
!466 = distinct !{null}
!467 = !{!468, !470}
!468 = distinct !{!468, !469, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!469 = distinct !{!469, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!470 = distinct !{!470, !471, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!471 = distinct !{!471, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!472 = !{!470}
!473 = distinct !{null, null, null, null}
!474 = !{!296, !296, i64 0}
!475 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!476 = distinct !{null, null, null}
!477 = !{!295, !296, i64 0}
!478 = !{!479, !91, i64 8}
!479 = !{!"_ZTSSt9type_info", !91, i64 8}
!480 = distinct !{!480, !15}
!481 = !{!440, !441, i64 0}
!482 = !{!440, !441, i64 8}
!483 = !{ptr @_ZN6duckdb14LocalSinkStateD2Ev}
!484 = distinct !{!484, !15}
!485 = distinct !{ptr @_ZN6duckdb19OrderLocalSinkStateD2Ev, null, null}
!486 = !{ptr @_ZN6duckdb19OrderLocalSinkStateD2Ev, ptr @_ZN6duckdb14LocalSinkStateD2Ev}
!487 = !{!488, !489, i64 80}
!488 = !{!"_ZTSN6duckdb15GlobalSinkStateE", !105, i64 8, !489, i64 80}
!489 = !{!"_ZTSN6duckdb16SinkFinalizeTypeE", !5, i64 0}
!490 = !{!491, !492, i64 0}
!491 = !{!"_ZTSSt17reference_wrapperIN6duckdb16PhysicalOperatorEE", !492, i64 0}
!492 = !{!"p1 _ZTSN6duckdb16PhysicalOperatorE", !9, i64 0}
!493 = !{!25, !23, i64 8}
!494 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!495 = !{!31, !31, i64 0}
!496 = !{!497, !498, i64 0}
!497 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20SortProjectionColumnESaIS1_EE17_Vector_impl_dataE", !498, i64 0, !498, i64 8, !498, i64 16}
!498 = !{!"p1 _ZTSN6duckdb20SortProjectionColumnE", !9, i64 0}
!499 = distinct !{null, null, null, null}
!500 = distinct !{null, null}
!501 = distinct !{null, null}
!502 = !{!112, !77, i64 0}
!503 = !{!112, !77, i64 8}
!504 = !{!505, !203, i64 0}
!505 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !203, i64 0}
!506 = distinct !{ptr @_ZN6duckdb15GlobalSinkStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!507 = distinct !{ptr @_ZN6duckdb15GlobalSinkStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!508 = distinct !{!508, !15}
!509 = distinct !{ptr @_ZN6duckdb20OrderGlobalSinkStateD2Ev, null, null}
!510 = !{ptr @_ZN6duckdb20OrderGlobalSinkStateD2Ev}
!511 = distinct !{ptr @_ZN6duckdb20OrderGlobalSinkStateD2Ev, ptr @_ZN6duckdb15GlobalSinkStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!512 = distinct !{ptr @_ZN6duckdb20OrderGlobalSinkStateD2Ev, ptr @_ZN6duckdb15GlobalSinkStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!513 = distinct !{null, null, null, null, null, null, null, null, null, null}
!514 = distinct !{null, null, null, null, null, null, null, null, null, null}
!515 = distinct !{null, null}
!516 = distinct !{ptr @_ZN6duckdb21OrderLocalSourceStateD2Ev, null, null}
!517 = distinct !{null, null}
!518 = distinct !{ptr @_ZN6duckdb17GlobalSourceStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!519 = distinct !{ptr @_ZN6duckdb17GlobalSourceStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!520 = distinct !{ptr @_ZN6duckdb22OrderGlobalSourceStateD2Ev, null, null}
!521 = distinct !{ptr @_ZN6duckdb22OrderGlobalSourceStateD2Ev, ptr @_ZN6duckdb17GlobalSourceStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!522 = distinct !{ptr @_ZN6duckdb22OrderGlobalSourceStateD2Ev, ptr @_ZN6duckdb17GlobalSourceStateD2Ev, null, null, null, null, null, null, null, null, null, null}
!523 = !{ptr @_ZN6duckdb22OrderGlobalSourceStateD2Ev}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!526 = distinct !{!526, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!527 = !{!528, !529, i64 0}
!528 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !529, i64 0, !529, i64 8, !529, i64 16}
!529 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !9, i64 0}
!530 = !{!528, !529, i64 8}
!531 = distinct !{!531, !15}
!532 = !{!528, !529, i64 16}
!533 = !{!534}
!534 = distinct !{!534, !535, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!535 = distinct !{!535, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!536 = !{!537}
!537 = distinct !{!537, !535, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!538 = !{!534, !537}
!539 = distinct !{!539, !15}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!542 = distinct !{!542, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!543 = !{!544}
!544 = distinct !{!544, !542, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!545 = !{!541, !544}
!546 = !{!192, !193, i64 16}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!549 = distinct !{!549, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!550 = !{!551}
!551 = distinct !{!551, !549, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!552 = !{!548, !551}
!553 = distinct !{!553, !15}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!556 = distinct !{!556, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!557 = !{!558}
!558 = distinct !{!558, !556, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!559 = !{!555, !558}
!560 = !{!561, !561, i64 0}
!561 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!562 = !{!563, !564, i64 0}
!563 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !564, i64 0, !565, i64 8}
!564 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEEE", !9, i64 0}
!565 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEE", !9, i64 0}
!566 = !{!563, !565, i64 8}
!567 = !{!143, !32, i64 8}
!568 = !{!569, !32, i64 32}
!569 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !89, i64 0, !32, i64 32}
!570 = !{!138, !142, i64 48}
!571 = distinct !{!571, !15}
!572 = distinct !{!572, !15}
!573 = !{!351, !353, i64 1}
!574 = !{!353, !353, i64 0}
!575 = !{!576}
!576 = distinct !{!576, !577, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!577 = distinct !{!577, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!578 = distinct !{!578, !15}
!579 = distinct !{!579, !15}
!580 = distinct !{!580, !15}
!581 = distinct !{!581, !15}
!582 = distinct !{!582, !15}
!583 = distinct !{!583, !15}
!584 = distinct !{!584, !15}
!585 = distinct !{!585, !15}
!586 = distinct !{!586, !15}
!587 = !{!401, !292, i64 16}
!588 = !{ptr @_ZN6duckdb18TopNLocalSinkStateD2Ev}
!589 = !{ptr @_ZN6duckdb18TopNLocalSinkStateD2Ev, ptr @_ZN6duckdb14LocalSinkStateD2Ev}
!590 = distinct !{ptr @_ZN6duckdb18ExpressionExecutorD2Ev, null, null, null, null, null, null, null, null, null}
!591 = !{!390, !390, i64 0}
!592 = distinct !{null, null, null, null}
!593 = distinct !{null, null, null, null, null}
!594 = !{!431, !431, i64 0}
!595 = !{!430, !431, i64 80}
!596 = distinct !{ptr @_ZN6duckdb13TopNScanStateD2Ev, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
end_hunk_2
