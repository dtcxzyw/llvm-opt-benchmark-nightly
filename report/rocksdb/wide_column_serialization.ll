Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/wide_column_serialization?download=true
inline.NumInlined: 1372
inline.NumDeleted: 433
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7rocksdb23WideColumnSerialization11SerializeV2ERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EERKS1_IS2_ImNS_9BlobIndexEESaISF_EERS8_:bb.a
    i64 1, label %bb.at
  ]

bb.at:                                            ; preds = %.noexc442.i
  %i.jj = load i8, ptr %.pre.i432.pre.i, align 1, !tbaa !50
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i434.i

bb.au:                                            ; preds = %.noexc442.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr align 1 %.pre.i432.pre.i, i64 %i.it, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i434.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i434.i: ; preds = %bb.au, %bb.at, %.noexc442.i
  %i.jk = icmp eq ptr %.pre.i432.pre.i, %.ph656.i
  br i1 %i.jk, label %.noexc251.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i435.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i435.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i434.i
  %i.jl = load i64, ptr %.ph656.i, align 8, !tbaa !50, !noalias !179
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %.pre.i432.pre.i, i64 noundef %i.jm) #22
  br label %.noexc251.i

.noexc251.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i434.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i435.i
  store ptr %i.ji, ptr %14, align 8, !tbaa !59, !noalias !179
  store i64 %.0.i426.i, ptr %.ph656.i, align 8, !tbaa !50, !noalias !179
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit252.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit252.i: ; preds = %.noexc251.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248.i
  %i.jn = phi ptr [ %i.ji, %.noexc251.i ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248.i ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248.thread.i ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.it
  store i8 1, ptr %i.jo, align 1, !tbaa !50
  store i64 %i.iu, ptr %.ph.i, align 8, !tbaa !58, !noalias !179
  %i.jp = load ptr, ptr %14, align 8, !tbaa !59, !noalias !179
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.iu
  store i8 0, ptr %i.jq, align 1, !tbaa !50
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit252.i, %bb.ak
  %i.jr = phi ptr [ %i.hc, %bb.ak ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit252.i ]
  %.1122.i = phi i64 [ %i.ik, %bb.ak ], [ %.0121531.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit252.i ]
  %i.js = load ptr, ptr %i.bm, align 8, !noalias !179
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.0120532.i
  %i.ju = load ptr, ptr %i.bo, align 8, !noalias !179
  %i.jv = getelementptr [4 x i8], ptr %i.ju, i64 %.0120532.i
  %i.jw = getelementptr i8, ptr %i.jv, i64 -64
  %.0.i253.i = select i1 %i.fh, ptr %i.jt, ptr %i.jw
  %i.jx = load i32, ptr %.0.i253.i, align 4, !tbaa !78 ; 5 uses
  %i.jy = zext i32 %i.jx to i64
  %i.jz = icmp ugt i32 %i.jx, 127
  br i1 %i.jz, label %.lr.ph.i255.i, label %.loopexit488.i

.lr.ph.i255.i:                                    ; preds = %bb.av
  %i.ka = icmp ugt i32 %i.jx, 16383
  br i1 %i.ka, label %.lr.ph.i255.i.1, label %.loopexit488.i

.lr.ph.i255.i.1:                                  ; preds = %.lr.ph.i255.i
  %i.kb = icmp ugt i32 %i.jx, 2097151
  br i1 %i.kb, label %.lr.ph.i255.i.2, label %.loopexit488.i

.lr.ph.i255.i.2:                                  ; preds = %.lr.ph.i255.i.1
  %i.kc = icmp ugt i32 %i.jx, 268435455
  %spec.select171 = select i1 %i.kc, i64 5, i64 4
  br label %.loopexit488.i

.loopexit488.i:                                   ; preds = %.lr.ph.i255.i.2, %.lr.ph.i255.i, %.lr.ph.i255.i.1, %bb.av
  %.0.lcssa.i254.i = phi i64 [ 1, %bb.av ], [ 2, %.lr.ph.i255.i ], [ 3, %.lr.ph.i255.i.1 ], [ %spec.select171, %.lr.ph.i255.i.2 ]
  %i.kd = add i64 %.0.lcssa.i254.i, %.0126529.i   ; 7 uses
  %i.ke = add i64 %.0123530.i, %i.jy              ; 4 uses
  %i.kf = add nuw i64 %.0120532.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.kf, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.r, !llvm.loop !169

._crit_edge.i:                                    ; preds = %.loopexit488.i
  %i.kg = icmp ugt i64 %i.fy, 4294967295
  %i.kh = icmp ugt i64 %i.kd, 4294967295
  %or.cond.i = select i1 %i.kg, i1 true, i1 %i.kh
  br i1 %or.cond.i, label %bb.aw, label %bb.ay

_ZN7rocksdb12VarintLengthEm.exit280.thread.i:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21, !noalias !179
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.kj, ptr %14, align 8, !tbaa !67, !noalias !179
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 0, ptr %i.kk, align 8, !tbaa !58, !noalias !179
  store i8 0, ptr %i.kj, align 8, !tbaa !50, !noalias !179
  br label %_ZN7rocksdb12VarintLengthEm.exit285.i

bb.aw:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21, !noalias !179
  store ptr @.str.46, ptr %15, align 8, !tbaa !22, !noalias !179
  %i.kl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 30, ptr %i.kl, align 8, !tbaa !23, !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21, !noalias !179
  store ptr @.str.32, ptr %16, align 8, !tbaa !22, !noalias !179
  %i.km = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.km, align 8, !tbaa !23, !noalias !179
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit.i unwind label %bb.ax

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !179
  br label %.thread484.i

bb.ax:                                            ; preds = %bb.aw
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !179
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.ay:                                            ; preds = %._crit_edge.i
  %i.ko = icmp ugt i64 %i.fz, 4294967295
  br i1 %i.ko, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21, !noalias !179
  store ptr @.str.47, ptr %17, align 8, !tbaa !22, !noalias !179
  %i.kp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 27, ptr %i.kp, align 8, !tbaa !23, !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21, !noalias !179
  store ptr @.str.32, ptr %18, align 8, !tbaa !22, !noalias !179
  %i.kq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.kq, align 8, !tbaa !23, !noalias !179
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit262.i unwind label %bb.ba

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit262.i: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !179
  br label %.thread484.i

bb.ba:                                            ; preds = %bb.az
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !179
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.bb:                                            ; preds = %bb.ay
  %i.ks = icmp ugt i64 %i.ke, 4294967295
  br i1 %i.ks, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21, !noalias !179
  store ptr @.str.48, ptr %19, align 8, !tbaa !22, !noalias !179
  %i.kt = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 28, ptr %i.kt, align 8, !tbaa !23, !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21, !noalias !179
  store ptr @.str.32, ptr %20, align 8, !tbaa !22, !noalias !179
  %i.ku = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.ku, align 8, !tbaa !23, !noalias !179
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit264.i unwind label %bb.bd

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit264.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !179
  br label %.thread484.i

bb.bd:                                            ; preds = %bb.bc
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !179
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.be:                                            ; preds = %bb.bb
  %i.kw = trunc nuw i64 %i.fy to i32              ; 2 uses
  %i.kx = trunc nuw i64 %i.fz to i32              ; 2 uses
  %i.ky = trunc nuw i64 %i.kd to i32              ; 2 uses
  %i.kz = trunc i64 %i.l to i32                   ; 2 uses
  %i.la = and i64 %i.l, 4294967295                ; 4 uses
  %i.lb = icmp samesign ugt i64 %i.la, 127
  br i1 %i.lb, label %.lr.ph.i267.i, label %_ZN7rocksdb12VarintLengthEm.exit270.i

.lr.ph.i267.i:                                    ; preds = %bb.be
  %i.lc = icmp samesign ugt i64 %i.la, 16383
  br i1 %i.lc, label %.lr.ph.i267.i.1, label %_ZN7rocksdb12VarintLengthEm.exit270.i

.lr.ph.i267.i.1:                                  ; preds = %.lr.ph.i267.i
  %i.ld = icmp samesign ugt i64 %i.la, 2097151
  br i1 %i.ld, label %.lr.ph.i267.i.2, label %_ZN7rocksdb12VarintLengthEm.exit270.i

.lr.ph.i267.i.2:                                  ; preds = %.lr.ph.i267.i.1
  %i.le = icmp samesign ugt i64 %i.la, 268435455
  %spec.select172 = select i1 %i.le, i64 5, i64 4
  br label %_ZN7rocksdb12VarintLengthEm.exit270.i

_ZN7rocksdb12VarintLengthEm.exit270.i:            ; preds = %.lr.ph.i267.i.2, %.lr.ph.i267.i, %.lr.ph.i267.i.1, %bb.be
  %.0.lcssa.i266.i = phi i64 [ 1, %bb.be ], [ 2, %.lr.ph.i267.i ], [ 3, %.lr.ph.i267.i.1 ], [ %spec.select172, %.lr.ph.i267.i.2 ] ; 2 uses
  %i.lf = icmp samesign ugt i64 %i.fy, 127
  br i1 %i.lf, label %.lr.ph.i272.i, label %_ZN7rocksdb12VarintLengthEm.exit275.i

.lr.ph.i272.i:                                    ; preds = %_ZN7rocksdb12VarintLengthEm.exit270.i, %.lr.ph.i272.i
  %.06.i273.i = phi i16 [ %i.lh, %.lr.ph.i272.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit270.i ]
  %.045.i274.i = phi i64 [ %i.lg, %.lr.ph.i272.i ], [ %i.fy, %_ZN7rocksdb12VarintLengthEm.exit270.i ] ; 2 uses
  %i.lg = lshr i64 %.045.i274.i, 7
  %i.lh = add nuw nsw i16 %.06.i273.i, 1          ; 2 uses
  %i.li = icmp samesign ugt i64 %.045.i274.i, 16383
  br i1 %i.li, label %.lr.ph.i272.i, label %_ZN7rocksdb12VarintLengthEm.exit275.loopexit.i, !llvm.loop !1

_ZN7rocksdb12VarintLengthEm.exit275.loopexit.i:   ; preds = %.lr.ph.i272.i
  %i.lj = zext nneg i16 %i.lh to i64
  br label %_ZN7rocksdb12VarintLengthEm.exit275.i

_ZN7rocksdb12VarintLengthEm.exit275.i:            ; preds = %_ZN7rocksdb12VarintLengthEm.exit275.loopexit.i, %_ZN7rocksdb12VarintLengthEm.exit270.i
  %.0.lcssa.i271.i = phi i64 [ 1, %_ZN7rocksdb12VarintLengthEm.exit270.i ], [ %i.lj, %_ZN7rocksdb12VarintLengthEm.exit275.loopexit.i ] ; 2 uses
  %i.lk = icmp samesign ugt i64 %i.kd, 127
  br i1 %i.lk, label %.lr.ph.i277.i, label %_ZN7rocksdb12VarintLengthEm.exit280.i

.lr.ph.i277.i:                                    ; preds = %_ZN7rocksdb12VarintLengthEm.exit275.i, %.lr.ph.i277.i
  %.06.i278.i = phi i16 [ %i.lm, %.lr.ph.i277.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit275.i ]
  %.045.i279.i = phi i64 [ %i.ll, %.lr.ph.i277.i ], [ %i.kd, %_ZN7rocksdb12VarintLengthEm.exit275.i ] ; 2 uses
  %i.ll = lshr i64 %.045.i279.i, 7
  %i.lm = add nuw nsw i16 %.06.i278.i, 1          ; 2 uses
  %i.ln = icmp samesign ugt i64 %.045.i279.i, 16383
  br i1 %i.ln, label %.lr.ph.i277.i, label %_ZN7rocksdb12VarintLengthEm.exit280.loopexit.i, !llvm.loop !1

_ZN7rocksdb12VarintLengthEm.exit280.loopexit.i:   ; preds = %.lr.ph.i277.i
  %i.lo = zext nneg i16 %i.lm to i64
  br label %_ZN7rocksdb12VarintLengthEm.exit280.i

_ZN7rocksdb12VarintLengthEm.exit280.i:            ; preds = %_ZN7rocksdb12VarintLengthEm.exit280.loopexit.i, %_ZN7rocksdb12VarintLengthEm.exit275.i
  %.0.lcssa.i276.i = phi i64 [ 1, %_ZN7rocksdb12VarintLengthEm.exit275.i ], [ %i.lo, %_ZN7rocksdb12VarintLengthEm.exit280.loopexit.i ] ; 2 uses
  %i.lp = icmp samesign ugt i64 %i.fz, 127
  br i1 %i.lp, label %.lr.ph.i282.i, label %_ZN7rocksdb12VarintLengthEm.exit285.i

.lr.ph.i282.i:                                    ; preds = %_ZN7rocksdb12VarintLengthEm.exit280.i, %.lr.ph.i282.i
  %.06.i283.i = phi i16 [ %i.lr, %.lr.ph.i282.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit280.i ]
  %.045.i284.i = phi i64 [ %i.lq, %.lr.ph.i282.i ], [ %i.fz, %_ZN7rocksdb12VarintLengthEm.exit280.i ] ; 2 uses
  %i.lq = lshr i64 %.045.i284.i, 7
  %i.lr = add nuw nsw i16 %.06.i283.i, 1          ; 2 uses
  %i.ls = icmp samesign ugt i64 %.045.i284.i, 16383
  br i1 %i.ls, label %.lr.ph.i282.i, label %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i, !llvm.loop !1

_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i:   ; preds = %.lr.ph.i282.i
  %i.lt = zext nneg i16 %i.lr to i64
  br label %_ZN7rocksdb12VarintLengthEm.exit285.i

_ZN7rocksdb12VarintLengthEm.exit285.i:            ; preds = %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i, %_ZN7rocksdb12VarintLengthEm.exit280.i, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i
  %.0.lcssa.i276745.i = phi i64 [ %.0.lcssa.i276.i, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %.0.lcssa.i276.i, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %.0.lcssa.i266715723744.i = phi i64 [ %.0.lcssa.i266.i, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %.0.lcssa.i266.i, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %.0123.lcssa671677692699714724743.i = phi i64 [ %i.ke, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.ke, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %.0126.lcssa670678691700713725742.i = phi i64 [ %i.kd, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.kd, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ] ; 2 uses
  %.0129.lcssa669679690701712726741.i = phi i64 [ %i.fz, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.fz, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ] ; 2 uses
  %.0132.lcssa668680689702711727740.i = phi i64 [ %i.fy, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.fy, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ] ; 2 uses
  %i.lu = phi ptr [ %.ph.i, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %.ph.i, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ %i.kk, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %i.lv = phi ptr [ %.ph656.i, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %.ph656.i, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ %i.kj, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ] ; 17 uses
  %i.lw = phi ptr [ %.ph657.i, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %.ph657.i, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ %i.ki, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ] ; 2 uses
  %.not162523.not660667681688703710728739.i = phi i1 [ false, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ false, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ true, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %i.lx = phi i32 [ %i.kw, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.kw, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %i.ly = phi i32 [ %i.kx, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.kx, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %i.lz = phi i32 [ %i.ky, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.ky, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %i.ma = phi i32 [ %i.kz, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.kz, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %.0.lcssa.i271729738.i = phi i64 [ %.0.lcssa.i271.i, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %.0.lcssa.i271.i, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %.0.lcssa.i281.i = phi i64 [ 1, %_ZN7rocksdb12VarintLengthEm.exit280.i ], [ %i.lt, %_ZN7rocksdb12VarintLengthEm.exit285.loopexit.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit280.thread.i ]
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !58, !noalias !179
  %i.md = add nsw i64 %i.l, 1
  %i.me = add nsw i64 %i.md, %.0.lcssa.i276745.i
  %i.mf = add nsw i64 %i.me, %.0.lcssa.i266715723744.i
  %i.mg = add nsw i64 %i.mf, %.0123.lcssa671677692699714724743.i
  %i.mh = add nsw i64 %i.mg, %.0126.lcssa670678691700713725742.i
  %i.mi = add i64 %i.mh, %.0129.lcssa669679690701712726741.i
  %i.mj = add i64 %i.mi, %.0132.lcssa668680689702711727740.i
  %i.mk = add i64 %i.mj, %.0.lcssa.i271729738.i
  %i.ml = add i64 %i.mk, %.0.lcssa.i281.i
  %i.mm = add i64 %i.ml, %i.mc                    ; 7 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.mm)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.bf:                                            ; preds = %_ZN7rocksdb12VarintLengthEm.exit285.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21, !noalias !179
  %i.mn = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.e, i32 noundef 2)
          to label %.noexc287.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc287.i:                                      ; preds = %bb.bf
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.e to i64
  %i.mq = sub i64 %i.mo, %i.mp                    ; 5 uses
  %i.mr = load i64, ptr %i.mb, align 8, !tbaa !58, !noalias !179 ; 5 uses
  %i.ms = sub i64 9223372036854775807, %i.mr
  %i.mt = icmp ult i64 %i.ms, %i.mq
  br i1 %i.mt, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %.noexc287.i
  %i.mu = add i64 %i.mr, %i.mq                    ; 3 uses
  %i.mv = load ptr, ptr %3, align 8, !tbaa !59, !noalias !179 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.my = icmp ult i64 %i.mr, 16
  call void @llvm.assume(i1 %i.my)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.mz = load i64, ptr %i.mw, align 8, !tbaa !50, !noalias !179
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.na = phi i64 [ %i.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i286.i = icmp ugt i64 %i.mu, %i.na
  br i1 %.not.i.i.i286.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq ptr %i.mn, %i.e
  br i1 %.not8.i.i.i.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mr ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.mq, 1
  br i1 %cond.i.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nc = load i8, ptr %i.e, align 1, !tbaa !50, !noalias !179
  store i8 %i.nc, ptr %i.nb, align 1, !tbaa !50
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr nonnull align 1 %i.e, i64 %i.mq, i1 false)
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.mr, i64 noundef 0, ptr noundef nonnull %i.e, i64 noundef %i.mq)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  store i64 %i.mu, ptr %i.mb, align 8, !tbaa !58, !noalias !179
  %i.nd = load ptr, ptr %3, align 8, !tbaa !59, !noalias !179
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mu
  store i8 0, ptr %i.ne, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21, !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21, !noalias !179
  %i.nf = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.d, i32 noundef %i.ma)
          to label %.noexc297.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc297.i:                                      ; preds = %bb.bl
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.d to i64
  %i.ni = sub i64 %i.ng, %i.nh                    ; 5 uses
  %i.nj = load i64, ptr %i.mb, align 8, !tbaa !58, !noalias !179 ; 5 uses
  %i.nk = sub i64 9223372036854775807, %i.nj
  %i.nl = icmp ult i64 %i.nk, %i.ni
  br i1 %i.nl, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i290.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i290.i: ; preds = %.noexc297.i
  %i.nm = add i64 %i.nj, %i.ni                    ; 3 uses
  %i.nn = load ptr, ptr %3, align 8, !tbaa !59, !noalias !179 ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.mw
  br i1 %i.no, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i296.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i291.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i296.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i290.i
  %i.np = icmp ult i64 %i.nj, 16
  call void @llvm.assume(i1 %i.np)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i292.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i291.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i290.i
  %i.nq = load i64, ptr %i.mw, align 8, !tbaa !50, !noalias !179
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i292.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i292.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i291.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i296.i
  %i.nr = phi i64 [ %i.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i291.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i296.i ]
  %.not.i.i.i293.i = icmp ugt i64 %i.nm, %i.nr
  br i1 %.not.i.i.i293.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i292.i
  %.not8.i.i.i294.i = icmp eq ptr %i.nf, %i.d
  br i1 %.not8.i.i.i294.i, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nj ; 2 uses
  %cond.i.i.i295.i = icmp eq i64 %i.ni, 1
  br i1 %cond.i.i.i295.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.nt = load i8, ptr %i.d, align 1, !tbaa !50, !noalias !179
  store i8 %i.nt, ptr %i.ns, align 1, !tbaa !50
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ns, ptr nonnull align 1 %i.d, i64 %i.ni, i1 false)
  br label %bb.br

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i292.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.nj, i64 noundef 0, ptr noundef nonnull %i.d, i64 noundef %i.ni)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  store i64 %i.nm, ptr %i.mb, align 8, !tbaa !58, !noalias !179
  %i.nu = load ptr, ptr %3, align 8, !tbaa !59, !noalias !179
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nm
  store i8 0, ptr %i.nv, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21, !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21, !noalias !179
  %i.nw = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.c, i32 noundef %i.lx)
          to label %.noexc308.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc308.i:                                      ; preds = %bb.br
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = ptrtoint ptr %i.c to i64
  %i.nz = sub i64 %i.nx, %i.ny                    ; 5 uses
  %i.oa = load i64, ptr %i.mb, align 8, !tbaa !58, !noalias !179 ; 5 uses
  %i.ob = sub i64 9223372036854775807, %i.oa
  %i.oc = icmp ult i64 %i.ob, %i.nz
  br i1 %i.oc, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i301.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i301.i: ; preds = %.noexc308.i
  %i.od = add i64 %i.oa, %i.nz                    ; 3 uses
  %i.oe = load ptr, ptr %3, align 8, !tbaa !59, !noalias !179 ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.mw
  br i1 %i.of, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i307.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i307.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i301.i
  %i.og = icmp ult i64 %i.oa, 16
  call void @llvm.assume(i1 %i.og)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i303.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i301.i
  %i.oh = load i64, ptr %i.mw, align 8, !tbaa !50, !noalias !179
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i303.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i303.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i307.i
  %i.oi = phi i64 [ %i.oh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i302.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i307.i ]
  %.not.i.i.i304.i = icmp ugt i64 %i.od, %i.oi
  br i1 %.not.i.i.i304.i, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i303.i
  %.not8.i.i.i305.i = icmp eq ptr %i.nw, %i.c
  br i1 %.not8.i.i.i305.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
end_hunk_0
begin_hunk_1_@_ZN7rocksdb23WideColumnSerialization11SerializeV2ERKSt6vectorINS_10WideColumnESaIS2_EERKS1_ISt4pairImNS_9BlobIndexEESaIS9_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
    i64 1, label %bb.at
  ]

bb.at:                                            ; preds = %.noexc447.i
  %i.je = load i8, ptr %.pre.i437.pre.i, align 1, !tbaa !50
  store i8 %i.je, ptr %i.jd, align 1, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i439.i

bb.au:                                            ; preds = %.noexc447.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jd, ptr align 1 %.pre.i437.pre.i, i64 %i.io, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i439.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i439.i: ; preds = %bb.au, %bb.at, %.noexc447.i
  %i.jf = icmp eq ptr %.pre.i437.pre.i, %.ph662.i
  br i1 %i.jf, label %.noexc250.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i440.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i440.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i439.i
  %i.jg = load i64, ptr %.ph662.i, align 8, !tbaa !50, !noalias !212
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %.pre.i437.pre.i, i64 noundef %i.jh) #22
  br label %.noexc250.i

.noexc250.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i439.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i440.i
  store ptr %i.jd, ptr %14, align 8, !tbaa !59, !noalias !212
  store i64 %.0.i431.i, ptr %.ph662.i, align 8, !tbaa !50, !noalias !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit251.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit251.i: ; preds = %.noexc250.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i247.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i247.i
  %i.ji = phi ptr [ %i.jd, %.noexc250.i ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i247.i ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i247.thread.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.io
  store i8 1, ptr %i.jj, align 1, !tbaa !50
  store i64 %i.ip, ptr %.ph.i, align 8, !tbaa !58, !noalias !212
  %i.jk = load ptr, ptr %14, align 8, !tbaa !59, !noalias !212
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.ip
  store i8 0, ptr %i.jl, align 1, !tbaa !50
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit251.i, %bb.ak
  %i.jm = phi ptr [ %i.gx, %bb.ak ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit251.i ]
  %.1122.i = phi i64 [ %i.if, %bb.ak ], [ %.0121537.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit251.i ]
  %i.jn = load ptr, ptr %i.bm, align 8, !noalias !212
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %.0120538.i
  %i.jp = load ptr, ptr %i.bo, align 8, !noalias !212
  %i.jq = getelementptr [4 x i8], ptr %i.jp, i64 %.0120538.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 -64
  %.0.i252.i = select i1 %i.fc, ptr %i.jo, ptr %i.jr
  %i.js = load i32, ptr %.0.i252.i, align 4, !tbaa !78 ; 5 uses
  %i.jt = zext i32 %i.js to i64
  %i.ju = icmp ugt i32 %i.js, 127
  br i1 %i.ju, label %.lr.ph.i254.i, label %.loopexit494.i

.lr.ph.i254.i:                                    ; preds = %bb.av
  %i.jv = icmp ugt i32 %i.js, 16383
  br i1 %i.jv, label %.lr.ph.i254.i.1, label %.loopexit494.i

.lr.ph.i254.i.1:                                  ; preds = %.lr.ph.i254.i
  %i.jw = icmp ugt i32 %i.js, 2097151
  br i1 %i.jw, label %.lr.ph.i254.i.2, label %.loopexit494.i

.lr.ph.i254.i.2:                                  ; preds = %.lr.ph.i254.i.1
  %i.jx = icmp ugt i32 %i.js, 268435455
  %spec.select171 = select i1 %i.jx, i64 5, i64 4
  br label %.loopexit494.i

.loopexit494.i:                                   ; preds = %.lr.ph.i254.i.2, %.lr.ph.i254.i, %.lr.ph.i254.i.1, %bb.av
  %.0.lcssa.i253.i = phi i64 [ 1, %bb.av ], [ 2, %.lr.ph.i254.i ], [ 3, %.lr.ph.i254.i.1 ], [ %spec.select171, %.lr.ph.i254.i.2 ]
  %i.jy = add i64 %.0.lcssa.i253.i, %.0126535.i   ; 7 uses
  %i.jz = add i64 %.0123536.i, %i.jt              ; 4 uses
  %i.ka = add nuw i64 %.0120538.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ka, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.r, !llvm.loop !206

._crit_edge.i:                                    ; preds = %.loopexit494.i
  %i.kb = icmp ugt i64 %i.ft, 4294967295
  %i.kc = icmp ugt i64 %i.jy, 4294967295
  %or.cond.i = select i1 %i.kb, i1 true, i1 %i.kc
  br i1 %or.cond.i, label %bb.aw, label %bb.ay

_ZN7rocksdb12VarintLengthEm.exit279.thread.i:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21, !noalias !212
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ke, ptr %14, align 8, !tbaa !67, !noalias !212
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 0, ptr %i.kf, align 8, !tbaa !58, !noalias !212
  store i8 0, ptr %i.ke, align 8, !tbaa !50, !noalias !212
  br label %_ZN7rocksdb12VarintLengthEm.exit284.i

bb.aw:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21, !noalias !212
  store ptr @.str.46, ptr %15, align 8, !tbaa !22, !noalias !212
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 30, ptr %i.kg, align 8, !tbaa !23, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21, !noalias !212
  store ptr @.str.32, ptr %16, align 8, !tbaa !22, !noalias !212
  %i.kh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.kh, align 8, !tbaa !23, !noalias !212
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit.i unwind label %bb.ax

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !212
  br label %.thread490.i

bb.ax:                                            ; preds = %bb.aw
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !212
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.ay:                                            ; preds = %._crit_edge.i
  %i.kj = icmp ugt i64 %i.fu, 4294967295
  br i1 %i.kj, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21, !noalias !212
  store ptr @.str.47, ptr %17, align 8, !tbaa !22, !noalias !212
  %i.kk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 27, ptr %i.kk, align 8, !tbaa !23, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21, !noalias !212
  store ptr @.str.32, ptr %18, align 8, !tbaa !22, !noalias !212
  %i.kl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.kl, align 8, !tbaa !23, !noalias !212
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit261.i unwind label %bb.ba

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit261.i: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !212
  br label %.thread490.i

bb.ba:                                            ; preds = %bb.az
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !212
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.bb:                                            ; preds = %bb.ay
  %i.kn = icmp ugt i64 %i.jz, 4294967295
  br i1 %i.kn, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21, !noalias !212
  store ptr @.str.48, ptr %19, align 8, !tbaa !22, !noalias !212
  %i.ko = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 28, ptr %i.ko, align 8, !tbaa !23, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21, !noalias !212
  store ptr @.str.32, ptr %20, align 8, !tbaa !22, !noalias !212
  %i.kp = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.kp, align 8, !tbaa !23, !noalias !212
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit263.i unwind label %bb.bd

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit263.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !212
  br label %.thread490.i

bb.bd:                                            ; preds = %bb.bc
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !212
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !212
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.be:                                            ; preds = %bb.bb
  %i.kr = trunc nuw i64 %i.ft to i32              ; 2 uses
  %i.ks = trunc nuw i64 %i.fu to i32              ; 2 uses
  %i.kt = trunc nuw i64 %i.jy to i32              ; 2 uses
  %i.ku = trunc i64 %i.l to i32                   ; 2 uses
  %i.kv = and i64 %i.l, 4294967295                ; 4 uses
  %i.kw = icmp samesign ugt i64 %i.kv, 127
  br i1 %i.kw, label %.lr.ph.i266.i, label %_ZN7rocksdb12VarintLengthEm.exit269.i

.lr.ph.i266.i:                                    ; preds = %bb.be
  %i.kx = icmp samesign ugt i64 %i.kv, 16383
  br i1 %i.kx, label %.lr.ph.i266.i.1, label %_ZN7rocksdb12VarintLengthEm.exit269.i

.lr.ph.i266.i.1:                                  ; preds = %.lr.ph.i266.i
  %i.ky = icmp samesign ugt i64 %i.kv, 2097151
  br i1 %i.ky, label %.lr.ph.i266.i.2, label %_ZN7rocksdb12VarintLengthEm.exit269.i

.lr.ph.i266.i.2:                                  ; preds = %.lr.ph.i266.i.1
  %i.kz = icmp samesign ugt i64 %i.kv, 268435455
  %spec.select172 = select i1 %i.kz, i64 5, i64 4
  br label %_ZN7rocksdb12VarintLengthEm.exit269.i

_ZN7rocksdb12VarintLengthEm.exit269.i:            ; preds = %.lr.ph.i266.i.2, %.lr.ph.i266.i, %.lr.ph.i266.i.1, %bb.be
  %.0.lcssa.i265.i = phi i64 [ 1, %bb.be ], [ 2, %.lr.ph.i266.i ], [ 3, %.lr.ph.i266.i.1 ], [ %spec.select172, %.lr.ph.i266.i.2 ] ; 2 uses
  %i.la = icmp samesign ugt i64 %i.ft, 127
  br i1 %i.la, label %.lr.ph.i271.i, label %_ZN7rocksdb12VarintLengthEm.exit274.i

.lr.ph.i271.i:                                    ; preds = %_ZN7rocksdb12VarintLengthEm.exit269.i, %.lr.ph.i271.i
  %.06.i272.i = phi i16 [ %i.lc, %.lr.ph.i271.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit269.i ]
  %.045.i273.i = phi i64 [ %i.lb, %.lr.ph.i271.i ], [ %i.ft, %_ZN7rocksdb12VarintLengthEm.exit269.i ] ; 2 uses
  %i.lb = lshr i64 %.045.i273.i, 7
  %i.lc = add nuw nsw i16 %.06.i272.i, 1          ; 2 uses
  %i.ld = icmp samesign ugt i64 %.045.i273.i, 16383
  br i1 %i.ld, label %.lr.ph.i271.i, label %_ZN7rocksdb12VarintLengthEm.exit274.loopexit.i, !llvm.loop !1

_ZN7rocksdb12VarintLengthEm.exit274.loopexit.i:   ; preds = %.lr.ph.i271.i
  %i.le = zext nneg i16 %i.lc to i64
  br label %_ZN7rocksdb12VarintLengthEm.exit274.i

_ZN7rocksdb12VarintLengthEm.exit274.i:            ; preds = %_ZN7rocksdb12VarintLengthEm.exit274.loopexit.i, %_ZN7rocksdb12VarintLengthEm.exit269.i
  %.0.lcssa.i270.i = phi i64 [ 1, %_ZN7rocksdb12VarintLengthEm.exit269.i ], [ %i.le, %_ZN7rocksdb12VarintLengthEm.exit274.loopexit.i ] ; 2 uses
  %i.lf = icmp samesign ugt i64 %i.jy, 127
  br i1 %i.lf, label %.lr.ph.i276.i, label %_ZN7rocksdb12VarintLengthEm.exit279.i

.lr.ph.i276.i:                                    ; preds = %_ZN7rocksdb12VarintLengthEm.exit274.i, %.lr.ph.i276.i
  %.06.i277.i = phi i16 [ %i.lh, %.lr.ph.i276.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit274.i ]
  %.045.i278.i = phi i64 [ %i.lg, %.lr.ph.i276.i ], [ %i.jy, %_ZN7rocksdb12VarintLengthEm.exit274.i ] ; 2 uses
  %i.lg = lshr i64 %.045.i278.i, 7
  %i.lh = add nuw nsw i16 %.06.i277.i, 1          ; 2 uses
  %i.li = icmp samesign ugt i64 %.045.i278.i, 16383
  br i1 %i.li, label %.lr.ph.i276.i, label %_ZN7rocksdb12VarintLengthEm.exit279.loopexit.i, !llvm.loop !1

_ZN7rocksdb12VarintLengthEm.exit279.loopexit.i:   ; preds = %.lr.ph.i276.i
  %i.lj = zext nneg i16 %i.lh to i64
  br label %_ZN7rocksdb12VarintLengthEm.exit279.i

_ZN7rocksdb12VarintLengthEm.exit279.i:            ; preds = %_ZN7rocksdb12VarintLengthEm.exit279.loopexit.i, %_ZN7rocksdb12VarintLengthEm.exit274.i
  %.0.lcssa.i275.i = phi i64 [ 1, %_ZN7rocksdb12VarintLengthEm.exit274.i ], [ %i.lj, %_ZN7rocksdb12VarintLengthEm.exit279.loopexit.i ] ; 2 uses
  %i.lk = icmp samesign ugt i64 %i.fu, 127
  br i1 %i.lk, label %.lr.ph.i281.i, label %_ZN7rocksdb12VarintLengthEm.exit284.i

.lr.ph.i281.i:                                    ; preds = %_ZN7rocksdb12VarintLengthEm.exit279.i, %.lr.ph.i281.i
  %.06.i282.i = phi i16 [ %i.lm, %.lr.ph.i281.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit279.i ]
  %.045.i283.i = phi i64 [ %i.ll, %.lr.ph.i281.i ], [ %i.fu, %_ZN7rocksdb12VarintLengthEm.exit279.i ] ; 2 uses
  %i.ll = lshr i64 %.045.i283.i, 7
  %i.lm = add nuw nsw i16 %.06.i282.i, 1          ; 2 uses
  %i.ln = icmp samesign ugt i64 %.045.i283.i, 16383
  br i1 %i.ln, label %.lr.ph.i281.i, label %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i, !llvm.loop !1

_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i:   ; preds = %.lr.ph.i281.i
  %i.lo = zext nneg i16 %i.lm to i64
  br label %_ZN7rocksdb12VarintLengthEm.exit284.i

_ZN7rocksdb12VarintLengthEm.exit284.i:            ; preds = %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i, %_ZN7rocksdb12VarintLengthEm.exit279.i, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i
  %.0.lcssa.i275751.i = phi i64 [ %.0.lcssa.i275.i, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %.0.lcssa.i275.i, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %.0.lcssa.i265721729750.i = phi i64 [ %.0.lcssa.i265.i, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %.0.lcssa.i265.i, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %.0123.lcssa677683698705720730749.i = phi i64 [ %i.jz, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.jz, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %.0126.lcssa676684697706719731748.i = phi i64 [ %i.jy, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.jy, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ] ; 2 uses
  %.0129.lcssa675685696707718732747.i = phi i64 [ %i.fu, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.fu, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ] ; 2 uses
  %.0132.lcssa674686695708717733746.i = phi i64 [ %i.ft, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.ft, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ] ; 2 uses
  %i.lp = phi ptr [ %.ph.i, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %.ph.i, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ %i.kf, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %i.lq = phi ptr [ %.ph662.i, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %.ph662.i, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ %i.ke, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ] ; 17 uses
  %i.lr = phi ptr [ %.ph663.i, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %.ph663.i, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ %i.kd, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ] ; 2 uses
  %.not159529.not666673687694709716734745.i = phi i1 [ false, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ false, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ true, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %i.ls = phi i32 [ %i.kr, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.kr, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %i.lt = phi i32 [ %i.ks, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.ks, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %i.lu = phi i32 [ %i.kt, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.kt, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %i.lv = phi i32 [ %i.ku, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.ku, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 0, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %.0.lcssa.i270735744.i = phi i64 [ %.0.lcssa.i270.i, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %.0.lcssa.i270.i, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %.0.lcssa.i280.i = phi i64 [ 1, %_ZN7rocksdb12VarintLengthEm.exit279.i ], [ %i.lo, %_ZN7rocksdb12VarintLengthEm.exit284.loopexit.i ], [ 1, %_ZN7rocksdb12VarintLengthEm.exit279.thread.i ]
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !58, !noalias !212
  %i.ly = add nsw i64 %i.l, 1
  %i.lz = add nsw i64 %i.ly, %.0.lcssa.i275751.i
  %i.ma = add nsw i64 %i.lz, %.0.lcssa.i265721729750.i
  %i.mb = add nsw i64 %i.ma, %.0123.lcssa677683698705720730749.i
  %i.mc = add nsw i64 %i.mb, %.0126.lcssa676684697706719731748.i
  %i.md = add i64 %i.mc, %.0129.lcssa675685696707718732747.i
  %i.me = add i64 %i.md, %.0132.lcssa674686695708717733746.i
  %i.mf = add i64 %i.me, %.0.lcssa.i270735744.i
  %i.mg = add i64 %i.mf, %.0.lcssa.i280.i
  %i.mh = add i64 %i.mg, %i.lx                    ; 7 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.mh)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.bf:                                            ; preds = %_ZN7rocksdb12VarintLengthEm.exit284.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21, !noalias !212
  %i.mi = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.e, i32 noundef 2)
          to label %.noexc286.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc286.i:                                      ; preds = %bb.bf
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.e to i64
  %i.ml = sub i64 %i.mj, %i.mk                    ; 5 uses
  %i.mm = load i64, ptr %i.lw, align 8, !tbaa !58, !noalias !212 ; 5 uses
  %i.mn = sub i64 9223372036854775807, %i.mm
  %i.mo = icmp ult i64 %i.mn, %i.ml
  br i1 %i.mo, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %.noexc286.i
  %i.mp = add i64 %i.mm, %i.ml                    ; 3 uses
  %i.mq = load ptr, ptr %3, align 8, !tbaa !59, !noalias !212 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  %i.ms = icmp eq ptr %i.mq, %i.mr
  br i1 %i.ms, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.mt = icmp ult i64 %i.mm, 16
  call void @llvm.assume(i1 %i.mt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.mu = load i64, ptr %i.mr, align 8, !tbaa !50, !noalias !212
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.mv = phi i64 [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i285.i = icmp ugt i64 %i.mp, %i.mv
  br i1 %.not.i.i.i285.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq ptr %i.mi, %i.e
  br i1 %.not8.i.i.i.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mm ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ml, 1
  br i1 %cond.i.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.mx = load i8, ptr %i.e, align 1, !tbaa !50, !noalias !212
  store i8 %i.mx, ptr %i.mw, align 1, !tbaa !50
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mw, ptr nonnull align 1 %i.e, i64 %i.ml, i1 false)
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.mm, i64 noundef 0, ptr noundef nonnull %i.e, i64 noundef %i.ml)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  store i64 %i.mp, ptr %i.lw, align 8, !tbaa !58, !noalias !212
  %i.my = load ptr, ptr %3, align 8, !tbaa !59, !noalias !212
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mp
  store i8 0, ptr %i.mz, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21, !noalias !212
  %i.na = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.d, i32 noundef %i.lv)
          to label %.noexc296.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc296.i:                                      ; preds = %bb.bl
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.d to i64
  %i.nd = sub i64 %i.nb, %i.nc                    ; 5 uses
  %i.ne = load i64, ptr %i.lw, align 8, !tbaa !58, !noalias !212 ; 5 uses
  %i.nf = sub i64 9223372036854775807, %i.ne
  %i.ng = icmp ult i64 %i.nf, %i.nd
  br i1 %i.ng, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i289.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i289.i: ; preds = %.noexc296.i
  %i.nh = add i64 %i.ne, %i.nd                    ; 3 uses
  %i.ni = load ptr, ptr %3, align 8, !tbaa !59, !noalias !212 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.mr
  br i1 %i.nj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i295.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i290.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i295.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i289.i
  %i.nk = icmp ult i64 %i.ne, 16
  call void @llvm.assume(i1 %i.nk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i291.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i290.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i289.i
  %i.nl = load i64, ptr %i.mr, align 8, !tbaa !50, !noalias !212
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i291.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i291.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i290.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i295.i
  %i.nm = phi i64 [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i290.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i295.i ]
  %.not.i.i.i292.i = icmp ugt i64 %i.nh, %i.nm
  br i1 %.not.i.i.i292.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i291.i
  %.not8.i.i.i293.i = icmp eq ptr %i.na, %i.d
  br i1 %.not8.i.i.i293.i, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ne ; 2 uses
  %cond.i.i.i294.i = icmp eq i64 %i.nd, 1
  br i1 %cond.i.i.i294.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.no = load i8, ptr %i.d, align 1, !tbaa !50, !noalias !212
  store i8 %i.no, ptr %i.nn, align 1, !tbaa !50
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nn, ptr nonnull align 1 %i.d, i64 %i.nd, i1 false)
  br label %bb.br

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i291.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ne, i64 noundef 0, ptr noundef nonnull %i.d, i64 noundef %i.nd)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  store i64 %i.nh, ptr %i.lw, align 8, !tbaa !58, !noalias !212
  %i.np = load ptr, ptr %3, align 8, !tbaa !59, !noalias !212
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nh
  store i8 0, ptr %i.nq, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21, !noalias !212
  %i.nr = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.c, i32 noundef %i.ls)
          to label %.noexc307.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc307.i:                                      ; preds = %bb.br
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.c to i64
  %i.nu = sub i64 %i.ns, %i.nt                    ; 5 uses
  %i.nv = load i64, ptr %i.lw, align 8, !tbaa !58, !noalias !212 ; 5 uses
  %i.nw = sub i64 9223372036854775807, %i.nv
  %i.nx = icmp ult i64 %i.nw, %i.nu
  br i1 %i.nx, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i300.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i300.i: ; preds = %.noexc307.i
  %i.ny = add i64 %i.nv, %i.nu                    ; 3 uses
  %i.nz = load ptr, ptr %3, align 8, !tbaa !59, !noalias !212 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.mr
  br i1 %i.oa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i306.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i301.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i306.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i300.i
  %i.ob = icmp ult i64 %i.nv, 16
  call void @llvm.assume(i1 %i.ob)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i302.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i301.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i300.i
  %i.oc = load i64, ptr %i.mr, align 8, !tbaa !50, !noalias !212
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i302.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i302.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i301.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i306.i
  %i.od = phi i64 [ %i.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i301.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i306.i ]
  %.not.i.i.i303.i = icmp ugt i64 %i.ny, %i.od
  br i1 %.not.i.i.i303.i, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i302.i
  %.not8.i.i.i304.i = icmp eq ptr %i.nr, %i.c
  br i1 %.not8.i.i.i304.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
end_hunk_1
