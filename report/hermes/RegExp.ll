Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExp?download=true
inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_:bb.a
  %.0.i = phi i16 [ %i.bu, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ], [ %i.ck, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i ] ; 2 uses
  %.not = icmp eq i16 %.0.i, 36
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6hermes2vm10StringViewixEj.exit
  %i.cl = add nuw nsw i64 %.0547, 1               ; 3 uses
  %i.cm = icmp eq i64 %i.cl, %.sroa.12.12.extract.shift
  br i1 %i.cm, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %_ZNK6hermes2vm10StringViewixEj.exit
  %i.cn = load i32, ptr %i.af, align 8, !tbaa !59 ; 2 uses
  %i.co = load i32, ptr %i.ag, align 4, !tbaa !58
  %.not.i.i147 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i.i147, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit, label %bb.u, !prof !54

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef 0, i64 noundef 2) #12
  %.pre.i.i = load i32, ptr %i.af, align 8, !tbaa !59
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit: ; preds = %bb.t, %bb.u
  %i.cp = phi i32 [ %.pre.i.i, %bb.u ], [ %i.cn, %bb.t ]
  %i.cq = load ptr, ptr %9, align 8, !tbaa !57
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.cr
  store i16 %.0.i, ptr %i.cs, align 1
  %i.ct = load i32, ptr %i.af, align 8, !tbaa !59
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.af, align 8, !tbaa !59
  %i.cv = add nuw nsw i64 %.0547, 1
  br label %bb.fy, !llvm.loop !456

bb.v:                                             ; preds = %bb.s
  br i1 %i.ai, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.copyload.i.i.i.i.i156 = load i64, ptr %i.x, align 8, !tbaa !32
  %i.cw = and i64 %.sroa.0.0.copyload.i.i.i.i.i156, 281474976710655
  %i.cx = inttoptr i64 %i.cw to ptr               ; 5 uses
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, 150994943
  br i1 %i.cz, label %bb.y, label %bb.z, !prof !31

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !73
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158

bb.z:                                             ; preds = %bb.x
  %.mask.i.i.i.i.i.i.i.i.i.i157 = and i32 %i.cy, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i157, label %bb.ac [
    i32 134217728, label %bb.aa
    i32 67108864, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158

bb.ab:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158

bb.ac:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i160 = load i64, ptr %i.de, align 8, !tbaa !32
  %i.df = and i64 %.sroa.0.0.copyload.i.i.i2.i.i160, 281474976710655
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !73
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.w
  %.0.i.sink.i.i159 = phi ptr [ %i.x, %bb.w ], [ %i.db, %bb.y ], [ %i.dc, %bb.aa ], [ %i.dd, %bb.ab ], [ %i.di, %bb.ac ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i159, i64 %i.aj
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cl
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !39
  %i.dm = sext i8 %i.dl to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit161

bb.ad:                                            ; preds = %bb.v
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i.i4.i149 = load i64, ptr %i.x, align 8, !tbaa !32
  %i.dn = and i64 %.sroa.0.0.copyload.i.i.i.i4.i149, 281474976710655
  %i.do = inttoptr i64 %i.dn to ptr               ; 5 uses
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, 150994943
  br i1 %i.dq, label %bb.af, label %bb.ag, !prof !31

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !77
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

bb.ag:                                            ; preds = %bb.ae
  %.mask.i.i.i.i.i.i.i.i.i5.i150 = and i32 %i.dp, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i150, label %bb.aj [
    i32 117440512, label %bb.ah
    i32 50331648, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

bb.ai:                                            ; preds = %bb.ag
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

bb.aj:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i154 = load i64, ptr %i.dv, align 8, !tbaa !32
  %i.dw = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i154, 281474976710655
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !77
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.0.i.sink.i6.i152 = phi ptr [ %i.x, %bb.ad ], [ %i.ds, %bb.af ], [ %i.dt, %bb.ah ], [ %i.du, %bb.ai ], [ %i.dz, %bb.aj ]
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i152, i64 %i.aj
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.cl
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !80
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
  %i.ee = load i32, ptr %i.af, align 8, !tbaa !59 ; 2 uses
  %i.ef = load i32, ptr %i.ag, align 4, !tbaa !58
  %.not.i.i162 = icmp ult i32 %i.ee, %i.ef
  br i1 %.not.i.i162, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164, label %bb.al, !prof !54

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef 0, i64 noundef 2) #12
  %.pre.i.i163 = load i32, ptr %i.af, align 8, !tbaa !59
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164: ; preds = %bb.ak, %bb.al
  %i.eg = phi i32 [ %.pre.i.i163, %bb.al ], [ %i.ee, %bb.ak ]
  %i.eh = load ptr, ptr %9, align 8, !tbaa !57
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ei
  store i16 36, ptr %i.ej, align 1
  %i.ek = load i32, ptr %i.af, align 8, !tbaa !59
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.af, align 8, !tbaa !59
  %i.em = add nuw nsw i64 %.0547, 2
  br label %bb.fy

bb.am:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  %i.en = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #12 ; 0 uses
  %i.eo = add nuw nsw i64 %.0547, 2
  br label %bb.fy

bb.an:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store ptr %i.ar, ptr %10, align 8
  store i64 %.sroa.2.12.insert.insert.i, ptr %i.at, align 8
  %i.ep = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.eq = add nuw nsw i64 %.0547, 2
  br label %bb.fy

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
  %i.es = add nuw nsw i64 %.0547, 2
  br label %bb.fy

bb.ar:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  %i.et = add i16 %.0.i153, -48
  %or.cond = icmp ult i16 %i.et, 10
  br i1 %or.cond, label %bb.as, label %bb.fb

bb.as:                                            ; preds = %bb.ar
  %i.eu = add nsw i32 %i.ed, -48                  ; 5 uses
  %i.ev = add nuw nsw i64 %.0547, 2               ; 7 uses
  %i.ew = icmp samesign ult i64 %i.ev, %.sroa.12.12.extract.shift
  br i1 %i.ew, label %bb.at, label %bb.du

bb.at:                                            ; preds = %bb.as
  br i1 %i.ai, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i.i.i.i174 = load i64, ptr %i.x, align 8, !tbaa !32
  %i.ex = and i64 %.sroa.0.0.copyload.i.i.i.i.i174, 281474976710655
  %i.ey = inttoptr i64 %i.ex to ptr               ; 5 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = icmp ugt i32 %i.ez, 150994943
  br i1 %i.fa, label %bb.aw, label %bb.ax, !prof !31

bb.aw:                                            ; preds = %bb.av
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !73
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
  %.sroa.0.0.copyload.i.i.i2.i.i178 = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fg = and i64 %.sroa.0.0.copyload.i.i.i2.i.i178, 281474976710655
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !73
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.au
  %.0.i.sink.i.i177 = phi ptr [ %i.x, %bb.au ], [ %i.fc, %bb.aw ], [ %i.fd, %bb.ay ], [ %i.fe, %bb.az ], [ %i.fj, %bb.ba ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i177, i64 %i.aj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ev
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !39
  %i.fn = sext i8 %i.fm to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit179

bb.bb:                                            ; preds = %bb.at
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.0.0.copyload.i.i.i.i4.i167 = load i64, ptr %i.x, align 8, !tbaa !32
  %i.fo = and i64 %.sroa.0.0.copyload.i.i.i.i4.i167, 281474976710655
  %i.fp = inttoptr i64 %i.fo to ptr               ; 5 uses
  %i.fq = load i32, ptr %i.fp, align 4            ; 2 uses
  %i.fr = icmp ugt i32 %i.fq, 150994943
  br i1 %i.fr, label %bb.bd, label %bb.be, !prof !31

bb.bd:                                            ; preds = %bb.bc
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !77
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
  %.sroa.0.0.copyload.i.i.i2.i7.i172 = load i64, ptr %i.fw, align 8, !tbaa !32
  %i.fx = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i172, 281474976710655
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !77
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd, %bb.bb
  %.0.i.sink.i6.i170 = phi ptr [ %i.x, %bb.bb ], [ %i.ft, %bb.bd ], [ %i.fu, %bb.bf ], [ %i.fv, %bb.bg ], [ %i.ga, %bb.bh ]
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i170, i64 %i.aj
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.ev
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !80
  br label %_ZNK6hermes2vm10StringViewixEj.exit179

_ZNK6hermes2vm10StringViewixEj.exit179:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169
  %.0.i171 = phi i16 [ %i.fn, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176 ], [ %i.gd, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169 ] ; 2 uses
  %i.ge = mul nuw nsw i32 %i.eu, 10
  %i.gf = zext i16 %.0.i171 to i32
  %i.gg = add nsw i32 %i.ge, -48
  %i.gh = add nsw i32 %i.gg, %i.gf                ; 3 uses
  %i.gi = add i16 %.0.i171, -58
  %or.cond8 = icmp ult i16 %i.gi, -10
  %i.gj = icmp eq i32 %i.gh, 0
  %or.cond10.not524 = select i1 %or.cond8, i1 true, i1 %i.gj
  %i.gk = zext nneg i32 %i.gh to i64
  %.not137 = icmp samesign ult i64 %i.v, %i.gk
  %or.cond141 = select i1 %or.cond10.not524, i1 true, i1 %.not137
  br i1 %or.cond141, label %bb.cn, label %bb.bi

bb.bi:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit179
  %i.gl = add nsw i32 %i.gh, -1
  %i.gm = zext i32 %i.gl to i64
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %4, align 8, !tbaa !32
  %i.gn = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gm
  %.sroa.0.0.copyload.i.i180 = load i32, ptr %i.gq, align 4, !tbaa !6 ; 2 uses
  %i.gr = icmp eq i32 %.sroa.0.0.copyload.i.i180, 14
  br i1 %i.gr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.sroa.0.0.copyload.i.i4.i = load i64, ptr %2, align 8, !tbaa !32
  %i.gs = and i64 %.sroa.0.0.copyload.i.i4.i, 281474976710655
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !91 ; 2 uses
  %i.gw = and i32 %i.gv, 2147483647
  %i.gx = sub i32 %.sroa.8.12.extract.trunc, %i.gw
  %i.gy = add i32 %i.gv, %.sroa.2.8.extract.trunc.i.i
  %i.gz = and i32 %i.gy, 1073741823
  %i.ha = or disjoint i32 %i.gz, %i.ap
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.ha to i64
  %.sroa.2.12.insert.ext.i.i.i = zext i32 %i.gx to i64
  %.sroa.2.12.insert.shift.i.i.i = shl nuw i64 %.sroa.2.12.insert.ext.i.i.i, 32
  %.sroa.2.12.insert.insert.i.i.i = or disjoint i64 %.sroa.2.12.insert.shift.i.i.i, %.sroa.2.8.insert.ext.i.i.i
  %.fca.1.insert.i.i.i = insertvalue { ptr, i64 } %i.z, i64 %.sroa.2.12.insert.insert.i.i.i, 1
  br label %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit"

bb.bk:                                            ; preds = %bb.bi
  %i.hb = and i32 %.sroa.0.0.copyload.i.i180, -8
  %i.hc = zext i32 %i.hb to i64
  %i.hd = add i64 %i.hc, %i.bd
  %i.he = or i64 %i.hd, -844424930131968          ; 2 uses
  %i.hf = load ptr, ptr %i.bc, align 8, !tbaa !43 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 192 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !52 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 200
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !53
  %i.hk = icmp ult ptr %i.hh, %i.hj
  br i1 %i.hk, label %bb.bl, label %bb.bm, !prof !54

bb.bl:                                            ; preds = %bb.bk
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.hl, ptr %i.hg, align 8, !tbaa !52
  store i64 %i.he, ptr %i.hh, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.hm = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.hf, i64 %i.he) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.hh, %bb.bl ], [ %i.hm, %bb.bm ]
  %i.hn = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i.i) #12
  br label %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit"

"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit": ; preds = %bb.bj, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i
  %.pn.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i, %bb.bj ], [ %i.hn, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i ] ; 2 uses
  %i.ho = extractvalue { ptr, i64 } %.pn.i, 0     ; 7 uses
  %i.hp = extractvalue { ptr, i64 } %.pn.i, 1     ; 8 uses
  %i.hq = load ptr, ptr %9, align 8, !tbaa !57
  %i.hr = load i32, ptr %i.af, align 8, !tbaa !59
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.hs
  %.sroa.7409.8.extract.trunc = trunc i64 %i.hp to i32 ; 3 uses
  %i.hu = icmp slt i32 %.sroa.7409.8.extract.trunc, 0
  br i1 %i.hu, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit"
  %i.hv = and i32 %.sroa.7409.8.extract.trunc, 1073741824
  %.not.i.i184 = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i184, label %bb.ca, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.0.0.copyload.i.i.i.i.i185 = load i64, ptr %i.ho, align 8, !tbaa !32
  %i.hw = and i64 %.sroa.0.0.copyload.i.i.i.i.i185, 281474976710655
  %i.hx = inttoptr i64 %i.hw to ptr               ; 5 uses
  %i.hy = load i32, ptr %i.hx, align 4            ; 2 uses
  %i.hz = icmp ugt i32 %i.hy, 150994943
  br i1 %i.hz, label %bb.bp, label %bb.bq, !prof !31

bb.bp:                                            ; preds = %bb.bo
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_:bb.a
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  br label %bb.eo

bb.eg:                                            ; preds = %bb.ed
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i290 = load i64, ptr %i.qj, align 8, !tbaa !32
  %i.qk = and i64 %.sroa.0.0.copyload.i.i.i2.i.i290, 281474976710655
  %i.ql = inttoptr i64 %i.qk to ptr
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !73
  br label %bb.eo

bb.eh:                                            ; preds = %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit274"
  %.not.i1.i275 = icmp samesign ult i32 %.sroa.7.8.extract.trunc, 1073741824
  br i1 %.not.i1.i275, label %bb.eu, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.sroa.0.0.copyload.i.i.i.i2.i276 = load i64, ptr %i.pt, align 8, !tbaa !32
  %i.qo = and i64 %.sroa.0.0.copyload.i.i.i.i2.i276, 281474976710655
  %i.qp = inttoptr i64 %i.qo to ptr               ; 8 uses
  %i.qq = load i32, ptr %i.qp, align 4            ; 3 uses
  %i.qr = icmp ugt i32 %i.qq, 150994943
  br i1 %i.qr, label %bb.ev, label %bb.ej, !prof !31

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
  %.sroa.0.0.copyload.i.i.i2.i5.i284 = load i64, ptr %i.qu, align 8, !tbaa !32
  %i.qv = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i284, 281474976710655
  %i.qw = inttoptr i64 %i.qv to ptr
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !77
  br label %bb.ew

bb.en:                                            ; preds = %bb.ea
  %i.qz = and i64 %i.pu, 1073741823               ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.qz
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.eo:                                            ; preds = %bb.ec, %bb.ee, %bb.ef, %bb.eg
  %.0.i.sink.i.i289.ph = phi ptr [ %i.qn, %bb.eg ], [ %i.qi, %bb.ef ], [ %i.qh, %bb.ee ], [ %i.qg, %bb.ec ]
  %i.rb = and i64 %i.pu, 1073741823               ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i289.ph, i64 %i.rb ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i303 = load i64, ptr %i.pt, align 8, !tbaa !32
  %i.rd = and i64 %.sroa.0.0.copyload.i.i.i.i.i303, 281474976710655
  %i.re = inttoptr i64 %i.rd to ptr               ; 5 uses
  %i.rf = load i32, ptr %i.re, align 4            ; 2 uses
  %i.rg = icmp ugt i32 %i.rf, 150994943
  br i1 %i.rg, label %bb.ep, label %bb.eq, !prof !31

bb.ep:                                            ; preds = %bb.eo
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !73
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
  %.sroa.0.0.copyload.i.i.i2.i.i307 = load i64, ptr %i.rl, align 8, !tbaa !32
  %i.rm = and i64 %.sroa.0.0.copyload.i.i.i2.i.i307, 281474976710655
  %i.rn = inttoptr i64 %i.rm to ptr
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !73
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
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !77 ; 2 uses
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
  %.sroa.0.0.copyload.i.i.i2.i5.i301 = load i64, ptr %i.se, align 8, !tbaa !32
  %i.sf = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i301, 281474976710655
  %i.sg = inttoptr i64 %i.sf to ptr
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !77
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295: ; preds = %bb.eu, %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %.pre-phi582 = phi i64 [ %i.ru, %bb.eu ], [ %i.sa, %bb.ez ], [ %i.sa, %bb.ey ], [ %i.sa, %bb.ex ], [ %i.ry, %bb.ev ]
  %i.sj = phi ptr [ %i.rv, %bb.eu ], [ %i.sb, %bb.ez ], [ %i.sb, %bb.ey ], [ %i.sb, %bb.ex ], [ %i.rz, %bb.ev ]
  %.0.i.sink.i4.i296 = phi ptr [ %i.pt, %bb.eu ], [ %i.si, %bb.ez ], [ %i.sd, %bb.ey ], [ %i.sc, %bb.ex ], [ %i.rx, %bb.ev ]
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i296, i64 %.pre-phi582
  %.sroa.7.12.extract.shift = lshr i64 %i.pu, 32
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.sk, i64 %.sroa.7.12.extract.shift
  br label %_ZNK6hermes2vm10StringView3endEv.exit308

_ZNK6hermes2vm10StringView3endEv.exit308:         ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295
  %.sroa.0.0.i281496 = phi ptr [ %i.rq, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.3.0.i280494 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ %i.sj, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.3.0.i297 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ %i.sl, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.0.0.i298 = phi ptr [ %i.rt, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %i.sm = call noundef ptr @_ZN4llvh15SmallVectorImplIDsE6insertIN6hermes2vm10StringView14const_iteratorEvEEPDsS7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.py, ptr %.sroa.0.0.i281496, ptr %.sroa.3.0.i280494, ptr %.sroa.0.0.i298, ptr %.sroa.3.0.i297) ; 0 uses
  br label %bb.fy

bb.fa:                                            ; preds = %bb.du
  %i.sn = load i32, ptr %i.ag, align 4, !tbaa !58
  %i.so = zext i32 %i.sn to i64
  %i.sp = load i32, ptr %i.af, align 8, !tbaa !59
  %i.sq = zext i32 %i.sp to i64                   ; 3 uses
  %i.sr = sub nsw i64 %i.so, %i.sq
  %i.ss = icmp ult i64 %i.sr, 2
  br i1 %i.ss, label %.thread.i314, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316

.thread.i314:                                     ; preds = %bb.fa
  %i.st = add nuw nsw i64 %i.sq, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef %i.st, i64 noundef 2) #12
  %.pre7.pre.i.i315 = load i32, ptr %i.af, align 8, !tbaa !59
  %.pre580 = zext i32 %.pre7.pre.i.i315 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316: ; preds = %.thread.i314, %bb.fa
  %.pre-phi581 = phi i64 [ %.pre580, %.thread.i314 ], [ %i.sq, %bb.fa ]
  %i.su = load ptr, ptr %9, align 8, !tbaa !57
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.su, i64 %.pre-phi581
  %.sroa.4573.0.insert.shift = shl nuw nsw i32 %i.ed, 16
  %.sroa.0572.0.insert.insert = or disjoint i32 %.sroa.4573.0.insert.shift, 36
  store i32 %.sroa.0572.0.insert.insert, ptr %i.sv, align 1
  %.pre.i.i313 = load i32, ptr %i.af, align 8, !tbaa !59
  %i.sw = add i32 %.pre.i.i313, 2
  store i32 %i.sw, ptr %i.af, align 8, !tbaa !59
  br label %bb.fy

bb.fb:                                            ; preds = %bb.ar
  %i.sx = icmp eq i16 %.0.i153, 60
  br i1 %i.sx, label %bb.fc, label %bb.fx

bb.fc:                                            ; preds = %bb.fb
  %i.sy = load i64, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.sz = icmp ugt i64 %i.sy, -844424930131969
  %i.ta = and i64 %i.sy, 281474976710655
  %i.tb = icmp ne i64 %i.ta, 0
  %i.tc = and i1 %i.sz, %i.tb
  br i1 %i.tc, label %bb.fd, label %bb.fx

bb.fd:                                            ; preds = %bb.fc
  %i.td = add nuw nsw i64 %.0547, 2               ; 10 uses
  %i.te = icmp samesign ult i64 %i.td, %.sroa.12.12.extract.shift
  br i1 %i.te, label %.lr.ph, label %.thread504.loopexit

.lr.ph:                                           ; preds = %bb.fd
  br i1 %i.ai, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us, label %.lr.ph.split.us.split

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us: ; preds = %.lr.ph.split.us, %bb.fe
  %.0117526.us.us = phi i64 [ %i.tj, %bb.fe ], [ %i.td, %.lr.ph.split.us ] ; 3 uses
  %i.tf = and i64 %.0117526.us.us, 4294967295
  %i.tg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !39
  %i.ti = icmp eq i8 %i.th, 62
  br i1 %i.ti, label %.split.us, label %bb.fe

bb.fe:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us
  %i.tj = add nuw nsw i64 %.0117526.us.us, 1      ; 2 uses
  %exitcond569.not = icmp eq i64 %i.tj, %.sroa.12.12.extract.shift
  br i1 %exitcond569.not, label %.thread504.loopexit, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us, !llvm.loop !457

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %.sroa.0.0.copyload.i.i.i.i.i325.us = load i64, ptr %i.x, align 8, !tbaa !32
  %i.tk = and i64 %.sroa.0.0.copyload.i.i.i.i.i325.us, 281474976710655
  %i.tl = inttoptr i64 %i.tk to ptr               ; 4 uses
  %i.tm = load i32, ptr %i.tl, align 4            ; 2 uses
  %i.tn = icmp ugt i32 %i.tm, 150994943
  %.mask.i.i.i.i.i.i.i.i.i.i326.us = and i32 %i.tm, 251658240
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  br i1 %i.tn, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split, !prof !31

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !73
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.aj
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537: ; preds = %bb.ff, %.lr.ph.split.us.split.split.us
  %.0117526.us.us536 = phi i64 [ %i.td, %.lr.ph.split.us.split.split.us ], [ %i.tx, %bb.ff ] ; 3 uses
  %i.tt = and i64 %.0117526.us.us536, 4294967295
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !39
  %i.tw = icmp eq i8 %i.tv, 62
  br i1 %i.tw, label %.split.us, label %bb.ff

bb.ff:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537
  %i.tx = add nuw nsw i64 %.0117526.us.us536, 1   ; 2 uses
  %exitcond568.not = icmp eq i64 %i.tx, %.sroa.12.12.extract.shift
  br i1 %exitcond568.not, label %.thread504.loopexit, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537, !llvm.loop !457

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %bb.fi
  %.0117526.us = phi i64 [ %i.uh, %bb.fi ], [ %i.td, %.lr.ph.split.us.split ] ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i326.us, label %bb.fh [
    i32 134217728, label %bb.fg
    i32 67108864, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us
  ]

bb.fg:                                            ; preds = %.lr.ph.split.us.split.split
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us

bb.fh:                                            ; preds = %.lr.ph.split.us.split.split
  %.sroa.0.0.copyload.i.i.i2.i.i329.us = load i64, ptr %i.to, align 8, !tbaa !32
  %i.ty = and i64 %.sroa.0.0.copyload.i.i.i2.i.i329.us, 281474976710655
  %i.tz = inttoptr i64 %i.ty to ptr
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !73
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us: ; preds = %.lr.ph.split.us.split.split, %bb.fh, %bb.fg
  %.0.i.sink.i.i328.us = phi ptr [ %i.ub, %bb.fh ], [ %i.tp, %bb.fg ], [ %i.to, %.lr.ph.split.us.split.split ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i328.us, i64 %i.aj
  %i.ud = and i64 %.0117526.us, 4294967295
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !39
  %i.ug = icmp eq i8 %i.uf, 62
  br i1 %i.ug, label %.split.us, label %bb.fi

bb.fi:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us
  %i.uh = add nuw nsw i64 %.0117526.us, 1         ; 2 uses
  %exitcond567.not = icmp eq i64 %i.uh, %.sroa.12.12.extract.shift
  br i1 %exitcond567.not, label %.thread504.loopexit, label %.lr.ph.split.us.split.split, !llvm.loop !457

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, label %.lr.ph.split.split

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us: ; preds = %.lr.ph.split, %bb.fj
  %.0117526.us527 = phi i64 [ %i.um, %bb.fj ], [ %i.td, %.lr.ph.split ] ; 3 uses
  %i.ui = and i64 %.0117526.us527, 4294967295
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.ui
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !80
  %i.ul = icmp eq i16 %i.uk, 62
  br i1 %i.ul, label %.split.us, label %bb.fj

bb.fj:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us
  %i.um = add nuw nsw i64 %.0117526.us527, 1      ; 2 uses
  %exitcond566.not = icmp eq i64 %i.um, %.sroa.12.12.extract.shift
  br i1 %exitcond566.not, label %.thread504.loopexit, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, !llvm.loop !457

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.sroa.0.0.copyload.i.i.i.i4.i318 = load i64, ptr %i.x, align 8, !tbaa !32
  %i.un = and i64 %.sroa.0.0.copyload.i.i.i.i4.i318, 281474976710655
  %i.uo = inttoptr i64 %i.un to ptr               ; 4 uses
  %i.up = load i32, ptr %i.uo, align 4            ; 2 uses
  %i.uq = icmp ugt i32 %i.up, 150994943
  %.mask.i.i.i.i.i.i.i.i.i5.i319 = and i32 %i.up, 251658240
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 8 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 12
  br i1 %i.uq, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split, !prof !31

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !77
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %i.aj
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531: ; preds = %bb.fk, %.lr.ph.split.split.split.us
  %.0117526.us530 = phi i64 [ %i.td, %.lr.ph.split.split.split.us ], [ %i.va, %bb.fk ] ; 3 uses
  %i.uw = and i64 %.0117526.us530, 4294967295
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %i.uv, i64 %i.uw
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !80
  %i.uz = icmp eq i16 %i.uy, 62
  br i1 %i.uz, label %.split.us, label %bb.fk

bb.fk:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531
  %i.va = add nuw nsw i64 %.0117526.us530, 1      ; 2 uses
  %exitcond565.not = icmp eq i64 %i.va, %.sroa.12.12.extract.shift
  br i1 %exitcond565.not, label %.thread504.loopexit, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531, !llvm.loop !457

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.fn
  %.0117526 = phi i64 [ %i.vk, %bb.fn ], [ %i.td, %.lr.ph.split.split ] ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i319, label %bb.fm [
    i32 117440512, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320
    i32 50331648, label %bb.fl
  ]

bb.fl:                                            ; preds = %.lr.ph.split.split.split
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320

bb.fm:                                            ; preds = %.lr.ph.split.split.split
  %.sroa.0.0.copyload.i.i.i2.i7.i323 = load i64, ptr %i.ur, align 8, !tbaa !32
  %i.vb = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i323, 281474976710655
  %i.vc = inttoptr i64 %i.vb to ptr
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !77
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320: ; preds = %.lr.ph.split.split.split, %bb.fm, %bb.fl
  %.0.i.sink.i6.i321 = phi ptr [ %i.ve, %bb.fm ], [ %i.ur, %bb.fl ], [ %i.us, %.lr.ph.split.split.split ]
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i321, i64 %i.aj
  %i.vg = and i64 %.0117526, 4294967295
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.vf, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !80
  %i.vj = icmp eq i16 %i.vi, 62
  br i1 %i.vj, label %.split.us, label %bb.fn

bb.fn:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320
  %i.vk = add nuw nsw i64 %.0117526, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.vk, %.sroa.12.12.extract.shift
  br i1 %exitcond.not, label %.thread504.loopexit, label %.lr.ph.split.split.split, !llvm.loop !457

.split.us:                                        ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us
  %.us-phi = phi i64 [ %.0117526.us530, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531 ], [ %.0117526.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us ], [ %.0117526.us527, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us ], [ %.0117526.us.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us ], [ %.0117526.us.us536, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537 ], [ %.0117526, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  store ptr %i.aw, ptr %12, align 8, !tbaa !57
  store i32 0, ptr %i.ax, align 8, !tbaa !59
  store i32 32, ptr %i.ay, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.vl = sub nuw i64 %.us-phi, %i.td
  %i.vm = add i64 %i.td, %i.y
  %i.vn = and i64 %i.vm, 1073741823
  %.sroa.2.8.insert.ext.i343 = or disjoint i64 %i.az, %i.vn
  %.sroa.2.12.insert.ext.i344 = shl i64 %i.vl, 32
  %.sroa.2.12.insert.insert.i346 = or disjoint i64 %.sroa.2.12.insert.ext.i344, %.sroa.2.8.insert.ext.i343
  store ptr %i.x, ptr %13, align 8
  store i64 %.sroa.2.12.insert.insert.i346, ptr %i.ba, align 8
  %i.vo = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12, i1 noundef zeroext false) #12 ; 2 uses
  %i.vp = extractvalue { ptr, i64 } %i.vo, 0      ; 3 uses
  %i.vq = extractvalue { ptr, i64 } %i.vo, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %.not10.i.i = icmp eq i64 %i.vq, 0
  br i1 %.not10.i.i, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.split.us
  %i.vr = add i64 %i.vq, 9223372036854775807
  %i.vs = and i64 %i.vr, 9223372036854775807      ; 2 uses
  %i.vt = add nuw i64 %i.vs, 1                    ; 2 uses
  %xtraiter = and i64 %i.vt, 3                    ; 3 uses
  %i.vu = icmp samesign ult i64 %i.vs, 3
  br i1 %i.vu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.vt, -4
  br label %.lr.ph.i.i

.thread504.loopexit:                              ; preds = %bb.fn, %bb.fk, %bb.fj, %bb.fi, %bb.ff, %bb.fe, %bb.fd
  %i.vv = load i32, ptr %i.ag, align 4, !tbaa !58
  %i.vw = zext i32 %i.vv to i64
  %i.vx = load i32, ptr %i.af, align 8, !tbaa !59
  %i.vy = zext i32 %i.vx to i64                   ; 3 uses
  %i.vz = sub nsw i64 %i.vw, %i.vy
  %i.wa = icmp ult i64 %i.vz, 2
  br i1 %i.wa, label %.thread.i336, label %.thread508

.thread.i336:                                     ; preds = %.thread504.loopexit
  %i.wb = add nuw nsw i64 %i.vy, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef %i.wb, i64 noundef 2) #12
  %.pre7.pre.i.i337 = load i32, ptr %i.af, align 8, !tbaa !59
  %.pre583 = zext i32 %.pre7.pre.i.i337 to i64
  br label %.thread508

.thread508:                                       ; preds = %.thread504.loopexit, %.thread.i336
  %.pre-phi584 = phi i64 [ %i.vy, %.thread504.loopexit ], [ %.pre583, %.thread.i336 ]
  %i.wc = load ptr, ptr %9, align 8, !tbaa !57
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.wc, i64 %.pre-phi584
  store i32 3932196, ptr %i.wd, align 1
  %.pre.i.i335 = load i32, ptr %i.af, align 8, !tbaa !59
  %i.we = add i32 %.pre.i.i335, 2
  store i32 %i.we, ptr %i.af, align 8, !tbaa !59
  br label %bb.fy

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.xf, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %i.vp, %.lr.ph.i.i.preheader.new ], [ %i.xg, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.wf = load i16, ptr %.0811.i.i, align 2, !tbaa !80
  %i.wg = zext i16 %i.wf to i32
  %i.wh = add i32 %.012.i.i, %i.wg
  %i.wi = mul i32 %i.wh, 1025                     ; 2 uses
  %i.wj = lshr i32 %i.wi, 6
  %i.wk = xor i32 %i.wj, %i.wi
  %i.wl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !80
  %i.wn = zext i16 %i.wm to i32
  %i.wo = add i32 %i.wk, %i.wn
  %i.wp = mul i32 %i.wo, 1025                     ; 2 uses
  %i.wq = lshr i32 %i.wp, 6
  %i.wr = xor i32 %i.wq, %i.wp
  %i.ws = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !80
  %i.wu = zext i16 %i.wt to i32
  %i.wv = add i32 %i.wr, %i.wu
  %i.ww = mul i32 %i.wv, 1025                     ; 2 uses
  %i.wx = lshr i32 %i.ww, 6
  %i.wy = xor i32 %i.wx, %i.ww
  %i.wz = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 6
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !80
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add i32 %i.wy, %i.xb
  %i.xd = mul i32 %i.xc, 1025                     ; 2 uses
  %i.xe = lshr i32 %i.xd, 6
  %i.xf = xor i32 %i.xe, %i.xd                    ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.xf, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %.0811.i.i.epil.init = phi ptr [ %i.vp, %.lr.ph.i.i.preheader ], [ %i.xg, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod691 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod691)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i32 [ %i.xm, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0811.i.i.epil = phi ptr [ %i.xn, %.lr.ph.i.i.epil ], [ %.0811.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.xh = load i16, ptr %.0811.i.i.epil, align 2, !tbaa !80
  %i.xi = zext i16 %i.xh to i32
  %i.xj = add i32 %.012.i.i.epil, %i.xi
  %i.xk = mul i32 %i.xj, 1025                     ; 2 uses
  %i.xl = lshr i32 %i.xk, 6
  %i.xm = xor i32 %i.xl, %i.xk                    ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0811.i.i.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !458

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.split.us
  %.0.lcssa.i.i = phi i32 [ 0, %.split.us ], [ %i.xf, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ], [ %i.xm, %.lr.ph.i.i.epil ]
  %i.xo = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.bb, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.vp, i64 %i.vq, i32 noundef %.0.lcssa.i.i) #12 ; 2 uses
  %.not521 = icmp eq ptr %i.xo, inttoptr (i64 -1 to ptr)
  br i1 %.not521, label %.thread506, label %bb.fo, !prof !31

bb.fo:                                            ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0.0.copyload.i.i350 = load i64, ptr %i.xo, align 8, !tbaa !32
  %i.xp = trunc i64 %.sroa.0.0.copyload.i.i350 to i32
  %i.xq = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.xp, ptr nonnull %5, i32 0, ptr noundef null) #12 ; 2 uses
  %i.xr = extractvalue { i32, i64 } %i.xq, 0
  %i.xs = extractvalue { i32, i64 } %i.xq, 1      ; 3 uses
  %i.xt = icmp eq i32 %i.xr, 0
  br i1 %i.xt, label %.thread506, label %bb.fp, !prof !31

bb.fp:                                            ; preds = %bb.fo
  %.mask.i = and i64 %i.xs, -140737488355328
  %i.xu = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.xu, label %bb.fu, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.xv = load ptr, ptr %i.bc, align 8, !tbaa !43 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 192 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !52 ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 200
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !53
  %i.ya = icmp ult ptr %i.xx, %i.xz
  br i1 %i.ya, label %bb.fr, label %bb.fs, !prof !54

bb.fr:                                            ; preds = %bb.fq
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store ptr %i.yb, ptr %i.xw, align 8, !tbaa !52
  store i64 %i.xs, ptr %i.xx, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.fs:                                            ; preds = %bb.fq
  %i.yc = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.xv, i64 %i.xs) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.fr, %bb.fs
  %.0.i.i.i.i.i.i = phi ptr [ %i.xx, %bb.fr ], [ %i.yc, %bb.fs ]
  %i.yd = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not522 = icmp eq ptr %i.yd, inttoptr (i64 -1 to ptr)
  br i1 %.not522, label %.thread506, label %bb.ft

bb.ft:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.yd, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fp
  %i.ye = add nuw nsw i64 %.us-phi, 1
  br label %.thread506

.thread506:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.fu, %bb.fo, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.2121 = phi i1 [ false, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ false, %bb.fo ], [ true, %bb.fu ], [ false, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %.4 = phi i64 [ %.0547, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ %.0547, %bb.fo ], [ %i.ye, %bb.fu ], [ %.0547, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %i.yf = load ptr, ptr %12, align 8, !tbaa !57   ; 2 uses
  %i.yg = icmp eq ptr %i.yf, %i.aw
  br i1 %i.yg, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.thread506
  call void @free(ptr noundef %i.yf) #12
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.thread506
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br i1 %.2121, label %bb.fy, label %.loopexit

bb.fx:                                            ; preds = %bb.fc, %bb.fb
  %i.yh = load i32, ptr %i.ag, align 4, !tbaa !58
  %i.yi = zext i32 %i.yh to i64
  %i.yj = load i32, ptr %i.af, align 8, !tbaa !59
  %i.yk = zext i32 %i.yj to i64                   ; 3 uses
  %i.yl = sub nsw i64 %i.yi, %i.yk
  %i.ym = icmp ult i64 %i.yl, 2
end_hunk_1
