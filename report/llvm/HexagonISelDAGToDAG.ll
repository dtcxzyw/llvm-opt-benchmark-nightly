Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAG?download=true
inline.NumInlined: 3701
inline.NumDeleted: 1214
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm19HexagonDAGToDAGISel9SelectSHLEPNS_6SDNodeE:bb.a
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = shl i64 %i.u, %i.x
  %i.z = ashr exact i64 %i.y, %i.x
  %.0.i.i.i.i = select i1 %i.v, i64 0, i64 %i.z
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !345
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !346
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ac = trunc i64 %.0.i.i.i to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.copyload, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !360
  switch i32 %i.ae, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73.thread [
    i32 61, label %bb.f
    i32 60, label %bb.j
  ]

bb.f:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.copyload, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !358 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.093.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !359 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !360
  switch i32 %i.aj, label %.critedge54 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.f, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !340 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !343 ; 3 uses
  %i.ap = icmp ult i32 %i.ao, 65
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !345
  %i.ar = icmp eq i32 %i.ao, 0
  %i.as = sub nuw nsw i32 64, %i.ao
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = shl i64 %i.aq, %i.at
  %i.av = ashr exact i64 %i.au, %i.at
  %.0.i.i.i.i70 = select i1 %i.ar, i64 0, i64 %i.av
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit71

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !345
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !346
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit71

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit71: ; preds = %bb.g, %bb.h
  %.0.i.i.i69 = phi i64 [ %.0.i.i.i.i70, %bb.g ], [ %i.ax, %bb.h ]
  %i.ay = trunc i64 %.0.i.i.i69 to i32
  %i.az = shl i32 %i.ay, %i.ac
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = add nsw i64 %i.ba, 256
  %i.bc = icmp ult i64 %i.bb, 512
  br i1 %i.bc, label %bb.i, label %.critedge54

bb.i:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit71
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !373
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.be, i64 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.bf, 1
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !373
  store ptr %.fca.0.extract15, ptr %4, align 8, !tbaa !359
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !361
  %i.bh = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bg, i32 noundef 439, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #20 ; 2 uses
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !373
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.bi, ptr noundef nonnull %1, ptr noundef %i.bh) #20
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.bh) #20
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !373
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, ptr noundef nonnull %1) #20
  br label %.critedge60

.critedge54:                                      ; preds = %bb.f, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit71
  tail call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 136152, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #20
  br label %.critedge60

bb.j:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.copyload, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !358 ; 2 uses
  %.sroa.087.0.copyload = load ptr, ptr %i.bl, align 8, !tbaa !359 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %.sroa.084.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !359 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !360
  switch i32 %i.bo, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73: ; preds = %bb.j, %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !340 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !343 ; 3 uses
  %i.bu = icmp ult i32 %i.bt, 65
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !345
  %i.bw = icmp eq i32 %i.bt, 0
  %i.bx = sub nuw nsw i32 64, %i.bt
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = shl i64 %i.bv, %i.by
  %i.ca = ashr exact i64 %i.bz, %i.by
  br i1 %i.bw, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76

bb.l:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73
  %i.cb = load ptr, ptr %i.br, align 8, !tbaa !345
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !346
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76: ; preds = %bb.k, %bb.l
  %.0.i.i.i74 = phi i64 [ %i.ca, %bb.k ], [ %i.cc, %bb.l ]
  %.not47 = icmp eq i64 %.0.i.i.i74, 0
  br i1 %.not47, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76.thread, label %bb.m

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76.thread: ; preds = %bb.k, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.084.0.copyload, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !360
  %.not48 = icmp eq i32 %i.ce, 198
  br i1 %.not48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76.thread, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76
  tail call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 136152, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #20
  br label %.critedge60

bb.n:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit76.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.084.0.copyload, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !358 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %.sroa.083.0.copyload = load ptr, ptr %i.ch, align 8, !tbaa !359 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !360
  switch i32 %i.cj, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit78
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit78
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit78: ; preds = %bb.n, %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !340 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !343 ; 3 uses
  %i.cp = icmp ult i32 %i.co, 65
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit78
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !345
  %i.cr = icmp eq i32 %i.co, 0
  %i.cs = sub nuw nsw i32 64, %i.co
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = shl i64 %i.cq, %i.ct
  %i.cv = ashr exact i64 %i.cu, %i.ct
  %.0.i.i.i.i80 = select i1 %i.cr, i64 0, i64 %i.cv
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit81

bb.p:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit78
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !345
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !346
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit81

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit81: ; preds = %bb.o, %bb.p
  %.0.i.i.i79 = phi i64 [ %.0.i.i.i.i80, %bb.o ], [ %i.cx, %bb.p ]
  %i.cy = add i64 %.0.i.i.i79, %.0.i.i.i
  %i.cz = trunc i64 %i.cy to i32
  %.neg = shl nsw i32 -1, %i.cz                   ; 2 uses
  %i.da = icmp samesign ugt i32 %.neg, -257
  br i1 %i.da, label %bb.q, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73.thread

bb.q:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit81
  %i.db = sext i32 %.neg to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !373
  %i.de = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dd, i64 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.de, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.de, 1
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !373
  store ptr %.fca.0.extract, ptr %6, align 8, !tbaa !359
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !361
  %i.dg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.df, i32 noundef 439, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #20
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.dg)
  br label %.critedge60

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73.thread: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit81, %bb.n, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.j
  tail call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 136152, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #20
  br label %.critedge60

.critedge60:                                      ; preds = %.critedge54, %bb.i, %bb.m, %bb.q, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit73.thread, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373
  tail call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef %1, ptr noundef %2) #20
  tail call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %2) #20
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !373
  tail call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19HexagonDAGToDAGISel21SelectIntrinsicWChainEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4llvm19HexagonDAGToDAGISel25LoadInstrForLoadIntrinsicEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %1) ; 2 uses
  %.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN4llvm19HexagonDAGToDAGISel26StoreInstrForLoadIntrinsicEPNS_13MachineSDNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %i.a, ptr noundef %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !373
  tail call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.d, ptr noundef %1) #20
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4llvm19HexagonDAGToDAGISel21SelectBrevLdIntrinsicEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %1)
  br i1 %i.e, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_ZN4llvm19HexagonDAGToDAGISel22SelectNewCircIntrinsicEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %1)
  br i1 %i.f, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !363
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !340  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !343
  %i.p = icmp ult i32 %i.o, 65
  %i.q = load ptr, ptr %i.m, align 8
  %spec.select.i.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.q
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !345
  %i.r = trunc i64 %.0.i.i.i.i to i32             ; 3 uses
  %i.s = and i32 %i.r, -10                        ; 2 uses
  %or.cond5 = icmp eq i32 %i.s, 5840
  br i1 %or.cond5, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %bb.e
  switch i32 %i.r, label %bb.g [
    i32 5845, label %bb.f
    i32 5844, label %bb.f
    i32 5839, label %bb.f
    i32 5838, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.e
  tail call void @_ZN4llvm19HexagonDAGToDAGISel15SelectV65GatherEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1) #20
  br label %bb.j

bb.g:                                             ; preds = %switch.early.test
  %or.cond19 = icmp eq i32 %i.s, 5842
  %i.t = and i32 %i.r, -2
  %i.u = icmp eq i32 %i.t, 5846
  %or.cond23 = or i1 %or.cond19, %i.u
  br i1 %or.cond23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm19HexagonDAGToDAGISel19SelectV65GatherPredEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 136152, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.f, %bb.h, %bb.i, %bb.d, %bb.c
  ret void
}

declare void @_ZN4llvm19HexagonDAGToDAGISel15SelectV65GatherEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm19HexagonDAGToDAGISel19SelectV65GatherPredEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19HexagonDAGToDAGISel22SelectIntrinsicWOChainEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !358
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !363
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !340  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !343
  %i.j = icmp ult i32 %i.i, 65
  %i.k = load ptr, ptr %i.g, align 8
  %spec.select.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.k
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !345
  %i.l = trunc i64 %.0.i.i.i to i32               ; 3 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !361
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.p = load i32, ptr %i.o, align 8, !tbaa !90
  %i.q = icmp sgt i32 %i.p, 13
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN4llvm19HexagonDAGToDAGISel18isIEEEHVXIntrinsicEj(ptr noundef nonnull align 8 dereferenceable(1216) %0, i32 noundef %i.l) #20
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm19HexagonDAGToDAGISel30translateIEEEIntrinsicToQFloatEPNS_6SDNodeERj(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #20
  br label %bb.l

bb.d:                                             ; preds = %bb.b, %bb.a
  switch i32 %i.l, label %bb.g [
    i32 5230, label %bb.h
    i32 5231, label %bb.e
    i32 5478, label %bb.f
    i32 5479, label %bb.f
    i32 6376, label %bb.f
    i32 6377, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  tail call void @_ZN4llvm19HexagonDAGToDAGISel19SelectHVXDualOutputEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1) #20
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  tail call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 136152, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #20
  br label %bb.l

bb.h:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ 16, %bb.e ], [ 8, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !358
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !379
  store ptr null, ptr %3, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.u, align 8
  %i.v = call noundef zeroext i1 @_ZN4llvm19HexagonDAGToDAGISel12keepsLowBitsERKNS_7SDValueEjRS1_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(12) %3)
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !373
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !375
  store i64 %i.ab, ptr %4, align 8, !tbaa !375
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !376
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !377
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !362 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ag, align 8, !tbaa !315
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !317
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !358
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.x, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ah, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #20
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ai, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !373
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.aj, ptr noundef nonnull %1, ptr noundef %.fca.0.extract) #20
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract) #20
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !373
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, ptr noundef nonnull %1) #20
  call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %.fca.0.extract, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 136152, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12MatcherTable, i32 noundef 136152, ptr noundef nonnull @_ZZN4llvm19HexagonDAGToDAGISel10SelectCodeEPNS_6SDNodeEE12OperandLists) #20
  br label %bb.k

end_hunk_0
begin_hunk_1_@_ZN4llvm19HexagonDAGToDAGISel19ppSimplifyOrSelect0EOSt6vectorIPNS_6SDNodeESaIS3_EE:bb.a
  %i.at = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.044.0.copyload, i32 %.sroa.546.0.copyload) #20
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %.sroa.037.0.copyload, ptr %9, align 8, !tbaa !359
  store <2 x i32> %i.al, ptr %.sroa.539.0..sroa_idx40, align 8
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #20 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.au, 1
  store ptr %.fca.0.extract4, ptr %10, align 8, !tbaa !359
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !361
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 219, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  %.sink = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.as, %bb.g ]
  %.fca.0.extract = extractvalue { ptr, i32 } %.sink, 0
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull %i.g, ptr noundef %.fca.0.extract) #20
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.e, %bb.j, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %"_ZZN4llvm19HexagonDAGToDAGISel19ppSimplifyOrSelect0EOSt6vectorIPNS_6SDNodeESaIS3_EEENK3$_0clERKNS_7SDValueE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.087.0121, i64 8 ; 2 uses
  %.not119 = icmp eq ptr %i.aw, %i.e
  br i1 %.not119, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

declare void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19HexagonDAGToDAGISel19ppAddrReorderAddShlEOSt6vectorIPNS_6SDNodeESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !544    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !544  ; 2 uses
  %.not7879 = icmp eq ptr %i.c, %i.e
  br i1 %.not7879, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.557.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread
  %.sroa.073.080 = phi ptr [ %i.c, %.lr.ph ], [ %i.bp, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.073.080, align 8, !tbaa !359 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !360
  %.not = icmp eq i32 %i.i, 317
  br i1 %.not, label %bb.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !358
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.069.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !359 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !360
  %.not47 = icmp eq i32 %i.n, 59
  br i1 %.not47, label %bb.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !358  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.064.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !359 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !361
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.064.0.copyload, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !360
  %.not48 = icmp eq i32 %i.s, 59
  br i1 %.not48, label %bb.e, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.064.0.copyload, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !358  ; 2 uses
  %.sroa.061.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !359 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.059.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !359 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.061.0.copyload, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !360
  %.not49 = icmp eq i32 %i.x, 198
  br i1 %.not49, label %bb.f, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.061.0.copyload, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !358  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.055.0.copyload = load ptr, ptr %i.aa, align 8, !tbaa !359 ; 3 uses
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load i64, ptr %.sroa.557.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.055.0.copyload, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !360
  switch i32 %i.ad, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.f, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.055.0.copyload, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !340 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !343
  %i.aj = icmp ult i32 %i.ai, 65
  %i.ak = load ptr, ptr %i.ag, align 8
  %spec.select.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ak
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !345
  %i.al = trunc i64 %.0.i.i.i to i32              ; 3 uses
  %i.am = icmp ugt i32 %i.al, 2
  br i1 %i.am, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !360
  switch i32 %i.ao, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit52
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit52
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit52: ; preds = %bb.g, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !340 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !343
  %i.au = icmp ult i32 %i.at, 65
  %i.av = load ptr, ptr %i.ar, align 8
  %spec.select.i.i.i53 = select i1 %i.au, ptr %i.ar, ptr %i.av
  %.0.i.i.i54 = load i64, ptr %spec.select.i.i.i53, align 8, !tbaa !345
  %i.aw = trunc i64 %.0.i.i.i54 to i32            ; 2 uses
  %notmask = shl nsw i32 -1, %i.al
  %i.ax = xor i32 %notmask, -1
  %i.ay = and i32 %i.aw, %i.ax
  %.not50 = icmp eq i32 %i.ay, 0
  br i1 %.not50, label %bb.h, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit52
  %i.az = lshr i32 %i.aw, %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !375
  store i64 %i.bb, ptr %2, align 8, !tbaa !375
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !376
  store i32 %i.bd, ptr %i.f, align 8, !tbaa !377
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.064.0.copyload, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !362
  %i.bg = zext i32 %.sroa.8.0.copyload to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bh, align 8, !tbaa !315 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !317 ; 3 uses
  %i.bi = zext i32 %i.az to i64
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.bj, 1
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !358
  store ptr %.fca.0.extract12, ptr %3, align 8, !tbaa !359
  store i32 %.fca.1.extract13, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !361
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bk, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #20 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract4, ptr %4, align 8, !tbaa !359
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !361
  store ptr %.sroa.055.0.copyload, ptr %5, align 8, !tbaa !359
  store i64 %i.ab, ptr %.sroa.557.0..sroa_idx58, align 8
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #20
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bm, 0 ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !373
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.bn, ptr noundef nonnull %.sroa.064.0.copyload, ptr noundef %.fca.0.extract) #20
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract) #20
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !373
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.bo, ptr noundef nonnull %.sroa.064.0.copyload) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread: ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit, %bb.h, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit52, %bb.d, %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.073.080, i64 8 ; 2 uses
  %.not78 = icmp eq ptr %i.bp, %i.e
  br i1 %.not78, label %._crit_edge, label %bb.b
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19HexagonDAGToDAGISel19ppAddrRewriteAndSrlEOSt6vectorIPNS_6SDNodeESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !544    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !544  ; 2 uses
  %.not104105 = icmp eq ptr %i.c, %i.e
  br i1 %.not104105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread
  %.sroa.099.0106 = phi ptr [ %i.c, %.lr.ph ], [ %i.bz, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.099.0106, align 8, !tbaa !359 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !360  ; 2 uses
  %i.j = add i32 %i.i, -318
  %or.cond = icmp ult i32 %i.j, -2
  br i1 %or.cond, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.i, 316
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !358
  %. = select i1 %i.k, i64 40, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %. ; 2 uses
  %.sroa.094.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !359 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !361
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.094.0.copyload, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !360
  %.not = icmp eq i32 %i.p, 59
  br i1 %.not, label %bb.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.094.0.copyload, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !358
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.089.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !359 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.089.0.copyload, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !360
  %.not75 = icmp eq i32 %i.u, 193
  br i1 %.not75, label %bb.e, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.089.0.copyload, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !358  ; 2 uses
  %.sroa.086.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !359 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !360
  %.not76 = icmp eq i32 %i.y, 200
  br i1 %.not76, label %bb.f, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !358 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !363 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !360
  switch i32 %i.ae, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.f, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !340 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !343
  %.not77 = icmp eq i32 %i.ai, 32
  br i1 %.not77, label %bb.g, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !363 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !360
  switch i32 %i.aq, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit83
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit83
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit83: ; preds = %bb.g, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !340 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !343
  %.not78 = icmp eq i32 %i.au, 32
  br i1 %.not78, label %bb.h, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit83
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  %i.az = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 false) ; 5 uses
  %i.ba = lshr exact i32 %i.ay, %i.az
  %i.bb = xor i32 %i.ba, -1
  %i.bc = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 false)
  %i.bd = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ay, i1 false) ; 2 uses
  %i.be = add nuw nsw i32 %i.bd, %i.az
  %i.bf = add nuw nsw i32 %i.be, %i.bc
  %.not79 = icmp ne i32 %i.bf, 32
  %i.bg = icmp samesign ugt i32 %i.az, 2
  %or.cond80 = or i1 %i.bg, %.not79
  %i.bh = icmp ugt i32 %i.bd, %i.am
  %or.cond81 = or i1 %i.bh, %or.cond80
  br i1 %or.cond81, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.094.0.copyload, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !362
  %i.bk = zext i32 %.sroa.6.0.copyload to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bl, align 8, !tbaa !315 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !317 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !375
  store i64 %i.bn, ptr %2, align 8, !tbaa !375
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 68
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !376
  store i32 %i.bp, ptr %i.f, align 8, !tbaa !377
  %i.bq = add i32 %i.az, %i.am
  %i.br = zext i32 %i.bq to i64
  %i.bs = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.bs, 0
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.bs, 1
  %i.bt = zext nneg i32 %i.az to i64
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.bu, 1
  store ptr %.fca.0.extract23, ptr %4, align 8, !tbaa !359
  store i32 %.fca.1.extract24, ptr %.sroa.431.0..sroa_idx, align 8, !tbaa !361
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #20 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.bv, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.bv, 1
  store ptr %.fca.0.extract5, ptr %5, align 8, !tbaa !359
  store i32 %.fca.1.extract6, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !361
  store ptr %.fca.0.extract13, ptr %6, align 8, !tbaa !359
  store i32 %.fca.1.extract14, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !361
  %i.bw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #20
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bw, 0 ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !373
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.bx, ptr noundef nonnull %.sroa.089.0.copyload, ptr noundef %.fca.0.extract) #20
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract) #20
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !373
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.by, ptr noundef nonnull %.sroa.089.0.copyload) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread: ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit83, %bb.h, %bb.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit, %bb.d, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.099.0106, i64 8 ; 2 uses
  %.not104 = icmp eq ptr %i.bz, %i.e
  br i1 %.not104, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19HexagonDAGToDAGISel13ppHoistZextI1EOSt6vectorIPNS_6SDNodeESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 11 uses
  %3 = alloca %"class.llvm::SmallVector.406", align 8 ; 17 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 11 uses
  %5 = alloca %"class.llvm::ArrayRef.371", align 8 ; 3 uses
  %6 = alloca %"class.llvm::ArrayRef.371", align 8 ; 3 uses
  %7 = alloca %"class.llvm::ArrayRef.371", align 8 ; 3 uses
  %8 = alloca %"class.llvm::ArrayRef.371", align 8 ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 11 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !544    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !544  ; 2 uses
  %.not223236 = icmp eq ptr %i.c, %i.e
  br i1 %.not223236, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5211.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.6214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.b

._crit_edge240:                                   ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph239, %.critedge
  %.sroa.0218.0237 = phi ptr [ %i.c, %.lr.ph239 ], [ %i.ff, %.critedge ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.0218.0237, align 8, !tbaa !359 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !360
  %.not = icmp eq i32 %i.q, 228
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !358  ; 3 uses
  %.sroa.0209.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !359 ; 2 uses
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5211.0.copyload = load i32, ptr %.sroa.5211.0..sroa_idx, align 8, !tbaa !361 ; 2 uses
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.sroa.6214.0.copyload = load i32, ptr %.sroa.6214.0..sroa_idx, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0209.0.copyload, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !362
  %i.v = zext i32 %.sroa.5211.0.copyload to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.w, align 8, !tbaa !315
  %cond = icmp eq i16 %.sroa.0.0.copyload.i.i, 2
  br i1 %cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.0198.0230 = load ptr, ptr %i.x, align 8, !tbaa !494 ; 2 uses
  %.not224231 = icmp eq ptr %.sroa.0198.0230, null
  br i1 %.not224231, label %.critedge, label %.lr.ph235

.lr.ph235:                                        ; preds = %bb.d, %bb.v
  %.sroa.0198.0232 = phi ptr [ %.sroa.0198.0, %bb.v ], [ %.sroa.0198.0230, %bb.d ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0198.0232, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !493  ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !491
  %.not147 = icmp eq i16 %i.ab, 1
  br i1 %.not147, label %bb.e, label %bb.v

bb.e:                                             ; preds = %.lr.ph235
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !362 ; 2 uses
  %.sroa.0.0.copyload.i153 = load i16, ptr %i.ad, align 8, !tbaa !315 ; 8 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !317
  store i16 %.sroa.0.0.copyload.i153, ptr %2, align 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.f, align 8
  %.not225 = icmp eq i16 %.sroa.0.0.copyload.i153, 0
  br i1 %.not225, label %.critedge3, label %_ZNK4llvm3EVT9isIntegerEv.exit

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %bb.e
  %i.ae = add i16 %.sroa.0.0.copyload.i153, -12
  %or.cond.i.i = icmp ult i16 %i.ae, -10
  %i.af = add i16 %.sroa.0.0.copyload.i153, -105
  %or.cond3.i.i = icmp ult i16 %i.af, -86
  %or.cond4.i.i.not227 = and i1 %or.cond.i.i, %or.cond3.i.i
  %i.ag = add i16 %.sroa.0.0.copyload.i153, -195
  %spec.select.i.i = icmp ult i16 %i.ag, -32
  %.not226 = and i1 %spec.select.i.i, %or.cond4.i.i.not227
  %i.ah = icmp eq i16 %.sroa.0.0.copyload.i153, 2
  %or.cond = or i1 %i.ah, %.not226
  br i1 %or.cond, label %.critedge3, label %.split.i

.split.i:                                         ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit
  %i.ai = add nsw i16 %.sroa.0.0.copyload.i153, -19
  %spec.select.i.i.i = icmp ult i16 %i.ai, 197
  br i1 %spec.select.i.i.i, label %_ZNK4llvm3EVT10isVectorOfES0_.exit, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

_ZNK4llvm3EVT10isVectorOfES0_.exit:               ; preds = %.split.i
  %i.aj = zext nneg i16 %.sroa.0.0.copyload.i153 to i64
  %i.ak = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !315
  %.not.i.i.i = icmp eq i16 %i.am, 2
  br i1 %.not.i.i.i, label %.critedge3, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

_ZNK4llvm3EVT10isVectorOfES0_.exit.thread:        ; preds = %.split.i, %_ZNK4llvm3EVT10isVectorOfES0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !325 ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i155, label %bb.j, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.i

_ZNK4llvm6SDNode9hasOneUseEv.exit.i:              ; preds = %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !335
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !360
  switch i32 %i.at, label %bb.j [
    i32 59, label %bb.g
    i32 60, label %bb.g
    i32 193, label %bb.g
    i32 194, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !358 ; 2 uses
  %.sroa.026.0.copyload.i = load ptr, ptr %i.av, align 8, !tbaa !359 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.0.0.copyload24.i = load ptr, ptr %i.aw, align 8, !tbaa !359
  %i.ax = icmp eq ptr %.sroa.026.0.copyload.i, %i.o
  %.sroa.020.0.copyload.i = select i1 %i.ax, ptr %.sroa.0.0.copyload24.i, ptr %.sroa.026.0.copyload.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !493 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 66
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !491
  %.not.i156 = icmp eq i16 %i.bb, 1
  br i1 %.not.i156, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !360
  %i.be = icmp eq i32 %i.bd, 317
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload.i, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !360
  %i.bh = icmp eq i32 %i.bg, 316
  br i1 %i.bh, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit15.i, label %bb.j

_ZNK4llvm9MemSDNode10getBasePtrEv.exit15.i:       ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload.i, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !358 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %.sroa.016.0.copyload.i = load ptr, ptr %i.bk, align 8, !tbaa !359
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %.sroa.417.0.copyload.i = load i32, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !361
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !358 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %.sroa.0.0.copyload.i157 = load ptr, ptr %i.bn, align 8, !tbaa !359
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !361
  %i.bo = icmp eq ptr %.sroa.016.0.copyload.i, %.sroa.0.0.copyload.i157
  %i.bp = icmp eq i32 %.sroa.417.0.copyload.i, %.sroa.4.0.copyload.i
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.critedge3, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %_ZNK4llvm9MemSDNode10getBasePtrEv.exit15.i, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i, %bb.f, %bb.g, %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !493
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !358
  %i.bu = ptrtoint ptr %.sroa.0198.0232 to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.by = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !496 ; 4 uses
  %i.ca = zext i16 %i.bz to i32
  %i.cb = zext i16 %i.bz to i64                   ; 4 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !21
  store i32 0, ptr %i.h, align 8, !tbaa !368
  store i32 2, ptr %i.i, align 4, !tbaa !369
  %i.cc = icmp eq i16 %i.bz, 0
  br i1 %i.cc, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = icmp ugt i16 %i.bz, 2
  br i1 %i.cd, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i: ; preds = %bb.k
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.g, i64 noundef %i.cb, i64 noundef 16) #20
  %.pre.i.i.i = load i32, ptr %i.h, align 8, !tbaa !368
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.cb, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2Em.exit, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !21
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.k
  %i.ce = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.g, %bb.k ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.k ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cb
  %i.cg = getelementptr [16 x i8], ptr %i.ce, i64 %.pre-phi.i.i3.i ; 2 uses
  %i.ch = sub nsw i64 %i.cb, %.pre-phi.i.i3.i
  %i.ci = shl nsw i64 %i.ch, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.cg, i8 0, i64 %i.ci, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i ], [ %i.cg, %.lr.ph.preheader.i.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i.i, align 8, !tbaa !363
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i32 0, ptr %i.cj, align 8, !tbaa !374
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.ck, %i.cf
  br i1 %.not.i.i.i158, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2Em.exit, label %.lr.ph.i.i.i, !llvm.loop !545

_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2Em.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  store i32 %i.ca, ptr %i.h, align 8, !tbaa !368
  %.pre = load i16, ptr %i.by, align 8, !tbaa !496 ; 4 uses
  %.not148228 = icmp eq i16 %.pre, 0
  br i1 %.not148228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2Em.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 3 uses
  %i.cm = zext i16 %.pre to i64                   ; 2 uses
  %xtraiter = and i64 %i.cm, 1
  %i.cn = icmp eq i16 %.pre, 1
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cm, 65534
  br label %bb.l

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod250 = trunc i16 %.pre to i1
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !358
  %i.cp = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %indvars.iv.epil.init
  %i.cq = load ptr, ptr %3, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cr, ptr noundef nonnull align 8 dereferenceable(12) %i.cp, i64 12, i1 false), !tbaa.struct !379
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.j, %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2Em.exit
  %i.cs = and i64 %i.bx, 4294967295               ; 5 uses
  %i.ct = load ptr, ptr %3, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cs ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !363
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !374
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !362
  %i.da = zext i32 %i.cx to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %.sroa.0.0.copyload.i.i159 = load i16, ptr %i.db, align 8, !tbaa !315 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i160 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.21.0.copyload.i.i161 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i160, align 8, !tbaa !317 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !375
  store i64 %i.dd, ptr %4, align 8, !tbaa !375
  %i.de = getelementptr inbounds nuw i8, ptr %i.z, i64 68
  %i.df = load i32, ptr %i.de, align 4, !tbaa !376
  store i32 %i.df, ptr %i.j, align 8, !tbaa !377
  %i.dg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i159, ptr %.sroa.21.0.copyload.i.i161, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract88 = extractvalue { ptr, i32 } %i.dg, 0 ; 2 uses
  %.fca.1.extract89 = extractvalue { ptr, i32 } %i.dg, 1 ; 2 uses
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i159, ptr %.sroa.21.0.copyload.i.i161, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract75 = extractvalue { ptr, i32 } %i.dh, 0 ; 2 uses
  %.fca.1.extract76 = extractvalue { ptr, i32 } %i.dh, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !360 ; 4 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.l, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.dl = load ptr, ptr %i.cl, align 8, !tbaa !358
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.dl, i64 %indvars.iv
  %i.dn = load ptr, ptr %3, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.do, ptr noundef nonnull align 8 dereferenceable(12) %i.dm, i64 12, i1 false), !tbaa.struct !379
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load ptr, ptr %i.cl, align 8, !tbaa !358
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %i.dp, i64 %indvars.iv.next
  %i.dr = load ptr, ptr %3, align 8, !tbaa !21
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ds, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false), !tbaa.struct !379
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !546

bb.m:                                             ; preds = %._crit_edge
  %i.dt = xor i32 %i.dj, -1                       ; 2 uses
  %i.du = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.cs ; 2 uses
  store ptr %.fca.0.extract88, ptr %i.dv, align 8, !tbaa !359
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 %.fca.1.extract89, ptr %.sroa.597.0..sroa_idx, align 8, !tbaa !361
  %.sroa.070.0.copyload = load i16, ptr %2, align 8, !tbaa !315
  %.sroa.272.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !317
  store ptr %i.du, ptr %5, align 8, !tbaa !380
  %i.dw = load i32, ptr %i.h, align 8, !tbaa !368
  %i.dx = zext i32 %i.dw to i64
  store i64 %i.dx, ptr %i.m, align 8, !tbaa !383
  %i.dy = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.070.0.copyload, ptr %.sroa.272.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.371") align 8 %5) #20
  %i.dz = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.cs ; 2 uses
  store ptr %.fca.0.extract75, ptr %i.ea, align 8, !tbaa !359
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 %.fca.1.extract76, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !361
  %.sroa.067.0.copyload = load i16, ptr %2, align 8, !tbaa !315
  %.sroa.269.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !317
  store ptr %i.dz, ptr %6, align 8, !tbaa !380
  %i.eb = load i32, ptr %i.h, align 8, !tbaa !368
  %i.ec = zext i32 %i.eb to i64
  store i64 %i.ec, ptr %i.n, align 8, !tbaa !383
  %i.ed = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.067.0.copyload, ptr %.sroa.269.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.371") align 8 %6) #20
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.ee = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.cs ; 2 uses
  store ptr %.fca.0.extract88, ptr %i.ef, align 8, !tbaa !359
  %.sroa.597.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %.fca.1.extract89, ptr %.sroa.597.0..sroa_idx98, align 8, !tbaa !361
  %.sroa.059.0.copyload = load i16, ptr %2, align 8, !tbaa !315
  %.sroa.261.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !317
  store ptr %i.ee, ptr %7, align 8, !tbaa !380
  %i.eg = load i32, ptr %i.h, align 8, !tbaa !368
  %i.eh = zext i32 %i.eg to i64
  store i64 %i.eh, ptr %i.k, align 8, !tbaa !383
  %i.ei = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.dj, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.059.0.copyload, ptr %.sroa.261.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.371") align 8 %7) #20 ; 2 uses
  %.fca.0.extract55 = extractvalue { ptr, i32 } %i.ei, 0
  %.fca.1.extract56 = extractvalue { ptr, i32 } %i.ei, 1
  %i.ej = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.cs ; 2 uses
  store ptr %.fca.0.extract75, ptr %i.ek, align 8, !tbaa !359
  %.sroa.584.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %.fca.1.extract76, ptr %.sroa.584.0..sroa_idx85, align 8, !tbaa !361
  %.sroa.050.0.copyload = load i16, ptr %2, align 8, !tbaa !315
  %.sroa.252.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !317
  store ptr %i.ej, ptr %8, align 8, !tbaa !380
  %i.el = load i32, ptr %i.h, align 8, !tbaa !368
  %i.em = zext i32 %i.el to i64
  store i64 %i.em, ptr %i.l, align 8, !tbaa !383
  %i.en = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.dj, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.050.0.copyload, ptr %.sroa.252.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.371") align 8 %8) #20 ; 2 uses
  %.fca.0.extract46 = extractvalue { ptr, i32 } %i.en, 0
  %.fca.1.extract47 = extractvalue { ptr, i32 } %i.en, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.6183.0 = phi i32 [ 0, %bb.m ], [ %.fca.1.extract56, %bb.n ]
  %.sroa.0182.0 = phi ptr [ %i.dy, %bb.m ], [ %.fca.0.extract55, %bb.n ]
  %.sroa.6181.0 = phi i32 [ 0, %bb.m ], [ %.fca.1.extract47, %bb.n ]
  %.sroa.0180.0 = phi ptr [ %i.ed, %bb.m ], [ %.fca.0.extract46, %bb.n ]
  %i.eo = load i16, ptr %2, align 8, !tbaa !364   ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm19HexagonDAGToDAGISel21rebalanceAddressTreesEv:bb.a
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !358 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !363
  store ptr %i.dz, ptr %i.n, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !363
  store ptr %i.eb, ptr %i.q, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread
  %i.ec = phi i32 [ %i.gd, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread ], [ 2, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ed = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !359 ; 6 uses
  %i.ei = add i32 %i.ec, -1                       ; 4 uses
  store i32 %i.ei, ptr %i.o, align 8, !tbaa !368
  store ptr %i.eh, ptr %i.a, align 8, !tbaa !359
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !360 ; 2 uses
  switch i32 %i.ek, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread [
    i32 59, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread66
    i32 61, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread66
    i32 198, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.em = load i16, ptr %i.el, align 8, !tbaa !496
  %i.en = icmp ugt i16 %i.em, 1
  br i1 %i.en, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.threadthread-pre-split

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit:        ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !358
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !363
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load i32, ptr %i.es, align 8, !tbaa !360
  switch i32 %i.et, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.threadthread-pre-split [
    i32 37, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread66
    i32 12, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread66
  ]

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread66: ; preds = %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, %.lr.ph, %.lr.ph
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ev = load i16, ptr %i.eu, align 8, !tbaa !496
  %i.ew = icmp ult i16 %i.ev, 2
  br i1 %i.ew, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.threadthread-pre-split, label %bb.q, !llvm.loop !560

bb.q:                                             ; preds = %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread66
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !358
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !363 ; 2 uses
  %i.fa = load i32, ptr %i.p, align 4, !tbaa !369
  %.not.i44 = icmp ult i32 %i.ei, %i.fa
  br i1 %.not.i44, label %bb.s, label %bb.r, !prof !558

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ez)
  %.pre = load i32, ptr %i.o, align 8, !tbaa !368
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit45

bb.s:                                             ; preds = %bb.q
  %i.fb = zext i32 %i.ei to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fb
  store ptr %i.ez, ptr %i.fc, align 1
  %i.fd = load i32, ptr %i.o, align 8, !tbaa !368
  %i.fe = add i32 %i.fd, 1                        ; 2 uses
  store i32 %i.fe, ptr %i.o, align 8, !tbaa !368
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit45

_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit45: ; preds = %bb.r, %bb.s
  %i.ff = phi i32 [ %.pre, %bb.r ], [ %i.fe, %bb.s ] ; 2 uses
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !358
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !363 ; 2 uses
  %i.fl = load i32, ptr %i.p, align 4, !tbaa !369
  %.not.i46 = icmp ult i32 %i.ff, %i.fl
  br i1 %.not.i46, label %bb.u, label %bb.t, !prof !558

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit45
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.fk)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit47

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit45
  %i.fm = zext i32 %i.ff to i64
  %i.fn = load ptr, ptr %1, align 8, !tbaa !21
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm
  store ptr %i.fk, ptr %i.fo, align 1
  %i.fp = load i32, ptr %i.o, align 8, !tbaa !368
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.o, align 8, !tbaa !368
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit47

_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit47: ; preds = %bb.t, %bb.u
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !325 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i, label %.critedge, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit47
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !335
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.v, label %.critedge

bb.v:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !493
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !360
  %i.gb = icmp eq i32 %i.ek, %i.ga
  br i1 %i.gb, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.threadthread-pre-split, label %.critedge, !llvm.loop !560

.critedge:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit47, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 -1, ptr %i.b, align 4, !tbaa !361
  %i.gc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6SDNodeEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JiEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !561 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.threadthread-pre-split

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.threadthread-pre-split: ; preds = %.critedge, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread66, %bb.v, %bb.p, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit
  %.pr = load i32, ptr %i.o, align 8, !tbaa !368
  br label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread: ; preds = %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.threadthread-pre-split, %.lr.ph
  %i.gd = phi i32 [ %.pr, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.threadthread-pre-split ], [ %i.ei, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not.i43 = icmp eq i32 %i.gd, 0
  br i1 %.not.i43, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr %.sroa.049.0.copyload, ptr %i.c, align 8, !tbaa !359
  %i.ge = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6SDNodeEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ge, 0
  %i.gf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i32 -1, ptr %i.gf, align 4, !tbaa !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.gg = call { ptr, i32 } @_ZN4llvm19HexagonDAGToDAGISel14balanceSubTreeEPNS_6SDNodeEb(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %.sroa.049.0.copyload, i1 noundef zeroext true) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.gg, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.gg, 1 ; 2 uses
  %i.gh = load i32, ptr %i.cg, align 8, !tbaa !360
  %i.gi = icmp eq i32 %i.gh, 316
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.057.070, i64 56
  %i.gk = load i16, ptr %i.gj, align 8, !tbaa !496 ; 2 uses
  br i1 %i.gi, label %bb.w, label %bb.y

bb.w:                                             ; preds = %._crit_edge
  %i.gl = icmp ugt i16 %i.gk, 2
  br i1 %i.gl, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gm = load ptr, ptr %i.d, align 8, !tbaa !373
  %i.gn = load ptr, ptr %i.ci, align 8, !tbaa !358 ; 3 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.gn, align 8, !tbaa !359
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !361
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.gp = call noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_S3_(ptr noundef nonnull align 8 dereferenceable(920) %i.gm, ptr noundef nonnull %i.cf, ptr %.sroa.07.0.copyload, i32 %.sroa.28.0.copyload, ptr %.fca.0.extract, i32 %.fca.1.extract, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.go) #20 ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %._crit_edge
  %i.gq = icmp ugt i16 %i.gk, 3
  br i1 %i.gq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gr = load ptr, ptr %i.d, align 8, !tbaa !373
  %i.gs = load ptr, ptr %i.ci, align 8, !tbaa !358 ; 5 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.gs, align 8, !tbaa !359
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !361
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.gt, align 8, !tbaa !359
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !361
  store ptr %.fca.0.extract, ptr %2, align 8, !tbaa !359
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !361
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 120
  %i.gv = call noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(920) %i.gr, ptr noundef nonnull %i.cf, ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload, ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %2, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gu) #20 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.w, %bb.z, %bb.y, %.loopexit
  %i.gw = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.n
  br i1 %i.gx, label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj4EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.gw) #20
  br label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_6SDNodeELj4EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6SDNodeEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E5countEPKS2_.exit

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6SDNodeEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E5countEPKS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.k, %_ZN4llvm11SmallVectorIPNS_6SDNodeELj4EED2Ev.exit, %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
  %.not = icmp eq ptr %i.ce, %i.h
  br i1 %.not, label %._crit_edge73.loopexit, label %bb.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19HexagonDAGToDAGISel21emitFunctionEntryCodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %2 = alloca %"class.llvm::BitVector", align 8   ; 6 uses
  %3 = alloca %"class.llvm::MIMetadata", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445, !nonnull !19, !align !313 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(519600) %i.d) #20
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering11needsAlignaERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %i.i) #20
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !367
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !549  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.0.0.copyload.i = load i8, ptr %i.p, align 8, !tbaa !345
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(519600) %i.d) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(316) %i.t, ptr noundef nonnull align 8 dereferenceable(1065) %i.u) #20
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(316) %i.t, ptr noundef %i.y) #20 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !566 ; 2 uses
  %.not22 = icmp eq i16 %i.ad, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ae = load ptr, ptr %2, align 8, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.023, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !566 ; 2 uses
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !567

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ah = phi i16 [ %i.ad, %.lr.ph ], [ %i.ag, %bb.c ]
  %.023 = phi ptr [ %i.ac, %.lr.ph ], [ %i.af, %bb.c ]
  %i.ai = zext i16 %i.ah to i32                   ; 3 uses
  %i.aj = lshr i32 %i.ai, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ak
  %i.am = and i32 %i.ai, 63
  %i.an = load i64, ptr %i.al, align 8, !tbaa !346
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not21 = icmp eq i64 %i.aq, 0
  br i1 %.not21, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.018.0 = phi i32 [ 0, %bb.b ], [ %i.ai, %bb.d ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !467
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !486
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -14272
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ax = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.o, ptr nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i32 %.sroa.018.0) ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0
  %i.az = extractvalue { ptr, ptr } %i.ax, 1
  %i.ba = zext nneg i8 %.sroa.0.0.copyload.i to i64
  %i.bb = shl nuw i64 1, %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i32 1, ptr %1, align 8, !alias.scope !568
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !571, !alias.scope !568
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !345, !alias.scope !568
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(1065) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !524
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 %.sroa.018.0, ptr %i.bh, align 4, !tbaa !361
  %i.bi = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.bi) #20
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4llvm9BitVectorD2Ev.exit
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering11needsAlignaERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19HexagonDAGToDAGISel12updateAlignaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445, !nonnull !19, !align !313 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(519600) %i.d) #20 ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering11needsAlignaERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %i.i) #20
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.l = tail call noundef ptr @_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %i.k) #20
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !367
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.0.0.copyload.i = load i8, ptr %i.p, align 8, !tbaa !345
  %i.q = zext nneg i8 %.sroa.0.0.copyload.i to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !345
  %i.w = and i64 %i.r, 4294967295                 ; 2 uses
  %i.x = icmp slt i64 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.w, ptr %i.u, align 8, !tbaa !345
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare noundef ptr @_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19HexagonDAGToDAGISel18SelectAnyImmediateERNS_7SDValueES2_NS_5AlignE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %2, i8 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !363    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !360
  switch i32 %i.c, label %bb.l [
    i32 12, label %bb.b
    i32 552, label %bb.e
    i32 547, label %bb.e
    i32 19, label %bb.g
    i32 20, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !374
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !362
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !315
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !317
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i.i, 7
  %i.j = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.k = select i1 %.not.i, i1 true, i1 %i.j
  br i1 %i.k, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !340  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
end_hunk_2
begin_hunk_3_@_ZN4llvm19HexagonDAGToDAGISel18SelectAnyImmediateERNS_7SDValueES2_NS_5AlignE:bb.a
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !375
  store i64 %i.aa, ptr %4, align 8, !tbaa !375
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !376
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !377
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.y, i64 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract, ptr %2, align 8, !tbaa !359
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !361
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.n

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.af = icmp ugt i8 %3, 3
  br i1 %i.af, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !379
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !379
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.ai = icmp ugt i8 %3, 2
  br i1 %i.ai, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !588
  %i.al = zext nneg i8 %3 to i64
  %notmask.i44 = shl nsw i64 -1, %i.al
  %i.am = xor i64 %notmask.i44, -1
  %i.an = and i64 %i.ak, %i.am
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !379
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_ZN4llvm19HexagonDAGToDAGISel19SelectGlobalAddressERNS_7SDValueES2_bNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i1 noundef zeroext false, i8 %3)
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call noundef zeroext i1 @_ZN4llvm19HexagonDAGToDAGISel19SelectGlobalAddressERNS_7SDValueES2_bNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i1 noundef zeroext true, i8 %3)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.j, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k, %bb.h, %bb.f
  %.1 = phi i1 [ false, %bb.i ], [ true, %bb.l ], [ true, %bb.k ], [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.e ], [ true, %bb.h ], [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.j ], [ %i.aq, %bb.m ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19HexagonDAGToDAGISel19SelectGlobalAddressERNS_7SDValueES2_bNS_5AlignE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %2, i1 noundef zeroext %3, i8 %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !363    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !360
  switch i32 %i.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 59, label %bb.b
    i32 547, label %bb.g
    i32 552, label %bb.g
    i32 545, label %bb.g
    i32 546, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !358  ; 2 uses
  %.sroa.054.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !359 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.052.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !359 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !360
  %or.cond48.v = select i1 %3, i32 546, i32 545
  %or.cond48 = icmp eq i32 %i.h, %or.cond48.v
  br i1 %or.cond48, label %bb.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.052.0.copyload, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !360
  switch i32 %i.j, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.c, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.052.0.copyload, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !340  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !343  ; 3 uses
  %i.p = icmp ult i32 %i.o, 65                    ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8              ; 3 uses
  %spec.select.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.q
  %.0.i.i.i49 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !345
  %i.r = zext nneg i8 %4 to i64
  %notmask.i = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i, -1
  %i.t = and i64 %.0.i.i.i49, %i.s
  %i.u = icmp eq i64 %i.t, 0
  %i.v = ptrtoint ptr %i.q to i64
  br i1 %i.u, label %bb.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !358
  %.sroa.0.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !359 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !360
  %cond = icmp eq i32 %i.z, 39
  br i1 %cond, label %.critedge, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

.critedge:                                        ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 96
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !591
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.ac = icmp eq i32 %i.o, 0
  %i.ad = sub nuw nsw i32 64, %i.o
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl i64 %i.v, %i.ae
  %i.ag = ashr exact i64 %i.af, %i.ae
  %.0.i.i.i.i = select i1 %i.ac, i64 0, i64 %i.ag
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.f:                                             ; preds = %.critedge
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !346
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.e, %bb.f
  %.0.i.i.i51 = phi i64 [ %.0.i.i.i.i, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = add i64 %.0.i.i.i51, %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !373
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !594
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.052.0.copyload, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !375
  store i64 %i.ao, ptr %5, align 8, !tbaa !375
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.052.0.copyload, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !376
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !377
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !374
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !362
  %i.aw = zext i32 %i.at to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ax, align 8, !tbaa !315
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !317
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getGlobalAddressEPKNS_11GlobalValueERKNS_5SDLocENS_3EVTElbj(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i64 noundef %i.ai, i1 noundef zeroext true, i32 noundef 0) #20 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ay, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ay, 1
  store ptr %.fca.0.extract, ptr %2, align 8, !tbaa !359
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !361
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a
  br i1 %3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.ba, i64 12, i1 false), !tbaa.struct !379
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bb = xor i1 %3, true
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.j:                                             ; preds = %bb.a
  br i1 %3, label %bb.k, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.bd, i64 12, i1 false), !tbaa.struct !379
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %bb.d, %bb.b, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.c, %bb.a, %bb.j, %bb.k, %bb.i
  %.4 = phi i1 [ false, %bb.j ], [ true, %bb.k ], [ false, %bb.a ], [ %i.bb, %bb.i ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ true, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ false, %bb.c ]
  ret i1 %.4
}

declare noundef i64 @_ZNK4llvm16MachineFrameInfo17estimateStackSizeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm19HexagonDAGToDAGISel9getWeightEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !359
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !360
  switch i32 %i.c, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread [
    i32 59, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
    i32 61, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
    i32 198, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i16, ptr %i.d, align 8, !tbaa !496
  %i.f = icmp ugt i16 %i.e, 1
  br i1 %i.f, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit:        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !363
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !360
  switch i32 %i.l, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread [
    i32 37, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
    i32 12, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
  ]

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3: ; preds = %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.n = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6SDNodeEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !361
  br label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread: ; preds = %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, %bb.a, %bb.b, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
  %.0 = phi i32 [ %i.p, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3 ], [ 1, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm19HexagonDAGToDAGISel9getHeightEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !359
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !360
  switch i32 %i.c, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread [
    i32 59, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
    i32 61, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
    i32 198, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i16, ptr %i.d, align 8, !tbaa !496
  %i.f = icmp ugt i16 %i.e, 1
  br i1 %i.f, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit:        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !363
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !360
  switch i32 %i.l, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread [
    i32 37, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
    i32 12, label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
  ]

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3: ; preds = %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.n = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_6SDNodeEiLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !361
  br label %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread

_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread: ; preds = %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit, %bb.a, %bb.b, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3
  %.0 = phi i32 [ %i.p, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit.thread3 ], [ 0, %_ZL15isOpcodeHandledPKN4llvm6SDNodeE.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm19HexagonDAGToDAGISel19getMultiplierForSHLEPNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i16, ptr %i.a, align 8, !tbaa !496
  %i.c = icmp ult i16 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !358  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !363  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !340  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !343
  %i.m = icmp ult i32 %i.l, 65
  %i.n = load ptr, ptr %i.j, align 8
  %spec.select.i.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.n
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !345
  %i.o = shl nuw i64 1, %.0.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !375
  store i64 %i.s, ptr %2, align 8, !tbaa !375
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !376
  store i32 %i.v, ptr %i.t, align 8, !tbaa !377
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !374
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !362
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ab, align 8, !tbaa !315
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !317
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.q, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.fca.0.extract, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm19HexagonDAGToDAGISel17factorOutPowerOf2ENS_7SDValueEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1216) %0, ptr %1, i32 %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef.371", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i16, ptr %i.a, align 8, !tbaa !496
  %i.c = icmp ult i16 %i.b, 2
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !358  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !379
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !379
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !360
  switch i32 %i.i, label %.thread [
    i32 61, label %.preheader
    i32 198, label %bb.h
  ]

.preheader:                                       ; preds = %bb.b
  %i.j = zext i32 %3 to i64                       ; 2 uses
  %notmask = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask, -1                     ; 2 uses
  %i.l = load ptr, ptr %4, align 16, !tbaa !363   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !360
  switch i32 %i.n, label %.critedge [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %.preheader, %.preheader
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !363
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !340  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !343
  %i.u = icmp ult i32 %i.t, 65
  %i.v = load ptr, ptr %i.r, align 8
  %spec.select.i.i.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.v
end_hunk_3
