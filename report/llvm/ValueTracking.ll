Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueTracking?download=true
inline.NumInlined: 12130
inline.NumDeleted: 4588
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4llvm18isImpliedConditionEPKNS_5ValueENS_12CmpPredicateES2_S2_RKNS_10DataLayoutEbj:bb.a
  %spec.select.i.i.i.i.i96 = icmp eq i32 %i.jn, 18 ; 2 uses
  br i1 %spec.select, label %bb.dh, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %spec.select.i.i.i.i.i96, label %bb.cy, label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i106

bb.cy:                                            ; preds = %bb.cx
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !172
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !173
  %.phi.trans.insert.i.i.i117 = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.pre.i.i.i118 = load i32, ptr %.phi.trans.insert.i.i.i117, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i106

_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i106: ; preds = %bb.cy, %bb.cx
  %i.jr = phi i32 [ %.pre.i.i.i118, %bb.cy ], [ %i.jm, %bb.cx ]
  %i.js = icmp eq i32 %i.jr, 268
  br i1 %i.js, label %bb.cz, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

bb.cz:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i106
  switch i8 %i.jg, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread [
    i8 60, label %bb.da
    i8 89, label %bb.de
  ]

bb.da:                                            ; preds = %bb.cz
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %i.jv = and i32 %i.ju, 1073741824
  %.not.i.i.i.i112 = icmp eq i32 %i.jv, 0
  br i1 %.not.i.i.i.i112, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jw = getelementptr inbounds i8, ptr %i.jh, i64 -8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i113

bb.dc:                                            ; preds = %bb.da
  %i.jy = and i32 %i.ju, 268435455
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = sub nsw i64 0, %i.jz
  %i.kb = getelementptr inbounds [32 x i8], ptr %i.jh, i64 %i.ka
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i113

_ZNK4llvm4User10getOperandEj.exit37.i.i113:       ; preds = %bb.dc, %bb.db
  %.in.i.i114 = phi ptr [ %i.jx, %bb.db ], [ %i.kb, %bb.dc ] ; 2 uses
  %i.kc = load ptr, ptr %.in.i.i114, align 8, !tbaa !50 ; 2 uses
  %.not.i.not.i.i115 = icmp eq ptr %i.kc, null
  br i1 %.not.i.not.i.i115, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.dd

bb.dd:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit37.i.i113
  %i.kd = getelementptr inbounds nuw i8, ptr %.in.i.i114, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !50 ; 2 uses
  %.not.i38.not.i.i116 = icmp eq ptr %i.ke, null
  br i1 %.not.i38.not.i.i116, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit

bb.de:                                            ; preds = %bb.cz
  %i.kf = getelementptr inbounds i8, ptr %i.jh, i64 -96
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !50 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %i.jh, i64 -32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !50 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !29
  %.not33.i.i108 = icmp eq ptr %i.kk, %i.jk
  br i1 %.not33.i.i108, label %bb.df, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

bb.df:                                            ; preds = %bb.de
  %i.kl = getelementptr inbounds i8, ptr %i.jh, i64 -64
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !50 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !40
  %i.ko = icmp ugt i8 %i.kn, 22
  br i1 %i.ko, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kp = call noundef zeroext i1 @_ZNK4llvm8Constant10isOneValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.km) #27
  %.not.i42.not.i.i109 = icmp ne ptr %i.ki, null
  %or.cond454.not = select i1 %i.kp, i1 %.not.i42.not.i.i109, i1 false
  br i1 %or.cond454.not, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

bb.dh:                                            ; preds = %bb.cw
  br i1 %spec.select.i.i.i.i.i96, label %bb.di, label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i97

bb.di:                                            ; preds = %bb.dh
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !172
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !173
  %.phi.trans.insert.i.i.i100 = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %.pre.i.i.i101 = load i32, ptr %.phi.trans.insert.i.i.i100, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i97

_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i97:  ; preds = %bb.di, %bb.dh
  %i.kt = phi i32 [ %.pre.i.i.i101, %bb.di ], [ %i.jm, %bb.dh ]
  %i.ku = icmp eq i32 %i.kt, 268
  br i1 %i.ku, label %bb.dj, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

bb.dj:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i97
  switch i8 %i.jg, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread [
    i8 59, label %bb.dk
    i8 89, label %bb.do
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.kw = load i32, ptr %i.kv, align 4            ; 2 uses
  %i.kx = and i32 %i.kw, 1073741824
  %.not.i.i.i.i99 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i.i.i99, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ky = getelementptr inbounds i8, ptr %i.jh, i64 -8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.la = and i32 %i.kw, 268435455
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = sub nsw i64 0, %i.lb
  %i.ld = getelementptr inbounds [32 x i8], ptr %i.jh, i64 %i.lc
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i

_ZNK4llvm4User10getOperandEj.exit37.i.i:          ; preds = %bb.dm, %bb.dl
  %.in.i.i = phi ptr [ %i.kz, %bb.dl ], [ %i.ld, %bb.dm ] ; 2 uses
  %i.le = load ptr, ptr %.in.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.not.i.i = icmp eq ptr %i.le, null
  br i1 %.not.i.not.i.i, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.dn

bb.dn:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit37.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.in.i.i, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !50 ; 2 uses
  %.not.i38.not.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i38.not.i.i, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit

bb.do:                                            ; preds = %bb.dj
  %i.lh = getelementptr inbounds i8, ptr %i.jh, i64 -96
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !50 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.jh, i64 -64
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !50 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !29
  %.not33.i.i = icmp eq ptr %i.lm, %i.jk
  br i1 %.not33.i.i, label %bb.dp, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

bb.dp:                                            ; preds = %bb.do
  %i.ln = getelementptr inbounds i8, ptr %i.jh, i64 -32
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !50 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !40
  %i.lq = icmp ugt i8 %i.lp, 22
  br i1 %i.lq, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.ls = load i8, ptr %i.lr, align 1
  %i.lt = icmp sgt i8 %i.ls, -1
  %.not.i42.not.i.i = icmp eq ptr %i.lk, null
  %or.cond455 = select i1 %i.lt, i1 true, i1 %.not.i42.not.i.i
  br i1 %or.cond455, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit: ; preds = %bb.dq, %bb.dg, %bb.dd, %bb.dn
  %.0413 = phi ptr [ %i.le, %bb.dn ], [ %i.li, %bb.dq ], [ %i.kc, %bb.dd ], [ %i.kg, %bb.dg ]
  %storemerge = phi ptr [ %i.lg, %bb.dn ], [ %i.lk, %bb.dq ], [ %i.ke, %bb.dd ], [ %i.ki, %bb.dg ]
  %i.lu = add i32 %6, 1                           ; 2 uses
  %i.lv = call i16 @_ZN4llvm18isImpliedConditionEPKNS_5ValueENS_12CmpPredicateES2_S2_RKNS_10DataLayoutEbj(ptr noundef nonnull %.0413, i64 %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(912) %4, i1 noundef zeroext %spec.select, i32 noundef %i.lu), !inline_history !1074 ; 2 uses
  %i.lw = and i16 %i.lv, 256
  %.not401 = icmp eq i16 %i.lw, 0
  br i1 %.not401, label %bb.dr, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

bb.dr:                                            ; preds = %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit
  %i.lx = call i16 @_ZN4llvm18isImpliedConditionEPKNS_5ValueENS_12CmpPredicateES2_S2_RKNS_10DataLayoutEbj(ptr noundef nonnull %storemerge, i64 %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(912) %4, i1 noundef zeroext %spec.select, i32 noundef %i.lu), !inline_history !1074 ; 2 uses
  %i.ly = and i16 %i.lx, 256
  br label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread: ; preds = %bb.dr, %bb.dj, %bb.do, %bb.dq, %bb.dn, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i97, %_ZNK4llvm4User10getOperandEj.exit37.i.i, %bb.dp, %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit, %bb.df, %_ZNK4llvm4User10getOperandEj.exit37.i.i113, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i106, %bb.dd, %bb.dg, %bb.de, %bb.cz
  %.sroa.0339.0 = phi i16 [ %i.lv, %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit ], [ %i.lx, %bb.dr ], [ 0, %bb.dj ], [ 0, %bb.df ], [ 0, %_ZNK4llvm4User10getOperandEj.exit37.i.i113 ], [ 0, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i106 ], [ 0, %bb.dd ], [ 0, %bb.do ], [ 0, %bb.dg ], [ 0, %bb.de ], [ 0, %bb.cz ], [ 0, %bb.dp ], [ 0, %_ZNK4llvm4User10getOperandEj.exit37.i.i ], [ 0, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i97 ], [ 0, %bb.dn ], [ 0, %bb.dq ]
  %.sroa.5341.0 = phi i16 [ 256, %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit ], [ %i.ly, %bb.dr ], [ 0, %bb.dj ], [ 0, %bb.df ], [ 0, %_ZNK4llvm4User10getOperandEj.exit37.i.i113 ], [ 0, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i106 ], [ 0, %bb.dd ], [ 0, %bb.do ], [ 0, %bb.dg ], [ 0, %bb.de ], [ 0, %bb.cz ], [ 0, %bb.dp ], [ 0, %_ZNK4llvm4User10getOperandEj.exit37.i.i ], [ 0, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i97 ], [ 0, %bb.dn ], [ 0, %bb.dq ]
  %.sroa.0134.0.extract.trunc135 = trunc i16 %.sroa.0339.0 to i8
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %bb.cv, %.thread380, %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, %bb.cu, %bb.bm, %bb.b, %bb.a
  %.sroa.4.4 = phi i16 [ %.sroa.4.0.extract.shift145, %bb.cu ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.5341.0, %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread ], [ %.sroa.4.0.extract.shift141, %bb.bm ], [ 0, %bb.cv ], [ 0, %.thread380 ], [ 0, %bb.k ], [ 0, %bb.j ]
  %.sroa.0134.4 = phi i8 [ %.sroa.0134.0.extract.trunc136, %bb.cu ], [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.0134.0.extract.trunc135, %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIKNS_5ValueEEES9_Lj29ELb0EEEEEbPT_RKT0_.exit.thread ], [ %.sroa.0322.2, %bb.bm ], [ undef, %bb.cv ], [ undef, %.thread380 ], [ undef, %bb.k ], [ undef, %bb.j ]
  %.sroa.0134.0.insert.ext = zext i8 %.sroa.0134.4 to i16
  %.sroa.0134.0.insert.insert = or i16 %.sroa.4.4, %.sroa.0134.0.insert.ext
  ret i16 %.sroa.0134.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i16 0, 512) i16 @_ZN4llvm18isImpliedConditionEPKNS_5ValueES2_RKNS_10DataLayoutEbj(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(912) %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"struct.llvm::PatternMatch::BinaryOp_match.268", align 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !75
  %i.b = zext i1 %3 to i8                         ; 2 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr null, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindIKNS_5ValueEEELj31ELb1EE5matchIS9_EEbjPT_(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 31, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !75  ; 10 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, %.pre
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = xor i8 %i.b, 1
  br label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]         ; 6 uses
  %i.h = load i8, ptr %.pre, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.h, 85
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds i8, ptr %.pre, i64 -64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds i8, ptr %.pre, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %.not.i10.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i10.not.i.i.i.i, label %bb.h, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14CmpClass_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_NS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.i.i

_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14CmpClass_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_NS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.i.i: ; preds = %bb.g
  %i.m = call i64 @_ZN4llvm12CmpPredicate3getEPKNS_7CmpInstE(ptr noundef nonnull %.pre) #27
  %i.n = and i64 %i.m, 1099511627775
  br label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14ICmpLike_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_EEEEbPT_RKT0_.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.s, 18
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !172
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i

_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i:    ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %.pre.i.i.i, %bb.i ], [ %i.r, %bb.h ]
  %i.x = icmp eq i32 %i.w, 268
  %.not.i.i5.i.i = icmp eq i8 %i.h, 69
  %or.cond.i.i = and i1 %.not.i.i5.i.i, %i.x
  br i1 %or.cond.i.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 2
  %.not8.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not8.i.i.i.i, label %.critedge43.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds i8, ptr %.pre, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 3 uses
  %.not.i.not.i.i6.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.not.i.i6.i.i, label %.critedge43.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.ae) #27 ; 2 uses
  %.not.i7.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i7.not.i.i, label %._crit_edge, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14ICmpLike_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_EEEEbPT_RKT0_.exit

._crit_edge:                                      ; preds = %bb.l
  %.pre148 = load ptr, ptr %i.a, align 8, !tbaa !75 ; 2 uses
  %.pre149 = load i8, ptr %.pre148, align 8, !tbaa !40
  br label %bb.n

_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14ICmpLike_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_EEEEbPT_RKT0_.exit: ; preds = %bb.l, %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14CmpClass_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_NS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.i.i
  %.0147 = phi ptr [ %i.j, %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14CmpClass_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_NS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.i.i ], [ %i.ac, %bb.l ]
  %.0146 = phi ptr [ %i.l, %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14CmpClass_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_NS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.i.i ], [ %i.af, %bb.l ]
  %.sroa.0.0 = phi i64 [ %i.n, %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14CmpClass_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_NS_8ICmpInstELb0EEEEEbPT_RKT0_.exit.i.i ], [ 33, %bb.l ]
  %i.ag = call i16 @_ZN4llvm18isImpliedConditionEPKNS_5ValueENS_12CmpPredicateES2_S2_RKNS_10DataLayoutEbj(ptr noundef %0, i64 %.sroa.0.0, ptr noundef nonnull %.0147, ptr noundef nonnull %.0146, ptr noundef nonnull align 8 dereferenceable(912) %2, i1 noundef zeroext %3, i32 noundef %4) ; 2 uses
  %i.ah = and i16 %i.ag, 256
  %.not137 = icmp eq i16 %i.ah, 0
  br i1 %.not137, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_14ICmpLike_matchINS_19PatternMatchHelpers10match_bindIS2_EES7_EEEEbPT_RKT0_.exit
  %.sroa.095.0.extract.trunc = trunc i16 %i.ag to i8
  %spec.select = xor i8 %.0, %.sroa.095.0.extract.trunc
  br label %.critedge

bb.n:                                             ; preds = %._crit_edge, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i
  %i.ai = phi i8 [ %.pre149, %._crit_edge ], [ %i.h, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i ] ; 3 uses
  %i.aj = phi ptr [ %.pre148, %._crit_edge ], [ %.pre, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i ] ; 4 uses
  %.not = icmp eq i8 %i.ai, 86
  br i1 %.not, label %bb.o, label %.critedge43

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !200
  %i.am = and i16 %i.al, 63
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 -32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %.sroa.091.0.insert.ext = zext nneg i16 %i.am to i64
  %i.ar = call i16 @_ZN4llvm18isImpliedConditionEPKNS_5ValueENS_12CmpPredicateES2_S2_RKNS_10DataLayoutEbj(ptr noundef %0, i64 %.sroa.091.0.insert.ext, ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(912) %2, i1 noundef zeroext %3, i32 noundef %4) ; 2 uses
  %i.as = and i16 %i.ar, 256
  %.not139 = icmp eq i16 %i.as, 0
  br i1 %.not139, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.092.0.extract.trunc = trunc i16 %i.ar to i8
  %spec.select133 = xor i8 %.0, %.sroa.092.0.extract.trunc
  br label %.critedge

.critedge43:                                      ; preds = %bb.n
  %i.at = icmp eq i32 %4, 6
  br i1 %i.at, label %.critedge, label %bb.q

.critedge43.thread:                               ; preds = %bb.j, %bb.k
  %i.au = icmp eq i32 %4, 6
  br i1 %i.au, label %.critedge, label %.thread166

bb.q:                                             ; preds = %.critedge43
  %i.av = icmp ult i8 %i.ai, 30
  br i1 %i.av, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread, label %.thread166

.thread166:                                       ; preds = %.critedge43.thread, %bb.q
  %i.aw = phi ptr [ %i.aj, %bb.q ], [ %.pre, %.critedge43.thread ] ; 7 uses
  %i.ax = phi i8 [ %i.ai, %bb.q ], [ 69, %.critedge43.thread ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.bc = and i32 %i.bb, 254
  %spec.select.i.i.i.i.i52 = icmp eq i32 %i.bc, 18
  br i1 %spec.select.i.i.i.i.i52, label %bb.r, label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i53

bb.r:                                             ; preds = %.thread166
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !172
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !173
  %.phi.trans.insert.i.i.i55 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.pre.i.i.i56 = load i32, ptr %.phi.trans.insert.i.i.i55, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i53

_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i53:  ; preds = %bb.r, %.thread166
  %i.bg = phi i32 [ %.pre.i.i.i56, %bb.r ], [ %i.bb, %.thread166 ]
  %i.bh = icmp eq i32 %i.bg, 268
  br i1 %i.bh, label %bb.s, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread

bb.s:                                             ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i53
  switch i8 %i.ax, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread [
    i8 60, label %bb.t
    i8 89, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = and i32 %i.bj, 1073741824
  %.not.i.i.i.i54 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i54, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i

bb.v:                                             ; preds = %bb.t
  %i.bn = and i32 %i.bj, 268435455
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %i.bp
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i

_ZNK4llvm4User10getOperandEj.exit37.i.i:          ; preds = %bb.v, %bb.u
  %.in.i.i = phi ptr [ %i.bm, %bb.u ], [ %i.bq, %bb.v ] ; 2 uses
  %i.br = load ptr, ptr %.in.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.not.i.i, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit37.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.in.i.i, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50 ; 2 uses
  %.not.i38.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i38.not.i.i, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.aa

bb.x:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds i8, ptr %i.aw, i64 -96
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !50 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.aw, i64 -32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !50 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !29
  %.not33.i.i = icmp eq ptr %i.bz, %i.az
  br i1 %.not33.i.i, label %bb.y, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds i8, ptr %i.aw, i64 -64
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !50 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !40
  %i.cd = icmp ugt i8 %i.cc, 22
  br i1 %i.cd, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = call noundef zeroext i1 @_ZNK4llvm8Constant10isOneValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cb) #27
  %.not.i43.not.i.i = icmp ne ptr %i.bx, null
  %or.cond168.not = select i1 %i.ce, i1 %.not.i43.not.i.i, i1 false
  br i1 %or.cond168.not, label %bb.aa, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.0145 = phi ptr [ %i.br, %bb.w ], [ %i.bv, %bb.z ]
  %.sink.i.i = phi ptr [ %i.bt, %bb.w ], [ %i.bx, %bb.z ]
  %i.cf = add i32 %4, 1                           ; 2 uses
  %i.cg = call i16 @_ZN4llvm18isImpliedConditionEPKNS_5ValueES2_RKNS_10DataLayoutEbj(ptr noundef %0, ptr noundef nonnull %.0145, ptr noundef nonnull align 8 dereferenceable(912) %2, i1 noundef zeroext %3, i32 noundef %i.cf) ; 2 uses
  %i.ch = icmp samesign ugt i16 %i.cg, 255
  %i.ci = trunc i16 %i.cg to i1
  %or.cond = and i1 %i.ch, %i.ci
  br i1 %or.cond, label %.critedge45, label %bb.ab

.critedge45:                                      ; preds = %bb.aa
  %i.cj = xor i8 %.0, 1
  br label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ck = call i16 @_ZN4llvm18isImpliedConditionEPKNS_5ValueES2_RKNS_10DataLayoutEbj(ptr noundef %0, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(912) %2, i1 noundef zeroext %3, i32 noundef %i.cf) ; 2 uses
  %i.cl = icmp samesign ugt i16 %i.ck, 255
  %i.cm = trunc i16 %i.ck to i1
  %or.cond134 = and i1 %i.cl, %i.cm
  br i1 %or.cond134, label %.critedge47, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread

.critedge47:                                      ; preds = %bb.ab
  %i.cn = xor i8 %.0, 1
  br label %.critedge

_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread: ; preds = %bb.s, %bb.x, %bb.z, %bb.w, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i53, %_ZNK4llvm4User10getOperandEj.exit37.i.i, %bb.y, %bb.q, %bb.ab
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !75  ; 8 uses
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !40  ; 2 uses
  %i.cq = icmp ult i8 %i.cp, 30
  br i1 %i.cq, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.cv = and i32 %i.cu, 254
  %spec.select.i.i.i.i.i59 = icmp eq i32 %i.cv, 18
  br i1 %spec.select.i.i.i.i.i59, label %bb.ad, label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i60

bb.ad:                                            ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !172
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !173
  %.phi.trans.insert.i.i.i71 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.pre.i.i.i72 = load i32, ptr %.phi.trans.insert.i.i.i71, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i60

_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i60:  ; preds = %bb.ad, %bb.ac
  %i.cz = phi i32 [ %.pre.i.i.i72, %bb.ad ], [ %i.cu, %bb.ac ]
  %i.da = icmp eq i32 %i.cz, 268
  br i1 %i.da, label %bb.ae, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

bb.ae:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i60
  switch i8 %i.cp, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj29ELb0EEEEEbPT_RKT0_.exit.thread [
    i8 59, label %bb.af
    i8 89, label %bb.aj
  ]

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = and i32 %i.dc, 1073741824
  %.not.i.i.i.i66 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i.i.i66, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i67

bb.ah:                                            ; preds = %bb.af
  %i.dg = and i32 %i.dc, 268435455
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.co, i64 %i.di
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i67

_ZNK4llvm4User10getOperandEj.exit37.i.i67:        ; preds = %bb.ah, %bb.ag
  %.in.i.i68 = phi ptr [ %i.df, %bb.ag ], [ %i.dj, %bb.ah ] ; 2 uses
  %i.dk = load ptr, ptr %.in.i.i68, align 8, !tbaa !50 ; 2 uses
  %.not.i.not.i.i69 = icmp eq ptr %i.dk, null
  br i1 %.not.i.not.i.i69, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit37.i.i67
  %i.dl = getelementptr inbounds nuw i8, ptr %.in.i.i68, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !50 ; 2 uses
  %.not.i38.not.i.i70 = icmp eq ptr %i.dm, null
  br i1 %.not.i38.not.i.i70, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj29ELb0EEEEEbPT_RKT0_.exit.thread, label %bb.am

bb.aj:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds i8, ptr %i.co, i64 -96
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !50 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.co, i64 -64
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !50 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29
  %.not33.i.i62 = icmp eq ptr %i.ds, %i.cs
  br i1 %.not33.i.i62, label %bb.ak, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj29ELb0EEEEEbPT_RKT0_.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dt = getelementptr inbounds i8, ptr %i.co, i64 -32
end_hunk_0
