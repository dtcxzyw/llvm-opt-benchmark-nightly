Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExp?download=true
inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

bb.ai:                                            ; preds = %bb.ag
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

bb.aj:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i154 = load i64, ptr %i.dv, align 8, !tbaa !16
  %i.dw = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i154, 281474976710655
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.0.i.sink.i6.i152 = phi ptr [ %i.x, %bb.ad ], [ %i.ds, %bb.af ], [ %i.dt, %bb.ah ], [ %i.du, %bb.ai ], [ %i.dz, %bb.aj ]
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i152, i64 %i.aj
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.cl
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !64
  br label %_ZNK6hermes2vm10StringViewixEj.exit161

_ZNK6hermes2vm10StringViewixEj.exit161:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151
  %.0.i153 = phi i16 [ %i.dm, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158 ], [ %i.ec, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151 ] ; 6 uses
  %i.ed = zext i16 %.0.i153 to i32                ; 4 uses
  switch i16 %.0.i153, label %bb.ar [
    i16 36, label %bb.ak
    i16 38, label %bb.am
    i16 96, label %bb.an
    i16 39, label %bb.ao
  ]

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  %i.ee = load i32, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.ef = load i32, ptr %i.ag, align 4, !tbaa !42
  %.not.i.i162 = icmp ult i32 %i.ee, %i.ef
  br i1 %.not.i.i162, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164, label %bb.al, !prof !38

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef 0, i64 noundef 2) #12
  %.pre.i.i163 = load i32, ptr %i.af, align 8, !tbaa !43
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164: ; preds = %bb.ak, %bb.al
  %i.eg = phi i32 [ %.pre.i.i163, %bb.al ], [ %i.ee, %bb.ak ]
  %i.eh = load ptr, ptr %9, align 8, !tbaa !41
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ei
  store i16 36, ptr %i.ej, align 1
  %i.ek = load i32, ptr %i.af, align 8, !tbaa !43
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.af, align 8, !tbaa !43
  %i.em = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.am:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  %i.en = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #12 ; 0 uses
  %i.eo = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.an:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store ptr %i.ar, ptr %10, align 8
  store i64 %.sroa.2.12.insert.insert.i, ptr %i.at, align 8
  %i.ep = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.eq = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.ao:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  br i1 %i.al, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  store ptr %i.ar, ptr %11, align 8
  store i64 %.sroa.2.12.insert.insert.i.i, ptr %i.as, align 8
  %i.er = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.es = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.ar:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  %i.et = add i16 %.0.i153, -48
  %or.cond = icmp ult i16 %i.et, 10
  br i1 %or.cond, label %bb.as, label %bb.fb

bb.as:                                            ; preds = %bb.ar
  %i.eu = add nsw i32 %i.ed, -48                  ; 5 uses
  %i.ev = add nuw nsw i64 %.0548, 2               ; 7 uses
  %i.ew = icmp ult i64 %i.ev, %.sroa.12.12.extract.shift
  br i1 %i.ew, label %bb.at, label %bb.du

bb.at:                                            ; preds = %bb.as
  br i1 %i.ai, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i.i.i.i174 = load i64, ptr %i.x, align 8, !tbaa !16
  %i.ex = and i64 %.sroa.0.0.copyload.i.i.i.i.i174, 281474976710655
  %i.ey = inttoptr i64 %i.ex to ptr               ; 5 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = icmp ugt i32 %i.ez, 150994943
  br i1 %i.fa, label %bb.aw, label %bb.ax, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

bb.ax:                                            ; preds = %bb.av
  %.mask.i.i.i.i.i.i.i.i.i.i175 = and i32 %i.ez, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i175, label %bb.ba [
    i32 134217728, label %bb.ay
    i32 67108864, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

bb.az:                                            ; preds = %bb.ax
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

bb.ba:                                            ; preds = %bb.ax
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i178 = load i64, ptr %i.ff, align 8, !tbaa !16
  %i.fg = and i64 %.sroa.0.0.copyload.i.i.i2.i.i178, 281474976710655
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.au
  %.0.i.sink.i.i177 = phi ptr [ %i.x, %bb.au ], [ %i.fc, %bb.aw ], [ %i.fd, %bb.ay ], [ %i.fe, %bb.az ], [ %i.fj, %bb.ba ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i177, i64 %i.aj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ev
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !23
  %i.fn = sext i8 %i.fm to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit179

bb.bb:                                            ; preds = %bb.at
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.0.0.copyload.i.i.i.i4.i167 = load i64, ptr %i.x, align 8, !tbaa !16
  %i.fo = and i64 %.sroa.0.0.copyload.i.i.i.i4.i167, 281474976710655
  %i.fp = inttoptr i64 %i.fo to ptr               ; 5 uses
  %i.fq = load i32, ptr %i.fp, align 4            ; 2 uses
  %i.fr = icmp ugt i32 %i.fq, 150994943
  br i1 %i.fr, label %bb.bd, label %bb.be, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

bb.be:                                            ; preds = %bb.bc
  %.mask.i.i.i.i.i.i.i.i.i5.i168 = and i32 %i.fq, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i168, label %bb.bh [
    i32 117440512, label %bb.bf
    i32 50331648, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

bb.bg:                                            ; preds = %bb.be
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

bb.bh:                                            ; preds = %bb.be
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i172 = load i64, ptr %i.fw, align 8, !tbaa !16
  %i.fx = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i172, 281474976710655
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd, %bb.bb
  %.0.i.sink.i6.i170 = phi ptr [ %i.x, %bb.bb ], [ %i.ft, %bb.bd ], [ %i.fu, %bb.bf ], [ %i.fv, %bb.bg ], [ %i.ga, %bb.bh ]
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i170, i64 %i.aj
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.ev
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !64
  br label %_ZNK6hermes2vm10StringViewixEj.exit179

_ZNK6hermes2vm10StringViewixEj.exit179:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169
  %.0.i171 = phi i16 [ %i.fn, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176 ], [ %i.gd, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169 ] ; 2 uses
  %i.ge = mul nuw nsw i32 %i.eu, 10
  %i.gf = zext i16 %.0.i171 to i32
  %i.gg = add nsw i32 %i.ge, -48
  %i.gh = add nsw i32 %i.gg, %i.gf                ; 2 uses
  %i.gi = add i16 %.0.i171, -58
  %or.cond8 = icmp ult i16 %i.gi, -10
  %i.gj = icmp eq i32 %i.gh, 0
  %or.cond10.not524 = select i1 %or.cond8, i1 true, i1 %i.gj
  %i.gk = zext nneg i32 %i.gh to i64              ; 2 uses
  %.not137 = icmp samesign ult i64 %i.v, %i.gk
  %or.cond141 = select i1 %or.cond10.not524, i1 true, i1 %.not137
  br i1 %or.cond141, label %bb.cn, label %bb.bi

bb.bi:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit179
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %4, align 8, !tbaa !16
  %i.gl = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.gm = inttoptr i64 %i.gl to ptr
  %14 = getelementptr [4 x i8], ptr %i.gm, i64 %i.gk
  %15 = getelementptr i8, ptr %14, i64 4
  %.sroa.0.0.copyload.i.i180 = load i32, ptr %15, align 4, !tbaa !6 ; 2 uses
  %i.gn = icmp eq i32 %.sroa.0.0.copyload.i.i180, 14
  br i1 %i.gn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.sroa.0.0.copyload.i.i4.i = load i64, ptr %2, align 8, !tbaa !16
  %i.go = and i64 %.sroa.0.0.copyload.i.i4.i, 281474976710655
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !75 ; 2 uses
  %i.gs = and i32 %i.gr, 2147483647
  %i.gt = sub i32 %.sroa.8.12.extract.trunc, %i.gs
  %i.gu = add i32 %i.gr, %.sroa.2.8.extract.trunc.i.i
  %i.gv = and i32 %i.gu, 1073741823
  %i.gw = or disjoint i32 %i.gv, %i.ap
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.gw to i64
  %.sroa.2.12.insert.ext.i.i.i = zext i32 %i.gt to i64
  %.sroa.2.12.insert.shift.i.i.i = shl nuw i64 %.sroa.2.12.insert.ext.i.i.i, 32
  %.sroa.2.12.insert.insert.i.i.i = or disjoint i64 %.sroa.2.12.insert.shift.i.i.i, %.sroa.2.8.insert.ext.i.i.i
  %.fca.1.insert.i.i.i = insertvalue { ptr, i64 } %i.z, i64 %.sroa.2.12.insert.insert.i.i.i, 1
  br label %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit"

bb.bk:                                            ; preds = %bb.bi
  %i.gx = and i32 %.sroa.0.0.copyload.i.i180, -8
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add i64 %i.gy, %i.bd
  %i.ha = or i64 %i.gz, -844424930131968          ; 2 uses
  %i.hb = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 192 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !36 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 200
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !37
  %i.hg = icmp ult ptr %i.hd, %i.hf
  br i1 %i.hg, label %bb.bl, label %bb.bm, !prof !38

bb.bl:                                            ; preds = %bb.bk
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hh, ptr %i.hc, align 8, !tbaa !36
  store i64 %i.ha, ptr %i.hd, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.hi = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.hb, i64 %i.ha) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.hd, %bb.bl ], [ %i.hi, %bb.bm ]
  %i.hj = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i.i) #12
  br label %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit"

"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit": ; preds = %bb.bj, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i
  %.pn.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i, %bb.bj ], [ %i.hj, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i ] ; 2 uses
  %i.hk = extractvalue { ptr, i64 } %.pn.i, 0     ; 7 uses
  %i.hl = extractvalue { ptr, i64 } %.pn.i, 1     ; 8 uses
  %i.hm = load ptr, ptr %9, align 8, !tbaa !41
  %i.hn = load i32, ptr %i.af, align 8, !tbaa !43
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %i.ho
  %.sroa.7409.8.extract.trunc = trunc i64 %i.hl to i32 ; 3 uses
  %i.hq = icmp slt i32 %.sroa.7409.8.extract.trunc, 0
  br i1 %i.hq, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit"
  %i.hr = and i32 %.sroa.7409.8.extract.trunc, 1073741824
  %.not.i.i184 = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i184, label %bb.ca, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.0.0.copyload.i.i.i.i.i185 = load i64, ptr %i.hk, align 8, !tbaa !16
  %i.hs = and i64 %.sroa.0.0.copyload.i.i.i.i.i185, 281474976710655
  %i.ht = inttoptr i64 %i.hs to ptr               ; 5 uses
  %i.hu = load i32, ptr %i.ht, align 4            ; 2 uses
  %i.hv = icmp ugt i32 %i.hu, 150994943
  br i1 %i.hv, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %bb.bo
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !57
  br label %bb.cb

bb.bq:                                            ; preds = %bb.bo
  %.mask.i.i.i.i.i.i.i.i.i.i186 = and i32 %i.hu, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i186, label %bb.bt [
    i32 134217728, label %bb.br
    i32 67108864, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  br label %bb.cb

bb.bs:                                            ; preds = %bb.bq
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  br label %bb.cb

bb.bt:                                            ; preds = %bb.bq
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i189 = load i64, ptr %i.ia, align 8, !tbaa !16
  %i.ib = and i64 %.sroa.0.0.copyload.i.i.i2.i.i189, 281474976710655
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !57
  br label %bb.cb

bb.bu:                                            ; preds = %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit"
  %.not.i1.i = icmp samesign ult i32 %.sroa.7409.8.extract.trunc, 1073741824
  br i1 %.not.i1.i, label %bb.ch, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.hk, align 8, !tbaa !16
  %i.if = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.ig = inttoptr i64 %i.if to ptr               ; 8 uses
  %i.ih = load i32, ptr %i.ig, align 4            ; 3 uses
  %i.ii = icmp ugt i32 %i.ih, 150994943
  br i1 %i.ii, label %bb.ci, label %bb.bw, !prof !15

bb.bw:                                            ; preds = %bb.bv
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ih, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.bz [
    i32 117440512, label %bb.bx
    i32 50331648, label %bb.by
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  br label %bb.cj

bb.by:                                            ; preds = %bb.bw
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  br label %bb.cj

bb.bz:                                            ; preds = %bb.bw
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.il, align 8, !tbaa !16
  %i.im = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !61
  br label %bb.cj

bb.ca:                                            ; preds = %bb.bn
  %i.iq = and i64 %i.hl, 1073741823               ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.iq
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i203

bb.cb:                                            ; preds = %bb.bp, %bb.br, %bb.bs, %bb.bt
  %.0.i.sink.i.i188.ph = phi ptr [ %i.ie, %bb.bt ], [ %i.hz, %bb.bs ], [ %i.hy, %bb.br ], [ %i.hx, %bb.bp ]
  %i.is = and i64 %i.hl, 1073741823               ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i188.ph, i64 %i.is ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i201 = load i64, ptr %i.hk, align 8, !tbaa !16
  %i.iu = and i64 %.sroa.0.0.copyload.i.i.i.i.i201, 281474976710655
  %i.iv = inttoptr i64 %i.iu to ptr               ; 5 uses
  %i.iw = load i32, ptr %i.iv, align 4            ; 2 uses
  %i.ix = icmp ugt i32 %i.iw, 150994943
  br i1 %i.ix, label %bb.cc, label %bb.cd, !prof !15

bb.cc:                                            ; preds = %bb.cb
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i203

bb.cd:                                            ; preds = %bb.cb
  %.mask.i.i.i.i.i.i.i.i.i.i202 = and i32 %i.iw, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i202, label %bb.cg [
    i32 134217728, label %bb.ce
    i32 67108864, label %bb.cf
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i203

bb.cf:                                            ; preds = %bb.cd
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i203

bb.cg:                                            ; preds = %bb.cd
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i205 = load i64, ptr %i.jc, align 8, !tbaa !16
  %i.jd = and i64 %.sroa.0.0.copyload.i.i.i2.i.i205, 281474976710655
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i203

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i203: ; preds = %bb.ca, %bb.cg, %bb.cf, %bb.ce, %bb.cc
  %i.jh = phi ptr [ %i.ir, %bb.ca ], [ %i.it, %bb.cc ], [ %i.it, %bb.ce ], [ %i.it, %bb.cf ], [ %i.it, %bb.cg ]
  %i.ji = phi i64 [ %i.iq, %bb.ca ], [ %i.is, %bb.cc ], [ %i.is, %bb.ce ], [ %i.is, %bb.cf ], [ %i.is, %bb.cg ]
  %.0.i.sink.i.i204 = phi ptr [ %i.hk, %bb.ca ], [ %i.iz, %bb.cc ], [ %i.ja, %bb.ce ], [ %i.jb, %bb.cf ], [ %i.jg, %bb.cg ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i204, i64 %i.ji
  %.sroa.7409.12.extract.shift413 = lshr i64 %i.hl, 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.sroa.7409.12.extract.shift413
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.ch:                                            ; preds = %bb.bu
  %i.jl = and i64 %i.hl, 1073741823               ; 2 uses
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.jl
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i193

bb.ci:                                            ; preds = %bb.bv
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
end_hunk_0
