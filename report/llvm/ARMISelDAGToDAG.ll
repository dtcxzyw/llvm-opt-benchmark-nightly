Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelDAGToDAG?download=true
inline.NumInlined: 5550
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel19CheckComplexPatternEPN4llvm6SDNodeES3_NS1_7SDValueEjRNS1_15SmallVectorImplISt4pairIS4_S3_EEE:bb.a
  %.pre13.i.i1273 = zext i32 %.pre.i.i1272 to i64
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1264

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1264: ; preds = %bb.lc, %bb.lb
  %.pre-phi.i.i1265 = phi i64 [ %i.e, %bb.lb ], [ %.pre13.i.i1273, %bb.lc ]
  %.pre-phi.fr.i.i1266 = freeze i64 %.pre-phi.i.i1265 ; 3 uses
  %.not11.i.i1267 = icmp samesign eq i64 %i.cdw, %.pre-phi.fr.i.i1266
  br i1 %.not11.i.i1267, label %.sink.split.i.i1271, label %.lr.ph.preheader.i.i1268

.lr.ph.preheader.i.i1268:                         ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1264
  %i.cee = load ptr, ptr %6, align 8, !tbaa !18
  %i.cef = getelementptr [24 x i8], ptr %i.cee, i64 %.pre-phi.fr.i.i1266
  %reass.add.i1269 = sub i64 %i.cdw, %.pre-phi.fr.i.i1266
  %reass.mul.i1270 = mul i64 %reass.add.i1269, 24 ; 2 uses
  %i.ceg = add i64 %reass.mul.i1270, -24
  %i.ceh = urem i64 %i.ceg, 24
  %i.cei = sub i64 %reass.mul.i1270, %i.ceh
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cef, i8 0, i64 %i.cei, i1 false)
  br label %.sink.split.i.i1271

.sink.split.i.i1271:                              ; preds = %.lr.ph.preheader.i.i1268, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1264, %bb.la
  %i.cej = trunc i64 %i.cdv to i32
  store i32 %i.cej, ptr %i.c, align 8, !tbaa !460
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1274

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1274: ; preds = %bb.kz, %.sink.split.i.i1271
  %i.cek = load ptr, ptr %6, align 8, !tbaa !18   ; 2 uses
  %i.cel = getelementptr inbounds nuw [24 x i8], ptr %i.cek, i64 %i.e
  %i.cem = add nuw nsw i64 %i.e, 1
  %i.cen = and i64 %i.cem, 4294967295
  %i.ceo = getelementptr inbounds nuw [24 x i8], ptr %i.cek, i64 %i.cen
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectAddrMode6EPN4llvm6SDNodeENS1_7SDValueERS4_S5_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.cel, ptr noundef nonnull align 8 dereferenceable(12) %i.ceo)
  br label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel20SelectT2AddrModeImm7ILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.ld:                                            ; preds = %bb.a
  %i.cep = add nuw nsw i64 %i.e, 2                ; 2 uses
  %i.ceq = and i64 %i.cep, 4294967295             ; 6 uses
  %i.cer = icmp eq i64 %i.ceq, %i.e
  br i1 %i.cer, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1285, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.ces = icmp samesign ult i64 %i.ceq, %i.e
  br i1 %i.ces, label %.sink.split.i.i1282, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.cet = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ceu = load i32, ptr %i.cet, align 4, !tbaa !459
  %i.cev = zext i32 %i.ceu to i64
  %i.cew = icmp samesign ugt i64 %i.ceq, %i.cev
  br i1 %i.cew, label %bb.lg, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1275

bb.lg:                                            ; preds = %bb.lf
  %i.cex = getelementptr inbounds nuw i8, ptr %6, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.cex, i64 noundef %i.ceq, i64 noundef 24) #24
  %.pre.i.i1283 = load i32, ptr %i.c, align 8, !tbaa !460
  %.pre13.i.i1284 = zext i32 %.pre.i.i1283 to i64
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1275

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1275: ; preds = %bb.lg, %bb.lf
  %.pre-phi.i.i1276 = phi i64 [ %i.e, %bb.lf ], [ %.pre13.i.i1284, %bb.lg ]
  %.pre-phi.fr.i.i1277 = freeze i64 %.pre-phi.i.i1276 ; 3 uses
  %.not11.i.i1278 = icmp samesign eq i64 %i.ceq, %.pre-phi.fr.i.i1277
  br i1 %.not11.i.i1278, label %.sink.split.i.i1282, label %.lr.ph.preheader.i.i1279

.lr.ph.preheader.i.i1279:                         ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1275
  %i.cey = load ptr, ptr %6, align 8, !tbaa !18
  %i.cez = getelementptr [24 x i8], ptr %i.cey, i64 %.pre-phi.fr.i.i1277
  %reass.add.i1280 = sub i64 %i.ceq, %.pre-phi.fr.i.i1277
  %reass.mul.i1281 = mul i64 %reass.add.i1280, 24 ; 2 uses
  %i.cfa = add i64 %reass.mul.i1281, -24
  %i.cfb = urem i64 %i.cfa, 24
  %i.cfc = sub i64 %reass.mul.i1281, %i.cfb
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cez, i8 0, i64 %i.cfc, i1 false)
  br label %.sink.split.i.i1282

.sink.split.i.i1282:                              ; preds = %.lr.ph.preheader.i.i1279, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1275, %bb.le
  %i.cfd = trunc i64 %i.cep to i32
  store i32 %i.cfd, ptr %i.c, align 8, !tbaa !460
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1285

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1285: ; preds = %bb.ld, %.sink.split.i.i1282
  %i.cfe = load ptr, ptr %6, align 8, !tbaa !18   ; 2 uses
  %i.cff = getelementptr inbounds nuw [24 x i8], ptr %i.cfe, i64 %i.e
  %i.cfg = add nuw nsw i64 %i.e, 1
  %i.cfh = and i64 %i.cfg, 4294967295
  %i.cfi = getelementptr inbounds nuw [24 x i8], ptr %i.cfe, i64 %i.cfh
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectAddrMode6EPN4llvm6SDNodeENS1_7SDValueERS4_S5_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.cff, ptr noundef nonnull align 8 dereferenceable(12) %i.cfi)
  br label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel20SelectT2AddrModeImm7ILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.lh:                                            ; preds = %bb.a
  %i.cfj = add nuw nsw i64 %i.e, 2                ; 2 uses
  %i.cfk = and i64 %i.cfj, 4294967295             ; 6 uses
  %i.cfl = icmp eq i64 %i.cfk, %i.e
  br i1 %i.cfl, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1296, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.cfm = icmp samesign ult i64 %i.cfk, %i.e
  br i1 %i.cfm, label %.sink.split.i.i1293, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.cfn = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cfo = load i32, ptr %i.cfn, align 4, !tbaa !459
  %i.cfp = zext i32 %i.cfo to i64
  %i.cfq = icmp samesign ugt i64 %i.cfk, %i.cfp
  br i1 %i.cfq, label %bb.lk, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1286

bb.lk:                                            ; preds = %bb.lj
  %i.cfr = getelementptr inbounds nuw i8, ptr %6, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.cfr, i64 noundef %i.cfk, i64 noundef 24) #24
  %.pre.i.i1294 = load i32, ptr %i.c, align 8, !tbaa !460
  %.pre13.i.i1295 = zext i32 %.pre.i.i1294 to i64
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1286

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1286: ; preds = %bb.lk, %bb.lj
  %.pre-phi.i.i1287 = phi i64 [ %i.e, %bb.lj ], [ %.pre13.i.i1295, %bb.lk ]
  %.pre-phi.fr.i.i1288 = freeze i64 %.pre-phi.i.i1287 ; 3 uses
  %.not11.i.i1289 = icmp samesign eq i64 %i.cfk, %.pre-phi.fr.i.i1288
  br i1 %.not11.i.i1289, label %.sink.split.i.i1293, label %.lr.ph.preheader.i.i1290

.lr.ph.preheader.i.i1290:                         ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1286
  %i.cfs = load ptr, ptr %6, align 8, !tbaa !18
  %i.cft = getelementptr [24 x i8], ptr %i.cfs, i64 %.pre-phi.fr.i.i1288
  %reass.add.i1291 = sub i64 %i.cfk, %.pre-phi.fr.i.i1288
  %reass.mul.i1292 = mul i64 %reass.add.i1291, 24 ; 2 uses
  %i.cfu = add i64 %reass.mul.i1292, -24
  %i.cfv = urem i64 %i.cfu, 24
  %i.cfw = sub i64 %reass.mul.i1292, %i.cfv
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cft, i8 0, i64 %i.cfw, i1 false)
  br label %.sink.split.i.i1293

.sink.split.i.i1293:                              ; preds = %.lr.ph.preheader.i.i1290, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1286, %bb.li
  %i.cfx = trunc i64 %i.cfj to i32
  store i32 %i.cfx, ptr %i.c, align 8, !tbaa !460
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1296

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1296: ; preds = %bb.lh, %.sink.split.i.i1293
  %i.cfy = load ptr, ptr %6, align 8, !tbaa !18   ; 2 uses
  %i.cfz = getelementptr inbounds nuw [24 x i8], ptr %i.cfy, i64 %i.e
  %i.cga = add nuw nsw i64 %i.e, 1
  %i.cgb = and i64 %i.cga, 4294967295
  %i.cgc = getelementptr inbounds nuw [24 x i8], ptr %i.cfy, i64 %i.cgb
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectAddrMode6EPN4llvm6SDNodeENS1_7SDValueERS4_S5_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.cfz, ptr noundef nonnull align 8 dereferenceable(12) %i.cgc)
  br label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel20SelectT2AddrModeImm7ILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.ll:                                            ; preds = %bb.a
  %i.cgd = add nuw nsw i64 %i.e, 2                ; 2 uses
  %i.cge = and i64 %i.cgd, 4294967295             ; 6 uses
  %i.cgf = icmp eq i64 %i.cge, %i.e
  br i1 %i.cgf, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1307, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.cgg = icmp samesign ult i64 %i.cge, %i.e
  br i1 %i.cgg, label %.sink.split.i.i1304, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.cgh = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cgi = load i32, ptr %i.cgh, align 4, !tbaa !459
  %i.cgj = zext i32 %i.cgi to i64
  %i.cgk = icmp samesign ugt i64 %i.cge, %i.cgj
  br i1 %i.cgk, label %bb.lo, label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1297

bb.lo:                                            ; preds = %bb.ln
  %i.cgl = getelementptr inbounds nuw i8, ptr %6, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.cgl, i64 noundef %i.cge, i64 noundef 24) #24
  %.pre.i.i1305 = load i32, ptr %i.c, align 8, !tbaa !460
  %.pre13.i.i1306 = zext i32 %.pre.i.i1305 to i64
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1297

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1297: ; preds = %bb.lo, %bb.ln
  %.pre-phi.i.i1298 = phi i64 [ %i.e, %bb.ln ], [ %.pre13.i.i1306, %bb.lo ]
  %.pre-phi.fr.i.i1299 = freeze i64 %.pre-phi.i.i1298 ; 3 uses
  %.not11.i.i1300 = icmp samesign eq i64 %i.cge, %.pre-phi.fr.i.i1299
  br i1 %.not11.i.i1300, label %.sink.split.i.i1304, label %.lr.ph.preheader.i.i1301

.lr.ph.preheader.i.i1301:                         ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1297
  %i.cgm = load ptr, ptr %6, align 8, !tbaa !18
  %i.cgn = getelementptr [24 x i8], ptr %i.cgm, i64 %.pre-phi.fr.i.i1299
  %reass.add.i1302 = sub i64 %i.cge, %.pre-phi.fr.i.i1299
  %reass.mul.i1303 = mul i64 %reass.add.i1302, 24 ; 2 uses
  %i.cgo = add i64 %reass.mul.i1303, -24
  %i.cgp = urem i64 %i.cgo, 24
  %i.cgq = sub i64 %reass.mul.i1303, %i.cgp
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cgn, i8 0, i64 %i.cgq, i1 false)
  br label %.sink.split.i.i1304

.sink.split.i.i1304:                              ; preds = %.lr.ph.preheader.i.i1301, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE7reserveEm.exit.i.i1297, %bb.lm
  %i.cgr = trunc i64 %i.cgd to i32
  store i32 %i.cgr, ptr %i.c, align 8, !tbaa !460
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1307

_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1307: ; preds = %bb.ll, %.sink.split.i.i1304
  %i.cgs = load ptr, ptr %6, align 8, !tbaa !18   ; 2 uses
  %i.cgt = getelementptr inbounds nuw [24 x i8], ptr %i.cgs, i64 %i.e
  %i.cgu = add nuw nsw i64 %i.e, 1
  %i.cgv = and i64 %i.cgu, 4294967295
  %i.cgw = getelementptr inbounds nuw [24 x i8], ptr %i.cgs, i64 %i.cgv
  tail call fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15SelectAddrMode6EPN4llvm6SDNodeENS1_7SDValueERS4_S5_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.cgt, ptr noundef nonnull align 8 dereferenceable(12) %i.cgw)
  br label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel20SelectT2AddrModeImm7ILj0EEEbN4llvm7SDValueERS3_S4_.exit

_ZN12_GLOBAL__N_115ARMDAGToDAGISel20SelectT2AddrModeImm7ILj0EEEbN4llvm7SDValueERS3_S4_.exit: ; preds = %.lr.ph.i.i.i1191, %.lr.ph.i.i.i887, %bb.il, %.thread.i1245, %bb.ky, %bb.kp, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i1227, %bb.km, %bb.kl, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1224, %bb.kg, %bb.kf, %bb.ke, %bb.jy, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i1200, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1188, %.thread.i1151, %bb.jo, %bb.iz, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i1107, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1104, %bb.im, %switch.lookup, %switch.lookup, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1071, %bb.ig, %bb.if, %bb.ib, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i1052, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i1048, %bb.ia, %bb.hz, %bb.hy, %_ZN4llvm16MachineFrameInfo18setObjectAlignmentEiNS_5AlignE.exit.i, %bb.hq, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i1028, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1027, %bb.hi, %_ZNK4llvm8TypeSizecvmEv.exit.i, %bb.he, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1010, %.thread.i984, %bb.gz, %bb.gs, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i964, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit963, %bb.gn, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i945, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit944, %bb.fw, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i894, %bb.fu, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit882, %.thread.i847, %bb.fl, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i832, %.critedge.i831, %bb.ez, %bb.ev, %_ZNK4llvm7SDValue9hasOneUseEv.exit149.thread.i, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i774, %thread-pre-split.thread.i, %.critedge105.i, %.thread.i729, %bb.dk, %.thread.i701, %bb.db, %.thread.i688, %bb.cs, %bb.cr, %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i659, %bb.bt, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i, %bb.bo, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i, %bb.bj, %bb.bh, %bb.bf, %bb.au, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i.i, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit620, %.thread.i, %bb.ai, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1307, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1296, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1285, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1274, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1177, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1139, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1128, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1093, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1082, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit933, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit922, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit911, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit871, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit758, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit675, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit631, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit609, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit587, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit576, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit565, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit554, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit543, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit
  %.0 = phi i1 [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit543 ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit554 ], [ %i.ch, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit565 ], [ %i.dc, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit576 ], [ %i.dx, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit587 ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1307 ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit609 ], [ true, %.thread.i ], [ %i.kc, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit631 ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i.i ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i ], [ %i.uw, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit675 ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i659 ], [ false, %bb.cr ], [ true, %.thread.i701 ], [ %i.adv, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit758 ], [ true, %.thread.i729 ], [ false, %thread-pre-split.thread.i ], [ true, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i832 ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit871 ], [ true, %.thread.i847 ], [ %i.awv, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit911 ], [ %i.axq, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit922 ], [ %i.ayl, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit933 ], [ true, %.thread.i1245 ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit944 ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit963 ], [ true, %.thread.i984 ], [ true, %bb.hi ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1027 ], [ false, %bb.ia ], [ %i.bom, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1082 ], [ %i.bph, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1093 ], [ false, %switch.lookup ], [ %i.brt, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1128 ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1139 ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1104 ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1177 ], [ true, %.thread.i1151 ], [ false, %.lr.ph.i.i.i887 ], [ false, %bb.ke ], [ true, %bb.kp ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1274 ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1285 ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1296 ], [ true, %bb.ai ], [ true, %bb.au ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit620 ], [ true, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i ], [ false, %bb.bh ], [ true, %bb.bf ], [ true, %bb.bj ], [ true, %bb.bo ], [ true, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i ], [ false, %bb.bt ], [ false, %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.i ], [ true, %.thread.i688 ], [ true, %bb.cs ], [ true, %bb.db ], [ true, %bb.dk ], [ true, %_ZNK4llvm7SDValue9hasOneUseEv.exit149.thread.i ], [ false, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i774 ], [ true, %.critedge105.i ], [ true, %bb.ev ], [ true, %bb.ez ], [ true, %.critedge.i831 ], [ true, %bb.fl ], [ true, %bb.fw ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i894 ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit882 ], [ false, %bb.fu ], [ true, %bb.gn ], [ false, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i945 ], [ true, %bb.gs ], [ false, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i964 ], [ true, %bb.gz ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1010 ], [ true, %bb.he ], [ true, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ true, %bb.hq ], [ false, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i1028 ], [ true, %_ZN4llvm16MachineFrameInfo18setObjectAlignmentEiNS_5AlignE.exit.i ], [ false, %bb.hy ], [ true, %bb.ig ], [ false, %bb.hz ], [ false, %bb.if ], [ false, %bb.ib ], [ false, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i1052 ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i1048 ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1071 ], [ false, %switch.lookup ], [ false, %bb.il ], [ true, %bb.im ], [ true, %bb.iz ], [ false, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i1107 ], [ true, %bb.jo ], [ %i.bwu, %bb.jy ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i1200 ], [ false, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1188 ], [ true, %bb.kg ], [ true, %bb.kf ], [ true, %_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm.exit1224 ], [ true, %bb.kl ], [ true, %bb.km ], [ true, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i1227 ], [ true, %bb.ky ], [ false, %.lr.ph.i.i.i1191 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i32 } @_ZN12_GLOBAL__N_115ARMDAGToDAGISel14RunSDNodeXFormEN4llvm7SDValueEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly %1, i32 %2, i32 noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %19 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %21 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %22 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %23 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %24 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %25 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %26 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %27 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %28 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %29 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %30 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %31 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %32 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %33 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %34 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %35 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %36 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %37 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %38 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %39 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %40 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %41 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  switch i32 %3, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.m
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 8, label %bb.p
    i32 9, label %bb.q
    i32 10, label %bb.r
    i32 11, label %bb.z
    i32 12, label %bb.aa
    i32 13, label %bb.ab
    i32 14, label %bb.ac
    i32 15, label %bb.ad
    i32 16, label %switch.lookup
    i32 17, label %bb.ae
    i32 18, label %bb.af
    i32 19, label %bb.ag
    i32 20, label %bb.ah
    i32 21, label %bb.ai
    i32 22, label %bb.aj
    i32 23, label %bb.ak
    i32 24, label %bb.al
    i32 25, label %bb.am
    i32 26, label %bb.ar
    i32 27, label %bb.aw
    i32 28, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !342
  %i.h = icmp ult i32 %i.g, 65
  %i.i = load ptr, ptr %i.e, align 8
  %spec.select.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.i
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !343
  %i.j = lshr i64 %.0.i.i.i, 16
  %i.k = and i64 %i.j, 65535
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !353
  store i64 %i.m, ptr %7, align 8, !tbaa !353
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !354
  store i32 %i.p, ptr %i.n, align 8, !tbaa !356
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bc

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !314
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !340  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !342
  %i.y = icmp ult i32 %i.x, 65
  %i.z = load ptr, ptr %i.v, align 8
  %spec.select.i.i.i205 = select i1 %i.y, ptr %i.v, ptr %i.z
  %.0.i.i.i206 = load i64, ptr %spec.select.i.i.i205, align 8, !tbaa !343
  %i.aa = and i64 %.0.i.i.i206, 4294967295
  %i.ab = xor i64 %i.aa, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !353
  store i64 %i.ad, ptr %8, align 8, !tbaa !353
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !354
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !356
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.s, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bc

bb.e:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !340 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !342
  %i.an = icmp ult i32 %i.am, 65
  %i.ao = load ptr, ptr %i.ak, align 8
  %spec.select.i.i.i207 = select i1 %i.an, ptr %i.ak, ptr %i.ao
  %.0.i.i.i208 = load i64, ptr %spec.select.i.i.i207, align 8, !tbaa !343
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !314 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 4 uses
  switch i64 %.0.i.i.i208, label %bb.f [
    i64 0, label %bb.g
    i64 8, label %bb.h
    i64 16, label %bb.i
    i64 24, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !353
  store i64 %i.at, ptr %9, align 8, !tbaa !353
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.av = load i32, ptr %i.as, align 4, !tbaa !354
  store i32 %i.av, ptr %i.au, align 8, !tbaa !356
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aq, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bc

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !353
  store i64 %i.ax, ptr %10, align 8, !tbaa !353
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.az = load i32, ptr %i.as, align 4, !tbaa !354
  store i32 %i.az, ptr %i.ay, align 8, !tbaa !356
  %i.ba = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bc

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !353
  store i64 %i.bb, ptr %11, align 8, !tbaa !353
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bd = load i32, ptr %i.as, align 4, !tbaa !354
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !356
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aq, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bc

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.bf = load i64, ptr %i.ar, align 8, !tbaa !353
  store i64 %i.bf, ptr %12, align 8, !tbaa !353
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bh = load i32, ptr %i.as, align 4, !tbaa !354
  store i32 %i.bh, ptr %i.bg, align 8, !tbaa !356
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aq, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bc

bb.k:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel17tryMVEIndexedLoadEPN4llvm6SDNodeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.bn = and i16 %.032.in.in.in.i, 640
  %or.cond.i = icmp eq i16 %i.bn, 128
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = and i64 %.0.i.i.i15.i.i, 254
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !353
  store i64 %i.bq, ptr %12, align 8, !tbaa !353
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !354
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !356
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val111, i64 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.neg = mul i64 %.0.i.i.i15.i.i, -4294967296
  %i.bv = ashr exact i64 %.neg, 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !353
  store i64 %i.bx, ptr %13, align 8, !tbaa !353
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !354
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !356
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val111, i64 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.cb, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %.393.ph.in, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = select i1 %.397.ph.in, i32 1289, i32 1288
  br label %bb.ay

bb.r:                                             ; preds = %bb.p
  %i.cd = select i1 %.397.ph.in, i32 1299, i32 1298
  br label %bb.ay

_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit.thread: ; preds = %bb.k, %bb.j
  %.not.i.i126 = icmp eq i16 %.pre, 47
  %i.ce = icmp eq ptr %.pre408, null              ; 5 uses
  %.not4.i127 = select i1 %.not.i.i126, i1 %i.ce, i1 false
  br i1 %.not4.i127, label %bb.s, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit142.thread

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val110 = load ptr, ptr %i.cf, align 8         ; 2 uses
  %.032.in.in.in.in.i128 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.032.in.in.in.i129 = load i16, ptr %.032.in.in.in.in.i128, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !326
  switch i32 %i.ch, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i130
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i130
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i130: ; preds = %bb.s, %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !340 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !342
  %i.cn = icmp ult i32 %i.cm, 65
  %i.co = load ptr, ptr %i.ck, align 8
  %spec.select.i.i.i.i.i131 = select i1 %i.cn, ptr %i.ck, ptr %i.co
  %.0.i.i.i15.i.i132 = load i64, ptr %spec.select.i.i.i.i.i131, align 8, !tbaa !343 ; 3 uses
  %i.cp = and i64 %.0.i.i.i15.i.i132, 4294967168
  %spec.select.i.i136 = icmp eq i64 %i.cp, 0
  br i1 %spec.select.i.i136, label %bb.t, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread

bb.t:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i130
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.cq = and i16 %.032.in.in.in.i129, 640
  %or.cond.i137 = icmp eq i16 %i.cq, 128
  br i1 %or.cond.i137, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cr = and i64 %.0.i.i.i15.i.i132, 127
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !353
  store i64 %i.ct, ptr %10, align 8, !tbaa !353
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !354
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !356
  %i.cx = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val110, i64 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %.neg399 = mul i64 %.0.i.i.i15.i.i132, -4294967296
  %i.cy = ashr exact i64 %.neg399, 32
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !353
  store i64 %i.da, ptr %11, align 8, !tbaa !353
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !354
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !356
  %i.de = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val110, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.i138 = phi { ptr, i32 } [ %i.cx, %bb.u ], [ %i.de, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %.393.ph.in, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.df = select i1 %.397.ph.in, i32 1265, i32 1264
  br label %bb.ay

bb.y:                                             ; preds = %bb.w
  %i.dg = select i1 %.397.ph.in, i32 1273, i32 1272
  br label %bb.ay

_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit142.thread: ; preds = %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit.thread
  %.not.i.i143 = icmp eq i16 %.pre, 43
  %.not4.i144 = select i1 %.not.i.i143, i1 %i.ce, i1 false
  br i1 %.not4.i144, label %bb.z, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit142.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val109 = load ptr, ptr %i.dh, align 8         ; 2 uses
  %.032.in.in.in.in.i145 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.032.in.in.in.i146 = load i16, ptr %.032.in.in.in.in.i145, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !326
  switch i32 %i.dj, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i147
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i147
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i147: ; preds = %bb.z, %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !340 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !342
  %i.dp = icmp ult i32 %i.do, 65
  %i.dq = load ptr, ptr %i.dm, align 8
  %spec.select.i.i.i.i.i148 = select i1 %i.dp, ptr %i.dm, ptr %i.dq
  %.0.i.i.i15.i.i149 = load i64, ptr %spec.select.i.i.i.i.i148, align 8, !tbaa !343 ; 3 uses
  %i.dr = and i64 %.0.i.i.i15.i.i149, 4294967168
  %spec.select.i.i153 = icmp eq i64 %i.dr, 0
  br i1 %spec.select.i.i153, label %bb.aa, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread

bb.aa:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ds = and i16 %.032.in.in.in.i146, 640
  %or.cond.i154 = icmp eq i16 %i.ds, 128
  br i1 %or.cond.i154, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dt = and i64 %.0.i.i.i15.i.i149, 127
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !353
  store i64 %i.dv, ptr %8, align 8, !tbaa !353
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !354
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !356
  %i.dz = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val109, i64 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %.neg400 = mul i64 %.0.i.i.i15.i.i149, -4294967296
  %i.ea = ashr exact i64 %.neg400, 32
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !353
  store i64 %i.ec, ptr %9, align 8, !tbaa !353
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !354
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !356
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val109, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn.i155 = phi { ptr, i32 } [ %i.dz, %bb.ab ], [ %i.eg, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.393.ph.in, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = select i1 %.397.ph.in, i32 1269, i32 1268
  br label %bb.ay

bb.af:                                            ; preds = %bb.ad
  %i.ei = select i1 %.397.ph.in, i32 1277, i32 1276
  br label %bb.ay

_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread: ; preds = %bb.s, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i130, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i147, %bb.z, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit142.thread
  %i.ej = icmp ugt i8 %.sroa.0289.3.ph, 1
  br i1 %i.ej, label %bb.ag, label %bb.an

_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread.thread: ; preds = %bb.l, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i
  %.not416 = icmp eq i8 %.sroa.0289.3.ph, 1
  br i1 %.not416, label %.thread387, label %bb.ag

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread.thread, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread
  %i.ek = phi i1 [ true, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread.thread ], [ %i.ce, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread ] ; 4 uses
  br i1 %i.ba, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i160 = icmp eq i16 %.pre, 73
  %.not.i.i162 = icmp eq i16 %.pre, 136
  %i.el = or i1 %.not.i.i160, %.not.i.i162
  %or.cond = select i1 %i.el, i1 %i.ek, i1 false
  br i1 %or.cond, label %bb.ai, label %.thread387.thread

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val108 = load ptr, ptr %i.em, align 8         ; 2 uses
  %.032.in.in.in.in.i164 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.032.in.in.in.i165 = load i16, ptr %.032.in.in.in.in.i164, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !326
  switch i32 %i.eo, label %.thread387 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i166
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i166
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i166: ; preds = %bb.ai, %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 88
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !340 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.et = load i32, ptr %i.es, align 8, !tbaa !342
  %i.eu = icmp ult i32 %i.et, 65
  %i.ev = load ptr, ptr %i.er, align 8
  %spec.select.i.i.i.i.i167 = select i1 %i.eu, ptr %i.er, ptr %i.ev
  %.0.i.i.i15.i.i168 = load i64, ptr %spec.select.i.i.i.i.i167, align 8, !tbaa !343 ; 3 uses
  %i.ew = and i64 %.0.i.i.i15.i.i168, 4294966787
  %or.cond406 = icmp eq i64 %i.ew, 0
  br i1 %or.cond406, label %bb.aj, label %.thread387

bb.aj:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i166
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ex = and i16 %.032.in.in.in.i165, 640
  %or.cond.i173 = icmp eq i16 %i.ex, 128
  br i1 %or.cond.i173, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ey = and i64 %.0.i.i.i15.i.i168, 508
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !353
  store i64 %i.fa, ptr %6, align 8, !tbaa !353
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !354
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !356
  %i.fe = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val108, i64 noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %.neg401 = mul i64 %.0.i.i.i15.i.i168, -4294967296
  %i.ff = ashr exact i64 %.neg401, 32
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !353
  store i64 %i.fh, ptr %7, align 8, !tbaa !353
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !354
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !356
  %i.fl = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val108, i64 noundef %i.ff, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn.i174 = phi { ptr, i32 } [ %i.fe, %bb.ak ], [ %i.fl, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.fm = select i1 %.397.ph.in, i32 1304, i32 1303
  br label %bb.ay

bb.an:                                            ; preds = %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread
  br i1 %.not398, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit197.thread, label %.thread387

.thread387:                                       ; preds = %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i166, %bb.ai, %bb.an
  %i.fn = phi i1 [ %i.ek, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i166 ], [ %i.ek, %bb.ai ], [ %i.ce, %bb.an ], [ true, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit159.thread.thread ] ; 2 uses
  br i1 %i.ba, label %bb.ao, label %.thread387.thread

.thread387.thread:                                ; preds = %bb.ah, %.thread387
  %i.fo = phi i1 [ %i.ek, %bb.ah ], [ %i.fn, %.thread387 ] ; 3 uses
  %.not.i.i179 = icmp eq i16 %.pre, 62
  %.not.i.i181 = icmp eq i16 %.pre, 112
  %i.fp = or i1 %.not.i.i179, %.not.i.i181
  %or.cond396 = select i1 %i.fp, i1 %i.fo, i1 false
  br i1 %or.cond396, label %bb.ao, label %.thread392

bb.ao:                                            ; preds = %.thread387.thread, %.thread387
  %i.fq = phi i1 [ %i.fo, %.thread387.thread ], [ %i.fn, %.thread387 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val107 = load ptr, ptr %i.fr, align 8         ; 2 uses
  %.032.in.in.in.in.i183 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.032.in.in.in.i184 = load i16, ptr %.032.in.in.in.in.i183, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 24
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !326
  switch i32 %i.ft, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit197.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i185
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i185
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i185: ; preds = %bb.ao, %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 88
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !340 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !342
  %i.fz = icmp ult i32 %i.fy, 65
  %i.ga = load ptr, ptr %i.fw, align 8
  %spec.select.i.i.i.i.i186 = select i1 %i.fz, ptr %i.fw, ptr %i.ga
  %.0.i.i.i15.i.i187 = load i64, ptr %spec.select.i.i.i.i.i186, align 8, !tbaa !343 ; 3 uses
  %i.gb = and i64 %.0.i.i.i15.i.i187, 4294967041
  %or.cond407 = icmp eq i64 %i.gb, 0
  br i1 %or.cond407, label %bb.ap, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit197.thread

bb.ap:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i185
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.gc = and i16 %.032.in.in.in.i184, 640
  %or.cond.i192 = icmp eq i16 %i.gc, 128
  br i1 %or.cond.i192, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gd = and i64 %.0.i.i.i15.i.i187, 254
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !353
  store i64 %i.gf, ptr %4, align 8, !tbaa !353
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !354
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !356
  %i.gj = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val107, i64 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %.neg402 = mul i64 %.0.i.i.i15.i.i187, -4294967296
  %i.gk = ashr exact i64 %.neg402, 32
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !353
  store i64 %i.gm, ptr %5, align 8, !tbaa !353
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !354
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !356
  %i.gq = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val107, i64 noundef %i.gk, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn.i193 = phi { ptr, i32 } [ %i.gj, %bb.aq ], [ %i.gq, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.gr = select i1 %.397.ph.in, i32 1294, i32 1293
  br label %bb.ay

_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit197.thread: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i185, %bb.ao, %bb.an
  %i.gs = phi i1 [ %i.fq, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i185 ], [ %i.fq, %bb.ao ], [ %i.ce, %bb.an ]
  br i1 %i.ba, label %bb.at, label %.thread392

.thread392:                                       ; preds = %.thread387.thread, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit197.thread
  %i.gt = phi i1 [ %i.fo, %.thread387.thread ], [ %i.gs, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit197.thread ]
  %.not.i.i198 = icmp eq i16 %.pre, 48
  %.not4.i199 = select i1 %.not.i.i198, i1 %i.gt, i1 false
  br i1 %.not4.i199, label %bb.at, label %.thread

bb.at:                                            ; preds = %.thread392, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j.exit197.thread
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.gu, align 8            ; 2 uses
  %.032.in.in.in.in.i200 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.032.in.in.in.i201 = load i16, ptr %.032.in.in.in.in.i200, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 24
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !326
  switch i32 %i.gw, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i202
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i202
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i202: ; preds = %bb.at, %bb.at
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 88
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !340 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !342
  %i.hc = icmp ult i32 %i.hb, 65
  %i.hd = load ptr, ptr %i.gz, align 8
  %spec.select.i.i.i.i.i203 = select i1 %i.hc, ptr %i.gz, ptr %i.hd
  %.0.i.i.i15.i.i204 = load i64, ptr %spec.select.i.i.i.i.i203, align 8, !tbaa !343 ; 3 uses
  %i.he = and i64 %.0.i.i.i15.i.i204, 4294967168
  %spec.select.i.i208 = icmp eq i64 %i.he, 0
  br i1 %spec.select.i.i208, label %bb.au, label %.thread

bb.au:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i202
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.hf = and i16 %.032.in.in.in.i201, 640
  %or.cond.i209 = icmp eq i16 %i.hf, 128
  br i1 %or.cond.i209, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hg = and i64 %.0.i.i.i15.i.i204, 127
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !353
  store i64 %i.hi, ptr %2, align 8, !tbaa !353
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !354
  store i32 %i.hl, ptr %i.hj, align 8, !tbaa !356
  %i.hm = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef %i.hg, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %.neg403 = mul i64 %.0.i.i.i15.i.i204, -4294967296
  %i.hn = ashr exact i64 %.neg403, 32
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 72
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !353
  store i64 %i.hp, ptr %3, align 8, !tbaa !353
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0259.3.ph, i64 68
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !354
  store i32 %i.hs, ptr %i.hq, align 8, !tbaa !356
  %i.ht = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef %i.hn, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn.i210 = phi { ptr, i32 } [ %i.hm, %bb.av ], [ %i.ht, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.hu = select i1 %.397.ph.in, i32 1281, i32 1280
  br label %bb.ay

bb.ay:                                            ; preds = %bb.y, %bb.x, %bb.am, %bb.ax, %bb.as, %bb.ae, %bb.af, %bb.q, %bb.r
  %.pn.i.pn = phi { ptr, i32 } [ %.pn.i, %bb.q ], [ %.pn.i, %bb.r ], [ %.pn.i138, %bb.x ], [ %.pn.i138, %bb.y ], [ %.pn.i155, %bb.ae ], [ %.pn.i155, %bb.af ], [ %.pn.i174, %bb.am ], [ %.pn.i193, %bb.as ], [ %.pn.i210, %bb.ax ] ; 2 uses
  %.089 = phi i32 [ %i.cc, %bb.q ], [ %i.cd, %bb.r ], [ %i.df, %bb.x ], [ %i.dg, %bb.y ], [ %i.eh, %bb.ae ], [ %i.ei, %bb.af ], [ %i.fm, %bb.am ], [ %i.gr, %bb.as ], [ %i.hu, %bb.ax ]
  %.sroa.10.5 = extractvalue { ptr, i32 } %.pn.i.pn, 1
  %.sroa.0255.5 = extractvalue { ptr, i32 } %.pn.i.pn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store ptr %.sroa.0268.3.ph, ptr %15, align 16, !tbaa !329
  %.sroa.6.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sroa.6.3.ph, ptr %.sroa.6.0..sroa_idx273, align 8, !tbaa !330
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.sroa.0255.5, ptr %i.hv, align 16, !tbaa !329
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.sroa.10.5, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !330
  %i.hw = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !353
  store i64 %i.ia, ptr %16, align 8, !tbaa !353
  %i.ib = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !354
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !356
  %i.ie = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.hy, i64 noundef %.3101.ph, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.ie, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.ie, 1
  store ptr %.fca.0.extract7, ptr %i.hw, align 16
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i32 %.fca.1.extract8, ptr %.sroa.210.0..sroa_idx, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr %.sroa.0284.3.ph, ptr %i.if, align 16, !tbaa !329
  %.sroa.6286.0..sroa_idx287 = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i32 %.sroa.6286.3.ph, ptr %.sroa.6286.0..sroa_idx287, align 8, !tbaa !330
  %i.ig = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ih = load ptr, ptr %i.hx, align 8, !tbaa !314
  %i.ii = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ih, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ii, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ii, 1
  store ptr %.fca.0.extract, ptr %i.ig, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %15, i64 80
  store ptr %.sroa.0275.3.ph, ptr %i.ij, align 16, !tbaa !329
  %.sroa.6278.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %15, i64 88
  store i32 %.sroa.6278.3.ph, ptr %.sroa.6278.0..sroa_idx281, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.ik = load ptr, ptr %i.hx, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !353
  store i64 %i.il, ptr %17, align 8, !tbaa !353
  %i.im = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.in = load i32, ptr %i.ic, align 4, !tbaa !354
  store i32 %i.in, ptr %i.im, align 8, !tbaa !356
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !333 ; 2 uses
  %.sroa.0.0.copyload.i215 = load i16, ptr %i.ip, align 8, !tbaa !335
  %.sroa.21.0..sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %.sroa.21.0.copyload.i217 = load ptr, ptr %.sroa.21.0..sroa_idx.i216, align 8, !tbaa !337
  store i16 %.sroa.0.0.copyload.i215, ptr %18, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.sroa.21.0.copyload.i217, ptr %i.iq, align 8
  store i16 1, ptr %19, align 8, !tbaa !430
  %i.ir = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.ir, align 8, !tbaa !432
  store ptr %15, ptr %20, align 8, !tbaa !361
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 6, ptr %i.is, align 8, !tbaa !362
  %i.it = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ik, i32 noundef %.089, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %18, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %20) #24 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %.val112 = load ptr, ptr %i.hx, align 8, !tbaa !314
  %i.iu = getelementptr i8, ptr %1, i64 104
  %.val113 = load i64, ptr %i.iu, align 8
  %i.iv = and i64 %.val113, -5
  %i.iw = inttoptr i64 %i.iv to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.iw, ptr %i.a, align 8, !tbaa !364
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val112, ptr noundef %i.it, ptr nonnull %i.a, i64 1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ix = load ptr, ptr %i.hx, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ix, ptr nonnull %1, i32 0, ptr %i.it, i32 1) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.it) #24
  %i.iy = load ptr, ptr %i.hx, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.iy, ptr nonnull %1, i32 1, ptr %i.it, i32 0) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.it) #24
  %i.iz = load ptr, ptr %i.hx, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.iz, ptr nonnull %1, i32 2, ptr %i.it, i32 2) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.it) #24
  %i.ja = load ptr, ptr %i.hx, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ja, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i202, %bb.at, %.split320, %_ZNK4llvm3EVT8isVectorEv.exit123, %bb.e, %.split, %_ZNK4llvm3EVT8isVectorEv.exit, %bb.b, %bb.ay, %.thread392
  %.5 = phi i1 [ false, %.thread392 ], [ false, %.split ], [ true, %bb.ay ], [ false, %.split320 ], [ false, %bb.b ], [ false, %_ZNK4llvm3EVT8isVectorEv.exit ], [ false, %bb.e ], [ false, %_ZNK4llvm3EVT8isVectorEv.exit123 ], [ false, %bb.at ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i202 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel16tryT2IndexedLoadEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %5 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %10 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i16, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i16 %i.c, 7
  %i.e = and i16 %i.d, 7                          ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !335
  %i.h = and i16 %i.c, 3072
  %i.i = icmp eq i16 %i.h, 2048                   ; 2 uses
  %i.j = icmp samesign ult i16 %i.e, 3            ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !327
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.sroa.07.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !329 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %.val = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !326
  switch i32 %i.p, label %.critedge [
    i32 37, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i
    i32 12, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i
  ]

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i: ; preds = %bb.b, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !340  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !342
  %i.v = icmp ult i32 %i.u, 65
  %i.w = load ptr, ptr %i.s, align 8
  %spec.select.i.i.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.w
  %.0.i.i.i15.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !343 ; 3 uses
  %i.x = and i64 %.0.i.i.i15.i.i, 4294967040
  %spec.select.i.i = icmp eq i64 %i.x, 0
  br i1 %spec.select.i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.y = and i16 %i.c, 640
  %or.cond.i = icmp eq i16 %i.y, 128
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = and i64 %.0.i.i.i15.i.i, 255
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !353
  store i64 %i.ab, ptr %2, align 8, !tbaa !353
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !354
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !356
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.neg.i = mul i64 %.0.i.i.i15.i.i, -4294967296
  %i.ag = ashr exact i64 %.neg.i, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !353
  store i64 %i.ai, ptr %3, align 8, !tbaa !353
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !354
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !356
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.d ], [ %i.am, %bb.e ] ; 2 uses
  %.sroa.5.0.i = extractvalue { ptr, i32 } %.pn.i, 1
  %.sroa.011.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  switch i16 %.sroa.0.0.copyload.i, label %.critedge [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.k
    i16 2, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = select i1 %i.j, i32 4183, i32 4182
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = select i1 %i.j, i32 4176, i32 4175
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ap = select i1 %i.j, i32 4162, i32 4161
  br label %bb.n

bb.k:                                             ; preds = %bb.f, %bb.f
  br i1 %i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = select i1 %i.j, i32 4169, i32 4168
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ar = select i1 %i.j, i32 4148, i32 4147
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i, %bb.j, %bb.g
  %.135 = phi i32 [ %i.ar, %bb.m ], [ %i.an, %bb.g ], [ %i.ao, %bb.i ], [ %i.ap, %bb.j ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !327 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !357
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.011.0.i, ptr %i.au, align 16, !tbaa !329
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !330
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !353
  store i64 %i.ay, ptr %6, align 8, !tbaa !353
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !354
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !356
  %i.bc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aw, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bc, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bc, 1
  store ptr %.fca.0.extract2, ptr %i.av, align 16
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.fca.1.extract3, ptr %.sroa.25.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !314
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.be, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bf, 1
  store ptr %.fca.0.extract, ptr %i.bd, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !357
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bi = load i64, ptr %i.ax, align 8, !tbaa !353
  store i64 %i.bi, ptr %7, align 8, !tbaa !353
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bk = load i32, ptr %i.ba, align 4, !tbaa !354
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !356
  store i16 7, ptr %8, align 8, !tbaa !430
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.bl, align 8, !tbaa !432
  store i16 1, ptr %9, align 8, !tbaa !430
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !432
  store ptr %5, ptr %10, align 8, !tbaa !361
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 5, ptr %i.bn, align 8, !tbaa !362
  %i.bo = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bh, i32 noundef %.135, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %8, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %10) #24 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.val38 = load ptr, ptr %i.n, align 8, !tbaa !314
  %i.bp = getelementptr i8, ptr %1, i64 104
  %.val39 = load i64, ptr %i.bp, align 8
  %i.bq = and i64 %.val39, -5
  %i.br = inttoptr i64 %i.bq to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.br, ptr %i.a, align 8, !tbaa !364
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val38, ptr noundef %i.bo, ptr nonnull %i.a, i64 1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.bs, ptr noundef nonnull %1, ptr noundef %i.bo) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.bo) #24
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.bt, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
end_hunk_1
begin_hunk_2_@_ZN4llvm6ARM_AM16decodeVMOVModImmEjRj:bb.a
  %i.e = zext nneg i32 %i.c to i64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %0, 3072
  %i.g = icmp eq i32 %i.f, 2048
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i32 %i.a, 2
  %i.i = and i32 %i.h, 8
  %i.j = shl nuw nsw i32 %i.c, %i.i
  %i.k = zext nneg i32 %i.j to i64
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = and i32 %0, 2048
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = shl nuw nsw i32 %i.a, 2
  %i.o = and i32 %i.n, 24
  %i.p = shl nuw i32 %i.c, %i.o
  %i.q = zext i32 %i.p to i64
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = and i32 %0, 3584
  %i.s = icmp eq i32 %i.r, 3072
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = shl nuw nsw i32 %i.a, 3
  %i.u = and i32 %i.t, 8                          ; 2 uses
  %i.v = add nuw nsw i32 %i.u, 8
  %i.w = shl nuw nsw i32 %i.c, %i.v
  %i.x = xor i32 %i.u, 8
  %i.y = lshr i32 65535, %i.x
  %i.z = or i32 %i.w, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i32 %i.b, 30
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = insertelement <8 x i32> poison, i32 %0, i64 0
  %i.ad = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ae = and <8 x i32> %i.ad, <i32 2, i32 1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.af = icmp eq <8 x i32> %i.ae, zeroinitializer
  %i.ag = select <8 x i1> %i.af, <8 x i64> zeroinitializer, <8 x i64> <i64 65280, i64 255, i64 16711680, i64 4278190080, i64 1095216660480, i64 280375465082880, i64 71776119061217280, i64 -72057594037927936>
  %i.ah = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.ag)
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.b
  %.sink = phi i32 [ 16, %bb.d ], [ 32, %bb.h ], [ 64, %bb.i ], [ 32, %bb.f ], [ 8, %bb.b ]
  %.2 = phi i64 [ %i.k, %bb.d ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.q, %bb.f ], [ %i.e, %bb.b ]
  store i32 %.sink, ptr %1, align 4, !tbaa !330
  ret i64 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #24
  br label %_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #24
  br label %_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit

_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm7APFloat15getExactInverseEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #8

declare noundef i32 @_ZNK4llvm7APFloat16convertToIntegerERNS_6APSIntENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(13), i8 noundef signext, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm5APInt8logBase2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !342  ; 3 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.neg.i.i = add nsw i32 %i.b, -64
  %i.d = load i64, ptr %0, align 8, !tbaa !343
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 false)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nsw i32 %.neg.i.i, %i.f
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #28
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = xor i32 %.0.i.i, -1
  %i.j = add i32 %i.b, %i.i
  ret i32 %i.j
}

declare void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24), float noundef) unnamed_addr #8

declare void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24)) unnamed_addr #10

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #8

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #8

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

declare void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm6ARM_AM13getT2SOImmValEj(i32 noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %_ZN4llvm6ARM_AM21getT2SOImmValSplatValEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %0, 255
  %i.c = icmp eq i32 %i.b, 0
  %i.d = lshr i32 %0, 8
  %i.e = select i1 %i.c, i32 %i.d, i32 %0         ; 4 uses
  %i.f = and i32 %i.e, 255                        ; 4 uses
  %i.g = mul nuw nsw i32 %i.f, 65537
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.e, %0
  %i.j = select i1 %i.i, i32 256, i32 512
  %i.k = or disjoint i32 %i.j, %i.f
  br label %_ZN4llvm6ARM_AM21getT2SOImmValSplatValEj.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = mul nuw i32 %i.f, 16843009
  %i.m = icmp eq i32 %i.e, %i.l
  %i.n = or disjoint i32 %i.f, 768
  br i1 %i.m, label %_ZN4llvm6ARM_AM21getT2SOImmValSplatValEj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 true) ; 3 uses
  %i.p = tail call i32 @llvm.fshr.i32(i32 -16777216, i32 -16777216, i32 %i.o)
  %i.q = and i32 %i.p, %0
  %i.r = icmp eq i32 %i.q, %0
  br i1 %i.r, label %bb.f, label %_ZN4llvm6ARM_AM21getT2SOImmValSplatValEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = sub nuw nsw i32 24, %i.o
  %i.t = tail call i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %i.s)
  %i.u = and i32 %i.t, 127
  %i.v = shl nuw nsw i32 %i.o, 7
  %i.w = add nuw nsw i32 %i.v, 1024
  %i.x = or disjoint i32 %i.u, %i.w
  br label %_ZN4llvm6ARM_AM21getT2SOImmValSplatValEj.exit.thread

_ZN4llvm6ARM_AM21getT2SOImmValSplatValEj.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.1 = phi i32 [ %i.n, %bb.d ], [ %0, %bb.a ], [ %i.k, %bb.c ], [ -1, %bb.e ], [ %i.x, %bb.f ]
  ret i32 %.1
}

declare noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel26SelectT2AddrModeImm7OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_j(ptr %.72.val, ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %.032.in.in.in.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.032.in.in.in = load i16, ptr %.032.in.in.in.in, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !326
  switch i32 %i.b, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !342
  %i.h = icmp ult i32 %i.g, 65
  %i.i = load ptr, ptr %i.e, align 8
  %spec.select.i.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.i
  %.0.i.i.i15.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !343 ; 3 uses
  %i.j = trunc i64 %.0.i.i.i15.i to i32           ; 2 uses
  %notmask = shl nsw i32 -1, %3
  %6 = xor i32 %notmask, -1
  %i.k = and i32 %i.j, %6
  %.not13.i = icmp eq i32 %i.k, 0
  %7 = ashr exact i32 %i.j, %3
  %spec.select.i = icmp ult i32 %7, 128
  %or.cond7 = select i1 %.not13.i, i1 %spec.select.i, i1 false
  br i1 %or.cond7, label %bb.b, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.l = and i16 %.032.in.in.in, 640
  %or.cond = icmp eq i16 %i.l, 128
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %8 = and i64 %.0.i.i.i15.i, 4294967295
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !353
  store i64 %i.n, ptr %4, align 8, !tbaa !353
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !354
  store i32 %i.q, ptr %i.o, align 8, !tbaa !356
  %i.r = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.72.val, i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.neg = mul i64 %.0.i.i.i15.i, -4294967296
  %9 = ashr exact i64 %.neg, 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !353
  store i64 %i.t, ptr %5, align 8, !tbaa !353
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !354
  store i32 %i.w, ptr %i.u, align 8, !tbaa !356
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.72.val, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %.sroa.5.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.011.0 = extractvalue { ptr, i32 } %.pn, 0
  store ptr %.sroa.011.0, ptr %2, align 8, !tbaa !329
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread: ; preds = %bb.a, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.e
  %.0.i6 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i ]
  ret i1 %.0.i6
}

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef byval(%"class.llvm::ArrayRef") align 8) local_unnamed_addr #8

declare i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #8

declare { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel24SelectAddrMode2OffsetRegEPN4llvm6SDNodeENS1_7SDValueERS4_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree noundef readonly captures(none) %1, ptr %2, i32 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %.in.in.in.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.in.in.in = load i16, ptr %.in.in.in.in, align 8
  %i.a = and i16 %.in.in.in, 640
  %.not = icmp eq i16 %i.a, 128
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !326
  switch i32 %i.c, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread [
    i32 37, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
    i32 12, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
  ]

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !340  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !342
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i.i.i15.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !343
  %i.k = and i64 %.0.i.i.i15.i, 4294963200
  %spec.select.i = icmp eq i64 %i.k, 0
  br i1 %spec.select.i, label %bb.h, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread: ; preds = %bb.a, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
  store ptr %2, ptr %4, align 8, !tbaa !329
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !330
  %i.l = load i32, ptr %i.b, align 8, !tbaa !326
  switch i32 %i.l, label %_ZN4llvm6ARM_AML18getShiftOpcForNodeEj.exit [
    i32 198, label %bb.e
    i32 200, label %bb.b
    i32 199, label %bb.c
    i32 202, label %bb.d
  ]

bb.b:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
  br label %bb.e

bb.c:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
  br label %bb.e

bb.d:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
  br label %bb.e

bb.e:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread, %bb.d, %bb.b, %bb.c
  %i.m = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ], [ true, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread ]
  %.0.i33.ph = phi i64 [ 8192, %bb.c ], [ 24576, %bb.b ], [ 32768, %bb.d ], [ 16384, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !327  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !332  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !326
  switch i32 %i.s, label %_ZN4llvm6ARM_AML18getShiftOpcForNodeEj.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !340  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !342
  %i.y = icmp ult i32 %i.x, 65
  %i.z = load ptr, ptr %i.v, align 8
  %spec.select.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.z
  %.0.i.i.i34 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !343 ; 2 uses
  %i.aa = trunc i64 %.0.i.i.i34 to i32            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !194
  %i.ac = getelementptr i8, ptr %.val, i64 480
  %.val.val = load i32, ptr %i.ac, align 8, !tbaa !350 ; 2 uses
  switch i32 %.val.val, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit.thread [
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
    i32 13, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
  ]

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.018.022.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !351 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i, null
  br i1 %.not23.i.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %.214.i.i.i = select i1 %i.ah, i32 %.01224.i.i.i, i32 0 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 32
  %.sroa.018.0.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !351 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.018.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i, %bb.f
  %.sroa.018.025.i.i.i = phi ptr [ %.sroa.018.0.i.i.i, %bb.f ], [ %.sroa.018.022.i.i.i, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i ] ; 2 uses
  %.01224.i.i.i = phi i32 [ %.214.i.i.i, %bb.f ], [ 1, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !352
  %i.ah = icmp ne i32 %i.ag, %3                   ; 2 uses
  %i.ai = icmp ne i32 %.01224.i.i.i, 0
  %cond.i.i.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %cond.i.i.i, label %bb.f, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

_ZNK4llvm7SDValue9hasOneUseEv.exit.i:             ; preds = %bb.f
  %i.aj = icmp eq i32 %.214.i.i.i, 0
  br i1 %i.aj, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit.thread, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i:      ; preds = %.lr.ph.i.i.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread.i
  br i1 %i.m, label %bb.g, label %_ZN4llvm6ARM_AML18getShiftOpcForNodeEj.exit

bb.g:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i
  %i.ak = icmp eq i32 %i.aa, 2
  br i1 %i.ak, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit.thread, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit

_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit: ; preds = %bb.g
  %i.al = icmp eq i32 %.val.val, 13
  %i.am = icmp eq i32 %i.aa, 1
  %i.an = and i1 %i.am, %i.al
  br i1 %i.an, label %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit.thread, label %_ZN4llvm6ARM_AML18getShiftOpcForNodeEj.exit

_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit.thread: ; preds = %bb.g, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !357
  br label %_ZN4llvm6ARM_AML18getShiftOpcForNodeEj.exit

_ZN4llvm6ARM_AML18getShiftOpcForNodeEj.exit:      ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, %bb.e, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit.thread, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit
  %.126 = phi i64 [ 0, %bb.e ], [ %.0.i.i.i34, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit.thread ], [ 0, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit ], [ 0, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i ]
  %.1 = phi i64 [ 0, %bb.e ], [ %.0.i33.ph, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit.thread ], [ 0, %_ZN12_GLOBAL__N_115ARMDAGToDAGISel21isShifterOpProfitableERKN4llvm7SDValueENS1_6ARM_AM8ShiftOpcEj.exit ], [ 0, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.aq = select i1 %.not, i64 0, i64 4096
  %i.ar = or i64 %.126, %i.aq
  %i.as = or i64 %i.ar, %.1
  %i.at = and i64 %i.as, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.av = load i64, ptr %i.au, align 8, !tbaa !353
  store i64 %i.av, ptr %6, align 8, !tbaa !353
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !354
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !356
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ap, i64 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.az, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !329
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit, %_ZN4llvm6ARM_AML18getShiftOpcForNodeEj.exit
  %.0 = phi i1 [ false, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit ], [ true, %_ZN4llvm6ARM_AML18getShiftOpcForNodeEj.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel21SelectAddrMode3OffsetEPN4llvm6SDNodeENS1_7SDValueERS4_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree noundef readonly captures(none) %1, ptr %2, i32 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %.in.in.in.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.in.in.in = load i16, ptr %.in.in.in.in, align 8
  %i.a = and i16 %.in.in.in, 640
  %.not = icmp eq i16 %i.a, 128                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !326
  switch i32 %i.c, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread [
    i32 37, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
    i32 12, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
  ]

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !340  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !342
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i.i.i15.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !343 ; 2 uses
  %i.k = and i64 %.0.i.i.i15.i, 4294967040
  %spec.select.i = icmp eq i64 %i.k, 0
  br i1 %spec.select.i, label %bb.b, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel20SelectT2AddrModeImm8EN4llvm7SDValueERS2_S3_:bb.a

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.c, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !340  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !342  ; 3 uses
  %i.q = icmp ult i32 %i.p, 65
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.r = load i64, ptr %i.n, align 8, !tbaa !343
  %i.s = icmp eq i32 %i.p, 0
  %i.t = sub nuw nsw i32 64, %i.p
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = shl i64 %i.r, %i.u
  %i.w = ashr exact i64 %i.v, %i.u
  %.0.i.i.i.i = select i1 %i.s, i64 0, i64 %i.w
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !343
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.d, %bb.e
  %.0.i.i.i37 = phi i64 [ %.0.i.i.i.i, %bb.d ], [ %i.y, %bb.e ]
  %i.z = trunc i64 %.0.i.i.i37 to i32             ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !326
  %i.ab = icmp eq i32 %i.aa, 60
  %i.ac = sub nsw i32 0, %i.z
  %spec.select = select i1 %i.ab, i32 %i.ac, i32 %i.z ; 2 uses
  %or.cond = icmp ult i32 %spec.select, -255
  br i1 %or.cond, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !357
  %i.ad = load ptr, ptr %3, align 8, !tbaa !332   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !326
  %i.ag = icmp eq i32 %i.af, 16
  br i1 %i.ag, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !434
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !314 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !427 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !428
  %i.ap = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ao) #24
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i16 %i.as(ptr noundef nonnull align 8 dereferenceable(518435) %i.am, ptr noundef nonnull align 8 dereferenceable(912) %i.ap, i32 noundef 0) #24
  %i.au = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, i32 noundef %i.ai, i16 %i.at, ptr null, i1 noundef zeroext true) #24 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.au, 1
  store ptr %.fca.0.extract6, ptr %3, align 8, !tbaa !329
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !330
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !314
  %i.ax = sext i32 %spec.select to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !353
  store i64 %i.az, ptr %5, align 8, !tbaa !353
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !354
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !356
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aw, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bd, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !329
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread: ; preds = %bb.c, %.critedge, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ true, %.critedge ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel17IsAddressingMode5EN4llvm7SDValueERS2_S3_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, i1 noundef zeroext %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %1, i32 %2) #24
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %3, align 8, !tbaa !329
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %2, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !330
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !326
  switch i32 %i.e, label %bb.f [
    i32 16, label %bb.c
    i32 704, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !434
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !314  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !427  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.l) #24
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i16 %i.p(ptr noundef nonnull align 8 dereferenceable(518435) %i.j, ptr noundef nonnull align 8 dereferenceable(912) %i.m, i32 noundef 0) #24
  %i.r = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef %i.g, i16 %i.q, ptr null, i1 noundef zeroext true) #24 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.r, 1
  store ptr %.fca.0.extract58, ptr %3, align 8, !tbaa !329
  store i32 %.fca.1.extract59, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !330
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !327  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !332
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !326
  switch i32 %i.w, label %bb.e [
    i32 39, label %bb.f
    i32 44, label %bb.f
    i32 40, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i64 12, i1 false), !tbaa.struct !357
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.b, %bb.e, %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !353
  store i64 %i.z, ptr %6, align 8, !tbaa !353
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !354
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !356
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.x, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %.fca.0.extract48, ptr %4, align 8, !tbaa !329
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract49, ptr %.sroa.456.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.ae = select i1 %5, i32 2, i32 4              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !327 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.044.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !329 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.044.0.copyload, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !326
  switch i32 %i.aj, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.g, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.044.0.copyload, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !340 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !342
  %i.ap = icmp ult i32 %i.ao, 65
  %i.aq = load ptr, ptr %i.am, align 8
  %spec.select.i.i.i.i = select i1 %i.ap, ptr %i.am, ptr %i.aq
  %.0.i.i.i15.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !343
  %i.ar = trunc i64 %.0.i.i.i15.i to i32          ; 2 uses
  %i.as = add nsw i32 %i.ae, -1
  %i.at = and i32 %i.as, %i.ar
  %.not13.i = icmp eq i32 %i.at, 0
  br i1 %.not13.i, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.au = sdiv exact i32 %i.ar, %i.ae             ; 3 uses
  %i.av = add nsw i32 %i.au, 255
  %spec.select.i = icmp ult i32 %i.av, 511
  br i1 %spec.select.i, label %bb.h, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

bb.h:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i64 12, i1 false), !tbaa.struct !357
  %i.aw = load ptr, ptr %3, align 8, !tbaa !332   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !326
  %i.az = icmp eq i32 %i.ay, 16
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !434
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !314 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !427 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !428
  %i.bh = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.bg) #24
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i16 %i.bk(ptr noundef nonnull align 8 dereferenceable(518435) %i.be, ptr noundef nonnull align 8 dereferenceable(912) %i.bh, i32 noundef 0) #24
  %i.bm = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bc, i32 noundef %i.bb, i16 %i.bl, ptr null, i1 noundef zeroext true) #24 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.bm, 0
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.bm, 1
  store ptr %.fca.0.extract35, ptr %3, align 8, !tbaa !329
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract36, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !330
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !314 ; 2 uses
  %i.bo = lshr i32 %i.au, 23
  %i.bp = and i32 %i.bo, 256
  %i.bq = or disjoint i32 %i.bp, %spec.select
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !353
  store i64 %i.bu, ptr %7, align 8, !tbaa !353
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !354
  store i32 %i.bw, ptr %i.bv, align 8, !tbaa !356
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bn, i64 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.bx, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.bx, 1
  store ptr %.fca.0.extract24, ptr %4, align 8, !tbaa !329
  store i32 %.fca.1.extract25, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !353
  store i64 %i.by, ptr %8, align 8, !tbaa !353
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ca = load i32, ptr %i.bt, align 4, !tbaa !354
  store i32 %i.ca, ptr %i.bz, align 8, !tbaa !356
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bn, i64 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.cb, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.cb, 1
  store ptr %.fca.0.extract14, ptr %4, align 8, !tbaa !329
  store i32 %.fca.1.extract15, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.o

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread: ; preds = %bb.g, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
  store ptr %1, ptr %3, align 8, !tbaa !329
  %.sroa.17.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.17.0..sroa_idx113, align 8, !tbaa !330
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !314 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !353
  store i64 %i.cf, ptr %9, align 8, !tbaa !353
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !354
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !356
  %i.ci = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cc, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.ci, 1
  store ptr %.fca.0.extract4, ptr %4, align 8, !tbaa !329
  store i32 %.fca.1.extract5, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.o

bb.n:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cj = load i64, ptr %i.cd, align 8, !tbaa !353
  store i64 %i.cj, ptr %10, align 8, !tbaa !353
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cl = load i32, ptr %i.ce, align 4, !tbaa !354
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !356
  %i.cm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cc, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cm, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cm, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !329
  store i32 %.fca.1.extract, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.n, %bb.m, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel24SelectThumbAddrModeImm5SEN4llvm7SDValueEjRS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, i32 noundef range(i32 1, 5) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !326
  %.not.i = icmp eq i32 %i.b, 59
  br i1 %.not.i, label %bb.b, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !327
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !332  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !326
  switch i32 %i.h, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !340  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !342  ; 3 uses
  %i.n = icmp ult i32 %i.m, 65
  br i1 %i.n, label %bb.d, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.k, align 8, !tbaa !343
  %i.p = icmp ne i32 %i.m, 0
  %i.q = sub nuw nsw i32 64, %i.m
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = shl i64 %i.o, %i.r                       ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  %or.cond.i = select i1 %i.p, i1 %i.t, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i: ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !343
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = ashr exact i64 %i.s, %i.r
  br label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit

_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i, %bb.e
  %.0.i.i.i8.i = phi i64 [ %i.x, %bb.e ], [ %i.v, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i ]
  %i.y = icmp samesign ugt i64 %.0.i.i.i8.i, -256
  br i1 %i.y, label %bb.f, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread

bb.f:                                             ; preds = %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit
  store ptr %1, ptr %4, align 8, !tbaa !329
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !330
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !353
  store i64 %i.ac, ptr %6, align 8, !tbaa !353
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !354
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !356
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aa, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.ag, 1
  store ptr %.fca.0.extract20, ptr %5, align 8, !tbaa !329
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract21, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread: ; preds = %bb.b, %bb.d, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i, %bb.a, %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !314
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ai, ptr nonnull %1, i32 %2) #24
  br i1 %i.aj, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !326
  switch i32 %i.ak, label %bb.j [
    i32 59, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
    i32 704, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !327 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !332
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !326
  switch i32 %i.ap, label %bb.i [
    i32 39, label %bb.j
    i32 44, label %bb.j
    i32 43, label %bb.j
    i32 40, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false), !tbaa.struct !357
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.g
  store ptr %1, ptr %4, align 8, !tbaa !329
  %.sroa.16.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.16.0..sroa_idx58, align 8, !tbaa !330
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !353
  store i64 %i.as, ptr %7, align 8, !tbaa !353
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.av = load i32, ptr %i.au, align 4, !tbaa !354
  store i32 %i.av, ptr %i.at, align 8, !tbaa !356
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aq, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.aw, 1
  store ptr %.fca.0.extract7, ptr %5, align 8, !tbaa !329
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

bb.l:                                             ; preds = %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !327 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !329 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !326
  switch i32 %i.bb, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.l, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !340 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !342
  %i.bh = icmp ult i32 %i.bg, 65
  %i.bi = load ptr, ptr %i.be, align 8
  %spec.select.i.i.i.i = select i1 %i.bh, ptr %i.be, ptr %i.bi
  %.0.i.i.i15.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !343
  %i.bj = trunc i64 %.0.i.i.i15.i to i32          ; 2 uses
  %i.bk = srem i32 %i.bj, %3
  %i.bl = sdiv exact i32 %i.bj, %3                ; 2 uses
  %.not13.i = icmp eq i32 %i.bk, 0
  %spec.select.i = icmp ult i32 %i.bl, 32
  %or.cond = select i1 %.not13.i, i1 %spec.select.i, i1 false
  br i1 %or.cond, label %bb.m, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

bb.m:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.ay, i64 12, i1 false), !tbaa.struct !357
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !314
  %i.bn = zext nneg i32 %i.bl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !353
  store i64 %i.bp, ptr %8, align 8, !tbaa !353
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !354
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !356
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bm, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bt, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bt, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !329
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread: ; preds = %bb.g, %bb.l, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.m, %bb.k, %bb.f
  %.1 = phi i1 [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.l ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG19haveNoCommonBitsSetENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #10

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !552, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !552, !range !15, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !15
  %i.j = load i8, ptr %i.d, align 8, !range !15
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #8

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #8

declare void @__once_proxy() #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !909, !nonnull !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !910, !nonnull !16, !align !143
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !913
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #24, !inline_history !907
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_ARMISelDAGToDAG.cpp() #20 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16DisableShifterOp, i32 noundef 0, i32 noundef 0) #24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 120), align 8, !tbaa !349
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 128), align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL16DisableShifterOp, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 144), align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16DisableShifterOp, ptr nonnull align 1 dereferenceable(19) @.str, i64 18) #24
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 32), align 8, !tbaa !22
  store i64 26, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 40), align 8, !tbaa !24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 120), align 8, !tbaa !349
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 137), align 1, !tbaa !552
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16DisableShifterOp, i64 136), align 8, !tbaa !914
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16DisableShifterOp) #24
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL16DisableShifterOp, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !483}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !12, i64 0, !6, i64 8, !6, i64 12, !13, i64 16}
!15 = !{i8 0, i8 2}
end_hunk_3
