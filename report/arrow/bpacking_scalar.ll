inline.NumInlined: 2245
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5arrow8internal12unpack_widthILi7ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii:bb.a
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !17
  %i.bm = lshr i64 %.val73.i, 21
  %i.bn = and i64 %i.bm, 127
  %i.bo = getelementptr inbounds nuw i8, ptr %.02630, i64 24
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !17
  %i.bp = lshr i64 %.val73.i, 28
  %i.bq = and i64 %i.bp, 127
  %i.br = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !17
  %i.bs = lshr i64 %.val73.i, 35
  %i.bt = and i64 %i.bs, 127
  %i.bu = getelementptr inbounds nuw i8, ptr %.02630, i64 40
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !17
  %i.bv = lshr i64 %.val73.i, 42
  %i.bw = and i64 %i.bv, 127
  %i.bx = getelementptr inbounds nuw i8, ptr %.02630, i64 48
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !17
  %i.by = lshr i64 %.val73.i, 49
  %i.bz = and i64 %i.by, 127
  %i.ca = getelementptr inbounds nuw i8, ptr %.02630, i64 56
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !17
  %i.cb = lshr i64 %.val73.i, 56
  %i.cc = and i64 %i.cb, 127
  %i.cd = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !17
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %.val72.i, i64 %.val73.i, i64 1)
  %i.cf = and i64 %i.ce, 127
  %i.cg = getelementptr inbounds nuw i8, ptr %.02630, i64 72
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !17
  %i.ch = lshr i64 %.val72.i, 6
  %i.ci = and i64 %i.ch, 127
  %i.cj = getelementptr inbounds nuw i8, ptr %.02630, i64 80
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !17
  %i.ck = lshr i64 %.val72.i, 13
  %i.cl = and i64 %i.ck, 127
  %i.cm = getelementptr inbounds nuw i8, ptr %.02630, i64 88
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !17
  %i.cn = lshr i64 %.val72.i, 20
  %i.co = and i64 %i.cn, 127
  %i.cp = getelementptr inbounds nuw i8, ptr %.02630, i64 96
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !17
  %i.cq = lshr i64 %.val72.i, 27
  %i.cr = and i64 %i.cq, 127
  %i.cs = getelementptr inbounds nuw i8, ptr %.02630, i64 104
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !17
  %i.ct = lshr i64 %.val72.i, 34
  %i.cu = and i64 %i.ct, 127
  %i.cv = getelementptr inbounds nuw i8, ptr %.02630, i64 112
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !17
  %i.cw = lshr i64 %.val72.i, 41
  %i.cx = and i64 %i.cw, 127
  %i.cy = getelementptr inbounds nuw i8, ptr %.02630, i64 120
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !17
  %i.cz = lshr i64 %.val72.i, 48
  %i.da = and i64 %i.cz, 127
  %i.db = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  store i64 %i.da, ptr %i.db, align 8, !tbaa !17
  %i.dc = lshr i64 %.val72.i, 55
  %i.dd = and i64 %i.dc, 127
  %i.de = getelementptr inbounds nuw i8, ptr %.02630, i64 136
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !17
  %i.df = tail call i64 @llvm.fshl.i64(i64 %.val71.i, i64 %.val72.i, i64 2)
  %i.dg = and i64 %i.df, 127
  %i.dh = getelementptr inbounds nuw i8, ptr %.02630, i64 144
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !17
  %i.di = lshr i64 %.val71.i, 5
  %i.dj = and i64 %i.di, 127
  %i.dk = getelementptr inbounds nuw i8, ptr %.02630, i64 152
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !17
  %i.dl = lshr i64 %.val71.i, 12
  %i.dm = and i64 %i.dl, 127
  %i.dn = getelementptr inbounds nuw i8, ptr %.02630, i64 160
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !17
  %i.do = lshr i64 %.val71.i, 19
  %i.dp = and i64 %i.do, 127
  %i.dq = getelementptr inbounds nuw i8, ptr %.02630, i64 168
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !17
  %i.dr = lshr i64 %.val71.i, 26
  %i.ds = and i64 %i.dr, 127
  %i.dt = getelementptr inbounds nuw i8, ptr %.02630, i64 176
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !17
  %i.du = lshr i64 %.val71.i, 33
  %i.dv = and i64 %i.du, 127
  %i.dw = getelementptr inbounds nuw i8, ptr %.02630, i64 184
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !17
  %i.dx = lshr i64 %.val71.i, 40
  %i.dy = and i64 %i.dx, 127
  %i.dz = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !17
  %i.ea = lshr i64 %.val71.i, 47
  %i.eb = and i64 %i.ea, 127
  %i.ec = getelementptr inbounds nuw i8, ptr %.02630, i64 200
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !17
  %i.ed = lshr i64 %.val71.i, 54
  %i.ee = and i64 %i.ed, 127
  %i.ef = getelementptr inbounds nuw i8, ptr %.02630, i64 208
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !17
  %i.eg = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %.val71.i, i64 3)
  %i.eh = and i64 %i.eg, 127
  %i.ei = getelementptr inbounds nuw i8, ptr %.02630, i64 216
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !17
  %i.ej = lshr i64 %i.be, 4
  %i.ek = and i64 %i.ej, 127
  %i.el = getelementptr inbounds nuw i8, ptr %.02630, i64 224
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !17
  %i.em = lshr i64 %i.be, 11
  %i.en = and i64 %i.em, 127
  %i.eo = getelementptr inbounds nuw i8, ptr %.02630, i64 232
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !17
  %i.ep = lshr i64 %i.be, 18
  %i.eq = and i64 %i.ep, 127
  %i.er = getelementptr inbounds nuw i8, ptr %.02630, i64 240
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !17
  %i.es = lshr i64 %i.be, 25
  %i.et = getelementptr inbounds nuw i8, ptr %.02630, i64 248
  store i64 %i.es, ptr %i.et, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %.02531, i64 28 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02630, i64 256 ; 2 uses
  %i.ew = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ew, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !312
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = shl nsw i32 %2, 3
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.s, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.e = srem i32 %.02325.i, 8                    ; 2 uses
  %i.f = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02325.i, 8                 ; 3 uses
  %i.h = add nsw i32 %.02325.i, 7
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp slt i32 %i.j, 2
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = sext i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !17
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p
  %i.r = and i64 %i.q, 255
  store i64 %i.r, ptr %.026.i, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = icmp slt i32 %i.g, %i.c
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !313

_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.g, %bb.b ]
  %i.u = sub nsw i32 %.023.lcssa.i, %3
  %i.v = sdiv i32 %i.u, 8                         ; 3 uses
  %i.w = shl nsw i32 %i.v, 3
  %i.x = add nsw i32 %i.w, %3
  %i.y = sub nsw i32 %2, %i.v                     ; 4 uses
  %i.z = sdiv i32 %i.x, 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.ae = sdiv i32 %i.y, 32                       ; 2 uses
  %i.af = icmp sgt i32 %i.y, 31
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ad, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ], [ %i.eu, %.lr.ph ] ; 6 uses
  %.025.lcssa = phi ptr [ %i.ab, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ], [ %i.et, %.lr.ph ] ; 4 uses
  %i.ag = shl nsw i32 %i.ae, 5                    ; 2 uses
  %i.ah = sub nsw i32 %i.y, %i.ag                 ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 32
  tail call void @llvm.assume(i1 %i.ai)
  %.not = icmp eq i32 %i.y, %i.ag
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %._crit_edge
  %i.aj = shl nuw nsw i32 %i.ah, 3
  %i.ak = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %i.ak, i64 8) ; 2 uses
  %i.am = lshr exact i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 152
  br i1 %min.iters.check, label %.lr.ph.i28.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.ak, i64 8) ; 2 uses
  %4 = lshr exact i64 %i.ao, 3
  %i.ap = getelementptr i8, ptr %.026.lcssa, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 8
  %i.aq = getelementptr i8, ptr %.025.lcssa, i64 %4
  %scevgep39 = getelementptr i8, ptr %i.aq, i64 1
  %bound0 = icmp ult ptr %.026.lcssa, %scevgep39
  %bound1 = icmp ult ptr %.025.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 536870908               ; 3 uses
  %i.ar = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.as = getelementptr i8, ptr %.026.lcssa, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.lcssa, i64 %i.at ; 2 uses
  %i.au = and i64 %index, 2305843009213693948
  %i.av = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %wide.load = load <2 x i8>, ptr %i.av, align 1, !alias.scope !314
  %wide.load40 = load <2 x i8>, ptr %i.aw, align 1, !alias.scope !314
  %i.ax = zext <2 x i8> %wide.load to <2 x i64>
  %i.ay = zext <2 x i8> %wide.load40 to <2 x i64>
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ax, ptr %next.gep, align 8, !tbaa !17, !alias.scope !317, !noalias !314
  store <2 x i64> %i.ay, ptr %i.az, align 8, !tbaa !17, !alias.scope !317, !noalias !314
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader42

.lr.ph.i28.preheader42:                           ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader ], [ %i.ar, %middle.block ]
  %.024.i.ph = phi ptr [ %.026.lcssa, %vector.memcheck ], [ %.026.lcssa, %.lr.ph.i28.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader42, %.lr.ph.i28
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i28 ], [ %indvars.iv.ph, %.lr.ph.i28.preheader42 ] ; 2 uses
  %.024.i = phi ptr [ %i.bf, %.lr.ph.i28 ], [ %.024.i.ph, %.lr.ph.i28.preheader42 ] ; 2 uses
  %i.bb = lshr exact i64 %indvars.iv, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64
  store i64 %i.be, ptr %.024.i, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.bg = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.bg, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !320

_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %middle.block, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.ev, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.et, %.lr.ph ], [ %i.ab, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ] ; 5 uses
  %.02630 = phi ptr [ %i.eu, %.lr.ph ], [ %i.ad, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ] ; 33 uses
  %.val70.i = load i64, ptr %.02531, align 1      ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02531, i64 8
  %.val69.i = load i64, ptr %i.bh, align 1        ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02531, i64 16
  %.val68.i = load i64, ptr %i.bi, align 1        ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02531, i64 24
  %.val.i = load i64, ptr %i.bj, align 1          ; 8 uses
  %i.bk = and i64 %.val70.i, 255
  store i64 %i.bk, ptr %.02630, align 8, !tbaa !17
  %i.bl = lshr i64 %.val70.i, 8
  %i.bm = and i64 %i.bl, 255
  %i.bn = getelementptr inbounds nuw i8, ptr %.02630, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !17
  %i.bo = lshr i64 %.val70.i, 16
  %i.bp = and i64 %i.bo, 255
  %i.bq = getelementptr inbounds nuw i8, ptr %.02630, i64 16
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !17
  %i.br = lshr i64 %.val70.i, 24
  %i.bs = and i64 %i.br, 255
  %i.bt = getelementptr inbounds nuw i8, ptr %.02630, i64 24
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !17
  %i.bu = lshr i64 %.val70.i, 32
  %i.bv = and i64 %i.bu, 255
  %i.bw = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !17
  %i.bx = lshr i64 %.val70.i, 40
  %i.by = and i64 %i.bx, 255
  %i.bz = getelementptr inbounds nuw i8, ptr %.02630, i64 40
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !17
  %i.ca = lshr i64 %.val70.i, 48
  %i.cb = and i64 %i.ca, 255
  %i.cc = getelementptr inbounds nuw i8, ptr %.02630, i64 48
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !17
  %i.cd = lshr i64 %.val70.i, 56
  %i.ce = getelementptr inbounds nuw i8, ptr %.02630, i64 56
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !17
  %i.cf = and i64 %.val69.i, 255
  %i.cg = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !17
  %i.ch = lshr i64 %.val69.i, 8
  %i.ci = and i64 %i.ch, 255
  %i.cj = getelementptr inbounds nuw i8, ptr %.02630, i64 72
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !17
  %i.ck = lshr i64 %.val69.i, 16
  %i.cl = and i64 %i.ck, 255
  %i.cm = getelementptr inbounds nuw i8, ptr %.02630, i64 80
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !17
  %i.cn = lshr i64 %.val69.i, 24
  %i.co = and i64 %i.cn, 255
  %i.cp = getelementptr inbounds nuw i8, ptr %.02630, i64 88
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !17
  %i.cq = lshr i64 %.val69.i, 32
  %i.cr = and i64 %i.cq, 255
  %i.cs = getelementptr inbounds nuw i8, ptr %.02630, i64 96
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !17
  %i.ct = lshr i64 %.val69.i, 40
  %i.cu = and i64 %i.ct, 255
  %i.cv = getelementptr inbounds nuw i8, ptr %.02630, i64 104
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !17
  %i.cw = lshr i64 %.val69.i, 48
  %i.cx = and i64 %i.cw, 255
  %i.cy = getelementptr inbounds nuw i8, ptr %.02630, i64 112
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !17
  %i.cz = lshr i64 %.val69.i, 56
  %i.da = getelementptr inbounds nuw i8, ptr %.02630, i64 120
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !17
  %i.db = and i64 %.val68.i, 255
  %i.dc = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !17
  %i.dd = lshr i64 %.val68.i, 8
  %i.de = and i64 %i.dd, 255
  %i.df = getelementptr inbounds nuw i8, ptr %.02630, i64 136
  store i64 %i.de, ptr %i.df, align 8, !tbaa !17
  %i.dg = lshr i64 %.val68.i, 16
  %i.dh = and i64 %i.dg, 255
  %i.di = getelementptr inbounds nuw i8, ptr %.02630, i64 144
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !17
  %i.dj = lshr i64 %.val68.i, 24
  %i.dk = and i64 %i.dj, 255
  %i.dl = getelementptr inbounds nuw i8, ptr %.02630, i64 152
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !17
  %i.dm = lshr i64 %.val68.i, 32
  %i.dn = and i64 %i.dm, 255
  %i.do = getelementptr inbounds nuw i8, ptr %.02630, i64 160
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !17
  %i.dp = lshr i64 %.val68.i, 40
  %i.dq = and i64 %i.dp, 255
  %i.dr = getelementptr inbounds nuw i8, ptr %.02630, i64 168
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !17
  %i.ds = lshr i64 %.val68.i, 48
  %i.dt = and i64 %i.ds, 255
  %i.du = getelementptr inbounds nuw i8, ptr %.02630, i64 176
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !17
  %i.dv = lshr i64 %.val68.i, 56
  %i.dw = getelementptr inbounds nuw i8, ptr %.02630, i64 184
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !17
  %i.dx = and i64 %.val.i, 255
  %i.dy = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !17
  %i.dz = lshr i64 %.val.i, 8
  %i.ea = and i64 %i.dz, 255
  %i.eb = getelementptr inbounds nuw i8, ptr %.02630, i64 200
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !17
  %i.ec = lshr i64 %.val.i, 16
  %i.ed = and i64 %i.ec, 255
  %i.ee = getelementptr inbounds nuw i8, ptr %.02630, i64 208
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !17
  %i.ef = lshr i64 %.val.i, 24
  %i.eg = and i64 %i.ef, 255
  %i.eh = getelementptr inbounds nuw i8, ptr %.02630, i64 216
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !17
  %i.ei = lshr i64 %.val.i, 32
  %i.ej = and i64 %i.ei, 255
  %i.ek = getelementptr inbounds nuw i8, ptr %.02630, i64 224
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !17
  %i.el = lshr i64 %.val.i, 40
  %i.em = and i64 %i.el, 255
  %i.en = getelementptr inbounds nuw i8, ptr %.02630, i64 232
  store i64 %i.em, ptr %i.en, align 8, !tbaa !17
  %i.eo = lshr i64 %.val.i, 48
  %i.ep = and i64 %i.eo, 255
  %i.eq = getelementptr inbounds nuw i8, ptr %.02630, i64 240
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !17
  %i.er = lshr i64 %.val.i, 56
  %i.es = getelementptr inbounds nuw i8, ptr %.02630, i64 248
  store i64 %i.er, ptr %i.es, align 8, !tbaa !17
  %i.et = getelementptr inbounds nuw i8, ptr %.02531, i64 32 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02630, i64 256 ; 2 uses
  %i.ev = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ev, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !321
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi9ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul nsw i32 %2, 9
  %i.d = add nsw i32 %i.c, %3
  %i.e = icmp sgt i32 %2, 0
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12unpack_widthILi63ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii:bb.a
  %i.dg = tail call i64 @llvm.fshl.i64(i64 %.val152.i, i64 %.val153.i, i64 5)
  %i.dh = and i64 %i.dg, 9223372036854775807
  %i.di = getelementptr inbounds nuw i8, ptr %.02634, i64 40
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !17
  %i.dj = tail call i64 @llvm.fshl.i64(i64 %.val151.i, i64 %.val152.i, i64 6)
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = getelementptr inbounds nuw i8, ptr %.02634, i64 48
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !17
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %.val150.i, i64 %.val151.i, i64 7)
  %i.dn = and i64 %i.dm, 9223372036854775807
  %i.do = getelementptr inbounds nuw i8, ptr %.02634, i64 56
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !17
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %.val149.i, i64 %.val150.i, i64 8)
  %i.dq = and i64 %i.dp, 9223372036854775807
  %i.dr = getelementptr inbounds nuw i8, ptr %.02634, i64 64
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !17
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %.val148.i, i64 %.val149.i, i64 9)
  %i.dt = and i64 %i.ds, 9223372036854775807
  %i.du = getelementptr inbounds nuw i8, ptr %.02634, i64 72
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !17
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %.val147.i, i64 %.val148.i, i64 10)
  %i.dw = and i64 %i.dv, 9223372036854775807
  %i.dx = getelementptr inbounds nuw i8, ptr %.02634, i64 80
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !17
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %.val146.i, i64 %.val147.i, i64 11)
  %i.dz = and i64 %i.dy, 9223372036854775807
  %i.ea = getelementptr inbounds nuw i8, ptr %.02634, i64 88
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !17
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %.val145.i, i64 %.val146.i, i64 12)
  %i.ec = and i64 %i.eb, 9223372036854775807
  %i.ed = getelementptr inbounds nuw i8, ptr %.02634, i64 96
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !17
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %.val144.i, i64 %.val145.i, i64 13)
  %i.ef = and i64 %i.ee, 9223372036854775807
  %i.eg = getelementptr inbounds nuw i8, ptr %.02634, i64 104
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !17
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %.val143.i, i64 %.val144.i, i64 14)
  %i.ei = and i64 %i.eh, 9223372036854775807
  %i.ej = getelementptr inbounds nuw i8, ptr %.02634, i64 112
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !17
  %i.ek = tail call i64 @llvm.fshl.i64(i64 %.val142.i, i64 %.val143.i, i64 15)
  %i.el = and i64 %i.ek, 9223372036854775807
  %i.em = getelementptr inbounds nuw i8, ptr %.02634, i64 120
  store i64 %i.el, ptr %i.em, align 8, !tbaa !17
  %i.en = tail call i64 @llvm.fshl.i64(i64 %.val141.i, i64 %.val142.i, i64 16)
  %i.eo = and i64 %i.en, 9223372036854775807
  %i.ep = getelementptr inbounds nuw i8, ptr %.02634, i64 128
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !17
  %i.eq = tail call i64 @llvm.fshl.i64(i64 %.val140.i, i64 %.val141.i, i64 17)
  %i.er = and i64 %i.eq, 9223372036854775807
  %i.es = getelementptr inbounds nuw i8, ptr %.02634, i64 136
  store i64 %i.er, ptr %i.es, align 8, !tbaa !17
  %i.et = tail call i64 @llvm.fshl.i64(i64 %.val139.i, i64 %.val140.i, i64 18)
  %i.eu = and i64 %i.et, 9223372036854775807
  %i.ev = getelementptr inbounds nuw i8, ptr %.02634, i64 144
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !17
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %.val138.i, i64 %.val139.i, i64 19)
  %i.ex = and i64 %i.ew, 9223372036854775807
  %i.ey = getelementptr inbounds nuw i8, ptr %.02634, i64 152
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !17
  %i.ez = tail call i64 @llvm.fshl.i64(i64 %.val137.i, i64 %.val138.i, i64 20)
  %i.fa = and i64 %i.ez, 9223372036854775807
  %i.fb = getelementptr inbounds nuw i8, ptr %.02634, i64 160
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !17
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %.val136.i, i64 %.val137.i, i64 21)
  %i.fd = and i64 %i.fc, 9223372036854775807
  %i.fe = getelementptr inbounds nuw i8, ptr %.02634, i64 168
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !17
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %.val135.i, i64 %.val136.i, i64 22)
  %i.fg = and i64 %i.ff, 9223372036854775807
  %i.fh = getelementptr inbounds nuw i8, ptr %.02634, i64 176
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !17
  %i.fi = tail call i64 @llvm.fshl.i64(i64 %.val134.i, i64 %.val135.i, i64 23)
  %i.fj = and i64 %i.fi, 9223372036854775807
  %i.fk = getelementptr inbounds nuw i8, ptr %.02634, i64 184
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !17
  %i.fl = tail call i64 @llvm.fshl.i64(i64 %.val133.i, i64 %.val134.i, i64 24)
  %i.fm = and i64 %i.fl, 9223372036854775807
  %i.fn = getelementptr inbounds nuw i8, ptr %.02634, i64 192
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !17
  %i.fo = tail call i64 @llvm.fshl.i64(i64 %.val132.i, i64 %.val133.i, i64 25)
  %i.fp = and i64 %i.fo, 9223372036854775807
  %i.fq = getelementptr inbounds nuw i8, ptr %.02634, i64 200
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !17
  %i.fr = tail call i64 @llvm.fshl.i64(i64 %.val131.i, i64 %.val132.i, i64 26)
  %i.fs = and i64 %i.fr, 9223372036854775807
  %i.ft = getelementptr inbounds nuw i8, ptr %.02634, i64 208
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !17
  %i.fu = tail call i64 @llvm.fshl.i64(i64 %.val130.i, i64 %.val131.i, i64 27)
  %i.fv = and i64 %i.fu, 9223372036854775807
  %i.fw = getelementptr inbounds nuw i8, ptr %.02634, i64 216
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !17
  %i.fx = tail call i64 @llvm.fshl.i64(i64 %.val129.i, i64 %.val130.i, i64 28)
  %i.fy = and i64 %i.fx, 9223372036854775807
  %i.fz = getelementptr inbounds nuw i8, ptr %.02634, i64 224
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !17
  %i.ga = tail call i64 @llvm.fshl.i64(i64 %.val128.i, i64 %.val129.i, i64 29)
  %i.gb = and i64 %i.ga, 9223372036854775807
  %i.gc = getelementptr inbounds nuw i8, ptr %.02634, i64 232
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !17
  %i.gd = tail call i64 @llvm.fshl.i64(i64 %.val127.i, i64 %.val128.i, i64 30)
  %i.ge = and i64 %i.gd, 9223372036854775807
  %i.gf = getelementptr inbounds nuw i8, ptr %.02634, i64 240
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !17
  %i.gg = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %.val127.i, i64 31)
  %i.gh = getelementptr inbounds nuw i8, ptr %.02634, i64 248
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %.02535, i64 252 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.02634, i64 256 ; 2 uses
  %i.gk = add nuw nsw i32 %.036, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gk, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !486
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi64ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = shl nsw i32 %2, 6
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02838.i = phi ptr [ %i.y, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.02937.i = phi i32 [ %i.g, %bb.d ], [ %3, %bb.a ] ; 5 uses
  %i.e = srem i32 %.02937.i, 8                    ; 3 uses
  %i.f = sdiv i32 %.02937.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02937.i, 64                ; 3 uses
  %i.h = add nsw i32 %.02937.i, 63
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 3 uses
  %i.k = icmp slt i32 %i.j, 9
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 2 uses
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.j, i32 7)
  %.sroa.speculated.i = add nsw i32 %i.n, 1
  %i.o = sext i32 %.sroa.speculated.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.m, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !17
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p     ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !17
  %i.r = icmp sgt i32 %i.j, 7
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.a, align 8
  %.0..0..0..0..0..0.6.i = load i64, ptr %i.a, align 8, !tbaa !17
  %i.u = sub nsw i32 64, %i.e
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %.0..0..0..0..0..0.6.i, %i.v
  %i.x = or i64 %i.w, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %i.x, %bb.c ], [ %i.q, %bb.b ]
  store i64 %.0.i, ptr %.02838.i, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %.02838.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp slt i32 %i.g, %i.c
  br i1 %i.z, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !487

_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.029.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02937.i, %.lr.ph.i ], [ %i.g, %bb.d ]
  %i.aa = sub nsw i32 %.029.lcssa.i, %3
  %i.ab = sdiv i32 %i.aa, 64                      ; 3 uses
  %i.ac = shl nsw i32 %i.ab, 6
  %i.ad = add nsw i32 %i.ac, %3
  %i.ae = sub nsw i32 %2, %i.ab
  %i.af = sdiv i32 %i.ad, 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  %i.ai = sext i32 %i.ab to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ai
  %i.ak = sext i32 %i.ae to i64
  %i.al = shl nsw i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aj, ptr align 1 %i.ah, i64 %i.al, i1 false)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"bool", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !5, i64 0}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !10, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 12}
!71 = distinct !{!71, !10, !68, !69}
!72 = distinct !{!72, !10, !68}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !10}
!94 = distinct !{!94, !10}
!95 = distinct !{!95, !10}
!96 = distinct !{!96, !10}
!97 = distinct !{!97, !10}
!98 = distinct !{!98, !10}
!99 = distinct !{!99, !10}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !10}
!102 = distinct !{!102, !10}
!103 = distinct !{!103, !10}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = distinct !{!107, !10}
!108 = distinct !{!108, !10}
!109 = distinct !{!109, !10}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = distinct !{!112, !10}
!113 = distinct !{!113, !10}
!114 = distinct !{!114, !10}
!115 = distinct !{!115, !10}
!116 = distinct !{!116, !10}
!117 = distinct !{!117, !10}
!118 = !{!119}
!119 = distinct !{!119, !120}
!120 = distinct !{!120, !"LVerDomain"}
!121 = !{!122}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !10, !68, !69}
!124 = distinct !{!124, !10, !68}
!125 = distinct !{!125, !10}
!126 = distinct !{!126, !10}
!127 = distinct !{!127, !10}
!128 = distinct !{!128, !10}
!129 = distinct !{!129, !10}
!130 = distinct !{!130, !10}
!131 = distinct !{!131, !10}
!132 = distinct !{!132, !10}
!133 = distinct !{!133, !10}
!134 = distinct !{!134, !10}
!135 = distinct !{!135, !10}
!136 = distinct !{!136, !10}
!137 = distinct !{!137, !10}
!138 = distinct !{!138, !10}
!139 = distinct !{!139, !10}
!140 = distinct !{!140, !10}
!141 = distinct !{!141, !10}
!142 = distinct !{!142, !10}
!143 = distinct !{!143, !10}
!144 = distinct !{!144, !10}
!145 = !{!146}
!146 = distinct !{!146, !147}
!147 = distinct !{!147, !"LVerDomain"}
!148 = !{!149}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !10, !68, !69}
!151 = distinct !{!151, !10}
!152 = distinct !{!152, !10, !68}
!153 = distinct !{!153, !10}
!154 = !{!155}
!155 = distinct !{!155, !156}
!156 = distinct !{!156, !"LVerDomain"}
!157 = !{!158}
!158 = distinct !{!158, !156}
!159 = distinct !{!159, !10, !68, !69}
!160 = distinct !{!160, !10, !68}
!161 = distinct !{!161, !10}
!162 = distinct !{!162, !10}
!163 = !{!164}
!164 = distinct !{!164, !165}
!165 = distinct !{!165, !"LVerDomain"}
!166 = !{!167}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !10, !68, !69}
!169 = distinct !{!169, !10}
!170 = distinct !{!170, !10, !68}
!171 = distinct !{!171, !10}
!172 = !{!173}
!173 = distinct !{!173, !174}
!174 = distinct !{!174, !"LVerDomain"}
!175 = !{!176}
!176 = distinct !{!176, !174}
!177 = distinct !{!177, !10, !68, !69}
!178 = distinct !{!178, !10}
!179 = distinct !{!179, !10, !68}
!180 = distinct !{!180, !10}
!181 = !{!182}
!182 = distinct !{!182, !183}
!183 = distinct !{!183, !"LVerDomain"}
end_hunk_1
