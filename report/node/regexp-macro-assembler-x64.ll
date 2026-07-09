inline.NumInlined: 2172
inline.NumDeleted: 473
begin_hunk_0_@_ZN2v88internal23RegExpMacroAssemblerX647GetCodeENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_10RegExpFlagEiiEE:_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit276
_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit.peel809: ; preds = %bb.h, %.lr.ph.peel.next795
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 2152005632, ptr nonnull inttoptr (i64 2 to ptr), i8 0, i32 noundef 8) #13
  %i.ba = load i32, ptr %i.am, align 8
  %i.bb = icmp sgt i32 %i.ba, 4
  br i1 %i.bb, label %.lr.ph, label %.loopexit773

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit285: ; preds = %bb.d
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 9, i64 4294967192, i32 noundef 8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store i32 0, ptr %8, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.bc, align 4
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %8) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 222560768, ptr nonnull inttoptr (i64 3 to ptr), i8 0, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 5, i8 9, i64 8, i32 noundef 8) #13
  %i.bd = load i32, ptr %i.am, align 8
  %i.be = shl nsw i32 %i.bd, 3
  %i.bf = sub nsw i32 -104, %i.be
  %.sroa.0389.0.insert.ext = zext i32 %i.bf to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 7, i8 9, i64 %.sroa.0389.0.insert.ext, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 15, ptr noundef nonnull %8, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.loopexit773

.lr.ph:                                           ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit.peel809, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit
  %indvars.iv = phi i64 [ %.pre1030, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit ], [ 4, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit.peel809 ] ; 3 uses
  %i.bg = load i32, ptr %i.u, align 4
  %i.bh = sext i32 %i.bg to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.bh
  %.pre1030 = add nuw nsw i64 %indvars.iv, 1      ; 3 uses
  br i1 %.not.i, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bi = trunc nuw nsw i64 %.pre1030 to i32
  store i32 %i.bi, ptr %i.u, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit: ; preds = %.lr.ph, %bb.i
  %i.bj = shl i64 %indvars.iv, 27
  %.sroa.0752.3.insert.ext = sub i64 72057592293097472, %i.bj
  %.sroa.0752.3.insert.shift = and i64 %.sroa.0752.3.insert.ext, 72057593903710208
  %.sroa.0752.3.insert.insert = or disjoint i64 %.sroa.0752.3.insert.shift, 8716288
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 %.sroa.0752.3.insert.insert, ptr nonnull inttoptr (i64 5 to ptr), i8 0, i32 noundef 8) #13
  %i.bk = load i32, ptr %i.am, align 8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %.pre1030, %i.bl
  br i1 %i.bm, label %.lr.ph, label %.loopexit773, !llvm.loop !15

.loopexit773:                                     ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit.peel, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit.peel787, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit.peel798, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit.peel809, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit285, %_ZN2v88internal23RegExpMacroAssemblerX6419CharSizeScaleFactorEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 612
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %i.bn, i32 noundef 1) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.j, label %bb.ak

bb.j:                                             ; preds = %.loopexit773
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %i.bo) #13
  %i.br = load i32, ptr %i.am, align 8
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit233, label %.loopexit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit233: ; preds = %bb.j
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 2, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 3, i64 3494182912, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 1, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 43, i8 1, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %i.bt = load i32, ptr %i.ad, align 8
  %i.bu = icmp eq i32 %i.bt, 2
  br i1 %i.bu, label %_ZN2v88internal23RegExpMacroAssemblerX6419CharSizeScaleFactorEv.exit337, label %bb.k

_ZN2v88internal23RegExpMacroAssemblerX6419CharSizeScaleFactorEv.exit337: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit233
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 1, i64 1359216640, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  br label %bb.l

bb.k:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit233
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 3, i8 1, i8 2, i32 noundef 8) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal23RegExpMacroAssemblerX6419CharSizeScaleFactorEv.exit337
  %i.bv = load i32, ptr %i.am, align 8
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph776, label %.loopexit

.lr.ph776:                                        ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.by = load i32, ptr %i.u, align 4
  %.not.i338.peel = icmp sgt i32 %i.by, 0
  br i1 %.not.i338.peel, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph776
  store i32 1, ptr %i.u, align 4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph776, %bb.m
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 2554658816, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %i.bz = load i32, ptr %i.bx, align 4
  %i.ca = and i32 %i.bz, -2
  %spec.select.i345.peel = icmp eq i32 %i.ca, 2
  br i1 %spec.select.i345.peel, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 2, i8 0, i32 noundef 8) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 3, i8 0, i8 1, i32 noundef 8) #13
  %i.cb = load i32, ptr %i.ad, align 8
  %i.cc = icmp eq i32 %i.cb, 2
  br i1 %i.cc, label %bb.q, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 1, i32 noundef 7, i32 noundef 8) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel: ; preds = %bb.q, %bb.p
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 196608, ptr nonnull inttoptr (i64 1 to ptr), i8 0, i32 noundef 4) #13
  %i.cd = load i32, ptr %i.am, align 8
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %.peel.begin, label %.loopexit

.peel.begin:                                      ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel
  %i.cf = load i32, ptr %i.u, align 4
  %.not.i338.peel1040 = icmp sgt i32 %i.cf, 1
  br i1 %.not.i338.peel1040, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.peel.begin
  store i32 2, ptr %i.u, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.peel.begin
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 2420441088, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 3, i8 0, i8 1, i32 noundef 8) #13
  %i.cg = load i32, ptr %i.ad, align 8
  %i.ch = icmp eq i32 %i.cg, 2
  br i1 %i.ch, label %bb.t, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1041

bb.t:                                             ; preds = %bb.s
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 1, i32 noundef 7, i32 noundef 8) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1041

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1041: ; preds = %bb.t, %bb.s
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 71499776, ptr nonnull inttoptr (i64 2 to ptr), i8 0, i32 noundef 4) #13
  %i.ci = load i32, ptr %i.am, align 8
  %i.cj = icmp sgt i32 %i.ci, 2
  br i1 %i.cj, label %.peel.next1039, label %.loopexit

.peel.next1039:                                   ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1041
  %i.ck = load i32, ptr %i.u, align 4
  %.not.i338.peel1043 = icmp sgt i32 %i.ck, 2
  br i1 %.not.i338.peel1043, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.peel.next1039
  store i32 3, ptr %i.u, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.peel.next1039
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 2286223360, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 3, i8 0, i8 1, i32 noundef 8) #13
  %i.cl = load i32, ptr %i.ad, align 8
  %i.cm = icmp eq i32 %i.cl, 2
  br i1 %i.cm, label %bb.w, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1050

bb.w:                                             ; preds = %bb.v
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 1, i32 noundef 7, i32 noundef 8) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1050

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1050: ; preds = %bb.w, %bb.v
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 138608640, ptr nonnull inttoptr (i64 2 to ptr), i8 0, i32 noundef 4) #13
  %i.cn = load i32, ptr %i.am, align 8
  %i.co = icmp sgt i32 %i.cn, 3
  br i1 %i.co, label %.peel.next1042, label %.loopexit

.peel.next1042:                                   ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1050
  %i.cp = load i32, ptr %i.u, align 4
  %.not.i338.peel1054 = icmp sgt i32 %i.cp, 3
  br i1 %.not.i338.peel1054, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.peel.next1042
  store i32 4, ptr %i.u, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.peel.next1042
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 2152005632, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 3, i8 0, i8 1, i32 noundef 8) #13
  %i.cq = load i32, ptr %i.ad, align 8
  %i.cr = icmp eq i32 %i.cq, 2
  br i1 %i.cr, label %bb.z, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1061

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 1, i32 noundef 7, i32 noundef 8) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1061

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1061: ; preds = %bb.z, %bb.y
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 205717504, ptr nonnull inttoptr (i64 2 to ptr), i8 0, i32 noundef 4) #13
  %i.cs = load i32, ptr %i.am, align 8
  %i.ct = icmp sgt i32 %i.cs, 4
  br i1 %i.ct, label %.peel.next.peel.newph, label %.loopexit

.peel.next.peel.newph:                            ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1061, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205 ], [ 4, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1061 ] ; 5 uses
  %i.cu = load i32, ptr %i.u, align 4
  %i.cv = sext i32 %i.cu to i64
  %.not.i338 = icmp slt i64 %indvars.iv825, %i.cv
  br i1 %.not.i338, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.peel.next.peel.newph
  %i.cw = trunc nsw i64 %indvars.iv825 to i32
  %i.cx = add nuw nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.u, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.peel.next.peel.newph, %bb.aa
  %i.cy = shl i64 %indvars.iv825, 27
  %.sroa.0762.3.insert.ext = sub i64 72057592293097472, %i.cy
  %.sroa.0762.3.insert.shift = and i64 %.sroa.0762.3.insert.ext, 72057593903710208
  %.sroa.0762.3.insert.insert = or disjoint i64 %.sroa.0762.3.insert.shift, 8716288
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 %.sroa.0762.3.insert.insert, ptr nonnull inttoptr (i64 5 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 3, i8 0, i8 1, i32 noundef 8) #13
  %i.cz = load i32, ptr %i.ad, align 8
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.ac, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 1, i32 noundef 7, i32 noundef 8) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205: ; preds = %bb.ab, %bb.ac
  %i.db = shl nsw i64 %indvars.iv825, 2           ; 3 uses
  %i.dc = icmp samesign ult i64 %i.db, 128        ; 3 uses
  %.sroa.19.sroa.18.0.extract.shift = and i64 %i.db, 4294967040
  %.sroa.19.sroa.18.sroa.0.0 = select i1 %i.dc, i64 0, i64 %.sroa.19.sroa.18.0.extract.shift
  %.sroa.10.0 = select i1 %i.dc, i64 4390912, i64 8585216
  %i.dd = select i1 %i.dc, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  %.sroa.19.sroa.0.0.insert.ext = and i64 %i.db, 252
  %.sroa.19.sroa.0.0.insert.insert = or disjoint i64 %.sroa.19.sroa.18.sroa.0.0, %.sroa.19.sroa.0.0.insert.ext
  %.sroa.19.0.insert.shift = shl nuw nsw i64 %.sroa.19.sroa.0.0.insert.insert, 24
  %.sroa.10.0.insert.insert = or disjoint i64 %.sroa.19.0.insert.shift, %.sroa.10.0
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 %.sroa.10.0.insert.insert, ptr nonnull %i.dd, i8 0, i32 noundef 4) #13
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 1 ; 2 uses
  %i.de = load i32, ptr %i.am, align 8
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next826, %i.df
  br i1 %i.dg, label %.peel.next.peel.newph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1041, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1050, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel1061, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit205.peel, %bb.l, %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4
  %.not = icmp eq i32 %i.di, 0
  br i1 %.not, label %bb.aj, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit198

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit198: ; preds = %.loopexit
  call void @_ZN2v88internal9Assembler8emit_incENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 3091529728, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler7movsxlqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 1, i64 3359965184, ptr nonnull inttoptr (i64 2 to ptr)) #13
  %i.dj = load i32, ptr %i.am, align 8
  %.sroa.0375.0.insert.ext = zext i32 %i.dj to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 5, i8 1, i64 %.sroa.0375.0.insert.ext, i32 noundef 8) #13
  %i.dk = load i32, ptr %i.am, align 8
  %.sroa.0368.0.insert.ext = zext i32 %i.dk to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 7, i8 1, i64 %.sroa.0368.0.insert.ext, i32 noundef 8) #13
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 12, ptr noundef nonnull %i.dl, i32 noundef 1) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 3359965184, ptr nonnull inttoptr (i64 2 to ptr), i8 1, i32 noundef 8) #13
  %i.dm = load i32, ptr %i.am, align 8
  %i.dn = shl nsw i32 %i.dm, 2
  %.sroa.0361.0.insert.ext = zext i32 %i.dn to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 0, i64 3494182912, ptr nonnull inttoptr (i64 2 to ptr), i64 %.sroa.0361.0.insert.ext, i32 noundef 8) #13
  %i.do = load ptr, ptr %i.f, align 8
  %i.dp = call i64 @_ZN2v88internal17ExternalReference42address_of_regexp_stack_memory_top_addressEPNS0_7IsolateE(ptr noundef %i.do) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 10, i64 2688876544, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %i.dq = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i64 %i.dp, i8 1) #13 ; 2 uses
  %i.dr = extractvalue { i64, ptr } %i.dq, 0
  %i.ds = extractvalue { i64, ptr } %i.dq, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 1, i64 %i.dr, ptr %i.ds, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 43, i8 1, i8 10, i32 noundef 8) #13
  %i.dt = load ptr, ptr %i.f, align 8
  %i.du = call i64 @_ZN2v88internal17ExternalReference37address_of_regexp_stack_stack_pointerEPNS0_7IsolateE(ptr noundef %i.dt) #13
  %i.dv = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i64 %i.du, i8 10) #13 ; 2 uses
  %i.dw = extractvalue { i64, ptr } %i.dv, 0
  %i.dx = extractvalue { i64, ptr } %i.dv, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 %i.dw, ptr %i.dx, i8 1, i32 noundef 8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store i32 0, ptr %9, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.dy, align 4
  %i.dz = load i32, ptr %i.dh, align 4
  %i.ea = and i32 %i.dz, -2
  %spec.select.i346 = icmp eq i32 %i.ea, 2
  br i1 %spec.select.i346, label %bb.ad, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit170

bb.ad:                                            ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit198
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 59, i8 7, i8 2, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 5, ptr noundef nonnull %9, i32 noundef 1) #13
  call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 7, i8 7, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 4, ptr noundef nonnull %i.dl, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i32 0, ptr %10, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.eb, align 4
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %10) #13
  %i.ec = load i32, ptr %i.ad, align 8
  %i.ed = icmp eq i32 %i.ec, 2
  br i1 %i.ed, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 0, i8 7, i64 2, i32 noundef 8) #13
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @_ZN2v88internal9Assembler8emit_incENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 7, i32 noundef 8) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ee = load i32, ptr %i.dh, align 4
  %i.ef = icmp eq i32 %i.ee, 3
  br i1 %i.ef, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2v88internal20RegExpMacroAssembler23CheckNotInSurrogatePairEiPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0, ptr noundef nonnull %10) #13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit170

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit170: ; preds = %bb.ai, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit198
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %9) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 2957312000, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %6, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 0, i64 1, i32 noundef 4) #13
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit170, %bb.aj, %.loopexit773
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 636
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %i.eg) #13
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ei = load i32, ptr %i.eh, align 4
  %.not772 = icmp eq i32 %i.ei, 0
  br i1 %.not772, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit156, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit163

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit163: ; preds = %bb.ak
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i64 3091529728, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit156

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit156: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit163, %bb.ak
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %3) #13
  %i.ej = load ptr, ptr %i.f, align 8
  %i.ek = call i64 @_ZN2v88internal17ExternalReference42address_of_regexp_stack_memory_top_addressEPNS0_7IsolateE(ptr noundef %i.ej) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 10, i64 2688876544, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %i.el = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i64 %i.ek, i8 1) #13 ; 2 uses
  %i.em = extractvalue { i64, ptr } %i.el, 0
  %i.en = extractvalue { i64, ptr } %i.el, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 1, i64 %i.em, ptr %i.en, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 43, i8 1, i8 10, i32 noundef 8) #13
  %i.eo = load ptr, ptr %i.f, align 8
  %i.ep = call i64 @_ZN2v88internal17ExternalReference37address_of_regexp_stack_stack_pointerEPNS0_7IsolateE(ptr noundef %i.eo) #13
  %i.eq = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i64 %i.ep, i8 10) #13 ; 2 uses
  %i.er = extractvalue { i64, ptr } %i.eq, 0
  %i.es = extractvalue { i64, ptr } %i.eq, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 %i.er, ptr %i.es, i8 1, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 3, i64 3225747456, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i32 noundef 31) #13
  call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 0) #13
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit156
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %i.et) #13
  %i.ew = load ptr, ptr %0, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(668) %0) #13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit156
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store i32 0, ptr %11, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.an

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.am
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %i.fa) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 41, i8 8, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 7) #13
  %i.fd = load ptr, ptr %i.f, align 8
  %i.fe = call i64 @_ZN2v88internal17ExternalReference37address_of_regexp_stack_stack_pointerEPNS0_7IsolateE(ptr noundef %i.fd) #13
  %i.ff = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i64 %i.fe, i8 10) #13 ; 2 uses
  %i.fg = extractvalue { i64, ptr } %i.ff, 0
  %i.fh = extractvalue { i64, ptr } %i.ff, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 %i.fg, ptr %i.fh, i8 1, i32 noundef 8) #13
  call void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 1, i64 0, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 2, i8 5, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 6, i8 8, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 7, i64 1065760325632, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 8) #13
  %i.fi = call i64 @_ZN2v88internal17ExternalReference26re_check_stack_guard_stateEv() #13
  %i.fj = call noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i64 %i.fi, i32 noundef 4, i32 noundef 0, ptr noundef null) #13 ; 0 uses
  call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 0, i8 0, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 5, ptr noundef nonnull %3, i32 noundef 1) #13
  %.sroa.0.0.copyload.i347 = load ptr, ptr %i.x, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 8, ptr %.sroa.0.0.copyload.i347, i8 noundef signext 4) #13
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 7) #13
  %i.fk = load ptr, ptr %i.f, align 8
  %i.fl = call i64 @_ZN2v88internal17ExternalReference37address_of_regexp_stack_stack_pointerEPNS0_7IsolateE(ptr noundef %i.fk) #13
  %i.fm = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i64 %i.fl, i8 1) #13 ; 2 uses
  %i.fn = extractvalue { i64, ptr } %i.fm, 0
  %i.fo = extractvalue { i64, ptr } %i.fm, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 1, i64 %i.fn, ptr %i.fo, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 6, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 1, i8 8, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 0) #13
  br label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %bb.am
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
end_hunk_0
