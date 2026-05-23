inline.NumInlined: 5240
inline.NumDeleted: 880
begin_hunk_0_@_ZN6google8protobuf8internal8TcParser23VerifyHasBitConsistencyEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseE:bb.a
  %i.aw = icmp eq i16 %i.s, 32
  br i1 %i.aw, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %bb.h
  br i1 %.not76, label %bb.j, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70

bb.j:                                             ; preds = %bb.i
  %i.ax = zext i16 %i.r to i32                    ; 2 uses
  %i.ay = and i32 %i.ax, 7
  switch i32 %i.ay, label %default.unreachable.i [
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 4, label %bb.k
    i32 5, label %bb.s
    i32 6, label %bb.v
    i32 7, label %bb.x
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %i.az = and i16 %i.r, 448
  %i.ba = load i32, ptr %.080, align 4, !tbaa !58
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.061, i64 %i.bb ; 6 uses
  switch i16 %i.az, label %bb.r [
    i16 0, label %bb.l
    i16 128, label %bb.n
    i16 192, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %.not77, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, label %bb.m, !prof !29

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !59
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.bd, %bb.m ], [ %i.bc, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  br label %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit

bb.n:                                             ; preds = %bb.k
  br i1 %.not77, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, label %bb.o, !prof !29

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !61
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i39.i = phi ptr [ %i.bf, %bb.o ], [ %i.bc, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i39.i, i64 4
  br label %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit

bb.p:                                             ; preds = %bb.k
  br i1 %.not77, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, label %bb.q, !prof !29

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !63
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i40.i = phi ptr [ %i.bh, %bb.q ], [ %i.bc, %bb.p ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i40.i, i64 4
  br label %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit

bb.r:                                             ; preds = %bb.k
  unreachable

bb.s:                                             ; preds = %bb.j
  %i.bj = and i32 %i.ax, 448
  %i.bk = icmp eq i32 %i.bj, 128
  br i1 %i.bk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bl = load i32, ptr %.080, align 4, !tbaa !58
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.061, i64 %i.bm ; 2 uses
  br i1 %.not77, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !65
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i: ; preds = %bb.u, %bb.t
  %.0.i.i41.i = phi ptr [ %i.bo, %bb.u ], [ %i.bn, %bb.t ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i41.i, i64 4
  br label %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit

bb.v:                                             ; preds = %bb.s, %bb.j
  %i.bq = load i32, ptr %.080, align 4, !tbaa !58
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.061, i64 %i.br ; 2 uses
  br i1 %.not77, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, label %bb.w, !prof !29

bb.w:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !67
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i42.i = phi ptr [ %i.bt, %bb.w ], [ %i.bs, %bb.v ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i42.i, i64 8
  br label %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit

bb.x:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.080, i64 8
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !36
  %i.bx = ptrtoint ptr %i.af to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !38
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = zext i16 %i.bw to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.sroa.3.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !39
  %i.cf = and i8 %.sroa.3.0.copyload.i, 2
  %.not.i = icmp eq i8 %i.cf, 0
  %i.cg = load i32, ptr %.080, align 4, !tbaa !58
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.061, i64 %i.ch ; 4 uses
  br i1 %.not.i, label %bb.y, label %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit

bb.y:                                             ; preds = %bb.x
  %i.cj = load atomic ptr, ptr %i.ci acquire, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = trunc i64 %i.ck to i1
  br i1 %i.cl, label %bb.z, label %_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit.i, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.cm = load atomic ptr, ptr @_ZN6google8protobuf8internal20MapFieldBaseForParse22sync_map_with_repeatedE monotonic, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i1 noundef zeroext false), !inline_history !69
  br label %_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit.i

_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit.i: ; preds = %bb.z, %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  br label %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit

default.unreachable.i:                            ; preds = %bb.j
  unreachable

_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit: ; preds = %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i, %bb.x, %_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit.i
  %.0.in.in.i = phi ptr [ %i.be, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i ], [ %i.bg, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i ], [ %i.bi, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i ], [ %i.bu, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i ], [ %i.bp, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit.i ], [ %i.cn, %_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit.i ], [ %i.ci, %bb.x ]
  %.0.in.i = load i32, ptr %.0.in.in.i, align 4, !tbaa !3
  %.0.i = icmp eq i32 %.0.in.i, 0
  br i1 %.0.i, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread

bb.aa:                                            ; preds = %bb.h
  %i.co = zext i16 %i.r to i32                    ; 2 uses
  %i.cp = and i32 %i.co, 7
  switch i32 %i.cp, label %bb.av [
    i32 1, label %bb.ab
    i32 3, label %bb.ab
    i32 5, label %bb.ag
    i32 6, label %bb.at
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  br i1 %.not76, label %bb.ac, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70

bb.ac:                                            ; preds = %bb.ab
  %i.cq = and i16 %i.r, 448
  switch i16 %i.cq, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70 [
    i16 0, label %bb.ad
    i16 128, label %bb.ae
    i16 192, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load i32, ptr %.080, align 4, !tbaa !58
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.061, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !70, !range !71, !noundef !72
  %i.cv = getelementptr inbounds nuw i8, ptr %.060, i64 %i.cs
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !70, !range !71, !noundef !72
  %.not65 = icmp eq i8 %i.cu, %i.cw
  br i1 %.not65, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread

bb.ae:                                            ; preds = %bb.ac
  %i.cx = load i32, ptr %.080, align 4, !tbaa !58
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.061, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %.060, i64 %i.cy
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %.not64 = icmp eq i32 %i.da, %i.dc
  br i1 %.not64, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread

bb.af:                                            ; preds = %bb.ac
  %i.dd = load i32, ptr %.080, align 4, !tbaa !58
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.061, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !73
  %i.dh = getelementptr inbounds nuw i8, ptr %.060, i64 %i.de
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !73
  %.not63 = icmp eq i64 %i.dg, %i.di
  br i1 %.not63, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.dj = and i32 %i.co, 448
  switch i32 %i.dj, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70 [
    i32 0, label %bb.ah
    i32 128, label %bb.aj
    i32 64, label %bb.aq
  ]

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not76, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load i32, ptr %.080, align 4, !tbaa !58
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.061, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !74
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = and i64 %i.do, 3
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70

bb.aj:                                            ; preds = %bb.ag
  br i1 %.not76, label %bb.ak, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70

bb.ak:                                            ; preds = %bb.aj
  %i.dr = load i32, ptr %.080, align 4, !tbaa !58
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.061, i64 %i.ds ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.060, i64 %i.ds ; 4 uses
  %i.dv = load i128, ptr %i.dt, align 1
  %i.dw = load i128, ptr %i.du, align 1
  %i.dx = icmp ne i128 %i.dv, %i.dw
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = load i8, ptr %i.du, align 1, !tbaa !39  ; 2 uses
  %i.eb = trunc i8 %i.ea to i1
  br i1 %i.eb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !39
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !76
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.ef = sext i8 %i.ea to i64
  %i.eg = lshr exact i64 %i.ef, 1
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i

_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i:     ; preds = %bb.an, %bb.am
  %i.eh = phi i64 [ %i.ee, %bb.am ], [ %i.eg, %bb.an ] ; 2 uses
  %i.ei = load i8, ptr %i.dt, align 1, !tbaa !39  ; 2 uses
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !39
  %i.em = load i64, ptr %i.el, align 8, !tbaa !76
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i

bb.ap:                                            ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i
  %i.en = sext i8 %i.ei to i64
  %i.eo = lshr exact i64 %i.en, 1
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i

_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i:    ; preds = %bb.ap, %bb.ao
  %i.ep = phi i64 [ %i.em, %bb.ao ], [ %i.eo, %bb.ap ]
  %.not.i.i = icmp eq i64 %i.ep, %i.eh
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread

_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit:    ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i
  %i.eq = call noundef zeroext i1 @_ZNK4absl12lts_202505124Cord10EqualsImplERKS1_m(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 noundef %i.eh)
  br i1 %i.eq, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread

bb.aq:                                            ; preds = %bb.ag
  br i1 %.not76, label %bb.ar, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70

bb.ar:                                            ; preds = %bb.aq
  %i.er = load i32, ptr %.080, align 4, !tbaa !58
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.061, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.060, i64 %i.es ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !81 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !81
  %i.ez = icmp eq i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.as, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.fa = icmp eq i64 %i.ew, 0
  br i1 %i.fa, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.as
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !84
  %i.fc = load ptr, ptr %i.et, align 8, !tbaa !84
  %bcmp.i.i = call i32 @bcmp(ptr %i.fc, ptr %i.fb, i64 %i.ew)
  %.not78 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not78, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread

bb.at:                                            ; preds = %bb.aa
  br i1 %.not76, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fd = load i32, ptr %.080, align 4, !tbaa !58
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.061, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !40
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread, label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70

bb.av:                                            ; preds = %bb.aa
  unreachable

_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70: ; preds = %bb.as, %bb.ak, %bb.e, %bb.ab, %bb.d, %bb.i, %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit, %bb.au, %bb.at, %bb.ag, %bb.ah, %bb.ai, %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit, %bb.aj, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.aq, %bb.ac, %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.fi = getelementptr inbounds nuw i8, ptr %.080, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.fi, %i.n
  br i1 %.not, label %._crit_edge, label %bb.d

_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread: ; preds = %bb.au, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.ar, %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit, %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i, %bb.ai, %bb.af, %bb.ae, %bb.ad, %_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb.exit
  call fastcc void @"_ZZN6google8protobuf8internal8TcParser23VerifyHasBitConsistencyEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseEENK3$_0clEv"(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.aw

._crit_edge:                                      ; preds = %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread70, %bb.c
  store i64 1, ptr %0, align 8, !tbaa !42, !alias.scope !85
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit.thread, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb(ptr noundef readnone captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !55   ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %default.unreachable [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.j
    i32 6, label %bb.m
    i32 7, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = and i16 %i.b, 448
  %i.f = load i32, ptr %2, align 4, !tbaa !58
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g ; 6 uses
  switch i16 %i.e, label %bb.i [
    i16 0, label %bb.c
    i16 128, label %bb.e
    i16 192, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %4, label %bb.d, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  br i1 %4, label %bb.f, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !61
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit: ; preds = %bb.e, %bb.f
  %.0.i.i39 = phi ptr [ %i.k, %bb.f ], [ %i.h, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 4
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  br i1 %4, label %bb.h, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !63
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit: ; preds = %bb.g, %bb.h
  %.0.i.i40 = phi ptr [ %i.m, %bb.h ], [ %i.h, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 4
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.o = and i32 %i.c, 448
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal8TcParser7FastUR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !135
  %.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !134
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  store ptr %.0.i7, ptr %i.h, align 8, !tbaa !131
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = sext i32 %i.bi to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cb
  store ptr %.0.i7, ptr %i.cc, align 8, !tbaa !57
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !131 ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !135
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %bb.r, %bb.q, %bb.p
  %i.ck = phi ptr [ %.0.i7, %bb.q ], [ %i.cd, %bb.r ], [ %i.bt, %bb.p ]
  %i.cl = phi i32 [ %i.bi, %bb.q ], [ %i.bi, %bb.r ], [ %.pre.i.i, %bb.p ]
  %i.cm = add nsw i32 %i.cl, 1                    ; 2 uses
  store i32 %i.cm, ptr %i.ak, align 4, !tbaa !3
  %i.cn = icmp eq ptr %.0.i11, null
  br i1 %i.cn, label %.critedge55.i, label %bb.s, !prof !186

bb.s:                                             ; preds = %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.co = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cp = and i64 %i.co, 1
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = add i64 %i.co, -1
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = sext i32 %i.cm to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct
  %.0.i.i.i.i.i = select i1 %i.cq, ptr %i.h, ptr %i.cu
  %i.cv = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !84
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !81
  %i.cz = tail call i32 @utf8_range_IsValid(ptr noundef %i.cw, i64 noundef %i.cy)
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit, !prof !7

_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread: ; preds = %bb.s
  %i.da = zext i16 %.0.copyload.i.i to i32        ; 2 uses
  %sext.i.i = shl i32 %i.da, 24
  %i.db = ashr exact i32 %sext.i.i, 24
  %i.dc = add nsw i32 %i.db, %i.da
  %i.dd = lshr i32 %i.dc, 1
  tail call void @_ZN6google8protobuf8internal8TcParser19ReportFastUtf8ErrorEjPKNS1_16TcParseTableBaseE(i32 noundef %i.dd, ptr noundef %4)
  br label %.critedge55.i

.critedge55.i:                                    ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread
  %i.de = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.de

_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit: ; preds = %bb.s
  %i.df = load ptr, ptr %2, align 8, !tbaa !108
  %i.dg = icmp ult ptr %.0.i11, %i.df
  br i1 %i.dg, label %bb.t, label %common.ret, !prof !29

bb.t:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit
  %.0.copyload.i.i12 = load i16, ptr %.0.i11, align 1 ; 2 uses
  %i.dh = icmp eq i16 %.0.copyload.i.i12, %.0.copyload.i.i
  br i1 %i.dh, label %bb.k, label %.loopexit61, !llvm.loop !366

.preheader:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit, %bb.g, %bb.c, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %.0.i.i.i.i45.ph = phi ptr [ %.0.i.i.i.i, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit ], [ %.0.i.i.i.i, %bb.g ], [ null, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit ], [ null, %bb.c ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.w
  %.1.i = phi ptr [ %i.dl, %bb.w ], [ %1, %.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  %i.dk = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i45.ph)
  %i.dl = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.dk, ptr noundef nonnull %i.dj, ptr noundef %2) ; 6 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.critedge57.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  %i.dn = load i32, ptr %i.di, align 8, !tbaa !134
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.dp = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dq = and i64 %i.dp, 1
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = add i64 %i.dp, -1
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = sext i32 %i.dn to i64
  %i.dv = getelementptr [8 x i8], ptr %i.dt, i64 %i.du
  %.0.i.i.i.i.i13 = select i1 %i.dr, ptr %i.h, ptr %i.dv
  %i.dw = load ptr, ptr %.0.i.i.i.i.i13, align 8, !tbaa !57 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !84
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !81
  %i.ea = tail call i32 @utf8_range_IsValid(ptr noundef %i.dx, i64 noundef %i.dz)
  %.not60 = icmp eq i32 %i.ea, 0
  br i1 %.not60, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15.thread, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15, !prof !7

_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15.thread: ; preds = %bb.v
  %i.eb = zext i16 %.0.copyload.i.i to i32        ; 2 uses
  %sext.i.i14 = shl i32 %i.eb, 24
  %i.ec = ashr exact i32 %sext.i.i14, 24
  %i.ed = add nsw i32 %i.ec, %i.eb
  %i.ee = lshr i32 %i.ed, 1
  tail call void @_ZN6google8protobuf8internal8TcParser19ReportFastUtf8ErrorEjPKNS1_16TcParseTableBaseE(i32 noundef %i.ee, ptr noundef %4)
  br label %.critedge57.i

.critedge57.i:                                    ; preds = %bb.u, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15.thread
  %i.ef = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.ef

_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15: ; preds = %bb.v
  %i.eg = load ptr, ptr %2, align 8, !tbaa !108
  %i.eh = icmp ult ptr %i.dl, %i.eg
  br i1 %i.eh, label %bb.w, label %common.ret

bb.w:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15
  %.0.copyload.i.i16 = load i16, ptr %i.dl, align 1 ; 2 uses
  %i.ei = icmp eq i16 %.0.copyload.i.i16, %.0.copyload.i.i
  br i1 %i.ei, label %bb.u, label %.loopexit61, !llvm.loop !367

common.ret:                                       ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15
  %common.ret.op = phi ptr [ %i.dl, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15 ], [ %.0.i11, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit ]
  %i.ej = load i16, ptr %4, align 8, !tbaa !8
  %i.ek = trunc i64 %i.f to i32
  %i.el = zext i16 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = or i32 %i.en, %i.ek
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !3
  ret ptr %common.ret.op

.loopexit61:                                      ; preds = %bb.t, %bb.w
  %.0.copyload.i.i17 = phi i16 [ %.0.copyload.i.i16, %bb.w ], [ %.0.copyload.i.i12, %bb.t ] ; 2 uses
  %.2.i = phi ptr [ %i.dl, %bb.w ], [ %.0.i11, %bb.t ]
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !112
  %i.er = zext i8 %i.eq to i16
  %i.es = and i16 %.0.copyload.i.i17, %i.er
  %i.et = zext nneg i16 %i.es to i64              ; 2 uses
  %i.eu = and i64 %i.et, 7
  %i.ev = icmp eq i64 %i.eu, 0
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = lshr exact i64 %i.et, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ez, align 8, !tbaa !39
  %i.fa = zext i16 %.0.copyload.i.i17 to i64
  %i.fb = xor i64 %.sroa.01.0.copyload.i, %i.fa
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !113
  %i.fd = musttail call noundef ptr %i.fc(ptr noundef nonnull %0, ptr noundef nonnull %.2.i, ptr noundef nonnull %2, i64 %i.fb, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.fd
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastBcR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastBcR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastUcR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastUcR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal8TcParser9InitOneofEPKNS1_16TcParseTableBaseES5_RKNS3_10FieldEntryEPNS0_11MessageLiteE(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !55   ; 2 uses
  %i.c = and i16 %i.b, 7
  switch i16 %i.c, label %bb.n [
    i16 5, label %bb.b
    i16 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 448
  switch i16 %i.d, label %bb.j [
    i16 0, label %bb.c
    i16 320, label %bb.d
    i16 128, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !58
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %i.f
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE to i64), ptr %i.g, align 8, !tbaa !57
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %2, align 4, !tbaa !58
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  store ptr null, ptr %i.j, align 8, !tbaa !320
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27   ; 3 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i64 %i.l, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.g:                                             ; preds = %bb.e
  %i.q = inttoptr i64 %i.l to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.p, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %i.r = icmp eq ptr %.0.i.i, null
  br i1 %i.r, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.s = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.t = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i, i64 noundef 16, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505124CordEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  %i.u = load i32, ptr %2, align 4, !tbaa !58
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  store ptr %.sink, ptr %i.w, align 8, !tbaa !368
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.x = load i32, ptr %2, align 4, !tbaa !58
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !27 ; 3 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit20

bb.m:                                             ; preds = %bb.k
  %i.ag = inttoptr i64 %i.ab to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit20

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit20: ; preds = %bb.l, %bb.m
  %.0.i.i19 = phi ptr [ %i.af, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.al = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef %i.ak, ptr noundef %i.ak, ptr noundef %.0.i.i19)
  store ptr %i.al, ptr %i.z, align 8, !tbaa !40
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit20, %bb.c, %bb.d, %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505124CordEJEEEPT_PS1_DpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal8TcParser11ChangeOneofEPKNS1_16TcParseTableBaseES5_RKNS3_10FieldEntryEjPNS1_12ParseContextEPNS0_11MessageLiteE(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, i32 noundef %3, ptr readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 7 uses
  store i32 %3, ptr %i.d, align 4, !tbaa !3
  %i.f = icmp eq i32 %i.e, %3
  br i1 %i.f, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = zext i32 %i.j to i64
  %i.l = add i64 %i.k, %i.h
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = add i32 %i.e, -1                         ; 2 uses
  %i.o = icmp ult i32 %i.e, 33
  br i1 %i.o, label %bb.d, label %bb.f, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31   ; 2 uses
  %i.r = shl nuw i32 1, %i.n                      ; 2 uses
  %i.s = and i32 %i.q, %i.r
  %.not57.i = icmp eq i32 %i.s, 0
  br i1 %.not57.i, label %bb.e, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %i.r, -1
  %i.u = and i32 %i.q, %i.t
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %i.w = sub nsw i32 %i.n, %i.v
  br label %.thread.sink.split.i

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !32
  %i.z = zext i16 %i.y to i64
  %i.aa = add i64 %i.z, %i.h
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %.0.copyload65.i = load i32, ptr %i.ab, align 2 ; 2 uses
  %i.ac = icmp ult i32 %i.e, %.0.copyload65.i
  br i1 %i.ac, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %.pn.i = phi ptr [ %i.az, %bb.i ], [ %i.ab, %bb.f ] ; 2 uses
  %.0.copyload66.i = phi i32 [ %.0.copyload.i, %bb.i ], [ %.0.copyload65.i, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn.i, i64 6 ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %i.ae = load i16, ptr %.in.i, align 2, !tbaa !33 ; 2 uses
  %i.af = zext i16 %i.ae to i32
  %i.ag = sub nuw i32 %i.e, %.0.copyload66.i      ; 2 uses
  %i.ah = lshr i32 %i.ag, 4                       ; 2 uses
  %.not61.i = icmp samesign ult i32 %i.ah, %i.af
  br i1 %.not61.i, label %bb.g, label %bb.i, !prof !29

bb.g:                                             ; preds = %.lr.ph.i
  %i.ai = shl nuw nsw i32 %i.ah, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.aj ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !33
  %i.am = and i32 %i.ag, 15                       ; 2 uses
  %i.an = zext i16 %i.al to i32                   ; 2 uses
  %i.ao = shl nuw nsw i32 1, %i.am                ; 2 uses
  %i.ap = and i32 %i.ao, %i.an
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.h, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !33
  %i.as = add nuw nsw i32 %i.ao, 65535
  %i.at = and i32 %i.as, %i.an
  %i.au = zext i16 %i.ar to i32
  %i.av = tail call noundef range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.at)
  %i.aw = sub nsw i32 %i.am, %i.av
  %i.ax = add nsw i32 %i.aw, %i.au
  br label %.thread.sink.split.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ay = zext i16 %i.ae to i64
  %.idx.i = shl nuw nsw i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i ; 2 uses
  %.0.copyload.i = load i32, ptr %i.az, align 2   ; 2 uses
  %i.ba = icmp ult i32 %i.e, %.0.copyload.i
  br i1 %i.ba, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit, label %.lr.ph.i, !llvm.loop !34

.thread.sink.split.i:                             ; preds = %bb.h, %bb.e
  %.sink80.i = phi i32 [ %i.ax, %bb.h ], [ %i.w, %bb.e ]
  %i.bb = zext i32 %.sink80.i to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit

_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit: ; preds = %bb.i, %bb.d, %bb.f, %bb.g, %.thread.sink.split.i
  %.5.i = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ %i.bc, %.thread.sink.split.i ], [ null, %bb.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.5.i, i64 10
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !55 ; 2 uses
  %i.bf = and i16 %i.be, 7
  switch i16 %i.bf, label %.sink.split [
    i16 5, label %bb.j
    i16 6, label %bb.w
  ]

bb.j:                                             ; preds = %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit
  %i.bg = and i16 %i.be, 448
  switch i16 %i.bg, label %bb.v [
    i16 0, label %bb.k
    i16 320, label %bb.l
    i16 128, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.bh = load i32, ptr %.5.i, align 4, !tbaa !58
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 %i.bi
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !27 ; 3 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.bn = add nsw i64 %i.bl, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bq = inttoptr i64 %i.bl to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.m, %bb.n
  %.0.i.i = phi ptr [ %i.bp, %bb.m ], [ %i.bq, %bb.n ]
  %i.br = icmp eq ptr %.0.i.i, null
  br i1 %i.br, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.bs = load i32, ptr %.5.i, align 4, !tbaa !58
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 %i.bt ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !320
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, 3
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN6google8protobuf8internal11MicroString11DestroySlowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
  br label %.sink.split

bb.q:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !27 ; 3 uses
  %i.cb = trunc i64 %i.ca to i1
  br i1 %i.cb, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.cc = add nsw i64 %i.ca, -1
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit41

bb.s:                                             ; preds = %bb.q
  %i.cf = inttoptr i64 %i.ca to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit41

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit41: ; preds = %bb.r, %bb.s
  %.0.i.i40 = phi ptr [ %i.ce, %bb.r ], [ %i.cf, %bb.s ]
  %i.cg = icmp eq ptr %.0.i.i40, null
  br i1 %i.cg, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit41
  %i.ch = load i32, ptr %.5.i, align 4, !tbaa !58
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !368 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ck) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 16) #27
  br label %.sink.split

bb.v:                                             ; preds = %bb.j
  unreachable

bb.w:                                             ; preds = %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit
  %i.cm = load i32, ptr %.5.i, align 4, !tbaa !58
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !27 ; 3 uses
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %bb.x, label %bb.y, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.cs = add nsw i64 %i.cq, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit43

bb.y:                                             ; preds = %bb.w
  %i.cv = inttoptr i64 %i.cq to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit43

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit43: ; preds = %bb.x, %bb.y
  %.0.i.i42 = phi ptr [ %i.cu, %bb.x ], [ %i.cv, %bb.y ]
  %.not = icmp eq ptr %.0.i.i42, null
  br i1 %.not, label %bb.z, label %.sink.split

bb.z:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit43
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !40 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !140
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cw) #26
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit41, %bb.u, %bb.t, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %bb.k, %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit, %bb.z, %bb.aa, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit43, %bb.o, %bb.p, %bb.b
  tail call void @_ZN6google8protobuf8internal8TcParser9InitOneofEPKNS1_16TcParseTableBaseES5_RKNS3_10FieldEntryEPNS0_11MessageLiteE(ptr poison, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef %5)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  ret void
}

declare void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !39
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE(ptr noundef captures(ret: address, provenance) %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %1, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  %i.d = zext i32 %i.c to i64
  %i.e = add i64 %i.d, %i.a
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = zext i32 %i.g to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27   ; 3 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i64 %i.t, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = inttoptr i64 %i.t to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.x, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %i.z = icmp eq ptr %.0.i.i, null
  %i.aa = zext i32 %i.r to i64                    ; 3 uses
  br i1 %i.z, label %bb.f, label %bb.g

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal8TcParser8MpVarintILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  br i1 %i.bx, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %i.n, label %bb.v, label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.by = lshr i64 %.0122.ph, 1
  %i.bz = and i64 %.0122.ph, 1
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.by, %i.ca
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread

bb.w:                                             ; preds = %bb.t
  %i.cc = icmp eq i16 %i.bw, 128
  br i1 %i.cc, label %bb.x, label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread

bb.x:                                             ; preds = %bb.w
  br i1 %.not70, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = trunc i64 %.0122.ph to i32              ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !36
  %i.cg = ptrtoint ptr %4 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !38
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = zext i16 %i.cf to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %.sroa.03.0.copyload = load ptr, ptr %i.cn, align 8, !tbaa !39 ; 2 uses
  %i.co = icmp eq i16 %i.m, 1536
  br i1 %i.co, label %bb.z, label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit

bb.z:                                             ; preds = %bb.y
  %i.cp = ptrtoint ptr %.sroa.03.0.copyload to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.cp to i32
  %i.cq = icmp sge i32 %i.cd, %.sroa.0.0.extract.trunc.i
  %.sroa.0.4.extract.shift.i = lshr i64 %i.cp, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.cr = icmp sle i32 %i.cd, %.sroa.0.4.extract.trunc.i
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread143

_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit: ; preds = %bb.y
  %i.ct = tail call noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef %i.cd, ptr noundef %.sroa.03.0.copyload)
  br i1 %i.ct, label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread143

_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread143: ; preds = %bb.z, %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit
  %i.cu = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser21MpUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.cu

bb.aa:                                            ; preds = %bb.x
  br i1 %i.n, label %bb.ab, label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cv = trunc i64 %.0122.ph to i32              ; 2 uses
  %i.cw = lshr i32 %i.cv, 1
  %i.cx = and i32 %i.cv, 1
  %i.cy = sub nsw i32 0, %i.cx
  %i.cz = xor i32 %i.cw, %i.cy
  %i.da = sext i32 %i.cz to i64
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread: ; preds = %bb.z, %bb.w, %bb.aa, %bb.ab, %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit, %bb.u, %bb.v
  %.0121 = phi i64 [ %i.cb, %bb.v ], [ %.0122.ph, %bb.u ], [ %i.da, %bb.ab ], [ %.0122.ph, %bb.aa ], [ %.0122.ph, %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit ], [ %.0122.ph, %bb.w ], [ %.0122.ph, %bb.z ] ; 3 uses
  switch i16 %i.e, label %bb.ae [
    i16 16, label %bb.ac
    i16 48, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread
  %i.db = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.db, align 4, !tbaa !56 ; 2 uses
  %i.dc = lshr i32 %.val, 3
  %i.dd = and i32 %i.dc, 536870908
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.de ; 2 uses
  %i.dg = and i32 %.val, 31
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dj = or i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !3
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread
  %i.dk = lshr exact i32 %i.h, 3
  tail call void @_ZN6google8protobuf8internal8TcParser11ChangeOneofEPKNS1_16TcParseTableBaseES5_RKNS3_10FieldEntryEjPNS1_12ParseContextEPNS0_11MessageLiteE(ptr noundef %4, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i32 noundef %i.dk, ptr poison, ptr noundef %0)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread, %bb.ad, %bb.ac
  br i1 %i.bx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dl = load i32, ptr %i.b, align 4, !tbaa !58
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  store i64 %.0121, ptr %i.dn, align 8, !tbaa !73
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.do = icmp eq i16 %i.bw, 128
  %i.dp = load i32, ptr %i.b, align 4, !tbaa !58
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq ; 2 uses
  br i1 %i.do, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ds = trunc i64 %.0121 to i32
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !3
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dt = icmp ne i64 %.0121, 0
  %i.du = zext i1 %i.dt to i8
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !70
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.af
  %i.dv = load ptr, ptr %2, align 8, !tbaa !108
  %i.dw = icmp ult ptr %.0.i72.ph, %i.dv
  br i1 %i.dw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = load i16, ptr %4, align 8, !tbaa !8
  %i.dy = trunc i64 %5 to i32
  %i.dz = zext i16 %i.dx to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = or i32 %i.eb, %i.dy
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !3
  ret ptr %.0.i72.ph

bb.al:                                            ; preds = %bb.aj
  %.0.copyload.i.i = load i16, ptr %.0.i72.ph, align 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !112
  %i.ef = zext i8 %i.ee to i16
  %i.eg = and i16 %.0.copyload.i.i, %i.ef
  %i.eh = zext nneg i16 %i.eg to i64              ; 2 uses
  %i.ei = and i64 %i.eh, 7
  %i.ej = icmp eq i64 %i.ei, 0
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = lshr exact i64 %i.eh, 3
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ek ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.en, align 8, !tbaa !39
  %i.eo = zext i16 %.0.copyload.i.i to i64
  %i.ep = xor i64 %.sroa.01.0.copyload.i, %i.eo
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !113
  %i.er = musttail call noundef ptr %i.eq(ptr noundef nonnull %0, ptr noundef nonnull %.0.i72.ph, ptr noundef nonnull %2, i64 %i.ep, ptr noundef nonnull %4, i64 noundef %5), !inline_history !116
  ret ptr %i.er
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal8TcParser14MpPackedVarintILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) #7 comdat align 2 {
bb.a:
  %6 = alloca %class.anon.84, align 8             ; 9 uses
  %7 = alloca %class.anon.81, align 8             ; 9 uses
  %i.a = lshr i64 %3, 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !55   ; 2 uses
  %i.e = and i64 %3, 7
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser16MpRepeatedVarintILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.g, align 4, !tbaa !56  ; 3 uses
  %i.h = icmp eq i32 %.val, -1
  br i1 %i.h, label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i32 %.val, 3
  %i.j = and i32 %i.i, 536870908
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = and i32 %.val, 31
  %i.n = shl nuw i32 1, %i.m
  %i.o = load i32, ptr %i.l, align 4, !tbaa !3
  %i.p = or i32 %i.o, %i.n
  store i32 %i.p, ptr %i.l, align 4, !tbaa !3
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit: ; preds = %bb.c, %bb.d
  %i.q = and i16 %i.d, 1536                       ; 2 uses
  %i.r = load i16, ptr %4, align 8, !tbaa !8
  %i.s = trunc i64 %5 to i32
  %i.t = zext i16 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = or i32 %i.v, %i.s
  store i32 %i.w, ptr %i.u, align 4, !tbaa !3
  %i.x = and i16 %i.d, 448
  switch i16 %i.x, label %bb.ab [
    i16 192, label %bb.e
    i16 128, label %bb.l
    i16 0, label %bb.y
  ]

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.y = icmp eq i16 %i.q, 0
  %i.z = load i32, ptr %i.b, align 4, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !27 ; 5 uses
  %i.ac = trunc i64 %i.ab to i1                   ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !152
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = inttoptr i64 %i.ab to ptr
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

common.ret:                                       ; preds = %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EbLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %common.ret.op = phi ptr [ %i.aj, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ], [ %i.aq, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ], [ %i.bc, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ], [ %i.bj, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ], [ %i.ca, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ], [ %i.cr, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ], [ %i.dc, %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EbLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ]
  ret ptr %common.ret.op

_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi ptr [ %i.af, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = zext i32 %i.z to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %1, ptr nonnull %i.ai, ptr %.0.i.i.i)
  br label %common.ret

bb.i:                                             ; preds = %bb.e
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i64 %i.ab, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !152
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.k:                                             ; preds = %bb.i
  %i.an = inttoptr i64 %i.ab to ptr
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EmLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i59 = phi ptr [ %i.am, %bb.j ], [ %i.an, %bb.k ]
  %i.ao = zext i32 %i.z to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.aq = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser15MpPackedVarintTILb0EmLt512EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %1, ptr nonnull %i.ap, ptr %.0.i.i.i59)
  br label %common.ret

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.ar = lshr exact i16 %i.q, 9
  %i.as = load i32, ptr %i.b, align 4, !tbaa !58  ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27 ; 9 uses
  %i.av = trunc i64 %i.au to i1                   ; 4 uses
  switch i16 %i.ar, label %default.unreachable80 [
    i16 0, label %bb.m
    i16 1, label %bb.p
    i16 2, label %bb.s
    i16 3, label %bb.v
  ]

bb.m:                                             ; preds = %bb.l
  br i1 %i.av, label %bb.n, label %bb.o, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !152
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.o:                                             ; preds = %bb.m
  %i.az = inttoptr i64 %i.au to ptr
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i60 = phi ptr [ %i.ay, %bb.n ], [ %i.az, %bb.o ]
  %i.ba = zext i32 %i.as to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %i.bc = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser15MpPackedVarintTILb0EjLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %1, ptr nonnull %i.bb, ptr %.0.i.i.i60)
  br label %common.ret

bb.p:                                             ; preds = %bb.l
  br i1 %i.av, label %bb.q, label %bb.r, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.bd = add nsw i64 %i.au, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !152
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.r:                                             ; preds = %bb.p
  %i.bg = inttoptr i64 %i.au to ptr
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.q, %bb.r
  %.0.i.i.i61 = phi ptr [ %i.bf, %bb.q ], [ %i.bg, %bb.r ]
  %i.bh = zext i32 %i.as to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh
  %i.bj = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser15MpPackedVarintTILb0EjLt512EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %1, ptr nonnull %i.bi, ptr %.0.i.i.i61)
  br label %common.ret

bb.s:                                             ; preds = %bb.l
  br i1 %i.av, label %bb.t, label %bb.u, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.bk = add nsw i64 %i.au, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !152
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.u:                                             ; preds = %bb.s
  %i.bn = inttoptr i64 %i.au to ptr
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.t, %bb.u
  %.0.i.i.i62 = phi ptr [ %i.bm, %bb.t ], [ %i.bn, %bb.u ]
  %i.bo = zext i32 %i.as to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !36
  %i.bs = ptrtoint ptr %4 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !38
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add i64 %i.bv, %i.bs
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = zext i16 %i.br to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %.sroa.01.0.copyload.i = load ptr, ptr %i.bz, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.01.0.copyload.i, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %3, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %.0.i.i.i62, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.ca = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser15MpPackedVarintTILb0EjLt1024EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %1, ptr noundef nonnull byval(%class.anon.81) align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %common.ret

bb.v:                                             ; preds = %bb.l
  br i1 %i.av, label %bb.w, label %bb.x, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.cb = add nsw i64 %i.au, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !152
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.x:                                             ; preds = %bb.v
  %i.ce = inttoptr i64 %i.au to ptr
  br label %_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb0EjLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.w, %bb.x
  %.0.i.i.i63 = phi ptr [ %i.cd, %bb.w ], [ %i.ce, %bb.x ]
  %i.cf = zext i32 %i.as to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !36
  %i.cj = ptrtoint ptr %4 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add i64 %i.cm, %i.cj
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = zext i16 %i.ci to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %.sroa.01.0.copyload.i64 = load ptr, ptr %i.cq, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.01.0.copyload.i64, ptr %6, align 8
  %.sroa.2.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i65, align 8
  %.sroa.3.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx.i66, align 8
  %.sroa.4.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %3, ptr %.sroa.4.0..sroa_idx.i67, align 8
  %.sroa.5.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx.i68, align 8
  %.sroa.6.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.0.i.i.i63, ptr %.sroa.6.0..sroa_idx.i69, align 8
  %i.cr = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser15MpPackedVarintTILb0EjLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %1, ptr noundef nonnull byval(%class.anon.84) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %common.ret

default.unreachable80:                            ; preds = %bb.l
  unreachable

bb.y:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal8TcParser8MpVarintILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.cw = lshr i32 %i.cv, 1
  %i.cx = and i32 %i.cv, 1
  %i.cy = sub nsw i32 0, %i.cx
  %i.cz = xor i32 %i.cw, %i.cy
  %i.da = sext i32 %i.cz to i64
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread: ; preds = %bb.z, %bb.w, %bb.aa, %bb.ab, %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit, %bb.u, %bb.v
  %.0121 = phi i64 [ %i.cb, %bb.v ], [ %.0122.ph, %bb.u ], [ %i.da, %bb.ab ], [ %.0122.ph, %bb.aa ], [ %.0122.ph, %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit ], [ %.0122.ph, %bb.w ], [ %.0122.ph, %bb.z ] ; 3 uses
  switch i16 %i.e, label %bb.ae [
    i16 16, label %bb.ac
    i16 48, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread
  %i.db = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.db, align 4, !tbaa !56 ; 2 uses
  %i.dc = lshr i32 %.val, 3
  %i.dd = and i32 %i.dc, 536870908
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.de ; 2 uses
  %i.dg = and i32 %.val, 31
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dj = or i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !3
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread
  %i.dk = lshr exact i32 %i.h, 3
  tail call void @_ZN6google8protobuf8internal8TcParser11ChangeOneofEPKNS1_16TcParseTableBaseES5_RKNS3_10FieldEntryEjPNS1_12ParseContextEPNS0_11MessageLiteE(ptr noundef %4, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i32 noundef %i.dk, ptr poison, ptr noundef %0)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114EnumIsValidAuxEitNS1_16TcParseTableBase8FieldAuxE.exit.thread, %bb.ad, %bb.ac
  %i.dl = ptrtoint ptr %4 to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !38
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.do, %i.dl
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !39
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !19
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !20
  %i.dv = zext i32 %i.dr to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !57 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !57 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dx
  br i1 %i.ea, label %bb.af, label %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit

bb.af:                                            ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !39
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !27 ; 3 uses
  %i.ef = trunc i64 %i.ee to i1
  br i1 %i.ef, label %bb.ag, label %bb.ah, !prof !7

bb.ag:                                            ; preds = %bb.af
  %i.eg = add nsw i64 %i.ee, -1
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ej = inttoptr i64 %i.ee to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i = phi ptr [ %i.ei, %bb.ag ], [ %i.ej, %bb.ah ] ; 2 uses
  %i.ek = icmp eq ptr %.0.i.i.i, null
  %i.el = zext i32 %i.ec to i64                   ; 3 uses
  br i1 %i.ek, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.em = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #33
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.en = add nuw nsw i64 %i.el, 7
  %i.eo = and i64 %i.en, 8589934584
  %i.ep = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i, i64 noundef %i.eo)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.eq = phi ptr [ %i.ep, %bb.aj ], [ %i.em, %bb.ai ] ; 2 uses
  store ptr %i.eq, ptr %i.dy, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr align 1 %i.dx, i64 %i.el, i1 false)
  %.pre.i = load ptr, ptr %i.dy, align 8, !tbaa !57
  br label %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit

_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit: ; preds = %bb.ae, %bb.ak
  %.0.i73 = phi ptr [ %i.dz, %bb.ae ], [ %.pre.i, %bb.ak ] ; 2 uses
  br i1 %i.bx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit
  %i.er = load i32, ptr %i.b, align 4, !tbaa !58
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i73, i64 %i.es
  store i64 %.0121, ptr %i.et, align 8, !tbaa !73
  br label %bb.ap

bb.am:                                            ; preds = %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit
  %i.eu = icmp eq i16 %i.bw, 128
  %i.ev = load i32, ptr %i.b, align 4, !tbaa !58
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i73, i64 %i.ew ; 2 uses
  br i1 %i.eu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ey = trunc i64 %.0121 to i32
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !3
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ez = icmp ne i64 %.0121, 0
  %i.fa = zext i1 %i.ez to i8
  store i8 %i.fa, ptr %i.ex, align 1, !tbaa !70
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.al
  %i.fb = load ptr, ptr %2, align 8, !tbaa !108
  %i.fc = icmp ult ptr %.0.i72.ph, %i.fb
  br i1 %i.fc, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fd = load i16, ptr %4, align 8, !tbaa !8
  %i.fe = trunc i64 %5 to i32
  %i.ff = zext i16 %i.fd to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = or i32 %i.fh, %i.fe
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !3
  ret ptr %.0.i72.ph

bb.ar:                                            ; preds = %bb.ap
  %.0.copyload.i.i = load i16, ptr %.0.i72.ph, align 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !112
  %i.fl = zext i8 %i.fk to i16
  %i.fm = and i16 %.0.copyload.i.i, %i.fl
  %i.fn = zext nneg i16 %i.fm to i64              ; 2 uses
  %i.fo = and i64 %i.fn, 7
  %i.fp = icmp eq i64 %i.fo, 0
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = lshr exact i64 %i.fn, 3
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.fq ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ft, align 8, !tbaa !39
  %i.fu = zext i16 %.0.copyload.i.i to i64
  %i.fv = xor i64 %.sroa.01.0.copyload.i, %i.fu
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !113
  %i.fx = musttail call noundef ptr %i.fw(ptr noundef nonnull %0, ptr noundef nonnull %.0.i72.ph, ptr noundef nonnull %2, i64 %i.fv, ptr noundef nonnull %4, i64 noundef %5), !inline_history !116
  ret ptr %i.fx
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal8TcParser14MpPackedVarintILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) #7 comdat align 2 {
bb.a:
  %i.a = lshr i64 %3, 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !55
  %i.e = and i64 %3, 7
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser16MpRepeatedVarintILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.g, align 4, !tbaa !56  ; 3 uses
  %i.h = icmp eq i32 %.val, -1
  br i1 %i.h, label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i32 %.val, 3
  %i.j = and i32 %i.i, 536870908
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = and i32 %.val, 31
  %i.n = shl nuw i32 1, %i.m
  %i.o = load i32, ptr %i.l, align 4, !tbaa !3
  %i.p = or i32 %i.o, %i.n
  store i32 %i.p, ptr %i.l, align 4, !tbaa !3
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit: ; preds = %bb.c, %bb.d
  %i.q = load i16, ptr %4, align 8, !tbaa !8
  %i.r = trunc i64 %5 to i32
  %i.s = zext i16 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = or i32 %i.u, %i.r
  store i32 %i.v, ptr %i.t, align 4, !tbaa !3
  %i.w = and i16 %i.d, 448
  switch i16 %i.w, label %bb.h [
    i16 192, label %bb.e
    i16 128, label %bb.f
    i16 0, label %bb.g
  ]

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.x = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb1EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.x

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.y = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb1EjLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.y

bb.g:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.z = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser15MpPackedVarintTILb1EbLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.z

bb.h:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal8TcParser7MpFixedILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) #7 comdat align 2 {
bb.a:
  %i.a = lshr i64 %3, 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !55   ; 2 uses
  %i.e = and i16 %i.d, 48                         ; 2 uses
  %i.f = icmp eq i16 %i.e, 32
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser15MpRepeatedFixedILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = and i16 %i.d, 448
  %i.i = trunc i64 %3 to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7                          ; 2 uses
  %i.k = icmp eq i16 %i.h, 192                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not51 = icmp eq i32 %i.j, 1
  br i1 %.not51, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.n = musttail call noundef ptr %i.m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.n

bb.f:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.j, 5
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = musttail call noundef ptr %i.p(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.q

bb.h:                                             ; preds = %bb.f, %bb.d
  switch i16 %i.e, label %bb.k [
    i16 16, label %bb.i
    i16 48, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.r, align 4, !tbaa !56  ; 2 uses
  %i.s = lshr i32 %.val, 3
  %i.t = and i32 %i.s, 536870908
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 2 uses
  %i.w = and i32 %.val, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !3
  %i.z = or i32 %i.x, %i.y
  store i32 %i.z, ptr %i.v, align 4, !tbaa !3
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = lshr i32 %i.i, 3
  tail call void @_ZN6google8protobuf8internal8TcParser11ChangeOneofEPKNS1_16TcParseTableBaseES5_RKNS3_10FieldEntryEjPNS1_12ParseContextEPNS0_11MessageLiteE(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i32 noundef %i.aa, ptr poison, ptr noundef %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.ab = ptrtoint ptr %4 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !38
  %i.ae = zext i32 %i.ad to i64
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.an
  br i1 %i.aq, label %bb.l, label %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27 ; 3 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.az = inttoptr i64 %i.au to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.ay, %bb.m ], [ %i.az, %bb.n ] ; 2 uses
  %i.ba = icmp eq ptr %.0.i.i.i, null
  %i.bb = zext i32 %i.as to i64                   ; 3 uses
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #33
  br label %bb.q

bb.p:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.bd = add nuw nsw i64 %i.bb, 7
  %i.be = and i64 %i.bd, 8589934584
  %i.bf = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i, i64 noundef %i.be)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = phi ptr [ %i.bf, %bb.p ], [ %i.bc, %bb.o ] ; 2 uses
  store ptr %i.bg, ptr %i.ao, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.an, i64 %i.bb, i1 false)
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !57
  br label %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit

_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit: ; preds = %bb.k, %bb.q
  %.0.i = phi ptr [ %i.ap, %bb.k ], [ %.pre.i, %bb.q ]
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !58
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.bi ; 2 uses
  br i1 %i.k, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit
  %.0.copyload.i.i = load i64, ptr %1, align 1
  store i64 %.0.copyload.i.i, ptr %i.bj, align 8, !tbaa !73
  br label %bb.t

bb.s:                                             ; preds = %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit
  %.0.copyload.i.i52 = load i32, ptr %1, align 1
  store i32 %.0.copyload.i.i52, ptr %i.bj, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink = phi i64 [ 4, %bb.s ], [ 8, %bb.r ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 4 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !108
  %i.bm = icmp ult ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load i16, ptr %4, align 8, !tbaa !8
  %i.bo = trunc i64 %5 to i32
  %i.bp = zext i16 %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = or i32 %i.br, %i.bo
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !3
  ret ptr %i.bk

bb.v:                                             ; preds = %bb.t
  %.0.copyload.i.i53 = load i16, ptr %i.bk, align 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !112
  %i.bv = zext i8 %i.bu to i16
  %i.bw = and i16 %.0.copyload.i.i53, %i.bv
  %i.bx = zext nneg i16 %i.bw to i64              ; 2 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = icmp eq i64 %i.by, 0
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = lshr exact i64 %i.bx, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.ca ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.ce = zext i16 %.0.copyload.i.i53 to i64
  %i.cf = xor i64 %.sroa.01.0.copyload.i, %i.ce
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !113
  %i.ch = musttail call noundef ptr %i.cg(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %2, i64 %i.cf, ptr noundef nonnull %4, i64 noundef %5), !inline_history !116
  ret ptr %i.ch
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal8TcParser5MpMapILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  br i1 %i.gs, label %bb.ae, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gt = icmp sgt i32 %i.gq, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = icmp eq ptr %i.gv, null
  %or.cond.i.i = select i1 %i.gt, i1 %i.gw, i1 false
  br i1 %or.cond.i.i, label %bb.af, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !prof !428

bb.af:                                            ; preds = %bb.ae
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.ad
  %i.gx = call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.gq, i32 noundef %i.gk) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.gx, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.gx, 1
  %i.gy = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.gy, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread134, !prof !429

common.ret:                                       ; preds = %bb.ap, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %common.ret.op = phi ptr [ %.2133, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ], [ %.2137, %bb.ap ]
  %i.gz = load i16, ptr %4, align 8, !tbaa !8
  %i.ha = trunc i64 %5 to i32
  %i.hb = zext i16 %i.gz to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = or i32 %i.hd, %i.ha
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !3
  ret ptr %common.ret.op

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.ae, %bb.af
  %.2133 = phi ptr [ null, %bb.af ], [ %i.eb, %bb.ae ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ]
  %i.hf = load ptr, ptr %i.g, align 8, !tbaa !413
  %.0..0..0..0.53 = load ptr, ptr %i.h, align 8, !tbaa !414
  %i.hg = trunc i64 %.152 to i32
  call void @_ZN6google8protobuf8internal14UntypedMapBase20InsertOrReplaceNodesEPNS0_5ArenaEPNS1_8NodeBaseEj(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef %i.hf, ptr noundef %.0..0..0..0.53, i32 noundef %i.hg)
  br label %common.ret

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread134: ; preds = %bb.ac, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.2137 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %i.eb, %bb.ac ] ; 13 uses
  %i.hh = load i8, ptr %.2137, align 1, !tbaa !39 ; 3 uses
  %i.hi = icmp slt i8 %i.hh, 0
  %i.hj = getelementptr inbounds nuw i8, ptr %.2137, i64 1 ; 2 uses
  br i1 %i.hi, label %bb.ag, label %bb.ao, !prof !7

bb.ag:                                            ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread134
  %i.hk = zext i8 %i.hh to i64
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.hl, ptr %i.b, align 1, !tbaa !39
  %i.hm = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.b, i64 %i.hk) #32, !srcloc !124 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hn = and i64 %i.hm, 128
  %.not.i = icmp eq i64 %i.hn, 0
  br i1 %.not.i, label %bb.an, label %bb.ah, !prof !29

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %.2137, i64 2
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.hp, ptr %i.c, align 1, !tbaa !39
  %i.hq = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.c, i64 %i.hm) #32, !srcloc !124 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hr = and i64 %i.hq, 128
  %.not32.i = icmp eq i64 %i.hr, 0
  br i1 %.not32.i, label %bb.am, label %bb.ai, !prof !29

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %.2137, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.ht, ptr %i.d, align 1, !tbaa !39
  %i.hu = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.d, i64 %i.hq) #32, !srcloc !124 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hv = and i64 %i.hu, 128
  %.not33.i = icmp eq i64 %i.hv, 0
  br i1 %.not33.i, label %bb.al, label %bb.aj, !prof !29

bb.aj:                                            ; preds = %bb.ai
  %i.hw = getelementptr inbounds nuw i8, ptr %.2137, i64 4
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.hx, ptr %i.e, align 1, !tbaa !39
  %i.hy = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.e, i64 %i.hu) #32, !srcloc !124 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hz = and i64 %i.hy, 128
  %.not34.i = icmp eq i64 %i.hz, 0
  br i1 %.not34.i, label %bb.ak, label %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.ia = call noundef i64 @llvm.fshl.i64(i64 %i.hy, i64 %i.hy, i64 28)
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.2137) #31, !srcloc !125
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 5
  br label %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit

bb.al:                                            ; preds = %bb.ai
  %i.ie = call noundef i64 @llvm.fshl.i64(i64 %i.hu, i64 %i.hu, i64 21)
  %i.if = trunc i64 %i.ie to i32
  %i.ig = getelementptr inbounds nuw i8, ptr %.2137, i64 4
  br label %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit

bb.am:                                            ; preds = %bb.ah
  %i.ih = call noundef i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 14)
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %.2137, i64 3
  br label %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit

bb.an:                                            ; preds = %bb.ag
  %i.ik = call noundef i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 7)
  %i.il = trunc i64 %i.ik to i32
  %i.im = getelementptr inbounds nuw i8, ptr %.2137, i64 2
  br label %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit

bb.ao:                                            ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread134
  %i.in = zext nneg i8 %i.hh to i32
  br label %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit

_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit: ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.090 = phi i32 [ %i.il, %bb.an ], [ %i.ii, %bb.am ], [ %i.if, %bb.al ], [ %i.ib, %bb.ak ], [ %i.in, %bb.ao ], [ 0, %bb.aj ]
  %.0.i = phi ptr [ %i.im, %bb.an ], [ %i.ij, %bb.am ], [ %i.ig, %bb.al ], [ %i.id, %bb.ak ], [ %i.hj, %bb.ao ], [ null, %bb.aj ]
  %.not57 = icmp eq i32 %.090, %i.v
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !413  ; 2 uses
  br i1 %.not57, label %thread-pre-split, label %bb.ap

bb.ap:                                            ; preds = %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit
  %.0..0..0..0.54 = load ptr, ptr %i.h, align 8, !tbaa !414
  %i.io = trunc i64 %.152 to i32
  call void @_ZN6google8protobuf8internal14UntypedMapBase20InsertOrReplaceNodesEPNS0_5ArenaEPNS1_8NodeBaseEj(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef %.pr, ptr noundef %.0..0..0..0.54, i32 noundef %i.io)
  %i.ip = load ptr, ptr %2, align 8, !tbaa !108
  %i.iq = icmp ult ptr %.2137, %i.ip
  br i1 %i.iq, label %bb.aq, label %common.ret

bb.aq:                                            ; preds = %bb.ap
  %.0.copyload.i.i = load i16, ptr %.2137, align 1 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !112
  %i.it = zext i8 %i.is to i16
  %i.iu = and i16 %.0.copyload.i.i, %i.it
  %i.iv = zext nneg i16 %i.iu to i64              ; 2 uses
  %i.iw = and i64 %i.iv, 7
  %i.ix = icmp eq i64 %i.iw, 0
  call void @llvm.assume(i1 %i.ix)
  %i.iy = lshr exact i64 %i.iv, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.iy ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.jb, align 8, !tbaa !39
  %i.jc = zext i16 %.0.copyload.i.i to i64
  %i.jd = xor i64 %.sroa.01.0.copyload.i, %i.jc
  %i.je = load ptr, ptr %i.ja, align 8, !tbaa !113
  %i.jf = musttail call noundef ptr %i.je(ptr noundef %0, ptr noundef nonnull %.2137, ptr noundef nonnull %2, i64 %i.jd, ptr noundef nonnull %4, i64 noundef %5), !inline_history !116
  ret ptr %i.jf
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal8TcParser16MpRepeatedVarintILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = lshr i64 %3, 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !55   ; 2 uses
  %i.e = trunc i64 %3 to i32
  %i.f = and i32 %i.e, 7
  switch i32 %i.f, label %bb.c [
    i32 2, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser14MpPackedVarintILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.j = musttail call noundef ptr %i.i(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.k, align 4, !tbaa !56  ; 3 uses
  %i.l = icmp eq i32 %.val, -1
  br i1 %i.l, label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %.val, 3
  %i.n = and i32 %i.m, 536870908
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = and i32 %.val, 31
  %i.r = shl nuw i32 1, %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !3
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %i.p, align 4, !tbaa !3
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit: ; preds = %bb.d, %bb.e
  %i.u = and i16 %i.d, 1536                       ; 2 uses
  %i.v = and i16 %i.d, 448
  switch i16 %i.v, label %bb.o [
    i16 192, label %bb.f
    i16 128, label %bb.i
    i16 0, label %bb.n
  ]

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.w = icmp eq i16 %i.u, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EmLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.y

bb.i:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.z = lshr exact i16 %i.u, 9
  switch i16 %i.z, label %default.unreachable75 [
    i16 0, label %bb.j
    i16 1, label %bb.k
    i16 2, label %bb.l
    i16 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EjLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.aa

bb.k:                                             ; preds = %bb.i
  %i.ab = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EjLt512EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.ab

bb.l:                                             ; preds = %bb.i
  %i.ac = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EjLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.ac

bb.m:                                             ; preds = %bb.i
  %i.ad = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EjLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.ad

default.unreachable75:                            ; preds = %bb.i
  unreachable

bb.n:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.ae = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EbLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.ae

bb.o:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i64 %3, 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %i.a
  %i.c = trunc i64 %3 to i32
  %i.d = load i32, ptr %i.b, align 4, !tbaa !58
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.028 = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.1.i116, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread ] ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 2 uses
  %i.q = load i8, ptr %.028, align 1, !tbaa !39   ; 2 uses
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp sgt i8 %i.q, -1
  br i1 %i.s, label %bb.s, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.028, i64 2 ; 2 uses
  %i.u = load i8, ptr %i.p, align 1, !tbaa !39
  %i.v = sext i8 %i.u to i64
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 -128, i64 7) ; 4 uses
  %i.x = icmp sgt i64 %i.w, -1
  br i1 %i.x, label %bb.r, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.028, i64 3 ; 2 uses
  %i.z = load i8, ptr %i.t, align 1, !tbaa !39
  %i.aa = sext i8 %i.z to i64
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 -128, i64 14) ; 4 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  br i1 %i.ac, label %bb.q, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.028, i64 4 ; 2 uses
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !39
  %i.af = sext i8 %i.ae to i64
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 -128, i64 21)
  %i.ah = and i64 %i.ag, %i.w                     ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  br i1 %i.ai, label %bb.q, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.028, i64 5 ; 2 uses
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !39
  %i.al = sext i8 %i.ak to i64
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 -128, i64 28)
  %i.an = and i64 %i.am, %i.ab                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.q, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.028, i64 6 ; 2 uses
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !39
  %i.ar = sext i8 %i.aq to i64
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 -128, i64 35)
  %i.at = and i64 %i.as, %i.ah                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %bb.q, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.028, i64 7 ; 2 uses
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !39
  %i.ax = sext i8 %i.aw to i64
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 -128, i64 42)
  %i.az = and i64 %i.ay, %i.an                    ; 4 uses
  %i.ba = icmp sgt i64 %i.az, -1
  br i1 %i.ba, label %bb.q, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !39
  %i.bd = sext i8 %i.bc to i64
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 -128, i64 49)
  %i.bf = and i64 %i.be, %i.at                    ; 6 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %bb.q, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.028, i64 9 ; 2 uses
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !39
  %i.bj = zext i8 %i.bi to i64
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 -128, i64 56)
  %i.bl = and i64 %i.bk, %i.az                    ; 5 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  br i1 %i.bm, label %bb.q, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.028, i64 10 ; 3 uses
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !39  ; 3 uses
  %i.bp = icmp eq i8 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %bb.n, !prof !29

bb.n:                                             ; preds = %bb.m
  %.not.i = icmp sgt i8 %i.bo, -1
  br i1 %.not.i, label %bb.o, label %select.unfold, !prof !29

bb.o:                                             ; preds = %bb.n
  %i.bq = and i8 %i.bo, 1
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.bl) #31, !srcloc !224
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.090 = phi ptr [ %i.y, %bb.f ], [ %i.ad, %bb.g ], [ %i.aj, %bb.h ], [ %i.ap, %bb.i ], [ %i.av, %bb.j ], [ %i.bb, %bb.k ], [ %i.bh, %bb.l ], [ %i.bn, %bb.m ], [ %i.bn, %bb.p ], [ %i.bn, %bb.o ]
  %.073 = phi i64 [ %i.ab, %bb.f ], [ %i.ab, %bb.g ], [ %i.an, %bb.h ], [ %i.an, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ], [ %i.bl, %bb.l ], [ %i.bl, %bb.m ], [ %i.bs, %bb.p ], [ %i.bl, %bb.o ]
  %.071 = phi i64 [ %i.w, %bb.f ], [ %i.ah, %bb.g ], [ %i.ah, %bb.h ], [ %i.at, %bb.i ], [ %i.at, %bb.j ], [ %i.bf, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ], [ %i.bf, %bb.p ], [ %i.bf, %bb.o ]
  %i.bt = and i64 %.071, %.073
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.e
  %.191 = phi ptr [ %i.t, %bb.e ], [ %.090, %bb.q ]
  %.172 = phi i64 [ %i.w, %bb.e ], [ %i.bt, %bb.q ]
  %i.bu = and i64 %.172, %i.r
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d
  %.074.ph = phi i64 [ %i.r, %bb.d ], [ %i.bu, %bb.r ]
  %.0.i.ph = phi ptr [ %i.p, %bb.d ], [ %.191, %bb.r ] ; 6 uses
  %i.bv = load i32, ptr %i.f, align 4, !tbaa !216
  %i.bw = and i32 %i.bv, 1
  %i.bx = icmp eq i32 %i.bw, 0                    ; 2 uses
  %i.by = load i32, ptr %i.n, align 4, !tbaa !218 ; 8 uses
  br i1 %i.bx, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i

end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf8internal14UntypedMapBase14VisitValueTypeIZNKS2_10VisitValueIN4absl12lts_202505128OverloadIJZNS1_8TcParser5MpMapILb0EEEPKcPNS0_11MessageLiteESB_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE0_ZNS9_ILb0EEESB_SD_SB_SF_SG_SJ_mEUlSD_E_ZNS9_ILb0EEESB_SD_SB_SF_SG_SJ_mEUlPvE0_EEEEEDaPNS1_8NodeBaseET_EUlSY_E_EEDaSY_:bb.a
  store i8 0, ptr %i.p, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZZNK6google8protobuf8internal14UntypedMapBase10VisitValueIN4absl12lts_202505128OverloadIJZNS1_8TcParser5MpMapILb0EEEPKcPNS0_11MessageLiteESA_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE0_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlSC_E_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlPvE0_EEEEEDaPNS1_8NodeBaseET_ENKUlSX_E_clISt9enable_ifILb1ESO_EEEDaSX_.exit, label %_ZN6google8protobuf5Arena13OwnDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, !prof !7

_ZN6google8protobuf5Arena13OwnDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168) %i.o, ptr noundef nonnull %i.m, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv)
  br label %_ZZNK6google8protobuf8internal14UntypedMapBase10VisitValueIN4absl12lts_202505128OverloadIJZNS1_8TcParser5MpMapILb0EEEPKcPNS0_11MessageLiteESA_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE0_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlSC_E_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlPvE0_EEEEEDaPNS1_8NodeBaseET_ENKUlSX_E_clISt9enable_ifILb1ESO_EEEDaSX_.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !417
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !475, !nonnull !72, !align !91 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !476, !nonnull !72, !align !91
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !414
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.z = load i8, ptr %i.y, align 2, !tbaa !384
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 13 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !480, !nonnull !72, !align !91
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !410
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !483, !nonnull !72, !align !91
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !413 ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.an = load i8, ptr %i.am, align 4, !tbaa !398 ; 2 uses
  %i.ao = icmp slt i8 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.ar = tail call noundef ptr %i.aq(ptr noundef %i.al, ptr noundef %i.ab, ptr noundef %i.ak), !inline_history !484 ; 0 uses
  br label %_ZZNK6google8protobuf8internal14UntypedMapBase10VisitValueIN4absl12lts_202505128OverloadIJZNS1_8TcParser5MpMapILb0EEEPKcPNS0_11MessageLiteESA_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE0_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlSC_E_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlPvE0_EEEEEDaPNS1_8NodeBaseET_ENKUlSX_E_clISt9enable_ifILb1ESO_EEEDaSX_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !397 ; 6 uses
  %i.au = zext i32 %i.at to i64                   ; 11 uses
  %i.av = icmp eq i8 %i.an, 0
  %i.aw = icmp ult i32 %i.at, 33                  ; 2 uses
  br i1 %i.av, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.az = icmp ult i32 %i.at, 65
  br i1 %i.az, label %bb.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.h
  %i.ba = icmp ugt i32 %i.at, 80
  br i1 %i.ba, label %.lr.ph64.i.i.i.i, label %._crit_edge65.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  br label %bb.n

._crit_edge65.i.i.i.i:                            ; preds = %.lr.ph64.i.i.i.i, %.preheader.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bf, i8 0, i64 64, i1 false)
  br label %bb.n

.lr.ph64.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph64.i.i.i.i
  %i.bg = phi i64 [ %i.bj, %.lr.ph64.i.i.i.i ], [ 80, %.preheader.i.i.i.i ] ; 2 uses
  %.05563.i.i.i.i = phi i64 [ %i.bg, %.lr.ph64.i.i.i.i ], [ 16, %.preheader.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.05563.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bi) #26, !srcloc !400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bh, i8 0, i64 64, i1 false)
  %i.bj = add nuw nsw i64 %i.bg, 64               ; 2 uses
  %i.bk = icmp samesign ult i64 %i.bj, %i.au
  br i1 %i.bk, label %.lr.ph64.i.i.i.i, label %._crit_edge65.i.i.i.i, !llvm.loop !401

bb.j:                                             ; preds = %bb.e
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull align 1 dereferenceable(16) %i.bo, i64 16, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp ult i32 %i.at, 65
  br i1 %i.bp, label %bb.m, label %.preheader61.i.i.i.i

.preheader61.i.i.i.i:                             ; preds = %bb.l
  %i.bq = icmp ugt i32 %i.at, 80
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.br, ptr noundef nonnull align 1 dereferenceable(16) %i.bs, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bu, ptr noundef nonnull align 1 dereferenceable(32) %i.bw, i64 32, i1 false)
  br label %bb.n

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.preheader61.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.by, ptr noundef nonnull align 1 dereferenceable(64) %i.ca, i64 64, i1 false)
  br label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.preheader61.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cb = phi i64 [ %i.cg, %.lr.ph.i.i.i.i ], [ 80, %.preheader61.i.i.i.i ] ; 2 uses
  %.062.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i ], [ 16, %.preheader61.i.i.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.al, i64 %.062.i.i.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cd, i32 0, i32 3, i32 1)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.062.i.i.i.i ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.cf) #26, !srcloc !400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ce, ptr noundef nonnull align 1 dereferenceable(64) %i.cc, i64 64, i1 false)
  %i.cg = add nuw nsw i64 %i.cb, 64               ; 2 uses
  %i.ch = icmp samesign ult i64 %i.cg, %i.au
  br i1 %i.ch, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !402

bb.n:                                             ; preds = %._crit_edge.i.i.i.i, %bb.m, %bb.k, %._crit_edge65.i.i.i.i, %bb.i, %bb.g
  %i.ci = load i64, ptr %i.al, align 1
  store i64 %i.ci, ptr %i.ab, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ak, ptr %i.cj, align 1
  br label %_ZZNK6google8protobuf8internal14UntypedMapBase10VisitValueIN4absl12lts_202505128OverloadIJZNS1_8TcParser5MpMapILb0EEEPKcPNS0_11MessageLiteESA_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE0_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlSC_E_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlPvE0_EEEEEDaPNS1_8NodeBaseET_ENKUlSX_E_clISt9enable_ifILb1ESO_EEEDaSX_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

_ZZNK6google8protobuf8internal14UntypedMapBase10VisitValueIN4absl12lts_202505128OverloadIJZNS1_8TcParser5MpMapILb0EEEPKcPNS0_11MessageLiteESA_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE0_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlSC_E_ZNS8_ILb0EEESA_SC_SA_SE_SF_SI_mEUlPvE0_EEEEEDaPNS1_8NodeBaseET_ENKUlSX_E_clISt9enable_ifILb1ESO_EEEDaSX_.exit: ; preds = %bb.n, %bb.d, %_ZN6google8protobuf5Arena13OwnDestructorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal8TcParser16MpRepeatedVarintILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = lshr i64 %3, 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !55
  %i.e = trunc i64 %3 to i32
  %i.f = and i32 %i.e, 7
  switch i32 %i.f, label %bb.c [
    i32 2, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser14MpPackedVarintILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.j = musttail call noundef ptr %i.i(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.k, align 4, !tbaa !56  ; 3 uses
  %i.l = icmp eq i32 %.val, -1
  br i1 %i.l, label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %.val, 3
  %i.n = and i32 %i.m, 536870908
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = and i32 %.val, 31
  %i.r = shl nuw i32 1, %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !3
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %i.p, align 4, !tbaa !3
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit: ; preds = %bb.d, %bb.e
  %i.u = and i16 %i.d, 448
  switch i16 %i.u, label %bb.i [
    i16 192, label %bb.f
    i16 128, label %bb.g
    i16 0, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.v = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb1EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.v

bb.g:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.w = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb1EjLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.w

bb.h:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.x = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb1EbLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.x

bb.i:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb1EmLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %3, 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 3 uses
  %i.c = trunc i64 %3 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !55   ; 2 uses
  %i.f = and i16 %i.e, 1536                       ; 2 uses
  %i.g = icmp eq i16 %i.f, 512
  %i.h = and i16 %i.e, 1024
  %.not = icmp eq i16 %i.h, 0                     ; 2 uses
  %i.i = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  %i.l = zext i32 %i.k to i64
  %i.m = add i64 %i.l, %i.i
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = zext i32 %i.o to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %bb.b, label %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !27 ; 3 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ag = inttoptr i64 %i.ab to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.af, %bb.c ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ah = icmp eq ptr %.0.i.i.i, null
  %i.ai = zext i32 %i.z to i64                    ; 3 uses
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ak = add nuw nsw i64 %i.ai, 7
  %i.al = and i64 %i.ak, 8589934584
  %i.am = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i, i64 noundef %i.al)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = phi ptr [ %i.am, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  store ptr %i.an, ptr %i.v, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.u, i64 %i.ai, i1 false)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !57
  br label %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit

_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit: ; preds = %bb.a, %bb.g
  %.0.i53 = phi ptr [ %i.w, %bb.a ], [ %.pre.i, %bb.g ]
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !58
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i53, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57 ; 2 uses
  %i.as = icmp eq ptr %i.ar, @_ZN6google8protobuf8internal11kZeroBufferE
  br i1 %i.as, label %bb.h, label %_ZN6google8protobuf8internal8TcParser29MaybeCreateRepeatedFieldRefAtImLb1EEERNS0_13RepeatedFieldIT_EEPvmPNS0_11MessageLiteE.exit

bb.h:                                             ; preds = %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27 ; 3 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.az = inttoptr i64 %i.au to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.ay, %bb.i ], [ %i.az, %bb.j ] ; 3 uses
  %i.ba = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ba, label %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldImEEE3NewEv.exit.i.i, label %bb.k, !prof !7

_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldImEEE3NewEv.exit.i.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.bb = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 2 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !216
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldImEEEEPT_PS1_.exit.i.i

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.bc = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i.i, i64 noundef 24) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = ptrtoint ptr %.0.i.i.i.i to i64
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !27
  store i32 16, ptr %i.bc, align 8, !tbaa !216
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldImEEEEPT_PS1_.exit.i.i

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldImEEEEPT_PS1_.exit.i.i: ; preds = %bb.k, %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldImEEE3NewEv.exit.i.i
  %.sink6.i.i = phi ptr [ %i.bb, %_ZN6google8protobuf5Arena14InternalHelperINS0_13RepeatedFieldImEEE3NewEv.exit.i.i ], [ %i.bc, %bb.k ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 4
  store i32 0, ptr %i.bf, align 4, !tbaa !218
  store ptr %.sink6.i.i, ptr %i.aq, align 8, !tbaa !57
  br label %_ZN6google8protobuf8internal8TcParser29MaybeCreateRepeatedFieldRefAtImLb1EEERNS0_13RepeatedFieldIT_EEPvmPNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal8TcParser29MaybeCreateRepeatedFieldRefAtImLb1EEERNS0_13RepeatedFieldIT_EEPvmPNS0_11MessageLiteE.exit: ; preds = %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldImEEEEPT_PS1_.exit.i.i
  %i.bg = phi ptr [ %.sink6.i.i, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_13RepeatedFieldImEEEEPT_PS1_.exit.i.i ], [ %i.ar, %_ZN6google8protobuf8internal8TcParser17MaybeGetSplitBaseEPNS0_11MessageLiteEbPKNS1_16TcParseTableBaseE.exit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !27 ; 3 uses
  %i.bj = trunc i64 %i.bi to i1
  br i1 %i.bj, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %_ZN6google8protobuf8internal8TcParser29MaybeCreateRepeatedFieldRefAtImLb1EEERNS0_13RepeatedFieldIT_EEPvmPNS0_11MessageLiteE.exit
  %i.bk = add nsw i64 %i.bi, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.m:                                             ; preds = %_ZN6google8protobuf8internal8TcParser29MaybeCreateRepeatedFieldRefAtImLb1EEERNS0_13RepeatedFieldIT_EEPvmPNS0_11MessageLiteE.exit
  %i.bn = inttoptr i64 %i.bi to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.l, %bb.m
  %.0.i.i = phi ptr [ %i.bm, %bb.l ], [ %i.bn, %bb.m ]
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !36
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !38
  %i.br = zext i32 %i.bq to i64
  %i.bs = add i64 %i.br, %i.i
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = zext i16 %i.bp to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !39
  %i.bx = inttoptr i64 %i.bw to ptr
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.sroa.057.0 = phi ptr [ null, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %i.bx, %bb.n ] ; 2 uses
  %i.by = icmp eq i16 %i.f, 1536
  %i.bz = ptrtoint ptr %.sroa.057.0 to i64        ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bz to i32
  %.sroa.0.4.extract.shift.i = lshr i64 %i.bz, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, %bb.o
  %.046 = phi ptr [ %1, %bb.o ], [ %.1.i143, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread ] ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.046, i64 1 ; 2 uses
  %i.cd = load i8, ptr %.046, align 1, !tbaa !39  ; 2 uses
  %i.ce = sext i8 %i.cd to i64                    ; 2 uses
  %i.cf = icmp sgt i8 %i.cd, -1
  br i1 %i.cf, label %bb.ae, label %bb.q, !prof !29

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %.046, i64 2 ; 2 uses
  %i.ch = load i8, ptr %i.cc, align 1, !tbaa !39
  %i.ci = sext i8 %i.ch to i64
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 -128, i64 7) ; 4 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.ad, label %bb.r, !prof !7
end_hunk_5
