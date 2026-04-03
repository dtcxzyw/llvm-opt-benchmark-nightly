begin_hunk_0
  %i.kz = getelementptr inbounds nuw i8, ptr %91, i64 40 ; 11 uses
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit324.i.i, %.lr.ph344.i.i
  %.082342.i.i = phi i64 [ %i.ks, %.lr.ph344.i.i ], [ %.385.i.i, %.loopexit324.i.i ] ; 5 uses
  %.086341.i.i = phi i16 [ 0, %.lr.ph344.i.i ], [ %.490.i.i, %.loopexit324.i.i ] ; 6 uses
end_hunk_0
begin_hunk_1
  %i.mx = add nuw nsw i64 %.01532.i.i.i, 2        ; 2 uses
  %niter303.next.1 = add i64 %niter303, 2         ; 2 uses
  %niter303.ncmp.1 = icmp eq i64 %niter303.next.1, %unroll_iter302
  br i1 %niter303.ncmp.1, label %._crit_edge.i269.i.i.loopexit.unr-lcssa, label %.lr.ph.i271.i.i, !llvm.loop !136

bb.bn:                                            ; preds = %bb.bl
  %i.my = load i64, ptr %.sroa.0284.0338.i.i, align 1, !noalias !70 ; 2 uses
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #25, !noalias !70
  %i.nr = sext i16 %.sroa.9.0.extract.trunc.i.i to i64
  %i.ns = shl nsw i64 %i.nr, 1
  %i.nt = load i64, ptr %i.kz, align 8, !tbaa !130, !noalias !137
  %i.nu = add nsw i64 %i.ns, %i.nt                ; 2 uses
  %i.nv = load i64, ptr %i.kp, align 8, !tbaa !142, !noalias !137 ; 2 uses
  %.not.i.i187.i.i.a = icmp sgt i64 %i.nu, %i.nv
  br i1 %.not.i.i187.i.i.a, label %bb.bs, label %_ZN5arrow6StatusD2Ev.exit190.thread.i.i

end_hunk_2
begin_hunk_3
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %92) #25
  %i.ny = load ptr, ptr %92, align 8, !tbaa !112, !noalias !70 ; 2 uses
  %.not.i191.i.i = icmp eq ptr %i.ny, null
  br i1 %.not.i191.i.i, label %103, label %bb.bt, !prof !116

bb.bt:                                            ; preds = %.critedge151.i.i.a
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !117, !range !126, !noundef !127
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %103, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %92) #25
  br label %103

bb.bv:                                            ; preds = %bb.bs
  %i.oc = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4
  store i64 %i.oy, ptr %i.kz, align 8, !tbaa !130, !noalias !70
  %niter311.next.1 = add i64 %niter311, 2         ; 2 uses
  %niter311.ncmp.1 = icmp eq i64 %niter311.next.1, %unroll_iter310
  br i1 %niter311.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph334.i.i, !llvm.loop !143

bb.bw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit196.i.i
  %i.oz = icmp eq i32 %.sroa.9.0.extract.shift.i.i, 0
end_hunk_4
begin_hunk_5
.preheader323.i.i:                                ; preds = %bb.bw
  %i.pa = sext i16 %.sroa.0278.0.extract.trunc.i.i to i64 ; 2 uses
  %i.pb = icmp sgt i16 %.sroa.0278.0.extract.trunc.i.i, 0
  br i1 %i.pb, label %.lr.ph.i.i.a, label %.loopexit324.i.i

.lr.ph.i.i.a:                                     ; preds = %.preheader323.i.i, %bb.bz
  %.080330.i.i = phi i64 [ %i.pu, %bb.bz ], [ 0, %.preheader323.i.i ]
  %.183329.i.i = phi i64 [ %i.pt, %bb.bz ], [ %.082342.i.i, %.preheader323.i.i ] ; 3 uses
  %.288328.i.i = phi i16 [ %i.ps, %bb.bz ], [ %.086341.i.i, %.preheader323.i.i ] ; 2 uses
  %i.pc = lshr i64 %.183329.i.i, 3                ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !98, !noalias !70
end_hunk_5
begin_hunk_6
  %i.pt = add nsw i64 %.183329.i.i, 1
  %i.pu = add nuw nsw i64 %.080330.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.pu, %i.pa
  br i1 %exitcond.not.i.i, label %.loopexit324.loopexit.i.i, label %.lr.ph.i.i.a, !llvm.loop !144

bb.ca:                                            ; preds = %bb.bw
  %i.pv = add i16 %.086341.i.i, %.sroa.0278.0.extract.trunc.i.i
end_hunk_6
begin_hunk_7
  %i.px = add nsw i64 %.082342.i.i, %i.pw
  br label %.loopexit324.i.i

.loopexit324.loopexit.i.i:                        ; preds = %bb.bz
  %102 = add i64 %.082342.i.i, %i.pa
  br label %.loopexit324.i.i

.loopexit324.i.i:                                 ; preds = %.loopexit324.loopexit.i.i, %bb.ca, %.preheader323.i.i, %._crit_edge.i.i
  %.490.i.i = phi i16 [ %i.pv, %bb.ca ], [ %.187.lcssa.i.i, %._crit_edge.i.i ], [ %.086341.i.i, %.preheader323.i.i ], [ %i.ps, %.loopexit324.loopexit.i.i ] ; 2 uses
  %.385.i.i = phi i64 [ %i.px, %bb.ca ], [ %i.on, %._crit_edge.i.i ], [ %.082342.i.i, %.preheader323.i.i ], [ %102, %.loopexit324.loopexit.i.i ]
  %i.py = zext i16 %.490.i.i to i64
  %i.pz = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !70
  %.not.i.i = icmp sgt i64 %i.pz, %i.py
  br i1 %.not.i.i, label %bb.bk, label %.critedge153.i.i, !llvm.loop !145

103:                                              ; preds = %bb.bu, %bb.bt, %.critedge151.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25, !noalias !70
  br label %bb.ed

bb.cb:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #25, !noalias !70
end_hunk_7
begin_hunk_8
  %i.rc = shl i64 %i.qz, 1
  %i.rd = load i64, ptr %i.qy, align 8, !tbaa !130, !noalias !157
  %i.re = add nsw i64 %i.rd, %i.rc                ; 2 uses
  %i.rf = load i64, ptr %i.kp, align 8, !tbaa !142, !noalias !157 ; 2 uses
  %.not.i.i.i15.i.i.i = icmp sgt i64 %i.re, %i.rf
  br i1 %.not.i.i.i15.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i22.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i.i

end_hunk_8
begin_hunk_9
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #25, !noalias !70
  br label %bb.ek

bb.ed:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247.i.i, %_ZN5arrow6StatusD2Ev.exit206.i.i, %103
  %i.xt = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !95, !noalias !70 ; 8 uses
  %.not.i.i.i.i248.i.i = icmp eq ptr %i.xu, null
end_hunk_9
begin_hunk_10
  %i.ake = getelementptr inbounds nuw i8, ptr %71, i64 40 ; 11 uses
  br label %bb.gt

bb.gt:                                            ; preds = %.loopexit324.i128.i, %.lr.ph344.i100.i
  %.082342.i104.i = phi i64 [ %i.ajx, %.lr.ph344.i100.i ], [ %.385.i130.i, %.loopexit324.i128.i ] ; 5 uses
  %.086341.i105.i = phi i32 [ 0, %.lr.ph344.i100.i ], [ %.490.i129.i, %.loopexit324.i128.i ] ; 6 uses
end_hunk_10
begin_hunk_11
  %i.amc = add nuw nsw i64 %.01532.i.i157.i, 2    ; 2 uses
  %niter337.next.1 = add i64 %niter337, 2         ; 2 uses
  %niter337.ncmp.1 = icmp eq i64 %niter337.next.1, %unroll_iter336
  br i1 %niter337.ncmp.1, label %._crit_edge.i269.i154.i.loopexit.unr-lcssa, label %.lr.ph.i271.i156.i, !llvm.loop !136

bb.gw:                                            ; preds = %bb.gu
  %i.amd = load i64, ptr %.sroa.0284.0338.i108.i, align 1, !noalias !197 ; 2 uses
end_hunk_11
begin_hunk_12
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #25, !noalias !197
  %i.amw = sext i16 %.sroa.9.0.extract.trunc.i123.i to i64
  %i.amx = shl nsw i64 %i.amw, 2
  %i.amy = load i64, ptr %i.ake, align 8, !tbaa !130, !noalias !208
  %i.amz = add nsw i64 %i.amx, %i.amy             ; 2 uses
  %i.ana = load i64, ptr %i.aju, align 8, !tbaa !142, !noalias !208 ; 2 uses
  %.not.i.i187.i124.i = icmp sgt i64 %i.amz, %i.ana
  br i1 %.not.i.i187.i124.i, label %bb.hb, label %_ZN5arrow6StatusD2Ev.exit190.thread.i125.i

end_hunk_12
begin_hunk_13
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #25
  %i.and = load ptr, ptr %72, align 8, !tbaa !112, !noalias !197 ; 2 uses
  %.not.i191.i151.i = icmp eq ptr %i.and, null
  br i1 %.not.i191.i151.i, label %105, label %bb.hc, !prof !116

bb.hc:                                            ; preds = %.critedge151.i150.i
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 1
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !117, !range !126, !noundef !127
  %i.ang = trunc nuw i8 %i.anf to i1
  br i1 %i.ang, label %105, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %72) #25
  br label %105

bb.he:                                            ; preds = %bb.hb
  %i.anh = landingpad { ptr, i32 }
end_hunk_13
begin_hunk_14
  store i64 %i.aod, ptr %i.ake, align 8, !tbaa !130, !noalias !197
  %niter345.next.1 = add i64 %niter345, 2         ; 2 uses
  %niter345.ncmp.1 = icmp eq i64 %niter345.next.1, %unroll_iter344
  br i1 %niter345.ncmp.1, label %._crit_edge.i139.i.loopexit.unr-lcssa, label %.lr.ph334.i143.i, !llvm.loop !213

bb.hf:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit196.i126.i
  %i.aoe = icmp eq i32 %.sroa.9.0.extract.shift.i122.i, 0
end_hunk_14
begin_hunk_15
.preheader323.i127.i:                             ; preds = %bb.hf
  %i.aof = sext i16 %.sroa.0278.0.extract.trunc.i121.i to i64 ; 2 uses
  %i.aog = icmp sgt i16 %.sroa.0278.0.extract.trunc.i121.i, 0
  br i1 %i.aog, label %.lr.ph.i132.i.a, label %.loopexit324.i128.i

.lr.ph.i132.i.a:                                  ; preds = %.preheader323.i127.i, %bb.hi
  %.080330.i133.i = phi i64 [ %i.aoz, %bb.hi ], [ 0, %.preheader323.i127.i ]
  %.183329.i134.i = phi i64 [ %i.aoy, %bb.hi ], [ %.082342.i104.i, %.preheader323.i127.i ] ; 3 uses
  %.288328.i135.i = phi i32 [ %i.aox, %bb.hi ], [ %.086341.i105.i, %.preheader323.i127.i ] ; 2 uses
  %i.aoh = lshr i64 %.183329.i134.i, 3            ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.aoh
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !98, !noalias !197
end_hunk_15
begin_hunk_16
  %i.aoy = add nsw i64 %.183329.i134.i, 1
  %i.aoz = add nuw nsw i64 %.080330.i133.i, 1     ; 2 uses
  %exitcond.not.i136.i = icmp eq i64 %i.aoz, %i.aof
  br i1 %exitcond.not.i136.i, label %.loopexit324.loopexit.i137.i, label %.lr.ph.i132.i.a, !llvm.loop !214

bb.hj:                                            ; preds = %bb.hf
  %sext.i.i = shl nuw i32 %.sroa.0.0.insert.insert.i265.i120.i, 16
end_hunk_16
begin_hunk_17
  %i.apd = add nsw i64 %.082342.i104.i, %i.apc
  br label %.loopexit324.i128.i

.loopexit324.loopexit.i137.i:                     ; preds = %bb.hi
  %104 = add i64 %.082342.i104.i, %i.aof
  br label %.loopexit324.i128.i

.loopexit324.i128.i:                              ; preds = %.loopexit324.loopexit.i137.i, %bb.hj, %.preheader323.i127.i, %._crit_edge.i139.i
  %.490.i129.i = phi i32 [ %i.apb, %bb.hj ], [ %.187.lcssa.i140.i, %._crit_edge.i139.i ], [ %.086341.i105.i, %.preheader323.i127.i ], [ %i.aox, %.loopexit324.loopexit.i137.i ] ; 2 uses
  %.385.i130.i = phi i64 [ %i.apd, %bb.hj ], [ %i.ans, %._crit_edge.i139.i ], [ %.082342.i104.i, %.preheader323.i127.i ], [ %104, %.loopexit324.loopexit.i137.i ]
  %i.ape = zext i32 %.490.i129.i to i64
  %i.apf = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !197
  %.not.i131.i = icmp sgt i64 %i.apf, %i.ape
  br i1 %.not.i131.i, label %bb.gt, label %.critedge153.i28.i, !llvm.loop !215

105:                                              ; preds = %bb.hd, %bb.hc, %.critedge151.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25, !noalias !197
  br label %bb.jl

bb.hk:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #25, !noalias !197
end_hunk_17
begin_hunk_18
  %i.aqg = shl i64 %i.aqd, 2
  %i.aqh = load i64, ptr %i.aqc, align 8, !tbaa !130, !noalias !226
  %i.aqi = add nsw i64 %i.aqh, %i.aqg             ; 2 uses
  %i.aqj = load i64, ptr %i.aju, align 8, !tbaa !142, !noalias !226 ; 2 uses
  %.not.i.i.i15.i.i19.i = icmp sgt i64 %i.aqi, %i.aqj
  br i1 %.not.i.i.i15.i.i19.i, label %_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i20.i

end_hunk_18
begin_hunk_19
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #25, !noalias !197
  br label %bb.js

bb.jl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit247.i37.i, %_ZN5arrow6StatusD2Ev.exit206.i87.i, %105
  %i.awx = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !95, !noalias !197 ; 8 uses
  %.not.i.i.i.i248.i38.i = icmp eq ptr %i.awy, null
end_hunk_19
begin_hunk_20
  %i.bgx = shl i64 %i.bgw, 1
  %i.bgy = load i64, ptr %i.bgf, align 8, !tbaa !130, !noalias !270
  %i.bgz = add nsw i64 %i.bgx, %i.bgy             ; 2 uses
  %i.bha = load i64, ptr %i.bgc, align 8, !tbaa !142, !noalias !270 ; 2 uses
  %.not.i.i187.i.i28 = icmp sgt i64 %i.bgz, %i.bha
  br i1 %.not.i.i187.i.i28, label %bb.lt, label %_ZN5arrow6StatusD2Ev.exit191.thread.i.i

end_hunk_20
begin_hunk_21
  %i.biw = shl i64 %i.biv, 1
  %i.bix = load i64, ptr %i.bge, align 8, !tbaa !130, !noalias !276
  %i.biy = add nsw i64 %i.biw, %i.bix             ; 2 uses
  %i.biz = load i64, ptr %i.bgc, align 8, !tbaa !142, !noalias !276 ; 2 uses
  %.not.i.i202.i.i = icmp sgt i64 %i.biy, %i.biz
  br i1 %.not.i.i202.i.i, label %bb.ma, label %_ZN5arrow6StatusD2Ev.exit207.thread.i.i

end_hunk_21
begin_hunk_22
  %i.byj = shl i64 %i.byi, 2
  %i.byk = load i64, ptr %i.bxr, align 8, !tbaa !130, !noalias !314
  %i.byl = add nsw i64 %i.byj, %i.byk             ; 2 uses
  %i.bym = load i64, ptr %i.bxo, align 8, !tbaa !142, !noalias !314 ; 2 uses
  %.not.i.i187.i91.i = icmp sgt i64 %i.byl, %i.bym
  br i1 %.not.i.i187.i91.i, label %bb.px, label %_ZN5arrow6StatusD2Ev.exit191.thread.i92.i

end_hunk_22
begin_hunk_23
  %i.cai = shl i64 %i.cah, 2
  %i.caj = load i64, ptr %i.bxq, align 8, !tbaa !130, !noalias !320
  %i.cak = add nsw i64 %i.cai, %i.caj             ; 2 uses
  %i.cal = load i64, ptr %i.bxo, align 8, !tbaa !142, !noalias !320 ; 2 uses
  %.not.i.i202.i68.i = icmp sgt i64 %i.cak, %i.cal
  br i1 %.not.i.i202.i68.i, label %bb.qe, label %_ZN5arrow6StatusD2Ev.exit207.thread.i69.i

end_hunk_23
begin_hunk_24
  %i.cpp = shl i64 %i.cpo, 3
  %i.cpq = load i64, ptr %i.coy, align 8, !tbaa !130, !noalias !355
  %i.cpr = add nsw i64 %i.cpp, %i.cpq             ; 2 uses
  %i.cps = load i64, ptr %i.cov, align 8, !tbaa !142, !noalias !355 ; 2 uses
  %.not.i.i187.i251.i = icmp sgt i64 %i.cpr, %i.cps
  br i1 %.not.i.i187.i251.i, label %bb.ub, label %_ZN5arrow6StatusD2Ev.exit191.thread.i252.i

end_hunk_24
begin_hunk_25
  %i.crj = shl i64 %i.cri, 3
  %i.crk = load i64, ptr %i.cox, align 8, !tbaa !130, !noalias !361
  %i.crl = add nsw i64 %i.crj, %i.crk             ; 2 uses
  %i.crm = load i64, ptr %i.cov, align 8, !tbaa !142, !noalias !361 ; 2 uses
  %.not.i.i202.i228.i = icmp sgt i64 %i.crl, %i.crm
  br i1 %.not.i.i202.i228.i, label %bb.ui, label %_ZN5arrow6StatusD2Ev.exit207.thread.i229.i

end_hunk_25
begin_hunk_26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !917
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !142
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !399, !range !126, !noundef !127
  %i.bi = trunc nuw i8 %i.bh to i1
end_hunk_26
begin_hunk_27
!134 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!135 = !{!134, !4, i64 12}
!136 = distinct !{!136, !106}
!137 = !{!138, !140, !64, !60}
!138 = distinct !{!138, !139, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!139 = distinct !{!139, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!140 = distinct !{!140, !141, !"_ZN5arrow18TypedBufferBuilderItvE7ReserveEl: argument 0"}
!141 = distinct !{!141, !"_ZN5arrow18TypedBufferBuilderItvE7ReserveEl"}
!142 = !{!76, !28, i64 32}
!143 = distinct !{!143, !106}
!144 = distinct !{!144, !106}
!145 = distinct !{!145, !106}
!146 = !{!147, !149, !64, !60}
end_hunk_27
begin_hunk_28
!205 = distinct !{!205, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!206 = distinct !{!206, !106}
!207 = distinct !{!207, !106}
!208 = !{!209, !211, !195, !60}
!209 = distinct !{!209, !210, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!210 = distinct !{!210, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!211 = distinct !{!211, !212, !"_ZN5arrow18TypedBufferBuilderIjvE7ReserveEl: argument 0"}
!212 = distinct !{!212, !"_ZN5arrow18TypedBufferBuilderIjvE7ReserveEl"}
!213 = distinct !{!213, !106}
!214 = distinct !{!214, !106}
!215 = distinct !{!215, !106}
!216 = !{!217, !219, !195, !60}
end_hunk_28
