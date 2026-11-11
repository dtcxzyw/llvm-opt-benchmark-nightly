Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopPipelining?download=true
inline.NumInlined: 3188
inline.NumDeleted: 1714
begin_hunk_0_@_ZN4mlir3scf15pipelineForLoopERNS_12RewriterBaseENS0_5ForOpERKNS0_16PipeliningOptionEPb:bb.a
  %.not.i.i181.i = icmp ult i32 %i.aql, %i.aqm
  br i1 %.not.i.i181.i, label %.loopexit.i179._ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185_crit_edge.i, label %bb.dm, !prof !75

.loopexit.i179._ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185_crit_edge.i: ; preds = %.loopexit.i179.i
  %.pre528.i = load ptr, ptr %i.t, align 8, !tbaa !47
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185.i

bb.dm:                                            ; preds = %.loopexit.i179.i
  %i.aqn = shl i32 %i.ape, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.y, i32 noundef %i.aqn)
  %i.aqo = load ptr, ptr %i.y, align 8, !tbaa !71, !noalias !660 ; 5 uses
  %i.aqp = load ptr, ptr %i.aga, align 8, !tbaa !72, !noalias !660 ; 5 uses
  %i.aqq = load i32, ptr %i.agb, align 4, !tbaa !73, !noalias !660 ; 2 uses
  %i.aqr = icmp ne i32 %i.aqq, 0
  call void @llvm.assume(i1 %i.aqr)
  %i.aqs = add i32 %i.aqq, -1                     ; 2 uses
  %i.aqt = load ptr, ptr %i.t, align 8, !tbaa !47 ; 5 uses
  %i.aqu = ptrtoint ptr %i.aqt to i64
  %i.aqv = mul i64 %i.aqu, -4658895280553007687   ; 2 uses
  %i.aqw = lshr i64 %i.aqv, 31
  %i.aqx = xor i64 %i.aqw, %i.aqv
  %i.aqy = trunc i64 %i.aqx to i32
  %i.aqz = and i32 %i.aqs, %i.aqy                 ; 3 uses
  %i.ara = zext i32 %i.aqz to i64                 ; 2 uses
  %i.arb = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.ara ; 2 uses
  %i.arc = lshr i64 %i.ara, 5
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.aqp, i64 %i.arc
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !46
  %i.arf = and i32 %i.aqz, 31
  %i.arg = lshr i32 %i.are, %i.arf
  %i.arh = trunc i32 %i.arg to i1
  br i1 %i.arh, label %.lr.ph.i298.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185.i, !prof !74

.lr.ph.i298.i:                                    ; preds = %bb.dm, %bb.dn
  %i.ari = phi ptr [ %i.aro, %bb.dn ], [ %i.arb, %bb.dm ] ; 2 uses
  %.024.i299.i = phi i32 [ %i.arm, %bb.dn ], [ %i.aqz, %bb.dm ]
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !47
  %i.ark = icmp eq ptr %i.aqt, %i.arj
  br i1 %i.ark, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185.i, label %bb.dn, !prof !75

bb.dn:                                            ; preds = %.lr.ph.i298.i
  %i.arl = add nuw i32 %.024.i299.i, 1
  %i.arm = and i32 %i.arl, %i.aqs                 ; 3 uses
  %i.arn = zext i32 %i.arm to i64                 ; 2 uses
  %i.aro = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.arn ; 2 uses
  %i.arp = lshr i64 %i.arn, 5
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.aqp, i64 %i.arp
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !46
  %i.ars = and i32 %i.arm, 31
  %i.art = lshr i32 %i.arr, %i.ars
  %i.aru = trunc i32 %i.art to i1
  br i1 %i.aru, label %.lr.ph.i298.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185.i, !prof !76, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185.i: ; preds = %bb.dn, %.lr.ph.i298.i, %bb.dm, %.loopexit.i179._ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185_crit_edge.i
  %i.arv = phi ptr [ %.pre528.i, %.loopexit.i179._ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185_crit_edge.i ], [ %i.aqt, %bb.dm ], [ %i.aqt, %.lr.ph.i298.i ], [ %i.aqt, %bb.dn ]
  %i.arw = phi ptr [ %i.apc, %.loopexit.i179._ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185_crit_edge.i ], [ %i.aqo, %bb.dm ], [ %i.aqo, %.lr.ph.i298.i ], [ %i.aqo, %bb.dn ]
  %i.arx = phi ptr [ %i.apd, %.loopexit.i179._ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185_crit_edge.i ], [ %i.aqp, %bb.dm ], [ %i.aqp, %.lr.ph.i298.i ], [ %i.aqp, %bb.dn ]
  %i.ary = phi ptr [ %.lcssa28.sink.i.ph.i180.i, %.loopexit.i179._ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185_crit_edge.i ], [ %i.arb, %bb.dm ], [ %i.aro, %bb.dn ], [ %i.ari, %.lr.ph.i298.i ] ; 3 uses
  %i.arz = ptrtoint ptr %i.ary to i64
  %i.asa = ptrtoint ptr %i.arw to i64
  %i.asb = sub i64 %i.arz, %i.asa
  %i.asc = ashr exact i64 %i.asb, 4               ; 2 uses
  %i.asd = trunc i64 %i.asc to i32
  %i.ase = and i32 %i.asd, 31
  %i.asf = shl nuw i32 1, %i.ase
  %i.asg = lshr i64 %i.asc, 5
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.asg ; 2 uses
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !46
  %i.asj = or i32 %i.asf, %i.asi
  store i32 %i.asj, ptr %i.ash, align 4, !tbaa !46
  %i.ask = load i32, ptr %i.agc, align 8, !tbaa !113
  %i.asl = add i32 %i.ask, 1
  store i32 %i.asl, ptr %i.agc, align 8, !tbaa !113
  store ptr %i.arv, ptr %i.ary, align 8, !tbaa !47
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  store i32 0, ptr %i.asm, align 8, !tbaa !46
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.loopexit.i: ; preds = %.lr.ph.i.i190.i
  %.phi.trans.insert529.i = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  %.pre530.i = load i32, ptr %.phi.trans.insert529.i, align 4, !tbaa !46
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185.i
  %i.asn = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i185.i ], [ %.pre530.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.loopexit.i ]
  %i.aso = trunc i64 %i.apb to i32
  %i.asp = sub i32 %i.aso, %i.asn
  %i.asq = sext i32 %i.asp to i64                 ; 3 uses
  %i.asr = load ptr, ptr %49, align 8, !tbaa !92
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %i.asq
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !116 ; 2 uses
  %.not430.i = icmp eq ptr %i.ast, null
  br i1 %.not430.i, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i
  %i.asu = load <2 x ptr>, ptr %i.agj, align 8
  %i.asv = load ptr, ptr %i.agj, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.ast, ptr %46, align 8
  store ptr %i.apa, ptr %i.q, align 8, !tbaa !47
  %i.asw = load ptr, ptr %i.agk, align 8, !tbaa !45
  %.not.i.i.i28 = icmp eq ptr %i.asw, null
  br i1 %.not.i.i.i28, label %bb.dp, label %_ZNKSt8functionIFPN4mlir9OperationERNS0_12RewriterBaseES2_NS0_5ValueEEEclES4_S2_S5_.exit.i

bb.dp:                                            ; preds = %bb.do
  call void @_ZSt25__throw_bad_function_callv() #17
  unreachable

_ZNKSt8functionIFPN4mlir9OperationERNS0_12RewriterBaseES2_NS0_5ValueEEEclES4_S2_S5_.exit.i: ; preds = %bb.do
  %i.asx = load ptr, ptr %i.agl, align 8, !tbaa !623
  %i.asy = call noundef ptr %i.asx(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %46) #16, !inline_history !267 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i29 = icmp eq ptr %i.asy, null
  %.not.i.i130.i = icmp eq ptr %i.asv, null
  br i1 %.not.i.i130.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZNKSt8functionIFPN4mlir9OperationERNS0_12RewriterBaseES2_NS0_5ValueEEEclES4_S2_S5_.exit.i
  store <2 x ptr> %i.asu, ptr %i.agj, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i

bb.dr:                                            ; preds = %_ZNKSt8functionIFPN4mlir9OperationERNS0_12RewriterBaseES2_NS0_5ValueEEEclES4_S2_S5_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agj, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i:    ; preds = %bb.dr, %bb.dq
  br i1 %.not.i29, label %bb.fx, label %bb.ds

bb.ds:                                            ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i
  %.0101.i = phi ptr [ %i.asy, %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i ], [ %i.apa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit192.i ] ; 4 uses
  %i.asz = load ptr, ptr %i.agm, align 8, !tbaa !45
  %.not.i.i131.not.i = icmp eq ptr %i.asz, null
  br i1 %.not.i.i131.not.i, label %bb.dt, label %_ZNKSt8functionIFvPN4mlir9OperationENS0_3scf16PipeliningOption13PipelinerPartEjEEclES2_S5_j.exit.i

_ZNKSt8functionIFvPN4mlir9OperationENS0_3scf16PipeliningOption13PipelinerPartEjEEclES2_S5_j.exit.i: ; preds = %bb.ds
  %i.ata = load i64, ptr %i.s, align 8, !tbaa !89
  %i.atb = trunc i64 %i.ata to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %.0101.i, ptr %i.n, align 8, !tbaa !47
  store i32 0, ptr %i.o, align 4, !tbaa !668
  store i32 %i.atb, ptr %i.p, align 4, !tbaa !46
  %i.atc = load ptr, ptr %i.agn, align 8, !tbaa !669
  call void %i.atc(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p) #16, !inline_history !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.dt

bb.dt:                                            ; preds = %_ZNKSt8functionIFvPN4mlir9OperationENS0_3scf16PipeliningOption13PipelinerPartEjEEclES2_S5_j.exit.i, %bb.ds
  %i.atd = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 36
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !670 ; 2 uses
  %i.atg = zext i32 %i.atf to i64
  %.not431478.i = icmp eq i32 %i.atf, 0
  br i1 %.not431478.i, label %.loopexit.i32, label %.lr.ph481.i

.lr.ph481.i:                                      ; preds = %bb.dt
  %i.ath = getelementptr inbounds i8, ptr %.0101.i, i64 -96 ; 2 uses
  br label %bb.du

bb.du:                                            ; preds = %_ZN12_GLOBAL__N_121LoopPipelinerInternal15setValueMappingEN4mlir5ValueES2_l.exit.i, %.lr.ph481.i
  %.sroa.0372.0479.i = phi i64 [ 0, %.lr.ph481.i ], [ %i.bep, %_ZN12_GLOBAL__N_121LoopPipelinerInternal15setValueMappingEN4mlir5ValueES2_l.exit.i ] ; 8 uses
  %i.ati = icmp samesign ult i64 %.sroa.0372.0479.i, 6 ; 3 uses
  br i1 %i.ati, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.atj = xor i64 %.sroa.0372.0479.i, -1
  %i.atk = getelementptr inbounds [16 x i8], ptr %.0101.i, i64 %i.atj
  br label %_ZN4mlir9Operation9getResultEj.exit.i

bb.dw:                                            ; preds = %bb.du
  %i.atl = add nuw nsw i64 %.sroa.0372.0479.i, 4294967291
  %i.atm = and i64 %i.atl, 4294967295
  %i.atn = sub nsw i64 0, %i.atm
  %i.ato = getelementptr inbounds [24 x i8], ptr %i.ath, i64 %i.atn
  br label %_ZN4mlir9Operation9getResultEj.exit.i

_ZN4mlir9Operation9getResultEj.exit.i:            ; preds = %bb.dw, %bb.dv
  %.0.i.i.i = phi ptr [ %i.atk, %bb.dv ], [ %i.ato, %bb.dw ]
  %i.atp = load i32, ptr %i.ago, align 4
  %i.atq = and i32 %i.atp, 8388608
  %.not.i135.i = icmp eq i32 %i.atq, 0
  br i1 %.not.i135.i, label %._crit_edge477.i, label %_ZN4mlir9Operation13getOpOperandsEv.exit.i, !prof !114

_ZN4mlir9Operation13getOpOperandsEv.exit.i:       ; preds = %_ZN4mlir9Operation9getResultEj.exit.i
  %i.atr = load ptr, ptr %i.agp, align 8, !tbaa !43 ; 2 uses
  %i.ats = load i32, ptr %i.agq, align 4, !tbaa !115 ; 2 uses
  %i.att = zext i32 %i.ats to i64
  %i.atu = shl nuw nsw i64 %i.att, 5
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atr, i64 %i.atu
  %.not103473.i = icmp eq i32 %i.ats, 0
  br i1 %.not103473.i, label %._crit_edge477.i, label %.lr.ph476.i

.lr.ph476.i:                                      ; preds = %_ZN4mlir9Operation13getOpOperandsEv.exit.i
  %i.atw = add nuw nsw i64 %.sroa.0372.0479.i, 4294967291
  %i.atx = and i64 %i.atw, 4294967295
  %i.aty = sub nsw i64 0, %i.atx
  %80 = add nuw nsw i64 %.sroa.0372.0479.i, 1
  %81 = and i64 %80, 15
  %82 = sub nsw i64 0, %81
  br label %_ZN4mlir9Operation9getResultEj.exit145.i

._crit_edge477.i:                                 ; preds = %bb.fw, %_ZN4mlir9Operation13getOpOperandsEv.exit.i, %_ZN4mlir9Operation9getResultEj.exit.i
  %i.atz = load ptr, ptr %i.t, align 8, !tbaa !47 ; 5 uses
  br i1 %i.ati, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %._crit_edge477.i
  %i.aua = xor i64 %.sroa.0372.0479.i, -1         ; 2 uses
  %i.aub = getelementptr inbounds [16 x i8], ptr %i.atz, i64 %i.aua
  %i.auc = getelementptr inbounds [16 x i8], ptr %.0101.i, i64 %i.aua
  br label %_ZN4mlir9Operation9getResultEj.exit140.i

bb.dy:                                            ; preds = %._crit_edge477.i
  %i.aud = getelementptr inbounds i8, ptr %i.atz, i64 -96
  %i.aue = add nuw nsw i64 %.sroa.0372.0479.i, 4294967291
  %i.auf = and i64 %i.aue, 4294967295
  %i.aug = sub nsw i64 0, %i.auf                  ; 2 uses
  %i.auh = getelementptr inbounds [24 x i8], ptr %i.aud, i64 %i.aug
  %i.aui = getelementptr inbounds [24 x i8], ptr %i.ath, i64 %i.aug
  br label %_ZN4mlir9Operation9getResultEj.exit140.i

_ZN4mlir9Operation9getResultEj.exit140.i:         ; preds = %bb.dy, %bb.dx
  %.0.i.i137414.i = phi ptr [ %i.aub, %bb.dx ], [ %i.auh, %bb.dy ] ; 5 uses
  %.0.i.i139.i = phi ptr [ %i.auc, %bb.dx ], [ %i.aui, %bb.dy ]
  %i.auj = load i64, ptr %i.s, align 8, !tbaa !89
  %i.auk = load ptr, ptr %i.y, align 8, !tbaa !71, !noalias !671 ; 3 uses
  %i.aul = load ptr, ptr %i.aga, align 8, !tbaa !72, !noalias !671 ; 3 uses
  %i.aum = load i32, ptr %i.agb, align 4, !tbaa !73, !noalias !671 ; 4 uses
  %i.aun = icmp eq i32 %i.aum, 0
  br i1 %i.aun, label %.loopexit.i193.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN4mlir9Operation9getResultEj.exit140.i
  %i.auo = add i32 %i.aum, -1                     ; 2 uses
  %i.aup = ptrtoint ptr %i.atz to i64
  %i.auq = mul i64 %i.aup, -4658895280553007687   ; 2 uses
  %i.aur = lshr i64 %i.auq, 31
  %i.aus = xor i64 %i.aur, %i.auq
  %i.aut = trunc i64 %i.aus to i32
  %i.auu = and i32 %i.auo, %i.aut                 ; 3 uses
  %i.auv = zext i32 %i.auu to i64                 ; 2 uses
  %i.auw = getelementptr inbounds nuw [16 x i8], ptr %i.auk, i64 %i.auv ; 2 uses
  %i.aux = lshr i64 %i.auv, 5
  %i.auy = getelementptr inbounds nuw [4 x i8], ptr %i.aul, i64 %i.aux
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !46
  %i.ava = and i32 %i.auu, 31
  %i.avb = lshr i32 %i.auz, %i.ava
  %i.avc = trunc i32 %i.avb to i1
  br i1 %i.avc, label %.lr.ph.i.i204.i, label %.loopexit.i193.i, !prof !74

.lr.ph.i.i204.i:                                  ; preds = %bb.dz, %bb.ea
  %i.avd = phi ptr [ %i.avj, %bb.ea ], [ %i.auw, %bb.dz ] ; 2 uses
  %.024.i.i205.i = phi i32 [ %i.avh, %bb.ea ], [ %i.auu, %bb.dz ]
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !47
  %i.avf = icmp eq ptr %i.atz, %i.ave
  br i1 %i.avf, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit206.loopexit.i, label %bb.ea, !prof !75

bb.ea:                                            ; preds = %.lr.ph.i.i204.i
  %i.avg = add nuw i32 %.024.i.i205.i, 1
  %i.avh = and i32 %i.avg, %i.auo                 ; 3 uses
  %i.avi = zext i32 %i.avh to i64                 ; 2 uses
  %i.avj = getelementptr inbounds nuw [16 x i8], ptr %i.auk, i64 %i.avi ; 2 uses
  %i.avk = lshr i64 %i.avi, 5
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.aul, i64 %i.avk
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !46
  %i.avn = and i32 %i.avh, 31
  %i.avo = lshr i32 %i.avm, %i.avn
  %i.avp = trunc i32 %i.avo to i1
  br i1 %i.avp, label %.lr.ph.i.i204.i, label %.loopexit.i193.i, !prof !76, !llvm.loop !1

.loopexit.i193.i:                                 ; preds = %bb.ea, %bb.dz, %_ZN4mlir9Operation9getResultEj.exit140.i
  %.lcssa28.sink.i.ph.i194.i = phi ptr [ %i.auw, %bb.dz ], [ null, %_ZN4mlir9Operation9getResultEj.exit140.i ], [ %i.avj, %bb.ea ]
  %i.avq = load i32, ptr %i.agc, align 8, !tbaa !113
  %i.avr = shl i32 %i.avq, 2
  %i.avs = add i32 %i.avr, 4
  %i.avt = mul i32 %i.aum, 3
  %.not.i.i195.i = icmp ult i32 %i.avs, %i.avt
  br i1 %.not.i.i195.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i199.i, label %bb.eb, !prof !75

bb.eb:                                            ; preds = %.loopexit.i193.i
  %i.avu = shl i32 %i.aum, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.y, i32 noundef %i.avu)
  %i.avv = load ptr, ptr %i.y, align 8, !tbaa !71, !noalias !672 ; 5 uses
  %i.avw = load ptr, ptr %i.aga, align 8, !tbaa !72, !noalias !672 ; 5 uses
  %i.avx = load i32, ptr %i.agb, align 4, !tbaa !73, !noalias !672 ; 2 uses
  %i.avy = icmp ne i32 %i.avx, 0
  call void @llvm.assume(i1 %i.avy)
  %i.avz = add i32 %i.avx, -1                     ; 2 uses
  %i.awa = load ptr, ptr %i.t, align 8, !tbaa !47 ; 5 uses
  %i.awb = ptrtoint ptr %i.awa to i64
  %i.awc = mul i64 %i.awb, -4658895280553007687   ; 2 uses
  %i.awd = lshr i64 %i.awc, 31
  %i.awe = xor i64 %i.awd, %i.awc
  %i.awf = trunc i64 %i.awe to i32
  %i.awg = and i32 %i.avz, %i.awf                 ; 3 uses
  %i.awh = zext i32 %i.awg to i64                 ; 2 uses
  %i.awi = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %i.awh ; 2 uses
  %i.awj = lshr i64 %i.awh, 5
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %i.awj
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !46
  %i.awm = and i32 %i.awg, 31
  %i.awn = lshr i32 %i.awl, %i.awm
  %i.awo = trunc i32 %i.awn to i1
  br i1 %i.awo, label %.lr.ph.i303.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i199.i, !prof !74

.lr.ph.i303.i:                                    ; preds = %bb.eb, %bb.ec
  %i.awp = phi ptr [ %i.awv, %bb.ec ], [ %i.awi, %bb.eb ] ; 2 uses
  %.024.i304.i = phi i32 [ %i.awt, %bb.ec ], [ %i.awg, %bb.eb ]
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !47
  %i.awr = icmp eq ptr %i.awa, %i.awq
  br i1 %i.awr, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i199.i, label %bb.ec, !prof !75

bb.ec:                                            ; preds = %.lr.ph.i303.i
  %i.aws = add nuw i32 %.024.i304.i, 1
  %i.awt = and i32 %i.aws, %i.avz                 ; 3 uses
  %i.awu = zext i32 %i.awt to i64                 ; 2 uses
  %i.awv = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %i.awu ; 2 uses
  %i.aww = lshr i64 %i.awu, 5
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %i.aww
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !46
  %i.awz = and i32 %i.awt, 31
  %i.axa = lshr i32 %i.awy, %i.awz
  %i.axb = trunc i32 %i.axa to i1
  br i1 %i.axb, label %.lr.ph.i303.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i199.i, !prof !76, !llvm.loop !1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i199.i: ; preds = %bb.ec, %.lr.ph.i303.i, %bb.eb, %.loopexit.i193.i
  %i.axc = phi ptr [ %i.atz, %.loopexit.i193.i ], [ %i.awa, %bb.eb ], [ %i.awa, %.lr.ph.i303.i ], [ %i.awa, %bb.ec ]
  %i.axd = phi ptr [ %i.auk, %.loopexit.i193.i ], [ %i.avv, %bb.eb ], [ %i.avv, %.lr.ph.i303.i ], [ %i.avv, %bb.ec ]
  %i.axe = phi ptr [ %i.aul, %.loopexit.i193.i ], [ %i.avw, %bb.eb ], [ %i.avw, %.lr.ph.i303.i ], [ %i.avw, %bb.ec ]
  %i.axf = phi ptr [ %.lcssa28.sink.i.ph.i194.i, %.loopexit.i193.i ], [ %i.awi, %bb.eb ], [ %i.awv, %bb.ec ], [ %i.awp, %.lr.ph.i303.i ] ; 3 uses
  %i.axg = ptrtoint ptr %i.axf to i64
  %i.axh = ptrtoint ptr %i.axd to i64
  %i.axi = sub i64 %i.axg, %i.axh
  %i.axj = ashr exact i64 %i.axi, 4               ; 2 uses
  %i.axk = trunc i64 %i.axj to i32
  %i.axl = and i32 %i.axk, 31
  %i.axm = shl nuw i32 1, %i.axl
  %i.axn = lshr i64 %i.axj, 5
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %i.axe, i64 %i.axn ; 2 uses
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !46
  %i.axq = or i32 %i.axm, %i.axp
  store i32 %i.axq, ptr %i.axo, align 4, !tbaa !46
  %i.axr = load i32, ptr %i.agc, align 8, !tbaa !113
  %i.axs = add i32 %i.axr, 1
  store i32 %i.axs, ptr %i.agc, align 8, !tbaa !113
  store ptr %i.axc, ptr %i.axf, align 8, !tbaa !47
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axf, i64 8
  store i32 0, ptr %i.axt, align 8, !tbaa !46
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit206.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit206.loopexit.i: ; preds = %.lr.ph.i.i204.i
  %.phi.trans.insert542.i = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  %.pre543.i = load i32, ptr %.phi.trans.insert542.i, align 4, !tbaa !46
  %i.axu = zext i32 %.pre543.i to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit206.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit206.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit206.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i199.i
  %i.axv = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i199.i ], [ %i.axu, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit206.loopexit.i ]
  %i.axw = sub nsw i64 %i.auj, %i.axv
  %i.axx = load ptr, ptr %i.agr, align 8, !tbaa !133, !noalias !673 ; 3 uses
  %i.axy = load ptr, ptr %i.ags, align 8, !tbaa !134, !noalias !673 ; 2 uses
  %i.axz = load i32, ptr %i.agt, align 4, !tbaa !135, !noalias !673 ; 4 uses
  %i.aya = icmp eq i32 %i.axz, 0
  br i1 %i.aya, label %.loopexit.i.i.i.i30, label %bb.ed

bb.ed:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit206.i
  %i.ayb = add i32 %i.axz, -1                     ; 2 uses
  %i.ayc = ptrtoint ptr %.0.i.i137414.i to i64
  %i.ayd = xor i64 %i.ayc, -49064778989728563     ; 2 uses
  %i.aye = lshr i64 %i.ayd, 30
  %i.ayf = xor i64 %i.aye, %i.ayd
  %i.ayg = mul i64 %i.ayf, -4658895280553007687   ; 2 uses
  %i.ayh = lshr i64 %i.ayg, 27
  %i.ayi = xor i64 %i.ayh, %i.ayg
  %i.ayj = mul i64 %i.ayi, -7723592293110705685   ; 2 uses
  %i.ayk = lshr i64 %i.ayj, 31
  %i.ayl = xor i64 %i.ayk, %i.ayj
  %i.aym = trunc i64 %i.ayl to i32
  %i.ayn = and i32 %i.ayb, %i.aym                 ; 3 uses
  %i.ayo = zext i32 %i.ayn to i64                 ; 2 uses
  %i.ayp = lshr i64 %i.ayo, 5
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.ayp
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !46, !noalias !674
  %i.ays = and i32 %i.ayn, 31
  %i.ayt = lshr i32 %i.ayr, %i.ays
  %i.ayu = trunc i32 %i.ayt to i1
  br i1 %i.ayu, label %.lr.ph.i.i.i.i.i.i34, label %.loopexit.i.i.i.i30, !prof !74

.lr.ph.i.i.i.i.i.i34:                             ; preds = %bb.ed, %bb.ee
  %i.ayv = phi i64 [ %i.aza, %bb.ee ], [ %i.ayo, %bb.ed ]
  %.01419.i.i.i.i.i.i = phi i32 [ %i.ayz, %bb.ee ], [ %i.ayn, %bb.ed ]
  %i.ayw = getelementptr inbounds nuw [72 x i8], ptr %i.axx, i64 %i.ayv ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ayw, align 8, !tbaa !44, !noalias !674
  %i.ayx = icmp eq ptr %.0.i.i137414.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.ayx, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit.i.i, label %bb.ee, !prof !75

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i.i.i34
  %i.ayy = add nuw i32 %.01419.i.i.i.i.i.i, 1
  %i.ayz = and i32 %i.ayy, %i.ayb                 ; 3 uses
  %i.aza = zext i32 %i.ayz to i64                 ; 2 uses
  %i.azb = lshr i64 %i.aza, 5
end_hunk_0
begin_hunk_1_@_ZN4mlir3scf15pipelineForLoopERNS_12RewriterBaseENS0_5ForOpERKNS0_16PipeliningOptionEPb:bb.a

bb.ek:                                            ; preds = %.lr.ph.i.i216.i
  %i.bbe = add nuw i32 %.01926.i.i.i, 1
  %i.bbf = and i32 %i.bbe, %i.bah                 ; 3 uses
  %i.bbg = zext i32 %i.bbf to i64                 ; 2 uses
  %i.bbh = getelementptr inbounds nuw [72 x i8], ptr %i.bad, i64 %i.bbg ; 2 uses
  %i.bbi = lshr i64 %i.bbg, 5
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %i.bae, i64 %i.bbi
  %i.bbk = load i32, ptr %i.bbj, align 4, !tbaa !46, !noalias !677
  %i.bbl = and i32 %i.bbf, 31
  %i.bbm = lshr i32 %i.bbk, %i.bbl
  %i.bbn = trunc i32 %i.bbm to i1
  br i1 %i.bbn, label %.lr.ph.i.i216.i, label %.loopexit.i207.i, !prof !76, !llvm.loop !2

.loopexit.i207.i:                                 ; preds = %bb.ek, %bb.ej, %_ZSt9make_pairIRN4mlir5ValueEN4llvm11SmallVectorIS1_Lj6EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i.i
  %.lcssa30.sink.i.ph.i.i = phi ptr [ %i.bav, %bb.ej ], [ null, %_ZSt9make_pairIRN4mlir5ValueEN4llvm11SmallVectorIS1_Lj6EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i.i ], [ %i.bbh, %bb.ek ]
  %i.bbo = load i32, ptr %i.agu, align 8, !tbaa !136, !noalias !677
  %i.bbp = shl i32 %i.bbo, 2
  %i.bbq = add i32 %i.bbp, 4
  %i.bbr = mul i32 %i.baf, 3
  %.not.i.i208.i = icmp ult i32 %i.bbq, %i.bbr
  br i1 %.not.i.i208.i, label %.loopexit.i207._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i_crit_edge.i, label %bb.el, !prof !75

.loopexit.i207._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i_crit_edge.i: ; preds = %.loopexit.i207.i
  %.pre546.i = load i64, ptr %44, align 8, !tbaa !44, !noalias !677
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i

bb.el:                                            ; preds = %.loopexit.i207.i
  %i.bbs = shl i32 %i.baf, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.agr, i32 noundef %i.bbs), !noalias !677
  %i.bbt = load ptr, ptr %i.agr, align 8, !tbaa !133, !noalias !678 ; 5 uses
  %i.bbu = load ptr, ptr %i.ags, align 8, !tbaa !134, !noalias !678 ; 5 uses
  %i.bbv = load i32, ptr %i.agt, align 4, !tbaa !135, !noalias !678 ; 2 uses
  %i.bbw = icmp ne i32 %i.bbv, 0
  call void @llvm.assume(i1 %i.bbw)
  %i.bbx = add i32 %i.bbv, -1                     ; 2 uses
  %.sroa.04.0.copyload.i.i = load ptr, ptr %44, align 8, !noalias !677 ; 2 uses
  %i.bby = ptrtoint ptr %.sroa.04.0.copyload.i.i to i64 ; 4 uses
  %i.bbz = xor i64 %i.bby, -49064778989728563     ; 2 uses
  %i.bca = lshr i64 %i.bbz, 30
  %i.bcb = xor i64 %i.bca, %i.bbz
  %i.bcc = mul i64 %i.bcb, -4658895280553007687   ; 2 uses
  %i.bcd = lshr i64 %i.bcc, 27
  %i.bce = xor i64 %i.bcd, %i.bcc
  %i.bcf = mul i64 %i.bce, -7723592293110705685   ; 2 uses
  %i.bcg = lshr i64 %i.bcf, 31
  %i.bch = xor i64 %i.bcg, %i.bcf
  %i.bci = trunc i64 %i.bch to i32
  %i.bcj = and i32 %i.bbx, %i.bci                 ; 3 uses
  %i.bck = zext i32 %i.bcj to i64                 ; 2 uses
  %i.bcl = getelementptr inbounds nuw [72 x i8], ptr %i.bbt, i64 %i.bck ; 2 uses
  %i.bcm = lshr i64 %i.bck, 5
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.bbu, i64 %i.bcm
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !46, !noalias !677
  %i.bcp = and i32 %i.bcj, 31
  %i.bcq = lshr i32 %i.bco, %i.bcp
  %i.bcr = trunc i32 %i.bcq to i1
  br i1 %i.bcr, label %.lr.ph.i322.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i, !prof !74

.lr.ph.i322.i:                                    ; preds = %bb.el, %bb.em
  %i.bcs = phi ptr [ %i.bcx, %bb.em ], [ %i.bcl, %bb.el ] ; 2 uses
  %.01926.i.i = phi i32 [ %i.bcv, %bb.em ], [ %i.bcj, %bb.el ]
  %.sroa.0.0.copyload.i323.i = load ptr, ptr %i.bcs, align 8, !tbaa !44, !noalias !677
  %i.bct = icmp eq ptr %.sroa.04.0.copyload.i.i, %.sroa.0.0.copyload.i323.i
  br i1 %i.bct, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i, label %bb.em, !prof !75

bb.em:                                            ; preds = %.lr.ph.i322.i
  %i.bcu = add nuw i32 %.01926.i.i, 1
  %i.bcv = and i32 %i.bcu, %i.bbx                 ; 3 uses
  %i.bcw = zext i32 %i.bcv to i64                 ; 2 uses
  %i.bcx = getelementptr inbounds nuw [72 x i8], ptr %i.bbt, i64 %i.bcw ; 2 uses
  %i.bcy = lshr i64 %i.bcw, 5
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bbu, i64 %i.bcy
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !46, !noalias !677
  %i.bdb = and i32 %i.bcv, 31
  %i.bdc = lshr i32 %i.bda, %i.bdb
  %i.bdd = trunc i32 %i.bdc to i1
  br i1 %i.bdd, label %.lr.ph.i322.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i, !prof !76, !llvm.loop !2

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i: ; preds = %bb.em, %.lr.ph.i322.i, %bb.el, %.loopexit.i207._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i_crit_edge.i
  %i.bde = phi i64 [ %.pre546.i, %.loopexit.i207._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i_crit_edge.i ], [ %i.bby, %bb.el ], [ %i.bby, %.lr.ph.i322.i ], [ %i.bby, %bb.em ]
  %i.bdf = phi ptr [ %i.bad, %.loopexit.i207._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i_crit_edge.i ], [ %i.bbt, %bb.el ], [ %i.bbt, %.lr.ph.i322.i ], [ %i.bbt, %bb.em ]
  %i.bdg = phi ptr [ %i.bae, %.loopexit.i207._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i_crit_edge.i ], [ %i.bbu, %bb.el ], [ %i.bbu, %.lr.ph.i322.i ], [ %i.bbu, %bb.em ]
  %i.bdh = phi ptr [ %.lcssa30.sink.i.ph.i.i, %.loopexit.i207._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i_crit_edge.i ], [ %i.bcl, %bb.el ], [ %i.bcx, %bb.em ], [ %i.bcs, %.lr.ph.i322.i ] ; 9 uses
  %i.bdi = ptrtoint ptr %i.bdh to i64
  %i.bdj = ptrtoint ptr %i.bdf to i64
  %i.bdk = sub i64 %i.bdi, %i.bdj
  %i.bdl = sdiv exact i64 %i.bdk, 72              ; 2 uses
  %i.bdm = trunc i64 %i.bdl to i32
  %i.bdn = and i32 %i.bdm, 31
  %i.bdo = shl nuw i32 1, %i.bdn
  %i.bdp = lshr i64 %i.bdl, 5
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %i.bdp ; 2 uses
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !46, !noalias !677
  %i.bds = or i32 %i.bdo, %i.bdr
  store i32 %i.bds, ptr %i.bdq, align 4, !tbaa !46, !noalias !677
  %i.bdt = load i32, ptr %i.agu, align 8, !tbaa !136, !noalias !677
  %i.bdu = add i32 %i.bdt, 1
  store i32 %i.bdu, ptr %i.agu, align 8, !tbaa !136, !noalias !677
  store i64 %i.bde, ptr %i.bdh, align 8, !tbaa !44, !noalias !677
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8 ; 4 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdh, i64 24 ; 3 uses
  store ptr %i.bdw, ptr %i.bdv, align 8, !tbaa !92, !noalias !677
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdh, i64 16 ; 3 uses
  store i32 0, ptr %i.bdx, align 8, !tbaa !93, !noalias !677
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdh, i64 20 ; 2 uses
  store i32 6, ptr %i.bdy, align 4, !tbaa !94, !noalias !677
  %i.bdz = load i32, ptr %i.ahh, align 8, !tbaa !93, !noalias !677 ; 5 uses
  %.not.i.i.i211.i = icmp eq i32 %i.bdz, 0
  %i.bea = icmp eq ptr %i.bdh, %44
  %or.cond.i33 = or i1 %i.bea, %.not.i.i.i211.i
  br i1 %or.cond.i33, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i, label %bb.en

bb.en:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i
  %i.beb = load ptr, ptr %i.ahf, align 8, !tbaa !92, !noalias !677 ; 3 uses
  %i.bec = icmp eq ptr %i.beb, %i.ahg
  br i1 %i.bec, label %bb.eo, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i307.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i307.i: ; preds = %bb.en
  store ptr %i.beb, ptr %i.bdv, align 8, !tbaa !92, !noalias !677
  store i32 %i.bdz, ptr %i.bdx, align 8, !tbaa !93, !noalias !677
  %i.bed = load i32, ptr %i.ahi, align 4, !tbaa !94, !noalias !677
  store i32 %i.bed, ptr %i.bdy, align 4, !tbaa !94, !noalias !677
  store ptr %i.ahg, ptr %i.ahf, align 8, !tbaa !92, !noalias !677
  store i32 0, ptr %i.ahi, align 4, !tbaa !94, !noalias !677
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.sink.split.i

bb.eo:                                            ; preds = %bb.en
  %i.bee = zext i32 %i.bdz to i64                 ; 2 uses
  %i.bef = icmp ugt i32 %i.bdz, 6
  br i1 %i.bef, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i

_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i: ; preds = %bb.eo
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bdv, ptr noundef nonnull %i.bdw, i64 noundef %i.bee, i64 noundef 8) #16, !noalias !677
  %.pre547.i = load i32, ptr %i.ahh, align 8, !tbaa !93, !noalias !677 ; 2 uses
  %.not.i.i.i316.i = icmp eq i32 %.pre547.i, 0
  br i1 %.not.i.i.i316.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i319.i, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i._ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i_crit_edge

_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i._ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i_crit_edge: ; preds = %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i
  %.pre548.i = zext i32 %.pre547.i to i64
  %.pre638 = load ptr, ptr %i.ahf, align 8, !tbaa !92, !noalias !677
  %.pre639 = load ptr, ptr %i.bdv, align 8, !tbaa !92, !noalias !677
  br label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i

_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i: ; preds = %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i._ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i_crit_edge, %bb.eo
  %i.beg = phi ptr [ %.pre639, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i._ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i_crit_edge ], [ %i.bdw, %bb.eo ]
  %i.beh = phi ptr [ %.pre638, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i._ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i_crit_edge ], [ %i.beb, %bb.eo ]
  %.pre-phi614.i = phi i64 [ %.pre548.i, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i._ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i_crit_edge ], [ %i.bee, %bb.eo ]
  %gepdiff.i318.i = shl nuw nsw i64 %.pre-phi614.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.beg, ptr align 8 %i.beh, i64 %gepdiff.i318.i, i1 false), !noalias !677
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i319.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i319.i: ; preds = %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.thread.i, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i314.i
  store i32 %i.bdz, ptr %i.bdx, align 8, !tbaa !93, !noalias !677
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.sink.split.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.sink.split.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i319.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i307.i
  store i32 0, ptr %i.ahh, align 8, !tbaa !93, !noalias !677
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i: ; preds = %.lr.ph.i.i216.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.sink.split.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i
  %.sroa.0.0.i212.i = phi ptr [ %i.bdh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.sink.split.i ], [ %i.bdh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i.i ], [ %i.bbc, %.lr.ph.i.i216.i ]
  %i.bei = load ptr, ptr %i.ahf, align 8, !tbaa !92 ; 2 uses
  %i.bej = icmp eq ptr %i.bei, %i.ahg
  br i1 %i.bej, label %_ZNSt4pairIN4mlir5ValueEN4llvm11SmallVectorIS1_Lj6EEEED2Ev.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i
  call void @free(ptr noundef %i.bei) #16
  br label %_ZNSt4pairIN4mlir5ValueEN4llvm11SmallVectorIS1_Lj6EEEED2Ev.exit.i.i

_ZNSt4pairIN4mlir5ValueEN4llvm11SmallVectorIS1_Lj6EEEED2Ev.exit.i.i: ; preds = %bb.ep, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_.exit.i
  %i.bek = load ptr, ptr %45, align 8, !tbaa !92  ; 2 uses
  %i.bel = icmp eq ptr %i.bek, %i.ahc
  br i1 %i.bel, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt4pairIN4mlir5ValueEN4llvm11SmallVectorIS1_Lj6EEEED2Ev.exit.i.i
  call void @free(ptr noundef %i.bek) #16
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i: ; preds = %bb.eq, %_ZNSt4pairIN4mlir5ValueEN4llvm11SmallVectorIS1_Lj6EEEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #16
  br label %_ZN12_GLOBAL__N_121LoopPipelinerInternal15setValueMappingEN4mlir5ValueES2_l.exit.i

_ZN12_GLOBAL__N_121LoopPipelinerInternal15setValueMappingEN4mlir5ValueES2_l.exit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.i.i
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.0.i212.i, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i ], [ %.lcssa.sink.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.i.i ]
  %i.bem = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 8
  %i.ben = load ptr, ptr %i.bem, align 8, !tbaa !92
  %i.beo = getelementptr inbounds nuw [8 x i8], ptr %i.ben, i64 %i.axw
  store ptr %.0.i.i139.i, ptr %i.beo, align 8, !tbaa !44
  %i.bep = add nuw nsw i64 %.sroa.0372.0479.i, 1  ; 2 uses
  %.not431.i = icmp eq i64 %i.bep, %i.atg
  br i1 %.not431.i, label %.loopexit.i32, label %bb.du

_ZN4mlir9Operation9getResultEj.exit145.i:         ; preds = %bb.fw, %.lr.ph476.i
  %.sroa.027.0475.i = phi ptr [ %.0.i.i.i, %.lr.ph476.i ], [ %.sroa.027.2.i, %bb.fw ] ; 4 uses
  %.0102474.i = phi ptr [ %i.atr, %.lr.ph476.i ], [ %i.bxw, %bb.fw ] ; 5 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %.0102474.i, i64 24
  %.sroa.0.0.copyload.i143.i = load ptr, ptr %i.beq, align 8, !tbaa !44
  %i.ber = load ptr, ptr %i.t, align 8, !tbaa !47 ; 2 uses
  %i.bes = getelementptr inbounds [16 x i8], ptr %i.ber, i64 %82
  %i.bet = getelementptr inbounds i8, ptr %i.ber, i64 -96
  %i.beu = getelementptr inbounds [24 x i8], ptr %i.bet, i64 %i.aty
  %.0.i.i144.i = select i1 %i.ati, ptr %i.bes, ptr %i.beu
  %.not432.i = icmp eq ptr %.sroa.0.0.copyload.i143.i, %.0.i.i144.i
  br i1 %.not432.i, label %bb.er, label %bb.fw

bb.er:                                            ; preds = %_ZN4mlir9Operation9getResultEj.exit145.i
  %i.bev = load ptr, ptr %49, align 8, !tbaa !92
  %i.bew = getelementptr inbounds nuw [8 x i8], ptr %i.bev, i64 %i.asq
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !116
  %.not433.i = icmp eq ptr %i.bex, null
  br i1 %.not433.i, label %.critedge.i35, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bey = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.0102474.i) #16 ; 3 uses
  %i.bez = load ptr, ptr %74, align 8, !tbaa !610 ; 2 uses
  %i.bfa = icmp ult i32 %i.bey, 6
  br i1 %i.bfa, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.bfb = add nuw nsw i32 %i.bey, 1
  %i.bfc = zext nneg i32 %i.bfb to i64
  %i.bfd = sub nsw i64 0, %i.bfc
  %i.bfe = getelementptr inbounds [16 x i8], ptr %i.bez, i64 %i.bfd
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_3scf5ForOpENS0_15VariadicResultsEE9getResultEj.exit.i

bb.eu:                                            ; preds = %bb.es
  %i.bff = getelementptr inbounds i8, ptr %i.bez, i64 -96
  %i.bfg = add i32 %i.bey, -5
  %i.bfh = zext i32 %i.bfg to i64
  %i.bfi = sub nsw i64 0, %i.bfh
  %i.bfj = getelementptr inbounds [24 x i8], ptr %i.bff, i64 %i.bfi
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_3scf5ForOpENS0_15VariadicResultsEE9getResultEj.exit.i

_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_3scf5ForOpENS0_15VariadicResultsEE9getResultEj.exit.i: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i = phi ptr [ %i.bfe, %bb.et ], [ %i.bfj, %bb.eu ]
  %i.bfk = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !137
  %i.bfl = icmp eq ptr %i.bfk, null
  br i1 %i.bfl, label %.critedge.i35, label %bb.ev

bb.ev:                                            ; preds = %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_3scf5ForOpENS0_15VariadicResultsEE9getResultEj.exit.i
  %i.bfm = call { ptr, i64 } @_ZN4mlir3scf5ForOp17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(192) %74) #16
  %i.bfn = extractvalue { ptr, i64 } %i.bfm, 0
  %i.bfo = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.0102474.i) #16
  %i.bfp = zext i32 %i.bfo to i64
  %i.bfq = getelementptr inbounds nuw [8 x i8], ptr %i.bfn, i64 %i.bfp ; 3 uses
  %i.bfr = load ptr, ptr %i.agr, align 8, !tbaa !133, !noalias !679 ; 3 uses
  %i.bfs = load ptr, ptr %i.ags, align 8, !tbaa !134, !noalias !679 ; 3 uses
  %i.bft = load i32, ptr %i.agt, align 4, !tbaa !135, !noalias !679 ; 4 uses
  %i.bfu = icmp eq i32 %i.bft, 0
  br i1 %i.bfu, label %.loopexit.i222.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bfv = add i32 %i.bft, -1                     ; 2 uses
  %.sroa.04.0.copyload.i.i221.i = load ptr, ptr %i.bfq, align 8 ; 2 uses
  %i.bfw = ptrtoint ptr %.sroa.04.0.copyload.i.i221.i to i64
  %i.bfx = xor i64 %i.bfw, -49064778989728563     ; 2 uses
  %i.bfy = lshr i64 %i.bfx, 30
  %i.bfz = xor i64 %i.bfy, %i.bfx
  %i.bga = mul i64 %i.bfz, -4658895280553007687   ; 2 uses
  %i.bgb = lshr i64 %i.bga, 27
  %i.bgc = xor i64 %i.bgb, %i.bga
  %i.bgd = mul i64 %i.bgc, -7723592293110705685   ; 2 uses
  %i.bge = lshr i64 %i.bgd, 31
  %i.bgf = xor i64 %i.bge, %i.bgd
  %i.bgg = trunc i64 %i.bgf to i32
  %i.bgh = and i32 %i.bfv, %i.bgg                 ; 3 uses
  %i.bgi = zext i32 %i.bgh to i64                 ; 2 uses
  %i.bgj = getelementptr inbounds nuw [72 x i8], ptr %i.bfr, i64 %i.bgi ; 2 uses
  %i.bgk = lshr i64 %i.bgi, 5
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bfs, i64 %i.bgk
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !46
  %i.bgn = and i32 %i.bgh, 31
  %i.bgo = lshr i32 %i.bgm, %i.bgn
  %i.bgp = trunc i32 %i.bgo to i1
  br i1 %i.bgp, label %.lr.ph.i.i233.i, label %.loopexit.i222.i, !prof !74

.lr.ph.i.i233.i:                                  ; preds = %bb.ew, %bb.ex
  %i.bgq = phi ptr [ %i.bgv, %bb.ex ], [ %i.bgj, %bb.ew ] ; 2 uses
  %.01926.i.i234.i = phi i32 [ %i.bgt, %bb.ex ], [ %i.bgh, %bb.ew ]
  %.sroa.0.0.copyload.i.i235.i = load ptr, ptr %i.bgq, align 8, !tbaa !44
  %i.bgr = icmp eq ptr %.sroa.04.0.copyload.i.i221.i, %.sroa.0.0.copyload.i.i235.i
  br i1 %i.bgr, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i, label %bb.ex, !prof !75

bb.ex:                                            ; preds = %.lr.ph.i.i233.i
  %i.bgs = add nuw i32 %.01926.i.i234.i, 1
  %i.bgt = and i32 %i.bgs, %i.bfv                 ; 3 uses
  %i.bgu = zext i32 %i.bgt to i64                 ; 2 uses
  %i.bgv = getelementptr inbounds nuw [72 x i8], ptr %i.bfr, i64 %i.bgu ; 2 uses
  %i.bgw = lshr i64 %i.bgu, 5
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bfs, i64 %i.bgw
  %i.bgy = load i32, ptr %i.bgx, align 4, !tbaa !46
  %i.bgz = and i32 %i.bgt, 31
  %i.bha = lshr i32 %i.bgy, %i.bgz
  %i.bhb = trunc i32 %i.bha to i1
  br i1 %i.bhb, label %.lr.ph.i.i233.i, label %.loopexit.i222.i, !prof !76, !llvm.loop !2

.loopexit.i222.i:                                 ; preds = %bb.ex, %bb.ew, %bb.ev
  %.lcssa30.sink.i.ph.i223.i = phi ptr [ %i.bgj, %bb.ew ], [ null, %bb.ev ], [ %i.bgv, %bb.ex ]
  %i.bhc = load i32, ptr %i.agu, align 8, !tbaa !136
  %i.bhd = shl i32 %i.bhc, 2
  %i.bhe = add i32 %i.bhd, 4
  %i.bhf = mul i32 %i.bft, 3
  %.not.i.i224.i = icmp ult i32 %i.bhe, %i.bhf
  br i1 %.not.i.i224.i, label %.loopexit.i222._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228_crit_edge.i, label %bb.ey, !prof !75

.loopexit.i222._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228_crit_edge.i: ; preds = %.loopexit.i222.i
  %.pre531.i = load i64, ptr %i.bfq, align 8, !tbaa !44
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228.i

bb.ey:                                            ; preds = %.loopexit.i222.i
  %i.bhg = shl i32 %i.bft, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.agr, i32 noundef %i.bhg)
  %i.bhh = load ptr, ptr %i.agr, align 8, !tbaa !133, !noalias !680 ; 5 uses
  %i.bhi = load ptr, ptr %i.ags, align 8, !tbaa !134, !noalias !680 ; 5 uses
  %i.bhj = load i32, ptr %i.agt, align 4, !tbaa !135, !noalias !680 ; 2 uses
  %i.bhk = icmp ne i32 %i.bhj, 0
  call void @llvm.assume(i1 %i.bhk)
  %i.bhl = add i32 %i.bhj, -1                     ; 2 uses
  %.sroa.04.0.copyload.i324.i = load ptr, ptr %i.bfq, align 8 ; 2 uses
  %i.bhm = ptrtoint ptr %.sroa.04.0.copyload.i324.i to i64 ; 4 uses
  %i.bhn = xor i64 %i.bhm, -49064778989728563     ; 2 uses
  %i.bho = lshr i64 %i.bhn, 30
  %i.bhp = xor i64 %i.bho, %i.bhn
  %i.bhq = mul i64 %i.bhp, -4658895280553007687   ; 2 uses
  %i.bhr = lshr i64 %i.bhq, 27
  %i.bhs = xor i64 %i.bhr, %i.bhq
  %i.bht = mul i64 %i.bhs, -7723592293110705685   ; 2 uses
  %i.bhu = lshr i64 %i.bht, 31
  %i.bhv = xor i64 %i.bhu, %i.bht
  %i.bhw = trunc i64 %i.bhv to i32
  %i.bhx = and i32 %i.bhl, %i.bhw                 ; 3 uses
  %i.bhy = zext i32 %i.bhx to i64                 ; 2 uses
  %i.bhz = getelementptr inbounds nuw [72 x i8], ptr %i.bhh, i64 %i.bhy ; 2 uses
  %i.bia = lshr i64 %i.bhy, 5
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.bia
  %i.bic = load i32, ptr %i.bib, align 4, !tbaa !46
  %i.bid = and i32 %i.bhx, 31
  %i.bie = lshr i32 %i.bic, %i.bid
  %i.bif = trunc i32 %i.bie to i1
  br i1 %i.bif, label %.lr.ph.i327.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228.i, !prof !74

.lr.ph.i327.i:                                    ; preds = %bb.ey, %bb.ez
  %i.big = phi ptr [ %i.bil, %bb.ez ], [ %i.bhz, %bb.ey ] ; 2 uses
  %.01926.i328.i = phi i32 [ %i.bij, %bb.ez ], [ %i.bhx, %bb.ey ]
  %.sroa.0.0.copyload.i329.i = load ptr, ptr %i.big, align 8, !tbaa !44
  %i.bih = icmp eq ptr %.sroa.04.0.copyload.i324.i, %.sroa.0.0.copyload.i329.i
  br i1 %i.bih, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228.i, label %bb.ez, !prof !75

bb.ez:                                            ; preds = %.lr.ph.i327.i
  %i.bii = add nuw i32 %.01926.i328.i, 1
  %i.bij = and i32 %i.bii, %i.bhl                 ; 3 uses
  %i.bik = zext i32 %i.bij to i64                 ; 2 uses
  %i.bil = getelementptr inbounds nuw [72 x i8], ptr %i.bhh, i64 %i.bik ; 2 uses
  %i.bim = lshr i64 %i.bik, 5
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.bim
  %i.bio = load i32, ptr %i.bin, align 4, !tbaa !46
  %i.bip = and i32 %i.bij, 31
  %i.biq = lshr i32 %i.bio, %i.bip
  %i.bir = trunc i32 %i.biq to i1
  br i1 %i.bir, label %.lr.ph.i327.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228.i, !prof !76, !llvm.loop !2

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228.i: ; preds = %bb.ez, %.lr.ph.i327.i, %bb.ey, %.loopexit.i222._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228_crit_edge.i
  %i.bis = phi i64 [ %.pre531.i, %.loopexit.i222._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228_crit_edge.i ], [ %i.bhm, %bb.ey ], [ %i.bhm, %.lr.ph.i327.i ], [ %i.bhm, %bb.ez ]
  %i.bit = phi ptr [ %i.bfr, %.loopexit.i222._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228_crit_edge.i ], [ %i.bhh, %bb.ey ], [ %i.bhh, %.lr.ph.i327.i ], [ %i.bhh, %bb.ez ]
  %i.biu = phi ptr [ %i.bfs, %.loopexit.i222._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228_crit_edge.i ], [ %i.bhi, %bb.ey ], [ %i.bhi, %.lr.ph.i327.i ], [ %i.bhi, %bb.ez ]
  %i.biv = phi ptr [ %.lcssa30.sink.i.ph.i223.i, %.loopexit.i222._ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228_crit_edge.i ], [ %i.bhz, %bb.ey ], [ %i.bil, %bb.ez ], [ %i.big, %.lr.ph.i327.i ] ; 7 uses
  %i.biw = ptrtoint ptr %i.biv to i64
  %i.bix = ptrtoint ptr %i.bit to i64
  %i.biy = sub i64 %i.biw, %i.bix
  %i.biz = sdiv exact i64 %i.biy, 72              ; 2 uses
  %i.bja = trunc i64 %i.biz to i32
  %i.bjb = and i32 %i.bja, 31
  %i.bjc = shl nuw i32 1, %i.bjb
  %i.bjd = lshr i64 %i.biz, 5
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.biu, i64 %i.bjd ; 2 uses
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !46
  %i.bjg = or i32 %i.bjc, %i.bjf
  store i32 %i.bjg, ptr %i.bje, align 4, !tbaa !46
  %i.bjh = load i32, ptr %i.agu, align 8, !tbaa !136
  %i.bji = add i32 %i.bjh, 1
  store i32 %i.bji, ptr %i.agu, align 8, !tbaa !136
  store i64 %i.bis, ptr %i.biv, align 8, !tbaa !44
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.biv, i64 8
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.biv, i64 24
  store ptr %i.bjk, ptr %i.bjj, align 8, !tbaa !92
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.biv, i64 16
  store i32 0, ptr %i.bjl, align 8, !tbaa !93
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.biv, i64 20
  store i32 6, ptr %i.bjm, align 4, !tbaa !94
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit.i: ; preds = %.lr.ph.i.i233.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228.i
  %.sroa.0.0.i229.i = phi ptr [ %i.biv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i228.i ], [ %i.bgq, %.lr.ph.i.i233.i ]
  %i.bjn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i229.i, i64 8
  %i.bjo = load i64, ptr %i.s, align 8, !tbaa !89
  %i.bjp = load ptr, ptr %i.y, align 8, !tbaa !71, !noalias !681 ; 3 uses
  %i.bjq = load ptr, ptr %i.aga, align 8, !tbaa !72, !noalias !681 ; 3 uses
  %i.bjr = load i32, ptr %i.agb, align 4, !tbaa !73, !noalias !681 ; 4 uses
  %i.bjs = icmp eq i32 %i.bjr, 0
end_hunk_1
