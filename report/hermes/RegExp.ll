inline.NumInlined: 2505
inline.NumDeleted: 964
begin_hunk_0_@_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_:bb.a

bb.eh:                                            ; preds = %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit274"
  %.not.i1.i275 = icmp samesign ult i32 %.sroa.7.8.extract.trunc, 1073741824
  br i1 %.not.i1.i275, label %bb.eu, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.sroa.0.0.copyload.i.i.i.i2.i276 = load i64, ptr %i.pt, align 8, !tbaa !17
  %i.qo = and i64 %.sroa.0.0.copyload.i.i.i.i2.i276, 281474976710655
  %i.qp = inttoptr i64 %i.qo to ptr               ; 8 uses
  %i.qq = load i32, ptr %i.qp, align 4            ; 3 uses
  %i.qr = icmp ugt i32 %i.qq, 150994943
  br i1 %i.qr, label %bb.ev, label %bb.ej, !prof !16

bb.ej:                                            ; preds = %bb.ei
  %.mask.i.i.i.i.i.i.i.i.i3.i277 = and i32 %i.qq, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i277, label %bb.em [
    i32 117440512, label %bb.ek
    i32 50331648, label %bb.el
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 12
  br label %bb.ew

bb.el:                                            ; preds = %bb.ej
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  br label %bb.ew

bb.em:                                            ; preds = %bb.ej
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i284 = load i64, ptr %i.qu, align 8, !tbaa !17
  %i.qv = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i284, 281474976710655
  %i.qw = inttoptr i64 %i.qv to ptr
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !65
  br label %bb.ew

bb.en:                                            ; preds = %bb.ea
  %i.qz = and i64 %i.pu, 1073741823               ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.qz
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.eo:                                            ; preds = %bb.ec, %bb.ee, %bb.ef, %bb.eg
  %.0.i.sink.i.i289.ph = phi ptr [ %i.qn, %bb.eg ], [ %i.qi, %bb.ef ], [ %i.qh, %bb.ee ], [ %i.qg, %bb.ec ]
  %i.rb = and i64 %i.pu, 1073741823               ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i289.ph, i64 %i.rb ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i303 = load i64, ptr %i.pt, align 8, !tbaa !17
  %i.rd = and i64 %.sroa.0.0.copyload.i.i.i.i.i303, 281474976710655
  %i.re = inttoptr i64 %i.rd to ptr               ; 5 uses
  %i.rf = load i32, ptr %i.re, align 4            ; 2 uses
  %i.rg = icmp ugt i32 %i.rf, 150994943
  br i1 %i.rg, label %bb.ep, label %bb.eq, !prof !16

bb.ep:                                            ; preds = %bb.eo
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !62
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.eq:                                            ; preds = %bb.eo
  %.mask.i.i.i.i.i.i.i.i.i.i304 = and i32 %i.rf, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i304, label %bb.et [
    i32 134217728, label %bb.er
    i32 67108864, label %bb.es
  ]

bb.er:                                            ; preds = %bb.eq
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.es:                                            ; preds = %bb.eq
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.et:                                            ; preds = %bb.eq
  %i.rl = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i307 = load i64, ptr %i.rl, align 8, !tbaa !17
  %i.rm = and i64 %.sroa.0.0.copyload.i.i.i2.i.i307, 281474976710655
  %i.rn = inttoptr i64 %i.rm to ptr
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !62
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305: ; preds = %bb.en, %bb.et, %bb.es, %bb.er, %bb.ep
  %i.rq = phi ptr [ %i.ra, %bb.en ], [ %i.rc, %bb.ep ], [ %i.rc, %bb.er ], [ %i.rc, %bb.es ], [ %i.rc, %bb.et ]
  %i.rr = phi i64 [ %i.qz, %bb.en ], [ %i.rb, %bb.ep ], [ %i.rb, %bb.er ], [ %i.rb, %bb.es ], [ %i.rb, %bb.et ]
  %.0.i.sink.i.i306 = phi ptr [ %i.pt, %bb.en ], [ %i.ri, %bb.ep ], [ %i.rj, %bb.er ], [ %i.rk, %bb.es ], [ %i.rp, %bb.et ]
  %i.rs = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i306, i64 %i.rr
  %.sroa.7.12.extract.shift389 = lshr i64 %i.pu, 32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.sroa.7.12.extract.shift389
  br label %_ZNK6hermes2vm10StringView3endEv.exit308

bb.eu:                                            ; preds = %bb.eh
  %i.ru = and i64 %i.pu, 1073741823               ; 2 uses
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %i.ru
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

bb.ev:                                            ; preds = %bb.ei
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !65 ; 2 uses
  %i.ry = and i64 %i.pu, 1073741823               ; 2 uses
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %i.ry
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

bb.ew:                                            ; preds = %bb.em, %bb.el, %bb.ek
  %.0.i.sink.i4.i279.ph.ph = phi ptr [ %i.qs, %bb.ek ], [ %i.qt, %bb.el ], [ %i.qy, %bb.em ]
  %i.sa = and i64 %i.pu, 1073741823               ; 4 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i279.ph.ph, i64 %i.sa ; 3 uses
  %.mask.i.i.i.i.i.i.i.i.i3.i294 = and i32 %i.qq, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i294, label %bb.ez [
    i32 117440512, label %bb.ex
    i32 50331648, label %bb.ey
  ]

bb.ex:                                            ; preds = %bb.ew
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qp, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

bb.ey:                                            ; preds = %bb.ew
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

bb.ez:                                            ; preds = %bb.ew
  %i.se = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i301 = load i64, ptr %i.se, align 8, !tbaa !17
  %i.sf = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i301, 281474976710655
  %i.sg = inttoptr i64 %i.sf to ptr
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !65
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295: ; preds = %bb.eu, %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %.pre-phi583 = phi i64 [ %i.ru, %bb.eu ], [ %i.sa, %bb.ez ], [ %i.sa, %bb.ey ], [ %i.sa, %bb.ex ], [ %i.ry, %bb.ev ]
  %i.sj = phi ptr [ %i.rv, %bb.eu ], [ %i.sb, %bb.ez ], [ %i.sb, %bb.ey ], [ %i.sb, %bb.ex ], [ %i.rz, %bb.ev ]
  %.0.i.sink.i4.i296 = phi ptr [ %i.pt, %bb.eu ], [ %i.si, %bb.ez ], [ %i.sd, %bb.ey ], [ %i.sc, %bb.ex ], [ %i.rx, %bb.ev ]
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i296, i64 %.pre-phi583
  %.sroa.7.12.extract.shift = lshr i64 %i.pu, 32
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.sk, i64 %.sroa.7.12.extract.shift
  br label %_ZNK6hermes2vm10StringView3endEv.exit308

_ZNK6hermes2vm10StringView3endEv.exit308:         ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295
  %.sroa.0.0.i281496 = phi ptr [ %i.rq, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.3.0.i280494 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ %i.sj, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.3.0.i297 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ %i.sl, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.0.0.i298 = phi ptr [ %i.rt, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %i.sm = call noundef ptr @_ZN4llvh15SmallVectorImplIDsE6insertIN6hermes2vm10StringView14const_iteratorEvEEPDsS7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.py, ptr %.sroa.0.0.i281496, ptr %.sroa.3.0.i280494, ptr %.sroa.0.0.i298, ptr %.sroa.3.0.i297) ; 0 uses
  br label %bb.fz

bb.fa:                                            ; preds = %bb.du
  %i.sn = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.so = zext i32 %i.sn to i64
  %i.sp = load i32, ptr %i.af, align 8, !tbaa !47
  %i.sq = zext i32 %i.sp to i64                   ; 3 uses
  %i.sr = sub nsw i64 %i.so, %i.sq
  %i.ss = icmp ult i64 %i.sr, 2
  br i1 %i.ss, label %.thread.i314, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316

.thread.i314:                                     ; preds = %bb.fa
  %i.st = add nuw nsw i64 %i.sq, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef %i.st, i64 noundef 2) #12
  %.pre7.pre.i.i315 = load i32, ptr %i.af, align 8, !tbaa !47
  %.pre581 = zext i32 %.pre7.pre.i.i315 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316: ; preds = %.thread.i314, %bb.fa
  %.pre-phi582 = phi i64 [ %.pre581, %.thread.i314 ], [ %i.sq, %bb.fa ]
  %i.su = load ptr, ptr %9, align 8, !tbaa !45
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.su, i64 %.pre-phi582
  %.sroa.4574.0.insert.shift = shl nuw nsw i32 %i.ed, 16
  %.sroa.0573.0.insert.insert = or disjoint i32 %.sroa.4574.0.insert.shift, 36
  store i32 %.sroa.0573.0.insert.insert, ptr %i.sv, align 1
  %.pre.i.i313 = load i32, ptr %i.af, align 8, !tbaa !47
  %i.sw = add i32 %.pre.i.i313, 2
  store i32 %i.sw, ptr %i.af, align 8, !tbaa !47
  br label %bb.fz

bb.fb:                                            ; preds = %bb.ar
  %i.sx = icmp eq i16 %.0.i153, 60
  br i1 %i.sx, label %bb.fc, label %bb.fy

bb.fc:                                            ; preds = %bb.fb
  %i.sy = load i64, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.sz = icmp ugt i64 %i.sy, -844424930131969
  %i.ta = and i64 %i.sy, 281474976710655
  %i.tb = icmp ne i64 %i.ta, 0
  %i.tc = and i1 %i.sz, %i.tb
  br i1 %i.tc, label %bb.fd, label %bb.fy

bb.fd:                                            ; preds = %bb.fc
  %i.td = add nuw nsw i64 %.0548, 2               ; 10 uses
  %i.te = icmp ult i64 %i.td, %.sroa.12.12.extract.shift
  br i1 %i.te, label %.lr.ph, label %.thread504

.lr.ph:                                           ; preds = %bb.fd
  br i1 %i.ai, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us, label %.lr.ph.split.us.split

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us: ; preds = %.lr.ph.split.us, %bb.fe
  %.0125526.us.us = phi i64 [ %i.ti, %bb.fe ], [ %i.td, %.lr.ph.split.us ] ; 3 uses
  %14 = and i64 %.0125526.us.us, 4294967295
  %i.tf = getelementptr inbounds nuw i8, ptr %i.av, i64 %14
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !27
  %i.th = icmp eq i8 %i.tg, 62
  br i1 %i.th, label %.split.us, label %bb.fe

bb.fe:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us
  %i.ti = add nsw i64 %.0125526.us.us, 1          ; 2 uses
  %exitcond570.not = icmp eq i64 %i.ti, %.sroa.12.12.extract.shift
  br i1 %exitcond570.not, label %.thread504, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us, !llvm.loop !416

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %.sroa.0.0.copyload.i.i.i.i.i325.us = load i64, ptr %i.x, align 8, !tbaa !17
  %i.tj = and i64 %.sroa.0.0.copyload.i.i.i.i.i325.us, 281474976710655
  %i.tk = inttoptr i64 %i.tj to ptr               ; 4 uses
  %i.tl = load i32, ptr %i.tk, align 4            ; 2 uses
  %i.tm = icmp ugt i32 %i.tl, 150994943
  %.mask.i.i.i.i.i.i.i.i.i.i326.us = and i32 %i.tl, 251658240
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 8 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 12
  br i1 %i.tm, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split, !prof !16

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !62
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.aj
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537: ; preds = %bb.ff, %.lr.ph.split.us.split.split.us
  %.0125526.us.us536 = phi i64 [ %i.td, %.lr.ph.split.us.split.split.us ], [ %i.tv, %bb.ff ] ; 3 uses
  %15 = and i64 %.0125526.us.us536, 4294967295
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %15
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !27
  %i.tu = icmp eq i8 %i.tt, 62
  br i1 %i.tu, label %.split.us, label %bb.ff

bb.ff:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537
  %i.tv = add nsw i64 %.0125526.us.us536, 1       ; 2 uses
  %exitcond569.not = icmp eq i64 %i.tv, %.sroa.12.12.extract.shift
  br i1 %exitcond569.not, label %.thread504, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537, !llvm.loop !416

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %bb.fi
  %.0125526.us = phi i64 [ %i.ue, %bb.fi ], [ %i.td, %.lr.ph.split.us.split ] ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i326.us, label %bb.fh [
    i32 134217728, label %bb.fg
    i32 67108864, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us
  ]

bb.fg:                                            ; preds = %.lr.ph.split.us.split.split
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us

bb.fh:                                            ; preds = %.lr.ph.split.us.split.split
  %.sroa.0.0.copyload.i.i.i2.i.i329.us = load i64, ptr %i.tn, align 8, !tbaa !17
  %i.tw = and i64 %.sroa.0.0.copyload.i.i.i2.i.i329.us, 281474976710655
  %i.tx = inttoptr i64 %i.tw to ptr
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !62
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us: ; preds = %.lr.ph.split.us.split.split, %bb.fh, %bb.fg
  %.0.i.sink.i.i328.us = phi ptr [ %i.tz, %bb.fh ], [ %i.to, %bb.fg ], [ %i.tn, %.lr.ph.split.us.split.split ]
  %i.ua = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i328.us, i64 %i.aj
  %16 = and i64 %.0125526.us, 4294967295
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %16
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !27
  %i.ud = icmp eq i8 %i.uc, 62
  br i1 %i.ud, label %.split.us, label %bb.fi

bb.fi:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us
  %i.ue = add nsw i64 %.0125526.us, 1             ; 2 uses
  %exitcond568.not = icmp eq i64 %i.ue, %.sroa.12.12.extract.shift
  br i1 %exitcond568.not, label %.thread504, label %.lr.ph.split.us.split.split, !llvm.loop !416

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, label %.lr.ph.split.split

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us: ; preds = %.lr.ph.split, %bb.fj
  %.0125526.us527 = phi i64 [ %i.ui, %bb.fj ], [ %i.td, %.lr.ph.split ] ; 3 uses
  %17 = and i64 %.0125526.us527, 4294967295
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %17
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !80
  %i.uh = icmp eq i16 %i.ug, 62
  br i1 %i.uh, label %.split.us, label %bb.fj

bb.fj:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us
  %i.ui = add nsw i64 %.0125526.us527, 1          ; 2 uses
  %exitcond567.not = icmp eq i64 %i.ui, %.sroa.12.12.extract.shift
  br i1 %exitcond567.not, label %.thread504, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, !llvm.loop !416

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.sroa.0.0.copyload.i.i.i.i4.i318 = load i64, ptr %i.x, align 8, !tbaa !17
  %i.uj = and i64 %.sroa.0.0.copyload.i.i.i.i4.i318, 281474976710655
  %i.uk = inttoptr i64 %i.uj to ptr               ; 4 uses
  %i.ul = load i32, ptr %i.uk, align 4            ; 2 uses
  %i.um = icmp ugt i32 %i.ul, 150994943
  %.mask.i.i.i.i.i.i.i.i.i5.i319 = and i32 %i.ul, 251658240
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 8 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 12
  br i1 %i.um, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split, !prof !16

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.up = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !65
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %i.aj
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531: ; preds = %bb.fk, %.lr.ph.split.split.split.us
  %.0125526.us530 = phi i64 [ %i.td, %.lr.ph.split.split.split.us ], [ %i.uv, %bb.fk ] ; 3 uses
  %18 = and i64 %.0125526.us530, 4294967295
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.ur, i64 %18
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !80
  %i.uu = icmp eq i16 %i.ut, 62
  br i1 %i.uu, label %.split.us, label %bb.fk

bb.fk:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531
  %i.uv = add nsw i64 %.0125526.us530, 1          ; 2 uses
  %exitcond566.not = icmp eq i64 %i.uv, %.sroa.12.12.extract.shift
  br i1 %exitcond566.not, label %.thread504, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531, !llvm.loop !416

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.fn
  %.0125526 = phi i64 [ %i.ve, %bb.fn ], [ %i.td, %.lr.ph.split.split ] ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i319, label %bb.fm [
    i32 117440512, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320
    i32 50331648, label %bb.fl
  ]

bb.fl:                                            ; preds = %.lr.ph.split.split.split
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320

bb.fm:                                            ; preds = %.lr.ph.split.split.split
  %.sroa.0.0.copyload.i.i.i2.i7.i323 = load i64, ptr %i.un, align 8, !tbaa !17
  %i.uw = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i323, 281474976710655
  %i.ux = inttoptr i64 %i.uw to ptr
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !65
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320: ; preds = %.lr.ph.split.split.split, %bb.fm, %bb.fl
  %.0.i.sink.i6.i321 = phi ptr [ %i.uz, %bb.fm ], [ %i.un, %bb.fl ], [ %i.uo, %.lr.ph.split.split.split ]
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i321, i64 %i.aj
  %19 = and i64 %.0125526, 4294967295
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %19
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !80
  %i.vd = icmp eq i16 %i.vc, 62
  br i1 %i.vd, label %.split.us, label %bb.fn

bb.fn:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320
  %i.ve = add nsw i64 %.0125526, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ve, %.sroa.12.12.extract.shift
  br i1 %exitcond.not, label %.thread504, label %.lr.ph.split.split.split, !llvm.loop !416

.split.us:                                        ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us
  %.us-phi = phi i64 [ %.0125526.us530, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531 ], [ %.0125526.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us ], [ %.0125526.us527, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us ], [ %.0125526.us.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us ], [ %.0125526.us.us536, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537 ], [ %.0125526, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320 ] ; 3 uses
  %i.vf = icmp eq i64 %.us-phi, 0
  br i1 %i.vf, label %.thread504, label %bb.fo

.thread504:                                       ; preds = %bb.fn, %bb.fk, %bb.fj, %bb.fi, %bb.ff, %bb.fe, %bb.fd, %.split.us
  %i.vg = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.vh = zext i32 %i.vg to i64
  %i.vi = load i32, ptr %i.af, align 8, !tbaa !47
  %i.vj = zext i32 %i.vi to i64                   ; 3 uses
  %i.vk = sub nsw i64 %i.vh, %i.vj
  %i.vl = icmp ult i64 %i.vk, 2
  br i1 %i.vl, label %.thread.i336, label %.thread508

.thread.i336:                                     ; preds = %.thread504
  %i.vm = add nuw nsw i64 %i.vj, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef %i.vm, i64 noundef 2) #12
  %.pre7.pre.i.i337 = load i32, ptr %i.af, align 8, !tbaa !47
  %.pre584 = zext i32 %.pre7.pre.i.i337 to i64
  br label %.thread508

.thread508:                                       ; preds = %.thread504, %.thread.i336
  %.pre-phi585 = phi i64 [ %i.vj, %.thread504 ], [ %.pre584, %.thread.i336 ]
  %i.vn = load ptr, ptr %9, align 8, !tbaa !45
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.vn, i64 %.pre-phi585
  store i32 3932196, ptr %i.vo, align 1
  %.pre.i.i335 = load i32, ptr %i.af, align 8, !tbaa !47
  %i.vp = add i32 %.pre.i.i335, 2
  store i32 %i.vp, ptr %i.af, align 8, !tbaa !47
  br label %bb.fz

bb.fo:                                            ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  store ptr %i.aw, ptr %12, align 8, !tbaa !45
  store i32 0, ptr %i.ax, align 8, !tbaa !47
  store i32 32, ptr %i.ay, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.vq = sub i64 %.us-phi, %i.td
  %i.vr = add i64 %i.td, %i.y
  %i.vs = and i64 %i.vr, 1073741823
  %.sroa.2.8.insert.ext.i343 = or disjoint i64 %i.az, %i.vs
  %.sroa.2.12.insert.ext.i344 = shl i64 %i.vq, 32
  %.sroa.2.12.insert.insert.i346 = or disjoint i64 %.sroa.2.12.insert.ext.i344, %.sroa.2.8.insert.ext.i343
  store ptr %i.x, ptr %13, align 8
  store i64 %.sroa.2.12.insert.insert.i346, ptr %i.ba, align 8
  %i.vt = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12, i1 noundef zeroext false) #12 ; 2 uses
  %i.vu = extractvalue { ptr, i64 } %i.vt, 0      ; 3 uses
  %i.vv = extractvalue { ptr, i64 } %i.vt, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %.not10.i.i = icmp eq i64 %i.vv, 0
  br i1 %.not10.i.i, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.fo
  %i.vw = add i64 %i.vv, 9223372036854775807
  %i.vx = and i64 %i.vw, 9223372036854775807      ; 2 uses
  %i.vy = add nuw i64 %i.vx, 1                    ; 2 uses
  %xtraiter = and i64 %i.vy, 3                    ; 3 uses
  %i.vz = icmp samesign ult i64 %i.vx, 3
  br i1 %i.vz, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.vy, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.xa, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %i.vu, %.lr.ph.i.i.preheader.new ], [ %i.xb, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.wa = load i16, ptr %.0811.i.i, align 2, !tbaa !80
  %i.wb = zext i16 %i.wa to i32
  %i.wc = add i32 %.012.i.i, %i.wb
  %i.wd = mul i32 %i.wc, 1025                     ; 2 uses
  %i.we = lshr i32 %i.wd, 6
  %i.wf = xor i32 %i.we, %i.wd
  %i.wg = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !80
  %i.wi = zext i16 %i.wh to i32
  %i.wj = add i32 %i.wf, %i.wi
  %i.wk = mul i32 %i.wj, 1025                     ; 2 uses
  %i.wl = lshr i32 %i.wk, 6
  %i.wm = xor i32 %i.wl, %i.wk
  %i.wn = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !80
  %i.wp = zext i16 %i.wo to i32
  %i.wq = add i32 %i.wm, %i.wp
  %i.wr = mul i32 %i.wq, 1025                     ; 2 uses
  %i.ws = lshr i32 %i.wr, 6
  %i.wt = xor i32 %i.ws, %i.wr
  %i.wu = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 6
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !80
  %i.ww = zext i16 %i.wv to i32
  %i.wx = add i32 %i.wt, %i.ww
  %i.wy = mul i32 %i.wx, 1025                     ; 2 uses
  %i.wz = lshr i32 %i.wy, 6
  %i.xa = xor i32 %i.wz, %i.wy                    ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.xa, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %.0811.i.i.epil.init = phi ptr [ %i.vu, %.lr.ph.i.i.preheader ], [ %i.xb, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod692 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod692)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i32 [ %i.xh, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0811.i.i.epil = phi ptr [ %i.xi, %.lr.ph.i.i.epil ], [ %.0811.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.xc = load i16, ptr %.0811.i.i.epil, align 2, !tbaa !80
  %i.xd = zext i16 %i.xc to i32
  %i.xe = add i32 %.012.i.i.epil, %i.xd
  %i.xf = mul i32 %i.xe, 1025                     ; 2 uses
  %i.xg = lshr i32 %i.xf, 6
  %i.xh = xor i32 %i.xg, %i.xf                    ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.0811.i.i.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !417

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.fo
  %.0.lcssa.i.i = phi i32 [ 0, %bb.fo ], [ %i.xa, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ], [ %i.xh, %.lr.ph.i.i.epil ]
  %i.xj = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.bb, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.vu, i64 %i.vv, i32 noundef %.0.lcssa.i.i) #12 ; 2 uses
  %.not521 = icmp eq ptr %i.xj, inttoptr (i64 -1 to ptr)
  br i1 %.not521, label %.thread506, label %bb.fp, !prof !16

bb.fp:                                            ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0.0.copyload.i.i350 = load i64, ptr %i.xj, align 8, !tbaa !17
  %i.xk = trunc i64 %.sroa.0.0.copyload.i.i350 to i32
  %i.xl = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.xk, ptr nonnull %5, i32 0, ptr noundef null) #12 ; 2 uses
  %i.xm = extractvalue { i32, i64 } %i.xl, 0
  %i.xn = extractvalue { i32, i64 } %i.xl, 1      ; 3 uses
  %i.xo = icmp eq i32 %i.xm, 0
  br i1 %i.xo, label %.thread506, label %bb.fq, !prof !16

bb.fq:                                            ; preds = %bb.fp
  %.mask.i = and i64 %i.xn, -140737488355328
  %i.xp = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.xp, label %bb.fv, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xq = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 192 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !32 ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 200
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !41
  %i.xv = icmp ult ptr %i.xs, %i.xu
  br i1 %i.xv, label %bb.fs, label %bb.ft, !prof !42

bb.fs:                                            ; preds = %bb.fr
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  store ptr %i.xw, ptr %i.xr, align 8, !tbaa !32
  store i64 %i.xn, ptr %i.xs, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.ft:                                            ; preds = %bb.fr
  %i.xx = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.xq, i64 %i.xn) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.fs, %bb.ft
  %.0.i.i.i.i.i.i = phi ptr [ %i.xs, %bb.fs ], [ %i.xx, %bb.ft ]
  %i.xy = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not522 = icmp eq ptr %i.xy, inttoptr (i64 -1 to ptr)
  br i1 %.not522, label %.thread506, label %bb.fu

bb.fu:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.xy, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fq
  %i.xz = add nuw i64 %.us-phi, 1
  br label %.thread506

.thread506:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.fv, %bb.fp, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.2119 = phi i1 [ false, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ false, %bb.fp ], [ true, %bb.fv ], [ false, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %.4 = phi i64 [ %.0548, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ %.0548, %bb.fp ], [ %i.xz, %bb.fv ], [ %.0548, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %i.ya = load ptr, ptr %12, align 8, !tbaa !45   ; 2 uses
  %i.yb = icmp eq ptr %i.ya, %i.aw
  br i1 %i.yb, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %.thread506
  call void @free(ptr noundef %i.ya) #12
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.thread506
end_hunk_0
