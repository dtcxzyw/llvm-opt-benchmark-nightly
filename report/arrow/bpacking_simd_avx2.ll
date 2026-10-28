Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bpacking_simd_avx2?download=true
inline.NumInlined: 12609
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5arrow8internal12unpack_widthILi7ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEmEEvPKhPT1_ii:bb.a
  %i.bz = insertelement <4 x i64> poison, i64 %i.by, i64 0
  %i.ca = shufflevector <4 x i64> %i.bz, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cb = lshr <4 x i64> %i.ca, <i64 20, i64 27, i64 34, i64 41>
  %i.cc = and <4 x i64> %i.cb, splat (i64 127)
  store <4 x i64> %i.cc, ptr %i.bx, align 1, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.ce = load i64, ptr %i.bo, align 1            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02531, i64 16 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 1            ; 2 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.ce, i64 2)
  %i.ci = insertelement <4 x i64> poison, i64 %i.ce, i64 0
  %i.cj = insertelement <4 x i64> %i.ci, i64 %i.ce, i64 1
  %i.ck = insertelement <4 x i64> %i.cj, i64 %i.ch, i64 2
  %i.cl = insertelement <4 x i64> %i.ck, i64 %i.cg, i64 3
  %i.cm = lshr <4 x i64> %i.cl, <i64 48, i64 55, i64 0, i64 5>
  %i.cn = and <4 x i64> %i.cm, splat (i64 127)
  store <4 x i64> %i.cn, ptr %i.cd, align 1, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %.02630, i64 160
  %i.cp = load i64, ptr %i.cf, align 1
  %i.cq = insertelement <4 x i64> poison, i64 %i.cp, i64 0
  %i.cr = shufflevector <4 x i64> %i.cq, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cs = lshr <4 x i64> %i.cr, <i64 12, i64 19, i64 26, i64 33>
  %i.ct = and <4 x i64> %i.cs, splat (i64 127)
  store <4 x i64> %i.ct, ptr %i.co, align 1, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.cv = load i64, ptr %i.cf, align 1            ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.02531, i64 24 ; 4 uses
  %i.cx = load i64, ptr %i.cw, align 1
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cv, i64 3)
  %i.cz = insertelement <4 x i64> poison, i64 %i.cv, i64 0
  %i.da = insertelement <4 x i64> %i.cz, i64 %i.cv, i64 1
  %i.db = insertelement <4 x i64> %i.da, i64 %i.cv, i64 2
  %i.dc = insertelement <4 x i64> %i.db, i64 %i.cy, i64 3
  %i.dd = lshr <4 x i64> %i.dc, <i64 40, i64 47, i64 54, i64 0>
  %i.de = and <4 x i64> %i.dd, splat (i64 127)
  store <4 x i64> %i.de, ptr %i.cu, align 1, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %.02630, i64 224
  %i.dg = load i64, ptr %i.cw, align 1
  %i.dh = insertelement <4 x i64> poison, i64 %i.dg, i64 0
  %i.di = shufflevector <4 x i64> %i.dh, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dj = lshr <4 x i64> %i.di, <i64 4, i64 11, i64 18, i64 25>
  %i.dk = and <4 x i64> %i.dj, splat (i64 127)
  store <4 x i64> %i.dk, ptr %i.df, align 1, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.dm = load i64, ptr %i.cw, align 1
  %i.dn = insertelement <4 x i64> poison, i64 %i.dm, i64 0
  %i.do = shufflevector <4 x i64> %i.dn, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dp = lshr <4 x i64> %i.do, <i64 32, i64 39, i64 46, i64 53>
  %i.dq = and <4 x i64> %i.dp, splat (i64 127)
  store <4 x i64> %i.dq, ptr %i.dl, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %.02630, i64 288
  %i.ds = load i64, ptr %i.cw, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.02531, i64 32 ; 3 uses
  %i.du = load i64, ptr %i.dt, align 1            ; 4 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.du, i64 %i.ds, i64 4)
  %i.dw = insertelement <4 x i64> poison, i64 %i.dv, i64 0
  %i.dx = insertelement <4 x i64> %i.dw, i64 %i.du, i64 1
  %i.dy = insertelement <4 x i64> %i.dx, i64 %i.du, i64 2
  %i.dz = insertelement <4 x i64> %i.dy, i64 %i.du, i64 3
  %i.ea = lshr <4 x i64> %i.dz, <i64 0, i64 3, i64 10, i64 17>
  %i.eb = and <4 x i64> %i.ea, splat (i64 127)
  store <4 x i64> %i.eb, ptr %i.dr, align 1, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.ed = load i64, ptr %i.dt, align 1
  %i.ee = insertelement <4 x i64> poison, i64 %i.ed, i64 0
  %i.ef = shufflevector <4 x i64> %i.ee, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eg = lshr <4 x i64> %i.ef, <i64 24, i64 31, i64 38, i64 45>
  %i.eh = and <4 x i64> %i.eg, splat (i64 127)
  store <4 x i64> %i.eh, ptr %i.ec, align 1, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %.02630, i64 352
  %i.ej = load i64, ptr %i.dt, align 1            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.02531, i64 40 ; 3 uses
  %i.el = load i64, ptr %i.ek, align 1            ; 3 uses
  %i.em = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.ej, i64 5)
  %i.en = insertelement <4 x i64> poison, i64 %i.ej, i64 0
  %i.eo = insertelement <4 x i64> %i.en, i64 %i.em, i64 1
  %i.ep = insertelement <4 x i64> %i.eo, i64 %i.el, i64 2
  %i.eq = insertelement <4 x i64> %i.ep, i64 %i.el, i64 3
  %i.er = lshr <4 x i64> %i.eq, <i64 52, i64 0, i64 2, i64 9>
  %i.es = and <4 x i64> %i.er, splat (i64 127)
  store <4 x i64> %i.es, ptr %i.ei, align 1, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.eu = load i64, ptr %i.ek, align 1
  %i.ev = insertelement <4 x i64> poison, i64 %i.eu, i64 0
  %i.ew = shufflevector <4 x i64> %i.ev, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ex = lshr <4 x i64> %i.ew, <i64 16, i64 23, i64 30, i64 37>
  %i.ey = and <4 x i64> %i.ex, splat (i64 127)
  store <4 x i64> %i.ey, ptr %i.et, align 1, !tbaa !11
  %i.ez = getelementptr inbounds nuw i8, ptr %.02630, i64 416
  %i.fa = load i64, ptr %i.ek, align 1            ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02531, i64 48 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 1            ; 2 uses
  %i.fd = tail call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fa, i64 6)
  %i.fe = insertelement <4 x i64> poison, i64 %i.fa, i64 0
  %i.ff = insertelement <4 x i64> %i.fe, i64 %i.fa, i64 1
  %i.fg = insertelement <4 x i64> %i.ff, i64 %i.fd, i64 2
  %i.fh = insertelement <4 x i64> %i.fg, i64 %i.fc, i64 3
  %i.fi = lshr <4 x i64> %i.fh, <i64 44, i64 51, i64 0, i64 1>
  %i.fj = and <4 x i64> %i.fi, splat (i64 127)
  store <4 x i64> %i.fj, ptr %i.ez, align 1, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.fl = load i64, ptr %i.fb, align 1
  %i.fm = insertelement <4 x i64> poison, i64 %i.fl, i64 0
  %i.fn = shufflevector <4 x i64> %i.fm, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fo = lshr <4 x i64> %i.fn, <i64 8, i64 15, i64 22, i64 29>
  %i.fp = and <4 x i64> %i.fo, splat (i64 127)
  store <4 x i64> %i.fp, ptr %i.fk, align 1, !tbaa !11
  %i.fq = getelementptr inbounds nuw i8, ptr %.02630, i64 480
  %i.fr = load i64, ptr %i.fb, align 1
  %i.fs = insertelement <4 x i64> poison, i64 %i.fr, i64 0
  %i.ft = shufflevector <4 x i64> %i.fs, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fu = lshr <4 x i64> %i.ft, <i64 36, i64 43, i64 50, i64 57>
  %i.fv = and <4 x i64> %i.fu, splat (i64 127)
  store <4 x i64> %i.fv, ptr %i.fq, align 1, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %.02531, i64 56 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.fy = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fy, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !312
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
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
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = sext i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p
  %i.r = and i64 %i.q, 255
  store i64 %i.r, ptr %.026.i, align 8, !tbaa !13
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
  %i.ae = sdiv i32 %i.y, 64                       ; 2 uses
  %i.af = icmp sgt i32 %i.y, 63
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ad, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ], [ %i.fw, %.lr.ph ] ; 8 uses
  %.025.lcssa = phi ptr [ %i.ab, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ], [ %i.fv, %.lr.ph ] ; 5 uses
  %i.ag = shl nsw i32 %i.ae, 6                    ; 2 uses
  %i.ah = sub nsw i32 %i.y, %i.ag                 ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 64
  tail call void @llvm.assume(i1 %i.ai)
  %.not = icmp eq i32 %i.y, %i.ag
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.aj = shl nuw nsw i32 %i.ah, 3
  %i.ak = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %i.ak, i64 8) ; 3 uses
  %i.am = lshr exact i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 24
  br i1 %min.iters.check, label %.lr.ph.i28.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 8)
  %i.ap = add nsw i64 %i.ao, -1                   ; 2 uses
  %4 = and i64 %i.ap, -8
  %5 = getelementptr i8, ptr %.026.lcssa, i64 %4
  %i.aq = getelementptr i8, ptr %5, i64 8
  %6 = lshr i64 %i.ap, 3
  %i.ar = getelementptr i8, ptr %.025.lcssa, i64 %6
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  %bound0 = icmp ult ptr %.026.lcssa, %i.as
  %bound1 = icmp ult ptr %.025.lcssa, %i.aq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp samesign ult i64 %i.al, 120
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 536870896               ; 4 uses
  %i.au = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.av = getelementptr i8, ptr %.026.lcssa, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.lcssa, i64 %i.aw ; 4 uses
  %i.ax = and i64 %index, 2305843009213693936
  %i.ay = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %wide.load = load <4 x i8>, ptr %i.ay, align 1, !alias.scope !321
  %wide.load41 = load <4 x i8>, ptr %i.az, align 1, !alias.scope !321
  %wide.load42 = load <4 x i8>, ptr %i.ba, align 1, !alias.scope !321
  %wide.load43 = load <4 x i8>, ptr %i.bb, align 1, !alias.scope !321
  %i.bc = zext <4 x i8> %wide.load to <4 x i64>
  %i.bd = zext <4 x i8> %wide.load41 to <4 x i64>
  %i.be = zext <4 x i8> %wide.load42 to <4 x i64>
  %i.bf = zext <4 x i8> %wide.load43 to <4 x i64>
  %i.bg = getelementptr i8, ptr %next.gep, i64 32
  %i.bh = getelementptr i8, ptr %next.gep, i64 64
  %i.bi = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %i.bc, ptr %next.gep, align 8, !tbaa !13, !alias.scope !322, !noalias !321
  store <4 x i64> %i.bd, ptr %i.bg, align 8, !tbaa !13, !alias.scope !322, !noalias !321
  store <4 x i64> %i.be, ptr %i.bh, align 8, !tbaa !13, !alias.scope !322, !noalias !321
  store <4 x i64> %i.bf, ptr %i.bi, align 8, !tbaa !13, !alias.scope !322, !noalias !321
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i28.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.an, 536870908             ; 3 uses
  %i.bk = shl nuw nsw i64 %n.vec44, 3             ; 2 uses
  %i.bl = getelementptr i8, ptr %.026.lcssa, i64 %i.bk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = shl i64 %index45, 3
  %next.gep46 = getelementptr i8, ptr %.026.lcssa, i64 %i.bm
  %i.bn = and i64 %index45, 2305843009213693948
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bn
  %wide.load47 = load <4 x i8>, ptr %i.bo, align 1, !alias.scope !321
  %i.bp = zext <4 x i8> %wide.load47 to <4 x i64>
  store <4 x i64> %i.bp, ptr %next.gep46, align 8, !tbaa !13, !alias.scope !322, !noalias !321
  %index.next48 = add nuw i64 %index45, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next48, %n.vec44
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !318

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.an, %n.vec44
  br i1 %cmp.n49, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.024.i.ph = phi ptr [ %.026.lcssa, %iter.check ], [ %.026.lcssa, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i28 ], [ %indvars.iv.ph, %.lr.ph.i28.preheader ] ; 2 uses
  %.024.i = phi ptr [ %i.bv, %.lr.ph.i28 ], [ %.024.i.ph, %.lr.ph.i28.preheader ] ; 2 uses
  %i.br = lshr exact i64 %indvars.iv, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i64
  store i64 %i.bu, ptr %.024.i, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.bw = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.bw, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !319

_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %middle.block, %vec.epilog.middle.block, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.fx, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.fv, %.lr.ph ], [ %i.ab, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ] ; 10 uses
  %.02630 = phi ptr [ %i.fw, %.lr.ph ], [ %i.ad, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ] ; 17 uses
  %i.bx = load i64, ptr %.02531, align 1
  %i.by = insertelement <4 x i64> poison, i64 %i.bx, i64 0
  %i.bz = shufflevector <4 x i64> %i.by, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ca = lshr <4 x i64> %i.bz, <i64 0, i64 8, i64 16, i64 24>
  %i.cb = and <4 x i64> %i.ca, splat (i64 255)
  store <4 x i64> %i.cb, ptr %.02630, align 1, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  %i.cd = load i64, ptr %.02531, align 1
  %i.ce = insertelement <4 x i64> poison, i64 %i.cd, i64 0
  %i.cf = shufflevector <4 x i64> %i.ce, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cg = lshr <4 x i64> %i.cf, <i64 32, i64 40, i64 48, i64 56>
  %i.ch = and <4 x i64> %i.cg, splat (i64 255)
  store <4 x i64> %i.ch, ptr %i.cc, align 1, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %.02531, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 1
  %i.cl = insertelement <4 x i64> poison, i64 %i.ck, i64 0
  %i.cm = shufflevector <4 x i64> %i.cl, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cn = lshr <4 x i64> %i.cm, <i64 0, i64 8, i64 16, i64 24>
  %i.co = and <4 x i64> %i.cn, splat (i64 255)
  store <4 x i64> %i.co, ptr %i.ci, align 1, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %.02630, i64 96
  %i.cq = load i64, ptr %i.cj, align 1
  %i.cr = insertelement <4 x i64> poison, i64 %i.cq, i64 0
  %i.cs = shufflevector <4 x i64> %i.cr, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ct = lshr <4 x i64> %i.cs, <i64 32, i64 40, i64 48, i64 56>
  %i.cu = and <4 x i64> %i.ct, splat (i64 255)
  store <4 x i64> %i.cu, ptr %i.cp, align 1, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.cw = getelementptr inbounds nuw i8, ptr %.02531, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 1
  %i.cy = insertelement <4 x i64> poison, i64 %i.cx, i64 0
  %i.cz = shufflevector <4 x i64> %i.cy, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.da = lshr <4 x i64> %i.cz, <i64 0, i64 8, i64 16, i64 24>
  %i.db = and <4 x i64> %i.da, splat (i64 255)
  store <4 x i64> %i.db, ptr %i.cv, align 1, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.02630, i64 160
  %i.dd = load i64, ptr %i.cw, align 1
  %i.de = insertelement <4 x i64> poison, i64 %i.dd, i64 0
  %i.df = shufflevector <4 x i64> %i.de, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dg = lshr <4 x i64> %i.df, <i64 32, i64 40, i64 48, i64 56>
  %i.dh = and <4 x i64> %i.dg, splat (i64 255)
  store <4 x i64> %i.dh, ptr %i.dc, align 1, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.dj = getelementptr inbounds nuw i8, ptr %.02531, i64 24 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 1
  %i.dl = insertelement <4 x i64> poison, i64 %i.dk, i64 0
  %i.dm = shufflevector <4 x i64> %i.dl, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dn = lshr <4 x i64> %i.dm, <i64 0, i64 8, i64 16, i64 24>
  %i.do = and <4 x i64> %i.dn, splat (i64 255)
  store <4 x i64> %i.do, ptr %i.di, align 1, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %.02630, i64 224
  %i.dq = load i64, ptr %i.dj, align 1
  %i.dr = insertelement <4 x i64> poison, i64 %i.dq, i64 0
  %i.ds = shufflevector <4 x i64> %i.dr, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dt = lshr <4 x i64> %i.ds, <i64 32, i64 40, i64 48, i64 56>
  %i.du = and <4 x i64> %i.dt, splat (i64 255)
  store <4 x i64> %i.du, ptr %i.dp, align 1, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.dw = getelementptr inbounds nuw i8, ptr %.02531, i64 32 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 1
  %i.dy = insertelement <4 x i64> poison, i64 %i.dx, i64 0
  %i.dz = shufflevector <4 x i64> %i.dy, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ea = lshr <4 x i64> %i.dz, <i64 0, i64 8, i64 16, i64 24>
  %i.eb = and <4 x i64> %i.ea, splat (i64 255)
  store <4 x i64> %i.eb, ptr %i.dv, align 1, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %.02630, i64 288
  %i.ed = load i64, ptr %i.dw, align 1
  %i.ee = insertelement <4 x i64> poison, i64 %i.ed, i64 0
  %i.ef = shufflevector <4 x i64> %i.ee, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eg = lshr <4 x i64> %i.ef, <i64 32, i64 40, i64 48, i64 56>
  %i.eh = and <4 x i64> %i.eg, splat (i64 255)
  store <4 x i64> %i.eh, ptr %i.ec, align 1, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.ej = getelementptr inbounds nuw i8, ptr %.02531, i64 40 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 1
  %i.el = insertelement <4 x i64> poison, i64 %i.ek, i64 0
  %i.em = shufflevector <4 x i64> %i.el, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.en = lshr <4 x i64> %i.em, <i64 0, i64 8, i64 16, i64 24>
  %i.eo = and <4 x i64> %i.en, splat (i64 255)
  store <4 x i64> %i.eo, ptr %i.ei, align 1, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %.02630, i64 352
  %i.eq = load i64, ptr %i.ej, align 1
  %i.er = insertelement <4 x i64> poison, i64 %i.eq, i64 0
  %i.es = shufflevector <4 x i64> %i.er, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.et = lshr <4 x i64> %i.es, <i64 32, i64 40, i64 48, i64 56>
  %i.eu = and <4 x i64> %i.et, splat (i64 255)
  store <4 x i64> %i.eu, ptr %i.ep, align 1, !tbaa !11
  %i.ev = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.ew = getelementptr inbounds nuw i8, ptr %.02531, i64 48 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 1
  %i.ey = insertelement <4 x i64> poison, i64 %i.ex, i64 0
  %i.ez = shufflevector <4 x i64> %i.ey, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fa = lshr <4 x i64> %i.ez, <i64 0, i64 8, i64 16, i64 24>
  %i.fb = and <4 x i64> %i.fa, splat (i64 255)
  store <4 x i64> %i.fb, ptr %i.ev, align 1, !tbaa !11
  %i.fc = getelementptr inbounds nuw i8, ptr %.02630, i64 416
  %i.fd = load i64, ptr %i.ew, align 1
  %i.fe = insertelement <4 x i64> poison, i64 %i.fd, i64 0
  %i.ff = shufflevector <4 x i64> %i.fe, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fg = lshr <4 x i64> %i.ff, <i64 32, i64 40, i64 48, i64 56>
end_hunk_0
