Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFVerifier?download=true
inline.NumInlined: 9912
inline.NumDeleted: 5206
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeImmLj12ES2_EEEEbj:bb.a
  %.not16.wide.i.us = icmp eq i64 %i.cu, 0
  br i1 %.not16.wide.i.us, label %._crit_edge121, label %.lr.ph120, !llvm.loop !31

.lr.ph120:                                        ; preds = %bb.n, %bb.o
  %i.cv = phi i64 [ %i.cu, %bb.o ], [ %i.bx, %bb.n ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cv ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !426
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !77 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  store i64 %i.ch, ptr %i.dc, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !425
  %i.df = add i32 %i.de, -1
  %i.dg = icmp eq i32 %i.cz, %i.df
  br i1 %i.dg, label %bb.o, label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us, !llvm.loop !31

._crit_edge121:                                   ; preds = %bb.o, %bb.n
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !426
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !77
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.dl = zext i32 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl
  store i64 %i.ch, ptr %i.dm, align 8, !tbaa !47
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us

_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us: ; preds = %.lr.ph120, %._crit_edge121, %.split.us
  %i.dn = add nuw i32 %.065.us, 1                 ; 2 uses
  %.not94.us = icmp eq i32 %i.dn, %.274
  br i1 %.not94.us, label %.preheader, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us
  call void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %1) #27
  br label %.split.us

.split:                                           ; preds = %bb.m, %bb.u
  %.075 = phi i32 [ %.176, %bb.u ], [ %1, %bb.m ] ; 7 uses
  %.066 = phi i1 [ %.167, %bb.u ], [ false, %bb.m ] ; 3 uses
  %.065 = phi i32 [ %i.fo, %bb.u ], [ 0, %bb.m ]  ; 4 uses
  %i.do = zext i32 %.065 to i64                   ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !698 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.do
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !77 ; 2 uses
  %i.dt = add i32 %i.ds, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  %i.dv = zext i32 %i.dt to i64                   ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !47 ; 3 uses
  %i.dy = icmp eq i32 %.065, %.068
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split
  %i.dz = ptrtoint ptr %i.dq to i64
  %i.ea = and i64 %i.dz, -64
  %i.eb = or i64 %i.ea, %i.dv
  %i.ec = call noundef zeroext i1 @_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.075, i64 %i.eb, i64 noundef %i.dx) ; 2 uses
  %i.ed = zext i1 %i.ec to i32
  %i.ee = add i32 %.075, %i.ed
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit

bb.r:                                             ; preds = %.split
  %i.ef = zext i32 %.075 to i64                   ; 2 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !196 ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.ds, ptr %i.ei, align 8, !tbaa !425
  %.not.i = icmp eq i32 %.075, 0
  br i1 %.not.i, label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = add i32 %.075, -1
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !424
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !426
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ep ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.eq, align 8
  %i.er = and i64 %.0.copyload.i.i.i.i.i, -64
  %i.es = or i64 %i.er, %i.dv
  store i64 %i.es, ptr %i.eq, align 8
  %i.et = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.eu = add nsw i64 %i.ef, -1                   ; 2 uses
  %.not16.wide.i114 = icmp eq i64 %i.eu, 0
  br i1 %.not16.wide.i114, label %._crit_edge117, label %.lr.ph116

bb.t:                                             ; preds = %.lr.ph116
  %i.ev = add nsw i64 %i.ew, -1                   ; 2 uses
  %.not16.wide.i = icmp eq i64 %i.ev, 0
  br i1 %.not16.wide.i, label %._crit_edge117, label %.lr.ph116, !llvm.loop !31

.lr.ph116:                                        ; preds = %bb.s, %bb.t
  %i.ew = phi i64 [ %i.ev, %bb.t ], [ %i.eu, %bb.s ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.ew ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !426
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !77 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 96
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc
  store i64 %i.dx, ptr %i.fd, align 8, !tbaa !47
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !425
  %i.fg = add i32 %i.ff, -1
  %i.fh = icmp eq i32 %i.fa, %i.fg
  br i1 %i.fh, label %bb.t, label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit, !llvm.loop !31

._crit_edge117:                                   ; preds = %bb.t, %bb.s
  %i.fi = load ptr, ptr %i.et, align 8, !tbaa !426
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !77
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fm
  store i64 %i.dx, ptr %i.fn, align 8, !tbaa !47
  br label %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit

_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit: ; preds = %.lr.ph116, %bb.r, %._crit_edge117, %bb.q
  %.176 = phi i32 [ %i.ee, %bb.q ], [ %.075, %._crit_edge117 ], [ 0, %bb.r ], [ %.075, %.lr.ph116 ] ; 3 uses
  %.167 = phi i1 [ %i.ec, %bb.q ], [ %.066, %._crit_edge117 ], [ %.066, %bb.r ], [ %.066, %.lr.ph116 ] ; 2 uses
  %i.fo = add nuw i32 %.065, 1                    ; 2 uses
  %.not94 = icmp eq i32 %i.fo, %.274
  br i1 %.not94, label %.preheader, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit
  call void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %.176) #27
  br label %.split

.preheader:                                       ; preds = %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us
  %.us-phi = phi i32 [ %.065.us, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us ], [ %.065, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit ] ; 2 uses
  %.us-phi95 = phi i32 [ %1, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us ], [ %.176, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit ] ; 2 uses
  %.us-phi96 = phi i1 [ false, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit.us ], [ %.167, %_ZN4llvm11IntervalMapImmLj8ENS_15IntervalMapInfoImEEE8iterator11setNodeStopEjm.exit ]
  %.not7897 = icmp eq i32 %.us-phi, %.sroa.0.0.extract.trunc
  br i1 %.not7897, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.298 = phi i32 [ %i.fp, %.lr.ph ], [ %.us-phi, %.preheader ]
  call void @_ZN4llvm15IntervalMapImpl4Path8moveLeftEj(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %.us-phi95) #27
  %i.fp = add i32 %.298, -1                       ; 2 uses
  %.not78 = icmp eq i32 %i.fp, %.sroa.0.0.extract.trunc
  br i1 %.not78, label %._crit_edge, label %.lr.ph, !llvm.loop !1876

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.sroa.4.0.extract.shift = lshr i64 %i.bt, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.fq = zext i32 %.us-phi95 to i64
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !196
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 %.sroa.4.0.extract.trunc, ptr %i.ft, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.us-phi96
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeImmLj12ENS_15IntervalMapInfoImEEEEEEvPPT_jPjPKj(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add i32 %1, -1                           ; 3 uses
  %.not117 = icmp eq i32 %i.a, 0
  br i1 %.not117, label %.loopexit114, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit116
  %or.cond = icmp ult i32 %1, 2
  br i1 %or.cond, label %.loopexit114, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %._crit_edge
  %i.c = zext i32 %i.a to i64
  br label %.lr.ph121

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit116
  %indvars.iv123 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next124, %.loopexit116 ] ; 6 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv123 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77   ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv123 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !77   ; 2 uses
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %.loopexit116, label %.preheader115

.preheader115:                                    ; preds = %.lr.ph
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv123
  %i.j = icmp eq i64 %indvars.iv123, 0
  br i1 %i.j, label %.loopexit116, label %.lr.ph156

bb.b:                                             ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit
  %i.k = icmp eq i64 %indvars.iv.next126155, 0
  br i1 %i.k, label %.loopexit116, label %.lr.ph156, !llvm.loop !1877

.lr.ph156:                                        ; preds = %.preheader115, %bb.b
  %indvars.iv.next126155.in = phi i64 [ %indvars.iv.next126155, %bb.b ], [ %indvars.iv123, %.preheader115 ]
  %i.l = phi i32 [ %i.hs, %bb.b ], [ %i.e, %.preheader115 ] ; 12 uses
  %i.m = phi i32 [ %i.ht, %bb.b ], [ %i.g, %.preheader115 ]
  %indvars.iv.next126155 = add nsw i64 %indvars.iv.next126155.in, -1 ; 4 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !698  ; 32 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next126155
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !698  ; 14 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next126155 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77   ; 15 uses
  %i.s = sub i32 %i.m, %i.l                       ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i, label %.lr.ph.i.i24.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph156
  %i.u = sub i32 12, %i.l                         ; 2 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s)
  %.sroa.speculated46.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.v) ; 12 uses
  %.not9.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i, label %.lr.ph.i.i21.i

.lr.ph.i.i21.i:                                   ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 8 uses
  %i.x = zext i32 %i.l to i64                     ; 6 uses
  %min.iters.check173 = icmp ult i32 %i.l, 14
  %i.y = sub i32 0, %i.l
  %i.z = icmp ugt i32 %.sroa.speculated46.i, %i.y
  %or.cond315 = select i1 %min.iters.check173, i1 true, i1 %i.z
  br i1 %or.cond315, label %scalar.ph172.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.i.i21.i
  %i.aa = add i32 %i.l, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 3 uses
  %4 = add i32 %i.l, %.sroa.speculated46.i
  %i.ad = add i32 %4, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 3 uses
  %i.ag = sub nsw i64 %i.af, %i.ac
  %diff.check = icmp ugt i64 %i.ag, -32
  %i.ah = sub nsw i64 %i.af, %i.ac
  %i.ai = add nsw i64 %i.ah, -97
  %diff.check169 = icmp ult i64 %i.ai, 31
  %conflict.rdx = or i1 %diff.check, %diff.check169
  %i.aj = sub nsw i64 %i.ac, %i.af
  %i.ak = add nsw i64 %i.aj, -97
  %diff.check170 = icmp ult i64 %i.ak, 31
  %conflict.rdx171 = or i1 %conflict.rdx, %diff.check170
  br i1 %conflict.rdx171, label %scalar.ph172.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck168
  %n.vec175 = and i64 %i.x, 4294967292            ; 2 uses
  %i.al = and i64 %i.x, 3
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.am = xor i64 %index177, -1
  %i.an = add i64 %i.am, %i.x                     ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i64 %i.an, 4294967295               ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ap ; 2 uses
  %i.ar = add i32 %.sroa.speculated46.i, %i.ao
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %wide.load178 = load <2 x i64>, ptr %i.au, align 8, !tbaa !79
  %wide.load179 = load <2 x i64>, ptr %i.av, align 8, !tbaa !79
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 -24
  store <2 x i64> %wide.load178, ptr %i.aw, align 8, !tbaa !79
  store <2 x i64> %wide.load179, ptr %i.ax, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ap ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -24
  %wide.load180 = load <2 x i64>, ptr %i.az, align 8, !tbaa !47
  %wide.load181 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.as ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -24
  store <2 x i64> %wide.load180, ptr %i.bc, align 8, !tbaa !47
  store <2 x i64> %wide.load181, ptr %i.bd, align 8, !tbaa !47
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.be, label %middle.block183, label %vector.body176, !llvm.loop !1878

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %n.vec175, %i.x
  br i1 %cmp.n184, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i, label %scalar.ph172.preheader

scalar.ph172.preheader:                           ; preds = %vector.memcheck168, %.lr.ph.i.i21.i, %middle.block183
  %indvars.iv.i.i.i.ph = phi i64 [ %i.x, %vector.memcheck168 ], [ %i.x, %.lr.ph.i.i21.i ], [ %i.al, %middle.block183 ] ; 4 uses
  %i.bf = trunc nuw i64 %indvars.iv.i.i.i.ph to i32
  %xtraiter324 = and i32 %i.bf, 1
  %lcmp.mod325.not = icmp eq i32 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %scalar.ph172.prol.loopexit, label %scalar.ph172.prol

scalar.ph172.prol:                                ; preds = %scalar.ph172.preheader
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, -1 ; 3 uses
  %indvars.i.i.i.prol = trunc i64 %indvars.iv.next.i.i.i.prol to i32
  %i.bg = and i64 %indvars.iv.next.i.i.i.prol, 4294967295 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bg
  %i.bi = add i32 %.sroa.speculated46.i, %indvars.i.i.i.prol
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bj
  %i.bl = load i64, ptr %i.bh, align 8, !tbaa !79
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !79
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bg
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !47
  br label %scalar.ph172.prol.loopexit

scalar.ph172.prol.loopexit:                       ; preds = %scalar.ph172.prol, %scalar.ph172.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph172.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph172.prol ]
  %i.bp = icmp eq i64 %indvars.iv.i.i.i.ph, 1
  br i1 %i.bp, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i, label %scalar.ph172

scalar.ph172:                                     ; preds = %scalar.ph172.prol.loopexit, %scalar.ph172
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %scalar.ph172 ], [ %indvars.iv.i.i.i.unr, %scalar.ph172.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %i.bq = and i64 %indvars.iv.next.i.i.i, 4294967295 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bq
  %i.bs = add i32 %.sroa.speculated46.i, %indvars.i.i.i
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bt
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !79
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !79
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bq
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !47
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bt
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %indvars.i.i.i.1 = trunc i64 %indvars.iv.next.i.i.i.1 to i32 ; 2 uses
  %i.bz = and i64 %indvars.iv.next.i.i.i.1, 4294967295 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bz
  %i.cb = add i32 %.sroa.speculated46.i, %indvars.i.i.i.1
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cc
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !79
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !79
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bz
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cc
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !47
  %.not.i.i22.i.1 = icmp eq i32 %indvars.i.i.i.1, 0
  br i1 %.not.i.i22.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i, label %scalar.ph172, !llvm.loop !1879

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i: ; preds = %scalar.ph172.prol.loopexit, %scalar.ph172, %middle.block183, %.lr.ph.i.i.i
  %.not13.i.i.i = icmp eq i32 %.sroa.speculated46.i, 0
  br i1 %.not13.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit, label %.lr.ph.i7.i.i

.lr.ph.i7.i.i:                                    ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i
  %i.ci = sub i32 %i.r, %.sroa.speculated46.i     ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 4 uses
  %i.cl = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s)
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.cl, i32 %i.u) ; 2 uses
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cm, 10
  %i.co = add i32 %i.r, -1
  %i.cp = icmp ult i32 %i.co, %i.ci
  %or.cond317 = select i1 %min.iters.check, i1 true, i1 %i.cp
  br i1 %or.cond317, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i7.i.i
  %i.cq = add nsw i32 %.sroa.speculated46.i, -1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3                ; 2 uses
  %5 = getelementptr i8, ptr %i.n, i64 %i.cs
  %scevgep161 = getelementptr i8, ptr %5, i64 104
  %i.ct = zext i32 %i.ci to i64
  %i.cu = shl nuw nsw i64 %i.ct, 3                ; 2 uses
  %scevgep162 = getelementptr i8, ptr %i.p, i64 %i.cu
  %scevgep163 = getelementptr i8, ptr %i.p, i64 %i.cu
  %i.cv = getelementptr i8, ptr %scevgep163, i64 %i.cs
  %scevgep164 = getelementptr i8, ptr %i.cv, i64 104
  %bound0 = icmp ult ptr %i.n, %scevgep164
  %bound1 = icmp ult ptr %scevgep162, %scevgep161
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cn, 2147483646              ; 4 uses
  %i.cw = trunc nuw nsw i64 %n.vec to i32
  %i.cx = add i32 %i.ci, %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cy = trunc i64 %index to i32
  %i.cz = add i32 %i.ci, %i.cy
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index
  %wide.load = load <2 x i64>, ptr %i.db, align 8, !tbaa !79, !alias.scope !1909
  store <2 x i64> %wide.load, ptr %i.dc, align 8, !tbaa !79, !alias.scope !1910, !noalias !1909
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.da
  %wide.load165 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !47, !alias.scope !1909
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index
  store <2 x i64> %wide.load165, ptr %i.de, align 8, !tbaa !47, !alias.scope !1910, !noalias !1909
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !1883

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cn
  br i1 %cmp.n, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i7.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i7.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.015.i.i.i.ph = phi i32 [ %i.ci, %vector.memcheck ], [ %i.ci, %.lr.ph.i7.i.i ], [ %i.cx, %middle.block ] ; 5 uses
  %i.dg = sub i32 %i.r, %.015.i.i.i.ph
  %.neg = add i32 %.015.i.i.i.ph, 1
  %xtraiter326 = and i32 %i.dg, 1
  %lcmp.mod327.not = icmp eq i32 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dh = zext i32 %.015.i.i.i.ph to i64          ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.ph
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !79
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !79
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dh
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !47
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.ph
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !47
  %i.do = add i32 %.015.i.i.i.ph, 1
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %.015.i.i.i.unr = phi i32 [ %.015.i.i.i.ph, %scalar.ph.preheader ], [ %i.do, %scalar.ph.prol ]
  %i.dp = icmp eq i32 %i.r, %.neg
  br i1 %i.dp, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.015.i.i.i = phi i32 [ %i.ef, %scalar.ph ], [ %.015.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dq = zext i32 %.015.i.i.i to i64             ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !79
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !79
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dq
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !47
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !47
  %i.dx = add i32 %.015.i.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !79
  store i64 %i.eb, ptr %i.ea, align 8, !tbaa !79
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dy
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !47
  %i.ef = add i32 %.015.i.i.i, 2                  ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %.not.i8.i.i.1 = icmp eq i32 %i.ef, %i.r
  br i1 %.not.i8.i.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph, !llvm.loop !1884

.lr.ph.i.i24.i:                                   ; preds = %.lr.ph156
  %i.eg = sub nsw i32 0, %i.s                     ; 2 uses
  %i.eh = sub i32 12, %i.r                        ; 2 uses
  %i.ei = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.eg)
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 %i.ei) ; 5 uses
  %.not13.i.i29.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not13.i.i29.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i, label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i24.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 4 uses
  %i.el = zext i32 %.sroa.speculated.i to i64     ; 7 uses
  %min.iters.check216 = icmp ult i32 %.sroa.speculated.i, 12
  br i1 %min.iters.check216, label %scalar.ph215.preheader, label %vector.scevcheck205

vector.scevcheck205:                              ; preds = %.lr.ph.i.i30.i
  %i.em = add nsw i64 %i.el, -1                   ; 2 uses
  %i.en = trunc nsw i64 %i.em to i32
  %i.eo = xor i32 %i.r, -1
  %i.ep = icmp ult i32 %i.eo, %i.en
  %i.eq = icmp ugt i64 %i.em, 4294967295
  %i.er = or i1 %i.ep, %i.eq
  br i1 %i.er, label %scalar.ph215.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %vector.scevcheck205
  %6 = shl nuw nsw i64 %i.el, 3                   ; 2 uses
  %7 = getelementptr i8, ptr %i.n, i64 %6
  %scevgep208 = getelementptr i8, ptr %7, i64 96
  %i.es = zext i32 %i.r to i64
  %i.et = shl nuw nsw i64 %i.es, 3                ; 2 uses
  %scevgep209 = getelementptr i8, ptr %i.p, i64 %i.et
  %scevgep210 = getelementptr i8, ptr %i.p, i64 %6
  %i.eu = getelementptr i8, ptr %scevgep210, i64 %i.et
  %scevgep211 = getelementptr i8, ptr %i.eu, i64 96
  %bound0212 = icmp ult ptr %i.n, %scevgep211
  %bound1213 = icmp ult ptr %scevgep209, %scevgep208
  %found.conflict214 = and i1 %bound0212, %bound1213
  br i1 %found.conflict214, label %scalar.ph215.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck206
  %n.vec218 = and i64 %i.el, 2147483646           ; 4 uses
  %i.ev = trunc nuw nsw i64 %n.vec218 to i32
  %i.ew = add i32 %i.r, %i.ev
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next223, %vector.body219 ] ; 4 uses
  %i.ex = trunc i64 %index220 to i32
  %i.ey = add i32 %i.r, %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index220
  %i.fa = zext i32 %i.ey to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fa
  %wide.load221 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !79, !alias.scope !1911, !noalias !1912
  store <2 x i64> %wide.load221, ptr %i.fb, align 8, !tbaa !79, !alias.scope !1912
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index220
  %wide.load222 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !47, !alias.scope !1911, !noalias !1912
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fa
  store <2 x i64> %wide.load222, ptr %i.fd, align 8, !tbaa !47, !alias.scope !1912
  %index.next223 = add nuw i64 %index220, 2       ; 2 uses
  %i.fe = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.fe, label %middle.block224, label %vector.body219, !llvm.loop !1888

middle.block224:                                  ; preds = %vector.body219
  %cmp.n225 = icmp eq i64 %n.vec218, %i.el
  br i1 %cmp.n225, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i, label %scalar.ph215.preheader

scalar.ph215.preheader:                           ; preds = %vector.memcheck206, %vector.scevcheck205, %.lr.ph.i.i30.i, %middle.block224
  %indvars.iv.i31.i.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %vector.scevcheck205 ], [ 0, %.lr.ph.i.i30.i ], [ %n.vec218, %middle.block224 ] ; 5 uses
  %.01214.i.i.i.ph = phi i32 [ %i.r, %vector.memcheck206 ], [ %i.r, %vector.scevcheck205 ], [ %i.r, %.lr.ph.i.i30.i ], [ %i.ew, %middle.block224 ] ; 3 uses
  %xtraiter = and i64 %i.el, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph215.prol.loopexit, label %scalar.ph215.prol

scalar.ph215.prol:                                ; preds = %scalar.ph215.preheader
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i31.i.ph
  %i.fg = zext i32 %.01214.i.i.i.ph to i64        ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fg
  %i.fi = load i64, ptr %i.ff, align 8, !tbaa !79
  store i64 %i.fi, ptr %i.fh, align 8, !tbaa !79
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i31.i.ph
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !47
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fg
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !47
  %indvars.iv.next.i32.i.prol = or disjoint i64 %indvars.iv.i31.i.ph, 1
  %i.fm = add i32 %.01214.i.i.i.ph, 1
  br label %scalar.ph215.prol.loopexit

scalar.ph215.prol.loopexit:                       ; preds = %scalar.ph215.prol, %scalar.ph215.preheader
  %indvars.iv.i31.i.unr = phi i64 [ %indvars.iv.i31.i.ph, %scalar.ph215.preheader ], [ %indvars.iv.next.i32.i.prol, %scalar.ph215.prol ]
  %.01214.i.i.i.unr = phi i32 [ %.01214.i.i.i.ph, %scalar.ph215.preheader ], [ %i.fm, %scalar.ph215.prol ]
  %i.fn = add nsw i64 %i.el, -1
  %i.fo = icmp eq i64 %indvars.iv.i31.i.ph, %i.fn
  br i1 %i.fo, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i, label %scalar.ph215

scalar.ph215:                                     ; preds = %scalar.ph215.prol.loopexit, %scalar.ph215
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph215 ], [ %indvars.iv.i31.i.unr, %scalar.ph215.prol.loopexit ] ; 4 uses
  %.01214.i.i.i = phi i32 [ %i.ge, %scalar.ph215 ], [ %.01214.i.i.i.unr, %scalar.ph215.prol.loopexit ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i31.i
  %i.fq = zext i32 %.01214.i.i.i to i64           ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fq
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !79
  store i64 %i.fs, ptr %i.fr, align 8, !tbaa !79
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i31.i
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !47
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fq
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !47
  %indvars.iv.next.i32.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.fw = add i32 %.01214.i.i.i, 1
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i32.i
  %i.fy = zext i32 %i.fw to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fy
  %i.ga = load i64, ptr %i.fx, align 8, !tbaa !79
  store i64 %i.ga, ptr %i.fz, align 8, !tbaa !79
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next.i32.i
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !47
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fy
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !47
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %i.ge = add i32 %.01214.i.i.i, 2
  %.not.i.i33.i.1 = icmp eq i64 %indvars.iv.next.i32.i.1, %i.el
  br i1 %.not.i.i33.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i, label %scalar.ph215, !llvm.loop !1889

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i: ; preds = %scalar.ph215.prol.loopexit, %scalar.ph215, %middle.block224, %.lr.ph.i.i24.i
  %.not13.i.i.i.i.i = icmp eq i32 %i.l, %.sroa.speculated.i
  br i1 %.not13.i.i.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 8 uses
  %i.gg = zext i32 %i.l to i64                    ; 4 uses
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.eg)
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 %i.eh)
  %umin122 = zext i32 %i.gi to i64                ; 6 uses
  %i.gj = sub nsw i64 %i.gg, %umin122             ; 3 uses
  %min.iters.check193 = icmp ult i64 %i.gj, 10
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.gk = shl nuw nsw i64 %umin122, 3
  %i.gl = add nsw i64 %i.gk, -81
  %diff.check190 = icmp ult i64 %i.gl, 15
  br i1 %diff.check190, label %scalar.ph192.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck186
  %n.vec195 = and i64 %i.gj, -2                   ; 4 uses
  %i.gm = add nsw i64 %n.vec195, %umin122
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next200, %vector.body196 ] ; 4 uses
  %i.gn = add nuw i64 %index197, %umin122         ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index197
  %wide.load198 = load <2 x i64>, ptr %i.go, align 8, !tbaa !79
  store <2 x i64> %wide.load198, ptr %i.gp, align 8, !tbaa !79
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gn
  %wide.load199 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !47
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %index197
  store <2 x i64> %wide.load199, ptr %i.gr, align 8, !tbaa !47
  %index.next200 = add nuw i64 %index197, 2       ; 2 uses
  %i.gs = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.gs, label %middle.block201, label %vector.body196, !llvm.loop !1890

middle.block201:                                  ; preds = %vector.body196
  %cmp.n202 = icmp eq i64 %i.gj, %n.vec195
  br i1 %cmp.n202, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %vector.memcheck186, %.lr.ph.i.i.i.i.i, %middle.block201
  %indvars.iv.ph = phi i64 [ %umin122, %vector.memcheck186 ], [ %umin122, %.lr.ph.i.i.i.i.i ], [ %i.gm, %middle.block201 ] ; 6 uses
  %indvars.iv6.i.i.ph = phi i64 [ 0, %vector.memcheck186 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec195, %middle.block201 ] ; 4 uses
  %i.gt = sub nsw i64 %i.gg, %indvars.iv.ph
  %xtraiter322 = and i64 %i.gt, 1
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %scalar.ph192.prol.loopexit, label %scalar.ph192.prol

scalar.ph192.prol:                                ; preds = %scalar.ph192.preheader
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.ph
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv6.i.i.ph
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !79
  store i64 %i.gw, ptr %i.gv, align 8, !tbaa !79
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.ph
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !47
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv6.i.i.ph
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !47
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  %indvars.iv.next7.i.i.prol = or disjoint i64 %indvars.iv6.i.i.ph, 1
  br label %scalar.ph192.prol.loopexit

scalar.ph192.prol.loopexit:                       ; preds = %scalar.ph192.prol, %scalar.ph192.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph192.preheader ], [ %indvars.iv.next.prol, %scalar.ph192.prol ]
  %indvars.iv6.i.i.unr = phi i64 [ %indvars.iv6.i.i.ph, %scalar.ph192.preheader ], [ %indvars.iv.next7.i.i.prol, %scalar.ph192.prol ]
  %i.ha = add nsw i64 %i.gg, -1
  %i.hb = icmp eq i64 %indvars.iv.ph, %i.ha
  br i1 %i.hb, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i, label %scalar.ph192

scalar.ph192:                                     ; preds = %scalar.ph192.prol.loopexit, %scalar.ph192
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph192 ], [ %indvars.iv.unr, %scalar.ph192.prol.loopexit ] ; 4 uses
  %indvars.iv6.i.i = phi i64 [ %indvars.iv.next7.i.i.1, %scalar.ph192 ], [ %indvars.iv6.i.i.unr, %scalar.ph192.prol.loopexit ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv6.i.i
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !79
  store i64 %i.he, ptr %i.hd, align 8, !tbaa !79
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !47
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv6.i.i
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv6.i.i, 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next7.i.i
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !79
  store i64 %i.hk, ptr %i.hj, align 8, !tbaa !79
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !47
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next7.i.i
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next7.i.i.1 = add nuw nsw i64 %indvars.iv6.i.i, 2
  %.not.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.1, %i.gg
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i, label %scalar.ph192, !llvm.loop !1891

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i: ; preds = %scalar.ph192.prol.loopexit, %scalar.ph192, %middle.block201, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i
  %i.ho = sub nsw i32 0, %.sroa.speculated.i
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i
  %.0.i = phi i32 [ %i.ho, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i ], [ %.sroa.speculated46.i, %middle.block ], [ %.sroa.speculated46.i, %scalar.ph ], [ %.sroa.speculated46.i, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.hp = load i32, ptr %i.q, align 4, !tbaa !77
  %i.hq = sub i32 %i.hp, %.0.i
  store i32 %i.hq, ptr %i.q, align 4, !tbaa !77
  %i.hr = load i32, ptr %i.d, align 4, !tbaa !77
  %i.hs = add i32 %i.hr, %.0.i                    ; 3 uses
  store i32 %i.hs, ptr %i.d, align 4, !tbaa !77
  %i.ht = load i32, ptr %i.f, align 4, !tbaa !77  ; 2 uses
  %.not77 = icmp ult i32 %i.hs, %i.ht
  br i1 %.not77, label %bb.b, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit..loopexit116.loopexit_crit_edge, !llvm.loop !1877

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit..loopexit116.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit
  br label %.loopexit116, !llvm.loop !1877

.loopexit116:                                     ; preds = %bb.b, %.preheader115, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit..loopexit116.loopexit_crit_edge, %.lr.ph
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, -1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next124, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1892

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.loopexit
  %indvars.iv133 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next134, %.loopexit ] ; 5 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv133 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !77 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv133 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !77 ; 2 uses
  %i.hy = icmp eq i32 %i.hv, %i.hx
  br i1 %i.hy, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph121
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv133
  %i.ia = trunc nuw nsw i64 %indvars.iv133 to i32
  %.0157 = add i32 %i.ia, 1                       ; 2 uses
  %.not74158 = icmp eq i32 %.0157, %1
  br i1 %.not74158, label %.loopexit, label %.lr.ph160

bb.c:                                             ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit112
  %.0 = add i32 %.0159, 1                         ; 2 uses
  %.not74 = icmp eq i32 %.0, %1
  br i1 %.not74, label %.loopexit, label %.lr.ph160, !llvm.loop !1893

.lr.ph160:                                        ; preds = %.preheader, %bb.c
  %.0159 = phi i32 [ %.0, %bb.c ], [ %.0157, %.preheader ] ; 2 uses
  %i.ib = phi i32 [ %i.qj, %bb.c ], [ %i.hv, %.preheader ] ; 16 uses
  %i.ic = phi i32 [ %i.qk, %bb.c ], [ %i.hx, %.preheader ]
  %i.id = zext i32 %.0159 to i64                  ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !698 ; 32 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.id ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !77 ; 11 uses
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !698 ; 14 uses
  %i.ij = sub i32 %i.ib, %i.ic                    ; 4 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph.i.i.i96, label %.lr.ph.i.i24.i78

.lr.ph.i.i.i96:                                   ; preds = %.lr.ph160
  %i.il = sub i32 12, %i.ih                       ; 2 uses
  %i.im = tail call i32 @llvm.umin.i32(i32 %i.ib, i32 %i.ij)
  %.sroa.speculated46.i98 = tail call i32 @llvm.umin.i32(i32 %i.il, i32 %i.im) ; 12 uses
  %.not9.i.i.i99 = icmp eq i32 %i.ih, 0
  br i1 %.not9.i.i.i99, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i105, label %.lr.ph.i.i21.i100

.lr.ph.i.i21.i100:                                ; preds = %.lr.ph.i.i.i96
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 96 ; 8 uses
  %i.io = zext i32 %i.ih to i64                   ; 6 uses
  %min.iters.check259 = icmp ult i32 %i.ih, 14
  %i.ip = sub i32 0, %i.ih
  %i.iq = icmp ugt i32 %.sroa.speculated46.i98, %i.ip
  %or.cond319 = select i1 %min.iters.check259, i1 true, i1 %i.iq
  br i1 %or.cond319, label %scalar.ph258.preheader, label %vector.memcheck252.a

vector.memcheck252.a:                             ; preds = %.lr.ph.i.i21.i100
  %i.ir = add i32 %i.ih, -1
  %i.is = zext i32 %i.ir to i64
  %i.it = shl nuw nsw i64 %i.is, 3                ; 3 uses
  %8 = add i32 %i.ih, %.sroa.speculated46.i98
  %i.iu = add i32 %8, -1
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 3                ; 3 uses
  %i.ix = sub nsw i64 %i.iw, %i.it
  %diff.check253 = icmp ugt i64 %i.ix, -32
  %i.iy = sub nsw i64 %i.iw, %i.it
  %i.iz = add nsw i64 %i.iy, -97
  %diff.check254 = icmp ult i64 %i.iz, 31
  %conflict.rdx255 = or i1 %diff.check253, %diff.check254
  %i.ja = sub nsw i64 %i.it, %i.iw
  %i.jb = add nsw i64 %i.ja, -97
  %diff.check256 = icmp ult i64 %i.jb, 31
  %conflict.rdx257 = or i1 %conflict.rdx255, %diff.check256
  br i1 %conflict.rdx257, label %scalar.ph258.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %vector.memcheck252.a
  %n.vec261 = and i64 %i.io, 4294967292           ; 2 uses
  %i.jc = and i64 %i.io, 3
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next268, %vector.body262 ] ; 2 uses
  %i.jd = xor i64 %index263, -1
  %i.je = add i64 %i.jd, %i.io                    ; 2 uses
  %i.jf = trunc i64 %i.je to i32
  %i.jg = and i64 %i.je, 4294967295               ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jg ; 2 uses
  %i.ji = add i32 %.sroa.speculated46.i98, %i.jf
  %i.jj = zext i32 %i.ji to i64                   ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jh, i64 -8
  %i.jm = getelementptr inbounds i8, ptr %i.jh, i64 -24
  %wide.load264 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !79
  %wide.load265 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !79
  %i.jn = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.jo = getelementptr inbounds i8, ptr %i.jk, i64 -24
  store <2 x i64> %wide.load264, ptr %i.jn, align 8, !tbaa !79
  store <2 x i64> %wide.load265, ptr %i.jo, align 8, !tbaa !79
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.jg ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -8
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -24
  %wide.load266 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !47
  %wide.load267 = load <2 x i64>, ptr %i.jr, align 8, !tbaa !47
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.jj ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -8
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 -24
  store <2 x i64> %wide.load266, ptr %i.jt, align 8, !tbaa !47
  store <2 x i64> %wide.load267, ptr %i.ju, align 8, !tbaa !47
  %index.next268 = add nuw i64 %index263, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.jv, label %middle.block269, label %vector.body262, !llvm.loop !1894

middle.block269:                                  ; preds = %vector.body262
  %cmp.n270 = icmp eq i64 %n.vec261, %i.io
  br i1 %cmp.n270, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i105, label %scalar.ph258.preheader

scalar.ph258.preheader:                           ; preds = %vector.memcheck252.a, %.lr.ph.i.i21.i100, %middle.block269
  %indvars.iv.i.i.i101.ph = phi i64 [ %i.io, %vector.memcheck252.a ], [ %i.io, %.lr.ph.i.i21.i100 ], [ %i.jc, %middle.block269 ] ; 4 uses
  %i.jw = trunc nuw i64 %indvars.iv.i.i.i101.ph to i32
  %xtraiter332 = and i32 %i.jw, 1
  %lcmp.mod333.not = icmp eq i32 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %scalar.ph258.prol.loopexit, label %scalar.ph258.prol

scalar.ph258.prol:                                ; preds = %scalar.ph258.preheader
  %indvars.iv.next.i.i.i102.prol = add nsw i64 %indvars.iv.i.i.i101.ph, -1 ; 3 uses
  %indvars.i.i.i103.prol = trunc i64 %indvars.iv.next.i.i.i102.prol to i32
  %i.jx = and i64 %indvars.iv.next.i.i.i102.prol, 4294967295 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jx
  %i.jz = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103.prol
  %i.ka = zext i32 %i.jz to i64                   ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ka
  %i.kc = load i64, ptr %i.jy, align 8, !tbaa !79
  store i64 %i.kc, ptr %i.kb, align 8, !tbaa !79
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.jx
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !47
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ka
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !47
  br label %scalar.ph258.prol.loopexit

scalar.ph258.prol.loopexit:                       ; preds = %scalar.ph258.prol, %scalar.ph258.preheader
  %indvars.iv.i.i.i101.unr = phi i64 [ %indvars.iv.i.i.i101.ph, %scalar.ph258.preheader ], [ %indvars.iv.next.i.i.i102.prol, %scalar.ph258.prol ]
  %i.kg = icmp eq i64 %indvars.iv.i.i.i101.ph, 1
  br i1 %i.kg, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i105, label %scalar.ph258

scalar.ph258:                                     ; preds = %scalar.ph258.prol.loopexit, %scalar.ph258
  %indvars.iv.i.i.i101 = phi i64 [ %indvars.iv.next.i.i.i102.1, %scalar.ph258 ], [ %indvars.iv.i.i.i101.unr, %scalar.ph258.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i.i.i102 = add nsw i64 %indvars.iv.i.i.i101, -1 ; 2 uses
  %indvars.i.i.i103 = trunc i64 %indvars.iv.next.i.i.i102 to i32
  %i.kh = and i64 %indvars.iv.next.i.i.i102, 4294967295 ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.kh
  %i.kj = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.kk
  %i.km = load i64, ptr %i.ki, align 8, !tbaa !79
  store i64 %i.km, ptr %i.kl, align 8, !tbaa !79
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.kh
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !47
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.kk
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !47
  %indvars.iv.next.i.i.i102.1 = add nsw i64 %indvars.iv.i.i.i101, -2 ; 3 uses
  %indvars.i.i.i103.1 = trunc i64 %indvars.iv.next.i.i.i102.1 to i32 ; 2 uses
  %i.kq = and i64 %indvars.iv.next.i.i.i102.1, 4294967295 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.kq
  %i.ks = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103.1
  %i.kt = zext i32 %i.ks to i64                   ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.kt
  %i.kv = load i64, ptr %i.kr, align 8, !tbaa !79
  store i64 %i.kv, ptr %i.ku, align 8, !tbaa !79
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.kq
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !47
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.kt
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !47
  %.not.i.i22.i104.1 = icmp eq i32 %indvars.i.i.i103.1, 0
  br i1 %.not.i.i22.i104.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i105, label %scalar.ph258, !llvm.loop !1895

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i105: ; preds = %scalar.ph258.prol.loopexit, %scalar.ph258, %middle.block269, %.lr.ph.i.i.i96
  %.not13.i.i.i106 = icmp eq i32 %.sroa.speculated46.i98, 0
  br i1 %.not13.i.i.i106, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit112, label %.lr.ph.i7.i.i107

.lr.ph.i7.i.i107:                                 ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i105
  %i.kz = sub i32 %i.ib, %.sroa.speculated46.i98  ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ii, i64 96 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.if, i64 96 ; 4 uses
  %i.lc = tail call i32 @llvm.umin.i32(i32 %i.ib, i32 %i.ij)
  %i.ld = tail call i32 @llvm.umin.i32(i32 %i.lc, i32 %i.il) ; 2 uses
  %i.le = zext nneg i32 %i.ld to i64              ; 2 uses
  %min.iters.check239 = icmp ult i32 %i.ld, 10
  %i.lf = add i32 %i.ib, -1
  %i.lg = icmp ult i32 %i.lf, %i.kz
  %or.cond321 = select i1 %min.iters.check239, i1 true, i1 %i.lg
  br i1 %or.cond321, label %scalar.ph238.preheader, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph.i7.i.i107
  %i.lh = add nsw i32 %.sroa.speculated46.i98, -1
  %i.li = zext i32 %i.lh to i64
  %i.lj = shl nuw nsw i64 %i.li, 3                ; 2 uses
  %9 = getelementptr i8, ptr %i.if, i64 %i.lj
  %scevgep231 = getelementptr i8, ptr %9, i64 104
  %i.lk = zext i32 %i.kz to i64
  %i.ll = shl nuw nsw i64 %i.lk, 3                ; 2 uses
  %scevgep232 = getelementptr i8, ptr %i.ii, i64 %i.ll
  %scevgep233 = getelementptr i8, ptr %i.ii, i64 %i.ll
  %i.lm = getelementptr i8, ptr %scevgep233, i64 %i.lj
  %scevgep234 = getelementptr i8, ptr %i.lm, i64 104
  %bound0235 = icmp ult ptr %i.if, %scevgep234
  %bound1236 = icmp ult ptr %scevgep232, %scevgep231
  %found.conflict237 = and i1 %bound0235, %bound1236
  br i1 %found.conflict237, label %scalar.ph238.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck229
  %n.vec241 = and i64 %i.le, 2147483646           ; 4 uses
  %i.ln = trunc nuw nsw i64 %n.vec241 to i32
  %i.lo = add i32 %i.kz, %i.ln
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next246, %vector.body242 ] ; 4 uses
  %i.lp = trunc i64 %index243 to i32
  %i.lq = add i32 %i.kz, %i.lp
  %i.lr = zext i32 %i.lq to i64                   ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index243
  %wide.load244 = load <2 x i64>, ptr %i.ls, align 8, !tbaa !79, !alias.scope !1913
  store <2 x i64> %wide.load244, ptr %i.lt, align 8, !tbaa !79, !alias.scope !1914, !noalias !1913
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lr
  %wide.load245 = load <2 x i64>, ptr %i.lu, align 8, !tbaa !47, !alias.scope !1913
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index243
  store <2 x i64> %wide.load245, ptr %i.lv, align 8, !tbaa !47, !alias.scope !1914, !noalias !1913
  %index.next246 = add nuw i64 %index243, 2       ; 2 uses
  %i.lw = icmp eq i64 %index.next246, %n.vec241
  br i1 %i.lw, label %middle.block247, label %vector.body242, !llvm.loop !1899

middle.block247:                                  ; preds = %vector.body242
  %cmp.n248 = icmp eq i64 %n.vec241, %i.le
  br i1 %cmp.n248, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph238.preheader

scalar.ph238.preheader:                           ; preds = %vector.memcheck229, %.lr.ph.i7.i.i107, %middle.block247
  %indvars.iv.i.i108.ph = phi i64 [ 0, %vector.memcheck229 ], [ 0, %.lr.ph.i7.i.i107 ], [ %n.vec241, %middle.block247 ] ; 4 uses
  %.015.i.i.i109.ph = phi i32 [ %i.kz, %vector.memcheck229 ], [ %i.kz, %.lr.ph.i7.i.i107 ], [ %i.lo, %middle.block247 ] ; 5 uses
  %i.lx = sub i32 %i.ib, %.015.i.i.i109.ph
  %.neg336 = add i32 %.015.i.i.i109.ph, 1
  %xtraiter334 = and i32 %i.lx, 1
  %lcmp.mod335.not = icmp eq i32 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %scalar.ph238.prol.loopexit, label %scalar.ph238.prol

scalar.ph238.prol:                                ; preds = %scalar.ph238.preheader
  %i.ly = zext i32 %.015.i.i.i109.ph to i64       ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ly
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i.i108.ph
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !79
  store i64 %i.mb, ptr %i.ma, align 8, !tbaa !79
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.ly
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !47
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.i.i108.ph
  store i64 %i.md, ptr %i.me, align 8, !tbaa !47
  %i.mf = add i32 %.015.i.i.i109.ph, 1
  %indvars.iv.next.i.i110.prol = or disjoint i64 %indvars.iv.i.i108.ph, 1
  br label %scalar.ph238.prol.loopexit

scalar.ph238.prol.loopexit:                       ; preds = %scalar.ph238.prol, %scalar.ph238.preheader
  %indvars.iv.i.i108.unr = phi i64 [ %indvars.iv.i.i108.ph, %scalar.ph238.preheader ], [ %indvars.iv.next.i.i110.prol, %scalar.ph238.prol ]
  %.015.i.i.i109.unr = phi i32 [ %.015.i.i.i109.ph, %scalar.ph238.preheader ], [ %i.mf, %scalar.ph238.prol ]
  %i.mg = icmp eq i32 %i.ib, %.neg336
  br i1 %i.mg, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph238

scalar.ph238:                                     ; preds = %scalar.ph238.prol.loopexit, %scalar.ph238
  %indvars.iv.i.i108 = phi i64 [ %indvars.iv.next.i.i110.1, %scalar.ph238 ], [ %indvars.iv.i.i108.unr, %scalar.ph238.prol.loopexit ] ; 4 uses
  %.015.i.i.i109 = phi i32 [ %i.mw, %scalar.ph238 ], [ %.015.i.i.i109.unr, %scalar.ph238.prol.loopexit ] ; 3 uses
  %i.mh = zext i32 %.015.i.i.i109 to i64          ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i.i108
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !79
  store i64 %i.mk, ptr %i.mj, align 8, !tbaa !79
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.mh
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !47
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.i.i108
  store i64 %i.mm, ptr %i.mn, align 8, !tbaa !47
  %i.mo = add i32 %.015.i.i.i109, 1
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %i.mp = zext i32 %i.mo to i64                   ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.mp
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next.i.i110
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !79
  store i64 %i.ms, ptr %i.mr, align 8, !tbaa !79
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.mp
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !47
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.next.i.i110
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !47
  %i.mw = add i32 %.015.i.i.i109, 2               ; 2 uses
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i108, 2
  %.not.i8.i.i111.1 = icmp eq i32 %i.mw, %i.ib
  br i1 %.not.i8.i.i111.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph238, !llvm.loop !1900

.lr.ph.i.i24.i78:                                 ; preds = %.lr.ph160
  %i.mx = sub nsw i32 0, %i.ij                    ; 2 uses
  %i.my = sub i32 12, %i.ib                       ; 2 uses
  %i.mz = tail call i32 @llvm.umin.i32(i32 %i.ih, i32 %i.mx)
  %.sroa.speculated.i80 = tail call i32 @llvm.umin.i32(i32 %i.my, i32 %i.mz) ; 5 uses
  %.not13.i.i29.i81 = icmp eq i32 %.sroa.speculated.i80, 0
  br i1 %.not13.i.i29.i81, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i87, label %.lr.ph.i.i30.i82

.lr.ph.i.i30.i82:                                 ; preds = %.lr.ph.i.i24.i78
  %i.na = getelementptr inbounds nuw i8, ptr %i.if, i64 96 ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ii, i64 96 ; 4 uses
  %i.nc = zext i32 %.sroa.speculated.i80 to i64   ; 7 uses
  %min.iters.check302 = icmp ult i32 %.sroa.speculated.i80, 12
  br i1 %min.iters.check302, label %scalar.ph301.preheader, label %vector.scevcheck291

vector.scevcheck291:                              ; preds = %.lr.ph.i.i30.i82
  %i.nd = add nsw i64 %i.nc, -1                   ; 2 uses
  %i.ne = trunc nsw i64 %i.nd to i32
  %i.nf = xor i32 %i.ib, -1
  %i.ng = icmp ult i32 %i.nf, %i.ne
  %i.nh = icmp ugt i64 %i.nd, 4294967295
  %i.ni = or i1 %i.ng, %i.nh
  br i1 %i.ni, label %scalar.ph301.preheader, label %vector.memcheck292

vector.memcheck292:                               ; preds = %vector.scevcheck291
  %10 = shl nuw nsw i64 %i.nc, 3                  ; 2 uses
  %11 = getelementptr i8, ptr %i.if, i64 %10
  %scevgep294 = getelementptr i8, ptr %11, i64 96
  %i.nj = zext i32 %i.ib to i64
  %i.nk = shl nuw nsw i64 %i.nj, 3                ; 2 uses
  %scevgep295 = getelementptr i8, ptr %i.ii, i64 %i.nk
  %scevgep296 = getelementptr i8, ptr %i.ii, i64 %10
  %i.nl = getelementptr i8, ptr %scevgep296, i64 %i.nk
  %scevgep297 = getelementptr i8, ptr %i.nl, i64 96
  %bound0298 = icmp ult ptr %i.if, %scevgep297
  %bound1299 = icmp ult ptr %scevgep295, %scevgep294
  %found.conflict300 = and i1 %bound0298, %bound1299
  br i1 %found.conflict300, label %scalar.ph301.preheader, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck292
  %n.vec304 = and i64 %i.nc, 2147483646           ; 4 uses
  %i.nm = trunc nuw nsw i64 %n.vec304 to i32
  %i.nn = add i32 %i.ib, %i.nm
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next309, %vector.body305 ] ; 4 uses
  %i.no = trunc i64 %index306 to i32
  %i.np = add i32 %i.ib, %i.no
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index306
  %i.nr = zext i32 %i.np to i64                   ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.nr
  %wide.load307 = load <2 x i64>, ptr %i.nq, align 8, !tbaa !79, !alias.scope !1915, !noalias !1916
  store <2 x i64> %wide.load307, ptr %i.ns, align 8, !tbaa !79, !alias.scope !1916
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %index306
  %wide.load308 = load <2 x i64>, ptr %i.nt, align 8, !tbaa !47, !alias.scope !1915, !noalias !1916
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.nr
  store <2 x i64> %wide.load308, ptr %i.nu, align 8, !tbaa !47, !alias.scope !1916
  %index.next309 = add nuw i64 %index306, 2       ; 2 uses
  %i.nv = icmp eq i64 %index.next309, %n.vec304
  br i1 %i.nv, label %middle.block310, label %vector.body305, !llvm.loop !1904

middle.block310:                                  ; preds = %vector.body305
  %cmp.n311 = icmp eq i64 %n.vec304, %i.nc
  br i1 %cmp.n311, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i87, label %scalar.ph301.preheader

scalar.ph301.preheader:                           ; preds = %vector.memcheck292, %vector.scevcheck291, %.lr.ph.i.i30.i82, %middle.block310
  %indvars.iv.i31.i83.ph = phi i64 [ 0, %vector.memcheck292 ], [ 0, %vector.scevcheck291 ], [ 0, %.lr.ph.i.i30.i82 ], [ %n.vec304, %middle.block310 ] ; 5 uses
  %.01214.i.i.i84.ph = phi i32 [ %i.ib, %vector.memcheck292 ], [ %i.ib, %vector.scevcheck291 ], [ %i.ib, %.lr.ph.i.i30.i82 ], [ %i.nn, %middle.block310 ] ; 3 uses
  %xtraiter328 = and i64 %i.nc, 1
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %scalar.ph301.prol.loopexit, label %scalar.ph301.prol

scalar.ph301.prol:                                ; preds = %scalar.ph301.preheader
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i31.i83.ph
  %i.nx = zext i32 %.01214.i.i.i84.ph to i64      ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.nx
  %i.nz = load i64, ptr %i.nw, align 8, !tbaa !79
  store i64 %i.nz, ptr %i.ny, align 8, !tbaa !79
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv.i31.i83.ph
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !47
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.nx
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !47
  %indvars.iv.next.i32.i85.prol = or disjoint i64 %indvars.iv.i31.i83.ph, 1
  %i.od = add i32 %.01214.i.i.i84.ph, 1
  br label %scalar.ph301.prol.loopexit

scalar.ph301.prol.loopexit:                       ; preds = %scalar.ph301.prol, %scalar.ph301.preheader
  %indvars.iv.i31.i83.unr = phi i64 [ %indvars.iv.i31.i83.ph, %scalar.ph301.preheader ], [ %indvars.iv.next.i32.i85.prol, %scalar.ph301.prol ]
  %.01214.i.i.i84.unr = phi i32 [ %.01214.i.i.i84.ph, %scalar.ph301.preheader ], [ %i.od, %scalar.ph301.prol ]
  %i.oe = add nsw i64 %i.nc, -1
  %i.of = icmp eq i64 %indvars.iv.i31.i83.ph, %i.oe
  br i1 %i.of, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i87, label %scalar.ph301

scalar.ph301:                                     ; preds = %scalar.ph301.prol.loopexit, %scalar.ph301
  %indvars.iv.i31.i83 = phi i64 [ %indvars.iv.next.i32.i85.1, %scalar.ph301 ], [ %indvars.iv.i31.i83.unr, %scalar.ph301.prol.loopexit ] ; 4 uses
  %.01214.i.i.i84 = phi i32 [ %i.ov, %scalar.ph301 ], [ %.01214.i.i.i84.unr, %scalar.ph301.prol.loopexit ] ; 3 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i31.i83
  %i.oh = zext i32 %.01214.i.i.i84 to i64         ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.oh
  %i.oj = load i64, ptr %i.og, align 8, !tbaa !79
  store i64 %i.oj, ptr %i.oi, align 8, !tbaa !79
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv.i31.i83
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !47
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.oh
  store i64 %i.ol, ptr %i.om, align 8, !tbaa !47
  %indvars.iv.next.i32.i85 = add nuw nsw i64 %indvars.iv.i31.i83, 1 ; 2 uses
  %i.on = add i32 %.01214.i.i.i84, 1
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next.i32.i85
  %i.op = zext i32 %i.on to i64                   ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.op
  %i.or = load i64, ptr %i.oo, align 8, !tbaa !79
  store i64 %i.or, ptr %i.oq, align 8, !tbaa !79
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv.next.i32.i85
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !47
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.op
  store i64 %i.ot, ptr %i.ou, align 8, !tbaa !47
  %indvars.iv.next.i32.i85.1 = add nuw nsw i64 %indvars.iv.i31.i83, 2 ; 2 uses
  %i.ov = add i32 %.01214.i.i.i84, 2
  %.not.i.i33.i86.1 = icmp eq i64 %indvars.iv.next.i32.i85.1, %i.nc
  br i1 %.not.i.i33.i86.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i87, label %scalar.ph301, !llvm.loop !1905

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i87: ; preds = %scalar.ph301.prol.loopexit, %scalar.ph301, %middle.block310, %.lr.ph.i.i24.i78
  %.not13.i.i.i.i.i88 = icmp eq i32 %i.ih, %.sroa.speculated.i80
  br i1 %.not13.i.i.i.i.i88, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i94, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i87
  %i.ow = getelementptr inbounds nuw i8, ptr %i.if, i64 96 ; 8 uses
  %i.ox = zext i32 %i.ih to i64                   ; 4 uses
  %i.oy = tail call i32 @llvm.umin.i32(i32 %i.ih, i32 %i.mx)
  %i.oz = tail call i32 @llvm.umin.i32(i32 %i.oy, i32 %i.my)
  %umin130 = zext i32 %i.oz to i64                ; 6 uses
  %i.pa = sub nsw i64 %i.ox, %umin130             ; 3 uses
  %min.iters.check279 = icmp ult i64 %i.pa, 10
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph.i.i.i.i.i89
  %i.pb = shl nuw nsw i64 %umin130, 3
  %i.pc = add nsw i64 %i.pb, -81
  %diff.check276 = icmp ult i64 %i.pc, 15
  br i1 %diff.check276, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck272
  %n.vec281 = and i64 %i.pa, -2                   ; 4 uses
  %i.pd = add nsw i64 %n.vec281, %umin130
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next286, %vector.body282 ] ; 4 uses
  %i.pe = add nuw i64 %index283, %umin130         ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.pe
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index283
  %wide.load284 = load <2 x i64>, ptr %i.pf, align 8, !tbaa !79
  store <2 x i64> %wide.load284, ptr %i.pg, align 8, !tbaa !79
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.pe
  %wide.load285 = load <2 x i64>, ptr %i.ph, align 8, !tbaa !47
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %index283
  store <2 x i64> %wide.load285, ptr %i.pi, align 8, !tbaa !47
  %index.next286 = add nuw i64 %index283, 2       ; 2 uses
  %i.pj = icmp eq i64 %index.next286, %n.vec281
  br i1 %i.pj, label %middle.block287, label %vector.body282, !llvm.loop !1906

middle.block287:                                  ; preds = %vector.body282
  %cmp.n288 = icmp eq i64 %i.pa, %n.vec281
  br i1 %cmp.n288, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i94, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %vector.memcheck272, %.lr.ph.i.i.i.i.i89, %middle.block287
  %indvars.iv131.ph = phi i64 [ %umin130, %vector.memcheck272 ], [ %umin130, %.lr.ph.i.i.i.i.i89 ], [ %i.pd, %middle.block287 ] ; 6 uses
  %indvars.iv6.i.i90.ph = phi i64 [ 0, %vector.memcheck272 ], [ 0, %.lr.ph.i.i.i.i.i89 ], [ %n.vec281, %middle.block287 ] ; 4 uses
  %i.pk = sub nsw i64 %i.ox, %indvars.iv131.ph
  %xtraiter330 = and i64 %i.pk, 1
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %scalar.ph278.prol.loopexit, label %scalar.ph278.prol

scalar.ph278.prol:                                ; preds = %scalar.ph278.preheader
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv131.ph
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv6.i.i90.ph
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !79
  store i64 %i.pn, ptr %i.pm, align 8, !tbaa !79
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv131.ph
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !47
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv6.i.i90.ph
  store i64 %i.pp, ptr %i.pq, align 8, !tbaa !47
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.ph, 1
  %indvars.iv.next7.i.i92.prol = or disjoint i64 %indvars.iv6.i.i90.ph, 1
  br label %scalar.ph278.prol.loopexit

scalar.ph278.prol.loopexit:                       ; preds = %scalar.ph278.prol, %scalar.ph278.preheader
  %indvars.iv131.unr = phi i64 [ %indvars.iv131.ph, %scalar.ph278.preheader ], [ %indvars.iv.next132.prol, %scalar.ph278.prol ]
  %indvars.iv6.i.i90.unr = phi i64 [ %indvars.iv6.i.i90.ph, %scalar.ph278.preheader ], [ %indvars.iv.next7.i.i92.prol, %scalar.ph278.prol ]
  %i.pr = add nsw i64 %i.ox, -1
  %i.ps = icmp eq i64 %indvars.iv131.ph, %i.pr
  br i1 %i.ps, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i94, label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.1, %scalar.ph278 ], [ %indvars.iv131.unr, %scalar.ph278.prol.loopexit ] ; 4 uses
  %indvars.iv6.i.i90 = phi i64 [ %indvars.iv.next7.i.i92.1, %scalar.ph278 ], [ %indvars.iv6.i.i90.unr, %scalar.ph278.prol.loopexit ] ; 4 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv131
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv6.i.i90
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !79
  store i64 %i.pv, ptr %i.pu, align 8, !tbaa !79
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv131
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !47
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv6.i.i90
  store i64 %i.px, ptr %i.py, align 8, !tbaa !47
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %indvars.iv.next7.i.i92 = add nuw nsw i64 %indvars.iv6.i.i90, 1 ; 2 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next132
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next7.i.i92
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !79
  store i64 %i.qb, ptr %i.qa, align 8, !tbaa !79
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv.next132
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !47
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv.next7.i.i92
  store i64 %i.qd, ptr %i.qe, align 8, !tbaa !47
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %indvars.iv.next7.i.i92.1 = add nuw nsw i64 %indvars.iv6.i.i90, 2
  %.not.i.i.i.i.i93.1 = icmp eq i64 %indvars.iv.next132.1, %i.ox
  br i1 %.not.i.i.i.i.i93.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i94, label %scalar.ph278, !llvm.loop !1907

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i94: ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278, %middle.block287, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE4copyILj12EEEvRKNS1_IS2_mXT_EEEjjj.exit.i.i87
  %i.qf = sub nsw i32 0, %.sroa.speculated.i80
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit112

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17adjustFromLeftSibEjRS3_ji.exit112: ; preds = %scalar.ph238.prol.loopexit, %scalar.ph238, %middle.block247, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i105, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i94
  %.0.i95 = phi i32 [ %i.qf, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE17transferToLeftSibEjRS3_jj.exit.i94 ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEmLj12EE9moveRightEjjj.exit.i.i105 ], [ %.sroa.speculated46.i98, %middle.block247 ], [ %.sroa.speculated46.i98, %scalar.ph238 ], [ %.sroa.speculated46.i98, %scalar.ph238.prol.loopexit ] ; 2 uses
  %i.qg = load i32, ptr %i.ig, align 4, !tbaa !77
  %i.qh = add i32 %i.qg, %.0.i95
  store i32 %i.qh, ptr %i.ig, align 4, !tbaa !77
  %i.qi = load i32, ptr %i.hu, align 4, !tbaa !77
  %i.qj = sub i32 %i.qi, %.0.i95                  ; 3 uses
  store i32 %i.qj, ptr %i.hu, align 4, !tbaa !77
  %i.qk = load i32, ptr %i.hw, align 4, !tbaa !77 ; 2 uses
  %.not75 = icmp ult i32 %i.qj, %i.qk
end_hunk_0
