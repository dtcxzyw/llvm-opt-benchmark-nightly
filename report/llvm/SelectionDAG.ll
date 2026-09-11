Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAG?download=true
inline.NumInlined: 15007
inline.NumDeleted: 4174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE:bb.a
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread1643

bb.jf:                                            ; preds = %_ZNK4llvm3EVT6bitsGTES0_.exit.thread
  %i.aku = zext i32 %i.aks to i64
  %i.akv = load ptr, ptr %80, align 8, !tbaa !63
  %i.akw = getelementptr inbounds nuw [16 x i8], ptr %i.akv, i64 %i.aku ; 2 uses
  store ptr %.sroa.01376.0, ptr %i.akw, align 1
  %.sroa.32.0..sroa_idx.i1346 = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  store i32 %.sroa.91380.0, ptr %.sroa.32.0..sroa_idx.i1346, align 1
  %i.akx = load i32, ptr %i.ahm, align 8, !tbaa !136
  %i.aky = add i32 %i.akx, 1
  store i32 %i.aky, ptr %i.ahm, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread1643

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread1643: ; preds = %bb.je, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #32
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread: ; preds = %bb.ir, %bb.iq, %bb.in, %bb.io, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread1643
  %i.akz = getelementptr inbounds nuw i8, ptr %.09191692, i64 16 ; 2 uses
  %.not956 = icmp eq ptr %i.akz, %i.aho
  br i1 %.not956, label %._crit_edge1695.loopexit, label %.lr.ph1694

bb.jg:                                            ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #32
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1356

._crit_edge1695.loopexit:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread
  %.pre1725 = load ptr, ptr %80, align 8, !tbaa !63
  %.pre1726 = load i32, ptr %i.ahm, align 8, !tbaa !136
  %i.ala = zext i32 %.pre1726 to i64
  br label %._crit_edge1695

._crit_edge1695:                                  ; preds = %._crit_edge1695.loopexit, %bb.ii
  %i.alb = phi i64 [ %i.ala, %._crit_edge1695.loopexit ], [ 0, %bb.ii ]
  %i.alc = phi ptr [ %.pre1725, %._crit_edge1695.loopexit ], [ %i.ahl, %bb.ii ]
  store ptr %i.alc, ptr %83, align 8, !tbaa !617
  store i64 %i.alb, ptr %i.ahv, align 8, !tbaa !618
  %i.ald = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.01396.01629, ptr %.sroa.71399.01627, ptr noundef nonnull byval(%"class.llvm::ArrayRef.122") align 8 %83, i32 %6) ; 2 uses
  %.fca.0.extract102 = extractvalue { ptr, i32 } %i.ald, 0 ; 3 uses
  %.fca.1.extract103 = extractvalue { ptr, i32 } %i.ald, 1 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.fca.0.extract102, i64 24
  %i.alf = load i32, ptr %i.ale, align 8, !tbaa !88
  switch i32 %i.alf, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1356 [
    i32 54, label %bb.jh
    i32 53, label %bb.jh
    i32 13, label %bb.jh
    i32 12, label %bb.jh
  ]

bb.jh:                                            ; preds = %._crit_edge1695, %._crit_edge1695, %._crit_edge1695, %._crit_edge1695
  %i.alg = load i16, ptr %78, align 8, !tbaa !108 ; 2 uses
  %.not.i1349 = icmp ne i16 %i.alg, %.sroa.01396.01629
  %i.alh = load ptr, ptr %i.agn, align 8          ; 2 uses
  %i.ali = icmp ne ptr %i.alh, %.sroa.71399.01627
  %i.alj = select i1 %.not.i1349, i1 true, i1 %i.ali
  br i1 %i.alj, label %bb.ji, label %bb.jk

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.alk = load ptr, ptr %i.ahu, align 8, !tbaa !604 ; 2 uses
  %.not.i1350 = icmp eq ptr %i.alk, null
  br i1 %.not.i1350, label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1353, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %.sroa.0.0.copyload.i.i1351 = load i32, ptr %i.all, align 8, !tbaa !114
  br label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1353

_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1353: ; preds = %bb.ji, %bb.jj
  %.sroa.01572.0 = phi i32 [ 0, %bb.ji ], [ %.sroa.0.0.copyload.i.i1351, %bb.jj ]
  store ptr %.fca.0.extract102, ptr %10, align 8, !tbaa !109
  store i32 %.fca.1.extract103, ptr %.sroa.41570.0..sroa_idx, align 8, !tbaa !114
  %i.alm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %i.agk, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %i.alg, ptr %i.alh, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, i32 %.sroa.01572.0), !inline_history !605 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract91 = extractvalue { ptr, i32 } %i.alm, 0
  %.fca.1.extract92 = extractvalue { ptr, i32 } %i.alm, 1
  br label %bb.jk

bb.jk:                                            ; preds = %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1353, %bb.jh
  %.sroa.9.0 = phi i32 [ %.fca.1.extract92, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1353 ], [ %.fca.1.extract103, %bb.jh ] ; 2 uses
  %.sroa.01371.0 = phi ptr [ %.fca.0.extract91, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1353 ], [ %.fca.0.extract102, %bb.jh ] ; 2 uses
  %i.aln = load i32, ptr %i.ahj, align 8, !tbaa !136 ; 2 uses
  %i.alo = load i32, ptr %i.ahk, align 4, !tbaa !137
  %.not.i1354 = icmp ult i32 %i.aln, %i.alo
  br i1 %.not.i1354, label %bb.jm, label %bb.jl, !prof !139

bb.jl:                                            ; preds = %bb.jk
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr %.sroa.01371.0, i32 %.sroa.9.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1356

bb.jm:                                            ; preds = %bb.jk
  %i.alp = zext i32 %i.aln to i64
  %i.alq = load ptr, ptr %79, align 8, !tbaa !63
  %i.alr = getelementptr inbounds nuw [16 x i8], ptr %i.alq, i64 %i.alp ; 2 uses
  store ptr %.sroa.01371.0, ptr %i.alr, align 1
  %.sroa.32.0..sroa_idx.i1355 = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.32.0..sroa_idx.i1355, align 1
  %i.als = load i32, ptr %i.ahj, align 8, !tbaa !136
  %i.alt = add i32 %i.als, 1
  store i32 %i.alt, ptr %i.ahj, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1356

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1356: ; preds = %._crit_edge1695, %bb.jl, %bb.jm, %bb.jg
  %.sroa.82.23 = phi i32 [ 0, %bb.jg ], [ 0, %._crit_edge1695 ], [ %.sroa.82.171697, %bb.jl ], [ %.sroa.82.171697, %bb.jm ] ; 2 uses
  %cond2 = phi i1 [ false, %bb.jg ], [ false, %._crit_edge1695 ], [ true, %bb.jl ], [ true, %bb.jm ]
  %i.alu = load ptr, ptr %80, align 8, !tbaa !63  ; 2 uses
  %i.alv = icmp eq ptr %i.alu, %i.ahl
  br i1 %i.alv, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.jn

bb.jn:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1356
  call void @free(ptr noundef %i.alu) #32
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1356, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #32
  br i1 %cond2, label %bb.ih, label %.loopexit

._crit_edge1702.loopexit:                         ; preds = %bb.ih
  %.pre1845 = load ptr, ptr %79, align 8, !tbaa !63
  br label %._crit_edge1702

._crit_edge1702:                                  ; preds = %._crit_edge1702.loopexit, %bb.ig
  %i.alw = phi ptr [ %.pre1845, %._crit_edge1702.loopexit ], [ %i.ahi, %bb.ig ] ; 3 uses
  %.sroa.075.0.copyload = load i16, ptr %21, align 8, !tbaa !97 ; 2 uses
  %.sroa.277.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !99 ; 2 uses
  br i1 %.not1676, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %._crit_edge1702
  %.sroa.082.0.copyload = load ptr, ptr %i.alw, align 8, !tbaa !109
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %.sroa.283.0.copyload = load i32, ptr %.sroa.283.0..sroa_idx, align 8, !tbaa !114
  %i.alx = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSplatVectorENS_3EVTERKNS_5SDLocENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %.sroa.075.0.copyload, ptr %.sroa.277.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.082.0.copyload, i32 %.sroa.283.0.copyload) ; 2 uses
  %.fca.0.extract78 = extractvalue { ptr, i32 } %i.alx, 0
  %.fca.1.extract79 = extractvalue { ptr, i32 } %i.alx, 1
  br label %.loopexit

bb.jp:                                            ; preds = %._crit_edge1702
  %i.aly = load i32, ptr %i.ahj, align 8, !tbaa !136
  %i.alz = zext i32 %i.aly to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ama = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !604 ; 2 uses
  %.not.i1366 = icmp eq ptr %i.amb, null
  br i1 %.not.i1366, label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1369, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  %.sroa.0.0.copyload.i.i1367 = load i32, ptr %i.amc, align 8, !tbaa !114
  br label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1369

_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1369: ; preds = %bb.jp, %bb.jq
  %.sroa.01583.0 = phi i32 [ 0, %bb.jp ], [ %.sroa.0.0.copyload.i.i1367, %bb.jq ]
  store ptr %i.alw, ptr %7, align 8, !tbaa !630
  %.sroa.41582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.alz, ptr %.sroa.41582.0..sroa_idx, align 8, !tbaa !111
  %i.amd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.075.0.copyload, ptr %.sroa.277.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.122") align 8 %7, i32 %.sroa.01583.0), !inline_history !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract = extractvalue { ptr, i32 } %i.amd, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.amd, 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.jo, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1369
  %.sroa.82.26 = phi i32 [ %.fca.1.extract, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1369 ], [ %.fca.1.extract79, %bb.jo ], [ %.sroa.82.23, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ]
  %.sroa.01554.26 = phi ptr [ %.fca.0.extract, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1369 ], [ %.fca.0.extract78, %bb.jo ], [ null, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ]
  %i.ame = load ptr, ptr %79, align 8, !tbaa !63  ; 2 uses
  %i.amf = icmp eq ptr %i.ame, %i.ahi
  br i1 %i.amf, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1358, label %bb.jr

bb.jr:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.ame) #32
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1358

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1358: ; preds = %.loopexit, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #32
  br label %bb.js

bb.js:                                            ; preds = %bb.if, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1358
  %.sroa.82.27 = phi i32 [ %.sroa.82.26, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1358 ], [ 0, %bb.if ]
  %.sroa.01554.27 = phi ptr [ %.sroa.01554.26, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1358 ], [ null, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #32
  br label %.critedge976

.critedge988:                                     ; preds = %bb.ff, %bb.fe, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit, %bb.en, %bb.em, %_ZN4llvm5APIntC2ERKS0_.exit1179, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.rv, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ %i.qu, %bb.en ], [ %i.qu, %_ZN4llvm5APIntC2ERKS0_.exit1179 ], [ %i.qu, %bb.em ], [ %i.ts, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit ], [ %i.ts, %bb.fe ], [ %i.ts, %bb.ff ] ; 2 uses
  %.sroa.01554.30 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.82.30 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #32
  br label %.critedge976

.critedge976:                                     ; preds = %_ZN4llvm5APIntD2Ev.exit1165, %.critedge971, %_ZN4llvm5APIntD2Ev.exit1017, %_ZN4llvm5APIntD2Ev.exit1030, %_ZN4llvm5APIntD2Ev.exit1040, %_ZN4llvm5APIntD2Ev.exit1041, %bb.ak, %_ZN4llvm5APIntD2Ev.exit1042, %_ZN4llvm5APIntD2Ev.exit1043, %_ZN4llvm5APIntD2Ev.exit1044, %_ZNK4llvm5APInt8popcountEv.exit, %_ZNK4llvm5APInt11countl_zeroEv.exit, %_ZNK4llvm5APInt11countr_zeroEv.exit, %bb.bd, %_ZN4llvm5APIntD2Ev.exit1056, %_ZN4llvm5APIntD2Ev.exit1057, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.br, %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread, %bb.js, %bb.hl, %_ZN4llvm9BitVectorD2Ev.exit1304, %_ZN4llvm5APIntD2Ev.exit1315, %bb.hz, %bb.hy, %_ZNK4llvm3EVT8isVectorEv.exit, %.split, %bb.fy, %_ZN4llvm5APIntD2Ev.exit1204, %bb.fl, %bb.fk, %bb.fj, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, %bb.ed, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit1168, %bb.b, %bb.a, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit1171, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.d, %bb.eb, %.critedge988
  %.sroa.82.31 = phi i32 [ 0, %bb.hy ], [ 0, %bb.a ], [ %.fca.1.extract790, %bb.d ], [ %.fca.1.extract432, %bb.eb ], [ %.sroa.82.30, %.critedge988 ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ], [ 0, %bb.fj ], [ %.fca.1.extract305, %bb.fy ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit1168 ], [ %.fca.1.extract401, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit1171 ], [ %.fca.1.extract410, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ 0, %bb.b ], [ %.sroa.82.51800, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit ], [ 0, %bb.ed ], [ %.fca.1.extract322, %_ZN4llvm5APIntD2Ev.exit1204 ], [ 0, %bb.fl ], [ 0, %bb.fk ], [ 0, %.split ], [ %.fca.1.extract170, %_ZN4llvm5APIntD2Ev.exit1315 ], [ %.sroa.82.27, %bb.js ], [ %.fca.1.extract177, %bb.hl ], [ %.fca.1.extract196, %_ZN4llvm9BitVectorD2Ev.exit1304 ], [ 0, %bb.hz ], [ %.fca.1.extract570, %bb.ca ], [ %.sroa.82.3, %_ZN4llvm5APIntD2Ev.exit1165 ], [ %.sroa.82.1, %.critedge971 ], [ %.fca.1.extract727, %_ZN4llvm5APIntD2Ev.exit ], [ %.fca.1.extract716, %_ZN4llvm5APIntD2Ev.exit1017 ], [ %.fca.1.extract700, %_ZN4llvm5APIntD2Ev.exit1030 ], [ %.fca.1.extract689, %_ZN4llvm5APIntD2Ev.exit1040 ], [ %.fca.1.extract682, %_ZN4llvm5APIntD2Ev.exit1041 ], [ %.fca.1.extract675, %bb.ak ], [ %.fca.1.extract668, %_ZN4llvm5APIntD2Ev.exit1042 ], [ %.fca.1.extract661, %_ZN4llvm5APIntD2Ev.exit1043 ], [ %.fca.1.extract654, %_ZN4llvm5APIntD2Ev.exit1044 ], [ %.fca.1.extract647, %_ZNK4llvm5APInt8popcountEv.exit ], [ %.fca.1.extract640, %_ZNK4llvm5APInt11countl_zeroEv.exit ], [ %.fca.1.extract633, %_ZNK4llvm5APInt11countr_zeroEv.exit ], [ %.fca.1.extract626, %bb.bd ], [ %.fca.1.extract615, %_ZN4llvm5APIntD2Ev.exit1056 ], [ %.fca.1.extract608, %_ZN4llvm5APIntD2Ev.exit1057 ], [ %.fca.1.extract598, %bb.br ], [ %.fca.1.extract591, %bb.bu ], [ %.fca.1.extract584, %bb.bw ], [ %.fca.1.extract577, %bb.by ], [ 0, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread ]
  %.sroa.01554.31 = phi ptr [ null, %bb.hy ], [ null, %bb.a ], [ %.fca.0.extract789, %bb.d ], [ %.fca.0.extract431, %bb.eb ], [ %.sroa.01554.30, %.critedge988 ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ null, %bb.fj ], [ %.fca.0.extract304, %bb.fy ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit1168 ], [ %.fca.0.extract400, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit1171 ], [ %.fca.0.extract409, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ null, %bb.b ], [ %.sroa.01554.51801, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit ], [ null, %bb.ed ], [ %.fca.0.extract321, %_ZN4llvm5APIntD2Ev.exit1204 ], [ null, %bb.fl ], [ null, %bb.fk ], [ null, %.split ], [ %.fca.0.extract169, %_ZN4llvm5APIntD2Ev.exit1315 ], [ %.sroa.01554.27, %bb.js ], [ %.fca.0.extract176, %bb.hl ], [ %.fca.0.extract195, %_ZN4llvm9BitVectorD2Ev.exit1304 ], [ null, %bb.hz ], [ %.fca.0.extract569, %bb.ca ], [ %.sroa.01554.3, %_ZN4llvm5APIntD2Ev.exit1165 ], [ %.sroa.01554.1, %.critedge971 ], [ %.fca.0.extract726, %_ZN4llvm5APIntD2Ev.exit ], [ %.fca.0.extract715, %_ZN4llvm5APIntD2Ev.exit1017 ], [ %.fca.0.extract699, %_ZN4llvm5APIntD2Ev.exit1030 ], [ %.fca.0.extract688, %_ZN4llvm5APIntD2Ev.exit1040 ], [ %.fca.0.extract681, %_ZN4llvm5APIntD2Ev.exit1041 ], [ %.fca.0.extract674, %bb.ak ], [ %.fca.0.extract667, %_ZN4llvm5APIntD2Ev.exit1042 ], [ %.fca.0.extract660, %_ZN4llvm5APIntD2Ev.exit1043 ], [ %.fca.0.extract653, %_ZN4llvm5APIntD2Ev.exit1044 ], [ %.fca.0.extract646, %_ZNK4llvm5APInt8popcountEv.exit ], [ %.fca.0.extract639, %_ZNK4llvm5APInt11countl_zeroEv.exit ], [ %.fca.0.extract632, %_ZNK4llvm5APInt11countr_zeroEv.exit ], [ %.fca.0.extract625, %bb.bd ], [ %.fca.0.extract614, %_ZN4llvm5APIntD2Ev.exit1056 ], [ %.fca.0.extract607, %_ZN4llvm5APIntD2Ev.exit1057 ], [ %.fca.0.extract597, %bb.br ], [ %.fca.0.extract590, %bb.bu ], [ %.fca.0.extract583, %bb.bw ], [ %.fca.0.extract576, %bb.by ], [ null, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.01554.31, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.82.31, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL16FoldBUILD_VECTORRKN4llvm5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEERNS_12SelectionDAGE(i16 %0, ptr %1, ptr nofree readonly captures(address) %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(920) %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %.idx1.i = shl nuw nsw i64 %3, 4                ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 %.idx1.i
  %i.a = lshr i64 %3, 2                           ; 2 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %8 = and i64 %.idx1.i, 9223372036854775744
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %2, i64 %8
  br label %.lr.ph.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.a:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.b = phi i1 [ true, %.lr.ph.i.i.i.i.i ], [ %i.t, %bb.e ]
  %.064.i.i.i.i.i = phi i64 [ %i.a, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.e ] ; 2 uses
  %.02963.i.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.e ] ; 9 uses
  %.029.val45.i.i.i.i.i = load ptr, ptr %.02963.i.i.i.i.i, align 8, !tbaa !109
  %i.c = getelementptr i8, ptr %.029.val45.i.i.i.i.i, i64 24
  %.029.val45.val.i.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !88 ; 2 uses
  %i.d = icmp eq i32 %.029.val45.val.i.i.i.i.i, 54
  %i.e = and i1 %i.b, %i.d                        ; 2 uses
  %i.f = add i32 %.029.val45.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.f, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.a
  %i.g = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 16
  %.val42.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.h = getelementptr i8, ptr %.val42.i.i.i.i.i, i64 24
  %.val42.val.i.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !88 ; 2 uses
  %i.i = icmp eq i32 %.val42.val.i.i.i.i.i, 54
  %i.j = and i1 %i.e, %i.i                        ; 2 uses
  %i.k = add i32 %.val42.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i47.i.i.i.i.i = icmp ult i32 %i.k, -2
  br i1 %spec.select.i.i.i.i47.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 32
  %.val39.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.m = getelementptr i8, ptr %.val39.i.i.i.i.i, i64 24
  %.val39.val.i.i.i.i.i = load i32, ptr %i.m, align 8, !tbaa !88 ; 2 uses
  %i.n = icmp eq i32 %.val39.val.i.i.i.i.i, 54
  %i.o = and i1 %i.j, %i.n                        ; 2 uses
  %i.p = add i32 %.val39.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i48.i.i.i.i.i = icmp ult i32 %i.p, -2
  br i1 %spec.select.i.i.i.i48.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit29", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 48
  %.val36.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.r = getelementptr i8, ptr %.val36.i.i.i.i.i, i64 24
  %.val36.val.i.i.i.i.i = load i32, ptr %i.r, align 8, !tbaa !88 ; 2 uses
  %i.s = icmp eq i32 %.val36.val.i.i.i.i.i, 54
  %i.t = and i1 %i.o, %i.s                        ; 3 uses
  %i.u = add i32 %.val36.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i49.i.i.i.i.i = icmp ult i32 %i.u, -2
  br i1 %spec.select.i.i.i.i49.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit32", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 64
  %i.w = add nsw i64 %.064.i.i.i.i.i, -1
  %i.x = icmp sgt i64 %.064.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.a, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1365

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %i.y = zext i1 %i.t to i8
  %9 = and i64 %3, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.019 = phi i8 [ 1, %bb.a ], [ %i.y, %._crit_edge.loopexit.i.i.i.i.i ] ; 4 uses
  %.pre-phi73.i.i.i.i.i = phi i64 [ %3, %bb.a ], [ %9, %._crit_edge.loopexit.i.i.i.i.i ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %2, %bb.a ], [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ] ; 5 uses
  switch i64 %.pre-phi73.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.f
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge69.i.i.i.i.i
  ]

._crit_edge._crit_edge69.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i
  %i.z = icmp ne i8 %.019, 0
  br label %bb.j

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i
  %i.aa = icmp ne i8 %.019, 0
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !109
  %i.ab = getelementptr i8, ptr %.029.val.i.i.i.i.i, i64 24
  %.029.val.val.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %i.ac = icmp eq i32 %.029.val.val.i.i.i.i.i, 54
  %i.ad = icmp ne i8 %.019, 0
  %i.ae = and i1 %i.ad, %i.ac                     ; 2 uses
  %i.af = zext i1 %i.ae to i8
  %i.ag = add i32 %.029.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i50.i.i.i.i.i = icmp ult i32 %i.ag, -2
  br i1 %spec.select.i.i.i.i50.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge._crit_edge.i.i.i.i.i
  %i.ai = phi i1 [ %i.ae, %bb.g ], [ %i.aa, %._crit_edge._crit_edge.i.i.i.i.i ]
  %.1.i.i.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !109
  %i.aj = getelementptr i8, ptr %.1.val.i.i.i.i.i, i64 24
  %.1.val.val.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !88 ; 2 uses
  %i.ak = icmp eq i32 %.1.val.val.i.i.i.i.i, 54
  %i.al = and i1 %i.ai, %i.ak                     ; 2 uses
  %i.am = zext i1 %i.al to i8
  %i.an = add i32 %.1.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i51.i.i.i.i.i = icmp ult i32 %i.an, -2
  br i1 %spec.select.i.i.i.i51.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge._crit_edge69.i.i.i.i.i
  %i.ap = phi i1 [ %i.al, %bb.i ], [ %i.z, %._crit_edge._crit_edge69.i.i.i.i.i ]
  %.2.i.i.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge69.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !109
  %i.aq = getelementptr i8, ptr %.2.val.i.i.i.i.i, i64 24
  %.2.val.val.i.i.i.i.i = load i32, ptr %i.aq, align 8, !tbaa !88 ; 2 uses
  %i.ar = icmp eq i32 %.2.val.val.i.i.i.i.i, 54
  %i.as = and i1 %i.ap, %i.ar
  %i.at = zext i1 %i.as to i8                     ; 2 uses
  %i.au = add i32 %.2.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i52.i.i.i.i.i = icmp ult i32 %i.au, -2
  br i1 %spec.select.i.i.i.i52.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %.lr.ph.i.i.i.i.i.a
  %i.av = zext i1 %i.e to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26": ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 16
  %i.ax = zext i1 %i.j to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit29": ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 32
  %i.az = zext i1 %i.o to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit32": ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 48
  %i.bb = zext i1 %i.t to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit": ; preds = %bb.f, %bb.h, %bb.j, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit29", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit32"
  %.2 = phi i8 [ %i.bb, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit32" ], [ %i.af, %bb.f ], [ %i.am, %bb.h ], [ %i.at, %bb.j ], [ %i.av, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.ax, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26" ], [ %i.az, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit29" ]
  %.028.i.i.i.i.i = phi ptr [ %i.ba, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit32" ], [ %.029.lcssa.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i, %bb.j ], [ %.02963.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.aw, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit26" ], [ %i.ay, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit29" ]
  %i.bc = icmp eq ptr %7, %.028.i.i.i.i.i
  br i1 %i.bc, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %.preheader

.preheader:                                       ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %i.bd = and i64 %3, 4294967295
  %.not41 = icmp eq i64 %i.bd, 0
  br i1 %.not41, label %.critedge32, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.be = and i64 %3, 4294967295
  br label %.lr.ph

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.j, %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %.222 = phi i8 [ %.2, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit" ], [ %.019, %._crit_edge.i.i.i.i.i ], [ %i.at, %bb.j ]
  %i.bf = trunc nuw i8 %.222 to i1
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %0, ptr %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.bg, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.bg, 1
  br label %.critedge32

bb.l:                                             ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL16FoldBUILD_VECTORRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %0, ptr %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bh, 1
  br label %.critedge32

bb.m:                                             ; preds = %_ZNK4llvm5APIntneEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.be
  br i1 %.not, label %.critedge32, label %.lr.ph, !llvm.loop !1366

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.sroa.02.043 = phi ptr [ null, %.lr.ph.preheader ], [ %i.bo, %bb.m ] ; 2 uses
  %.sroa.7.042 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bq, %bb.m ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !88
  %.not30 = icmp eq i32 %i.bl, 164
  br i1 %.not30, label %bb.n, label %.critedge32

bb.n:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !89 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !115 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !95
  %i.bt = zext i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bu, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !99
  %.not.i34 = icmp ne i16 %.sroa.0.0.copyload.i.i, %0
  %i.bv = icmp ne ptr %.sroa.21.0.copyload.i.i, %1
  %i.bw = select i1 %.not.i34, i1 true, i1 %i.bv
  br i1 %i.bw, label %.critedge32, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not23 = icmp eq ptr %.sroa.02.043, null
  br i1 %.not23, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp ne ptr %i.bo, %.sroa.02.043
  %i.by = icmp ne i32 %i.bq, %.sroa.7.042
  %.not3.i = or i1 %i.bx, %i.by
  br i1 %.not3.i, label %.critedge32, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !92 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !88
  switch i32 %i.cc, label %.critedge32 [
    i32 37, label %bb.r
    i32 12, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !104 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !101 ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 65                  ; 2 uses
  br i1 %i.ci, label %_ZNK4llvm5APIntneEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.r
  %i.cj = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.cf) #33
  %i.ck = sub i32 %i.ch, %i.cj
  %i.cl = icmp ult i32 %i.ck, 65
  br i1 %i.cl, label %_ZNK4llvm5APIntneEm.exit, label %.critedge32

_ZNK4llvm5APIntneEm.exit:                         ; preds = %bb.r, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.cm = load ptr, ptr %i.cf, align 8
  %spec.select.i.i.i = select i1 %i.ci, ptr %i.cf, ptr %i.cm
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !86
  %.not24 = icmp eq i64 %.0.i.i.i, %indvars.iv
  br i1 %.not24, label %bb.m, label %.critedge32

.critedge32:                                      ; preds = %bb.p, %bb.n, %.lr.ph, %_ZNK4llvm5APIntneEm.exit, %bb.m, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %bb.q, %.preheader, %bb.k, %bb.l
  %.sroa.6.1 = phi i32 [ %.fca.1.extract17, %bb.k ], [ %.fca.1.extract, %bb.l ], [ 0, %.preheader ], [ %i.bq, %bb.m ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ], [ 0, %.lr.ph ], [ 0, %_ZNK4llvm5APIntneEm.exit ], [ 0, %bb.q ]
  %.sroa.018.1 = phi ptr [ %.fca.0.extract16, %bb.k ], [ %.fca.0.extract, %bb.l ], [ null, %.preheader ], [ %i.bo, %bb.m ], [ null, %bb.p ], [ null, %bb.n ], [ null, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ], [ null, %.lr.ph ], [ null, %_ZNK4llvm5APIntneEm.exit ], [ null, %bb.q ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.018.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12SelectionDAG17transferDbgValuesENS_7SDValueES1_jjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %0, ptr %1, i32 %2, ptr %3, i32 %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #5 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SmallVector.107", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SmallVector.722", align 8 ; 11 uses
  %10 = alloca %"class.std::optional.728", align 8 ; 5 uses
  %11 = alloca %"class.llvm::ArrayRef.720", align 8 ; 3 uses
  %i.a = icmp eq ptr %1, %3
  br i1 %i.a, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 2, ptr %i.g, align 4, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !271, !noalias !1380 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 680
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !272, !noalias !1380 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 692
  %i.o = load i32, ptr %i.n, align 4, !tbaa !273, !noalias !1380 ; 4 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i32 %i.o, -1                         ; 2 uses
  %i.r = ptrtoint ptr %1 to i64
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.q, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !114, !noalias !1381
  %i.ab = and i32 %i.w, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !183

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %i.ae = phi i64 [ %i.ak, %bb.e ], [ %i.x, %bb.d ]
  %.017.i.i.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.w, %bb.d ]
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !109, !noalias !1381
  %i.ah = icmp eq ptr %1, %i.ag
  br i1 %i.ah, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6SDNodeENS_11SmallVectorIPNS_10SDDbgValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.loopexit.i.i, label %bb.e, !prof !139

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add nuw i32 %.017.i.i.i.i.i, 1
  %i.aj = and i32 %i.ai, %i.q                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !114, !noalias !1381
  %i.ao = and i32 %i.aj, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !185

.loopexit.i.i.i.i:                                ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = zext i32 %i.o to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.ar
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6SDNodeENS_11SmallVectorIPNS_10SDDbgValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6SDNodeENS_11SmallVectorIPNS_10SDDbgValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i = zext i32 %i.o to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6SDNodeENS_11SmallVectorIPNS_10SDDbgValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4findES4_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZNK4llvm12SelectionDAG28canonicalizeCommutativeBinopEjRNS_7SDValueES2_:bb.a
  %or.cond = or i1 %i.h, %.not
  %or.cond28 = and i1 %or.cond, %.0.i32
  br i1 %or.cond28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !661
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !661
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

bb.j:                                             ; preds = %_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE.exit41
  %i.at = icmp eq i32 %i.j, 175
  %i.au = icmp eq i32 %i.ab, 177
  %or.cond42 = and i1 %i.at, %i.au
  br i1 %or.cond42, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !661
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !661
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12SelectionDAG37isConstantIntBuildVectorOrConstantIntENS_7SDValueEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp eq i32 %i.b, 248
  br i1 %i.c, label %.lr.ph.i, label %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %.sroa.0.0.copyload2.i, %.lr.ph.i ], [ %1, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89
  %.sroa.0.0.copyload2.i = load ptr, ptr %i.e, align 8, !tbaa !109 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload2.i, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = icmp eq i32 %i.g, 248
  br i1 %i.h, label %.lr.ph.i, label %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit, !llvm.loop !27

_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit:  ; preds = %.lr.ph.i, %bb.a
  %i.i = phi i32 [ %i.b, %bb.a ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.copyload2.i, %.lr.ph.i ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 24
  switch i32 %i.i, label %thread-pre-split [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 162, label %bb.c
    i32 14, label %bb.e
    i32 15, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit
    i32 39, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit
    i32 40, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit, %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit
  br i1 %3, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 32
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 8
  %.not = icmp eq i8 %i.m, 0
  br label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit

bb.c:                                             ; preds = %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 64
  %i.q = load i16, ptr %i.p, align 8, !tbaa !105  ; 2 uses
  %i.r = zext i16 %i.q to i64
  %.idx.i = mul nuw nsw i64 %i.r, 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not1617.i = icmp eq i16 %i.q, 0
  br i1 %.not1617.i, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.c, %select.unfold.i
  %.sroa.011.018.i = phi ptr [ %i.x, %select.unfold.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.011.018.i, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !88   ; 2 uses
  %i.w = add i32 %i.v, -53
  %spec.select.i.i.i = icmp ult i32 %i.w, 2
  br i1 %spec.select.i.i.i, label %select.unfold.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i17
  switch i32 %i.v, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit [
    i32 37, label %select.unfold.i
    i32 12, label %select.unfold.i
  ]

select.unfold.i:                                  ; preds = %bb.d, %bb.d, %.lr.ph.i17
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i, i64 40 ; 2 uses
  %.not16.i = icmp eq ptr %i.x, %i.s
  br i1 %.not16.i, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit, label %.lr.ph.i17

bb.e:                                             ; preds = %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !319  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1952
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(518435) %i.z, ptr noundef nonnull %.sroa.0.0.lcssa.i) #32
  br i1 %i.ad, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit, label %.thread-pre-split_crit_edge

.thread-pre-split_crit_edge:                      ; preds = %bb.e
  %.pr.pre = load i32, ptr %i.j, align 8, !tbaa !88
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit, %.thread-pre-split_crit_edge
  %i.ae = phi i32 [ %i.i, %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit ], [ %.pr.pre, %.thread-pre-split_crit_edge ]
  %i.af = icmp eq i32 %i.ae, 175
  br i1 %i.af, label %bb.f, label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit

bb.f:                                             ; preds = %thread-pre-split
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !89
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !88 ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.ak, 37
  %switch.selectcmp.case2 = icmp eq i32 %i.ak, 12
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit

_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE.exit: ; preds = %bb.d, %select.unfold.i, %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit, %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit, %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit, %thread-pre-split, %bb.f, %bb.b, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.e, %bb.c
  %.2 = phi i1 [ true, %bb.e ], [ true, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %switch.selectcmp, %bb.f ], [ false, %thread-pre-split ], [ true, %bb.c ], [ %.not, %bb.b ], [ false, %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit ], [ false, %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit ], [ false, %_ZN4llvm19peekThroughBitcastsENS_7SDValueE.exit ], [ false, %bb.d ], [ true, %select.unfold.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12SelectionDAG35isConstantFPBuildVectorOrConstantFPENS_7SDValueE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(920) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88
  switch i32 %i.b, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit [
    i32 38, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.thread
    i32 13, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.thread
    i32 162, label %bb.b
    i32 175, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i16, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.g = zext i16 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not1617.i = icmp eq i16 %i.f, 0
  br i1 %.not1617.i, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %select.unfold.i
  %.sroa.011.018.i = phi ptr [ %i.m, %select.unfold.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.011.018.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %i.l = add i32 %i.k, -53
  %spec.select.i.i.i = icmp ult i32 %i.l, 2
  br i1 %spec.select.i.i.i, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  switch i32 %i.k, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit [
    i32 38, label %select.unfold.i
    i32 13, label %select.unfold.i
  ]

select.unfold.i:                                  ; preds = %bb.c, %bb.c, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i, i64 40 ; 2 uses
  %.not16.i = icmp eq ptr %i.m, %i.h
  br i1 %.not16.i, label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.thread, label %.lr.ph.i

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.r, 38
  %switch.selectcmp.case2 = icmp eq i32 %i.r, 13
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.thread

_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit: ; preds = %bb.c, %bb.a
  br label %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.thread

_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit.thread: ; preds = %select.unfold.i, %bb.d, %bb.a, %bb.a, %bb.b, %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit
  %.0 = phi i1 [ false, %_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE.exit ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.b ], [ %switch.selectcmp, %bb.d ], [ true, %select.unfold.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL18foldCONCAT_VECTORSRKN4llvm5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr %2, ptr nofree readonly captures(address) %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %"class.llvm::ArrayRef.122", align 8 ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %17 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %18 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %19 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %20 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %21 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %22 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %23 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %24 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %25 = alloca %"struct.llvm::EVT", align 8       ; 17 uses
  %26 = alloca %"class.llvm::SmallVector.553", align 8 ; 18 uses
  %27 = alloca %"struct.llvm::EVT", align 8       ; 11 uses
  %.sroa.573 = alloca [6 x i8], align 2           ; 4 uses
  store i16 %1, ptr %23, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = icmp eq i64 %4, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0395.0.copyload = load ptr, ptr %3, align 8, !tbaa !109
  %.sroa.10396.0..sroa.0388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.10396.0.copyload = load i32, ptr %.sroa.10396.0..sroa.0388.0..sroa_idx, align 8, !tbaa !114
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.idx493 = shl nuw nsw i64 %4, 4                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %.idx493 ; 2 uses
  %i.d = lshr i64 %4, 2                           ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %28 = and i64 %.idx493, 9223372036854775744
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %3, i64 %28
  br label %.lr.ph.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.a:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.e = phi i1 [ true, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.g ]
  %.064.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %.02963.i.i.i.i.i = phi ptr [ %3, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.g ] ; 9 uses
  %.029.val45.i.i.i.i.i = load ptr, ptr %.02963.i.i.i.i.i, align 8, !tbaa !109
  %i.f = getelementptr i8, ptr %.029.val45.i.i.i.i.i, i64 24
  %.029.val45.val.i.i.i.i.i = load i32, ptr %i.f, align 8, !tbaa !88 ; 2 uses
  %i.g = icmp eq i32 %.029.val45.val.i.i.i.i.i, 54
  %i.h = and i1 %i.e, %i.g                        ; 2 uses
  %i.i = add i32 %.029.val45.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.a
  %i.j = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 16
  %.val42.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.k = getelementptr i8, ptr %.val42.i.i.i.i.i, i64 24
  %.val42.val.i.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !88 ; 2 uses
  %i.l = icmp eq i32 %.val42.val.i.i.i.i.i, 54
  %i.m = and i1 %i.h, %i.l                        ; 2 uses
  %i.n = add i32 %.val42.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i47.i.i.i.i.i = icmp ult i32 %i.n, -2
  br i1 %spec.select.i.i.i.i47.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit462", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 32
  %.val39.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.p = getelementptr i8, ptr %.val39.i.i.i.i.i, i64 24
  %.val39.val.i.i.i.i.i = load i32, ptr %i.p, align 8, !tbaa !88 ; 2 uses
  %i.q = icmp eq i32 %.val39.val.i.i.i.i.i, 54
  %i.r = and i1 %i.m, %i.q                        ; 2 uses
  %i.s = add i32 %.val39.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i48.i.i.i.i.i = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i.i.i48.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit465", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 48
  %.val36.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !109
  %i.u = getelementptr i8, ptr %.val36.i.i.i.i.i, i64 24
  %.val36.val.i.i.i.i.i = load i32, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.v = icmp eq i32 %.val36.val.i.i.i.i.i, 54
  %i.w = and i1 %i.r, %i.v                        ; 3 uses
  %i.x = add i32 %.val36.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i49.i.i.i.i.i = icmp ult i32 %i.x, -2
  br i1 %spec.select.i.i.i.i49.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit468", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 64
  %i.z = add nsw i64 %.064.i.i.i.i.i, -1
  %i.aa = icmp sgt i64 %.064.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.a, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1510

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.g
  %i.ab = zext i1 %i.w to i8
  %29 = and i64 %4, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ %i.ab, %._crit_edge.loopexit.i.i.i.i.i ] ; 4 uses
  %.pre-phi73.i.i.i.i.i = phi i64 [ %4, %bb.c ], [ %29, %._crit_edge.loopexit.i.i.i.i.i ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %3, %bb.c ], [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ] ; 5 uses
  switch i64 %.pre-phi73.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge69.i.i.i.i.i
  ]

._crit_edge._crit_edge69.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i
  %i.ac = icmp ne i8 %.0, 0
  br label %bb.l

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i
  %i.ad = icmp ne i8 %.0, 0
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !109
  %i.ae = getelementptr i8, ptr %.029.val.i.i.i.i.i, i64 24
  %.029.val.val.i.i.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %i.af = icmp eq i32 %.029.val.val.i.i.i.i.i, 54
  %i.ag = icmp ne i8 %.0, 0
  %i.ah = and i1 %i.ag, %i.af                     ; 2 uses
  %i.ai = zext i1 %i.ah to i8
  %i.aj = add i32 %.029.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i50.i.i.i.i.i = icmp ult i32 %i.aj, -2
  br i1 %spec.select.i.i.i.i50.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge._crit_edge.i.i.i.i.i
  %i.al = phi i1 [ %i.ah, %bb.i ], [ %i.ad, %._crit_edge._crit_edge.i.i.i.i.i ]
  %.1.i.i.i.i.i = phi ptr [ %i.ak, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !109
  %i.am = getelementptr i8, ptr %.1.val.i.i.i.i.i, i64 24
  %.1.val.val.i.i.i.i.i = load i32, ptr %i.am, align 8, !tbaa !88 ; 2 uses
  %i.an = icmp eq i32 %.1.val.val.i.i.i.i.i, 54
  %i.ao = and i1 %i.al, %i.an                     ; 2 uses
  %i.ap = zext i1 %i.ao to i8
  %i.aq = add i32 %.1.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i51.i.i.i.i.i = icmp ult i32 %i.aq, -2
  br i1 %spec.select.i.i.i.i51.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge69.i.i.i.i.i
  %i.as = phi i1 [ %i.ao, %bb.k ], [ %i.ac, %._crit_edge._crit_edge69.i.i.i.i.i ]
  %.2.i.i.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge69.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !109
  %i.at = getelementptr i8, ptr %.2.val.i.i.i.i.i, i64 24
  %.2.val.val.i.i.i.i.i = load i32, ptr %i.at, align 8, !tbaa !88 ; 2 uses
  %i.au = icmp eq i32 %.2.val.val.i.i.i.i.i, 54
  %i.av = and i1 %i.as, %i.au
  %i.aw = zext i1 %i.av to i8                     ; 2 uses
  %i.ax = add i32 %.2.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i52.i.i.i.i.i = icmp ult i32 %i.ax, -2
  br i1 %spec.select.i.i.i.i52.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %.lr.ph.i.i.i.i.i.a
  %i.ay = zext i1 %i.h to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit462": ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 16
  %i.ba = zext i1 %i.m to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit465": ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 32
  %i.bc = zext i1 %i.r to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit468": ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 48
  %i.be = zext i1 %i.w to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit": ; preds = %bb.h, %bb.j, %bb.l, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit462", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit465", %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit468"
  %.2 = phi i8 [ %i.be, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit468" ], [ %i.ai, %bb.h ], [ %i.ap, %bb.j ], [ %i.aw, %bb.l ], [ %i.ay, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.ba, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit462" ], [ %i.bc, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit465" ]
  %.028.i.i.i.i.i = phi ptr [ %i.bd, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit468" ], [ %.029.lcssa.i.i.i.i.i, %bb.h ], [ %.1.i.i.i.i.i, %bb.j ], [ %.2.i.i.i.i.i, %bb.l ], [ %.02963.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.az, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit462" ], [ %i.bb, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit465" ]
  %i.bf = icmp eq ptr %i.c, %.028.i.i.i.i.i
  br i1 %i.bf, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %bb.o

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.l, %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %.2447 = phi i8 [ %.2, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit" ], [ %.0, %._crit_edge.i.i.i.i.i ], [ %i.aw, %bb.l ]
  %i.bg = trunc nuw i8 %.2447 to i1
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %1, ptr %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %.fca.0.extract134 = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract135 = extractvalue { ptr, i32 } %i.bh, 1
  br label %.loopexit

bb.n:                                             ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %1, ptr %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %.fca.0.extract127 = extractvalue { ptr, i32 } %i.bi, 0
  %.fca.1.extract128 = extractvalue { ptr, i32 } %i.bi, 1
  br label %.loopexit

bb.o:                                             ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %i.bj = and i64 %4, 4294967295
  %.not477 = icmp eq i64 %i.bj, 0
  br i1 %.not477, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bl = and i64 %4, 4294967295
  br label %bb.q

bb.p:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.bl
  br i1 %.not, label %.loopexit, label %bb.q, !llvm.loop !1511

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.sroa.0377.0479 = phi ptr [ null, %.lr.ph ], [ %i.cc, %bb.p ] ; 2 uses
  %.sroa.7380.0478 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %bb.p ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %.sroa.0371.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !109 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !95
  %i.bp = zext i32 %.sroa.9.0.copyload to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bq, align 8, !tbaa !97 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i, ptr %24, align 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.bk, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.bs = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !632
  %i.bv = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.bv, 53
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %spec.select.i.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %i.bu to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit

bb.s:                                             ; preds = %bb.q
  %i.bw = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %24) #33
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit

_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit:    ; preds = %bb.r, %bb.s
  %.sroa.0.0.in.i.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i, %bb.r ], [ %i.bw, %bb.s ]
  %i.bx = mul i64 %indvars.iv, %.sroa.0.0.in.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !88
  %.not163 = icmp eq i32 %i.bz, 167
  br i1 %.not163, label %bb.t, label %.thread

bb.t:                                             ; preds = %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !89 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !92 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !115 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !95
  %i.ch = zext i32 %i.ce to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %.sroa.0.0.copyload.i.i174 = load i16, ptr %i.ci, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i.i175 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.21.0.copyload.i.i176 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i175, align 8, !tbaa !99
  %.not.i179 = icmp ne i16 %.sroa.0.0.copyload.i.i174, %1
  %i.cj = icmp ne ptr %.sroa.21.0.copyload.i.i176, %2
  %i.ck = select i1 %.not.i179, i1 true, i1 %i.cj
  br i1 %i.ck, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not458 = icmp eq ptr %.sroa.0377.0479, null
  br i1 %.not458, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = icmp ne ptr %i.cc, %.sroa.0377.0479
  %i.cm = icmp ne i32 %i.ce, %.sroa.7380.0478
  %.not3.i = or i1 %i.cl, %i.cm
  br i1 %.not3.i, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !92
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !104 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !101
  %i.cu = icmp ult i32 %i.ct, 65
  %i.cv = load ptr, ptr %i.cr, align 8
  %spec.select.i.i.i.i.i = select i1 %i.cu, ptr %i.cr, ptr %i.cv
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !86
  %i.cw = and i64 %i.bx, 4294967295
  %.not164 = icmp eq i64 %.0.i.i.i.i.i, %i.cw
  br i1 %.not164, label %bb.p, label %.thread

.thread:                                          ; preds = %.critedge, %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit, %bb.t, %bb.v
  %.not.i180 = icmp eq i16 %1, 0
  br i1 %.not.i180, label %_ZNK4llvm3EVT16isScalableVectorEv.exit, label %.split

.split:                                           ; preds = %.thread
  %i.cx = add i16 %1, -163
  %spec.select.i.i = icmp ult i16 %i.cx, 53
  br i1 %spec.select.i.i, label %.loopexit, label %.split.i

_ZNK4llvm3EVT16isScalableVectorEv.exit:           ; preds = %.thread
  %i.cy = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #33
  br i1 %i.cy, label %.loopexit, label %_ZNK4llvm3EVT8isVectorEv.exit.i

.split.i:                                         ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.cz = add i16 %1, -19
  %spec.select.i.i.i = icmp ult i16 %i.cz, 197
  br i1 %spec.select.i.i.i, label %bb.w, label %bb.y

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.da = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #33
  br i1 %i.da, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.split.i
  %i.db = zext nneg i16 %1 to i64
  %i.dc = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !97
  %i.df = insertvalue { i16, ptr } poison, i16 %i.de, 0
  %i.dg = insertvalue { i16, ptr } %i.df, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.x:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.dh = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #32
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.y:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i, %.split.i
  %i.di = insertvalue { i16, ptr } poison, i16 %1, 0
  %i.dj = insertvalue { i16, ptr } %i.di, ptr %2, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %bb.w, %bb.x, %bb.y
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.dj, %bb.y ], [ %i.dg, %bb.w ], [ %i.dh, %bb.x ] ; 2 uses
  %i.dk = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  store i16 %i.dk, ptr %25, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 10 uses
  %i.dm = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store ptr %i.dm, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.dn = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 5 uses
  store ptr %i.dn, ptr %26, align 8, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 19 uses
  store i32 0, ptr %i.do, align 8, !tbaa !136
  %i.dp = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 5 uses
  store i32 16, ptr %i.dp, align 4, !tbaa !137
  %.not165482 = icmp eq i64 %4, 0
  br i1 %.not165482, label %._crit_edge, label %.lr.ph484

.lr.ph484:                                        ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %27, i64 8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph484, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.0160483 = phi ptr [ %3, %.lr.ph484 ], [ %i.it, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 3 uses
  %.sroa.0359.0.copyload = load ptr, ptr %.0160483, align 8, !tbaa !109 ; 5 uses
  %.sroa.13.0..0160.sroa_idx = getelementptr inbounds nuw i8, ptr %.0160483, i64 8
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..0160.sroa_idx, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
end_hunk_1
