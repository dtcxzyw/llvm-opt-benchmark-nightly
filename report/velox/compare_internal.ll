inline.NumInlined: 261
inline.NumDeleted: 64
begin_hunk_0_@_ZN5arrow7compute10KeyCompare24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPh:bb.a
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !7
  %i.sg = load i64, ptr %gep.i135.epil, align 8, !tbaa !7
  %i.sh = icmp eq i64 %i.sf, %i.sg
  %i.si = sext i1 %i.sh to i8
  %i.sj = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.i134.epil.init
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !81
  br label %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit

_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit: ; preds = %.epil.preheader, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit216.unr-lcssa, %.epil.preheader218, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit215.unr-lcssa, %.epil.preheader224, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit214.unr-lcssa, %.epil.preheader230, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit213.unr-lcssa, %.epil.preheader236, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit212.unr-lcssa, %.epil.preheader242, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit211.unr-lcssa, %.epil.preheader248, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit210.unr-lcssa, %.epil.preheader254, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit209.unr-lcssa, %bb.i, %bb.e, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit44.i129, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i139, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit44.i106, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i116, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit44.i83, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i93, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit44.i67, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i77, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit44.i, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i, %bb.ap
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10KeyCompare21NullUpdateColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEbPh(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(209) %6, i1 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5arrow7compute12RowTableImpl13has_any_nullsEPKNS0_12LightContextE(ptr noundef nonnull align 8 dereferenceable(209) %6, ptr noundef %4)
  %i.b = load ptr, ptr %5, align 8                ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %or.cond.not = select i1 %i.a, i1 true, i1 %.not
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  br i1 %7, label %_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.d = zext i32 %0 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  br label %_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit

_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ %0, %bb.b ]   ; 4 uses
  %.not66 = icmp eq ptr %i.b, null
  br i1 %.not66, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !127  ; 3 uses
  %.not77 = icmp eq i32 %1, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.d
  %i.o = lshr i32 %i.h, 3                         ; 3 uses
  %i.p = trunc i32 %i.h to i8
  %i.q = and i8 %i.p, 7                           ; 3 uses
  %wide.trip.count89 = zext i32 %1 to i64         ; 2 uses
  %xtraiter99 = and i64 %wide.trip.count89, 1
  %i.r = icmp eq i32 %1, 1
  br i1 %i.r, label %.epil.preheader98, label %.lr.ph74.new

.lr.ph74.new:                                     ; preds = %.lr.ph74
  %unroll_iter102 = and i64 %wide.trip.count89, 4294967294
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph74.new
  %indvars.iv86 = phi i64 [ 0, %.lr.ph74.new ], [ %indvars.iv.next87.1, %bb.e ] ; 4 uses
  %niter103 = phi i64 [ 0, %.lr.ph74.new ], [ %niter103.next.1, %bb.e ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv86
  %i.t = load i16, ptr %i.s, align 2, !tbaa !101
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = mul i32 %i.w, %i.n
  %i.y = add i32 %i.x, %i.o
  %i.z = and i32 %i.y, 536870911
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !81
  %i.ad = lshr i8 %i.ac, %i.q
  %i.ae = trunc i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv86 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !81
  %i.ah = select i1 %i.ae, i8 0, i8 %i.ag
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !81
  %indvars.iv.next87 = or disjoint i64 %indvars.iv86, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next87
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !101
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = mul i32 %i.am, %i.n
  %i.ao = add i32 %i.an, %i.o
  %i.ap = and i32 %i.ao, 536870911
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81
  %i.at = lshr i8 %i.as, %i.q
  %i.au = trunc i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.next87 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !81
  %i.ax = select i1 %i.au, i8 0, i8 %i.aw
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !81
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %niter103.next.1 = add i64 %niter103, 2         ; 2 uses
  %niter103.ncmp.1 = icmp eq i64 %niter103.next.1, %unroll_iter102
  br i1 %niter103.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !128

bb.f:                                             ; preds = %_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit
  %i.ay = tail call noundef zeroext i1 @_ZNK5arrow7compute12RowTableImpl13has_any_nullsEPKNS0_12LightContextE(ptr noundef nonnull align 8 dereferenceable(209) %6, ptr noundef %4)
  br i1 %i.ay, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not75 = icmp eq i32 %1, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bb = icmp eq i32 %1, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !101
  %i.be = zext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.ba, align 8, !tbaa !3
  %i.bg = add i32 %i.bf, %i.be                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %i.bl = trunc i32 %i.bg to i8
  %i.bm = and i8 %i.bl, 7
  %i.bn = lshr i8 %i.bk, %i.bm
  %i.bo = trunc i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !81
  %i.br = select i1 %i.bo, i8 %i.bq, i8 0
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !81
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !101
  %i.bu = zext i16 %i.bt to i32
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !3
  %i.bw = add i32 %i.bv, %i.bu                    ; 2 uses
  %i.bx = lshr i32 %i.bw, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !81
  %i.cb = trunc i32 %i.bw to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = lshr i8 %i.ca, %i.cc
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.next ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !81
  %i.ch = select i1 %i.ce, i8 %i.cg, i8 0
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !81
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit96.unr-lcssa, label %bb.h, !llvm.loop !129

bb.i:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !53
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !127
  %i.co = load ptr, ptr %5, align 8, !tbaa !52
  %.not76 = icmp eq i32 %1, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.i
  %i.cp = lshr i32 %i.h, 3
  %i.cq = trunc i32 %i.h to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 64
  %wide.trip.count84 = zext i32 %1 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph72, %bb.j
  %indvars.iv81 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next82, %bb.j ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv81
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !101 ; 2 uses
  %i.cv = zext i16 %i.cu to i32
  %i.cw = zext i16 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = mul i32 %i.cy, %i.cn
  %i.da = add i32 %i.cz, %i.cp
  %i.db = and i32 %i.da, 536870911
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !81
  %i.df = lshr i8 %i.de, %i.cr
  %i.dg = trunc i8 %i.df to i1
  %9 = select i1 %i.dg, i32 255, i32 0            ; 2 uses
  %i.dh = load i32, ptr %i.cs, align 8, !tbaa !3
  %i.di = add i32 %i.dh, %i.cv                    ; 2 uses
  %i.dj = lshr i32 %i.di, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = trunc i32 %i.di to i8
  %i.do = and i8 %i.dn, 7
  %i.dp = lshr i8 %i.dm, %i.do
  %i.dq = trunc i8 %i.dp to i1
  %10 = select i1 %i.dq, i32 0, i32 255           ; 2 uses
  %11 = and i32 %10, %9
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv81 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !81
  %12 = trunc nuw i32 %11 to i8
  %13 = or i8 %i.ds, %12
  %14 = xor i32 %10, %9
  %15 = trunc nuw i32 %14 to i8
  %16 = xor i8 %15, -1
  %17 = and i8 %13, %16
  store i8 %17, ptr %i.dr, align 1, !tbaa !81
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %bb.j, !llvm.loop !130

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.loopexit, label %.epil.preheader98

.epil.preheader98:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph74
  %indvars.iv86.epil.init = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next87.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod101 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv86.epil.init
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !101
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = mul i32 %i.dx, %i.n
  %i.dz = add i32 %i.dy, %i.o
  %i.ea = and i32 %i.dz, 536870911
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !81
  %i.ee = lshr i8 %i.ed, %i.q
  %i.ef = trunc i8 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv86.epil.init ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !81
  %i.ei = select i1 %i.ef, i8 0, i8 %i.eh
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !81
  br label %.loopexit

.loopexit.loopexit96.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit96.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit96.unr-lcssa ] ; 2 uses
  %lcmp.mod97 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !101
  %i.el = zext i16 %i.ek to i32
  %i.em = load i32, ptr %i.ba, align 8, !tbaa !3
  %i.en = add i32 %i.em, %i.el                    ; 2 uses
  %i.eo = lshr i32 %i.en, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !81
  %i.es = trunc i32 %i.en to i8
  %i.et = and i8 %i.es, 7
  %i.eu = lshr i8 %i.er, %i.et
  %i.ev = trunc i8 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.epil.init ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !81
  %i.ey = select i1 %i.ev, i8 %i.ex, i8 0
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !81
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit96.unr-lcssa, %bb.j, %.epil.preheader98, %.loopexit.loopexit.unr-lcssa, %bb.g, %bb.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10KeyCompare24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPh(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(209) %6, ptr noundef %7) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !115
  switch i32 %i.b, label %bb.ap [
    i32 0, label %bb.b
    i32 1, label %bb.j
    i32 2, label %bb.r
    i32 4, label %bb.z
    i32 8, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !116, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i

_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i:   ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ]
  %.not156 = icmp eq i32 %1, 0
  br i1 %.not156, label %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i
  %i.p = zext i32 %i.i to i64
  %i.q = zext i32 %0 to i64
  %invariant.gep48.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.q
  %wide.trip.count55.i = zext i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph47.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next53.i, %bb.e ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv52.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64
  %i.u = mul nuw nsw i64 %i.t, %i.p
  %i.v = trunc nuw i64 %indvars.iv52.i to i32
  %i.w = add i32 %i.d, %i.v                       ; 2 uses
  %i.x = lshr i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !81
  %i.ab = trunc i32 %i.w to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = lshr i8 %i.aa, %i.ac
  %i.ae = trunc i8 %i.ad to i1
  %gep49.i = getelementptr inbounds nuw i8, ptr %invariant.gep48.i, i64 %i.u
  %i.af = load i8, ptr %gep49.i, align 1, !tbaa !81
  %i.ag = select i1 %i.ae, i32 255, i32 0
  %i.ah = zext i8 %i.af to i32
  %i.ai = icmp eq i32 %i.ag, %i.ah
  %i.aj = sext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv52.i
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !81
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit, label %bb.e, !llvm.loop !131

bb.f:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i, label %bb.g, !prof !55

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i

_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.aq, %bb.g ], [ null, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53 ; 2 uses
  %.not.i40.i = icmp eq ptr %i.as, null
  br i1 %.not.i40.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i, label %bb.h, !prof !55

bb.h:                                             ; preds = %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i

_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i: ; preds = %bb.h, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i
  %.0.i41.i = phi ptr [ %i.au, %bb.h ], [ null, %_ZNK5arrow7compute12RowTableImpl7offsetsEv.exit.i ]
  %.not155 = icmp eq i32 %1, 0
  br i1 %.not155, label %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i
  %i.av = zext i32 %0 to i64
  %invariant.gep.i = getelementptr i8, ptr %.0.i41.i, i64 %i.av
  %wide.trip.count.i = zext i32 %1 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !7
  %i.bb = trunc nuw i64 %indvars.iv.i to i32
  %i.bc = add i32 %i.d, %i.bb                     ; 2 uses
  %i.bd = lshr i32 %i.bc, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !81
  %i.bh = trunc i32 %i.bc to i8
  %i.bi = and i8 %i.bh, 7
  %i.bj = lshr i8 %i.bg, %i.bi
  %i.bk = trunc i8 %i.bj to i1
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ba
  %i.bl = load i8, ptr %gep.i, align 1, !tbaa !81
  %i.bm = select i1 %i.bk, i32 255, i32 0
  %i.bn = zext i8 %i.bl to i32
  %i.bo = icmp eq i32 %i.bm, %i.bn
  %i.bp = sext i1 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !81
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute10KeyCompare24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPh:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit216.unr-lcssa, %.lr.ph.i131
  %indvars.iv.i134.epil.init = phi i64 [ 0, %.lr.ph.i131 ], [ %indvars.iv.next.i136.1, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit216.unr-lcssa ] ; 3 uses
  %lcmp.mod217 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i134.epil.init
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !3
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i127, i64 %i.pb
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !7
  %gep.i135.epil = getelementptr i8, ptr %invariant.gep.i132, i64 %i.pd
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.i134.epil.init
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !7
  %i.pg = load i64, ptr %gep.i135.epil, align 8, !tbaa !7
  %i.ph = icmp eq i64 %i.pf, %i.pg
  %i.pi = sext i1 %i.ph to i8
  %i.pj = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.i134.epil.init
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !81
  br label %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit

_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit: ; preds = %.epil.preheader, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit216.unr-lcssa, %.epil.preheader218, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit215.unr-lcssa, %.epil.preheader224, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit214.unr-lcssa, %.epil.preheader230, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit213.unr-lcssa, %.epil.preheader236, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit212.unr-lcssa, %.epil.preheader242, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit211.unr-lcssa, %.epil.preheader248, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit210.unr-lcssa, %.epil.preheader254, %_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb0EZNS1_24CompareBinaryColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE_EEvjjjS5_S7_S9_SC_SF_SG_T0_.exit.loopexit209.unr-lcssa, %bb.i, %bb.e, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i129, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i139, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i106, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i116, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i83, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i93, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i67, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i77, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit42.i, %_ZNK5arrow7compute12RowTableImpl4dataEi.exit.i, %bb.ap
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10KeyCompare21NullUpdateColumnToRowILb0EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEbPh(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(209) %6, i1 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5arrow7compute12RowTableImpl13has_any_nullsEPKNS0_12LightContextE(ptr noundef nonnull align 8 dereferenceable(209) %6, ptr noundef %4)
  %i.b = load ptr, ptr %5, align 8                ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %or.cond.not = select i1 %i.a, i1 true, i1 %.not
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  br i1 %7, label %_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.d = zext i32 %0 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  br label %_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit

_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ %0, %bb.b ]   ; 4 uses
  %.not63 = icmp eq ptr %i.b, null
  br i1 %.not63, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !127  ; 3 uses
  %.not74 = icmp eq i32 %1, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.d
  %i.o = lshr i32 %i.h, 3                         ; 3 uses
  %i.p = trunc i32 %i.h to i8
  %i.q = and i8 %i.p, 7                           ; 3 uses
  %wide.trip.count86 = zext i32 %1 to i64         ; 2 uses
  %xtraiter96 = and i64 %wide.trip.count86, 1
  %i.r = icmp eq i32 %1, 1
  br i1 %i.r, label %.epil.preheader95, label %.lr.ph71.new

.lr.ph71.new:                                     ; preds = %.lr.ph71
  %unroll_iter99 = and i64 %wide.trip.count86, 4294967294
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph71.new
  %indvars.iv83 = phi i64 [ 0, %.lr.ph71.new ], [ %indvars.iv.next84.1, %bb.e ] ; 4 uses
  %niter100 = phi i64 [ 0, %.lr.ph71.new ], [ %niter100.next.1, %bb.e ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv83
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = mul i32 %i.t, %i.n
  %i.v = add i32 %i.u, %i.o
  %i.w = and i32 %i.v, 536870911
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !81
  %i.aa = lshr i8 %i.z, %i.q
  %i.ab = trunc i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv83 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !81
  %i.ae = select i1 %i.ab, i8 0, i8 %i.ad
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !81
  %indvars.iv.next84 = or disjoint i64 %indvars.iv83, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next84
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = mul i32 %i.ag, %i.n
  %i.ai = add i32 %i.ah, %i.o
  %i.aj = and i32 %i.ai, 536870911
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !81
  %i.an = lshr i8 %i.am, %i.q
  %i.ao = trunc i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.next84 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !81
  %i.ar = select i1 %i.ao, i8 0, i8 %i.aq
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !81
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !141

bb.f:                                             ; preds = %_ZN5arrow7compute10KeyCompare20ColIdInEncodingOrderERKNS0_12RowTableImplEjb.exit
  %i.as = tail call noundef zeroext i1 @_ZNK5arrow7compute12RowTableImpl13has_any_nullsEPKNS0_12LightContextE(ptr noundef nonnull align 8 dereferenceable(209) %6, ptr noundef %4)
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %5, align 8, !tbaa !52    ; 3 uses
  %.not72 = icmp eq i32 %1, 0
  br i1 %.not72, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i32 %1, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !3
  %i.ax = trunc nuw i64 %indvars.iv to i32
  %i.ay = add i32 %i.aw, %i.ax                    ; 2 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !81
  %i.bd = trunc i32 %i.ay to i8
  %i.be = and i8 %i.bd, 7
  %i.bf = lshr i8 %i.bc, %i.be
  %i.bg = trunc i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !81
  %i.bj = select i1 %i.bg, i8 %i.bi, i8 0
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !81
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load i32, ptr %i.au, align 8, !tbaa !3
  %i.bl = trunc nuw i64 %indvars.iv.next to i32
  %i.bm = add i32 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !81
  %i.br = trunc i32 %i.bm to i8
  %i.bs = and i8 %i.br, 7
  %i.bt = lshr i8 %i.bq, %i.bs
  %i.bu = trunc i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.next ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !81
  %i.bx = select i1 %i.bu, i8 %i.bw, i8 0
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !81
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit93.unr-lcssa, label %bb.h, !llvm.loop !142

bb.i:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !53
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !127
  %i.ce = load ptr, ptr %5, align 8, !tbaa !52
  %.not73 = icmp eq i32 %1, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.i
  %i.cf = lshr i32 %i.h, 3
  %i.cg = trunc i32 %i.h to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 64
  %wide.trip.count81 = zext i32 %1 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph69, %bb.j
  %indvars.iv78 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next79, %bb.j ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv78
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = mul i32 %i.ck, %i.cd
  %i.cm = add i32 %i.cl, %i.cf
  %i.cn = and i32 %i.cm, 536870911
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !81
  %i.cr = lshr i8 %i.cq, %i.ch
  %i.cs = trunc i8 %i.cr to i1
  %9 = select i1 %i.cs, i32 255, i32 0            ; 2 uses
  %i.ct = load i32, ptr %i.ci, align 8, !tbaa !3
  %i.cu = trunc nuw i64 %indvars.iv78 to i32
  %i.cv = add i32 %i.ct, %i.cu                    ; 2 uses
  %i.cw = lshr i32 %i.cv, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !81
  %i.da = trunc i32 %i.cv to i8
  %i.db = and i8 %i.da, 7
  %i.dc = lshr i8 %i.cz, %i.db
  %i.dd = trunc i8 %i.dc to i1
  %10 = select i1 %i.dd, i32 0, i32 255           ; 2 uses
  %11 = and i32 %10, %9
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv78 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !81
  %12 = trunc nuw i32 %11 to i8
  %13 = or i8 %i.df, %12
  %14 = xor i32 %10, %9
  %15 = trunc nuw i32 %14 to i8
  %16 = xor i8 %15, -1
  %17 = and i8 %13, %16
  store i8 %17, ptr %i.de, align 1, !tbaa !81
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit, label %bb.j, !llvm.loop !143

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.loopexit, label %.epil.preheader95

.epil.preheader95:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph71
  %indvars.iv83.epil.init = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next84.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod98 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv83.epil.init
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = mul i32 %i.dh, %i.n
  %i.dj = add i32 %i.di, %i.o
  %i.dk = and i32 %i.dj, 536870911
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !81
  %i.do = lshr i8 %i.dn, %i.q
  %i.dp = trunc i8 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv83.epil.init ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !81
  %i.ds = select i1 %i.dp, i8 0, i8 %i.dr
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !81
  br label %.loopexit

.loopexit.loopexit93.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit93.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit93.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.dt = load i32, ptr %i.au, align 8, !tbaa !3
  %i.du = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.dv = add i32 %i.dt, %i.du                    ; 2 uses
  %i.dw = lshr i32 %i.dv, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !81
  %i.ea = trunc i32 %i.dv to i8
  %i.eb = and i8 %i.ea, 7
  %i.ec = lshr i8 %i.dz, %i.eb
  %i.ed = trunc i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.epil.init ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !81
  %i.eg = select i1 %i.ed, i8 %i.ef, i8 0
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !81
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit93.unr-lcssa, %bb.j, %.epil.preheader95, %.loopexit.loopexit.unr-lcssa, %bb.g, %bb.i, %bb.d, %bb.a
  ret void
}

declare void @_ZN5arrow4util8bit_util13bytes_to_bitsEliPKhPhi(i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN5arrow4util8bit_util19bits_filter_indexesEiliPKhPKtPiPti(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5arrow4util8bit_util15bits_to_indexesEiliPKhPiPti(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util16TempVectorHolderIhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c, i32 noundef %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #11
  unreachable
}

declare void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10KeyCompare30CompareBinaryColumnToRowHelperILb1EZNS1_24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhEUlPKhSI_jlE4_EEvjjjS5_S7_S9_SC_SF_SG_T0_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(209) %7, ptr noundef %8, i64 %9) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = inttoptr i64 %9 to ptr                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !116, !range !37, !noundef !38
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit, label %bb.c, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !56, !range !37, !noundef !38
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.q, ptr %i.s, ptr null, !prof !67
  br label %_ZNK5arrow7compute12RowTableImpl4dataEi.exit

_ZNK5arrow7compute12RowTableImpl4dataEi.exit:     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.b ]
  %i.u = icmp ult i32 %1, %2
  br i1 %i.u, label %.lr.ph65, label %.loopexit

.lr.ph65:                                         ; preds = %_ZNK5arrow7compute12RowTableImpl4dataEi.exit
  %i.v = zext i32 %i.j to i64
  %i.w = zext i32 %0 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %invariant.gep66 = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.w
  %i.y = zext i32 %1 to i64
  %wide.trip.count74 = zext i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph65, %_ZZN5arrow7compute10KeyCompare24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhENKUlPKhSH_jlE4_clESH_SH_jl.exit
  %indvars.iv71 = phi i64 [ %i.y, %.lr.ph65 ], [ %indvars.iv.next72, %_ZZN5arrow7compute10KeyCompare24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhENKUlPKhSH_jlE4_clESH_SH_jl.exit ] ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv71
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !101 ; 2 uses
  %i.ab = zext i16 %i.aa to i32
  %i.ac = zext i16 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, %i.v
  %i.ah = load i32, ptr %i.x, align 4, !tbaa !115 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  %.lhs.trunc.i = add i32 %i.ah, -1
  %i.aj = lshr i32 %.lhs.trunc.i, 3
  %i.ak = select i1 %i.ai, i32 -1, i32 %i.aj      ; 4 uses
  %i.al = mul i32 %i.ah, %i.ab
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.am ; 3 uses
  %gep67 = getelementptr inbounds nuw i8, ptr %invariant.gep66, i64 %i.ag ; 3 uses
  %i.ao = icmp sgt i32 %i.ak, 0
  br i1 %i.ao, label %.lr.ph.preheader.i, label %_ZZN5arrow7compute10KeyCompare24CompareBinaryColumnToRowILb1EEEvjjPKtPKjPNS0_12LightContextERKNS0_14KeyColumnArrayERKNS0_12RowTableImplEPhENKUlPKhSH_jlE4_clESH_SH_jl.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.ak to i64 ; 5 uses
  %min.iters.check92 = icmp ult i32 %i.ak, 4
  br i1 %min.iters.check92, label %.lr.ph.i.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader.i
  %n.vec95 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph93
  %index97 = phi i64 [ 0, %vector.ph93 ], [ %index.next104, %vector.body96 ] ; 3 uses
  %vec.phi98 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.av, %vector.body96 ]
  %vec.phi99 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.aw, %vector.body96 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index97 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load100 = load <2 x i64>, ptr %i.ap, align 8
  %wide.load101 = load <2 x i64>, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %gep67, i64 %index97 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load102 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !7
  %wide.load103 = load <2 x i64>, ptr %i.as, align 8, !tbaa !7
  %i.at = xor <2 x i64> %wide.load102, %wide.load100
  %i.au = xor <2 x i64> %wide.load103, %wide.load101
  %i.av = or <2 x i64> %i.at, %vec.phi98          ; 2 uses
  %i.aw = or <2 x i64> %i.au, %vec.phi99          ; 2 uses
  %index.next104 = add nuw i64 %index97, 4        ; 2 uses
  %i.ax = icmp eq i64 %index.next104, %n.vec95
end_hunk_1
