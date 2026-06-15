inline.NumInlined: 4409
inline.NumDeleted: 2144
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSelector11VisitReturnENS1_10turboshaft7OpIndexE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.av = trunc i64 %i.as to i32
  %sext14.i.i = shl i64 %i.as, 32                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ashr exact i64 %sext14.i.i, 30
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store i32 %i.av, ptr %i.az, align 4
  %i.ba = or disjoint i64 %sext14.i.i, 19
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.g:                                             ; preds = %bb.e
  %sext13.i.i = shl i64 %i.as, 32
  %i.bb = or disjoint i64 %sext13.i.i, 3
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.h:                                             ; preds = %bb.e
  %i.bc = add i64 %i.as, 2147483648
  %spec.select.i.i.i = icmp ult i64 %i.bc, 4294967296
  br i1 %spec.select.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %sext.i.i = shl nsw i64 %i.as, 32
  %i.bd = or disjoint i64 %sext.i.i, 11
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 152 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp ult ptr %i.bf, %i.bm
  br i1 %i.bn, label %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bp, %i.bj
  %i.br = ashr exact i64 %i.bq, 4
  %i.bs = add nsw i64 %i.br, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.bs)
  %.pre.i.i.i = load ptr, ptr %i.be, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bt = phi ptr [ %i.bf, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.bu, ptr %i.be, align 8
  store i64 %i.ar, ptr %i.bt, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.as, ptr %.sroa.6.0..sroa_idx.i, align 8
  %sext15.i.i = shl i64 %i.bk, 28
  %i.bv = and i64 %sext15.i.i, -4294967296
  %i.bw = or disjoint i64 %i.bv, 27
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

bb.l:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler18InstructionOperandEA_S4_EEPT_m.exit
  %i.bx = lshr i32 %.sroa.0.0.copyload.i.i, 4     ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.by
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.m, label %_ZN2v88internal8compiler16OperandGenerator11UseRegisterENS1_10turboshaft7OpIndexE.exit

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.cf) #29 ; 2 uses
  %i.ch = load ptr, ptr %i.bz, align 8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.by
  store i32 %i.cg, ptr %i.ci, align 4
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal8compiler16OperandGenerator11UseRegisterENS1_10turboshaft7OpIndexE.exit

_ZN2v88internal8compiler16OperandGenerator11UseRegisterENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.l, %bb.m
  %i.cj = phi ptr [ %.pre.i, %bb.m ], [ %0, %bb.l ]
  %.0.i.i.i = phi i32 [ %i.cg, %bb.m ], [ %i.cc, %bb.l ]
  %i.ck = zext i32 %.0.i.i.i to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = or disjoint i64 %i.cl, 377957122049
  %i.cn = and i32 %i.bx, 63
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = lshr i32 %.sroa.0.0.copyload.i.i, 10
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = or i64 %i.cv, %i.cp
  store i64 %i.cw, ptr %i.cu, align 8
  br label %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit

_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i, %bb.i, %bb.g, %bb.f, %_ZN2v88internal8compiler16OperandGenerator11UseRegisterENS1_10turboshaft7OpIndexE.exit
  %storemerge = phi i64 [ %i.cm, %_ZN2v88internal8compiler16OperandGenerator11UseRegisterENS1_10turboshaft7OpIndexE.exit ], [ %i.ba, %bb.f ], [ %i.bb, %bb.g ], [ %i.bd, %bb.i ], [ %i.bw, %_ZN2v88internal10ZoneVectorINS0_8compiler8ConstantEE9push_backERKS3_.exit.i.i ]
  store i64 %storemerge, ptr %i.ad, align 8
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  br label %bb.r

._crit_edge:                                      ; preds = %bb.ad, %_ZN2v88internal8compiler16OperandGenerator12UseImmediateENS1_10turboshaft7OpIndexE.exit
  %i.cz = icmp eq i64 %i.t, 65535
  br i1 %i.cz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 1, ptr %i.da, align 8
  br label %_ZN2v88internal8compiler19InstructionSelector4EmitEjmPNS1_18InstructionOperandEmS4_mS4_.exit

bb.o:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.i.i = icmp eq i64 %i.t, 0
  %i.df = add nuw nsw i64 %i.v, 40
  %i.dg = select i1 %.not.i.i, i64 48, i64 %i.df  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8            ; 2 uses
  %i.dl = sub i64 %i.di, %i.dk
  %i.dm = icmp ugt i64 %i.dg, %i.dl
  br i1 %i.dm, label %bb.p, label %_ZN2v88internal8compiler11Instruction3NewEPNS0_4ZoneEjmPNS1_18InstructionOperandEmS6_mS6_.exit.i, !prof !5

bb.p:                                             ; preds = %bb.o
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.de, i64 noundef %i.dg) #29
  %.pre.i.i.i38 = load i64, ptr %i.dj, align 8
  br label %_ZN2v88internal8compiler11Instruction3NewEPNS0_4ZoneEjmPNS1_18InstructionOperandEmS6_mS6_.exit.i

_ZN2v88internal8compiler11Instruction3NewEPNS0_4ZoneEjmPNS1_18InstructionOperandEmS6_mS6_.exit.i: ; preds = %bb.p, %bb.o
  %i.dn = phi i64 [ %.pre.i.i.i38, %bb.p ], [ %i.dk, %bb.o ] ; 2 uses
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = add i64 %i.dn, %i.dg
  store i64 %i.dp, ptr %i.dj, align 8
  call void @_ZN2v88internal8compiler11InstructionC1EjmPNS1_18InstructionOperandEmS4_mS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.do, i32 noundef 24, i64 noundef 0, ptr noundef null, i64 noundef %i.t, ptr noundef nonnull %i.ad, i64 noundef 0, ptr noundef null) #29
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = icmp ult ptr %i.dr, %i.dt
  br i1 %i.du, label %_ZN2v88internal8compiler19InstructionSelector4EmitEPNS1_11InstructionE.exit.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %_ZN2v88internal8compiler11Instruction3NewEPNS0_4ZoneEjmPNS1_18InstructionOperandEmS6_mS6_.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = ptrtoint ptr %i.dt to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = add nsw i64 %i.eb, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 noundef %i.ec)
  %.pre.i.i18.i = load ptr, ptr %i.dq, align 8
  br label %_ZN2v88internal8compiler19InstructionSelector4EmitEPNS1_11InstructionE.exit.i

_ZN2v88internal8compiler19InstructionSelector4EmitEPNS1_11InstructionE.exit.i: ; preds = %bb.q, %_ZN2v88internal8compiler11Instruction3NewEPNS0_4ZoneEjmPNS1_18InstructionOperandEmS6_mS6_.exit.i
  %i.ed = phi ptr [ %i.dr, %_ZN2v88internal8compiler11Instruction3NewEPNS0_4ZoneEjmPNS1_18InstructionOperandEmS6_mS6_.exit.i ], [ %.pre.i.i18.i, %bb.q ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.ee, ptr %i.dq, align 8
  store ptr %i.do, ptr %i.ed, align 8
  br label %_ZN2v88internal8compiler19InstructionSelector4EmitEjmPNS1_18InstructionOperandEmS4_mS4_.exit

_ZN2v88internal8compiler19InstructionSelector4EmitEjmPNS1_18InstructionOperandEmS4_mS4_.exit: ; preds = %bb.n, %_ZN2v88internal8compiler19InstructionSelector4EmitEPNS1_11InstructionE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.r:                                             ; preds = %.lr.ph, %bb.ad
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.gu, %bb.ad ] ; 3 uses
  %.03446 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.ad ] ; 3 uses
  %i.ef = load ptr, ptr %i.j, align 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = icmp ult i64 %.047, %i.ej
  br i1 %i.ek, label %_ZNK2v88internal8compiler7Linkage17GetReturnLocationEm.exit, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24) #30
  unreachable

_ZNK2v88internal8compiler7Linkage17GetReturnLocationEm.exit: ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.047
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.en, align 4 ; 6 uses
  %i.eo = and i64 %.sroa.0.0.copyload.i.i.i, 2147483649
  %i.ep = icmp eq i64 %i.eo, 2147483649
  br i1 %i.ep, label %3, label %bb.t

3:                                                ; preds = %_ZNK2v88internal8compiler7Linkage17GetReturnLocationEm.exit
  %4 = load i8, ptr %i.cx, align 4, !range !9, !noundef !10
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %3, %_ZNK2v88internal8compiler7Linkage17GetReturnLocationEm.exit
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.03446
  %.sroa.01.0.copyload = load i32, ptr %i.eq, align 4 ; 2 uses
  %i.er = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.es = lshr i32 %.sroa.01.0.copyload, 4        ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 304 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.et
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %bb.u, label %_ZNK2v88internal8compiler16OperandGenerator7GetVRegENS1_10turboshaft7OpIndexE.exit.i

bb.u:                                             ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.fa) #29 ; 2 uses
  %i.fc = load ptr, ptr %i.eu, align 8
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.et
  store i32 %i.fb, ptr %i.fd, align 4
  br label %_ZNK2v88internal8compiler16OperandGenerator7GetVRegENS1_10turboshaft7OpIndexE.exit.i

_ZNK2v88internal8compiler16OperandGenerator7GetVRegENS1_10turboshaft7OpIndexE.exit.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i41 = phi i32 [ %i.fb, %bb.u ], [ %i.ex, %bb.t ] ; 4 uses
  %.sroa.05.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 4 uses
  %i.fe = icmp eq i32 %.sroa.05.0.extract.trunc.i.i, -2
  br i1 %i.fe, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK2v88internal8compiler16OperandGenerator7GetVRegENS1_10turboshaft7OpIndexE.exit.i
  %i.ff = and i32 %.sroa.05.0.extract.trunc.i.i, 1
  %i.fg = icmp eq i32 %i.ff, 0
  %i.fh = icmp slt i32 %.sroa.05.0.extract.trunc.i.i, -2
  %i.fi = and i1 %i.fh, %i.fg
  br i1 %i.fi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %_ZNK2v88internal8compiler16OperandGenerator7GetVRegENS1_10turboshaft7OpIndexE.exit.i
  %i.fj = zext i32 %.0.i.i.i41 to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = or disjoint i64 %i.fk, 927712935937
  br label %_ZN2v88internal8compiler16OperandGenerator11UseLocationENS1_10turboshaft7OpIndexENS0_15LinkageLocationE.exit

bb.x:                                             ; preds = %bb.v
  %i.fm = and i32 %.sroa.05.0.extract.trunc.i.i, -2147483647
  switch i32 %i.fm, label %bb.aa [
    i32 -2147483647, label %bb.y
    i32 1, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.fn = zext i32 %.0.i.i.i41 to i64
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = shl i64 %.sroa.0.0.copyload.i.i.i, 35
  %i.fq = and i64 %i.fp, -68719476736
  %i.fr = or disjoint i64 %i.fo, %i.fq
  %i.fs = or disjoint i64 %i.fr, 1
  br label %_ZN2v88internal8compiler16OperandGenerator11UseLocationENS1_10turboshaft7OpIndexENS0_15LinkageLocationE.exit

bb.z:                                             ; preds = %bb.x
  %i.ft = zext i32 %.0.i.i.i41 to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = shl i64 %.sroa.0.0.copyload.i.i.i, 35
  %i.fw = and i64 %i.fv, -68719476736
  %i.fx = or disjoint i64 %i.fu, %i.fw
  %i.fy = or disjoint i64 %i.fx, 1
  br label %_ZN2v88internal8compiler16OperandGenerator11UseLocationENS1_10turboshaft7OpIndexENS0_15LinkageLocationE.exit

bb.aa:                                            ; preds = %bb.x
  %i.fz = and i64 %.sroa.0.0.copyload.i.i.i, 1030792151040
  %.not.i.i42 = icmp eq i64 %i.fz, 0
  %i.ga = zext i32 %.0.i.i.i41 to i64
  %i.gb = shl nuw nsw i64 %i.ga, 3
  %i.gc = shl i64 %.sroa.0.0.copyload.i.i.i, 40
  %i.gd = and i64 %i.gc, -2199023255552
  %i.ge = or disjoint i64 %i.gb, %i.gd            ; 2 uses
  br i1 %.not.i.i42, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gf = or disjoint i64 %i.ge, 858993459201
  br label %_ZN2v88internal8compiler16OperandGenerator11UseLocationENS1_10turboshaft7OpIndexENS0_15LinkageLocationE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gg = or disjoint i64 %i.ge, 790273982465
  br label %_ZN2v88internal8compiler16OperandGenerator11UseLocationENS1_10turboshaft7OpIndexENS0_15LinkageLocationE.exit

_ZN2v88internal8compiler16OperandGenerator11UseLocationENS1_10turboshaft7OpIndexENS0_15LinkageLocationE.exit: ; preds = %bb.w, %bb.y, %bb.z, %bb.ab, %bb.ac
  %.sroa.013.0.i.i = phi i64 [ %i.fl, %bb.w ], [ %i.fs, %bb.y ], [ %i.fy, %bb.z ], [ %i.gf, %bb.ab ], [ %i.gg, %bb.ac ]
  %i.gh = load ptr, ptr %i.i, align 8
  %i.gi = and i32 %i.es, 63
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 240
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = lshr i32 %.sroa.01.0.copyload, 10
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.go ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = or i64 %i.gq, %i.gk
  store i64 %i.gr, ptr %i.gp, align 8
  %i.gs = add i64 %.03446, 1                      ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.gs
  store i64 %.sroa.013.0.i.i, ptr %i.gt, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %3, %_ZN2v88internal8compiler16OperandGenerator11UseLocationENS1_10turboshaft7OpIndexENS0_15LinkageLocationE.exit
  %.1 = phi i64 [ %i.gs, %_ZN2v88internal8compiler16OperandGenerator11UseLocationENS1_10turboshaft7OpIndexENS0_15LinkageLocationE.exit ], [ %.03446, %3 ]
  %i.gu = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.gu, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !220
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector11VisitBranchENS1_10turboshaft7OpIndexEPNS3_5BlockES6_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::FlagsContinuation", align 8 ; 21 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 4
  tail call void @_ZN2v88internal8compiler19InstructionSelector33TryPrepareScheduleFirstProjectionENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i8, ptr %i.i, align 4
  store i32 1, ptr %4, align 8, !alias.scope !221
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 1, ptr %i.k, align 4, !alias.scope !221
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 -1, ptr %i.l, align 4, !alias.scope !221
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 -1, ptr %i.m, align 8, !alias.scope !221
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 -1, ptr %i.n, align 4, !alias.scope !221
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 -1, ptr %i.o, align 8, !alias.scope !221
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 -1, ptr %i.p, align 4, !alias.scope !221
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 -1, ptr %i.q, align 8, !alias.scope !221
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 -1, ptr %i.r, align 4, !alias.scope !221
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 -1, ptr %i.s, align 8, !alias.scope !221
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr null, ptr %i.t, align 8, !alias.scope !221
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 -1, ptr %i.u, align 8, !alias.scope !221
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i32 -1, ptr %i.v, align 8, !alias.scope !221
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %2, ptr %i.w, align 8, !alias.scope !221
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %3, ptr %i.x, align 8, !alias.scope !221
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i32 -1, ptr %i.y, align 4, !alias.scope !221
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 -1, ptr %i.z, align 8, !alias.scope !221
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 140
  store i8 %i.j, ptr %i.aa, align 4, !alias.scope !221
  %.sroa.0.0.copyload.i.i13 = load i32, ptr %i.h, align 4
  call void @_ZN2v88internal8compiler19InstructionSelector20VisitWordCompareZeroENS1_10turboshaft7OpIndexES4_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i32 %.sroa.0.0.copyload.i.i13, ptr noundef nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector33TryPrepareScheduleFirstProjectionENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = zext i32 %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4
  %.not = icmp eq i8 %i.h, 97
  br i1 %.not, label %bb.b, label %_ZN2v88internal8compiler19InstructionSelector14FindProjectionENS1_10turboshaft7OpIndexEm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i16, ptr %i.i, align 4
  %.not39 = icmp eq i16 %i.j, 1
  br i1 %.not39, label %bb.c, label %_ZN2v88internal8compiler19InstructionSelector14FindProjectionENS1_10turboshaft7OpIndexEm.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK2v88internal8compiler19InstructionSelector5blockEPNS1_10turboshaft5GraphENS3_7OpIndexE.exit

_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.d, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.017.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.01116.i.i.i.i = phi i64 [ %.112.i.i.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.ab = lshr i64 %.01116.i.i.i.i, 1             ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ae, align 4
  %i.af = icmp ult i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = xor i64 %i.ab, -1
  %i.ai = add nsw i64 %.01116.i.i.i.i, %i.ah
  %.112.i.i.i.i = select i1 %i.af, i64 %i.ab, i64 %i.ai ; 2 uses
  %.1.i.i.i.i = select i1 %i.af, ptr %.017.i.i.i.i, ptr %i.ag ; 2 uses
  %i.aj = icmp sgt i64 %.112.i.i.i.i, 0
  br i1 %i.aj, label %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZNK2v88internal8compiler19InstructionSelector5blockEPNS1_10turboshaft5GraphENS3_7OpIndexE.exit, !llvm.loop !41

bb.e:                                             ; preds = %bb.c
  %i.ak = ptrtoint ptr %i.o to i64
  %i.al = ptrtoint ptr %i.q to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i6.i.i, label %_ZNK2v88internal8compiler19InstructionSelector5blockEPNS1_10turboshaft5GraphENS3_7OpIndexE.exit

_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i6.i.i: ; preds = %bb.e, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i6.i.i
  %.017.i.i7.i.i = phi ptr [ %.1.i.i13.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i6.i.i ], [ %i.q, %bb.e ] ; 2 uses
  %.01116.i.i8.i.i = phi i64 [ %.112.i.i12.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i6.i.i ], [ %i.an, %bb.e ] ; 2 uses
  %i.ap = lshr i64 %.01116.i.i8.i.i, 1            ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i7.i.i, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %.sroa.0.0.copyload.i.i.i.i11.i.i = load i32, ptr %i.as, align 4
  %i.at = icmp ult i32 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i.i11.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = xor i64 %i.ap, -1
  %i.aw = add nsw i64 %.01116.i.i8.i.i, %i.av
  %.112.i.i12.i.i = select i1 %i.at, i64 %i.ap, i64 %i.aw ; 2 uses
  %.1.i.i13.i.i = select i1 %i.at, ptr %.017.i.i7.i.i, ptr %i.au ; 2 uses
  %i.ax = icmp sgt i64 %.112.i.i12.i.i, 0
  br i1 %i.ax, label %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i6.i.i, label %_ZNK2v88internal8compiler19InstructionSelector5blockEPNS1_10turboshaft5GraphENS3_7OpIndexE.exit, !llvm.loop !42

_ZNK2v88internal8compiler19InstructionSelector5blockEPNS1_10turboshaft5GraphENS3_7OpIndexE.exit: ; preds = %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i6.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %.1.i.i.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ %i.t, %bb.d ], [ %i.q, %bb.e ], [ %.1.i.i13.i.i, %_ZSt9__advanceIPKPN2v88internal8compiler10turboshaft5BlockElEvRT_T0_St26random_access_iterator_tag.exit.i.i6.i.i ]
  %i.ay = getelementptr inbounds i8, ptr %.0.i.i, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ba, align 4
  %i.bb = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not40 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not40, label %bb.f, label %_ZN2v88internal8compiler19InstructionSelector14FindProjectionENS1_10turboshaft7OpIndexEm.exit.thread

bb.f:                                             ; preds = %_ZNK2v88internal8compiler19InstructionSelector5blockEPNS1_10turboshaft5GraphENS3_7OpIndexE.exit
  %i.bi = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.bj = add i64 %i.bi, %i.d
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i8, ptr %i.bk, align 4
  switch i8 %i.bl, label %_ZN2v88internal8compiler19InstructionSelector14FindProjectionENS1_10turboshaft7OpIndexEm.exit.thread [
    i8 65, label %bb.g
    i8 63, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = zext i16 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 3
  %i.bu = add i32 %i.bt, %.sroa.0.0.copyload.i.i  ; 2 uses
  %.not31.i = icmp eq i32 %i.bu, -1
  br i1 %.not31.i, label %_ZN2v88internal8compiler19InstructionSelector14FindProjectionENS1_10turboshaft7OpIndexEm.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i
  %storemerge32.i = phi i32 [ %i.bu, %.lr.ph.i ], [ %i.co, %bb.k ] ; 8 uses
  %i.by = zext i32 %storemerge32.i to i64
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 4
end_hunk_0
