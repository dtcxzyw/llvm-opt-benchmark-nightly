Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bpacking_simd_avx2?download=true
inline.NumInlined: 12609
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5arrow8internal11unpack_avx2IbEEvPKhPT_iii:bb.a
  %i.l = trunc nuw i32 %i.k to i8
  %i.m = and i8 %i.l, 1
  store i8 %i.m, ptr %.026.i.i.i, align 1, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 1
  %i.o = icmp slt i32 %i.f, %i.b
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i, !llvm.loop !16

_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i, %bb.c
  %.023.lcssa.i.i.i = phi i32 [ %4, %bb.c ], [ %.02325.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.d ] ; 4 uses
  %i.p = sub nsw i32 %.023.lcssa.i.i.i, %4        ; 2 uses
  %i.q = sub nsw i32 %2, %i.p                     ; 4 uses
  %i.r = sdiv i32 %.023.lcssa.i.i.i, 8
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s ; 2 uses
  %i.u = sext i32 %i.p to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = sdiv i32 %i.q, 32                        ; 2 uses
  %i.x = icmp sgt i32 %i.q, 31
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i.i = phi ptr [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ], [ %i.ea, %.lr.ph.i.i ] ; 8 uses
  %.025.lcssa.i.i = phi ptr [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ], [ %i.dz, %.lr.ph.i.i ] ; 8 uses
  %i.y = shl nsw i32 %i.w, 5                      ; 4 uses
  %i.z = sub nsw i32 %i.q, %i.y                   ; 2 uses
  %i.aa = icmp samesign ult i32 %i.z, 32
  tail call void @llvm.assume(i1 %i.aa)
  %.not.i.i = icmp eq i32 %i.q, %i.y
  br i1 %.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i
  %i.ab = add i32 %4, %2
  %i.ac = xor i32 %.023.lcssa.i.i.i, -1
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = sub i32 %i.ad, %i.y                     ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ae, 3
  br i1 %min.iters.check, label %.lr.ph.i28.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = add i32 %4, %2
  %i.ai = xor i32 %.023.lcssa.i.i.i, -1
  %i.aj = add i32 %i.ah, %i.ai
  %i.ak = sub i32 %i.aj, %i.y
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr i8, ptr %.026.lcssa.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 1
  %i.ao = lshr i64 %i.al, 3
  %i.ap = getelementptr i8, ptr %.025.lcssa.i.i, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  %bound0 = icmp ult ptr %.026.lcssa.i.i, %i.aq
  %bound1 = icmp ult ptr %.025.lcssa.i.i, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i32 %i.ae, 31
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.ag, 28
  %n.vec = and i64 %i.ag, 8589934560              ; 5 uses
  %i.as = getelementptr i8, ptr %.026.lcssa.i.i, i64 %n.vec
  %i.at = trunc i64 %n.vec to i32                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %next.gep = getelementptr i8, ptr %.026.lcssa.i.i, i64 %index ; 4 uses
  %i.au = lshr exact i64 %index, 3
  %i.av = lshr exact i64 %index, 3
  %i.aw = lshr exact i64 %index, 3
  %i.ax = lshr exact i64 %index, 3
  %i.ay = and i64 %i.au, 536870908
  %i.az = and i64 %i.av, 536870908
  %i.ba = and i64 %i.aw, 536870908
  %i.bb = and i64 %i.ax, 536870908
  %i.bc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bb
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.bc, align 1, !alias.scope !26
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bk = load i8, ptr %i.be, align 1, !alias.scope !26
  %broadcast.splatinsert11 = insertelement <8 x i8> poison, i8 %i.bk, i64 0
  %broadcast.splat12 = shufflevector <8 x i8> %broadcast.splatinsert11, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bl = load i8, ptr %i.bg, align 1, !alias.scope !26
  %broadcast.splatinsert13 = insertelement <8 x i8> poison, i8 %i.bl, i64 0
  %broadcast.splat14 = shufflevector <8 x i8> %broadcast.splatinsert13, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bm = load i8, ptr %i.bi, align 1, !alias.scope !26
  %broadcast.splatinsert15 = insertelement <8 x i8> poison, i8 %i.bm, i64 0
  %broadcast.splat16 = shufflevector <8 x i8> %broadcast.splatinsert15, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bn = zext <8 x i8> %broadcast.splat to <8 x i32>
  %i.bo = zext <8 x i8> %broadcast.splat12 to <8 x i32>
  %i.bp = zext <8 x i8> %broadcast.splat14 to <8 x i32>
  %i.bq = zext <8 x i8> %broadcast.splat16 to <8 x i32>
  %i.br = and <8 x i32> %vec.ind, splat (i32 7)
  %i.bs = and <8 x i32> %vec.ind, splat (i32 7)
  %i.bt = and <8 x i32> %vec.ind, splat (i32 7)
  %i.bu = and <8 x i32> %vec.ind, splat (i32 7)
  %i.bv = lshr <8 x i32> %i.bn, %i.br
  %i.bw = lshr <8 x i32> %i.bo, %i.bs
  %i.bx = lshr <8 x i32> %i.bp, %i.bt
  %i.by = lshr <8 x i32> %i.bq, %i.bu
  %i.bz = trunc nuw <8 x i32> %i.bv to <8 x i8>
  %i.ca = and <8 x i8> %i.bz, splat (i8 1)
  %i.cb = trunc nuw <8 x i32> %i.bw to <8 x i8>
  %i.cc = and <8 x i8> %i.cb, splat (i8 1)
  %i.cd = trunc nuw <8 x i32> %i.bx to <8 x i8>
  %i.ce = and <8 x i8> %i.cd, splat (i8 1)
  %i.cf = trunc nuw <8 x i32> %i.by to <8 x i8>
  %i.cg = and <8 x i8> %i.cf, splat (i8 1)
  %i.ch = getelementptr i8, ptr %next.gep, i64 8
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  %i.cj = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %i.ca, ptr %next.gep, align 1, !tbaa !25, !alias.scope !27, !noalias !26
  store <8 x i8> %i.cc, ptr %i.ch, align 1, !tbaa !25, !alias.scope !27, !noalias !26
  store <8 x i8> %i.ce, ptr %i.ci, align 1, !tbaa !25, !alias.scope !27, !noalias !26
  store <8 x i8> %i.cg, ptr %i.cj, align 1, !tbaa !25, !alias.scope !27, !noalias !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i32> %vec.ind, splat (i32 32)
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i28.i.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val17 = phi i32 [ %i.at, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.ag, 8589934588            ; 4 uses
  %i.cl = getelementptr i8, ptr %.026.lcssa.i.i, i64 %n.vec18
  %i.cm = trunc i64 %n.vec18 to i32
  %broadcast.splatinsert19 = insertelement <4 x i32> poison, i32 %bc.resume.val17, i64 0
  %broadcast.splat20 = shufflevector <4 x i32> %broadcast.splatinsert19, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat20, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind22 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next27, %vec.epilog.vector.body ] ; 2 uses
  %next.gep23 = getelementptr i8, ptr %.026.lcssa.i.i, i64 %index21
  %i.cn = lshr i64 %index21, 3
  %i.co = and i64 %i.cn, 536870911
  %i.cp = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !26
  %broadcast.splatinsert24 = insertelement <4 x i8> poison, i8 %i.cq, i64 0
  %broadcast.splat25 = shufflevector <4 x i8> %broadcast.splatinsert24, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cr = zext <4 x i8> %broadcast.splat25 to <4 x i32>
  %i.cs = and <4 x i32> %vec.ind22, splat (i32 7)
  %i.ct = lshr <4 x i32> %i.cr, %i.cs
  %i.cu = trunc nuw <4 x i32> %i.ct to <4 x i8>
  %i.cv = and <4 x i8> %i.cu, splat (i8 1)
  store <4 x i8> %i.cv, ptr %next.gep23, align 1, !tbaa !25, !alias.scope !27, !noalias !26
  %index.next26 = add nuw i64 %index21, 4         ; 2 uses
  %vec.ind.next27 = add nuw nsw <4 x i32> %vec.ind22, splat (i32 4)
  %i.cw = icmp eq i64 %index.next26, %n.vec18
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.ag, %n.vec18
  br i1 %cmp.n28, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.024.i.i.i.ph = phi ptr [ %.026.lcssa.i.i, %iter.check ], [ %.026.lcssa.i.i, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  %.02223.i.i.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %.lr.ph.i28.i.i.preheader, %.lr.ph.i28.i.i
  %.024.i.i.i = phi ptr [ %i.dh, %.lr.ph.i28.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i28.i.i.preheader ] ; 2 uses
  %.02223.i.i.i = phi i32 [ %i.cy, %.lr.ph.i28.i.i ], [ %.02223.i.i.i.ph, %.lr.ph.i28.i.i.preheader ] ; 3 uses
  %i.cx = lshr i32 %.02223.i.i.i, 3
  %i.cy = add nuw nsw i32 %.02223.i.i.i, 1        ; 2 uses
  %i.cz = zext nneg i32 %i.cx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = and i32 %.02223.i.i.i, 7
  %i.de = lshr i32 %i.dc, %i.dd
  %i.df = trunc nuw i32 %i.de to i8
  %i.dg = and i8 %i.df, 1
  store i8 %i.dg, ptr %.024.i.i.i, align 1, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1
  %exitcond34.not.i.i = icmp eq i32 %i.cy, %i.z
  br i1 %exitcond34.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i, !llvm.loop !22

.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.eb, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.di = load i32, ptr %.02530.i.i, align 1
  %i.dj = insertelement <8 x i32> poison, i32 %i.di, i64 0
  %i.dk = shufflevector <8 x i32> %i.dj, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.dl = lshr <8 x i32> %i.dk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dm = lshr <8 x i32> %i.dk, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dn = lshr <8 x i32> %i.dk, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.do = lshr <8 x i32> %i.dk, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dp = bitcast <8 x i32> %i.dl to <32 x i8>
  %i.dq = and <32 x i8> %i.dp, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.dr = bitcast <8 x i32> %i.dm to <32 x i8>
  %i.ds = and <32 x i8> %i.dr, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.dt = shufflevector <32 x i8> %i.dq, <32 x i8> %i.ds, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.dt, ptr %.02629.i.i, align 1, !tbaa !25
  %5 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 16
  %i.du = bitcast <8 x i32> %i.dn to <32 x i8>
  %i.dv = and <32 x i8> %i.du, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.dw = bitcast <8 x i32> %i.do to <32 x i8>
  %i.dx = and <32 x i8> %i.dw, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.dy = shufflevector <32 x i8> %i.dv, <32 x i8> %i.dx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.dy, ptr %5, align 1, !tbaa !25
  %i.dz = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32 ; 2 uses
  %i.eb = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.eb, %i.w
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !23

_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEbEEvPKhPT0_iii.exit: ; preds = %.lr.ph.i28.i.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal11unpack_avx2IhEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  switch i32 %3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.m
    i32 7, label %bb.o
    i32 8, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.l, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit

bb.c:                                             ; preds = %bb.a
  %i.m = add nsw i32 %4, %2
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.026.i.i.i = phi ptr [ %i.y, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02325.i.i.i = phi i32 [ %i.q, %bb.d ], [ %4, %bb.c ] ; 4 uses
  %i.o = srem i32 %.02325.i.i.i, 8                ; 2 uses
  %i.p = sdiv i32 %.02325.i.i.i, 8
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add nsw i32 %.02325.i.i.i, 1             ; 3 uses
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = lshr i32 %i.u, %i.o
  %i.w = trunc nuw i32 %i.v to i8
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %.026.i.i.i, align 1, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 1
  %i.z = icmp slt i32 %i.q, %i.m
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !28

_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i, %bb.c
  %.023.lcssa.i.i.i = phi i32 [ %4, %bb.c ], [ %.02325.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %bb.d ] ; 4 uses
  %i.aa = sub nsw i32 %.023.lcssa.i.i.i, %4       ; 2 uses
  %i.ab = sub nsw i32 %2, %i.aa                   ; 4 uses
  %i.ac = sdiv i32 %.023.lcssa.i.i.i, 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = sext i32 %i.aa to i64
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af ; 2 uses
  %i.ah = sdiv i32 %i.ab, 32                      ; 2 uses
  %i.ai = icmp sgt i32 %i.ab, 31
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i.i = phi ptr [ %i.ag, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.el, %.lr.ph.i.i ] ; 8 uses
  %.025.lcssa.i.i = phi ptr [ %i.ae, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.ek, %.lr.ph.i.i ] ; 8 uses
  %i.aj = shl nsw i32 %i.ah, 5                    ; 4 uses
  %i.ak = sub nsw i32 %i.ab, %i.aj                ; 2 uses
  %i.al = icmp samesign ult i32 %i.ak, 32
  tail call void @llvm.assume(i1 %i.al)
  %.not.i.i = icmp eq i32 %i.ab, %i.aj
  br i1 %.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %iter.check201

iter.check201:                                    ; preds = %._crit_edge.i.i
  %i.am = add i32 %4, %2
  %i.an = xor i32 %.023.lcssa.i.i.i, -1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = sub i32 %i.ao, %i.aj                    ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 5 uses
  %min.iters.check171 = icmp ult i32 %i.ap, 3
  br i1 %min.iters.check171, label %.lr.ph.i28.i.i.preheader, label %vector.memcheck172

vector.memcheck172:                               ; preds = %iter.check201
  %i.as = add i32 %4, %2
  %i.at = xor i32 %.023.lcssa.i.i.i, -1
  %i.au = add i32 %i.as, %i.at
  %i.av = sub i32 %i.au, %i.aj
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr i8, ptr %.026.lcssa.i.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %i.az = lshr i64 %i.aw, 3
  %i.ba = getelementptr i8, ptr %.025.lcssa.i.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  %bound0173 = icmp ult ptr %.026.lcssa.i.i, %i.bb
  %bound1174 = icmp ult ptr %.025.lcssa.i.i, %i.ay
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph.i28.i.i.preheader, label %vector.main.loop.iter.check176

vector.main.loop.iter.check176:                   ; preds = %vector.memcheck172
  %min.iters.check177 = icmp ult i32 %i.ap, 31
  br i1 %min.iters.check177, label %vec.epilog.ph205, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check176
  %i.bc = and i64 %i.ar, 28
  %n.vec179 = and i64 %i.ar, 8589934560           ; 5 uses
  %i.bd = getelementptr i8, ptr %.026.lcssa.i.i, i64 %n.vec179
  %i.be = trunc i64 %n.vec179 to i32              ; 2 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.ph178, %vector.body180
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next195, %vector.body180 ] ; 6 uses
  %vec.ind182 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph178 ], [ %vec.ind.next196, %vector.body180 ] ; 5 uses
  %next.gep186 = getelementptr i8, ptr %.026.lcssa.i.i, i64 %index181 ; 4 uses
  %i.bf = lshr exact i64 %index181, 3
  %i.bg = lshr exact i64 %index181, 3
  %i.bh = lshr exact i64 %index181, 3
  %i.bi = lshr exact i64 %index181, 3
  %i.bj = and i64 %i.bf, 536870908
  %i.bk = and i64 %i.bg, 536870908
  %i.bl = and i64 %i.bh, 536870908
  %i.bm = and i64 %i.bi, 536870908
  %i.bn = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.bm
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.bu = load i8, ptr %i.bn, align 1, !alias.scope !64
  %broadcast.splatinsert187 = insertelement <8 x i8> poison, i8 %i.bu, i64 0
  %broadcast.splat188 = shufflevector <8 x i8> %broadcast.splatinsert187, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bv = load i8, ptr %i.bp, align 1, !alias.scope !64
  %broadcast.splatinsert189 = insertelement <8 x i8> poison, i8 %i.bv, i64 0
  %broadcast.splat190 = shufflevector <8 x i8> %broadcast.splatinsert189, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bw = load i8, ptr %i.br, align 1, !alias.scope !64
  %broadcast.splatinsert191 = insertelement <8 x i8> poison, i8 %i.bw, i64 0
  %broadcast.splat192 = shufflevector <8 x i8> %broadcast.splatinsert191, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bx = load i8, ptr %i.bt, align 1, !alias.scope !64
  %broadcast.splatinsert193 = insertelement <8 x i8> poison, i8 %i.bx, i64 0
  %broadcast.splat194 = shufflevector <8 x i8> %broadcast.splatinsert193, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.by = zext <8 x i8> %broadcast.splat188 to <8 x i32>
  %i.bz = zext <8 x i8> %broadcast.splat190 to <8 x i32>
  %i.ca = zext <8 x i8> %broadcast.splat192 to <8 x i32>
  %i.cb = zext <8 x i8> %broadcast.splat194 to <8 x i32>
  %i.cc = and <8 x i32> %vec.ind182, splat (i32 7)
  %i.cd = and <8 x i32> %vec.ind182, splat (i32 7)
  %i.ce = and <8 x i32> %vec.ind182, splat (i32 7)
  %i.cf = and <8 x i32> %vec.ind182, splat (i32 7)
  %i.cg = lshr <8 x i32> %i.by, %i.cc
  %i.ch = lshr <8 x i32> %i.bz, %i.cd
  %i.ci = lshr <8 x i32> %i.ca, %i.ce
  %i.cj = lshr <8 x i32> %i.cb, %i.cf
  %i.ck = trunc nuw <8 x i32> %i.cg to <8 x i8>
  %i.cl = and <8 x i8> %i.ck, splat (i8 1)
  %i.cm = trunc nuw <8 x i32> %i.ch to <8 x i8>
  %i.cn = and <8 x i8> %i.cm, splat (i8 1)
  %i.co = trunc nuw <8 x i32> %i.ci to <8 x i8>
  %i.cp = and <8 x i8> %i.co, splat (i8 1)
  %i.cq = trunc nuw <8 x i32> %i.cj to <8 x i8>
  %i.cr = and <8 x i8> %i.cq, splat (i8 1)
  %i.cs = getelementptr i8, ptr %next.gep186, i64 8
  %i.ct = getelementptr i8, ptr %next.gep186, i64 16
  %i.cu = getelementptr i8, ptr %next.gep186, i64 24
  store <8 x i8> %i.cl, ptr %next.gep186, align 1, !tbaa !11, !alias.scope !65, !noalias !64
  store <8 x i8> %i.cn, ptr %i.cs, align 1, !tbaa !11, !alias.scope !65, !noalias !64
  store <8 x i8> %i.cp, ptr %i.ct, align 1, !tbaa !11, !alias.scope !65, !noalias !64
  store <8 x i8> %i.cr, ptr %i.cu, align 1, !tbaa !11, !alias.scope !65, !noalias !64
  %index.next195 = add nuw i64 %index181, 32      ; 2 uses
  %vec.ind.next196 = add nuw nsw <8 x i32> %vec.ind182, splat (i32 32)
  %i.cv = icmp eq i64 %index.next195, %n.vec179
  br i1 %i.cv, label %middle.block197, label %vector.body180, !llvm.loop !32

middle.block197:                                  ; preds = %vector.body180
  %cmp.n198 = icmp eq i64 %i.ar, %n.vec179
  br i1 %cmp.n198, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %vec.epilog.iter.check203

vec.epilog.iter.check203:                         ; preds = %middle.block197
  %min.epilog.iters.check204 = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check204, label %.lr.ph.i28.i.i.preheader, label %vec.epilog.ph205, !prof !10

vec.epilog.ph205:                                 ; preds = %vector.main.loop.iter.check176, %vec.epilog.iter.check203
  %vec.epilog.resume.val199 = phi i64 [ %n.vec179, %vec.epilog.iter.check203 ], [ 0, %vector.main.loop.iter.check176 ]
  %bc.resume.val200 = phi i32 [ %i.be, %vec.epilog.iter.check203 ], [ 0, %vector.main.loop.iter.check176 ]
  %n.vec206 = and i64 %i.ar, 8589934588           ; 4 uses
  %i.cw = getelementptr i8, ptr %.026.lcssa.i.i, i64 %n.vec206
  %i.cx = trunc i64 %n.vec206 to i32
  %broadcast.splatinsert207 = insertelement <4 x i32> poison, i32 %bc.resume.val200, i64 0
  %broadcast.splat208 = shufflevector <4 x i32> %broadcast.splatinsert207, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction209 = add nuw nsw <4 x i32> %broadcast.splat208, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body210

vec.epilog.vector.body210:                        ; preds = %vec.epilog.vector.body210, %vec.epilog.ph205
  %index211 = phi i64 [ %vec.epilog.resume.val199, %vec.epilog.ph205 ], [ %index.next216, %vec.epilog.vector.body210 ] ; 3 uses
  %vec.ind212 = phi <4 x i32> [ %induction209, %vec.epilog.ph205 ], [ %vec.ind.next217, %vec.epilog.vector.body210 ] ; 2 uses
  %next.gep213 = getelementptr i8, ptr %.026.lcssa.i.i, i64 %index211
  %i.cy = lshr i64 %index211, 3
  %i.cz = and i64 %i.cy, 536870911
  %i.da = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !64
  %broadcast.splatinsert214 = insertelement <4 x i8> poison, i8 %i.db, i64 0
  %broadcast.splat215 = shufflevector <4 x i8> %broadcast.splatinsert214, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dc = zext <4 x i8> %broadcast.splat215 to <4 x i32>
  %i.dd = and <4 x i32> %vec.ind212, splat (i32 7)
  %i.de = lshr <4 x i32> %i.dc, %i.dd
  %i.df = trunc nuw <4 x i32> %i.de to <4 x i8>
  %i.dg = and <4 x i8> %i.df, splat (i8 1)
  store <4 x i8> %i.dg, ptr %next.gep213, align 1, !tbaa !11, !alias.scope !65, !noalias !64
  %index.next216 = add nuw i64 %index211, 4       ; 2 uses
  %vec.ind.next217 = add nuw nsw <4 x i32> %vec.ind212, splat (i32 4)
  %i.dh = icmp eq i64 %index.next216, %n.vec206
  br i1 %i.dh, label %vec.epilog.middle.block218, label %vec.epilog.vector.body210, !llvm.loop !33

vec.epilog.middle.block218:                       ; preds = %vec.epilog.vector.body210
  %cmp.n219 = icmp eq i64 %i.ar, %n.vec206
  br i1 %cmp.n219, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %iter.check201, %vector.memcheck172, %vec.epilog.iter.check203, %vec.epilog.middle.block218
  %.024.i.i.i.ph = phi ptr [ %.026.lcssa.i.i, %iter.check201 ], [ %.026.lcssa.i.i, %vector.memcheck172 ], [ %i.bd, %vec.epilog.iter.check203 ], [ %i.cw, %vec.epilog.middle.block218 ]
  %.02223.i.i.i.ph = phi i32 [ 0, %iter.check201 ], [ 0, %vector.memcheck172 ], [ %i.be, %vec.epilog.iter.check203 ], [ %i.cx, %vec.epilog.middle.block218 ]
  br label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %.lr.ph.i28.i.i.preheader, %.lr.ph.i28.i.i
  %.024.i.i.i = phi ptr [ %i.ds, %.lr.ph.i28.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i28.i.i.preheader ] ; 2 uses
  %.02223.i.i.i = phi i32 [ %i.dj, %.lr.ph.i28.i.i ], [ %.02223.i.i.i.ph, %.lr.ph.i28.i.i.preheader ] ; 3 uses
  %i.di = lshr i32 %.02223.i.i.i, 3
  %i.dj = add nuw nsw i32 %.02223.i.i.i, 1        ; 2 uses
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i.i, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = and i32 %.02223.i.i.i, 7
  %i.dp = lshr i32 %i.dn, %i.do
  %i.dq = trunc nuw i32 %i.dp to i8
  %i.dr = and i8 %i.dq, 1
  store i8 %i.dr, ptr %.024.i.i.i, align 1, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1
  %exitcond34.not.i.i = icmp eq i32 %i.dj, %i.ak
  br i1 %exitcond34.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i.i, !llvm.loop !34

.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.em, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.ae, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.el, %.lr.ph.i.i ], [ %i.ag, %_ZN5arrow8internal12unpack_exactILi1ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.dt = load i32, ptr %.02530.i.i, align 1
  %i.du = insertelement <8 x i32> poison, i32 %i.dt, i64 0
  %i.dv = shufflevector <8 x i32> %i.du, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.dw = lshr <8 x i32> %i.dv, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dx = lshr <8 x i32> %i.dv, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = lshr <8 x i32> %i.dv, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dz = lshr <8 x i32> %i.dv, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ea = bitcast <8 x i32> %i.dw to <32 x i8>
  %i.eb = and <32 x i8> %i.ea, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.ec = bitcast <8 x i32> %i.dx to <32 x i8>
  %i.ed = and <32 x i8> %i.ec, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.ee = shufflevector <32 x i8> %i.eb, <32 x i8> %i.ed, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.ee, ptr %.02629.i.i, align 1, !tbaa !11
  %i.ef = bitcast <8 x i32> %i.dy to <32 x i8>
  %i.eg = and <32 x i8> %i.ef, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %5 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 16
  %i.eh = bitcast <8 x i32> %i.dz to <32 x i8>
  %i.ei = and <32 x i8> %i.eh, <i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison>
  %i.ej = shufflevector <32 x i8> %i.eg, <32 x i8> %i.ei, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.ej, ptr %5, align 1, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32 ; 2 uses
  %i.em = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.em, %i.ah
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !35

bb.e:                                             ; preds = %bb.a
  %i.en = shl nsw i32 %2, 1
  %i.eo = add nsw i32 %4, %i.en
  %i.ep = icmp sgt i32 %2, 0
  br i1 %i.ep, label %.lr.ph.i.i46.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i46.i:                                   ; preds = %bb.e, %bb.f
  %.026.i.i47.i = phi ptr [ %i.ff, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %.02325.i.i48.i = phi i32 [ %i.es, %bb.f ], [ %4, %bb.e ] ; 5 uses
  %i.eq = srem i32 %.02325.i.i48.i, 8             ; 2 uses
  %i.er = sdiv i32 %.02325.i.i48.i, 8             ; 2 uses
  %.not.i.i49.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i49.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i46.i
  %i.es = add nsw i32 %.02325.i.i48.i, 2          ; 3 uses
  %i.et = add nsw i32 %.02325.i.i48.i, 1
  %i.eu = sdiv i32 %i.et, 8
  %i.ev = sub nsw i32 %i.eu, %i.er                ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  %i.ex = icmp slt i32 %i.ev, 2
  tail call void @llvm.assume(i1 %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8, !tbaa !13
  %i.ey = sext i32 %i.er to i64
  %i.ez = getelementptr inbounds i8, ptr %0, i64 %i.ey
  %i.fa = sext i32 %i.ew to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr readonly align 1 %i.ez, i64 %i.fa, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load i64, ptr %i.k, align 8, !tbaa !13
  %i.fb = zext nneg i32 %i.eq to i64
  %i.fc = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i.i, %i.fb
  %i.fd = trunc i64 %i.fc to i8
  %i.fe = and i8 %i.fd, 3
  store i8 %i.fe, ptr %.026.i.i47.i, align 1, !tbaa !11
  %i.ff = getelementptr inbounds nuw i8, ptr %.026.i.i47.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fg = icmp slt i32 %i.es, %i.eo
  br i1 %i.fg, label %.lr.ph.i.i46.i, label %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !36

_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i46.i, %bb.e
  %.023.lcssa.i.i36.i = phi i32 [ %4, %bb.e ], [ %.02325.i.i48.i, %.lr.ph.i.i46.i ], [ %i.es, %bb.f ]
  %i.fh = sub nsw i32 %.023.lcssa.i.i36.i, %4
  %i.fi = sdiv i32 %i.fh, 2                       ; 3 uses
  %i.fj = shl nsw i32 %i.fi, 1
  %i.fk = add nsw i32 %i.fj, %4
  %i.fl = sub nsw i32 %2, %i.fi                   ; 4 uses
  %i.fm = sdiv i32 %i.fk, 8
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %0, i64 %i.fn ; 2 uses
  %i.fp = sext i32 %i.fi to i64
  %i.fq = getelementptr inbounds i8, ptr %1, i64 %i.fp ; 2 uses
  %i.fr = sdiv i32 %i.fl, 32                      ; 2 uses
  %i.fs = icmp sgt i32 %i.fl, 31
  br i1 %i.fs, label %.lr.ph.i44.i, label %._crit_edge.i37.i

._crit_edge.i37.i:                                ; preds = %.lr.ph.i44.i, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i38.i = phi ptr [ %i.fq, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.jz, %.lr.ph.i44.i ] ; 8 uses
  %.025.lcssa.i39.i = phi ptr [ %i.fo, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.jy, %.lr.ph.i44.i ] ; 8 uses
  %i.ft = shl nsw i32 %i.fr, 5                    ; 2 uses
  %i.fu = sub nsw i32 %i.fl, %i.ft                ; 2 uses
  %i.fv = icmp samesign ult i32 %i.fu, 32
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = shl nuw nsw i32 %i.fu, 1                ; 3 uses
  %.not.i40.i = icmp eq i32 %i.fl, %i.ft
  br i1 %.not.i40.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %iter.check145

iter.check145:                                    ; preds = %._crit_edge.i37.i
  %i.fx = tail call i32 @llvm.usub.sat.i32(i32 %i.fw, i32 2) ; 3 uses
  %i.fy = lshr exact i32 %i.fx, 1
  %narrow222 = add nuw nsw i32 %i.fy, 1
  %i.fz = zext nneg i32 %narrow222 to i64         ; 5 uses
  %min.iters.check118 = icmp samesign ult i32 %i.fx, 6
  br i1 %min.iters.check118, label %.lr.ph.i28.i41.i.preheader, label %vector.memcheck119

vector.memcheck119:                               ; preds = %iter.check145
  %i.ga = tail call i32 @llvm.usub.sat.i32(i32 %i.fw, i32 2)
  %i.gb = or disjoint i32 %i.ga, 1
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gd = lshr i64 %i.gc, 1
  %i.ge = getelementptr i8, ptr %.026.lcssa.i38.i, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 1
  %i.gg = lshr i64 %i.gc, 3
  %i.gh = getelementptr i8, ptr %.025.lcssa.i39.i, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 1
  %bound0120 = icmp ult ptr %.026.lcssa.i38.i, %i.gi
  %bound1121 = icmp ult ptr %.025.lcssa.i39.i, %i.gf
  %found.conflict122 = and i1 %bound0120, %bound1121
  br i1 %found.conflict122, label %.lr.ph.i28.i41.i.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %vector.memcheck119
  %min.iters.check124 = icmp samesign ult i32 %i.fx, 30
  br i1 %min.iters.check124, label %vec.epilog.ph149, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %i.gj = and i64 %i.fz, 12
  %n.vec126 = and i64 %i.fz, 2147483632           ; 5 uses
  %i.gk = getelementptr i8, ptr %.026.lcssa.i38.i, i64 %n.vec126
  %i.gl = trunc nuw nsw i64 %n.vec126 to i32
  %i.gm = shl nuw i32 %i.gl, 1                    ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.ph125, %vector.body127
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next139, %vector.body127 ] ; 6 uses
  %vec.ind129 = phi <4 x i32> [ <i32 0, i32 2, i32 4, i32 6>, %vector.ph125 ], [ %vec.ind.next140, %vector.body127 ] ; 5 uses
  %next.gep130 = getelementptr i8, ptr %.026.lcssa.i38.i, i64 %index128 ; 4 uses
  %i.gn = lshr exact i64 %index128, 2
  %i.go = lshr exact i64 %index128, 2
  %i.gp = lshr exact i64 %index128, 2
  %i.gq = lshr exact i64 %index128, 2
  %i.gr = and i64 %i.gn, 1073741820
  %i.gs = and i64 %i.go, 1073741820
  %i.gt = and i64 %i.gp, 1073741820
  %i.gu = and i64 %i.gq, 1073741820
  %i.gv = getelementptr inbounds nuw i8, ptr %.025.lcssa.i39.i, i64 %i.gr
  %i.gw = getelementptr inbounds nuw i8, ptr %.025.lcssa.i39.i, i64 %i.gs
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.025.lcssa.i39.i, i64 %i.gt
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.ha = getelementptr inbounds nuw i8, ptr %.025.lcssa.i39.i, i64 %i.gu
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 3
  %i.hc = load i8, ptr %i.gv, align 1, !alias.scope !66
  %broadcast.splatinsert131 = insertelement <4 x i8> poison, i8 %i.hc, i64 0
  %broadcast.splat132 = shufflevector <4 x i8> %broadcast.splatinsert131, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hd = load i8, ptr %i.gx, align 1, !alias.scope !66
  %broadcast.splatinsert133 = insertelement <4 x i8> poison, i8 %i.hd, i64 0
  %broadcast.splat134 = shufflevector <4 x i8> %broadcast.splatinsert133, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.he = load i8, ptr %i.gz, align 1, !alias.scope !66
  %broadcast.splatinsert135 = insertelement <4 x i8> poison, i8 %i.he, i64 0
  %broadcast.splat136 = shufflevector <4 x i8> %broadcast.splatinsert135, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hf = load i8, ptr %i.hb, align 1, !alias.scope !66
  %broadcast.splatinsert137 = insertelement <4 x i8> poison, i8 %i.hf, i64 0
  %broadcast.splat138 = shufflevector <4 x i8> %broadcast.splatinsert137, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hg = zext <4 x i8> %broadcast.splat132 to <4 x i32>
  %i.hh = zext <4 x i8> %broadcast.splat134 to <4 x i32>
  %i.hi = zext <4 x i8> %broadcast.splat136 to <4 x i32>
  %i.hj = zext <4 x i8> %broadcast.splat138 to <4 x i32>
  %i.hk = and <4 x i32> %vec.ind129, splat (i32 6)
  %i.hl = and <4 x i32> %vec.ind129, splat (i32 6)
  %i.hm = and <4 x i32> %vec.ind129, splat (i32 6)
  %i.hn = and <4 x i32> %vec.ind129, splat (i32 6)
  %i.ho = lshr <4 x i32> %i.hg, %i.hk
  %i.hp = lshr <4 x i32> %i.hh, %i.hl
  %i.hq = lshr <4 x i32> %i.hi, %i.hm
  %i.hr = lshr <4 x i32> %i.hj, %i.hn
  %i.hs = trunc nuw <4 x i32> %i.ho to <4 x i8>
  %i.ht = and <4 x i8> %i.hs, splat (i8 3)
  %i.hu = trunc nuw <4 x i32> %i.hp to <4 x i8>
  %i.hv = and <4 x i8> %i.hu, splat (i8 3)
  %i.hw = trunc nuw <4 x i32> %i.hq to <4 x i8>
  %i.hx = and <4 x i8> %i.hw, splat (i8 3)
  %i.hy = trunc nuw <4 x i32> %i.hr to <4 x i8>
  %i.hz = and <4 x i8> %i.hy, splat (i8 3)
  %i.ia = getelementptr i8, ptr %next.gep130, i64 4
  %i.ib = getelementptr i8, ptr %next.gep130, i64 8
  %i.ic = getelementptr i8, ptr %next.gep130, i64 12
  store <4 x i8> %i.ht, ptr %next.gep130, align 1, !tbaa !11, !alias.scope !67, !noalias !66
  store <4 x i8> %i.hv, ptr %i.ia, align 1, !tbaa !11, !alias.scope !67, !noalias !66
  store <4 x i8> %i.hx, ptr %i.ib, align 1, !tbaa !11, !alias.scope !67, !noalias !66
  store <4 x i8> %i.hz, ptr %i.ic, align 1, !tbaa !11, !alias.scope !67, !noalias !66
  %index.next139 = add nuw i64 %index128, 16      ; 2 uses
  %vec.ind.next140 = add nuw nsw <4 x i32> %vec.ind129, splat (i32 32)
  %i.id = icmp eq i64 %index.next139, %n.vec126
  br i1 %i.id, label %middle.block141, label %vector.body127, !llvm.loop !40

middle.block141:                                  ; preds = %vector.body127
  %cmp.n142 = icmp eq i64 %n.vec126, %i.fz
  br i1 %cmp.n142, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %vec.epilog.iter.check147

vec.epilog.iter.check147:                         ; preds = %middle.block141
  %min.epilog.iters.check148 = icmp eq i64 %i.gj, 0
  br i1 %min.epilog.iters.check148, label %.lr.ph.i28.i41.i.preheader, label %vec.epilog.ph149, !prof !14

vec.epilog.ph149:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check147
  %vec.epilog.resume.val143 = phi i64 [ %n.vec126, %vec.epilog.iter.check147 ], [ 0, %vector.main.loop.iter.check123 ]
  %bc.resume.val144 = phi i32 [ %i.gm, %vec.epilog.iter.check147 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec150 = and i64 %i.fz, 2147483644           ; 4 uses
  %i.ie = getelementptr i8, ptr %.026.lcssa.i38.i, i64 %n.vec150
  %i.if = trunc nuw nsw i64 %n.vec150 to i32
  %i.ig = shl nuw i32 %i.if, 1
  %broadcast.splatinsert151 = insertelement <4 x i32> poison, i32 %bc.resume.val144, i64 0
  %broadcast.splat152 = shufflevector <4 x i32> %broadcast.splatinsert151, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction153 = add nuw nsw <4 x i32> %broadcast.splat152, <i32 0, i32 2, i32 4, i32 6>
  br label %vec.epilog.vector.body154

vec.epilog.vector.body154:                        ; preds = %vec.epilog.vector.body154, %vec.epilog.ph149
  %index155 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph149 ], [ %index.next160, %vec.epilog.vector.body154 ] ; 3 uses
  %vec.ind156 = phi <4 x i32> [ %induction153, %vec.epilog.ph149 ], [ %vec.ind.next161, %vec.epilog.vector.body154 ] ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.026.lcssa.i38.i, i64 %index155
  %i.ih = lshr exact i64 %index155, 2
  %i.ii = and i64 %i.ih, 1073741823
  %i.ij = getelementptr inbounds nuw i8, ptr %.025.lcssa.i39.i, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !66
  %broadcast.splatinsert158 = insertelement <4 x i8> poison, i8 %i.ik, i64 0
  %broadcast.splat159 = shufflevector <4 x i8> %broadcast.splatinsert158, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.il = zext <4 x i8> %broadcast.splat159 to <4 x i32>
  %i.im = and <4 x i32> %vec.ind156, splat (i32 6)
  %i.in = lshr <4 x i32> %i.il, %i.im
  %i.io = trunc nuw <4 x i32> %i.in to <4 x i8>
  %i.ip = and <4 x i8> %i.io, splat (i8 3)
  store <4 x i8> %i.ip, ptr %next.gep157, align 1, !tbaa !11, !alias.scope !67, !noalias !66
  %index.next160 = add nuw i64 %index155, 4       ; 2 uses
  %vec.ind.next161 = add nuw nsw <4 x i32> %vec.ind156, splat (i32 8)
  %i.iq = icmp eq i64 %index.next160, %n.vec150
  br i1 %i.iq, label %vec.epilog.middle.block162, label %vec.epilog.vector.body154, !llvm.loop !41

vec.epilog.middle.block162:                       ; preds = %vec.epilog.vector.body154
  %cmp.n163 = icmp eq i64 %n.vec150, %i.fz
  br i1 %cmp.n163, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i41.i.preheader

.lr.ph.i28.i41.i.preheader:                       ; preds = %iter.check145, %vector.memcheck119, %vec.epilog.iter.check147, %vec.epilog.middle.block162
  %.024.i.i42.i.ph = phi ptr [ %.026.lcssa.i38.i, %iter.check145 ], [ %.026.lcssa.i38.i, %vector.memcheck119 ], [ %i.gk, %vec.epilog.iter.check147 ], [ %i.ie, %vec.epilog.middle.block162 ]
  %.02223.i.i43.i.ph = phi i32 [ 0, %iter.check145 ], [ 0, %vector.memcheck119 ], [ %i.gm, %vec.epilog.iter.check147 ], [ %i.ig, %vec.epilog.middle.block162 ]
  br label %.lr.ph.i28.i41.i

.lr.ph.i28.i41.i:                                 ; preds = %.lr.ph.i28.i41.i.preheader, %.lr.ph.i28.i41.i
  %.024.i.i42.i = phi ptr [ %i.jb, %.lr.ph.i28.i41.i ], [ %.024.i.i42.i.ph, %.lr.ph.i28.i41.i.preheader ] ; 2 uses
  %.02223.i.i43.i = phi i32 [ %i.is, %.lr.ph.i28.i41.i ], [ %.02223.i.i43.i.ph, %.lr.ph.i28.i41.i.preheader ] ; 3 uses
  %i.ir = lshr i32 %.02223.i.i43.i, 3
  %i.is = add nuw nsw i32 %.02223.i.i43.i, 2      ; 2 uses
  %i.it = zext nneg i32 %i.ir to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %.025.lcssa.i39.i, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i32
  %i.ix = and i32 %.02223.i.i43.i, 6
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = trunc nuw i32 %i.iy to i8
  %i.ja = and i8 %i.iz, 3
  store i8 %i.ja, ptr %.024.i.i42.i, align 1, !tbaa !11
  %i.jb = getelementptr inbounds nuw i8, ptr %.024.i.i42.i, i64 1
  %i.jc = icmp samesign ult i32 %i.is, %i.fw
  br i1 %i.jc, label %.lr.ph.i28.i41.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, !llvm.loop !42

.lr.ph.i44.i:                                     ; preds = %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i44.i
  %.032.i.i = phi i32 [ %i.ka, %.lr.ph.i44.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02531.i.i = phi ptr [ %i.jy, %.lr.ph.i44.i ], [ %i.fo, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %.02630.i.i = phi ptr [ %i.jz, %.lr.ph.i44.i ], [ %i.fq, %_ZN5arrow8internal12unpack_exactILi2ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.jd = load i32, ptr %.02531.i.i, align 1
  %i.je = insertelement <8 x i32> poison, i32 %i.jd, i64 0
  %i.jf = shufflevector <8 x i32> %i.je, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.jg = lshr <8 x i32> %i.jf, <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jh = lshr <8 x i32> %i.jf, <i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ji = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 4
  %i.jj = load i32, ptr %i.ji, align 1
  %i.jk = insertelement <8 x i32> poison, i32 %i.jj, i64 0
  %i.jl = shufflevector <8 x i32> %i.jk, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.jm = lshr <8 x i32> %i.jl, <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jn = lshr <8 x i32> %i.jl, <i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.jo = bitcast <8 x i32> %i.jg to <32 x i8>
  %i.jp = and <32 x i8> %i.jo, <i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison>
  %i.jq = bitcast <8 x i32> %i.jh to <32 x i8>
  %i.jr = and <32 x i8> %i.jq, <i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison>
  %i.js = shufflevector <32 x i8> %i.jp, <32 x i8> %i.jr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.js, ptr %.02630.i.i, align 1, !tbaa !11
  %i.jt = bitcast <8 x i32> %i.jm to <32 x i8>
  %i.ju = and <32 x i8> %i.jt, <i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison>
  %6 = getelementptr inbounds nuw i8, ptr %.02630.i.i, i64 16
  %i.jv = bitcast <8 x i32> %i.jn to <32 x i8>
  %i.jw = and <32 x i8> %i.jv, <i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison>
  %i.jx = shufflevector <32 x i8> %i.ju, <32 x i8> %i.jw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.jx, ptr %6, align 1, !tbaa !11
  %i.jy = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.02630.i.i, i64 32 ; 2 uses
  %i.ka = add nuw nsw i32 %.032.i.i, 1            ; 2 uses
  %exitcond.not.i45.i = icmp eq i32 %i.ka, %i.fr
  br i1 %exitcond.not.i45.i, label %._crit_edge.i37.i, label %.lr.ph.i44.i, !llvm.loop !43

bb.g:                                             ; preds = %bb.a
  %i.kb = mul nsw i32 %2, 3
  %i.kc = add nsw i32 %4, %i.kb
  %i.kd = icmp sgt i32 %2, 0
  br i1 %i.kd, label %.lr.ph.i.i63.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i63.i:                                   ; preds = %bb.g, %bb.h
  %.026.i.i64.i = phi ptr [ %i.kt, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %.02325.i.i65.i = phi i32 [ %i.kg, %bb.h ], [ %4, %bb.g ] ; 5 uses
  %i.ke = srem i32 %.02325.i.i65.i, 8             ; 2 uses
  %i.kf = sdiv i32 %.02325.i.i65.i, 8             ; 2 uses
  %.not.i.i66.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i66.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i63.i
  %i.kg = add nsw i32 %.02325.i.i65.i, 3          ; 3 uses
  %i.kh = add nsw i32 %.02325.i.i65.i, 2
  %i.ki = sdiv i32 %i.kh, 8
  %i.kj = sub nsw i32 %i.ki, %i.kf                ; 2 uses
  %i.kk = add nsw i32 %i.kj, 1
  %i.kl = icmp slt i32 %i.kj, 2
  tail call void @llvm.assume(i1 %i.kl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8, !tbaa !13
  %i.km = sext i32 %i.kf to i64
  %i.kn = getelementptr inbounds i8, ptr %0, i64 %i.km
  %i.ko = sext i32 %i.kk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr readonly align 1 %i.kn, i64 %i.ko, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i67.i = load i64, ptr %i.j, align 8, !tbaa !13
  %i.kp = zext nneg i32 %i.ke to i64
  %i.kq = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i67.i, %i.kp
  %i.kr = trunc i64 %i.kq to i8
  %i.ks = and i8 %i.kr, 7
  store i8 %i.ks, ptr %.026.i.i64.i, align 1, !tbaa !11
  %i.kt = getelementptr inbounds nuw i8, ptr %.026.i.i64.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ku = icmp slt i32 %i.kg, %i.kc
  br i1 %i.ku, label %.lr.ph.i.i63.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !44

_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i63.i, %bb.g
  %.023.lcssa.i.i50.i = phi i32 [ %4, %bb.g ], [ %.02325.i.i65.i, %.lr.ph.i.i63.i ], [ %i.kg, %bb.h ]
  %i.kv = sub nsw i32 %.023.lcssa.i.i50.i, %4
  %i.kw = sdiv i32 %i.kv, 3                       ; 3 uses
  %i.kx = mul nsw i32 %i.kw, 3
  %i.ky = add nsw i32 %i.kx, %4
  %i.kz = sub nsw i32 %2, %i.kw                   ; 4 uses
  %i.la = sdiv i32 %i.ky, 8
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds i8, ptr %0, i64 %i.lb ; 2 uses
  %i.ld = sext i32 %i.kw to i64
  %i.le = getelementptr inbounds i8, ptr %1, i64 %i.ld ; 2 uses
  %i.lf = sdiv i32 %i.kz, 32                      ; 2 uses
  %i.lg = icmp sgt i32 %i.kz, 31
  br i1 %i.lg, label %.lr.ph.i58.i, label %._crit_edge.i51.i

._crit_edge.i51.i:                                ; preds = %.lr.ph.i58.i, %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i52.i = phi ptr [ %i.le, %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.nm, %.lr.ph.i58.i ]
  %.025.lcssa.i53.i = phi ptr [ %i.lc, %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.nl, %.lr.ph.i58.i ]
  %i.lh = shl nsw i32 %i.lf, 5                    ; 2 uses
  %i.li = sub nsw i32 %i.kz, %i.lh                ; 2 uses
  %i.lj = icmp samesign ult i32 %i.li, 32
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = mul nuw nsw i32 %i.li, 3
  %.not.i54.i = icmp eq i32 %i.kz, %i.lh
  br i1 %.not.i54.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i55.i

.lr.ph.i28.i55.i:                                 ; preds = %._crit_edge.i51.i, %.lr.ph.i28.i55.i
  %.024.i.i56.i = phi ptr [ %i.ma, %.lr.ph.i28.i55.i ], [ %.026.lcssa.i52.i, %._crit_edge.i51.i ] ; 2 uses
  %.02223.i.i57.i = phi i32 [ %i.lm, %.lr.ph.i28.i55.i ], [ 0, %._crit_edge.i51.i ] ; 4 uses
  %i.ll = lshr i32 %.02223.i.i57.i, 3             ; 2 uses
  %i.lm = add nuw nsw i32 %.02223.i.i57.i, 3      ; 2 uses
  %i.ln = add nuw nsw i32 %.02223.i.i57.i, 2
  %i.lo = lshr i32 %i.ln, 3
  %i.lp = sub nsw i32 %i.lo, %i.ll                ; 2 uses
  %i.lq = add nsw i32 %i.lp, 1
  %i.lr = icmp slt i32 %i.lp, 2
  tail call void @llvm.assume(i1 %i.lr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8, !tbaa !13
  %i.ls = zext nneg i32 %i.ll to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i53.i, i64 %i.ls
  %i.lu = sext i32 %i.lq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 1 %i.lt, i64 %i.lu, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i.i = load i64, ptr %i.i, align 8, !tbaa !13
  %i.lv = and i32 %.02223.i.i57.i, 7
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i.i, %i.lw
  %i.ly = trunc i64 %i.lx to i8
  %i.lz = and i8 %i.ly, 7
  store i8 %i.lz, ptr %.024.i.i56.i, align 1, !tbaa !11
  %i.ma = getelementptr inbounds nuw i8, ptr %.024.i.i56.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.mb = icmp samesign ult i32 %i.lm, %i.lk
  br i1 %i.mb, label %.lr.ph.i28.i55.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, !llvm.loop !45

.lr.ph.i58.i:                                     ; preds = %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i58.i
  %.032.i59.i = phi i32 [ %i.nn, %.lr.ph.i58.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02531.i60.i = phi ptr [ %i.nl, %.lr.ph.i58.i ], [ %i.lc, %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 4 uses
  %.02630.i61.i = phi ptr [ %i.nm, %.lr.ph.i58.i ], [ %i.le, %_ZN5arrow8internal12unpack_exactILi3ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.mc = load i32, ptr %.02531.i60.i, align 1    ; 3 uses
  %i.md = insertelement <8 x i32> poison, i32 %i.mc, i64 0 ; 2 uses
  %i.me = shufflevector <8 x i32> %i.md, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.mf = lshr <8 x i32> %i.me, <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.mg = getelementptr inbounds nuw i8, ptr %.02531.i60.i, i64 4
  %i.mh = load i32, ptr %i.mg, align 1            ; 5 uses
  %i.mi = tail call i32 @llvm.fshl.i32(i32 %i.mh, i32 %i.mc, i32 2)
  %i.mj = insertelement <8 x i32> %i.md, i32 %i.mc, i64 1
  %i.mk = insertelement <8 x i32> %i.mj, i32 %i.mi, i64 2
  %i.ml = insertelement <4 x i32> poison, i32 %i.mh, i64 0
  %i.mm = shufflevector <4 x i32> %i.ml, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.mn = shufflevector <8 x i32> %i.mk, <8 x i32> %i.mm, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.mo = insertelement <8 x i32> %i.mn, i32 %i.mh, i64 7
  %i.mp = lshr <8 x i32> %i.mo, <i32 24, i32 27, i32 0, i32 1, i32 4, i32 7, i32 10, i32 13>
  %i.mq = getelementptr inbounds nuw i8, ptr %.02531.i60.i, i64 8
  %i.mr = load i32, ptr %i.mq, align 1            ; 4 uses
  %i.ms = tail call i32 @llvm.fshl.i32(i32 %i.mr, i32 %i.mh, i32 1)
  %i.mt = insertelement <8 x i32> %i.mm, i32 %i.mh, i64 4
  %i.mu = insertelement <8 x i32> %i.mt, i32 %i.ms, i64 5
  %i.mv = insertelement <8 x i32> %i.mu, i32 %i.mr, i64 6
  %i.mw = insertelement <8 x i32> %i.mv, i32 %i.mr, i64 7
  %i.mx = lshr <8 x i32> %i.mw, <i32 16, i32 19, i32 22, i32 25, i32 28, i32 0, i32 2, i32 5>
  %i.my = insertelement <8 x i32> poison, i32 %i.mr, i64 0
  %i.mz = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.na = lshr <8 x i32> %i.mz, <i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29>
  %i.nb = bitcast <8 x i32> %i.mf to <32 x i8>
  %i.nc = and <32 x i8> %i.nb, <i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison>
  %i.nd = bitcast <8 x i32> %i.mp to <32 x i8>
  %i.ne = and <32 x i8> %i.nd, <i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison>
  %i.nf = shufflevector <32 x i8> %i.nc, <32 x i8> %i.ne, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.nf, ptr %.02630.i61.i, align 1, !tbaa !11
  %i.ng = bitcast <8 x i32> %i.mx to <32 x i8>
  %i.nh = and <32 x i8> %i.ng, <i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison>
  %7 = getelementptr inbounds nuw i8, ptr %.02630.i61.i, i64 16
  %i.ni = bitcast <8 x i32> %i.na to <32 x i8>
  %i.nj = and <32 x i8> %i.ni, <i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison>
  %i.nk = shufflevector <32 x i8> %i.nh, <32 x i8> %i.nj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.nk, ptr %7, align 1, !tbaa !11
  %i.nl = getelementptr inbounds nuw i8, ptr %.02531.i60.i, i64 12 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.02630.i61.i, i64 32 ; 2 uses
  %i.nn = add nuw nsw i32 %.032.i59.i, 1          ; 2 uses
  %exitcond.not.i62.i = icmp eq i32 %i.nn, %i.lf
  br i1 %exitcond.not.i62.i, label %._crit_edge.i51.i, label %.lr.ph.i58.i, !llvm.loop !46

bb.i:                                             ; preds = %bb.a
  %i.no = shl nsw i32 %2, 2
  %i.np = add nsw i32 %4, %i.no
  %i.nq = icmp sgt i32 %2, 0
  br i1 %i.nq, label %.lr.ph.i.i81.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i81.i:                                   ; preds = %bb.i, %bb.j
  %.026.i.i82.i = phi ptr [ %i.og, %bb.j ], [ %1, %bb.i ] ; 2 uses
  %.02325.i.i83.i = phi i32 [ %i.nt, %bb.j ], [ %4, %bb.i ] ; 5 uses
  %i.nr = srem i32 %.02325.i.i83.i, 8             ; 2 uses
  %i.ns = sdiv i32 %.02325.i.i83.i, 8             ; 2 uses
  %.not.i.i84.i = icmp eq i32 %i.nr, 0
  br i1 %.not.i.i84.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i81.i
  %i.nt = add nsw i32 %.02325.i.i83.i, 4          ; 3 uses
  %i.nu = add nsw i32 %.02325.i.i83.i, 3
  %i.nv = sdiv i32 %i.nu, 8
  %i.nw = sub nsw i32 %i.nv, %i.ns                ; 2 uses
  %i.nx = add nsw i32 %i.nw, 1
  %i.ny = icmp slt i32 %i.nw, 2
  tail call void @llvm.assume(i1 %i.ny)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8, !tbaa !13
  %i.nz = sext i32 %i.ns to i64
  %i.oa = getelementptr inbounds i8, ptr %0, i64 %i.nz
  %i.ob = sext i32 %i.nx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr readonly align 1 %i.oa, i64 %i.ob, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i85.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.oc = zext nneg i32 %i.nr to i64
  %i.od = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i85.i, %i.oc
  %i.oe = trunc i64 %i.od to i8
  %i.of = and i8 %i.oe, 15
  store i8 %i.of, ptr %.026.i.i82.i, align 1, !tbaa !11
  %i.og = getelementptr inbounds nuw i8, ptr %.026.i.i82.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.oh = icmp slt i32 %i.nt, %i.np
  br i1 %i.oh, label %.lr.ph.i.i81.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !47

_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i81.i, %bb.i
  %.023.lcssa.i.i68.i = phi i32 [ %4, %bb.i ], [ %.02325.i.i83.i, %.lr.ph.i.i81.i ], [ %i.nt, %bb.j ]
  %i.oi = sub nsw i32 %.023.lcssa.i.i68.i, %4
  %i.oj = sdiv i32 %i.oi, 4                       ; 3 uses
  %i.ok = shl nsw i32 %i.oj, 2
  %i.ol = add nsw i32 %i.ok, %4
  %i.om = sub nsw i32 %2, %i.oj                   ; 4 uses
  %i.on = sdiv i32 %i.ol, 8
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds i8, ptr %0, i64 %i.oo ; 2 uses
  %i.oq = sext i32 %i.oj to i64
  %i.or = getelementptr inbounds i8, ptr %1, i64 %i.oq ; 2 uses
  %i.os = sdiv i32 %i.om, 32                      ; 2 uses
  %i.ot = icmp sgt i32 %i.om, 31
  br i1 %i.ot, label %.lr.ph.i76.i, label %._crit_edge.i69.i

._crit_edge.i69.i:                                ; preds = %.lr.ph.i76.i, %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i70.i = phi ptr [ %i.or, %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.td, %.lr.ph.i76.i ] ; 6 uses
  %.025.lcssa.i71.i = phi ptr [ %i.op, %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.tc, %.lr.ph.i76.i ] ; 11 uses
  %i.ou = shl nsw i32 %i.os, 5                    ; 2 uses
  %i.ov = sub nsw i32 %i.om, %i.ou                ; 2 uses
  %i.ow = icmp samesign ult i32 %i.ov, 32
  tail call void @llvm.assume(i1 %i.ow)
  %i.ox = shl nuw nsw i32 %i.ov, 2                ; 3 uses
  %.not.i72.i = icmp eq i32 %i.om, %i.ou
  br i1 %.not.i72.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i69.i
  %i.oy = tail call i32 @llvm.usub.sat.i32(i32 %i.ox, i32 4) ; 2 uses
  %i.oz = lshr exact i32 %i.oy, 2
  %narrow = add nuw nsw i32 %i.oz, 1
  %i.pa = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.oy, 28
  br i1 %min.iters.check, label %.lr.ph.i28.i73.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.pb = tail call i32 @llvm.usub.sat.i32(i32 %i.ox, i32 4)
  %i.pc = or disjoint i32 %i.pb, 3
  %i.pd = zext nneg i32 %i.pc to i64              ; 2 uses
  %i.pe = lshr i64 %i.pd, 2
  %i.pf = getelementptr i8, ptr %.026.lcssa.i70.i, i64 %i.pe
  %i.pg = getelementptr i8, ptr %i.pf, i64 1
  %i.ph = lshr i64 %i.pd, 3
  %i.pi = getelementptr i8, ptr %.025.lcssa.i71.i, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 1
  %bound0 = icmp ult ptr %.026.lcssa.i70.i, %i.pj
  %bound1 = icmp ult ptr %.025.lcssa.i71.i, %i.pg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i73.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec104 = and i64 %i.pa, 1073741816           ; 4 uses
  %i.pk = getelementptr i8, ptr %.026.lcssa.i70.i, i64 %n.vec104
  %i.pl = trunc nuw nsw i64 %n.vec104 to i32
  %i.pm = shl nuw i32 %i.pl, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index105 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next108, %vec.epilog.vector.body ] ; 10 uses
  %vec.ind106 = phi <8 x i32> [ <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>, %vec.epilog.ph ], [ %vec.ind.next109, %vec.epilog.vector.body ] ; 2 uses
  %next.gep107 = getelementptr i8, ptr %.026.lcssa.i70.i, i64 %index105
  %i.pn = lshr exact i64 %index105, 1
  %i.po = lshr exact i64 %index105, 1
  %i.pp = lshr exact i64 %index105, 1
  %i.pq = lshr exact i64 %index105, 1
  %i.pr = lshr exact i64 %index105, 1
  %i.ps = lshr exact i64 %index105, 1
  %i.pt = lshr exact i64 %index105, 1
  %i.pu = lshr exact i64 %index105, 1
  %i.pv = and i64 %i.pn, 2147483644
  %i.pw = and i64 %i.po, 2147483644
  %i.px = and i64 %i.pp, 2147483644
  %i.py = and i64 %i.pq, 2147483644
  %i.pz = and i64 %i.pr, 2147483644
  %i.qa = and i64 %i.ps, 2147483644
  %i.qb = and i64 %i.pt, 2147483644
  %i.qc = and i64 %i.pu, 2147483644
  %i.qd = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.pv
  %i.qe = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.pw
  %i.qf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.px
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 1
  %i.qh = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.py
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 1
  %i.qj = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.pz
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %i.ql = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.qa
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 2
  %i.qn = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.qb
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 3
  %i.qp = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.qc
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
  %i.qr = load i8, ptr %i.qd, align 1, !alias.scope !68
  %i.qs = load i8, ptr %i.qe, align 1, !alias.scope !68
  %i.qt = load i8, ptr %i.qg, align 1, !alias.scope !68
  %i.qu = load i8, ptr %i.qi, align 1, !alias.scope !68
  %i.qv = load i8, ptr %i.qk, align 1, !alias.scope !68
  %i.qw = load i8, ptr %i.qm, align 1, !alias.scope !68
  %i.qx = load i8, ptr %i.qo, align 1, !alias.scope !68
  %i.qy = load i8, ptr %i.qq, align 1, !alias.scope !68
  %i.qz = insertelement <8 x i8> poison, i8 %i.qr, i64 0
  %i.ra = insertelement <8 x i8> %i.qz, i8 %i.qs, i64 1
  %i.rb = insertelement <8 x i8> %i.ra, i8 %i.qt, i64 2
  %i.rc = insertelement <8 x i8> %i.rb, i8 %i.qu, i64 3
  %i.rd = insertelement <8 x i8> %i.rc, i8 %i.qv, i64 4
  %i.re = insertelement <8 x i8> %i.rd, i8 %i.qw, i64 5
  %i.rf = insertelement <8 x i8> %i.re, i8 %i.qx, i64 6
  %i.rg = insertelement <8 x i8> %i.rf, i8 %i.qy, i64 7
  %i.rh = zext <8 x i8> %i.rg to <8 x i32>
  %i.ri = and <8 x i32> %vec.ind106, splat (i32 4)
  %i.rj = lshr <8 x i32> %i.rh, %i.ri
  %i.rk = trunc nuw <8 x i32> %i.rj to <8 x i8>
  %i.rl = and <8 x i8> %i.rk, splat (i8 15)
  store <8 x i8> %i.rl, ptr %next.gep107, align 1, !tbaa !11, !alias.scope !69, !noalias !68
  %index.next108 = add nuw i64 %index105, 8       ; 2 uses
  %vec.ind.next109 = add nuw nsw <8 x i32> %vec.ind106, splat (i32 32)
  %i.rm = icmp eq i64 %index.next108, %n.vec104
  br i1 %i.rm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n110 = icmp eq i64 %n.vec104, %i.pa
  br i1 %cmp.n110, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i73.i.preheader

.lr.ph.i28.i73.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.024.i.i74.i.ph = phi ptr [ %.026.lcssa.i70.i, %vector.memcheck ], [ %.026.lcssa.i70.i, %iter.check ], [ %i.pk, %vec.epilog.middle.block ]
  %.02223.i.i75.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %i.pm, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i73.i

.lr.ph.i28.i73.i:                                 ; preds = %.lr.ph.i28.i73.i.preheader, %.lr.ph.i28.i73.i
  %.024.i.i74.i = phi ptr [ %i.rx, %.lr.ph.i28.i73.i ], [ %.024.i.i74.i.ph, %.lr.ph.i28.i73.i.preheader ] ; 2 uses
  %.02223.i.i75.i = phi i32 [ %i.ro, %.lr.ph.i28.i73.i ], [ %.02223.i.i75.i.ph, %.lr.ph.i28.i73.i.preheader ] ; 3 uses
  %i.rn = lshr i32 %.02223.i.i75.i, 3
  %i.ro = add nuw nsw i32 %.02223.i.i75.i, 4      ; 2 uses
  %i.rp = zext nneg i32 %i.rn to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %.025.lcssa.i71.i, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1
  %i.rs = zext i8 %i.rr to i32
  %i.rt = and i32 %.02223.i.i75.i, 4
  %i.ru = lshr i32 %i.rs, %i.rt
  %i.rv = trunc nuw i32 %i.ru to i8
  %i.rw = and i8 %i.rv, 15
  store i8 %i.rw, ptr %.024.i.i74.i, align 1, !tbaa !11
  %i.rx = getelementptr inbounds nuw i8, ptr %.024.i.i74.i, i64 1
  %i.ry = icmp samesign ult i32 %i.ro, %i.ox
  br i1 %i.ry, label %.lr.ph.i28.i73.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, !llvm.loop !52

.lr.ph.i76.i:                                     ; preds = %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i76.i
  %.032.i77.i = phi i32 [ %i.te, %.lr.ph.i76.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02531.i78.i = phi ptr [ %i.tc, %.lr.ph.i76.i ], [ %i.op, %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 5 uses
  %.02630.i79.i = phi ptr [ %i.td, %.lr.ph.i76.i ], [ %i.or, %_ZN5arrow8internal12unpack_exactILi4ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.rz = load i32, ptr %.02531.i78.i, align 1
  %i.sa = insertelement <8 x i32> poison, i32 %i.rz, i64 0
  %i.sb = shufflevector <8 x i32> %i.sa, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sc = lshr <8 x i32> %i.sb, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.sd = getelementptr inbounds nuw i8, ptr %.02531.i78.i, i64 4
  %i.se = load i32, ptr %i.sd, align 1
  %i.sf = insertelement <8 x i32> poison, i32 %i.se, i64 0
  %i.sg = shufflevector <8 x i32> %i.sf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sh = lshr <8 x i32> %i.sg, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.si = getelementptr inbounds nuw i8, ptr %.02531.i78.i, i64 8
  %i.sj = load i32, ptr %i.si, align 1
  %i.sk = insertelement <8 x i32> poison, i32 %i.sj, i64 0
  %i.sl = shufflevector <8 x i32> %i.sk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sm = lshr <8 x i32> %i.sl, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.sn = getelementptr inbounds nuw i8, ptr %.02531.i78.i, i64 12
  %i.so = load i32, ptr %i.sn, align 1
  %i.sp = insertelement <8 x i32> poison, i32 %i.so, i64 0
  %i.sq = shufflevector <8 x i32> %i.sp, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sr = lshr <8 x i32> %i.sq, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ss = bitcast <8 x i32> %i.sc to <32 x i8>
  %i.st = and <32 x i8> %i.ss, <i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison>
  %i.su = bitcast <8 x i32> %i.sh to <32 x i8>
  %i.sv = and <32 x i8> %i.su, <i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison>
  %i.sw = shufflevector <32 x i8> %i.st, <32 x i8> %i.sv, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.sw, ptr %.02630.i79.i, align 1, !tbaa !11
  %i.sx = bitcast <8 x i32> %i.sm to <32 x i8>
  %i.sy = and <32 x i8> %i.sx, <i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison>
  %8 = getelementptr inbounds nuw i8, ptr %.02630.i79.i, i64 16
  %i.sz = bitcast <8 x i32> %i.sr to <32 x i8>
  %i.ta = and <32 x i8> %i.sz, <i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison>
  %i.tb = shufflevector <32 x i8> %i.sy, <32 x i8> %i.ta, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.tb, ptr %8, align 1, !tbaa !11
  %i.tc = getelementptr inbounds nuw i8, ptr %.02531.i78.i, i64 16 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.02630.i79.i, i64 32 ; 2 uses
  %i.te = add nuw nsw i32 %.032.i77.i, 1          ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.te, %i.os
  br i1 %exitcond.not.i80.i, label %._crit_edge.i69.i, label %.lr.ph.i76.i, !llvm.loop !53

bb.k:                                             ; preds = %bb.a
  %i.tf = mul nsw i32 %2, 5
  %i.tg = add nsw i32 %4, %i.tf
  %i.th = icmp sgt i32 %2, 0
  br i1 %i.th, label %.lr.ph.i.i100.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i100.i:                                  ; preds = %bb.k, %bb.l
  %.026.i.i101.i = phi ptr [ %i.tx, %bb.l ], [ %1, %bb.k ] ; 2 uses
  %.02325.i.i102.i = phi i32 [ %i.tk, %bb.l ], [ %4, %bb.k ] ; 5 uses
  %i.ti = srem i32 %.02325.i.i102.i, 8            ; 2 uses
  %i.tj = sdiv i32 %.02325.i.i102.i, 8            ; 2 uses
  %.not.i.i103.i = icmp eq i32 %i.ti, 0
  br i1 %.not.i.i103.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i100.i
  %i.tk = add nsw i32 %.02325.i.i102.i, 5         ; 3 uses
  %i.tl = add nsw i32 %.02325.i.i102.i, 4
  %i.tm = sdiv i32 %i.tl, 8
  %i.tn = sub nsw i32 %i.tm, %i.tj                ; 2 uses
  %i.to = add nsw i32 %i.tn, 1
  %i.tp = icmp slt i32 %i.tn, 2
  tail call void @llvm.assume(i1 %i.tp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8, !tbaa !13
  %i.tq = sext i32 %i.tj to i64
  %i.tr = getelementptr inbounds i8, ptr %0, i64 %i.tq
  %i.ts = sext i32 %i.to to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr readonly align 1 %i.tr, i64 %i.ts, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i104.i = load i64, ptr %i.g, align 8, !tbaa !13
  %i.tt = zext nneg i32 %i.ti to i64
  %i.tu = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i104.i, %i.tt
  %i.tv = trunc i64 %i.tu to i8
  %i.tw = and i8 %i.tv, 31
  store i8 %i.tw, ptr %.026.i.i101.i, align 1, !tbaa !11
  %i.tx = getelementptr inbounds nuw i8, ptr %.026.i.i101.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ty = icmp slt i32 %i.tk, %i.tg
  br i1 %i.ty, label %.lr.ph.i.i100.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !54

_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i100.i, %bb.k
  %.023.lcssa.i.i86.i = phi i32 [ %4, %bb.k ], [ %.02325.i.i102.i, %.lr.ph.i.i100.i ], [ %i.tk, %bb.l ]
  %i.tz = sub nsw i32 %.023.lcssa.i.i86.i, %4
  %i.ua = sdiv i32 %i.tz, 5                       ; 3 uses
  %i.ub = mul nsw i32 %i.ua, 5
  %i.uc = add nsw i32 %i.ub, %4
  %i.ud = sub nsw i32 %2, %i.ua                   ; 4 uses
  %i.ue = sdiv i32 %i.uc, 8
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds i8, ptr %0, i64 %i.uf ; 2 uses
  %i.uh = sext i32 %i.ua to i64
  %i.ui = getelementptr inbounds i8, ptr %1, i64 %i.uh ; 2 uses
  %i.uj = sdiv i32 %i.ud, 32                      ; 2 uses
  %i.uk = icmp sgt i32 %i.ud, 31
  br i1 %i.uk, label %.lr.ph.i95.i, label %._crit_edge.i87.i

._crit_edge.i87.i:                                ; preds = %.lr.ph.i95.i, %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i88.i = phi ptr [ %i.ui, %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.xi, %.lr.ph.i95.i ]
  %.025.lcssa.i89.i = phi ptr [ %i.ug, %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.xh, %.lr.ph.i95.i ]
  %i.ul = shl nsw i32 %i.uj, 5                    ; 2 uses
  %i.um = sub nsw i32 %i.ud, %i.ul                ; 2 uses
  %i.un = icmp samesign ult i32 %i.um, 32
  tail call void @llvm.assume(i1 %i.un)
  %i.uo = mul nuw nsw i32 %i.um, 5
  %.not.i90.i = icmp eq i32 %i.ud, %i.ul
  br i1 %.not.i90.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i91.i

.lr.ph.i28.i91.i:                                 ; preds = %._crit_edge.i87.i, %.lr.ph.i28.i91.i
  %.024.i.i92.i = phi ptr [ %i.ve, %.lr.ph.i28.i91.i ], [ %.026.lcssa.i88.i, %._crit_edge.i87.i ] ; 2 uses
  %.02223.i.i93.i = phi i32 [ %i.uq, %.lr.ph.i28.i91.i ], [ 0, %._crit_edge.i87.i ] ; 4 uses
  %i.up = lshr i32 %.02223.i.i93.i, 3             ; 2 uses
  %i.uq = add nuw nsw i32 %.02223.i.i93.i, 5      ; 2 uses
  %i.ur = add nuw nsw i32 %.02223.i.i93.i, 4
  %i.us = lshr i32 %i.ur, 3
  %i.ut = sub nsw i32 %i.us, %i.up                ; 2 uses
  %i.uu = add nsw i32 %i.ut, 1
  %i.uv = icmp slt i32 %i.ut, 2
  tail call void @llvm.assume(i1 %i.uv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8, !tbaa !13
  %i.uw = zext nneg i32 %i.up to i64
  %i.ux = getelementptr inbounds nuw i8, ptr %.025.lcssa.i89.i, i64 %i.uw
  %i.uy = sext i32 %i.uu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %i.ux, i64 %i.uy, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i94.i = load i64, ptr %i.f, align 8, !tbaa !13
  %i.uz = and i32 %.02223.i.i93.i, 7
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i94.i, %i.va
  %i.vc = trunc i64 %i.vb to i8
  %i.vd = and i8 %i.vc, 31
  store i8 %i.vd, ptr %.024.i.i92.i, align 1, !tbaa !11
  %i.ve = getelementptr inbounds nuw i8, ptr %.024.i.i92.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.vf = icmp samesign ult i32 %i.uq, %i.uo
  br i1 %i.vf, label %.lr.ph.i28.i91.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, !llvm.loop !55

.lr.ph.i95.i:                                     ; preds = %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i95.i
  %.032.i96.i = phi i32 [ %i.xj, %.lr.ph.i95.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02531.i97.i = phi ptr [ %i.xh, %.lr.ph.i95.i ], [ %i.ug, %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 6 uses
  %.02630.i98.i = phi ptr [ %i.xi, %.lr.ph.i95.i ], [ %i.ui, %_ZN5arrow8internal12unpack_exactILi5ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.vg = load i32, ptr %.02531.i97.i, align 1    ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.02531.i97.i, i64 4
  %i.vi = load i32, ptr %i.vh, align 1            ; 4 uses
  %i.vj = tail call i32 @llvm.fshl.i32(i32 %i.vi, i32 %i.vg, i32 2)
  %i.vk = insertelement <4 x i32> poison, i32 %i.vg, i64 0
  %i.vl = shufflevector <4 x i32> %i.vk, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vm = insertelement <8 x i32> %i.vl, i32 %i.vg, i64 4
  %i.vn = insertelement <8 x i32> %i.vm, i32 %i.vg, i64 5
  %i.vo = insertelement <8 x i32> %i.vn, i32 %i.vj, i64 6
  %i.vp = insertelement <8 x i32> %i.vo, i32 %i.vi, i64 7
  %i.vq = lshr <8 x i32> %i.vp, <i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 0, i32 3>
  %i.vr = getelementptr inbounds nuw i8, ptr %.02531.i97.i, i64 8
  %i.vs = load i32, ptr %i.vr, align 1            ; 8 uses
  %i.vt = tail call i32 @llvm.fshl.i32(i32 %i.vs, i32 %i.vi, i32 4)
  %i.vu = insertelement <4 x i32> poison, i32 %i.vi, i64 0
  %i.vv = shufflevector <4 x i32> %i.vu, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vw = insertelement <8 x i32> %i.vv, i32 %i.vt, i64 4
  %i.vx = insertelement <8 x i32> %i.vw, i32 %i.vs, i64 5
  %i.vy = insertelement <8 x i32> %i.vx, i32 %i.vs, i64 6
  %i.vz = insertelement <8 x i32> %i.vy, i32 %i.vs, i64 7
  %i.wa = lshr <8 x i32> %i.vz, <i32 8, i32 13, i32 18, i32 23, i32 0, i32 1, i32 6, i32 11>
  %i.wb = getelementptr inbounds nuw i8, ptr %.02531.i97.i, i64 12
  %i.wc = load i32, ptr %i.wb, align 1            ; 4 uses
  %i.wd = tail call i32 @llvm.fshl.i32(i32 %i.wc, i32 %i.vs, i32 1)
  %i.we = insertelement <8 x i32> poison, i32 %i.vs, i64 0
  %i.wf = insertelement <8 x i32> %i.we, i32 %i.vs, i64 1
  %i.wg = insertelement <8 x i32> %i.wf, i32 %i.vs, i64 2
  %i.wh = insertelement <8 x i32> %i.wg, i32 %i.wd, i64 3
  %i.wi = insertelement <4 x i32> poison, i32 %i.wc, i64 0
  %i.wj = shufflevector <4 x i32> %i.wi, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wk = shufflevector <8 x i32> %i.wh, <8 x i32> %i.wj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.wl = lshr <8 x i32> %i.wk, <i32 16, i32 21, i32 26, i32 0, i32 4, i32 9, i32 14, i32 19>
  %i.wm = getelementptr inbounds nuw i8, ptr %.02531.i97.i, i64 16
  %i.wn = load i32, ptr %i.wm, align 1            ; 4 uses
  %i.wo = tail call i32 @llvm.fshl.i32(i32 %i.wn, i32 %i.wc, i32 3)
  %i.wp = insertelement <8 x i32> poison, i32 %i.wc, i64 0
  %i.wq = insertelement <8 x i32> %i.wp, i32 %i.wo, i64 1
  %i.wr = insertelement <4 x i32> poison, i32 %i.wn, i64 0
  %i.ws = shufflevector <4 x i32> %i.wr, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wt = shufflevector <8 x i32> %i.wq, <8 x i32> %i.ws, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.wu = insertelement <8 x i32> %i.wt, i32 %i.wn, i64 6
  %i.wv = insertelement <8 x i32> %i.wu, i32 %i.wn, i64 7
  %i.ww = lshr <8 x i32> %i.wv, <i32 24, i32 0, i32 2, i32 7, i32 12, i32 17, i32 22, i32 27>
  %i.wx = bitcast <8 x i32> %i.vq to <32 x i8>
  %i.wy = and <32 x i8> %i.wx, <i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison>
  %i.wz = bitcast <8 x i32> %i.wa to <32 x i8>
  %i.xa = and <32 x i8> %i.wz, <i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison>
  %i.xb = shufflevector <32 x i8> %i.wy, <32 x i8> %i.xa, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.xb, ptr %.02630.i98.i, align 1, !tbaa !11
  %i.xc = bitcast <8 x i32> %i.wl to <32 x i8>
  %i.xd = and <32 x i8> %i.xc, <i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison>
  %9 = getelementptr inbounds nuw i8, ptr %.02630.i98.i, i64 16
  %i.xe = bitcast <8 x i32> %i.ww to <32 x i8>
  %i.xf = and <32 x i8> %i.xe, <i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison, i8 31, i8 poison, i8 poison, i8 poison>
  %i.xg = shufflevector <32 x i8> %i.xd, <32 x i8> %i.xf, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.xg, ptr %9, align 1, !tbaa !11
  %i.xh = getelementptr inbounds nuw i8, ptr %.02531.i97.i, i64 20 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.02630.i98.i, i64 32 ; 2 uses
  %i.xj = add nuw nsw i32 %.032.i96.i, 1          ; 2 uses
  %exitcond.not.i99.i = icmp eq i32 %i.xj, %i.uj
  br i1 %exitcond.not.i99.i, label %._crit_edge.i87.i, label %.lr.ph.i95.i, !llvm.loop !56

bb.m:                                             ; preds = %bb.a
  %i.xk = mul nsw i32 %2, 6
  %i.xl = add nsw i32 %4, %i.xk
  %i.xm = icmp sgt i32 %2, 0
  br i1 %i.xm, label %.lr.ph.i.i119.i, label %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i119.i:                                  ; preds = %bb.m, %bb.n
  %.026.i.i120.i = phi ptr [ %i.yc, %bb.n ], [ %1, %bb.m ] ; 2 uses
  %.02325.i.i121.i = phi i32 [ %i.xp, %bb.n ], [ %4, %bb.m ] ; 5 uses
  %i.xn = srem i32 %.02325.i.i121.i, 8            ; 2 uses
  %i.xo = sdiv i32 %.02325.i.i121.i, 8            ; 2 uses
  %.not.i.i122.i = icmp eq i32 %i.xn, 0
  br i1 %.not.i.i122.i, label %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i119.i
  %i.xp = add nsw i32 %.02325.i.i121.i, 6         ; 3 uses
  %i.xq = add nsw i32 %.02325.i.i121.i, 5
  %i.xr = sdiv i32 %i.xq, 8
  %i.xs = sub nsw i32 %i.xr, %i.xo                ; 2 uses
  %i.xt = add nsw i32 %i.xs, 1
  %i.xu = icmp slt i32 %i.xs, 2
  tail call void @llvm.assume(i1 %i.xu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8, !tbaa !13
  %i.xv = sext i32 %i.xo to i64
  %i.xw = getelementptr inbounds i8, ptr %0, i64 %i.xv
  %i.xx = sext i32 %i.xt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr readonly align 1 %i.xw, i64 %i.xx, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i123.i = load i64, ptr %i.e, align 8, !tbaa !13
  %i.xy = zext nneg i32 %i.xn to i64
  %i.xz = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i123.i, %i.xy
  %i.ya = trunc i64 %i.xz to i8
  %i.yb = and i8 %i.ya, 63
  store i8 %i.yb, ptr %.026.i.i120.i, align 1, !tbaa !11
  %i.yc = getelementptr inbounds nuw i8, ptr %.026.i.i120.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.yd = icmp slt i32 %i.xp, %i.xl
  br i1 %i.yd, label %.lr.ph.i.i119.i, label %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !57

_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.n, %.lr.ph.i.i119.i, %bb.m
  %.023.lcssa.i.i105.i = phi i32 [ %4, %bb.m ], [ %.02325.i.i121.i, %.lr.ph.i.i119.i ], [ %i.xp, %bb.n ]
  %i.ye = sub nsw i32 %.023.lcssa.i.i105.i, %4
  %i.yf = sdiv i32 %i.ye, 6                       ; 3 uses
  %i.yg = mul nsw i32 %i.yf, 6
  %i.yh = add nsw i32 %i.yg, %4
  %i.yi = sub nsw i32 %2, %i.yf                   ; 4 uses
  %i.yj = sdiv i32 %i.yh, 8
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds i8, ptr %0, i64 %i.yk ; 2 uses
  %i.ym = sext i32 %i.yf to i64
  %i.yn = getelementptr inbounds i8, ptr %1, i64 %i.ym ; 2 uses
  %i.yo = sdiv i32 %i.yi, 32                      ; 2 uses
  %i.yp = icmp sgt i32 %i.yi, 31
  br i1 %i.yp, label %.lr.ph.i114.i, label %._crit_edge.i106.i

._crit_edge.i106.i:                               ; preds = %.lr.ph.i114.i, %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i107.i = phi ptr [ %i.yn, %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.abp, %.lr.ph.i114.i ]
  %.025.lcssa.i108.i = phi ptr [ %i.yl, %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.abo, %.lr.ph.i114.i ]
  %i.yq = shl nsw i32 %i.yo, 5                    ; 2 uses
  %i.yr = sub nsw i32 %i.yi, %i.yq                ; 2 uses
  %i.ys = icmp samesign ult i32 %i.yr, 32
  tail call void @llvm.assume(i1 %i.ys)
  %i.yt = mul nuw nsw i32 %i.yr, 6
  %.not.i109.i = icmp eq i32 %i.yi, %i.yq
  br i1 %.not.i109.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i110.i

.lr.ph.i28.i110.i:                                ; preds = %._crit_edge.i106.i, %.lr.ph.i28.i110.i
  %.024.i.i111.i = phi ptr [ %i.zj, %.lr.ph.i28.i110.i ], [ %.026.lcssa.i107.i, %._crit_edge.i106.i ] ; 2 uses
  %.02223.i.i112.i = phi i32 [ %i.yv, %.lr.ph.i28.i110.i ], [ 0, %._crit_edge.i106.i ] ; 4 uses
  %i.yu = lshr i32 %.02223.i.i112.i, 3            ; 2 uses
  %i.yv = add nuw nsw i32 %.02223.i.i112.i, 6     ; 2 uses
  %i.yw = add nuw nsw i32 %.02223.i.i112.i, 4
  %i.yx = lshr i32 %i.yw, 3
  %i.yy = sub nsw i32 %i.yx, %i.yu                ; 2 uses
  %i.yz = add nsw i32 %i.yy, 1
  %i.za = icmp slt i32 %i.yy, 2
  tail call void @llvm.assume(i1 %i.za)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !tbaa !13
  %i.zb = zext nneg i32 %i.yu to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i108.i, i64 %i.zb
  %i.zd = sext i32 %i.yz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 1 %i.zc, i64 %i.zd, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i113.i = load i64, ptr %i.d, align 8, !tbaa !13
  %i.ze = and i32 %.02223.i.i112.i, 6
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i113.i, %i.zf
  %i.zh = trunc i64 %i.zg to i8
  %i.zi = and i8 %i.zh, 63
  store i8 %i.zi, ptr %.024.i.i111.i, align 1, !tbaa !11
  %i.zj = getelementptr inbounds nuw i8, ptr %.024.i.i111.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.zk = icmp samesign ult i32 %i.yv, %i.yt
  br i1 %i.zk, label %.lr.ph.i28.i110.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, !llvm.loop !58

.lr.ph.i114.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i114.i
  %.032.i115.i = phi i32 [ %i.abq, %.lr.ph.i114.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02531.i116.i = phi ptr [ %i.abo, %.lr.ph.i114.i ], [ %i.yl, %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 7 uses
  %.02630.i117.i = phi ptr [ %i.abp, %.lr.ph.i114.i ], [ %i.yn, %_ZN5arrow8internal12unpack_exactILi6ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.zl = load i32, ptr %.02531.i116.i, align 1   ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.02531.i116.i, i64 4
  %i.zn = load i32, ptr %i.zm, align 1            ; 6 uses
  %i.zo = tail call i32 @llvm.fshl.i32(i32 %i.zn, i32 %i.zl, i32 2)
  %i.zp = insertelement <4 x i32> poison, i32 %i.zl, i64 0
  %i.zq = shufflevector <4 x i32> %i.zp, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zr = insertelement <8 x i32> %i.zq, i32 %i.zl, i64 4
  %i.zs = insertelement <8 x i32> %i.zr, i32 %i.zo, i64 5
  %i.zt = insertelement <8 x i32> %i.zs, i32 %i.zn, i64 6
  %i.zu = insertelement <8 x i32> %i.zt, i32 %i.zn, i64 7
  %i.zv = lshr <8 x i32> %i.zu, <i32 0, i32 6, i32 12, i32 18, i32 24, i32 0, i32 4, i32 10>
  %i.zw = getelementptr inbounds nuw i8, ptr %.02531.i116.i, i64 8
  %i.zx = load i32, ptr %i.zw, align 1            ; 3 uses
  %i.zy = tail call i32 @llvm.fshl.i32(i32 %i.zx, i32 %i.zn, i32 4)
  %i.zz = insertelement <8 x i32> poison, i32 %i.zn, i64 0
  %i.aaa = insertelement <8 x i32> %i.zz, i32 %i.zn, i64 1
  %i.aab = insertelement <8 x i32> %i.aaa, i32 %i.zy, i64 2
  %i.aac = insertelement <4 x i32> poison, i32 %i.zx, i64 0
  %i.aad = shufflevector <4 x i32> %i.aac, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aae = shufflevector <8 x i32> %i.aab, <8 x i32> %i.aad, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.aaf = insertelement <8 x i32> %i.aae, i32 %i.zx, i64 7
  %i.aag = lshr <8 x i32> %i.aaf, <i32 16, i32 22, i32 0, i32 2, i32 8, i32 14, i32 20, i32 26>
  %i.aah = getelementptr inbounds nuw i8, ptr %.02531.i116.i, i64 12
  %i.aai = load i32, ptr %i.aah, align 1          ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.02531.i116.i, i64 16
  %i.aak = load i32, ptr %i.aaj, align 1          ; 6 uses
  %i.aal = tail call i32 @llvm.fshl.i32(i32 %i.aak, i32 %i.aai, i32 2)
  %i.aam = insertelement <4 x i32> poison, i32 %i.aai, i64 0
  %i.aan = shufflevector <4 x i32> %i.aam, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aao = insertelement <8 x i32> %i.aan, i32 %i.aai, i64 4
  %i.aap = insertelement <8 x i32> %i.aao, i32 %i.aal, i64 5
  %i.aaq = insertelement <8 x i32> %i.aap, i32 %i.aak, i64 6
  %i.aar = insertelement <8 x i32> %i.aaq, i32 %i.aak, i64 7
  %i.aas = lshr <8 x i32> %i.aar, <i32 0, i32 6, i32 12, i32 18, i32 24, i32 0, i32 4, i32 10>
  %i.aat = getelementptr inbounds nuw i8, ptr %.02531.i116.i, i64 20
  %i.aau = load i32, ptr %i.aat, align 1          ; 3 uses
  %i.aav = tail call i32 @llvm.fshl.i32(i32 %i.aau, i32 %i.aak, i32 4)
  %i.aaw = insertelement <8 x i32> poison, i32 %i.aak, i64 0
  %i.aax = insertelement <8 x i32> %i.aaw, i32 %i.aak, i64 1
  %i.aay = insertelement <8 x i32> %i.aax, i32 %i.aav, i64 2
  %i.aaz = insertelement <4 x i32> poison, i32 %i.aau, i64 0
  %i.aba = shufflevector <4 x i32> %i.aaz, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abb = shufflevector <8 x i32> %i.aay, <8 x i32> %i.aba, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.abc = insertelement <8 x i32> %i.abb, i32 %i.aau, i64 7
  %i.abd = lshr <8 x i32> %i.abc, <i32 16, i32 22, i32 0, i32 2, i32 8, i32 14, i32 20, i32 26>
  %i.abe = bitcast <8 x i32> %i.zv to <32 x i8>
  %i.abf = and <32 x i8> %i.abe, <i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison>
  %i.abg = bitcast <8 x i32> %i.aag to <32 x i8>
  %i.abh = and <32 x i8> %i.abg, <i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison>
  %i.abi = shufflevector <32 x i8> %i.abf, <32 x i8> %i.abh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.abi, ptr %.02630.i117.i, align 1, !tbaa !11
  %i.abj = bitcast <8 x i32> %i.aas to <32 x i8>
  %i.abk = and <32 x i8> %i.abj, <i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison>
  %10 = getelementptr inbounds nuw i8, ptr %.02630.i117.i, i64 16
  %i.abl = bitcast <8 x i32> %i.abd to <32 x i8>
  %i.abm = and <32 x i8> %i.abl, <i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison>
  %i.abn = shufflevector <32 x i8> %i.abk, <32 x i8> %i.abm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.abn, ptr %10, align 1, !tbaa !11
  %i.abo = getelementptr inbounds nuw i8, ptr %.02531.i116.i, i64 24 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.02630.i117.i, i64 32 ; 2 uses
  %i.abq = add nuw nsw i32 %.032.i115.i, 1        ; 2 uses
  %exitcond.not.i118.i = icmp eq i32 %i.abq, %i.yo
  br i1 %exitcond.not.i118.i, label %._crit_edge.i106.i, label %.lr.ph.i114.i, !llvm.loop !59

bb.o:                                             ; preds = %bb.a
  %i.abr = mul nsw i32 %2, 7
  %i.abs = add nsw i32 %4, %i.abr
  %i.abt = icmp sgt i32 %2, 0
  br i1 %i.abt, label %.lr.ph.i.i138.i, label %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i138.i:                                  ; preds = %bb.o, %bb.p
  %.026.i.i139.i = phi ptr [ %i.acj, %bb.p ], [ %1, %bb.o ] ; 2 uses
  %.02325.i.i140.i = phi i32 [ %i.abw, %bb.p ], [ %4, %bb.o ] ; 5 uses
  %i.abu = srem i32 %.02325.i.i140.i, 8           ; 2 uses
  %i.abv = sdiv i32 %.02325.i.i140.i, 8           ; 2 uses
  %.not.i.i141.i = icmp eq i32 %i.abu, 0
  br i1 %.not.i.i141.i, label %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i138.i
  %i.abw = add nsw i32 %.02325.i.i140.i, 7        ; 3 uses
  %i.abx = add nsw i32 %.02325.i.i140.i, 6
  %i.aby = sdiv i32 %i.abx, 8
  %i.abz = sub nsw i32 %i.aby, %i.abv             ; 2 uses
  %i.aca = add nsw i32 %i.abz, 1
  %i.acb = icmp slt i32 %i.abz, 2
  tail call void @llvm.assume(i1 %i.acb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !13
  %i.acc = sext i32 %i.abv to i64
  %i.acd = getelementptr inbounds i8, ptr %0, i64 %i.acc
  %i.ace = sext i32 %i.aca to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr readonly align 1 %i.acd, i64 %i.ace, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i142.i = load i64, ptr %i.c, align 8, !tbaa !13
  %i.acf = zext nneg i32 %i.abu to i64
  %i.acg = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i142.i, %i.acf
  %i.ach = trunc i64 %i.acg to i8
  %i.aci = and i8 %i.ach, 127
  store i8 %i.aci, ptr %.026.i.i139.i, align 1, !tbaa !11
  %i.acj = getelementptr inbounds nuw i8, ptr %.026.i.i139.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ack = icmp slt i32 %i.abw, %i.abs
  br i1 %i.ack, label %.lr.ph.i.i138.i, label %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i, !llvm.loop !60

_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i: ; preds = %bb.p, %.lr.ph.i.i138.i, %bb.o
  %.023.lcssa.i.i124.i = phi i32 [ %4, %bb.o ], [ %.02325.i.i140.i, %.lr.ph.i.i138.i ], [ %i.abw, %bb.p ]
  %i.acl = sub nsw i32 %.023.lcssa.i.i124.i, %4
  %i.acm = sdiv i32 %i.acl, 7                     ; 3 uses
  %i.acn = mul nsw i32 %i.acm, 7
  %i.aco = add nsw i32 %i.acn, %4
  %i.acp = sub nsw i32 %2, %i.acm                 ; 4 uses
  %i.acq = sdiv i32 %i.aco, 8
  %i.acr = sext i32 %i.acq to i64
  %i.acs = getelementptr inbounds i8, ptr %0, i64 %i.acr ; 2 uses
  %i.act = sext i32 %i.acm to i64
  %i.acu = getelementptr inbounds i8, ptr %1, i64 %i.act ; 2 uses
  %i.acv = sdiv i32 %i.acp, 32                    ; 2 uses
  %i.acw = icmp sgt i32 %i.acp, 31
  br i1 %i.acw, label %.lr.ph.i133.i, label %._crit_edge.i125.i

._crit_edge.i125.i:                               ; preds = %.lr.ph.i133.i, %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i126.i = phi ptr [ %i.acu, %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.afg, %.lr.ph.i133.i ]
  %.025.lcssa.i127.i = phi ptr [ %i.acs, %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i ], [ %i.aff, %.lr.ph.i133.i ]
  %i.acx = shl nsw i32 %i.acv, 5                  ; 2 uses
  %i.acy = sub nsw i32 %i.acp, %i.acx             ; 2 uses
  %i.acz = icmp samesign ult i32 %i.acy, 32
  tail call void @llvm.assume(i1 %i.acz)
  %i.ada = mul nuw nsw i32 %i.acy, 7
  %.not.i128.i = icmp eq i32 %i.acp, %i.acx
  br i1 %.not.i128.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, label %.lr.ph.i28.i129.i

.lr.ph.i28.i129.i:                                ; preds = %._crit_edge.i125.i, %.lr.ph.i28.i129.i
  %.024.i.i130.i = phi ptr [ %i.adq, %.lr.ph.i28.i129.i ], [ %.026.lcssa.i126.i, %._crit_edge.i125.i ] ; 2 uses
  %.02223.i.i131.i = phi i32 [ %i.adc, %.lr.ph.i28.i129.i ], [ 0, %._crit_edge.i125.i ] ; 4 uses
  %i.adb = lshr i32 %.02223.i.i131.i, 3           ; 2 uses
  %i.adc = add nuw nsw i32 %.02223.i.i131.i, 7    ; 2 uses
  %i.add = add nuw nsw i32 %.02223.i.i131.i, 6
  %i.ade = lshr i32 %i.add, 3
  %i.adf = sub nsw i32 %i.ade, %i.adb             ; 2 uses
  %i.adg = add nsw i32 %i.adf, 1
  %i.adh = icmp slt i32 %i.adf, 2
  tail call void @llvm.assume(i1 %i.adh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.adi = zext nneg i32 %i.adb to i64
  %i.adj = getelementptr inbounds nuw i8, ptr %.025.lcssa.i127.i, i64 %i.adi
  %i.adk = sext i32 %i.adg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.adj, i64 %i.adk, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i132.i = load i64, ptr %i.b, align 8, !tbaa !13
  %i.adl = and i32 %.02223.i.i131.i, 7
  %i.adm = zext nneg i32 %i.adl to i64
  %i.adn = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i132.i, %i.adm
  %i.ado = trunc i64 %i.adn to i8
  %i.adp = and i8 %i.ado, 127
  store i8 %i.adp, ptr %.024.i.i130.i, align 1, !tbaa !11
  %i.adq = getelementptr inbounds nuw i8, ptr %.024.i.i130.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.adr = icmp samesign ult i32 %i.adc, %i.ada
  br i1 %i.adr, label %.lr.ph.i28.i129.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit, !llvm.loop !61

.lr.ph.i133.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i, %.lr.ph.i133.i
  %.032.i134.i = phi i32 [ %i.afh, %.lr.ph.i133.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i ]
  %.02531.i135.i = phi ptr [ %i.aff, %.lr.ph.i133.i ], [ %i.acs, %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 5 uses
  %.02630.i136.i = phi ptr [ %i.afg, %.lr.ph.i133.i ], [ %i.acu, %_ZN5arrow8internal12unpack_exactILi7ELb1EhEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.02531.i135.i, i64 4
  %i.adt = load <4 x i32>, ptr %.02531.i135.i, align 1 ; 2 uses
  %i.adu = load <4 x i32>, ptr %i.ads, align 1    ; 5 uses
  %i.adv = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.adu, <4 x i32> %i.adt, <4 x i32> <i32 4, i32 1, i32 5, i32 2>) ; 3 uses
  %i.adw = shufflevector <4 x i32> %i.adt, <4 x i32> %i.adv, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 poison, i32 poison, i32 poison>
  %i.adx = shufflevector <4 x i32> %i.adu, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ady = shufflevector <8 x i32> %i.adw, <8 x i32> %i.adx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 8, i32 8>
  %i.adz = lshr <8 x i32> %i.ady, <i32 0, i32 7, i32 14, i32 21, i32 0, i32 3, i32 10, i32 17>
  %i.aea = shufflevector <4 x i32> %i.adv, <4 x i32> %i.adu, <8 x i32> <i32 4, i32 1, i32 5, i32 5, i32 5, i32 2, i32 6, i32 6>
  %i.aeb = lshr <8 x i32> %i.aea, <i32 24, i32 0, i32 6, i32 13, i32 20, i32 0, i32 2, i32 9>
  %i.aec = getelementptr inbounds nuw i8, ptr %.02531.i135.i, i64 20
  %i.aed = load i32, ptr %i.aec, align 1          ; 6 uses
  %i.aee = extractelement <4 x i32> %i.adu, i64 3
  %i.aef = tail call i32 @llvm.fshl.i32(i32 %i.aed, i32 %i.aee, i32 6)
  %i.aeg = shufflevector <4 x i32> %i.adv, <4 x i32> %i.adu, <8 x i32> <i32 6, i32 6, i32 3, i32 7, i32 7, i32 7, i32 poison, i32 poison>
  %i.aeh = insertelement <8 x i32> %i.aeg, i32 %i.aef, i64 6
  %i.aei = insertelement <8 x i32> %i.aeh, i32 %i.aed, i64 7
  %i.aej = lshr <8 x i32> %i.aei, <i32 16, i32 23, i32 0, i32 5, i32 12, i32 19, i32 0, i32 1>
  %i.aek = getelementptr inbounds nuw i8, ptr %.02531.i135.i, i64 24
  %i.ael = load i32, ptr %i.aek, align 1          ; 2 uses
  %i.aem = tail call i32 @llvm.fshl.i32(i32 %i.ael, i32 %i.aed, i32 3)
  %i.aen = insertelement <8 x i32> poison, i32 %i.aed, i64 0
  %i.aeo = insertelement <8 x i32> %i.aen, i32 %i.aed, i64 1
  %i.aep = insertelement <8 x i32> %i.aeo, i32 %i.aed, i64 2
  %i.aeq = insertelement <8 x i32> %i.aep, i32 %i.aem, i64 3
  %i.aer = insertelement <4 x i32> poison, i32 %i.ael, i64 0
  %i.aes = shufflevector <4 x i32> %i.aer, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aet = shufflevector <8 x i32> %i.aeq, <8 x i32> %i.aes, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aeu = lshr <8 x i32> %i.aet, <i32 8, i32 15, i32 22, i32 0, i32 4, i32 11, i32 18, i32 25>
  %i.aev = bitcast <8 x i32> %i.adz to <32 x i8>
  %i.aew = and <32 x i8> %i.aev, <i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison>
  %i.aex = bitcast <8 x i32> %i.aeb to <32 x i8>
  %i.aey = and <32 x i8> %i.aex, <i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison>
  %i.aez = shufflevector <32 x i8> %i.aew, <32 x i8> %i.aey, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.aez, ptr %.02630.i136.i, align 1, !tbaa !11
  %i.afa = bitcast <8 x i32> %i.aej to <32 x i8>
  %i.afb = and <32 x i8> %i.afa, <i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison>
  %11 = getelementptr inbounds nuw i8, ptr %.02630.i136.i, i64 16
  %i.afc = bitcast <8 x i32> %i.aeu to <32 x i8>
  %i.afd = and <32 x i8> %i.afc, <i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison, i8 127, i8 poison, i8 poison, i8 poison>
  %i.afe = shufflevector <32 x i8> %i.afb, <32 x i8> %i.afd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  store <16 x i8> %i.afe, ptr %11, align 1, !tbaa !11
  %i.aff = getelementptr inbounds nuw i8, ptr %.02531.i135.i, i64 28 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.02630.i136.i, i64 32 ; 2 uses
  %i.afh = add nuw nsw i32 %.032.i134.i, 1        ; 2 uses
  %exitcond.not.i137.i = icmp eq i32 %i.afh, %i.acv
  br i1 %exitcond.not.i137.i, label %._crit_edge.i125.i, label %.lr.ph.i133.i, !llvm.loop !62

bb.q:                                             ; preds = %bb.a
  %i.afi = shl nsw i32 %2, 3
  %i.afj = add nsw i32 %4, %i.afi
  %i.afk = icmp sgt i32 %2, 0
  br i1 %i.afk, label %.lr.ph.i.i144.i, label %_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT1_ii.exit.i

.lr.ph.i.i144.i:                                  ; preds = %bb.q, %bb.r
  %.026.i.i145.i = phi ptr [ %i.afz, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %.02325.i.i146.i = phi i32 [ %i.afn, %bb.r ], [ %4, %bb.q ] ; 5 uses
  %i.afl = srem i32 %.02325.i.i146.i, 8           ; 2 uses
  %i.afm = sdiv i32 %.02325.i.i146.i, 8           ; 2 uses
  %.not.i.i147.i = icmp eq i32 %i.afl, 0
  br i1 %.not.i.i147.i, label %_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT1_ii.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i144.i
  %i.afn = add nsw i32 %.02325.i.i146.i, 8        ; 3 uses
  %i.afo = add nsw i32 %.02325.i.i146.i, 7
  %i.afp = sdiv i32 %i.afo, 8
  %i.afq = sub nsw i32 %i.afp, %i.afm             ; 2 uses
  %i.afr = add nsw i32 %i.afq, 1
  %i.afs = icmp slt i32 %i.afq, 2
  tail call void @llvm.assume(i1 %i.afs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.aft = sext i32 %i.afm to i64
  %i.afu = getelementptr inbounds i8, ptr %0, i64 %i.aft
  %i.afv = sext i32 %i.afr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr readonly align 1 %i.afu, i64 %i.afv, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i148.i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.afw = zext nneg i32 %i.afl to i64
  %i.afx = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i148.i, %i.afw
  %i.afy = trunc i64 %i.afx to i8
  store i8 %i.afy, ptr %.026.i.i145.i, align 1, !tbaa !11
  %i.afz = getelementptr inbounds nuw i8, ptr %.026.i.i145.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aga = icmp slt i32 %i.afn, %i.afj
  br i1 %i.aga, label %.lr.ph.i.i144.i, label %_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT1_ii.exit.i, !llvm.loop !63

_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT1_ii.exit.i: ; preds = %bb.r, %.lr.ph.i.i144.i, %bb.q
  %.023.lcssa.i.i143.i = phi i32 [ %4, %bb.q ], [ %.02325.i.i146.i, %.lr.ph.i.i144.i ], [ %i.afn, %bb.r ]
  %i.agb = sub nsw i32 %.023.lcssa.i.i143.i, %4
  %i.agc = sdiv i32 %i.agb, 8                     ; 3 uses
  %i.agd = shl nsw i32 %i.agc, 3
  %i.age = add nsw i32 %i.agd, %4
  %i.agf = sub nsw i32 %2, %i.agc
  %i.agg = sdiv i32 %i.age, 8
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds i8, ptr %0, i64 %i.agh
  %i.agj = sext i32 %i.agc to i64
  %i.agk = getelementptr inbounds i8, ptr %1, i64 %i.agj
  %i.agl = sext i32 %i.agf to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agk, ptr readonly align 1 %i.agi, i64 %i.agl, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit

_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT0_iii.exit: ; preds = %.lr.ph.i28.i129.i, %.lr.ph.i28.i110.i, %.lr.ph.i28.i91.i, %.lr.ph.i28.i73.i, %.lr.ph.i28.i55.i, %.lr.ph.i28.i41.i, %.lr.ph.i28.i.i, %vec.epilog.middle.block, %middle.block141, %vec.epilog.middle.block162, %middle.block197, %vec.epilog.middle.block218, %bb.a, %bb.b, %._crit_edge.i.i, %._crit_edge.i37.i, %._crit_edge.i51.i, %._crit_edge.i69.i, %._crit_edge.i87.i, %._crit_edge.i106.i, %._crit_edge.i125.i, %_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEhEEvPKhPT1_ii.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal11unpack_avx2ItEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  switch i32 %3, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.m
    i32 7, label %bb.o
    i32 8, label %bb.q
    i32 9, label %bb.s
    i32 10, label %bb.u
    i32 11, label %bb.w
    i32 12, label %bb.y
    i32 13, label %bb.aa
    i32 14, label %bb.ac
    i32 15, label %bb.ae
    i32 16, label %bb.ag
  ]

bb.b:                                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64
  %i.ab = shl nsw i64 %i.aa, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1, i8 0, i64 %i.ab, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = add nsw i32 %4, %2
  %i.ad = icmp sgt i32 %2, 0
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.026.i.i.i = phi ptr [ %i.ao, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02325.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %4, %bb.c ] ; 4 uses
  %i.ae = srem i32 %.02325.i.i.i, 8               ; 2 uses
  %i.af = sdiv i32 %.02325.i.i.i, 8
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = add nsw i32 %.02325.i.i.i, 1            ; 3 uses
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = lshr i32 %i.ak, %i.ae
  %i.am = trunc nuw nsw i32 %i.al to i16
  %i.an = and i16 %i.am, 1
  store i16 %i.an, ptr %.026.i.i.i, align 2, !tbaa !136
  %i.ao = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 2
  %i.ap = icmp slt i32 %i.ag, %i.ac
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !70

_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i, %bb.c
  %.023.lcssa.i.i.i = phi i32 [ %4, %bb.c ], [ %.02325.i.i.i, %.lr.ph.i.i.i ], [ %i.ag, %bb.d ] ; 4 uses
  %i.aq = sub nsw i32 %.023.lcssa.i.i.i, %4       ; 2 uses
  %i.ar = sub nsw i32 %2, %i.aq                   ; 4 uses
  %i.as = sdiv i32 %.023.lcssa.i.i.i, 8
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at ; 2 uses
  %i.av = sext i32 %i.aq to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = sdiv i32 %i.ar, 32                      ; 2 uses
  %i.ay = icmp sgt i32 %i.ar, 31
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i.i = phi ptr [ %i.aw, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.fh, %.lr.ph.i.i ] ; 8 uses
  %.025.lcssa.i.i = phi ptr [ %i.au, %_ZN5arrow8internal12unpack_exactILi1ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.fg, %.lr.ph.i.i ] ; 8 uses
  %i.az = shl nsw i32 %i.ax, 5                    ; 4 uses
  %i.ba = sub nsw i32 %i.ar, %i.az                ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, 32
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i = icmp eq i32 %i.ar, %i.az
  br i1 %.not.i.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %iter.check361

iter.check361:                                    ; preds = %._crit_edge.i.i
  %i.bc = add i32 %4, %2
  %i.bd = xor i32 %.023.lcssa.i.i.i, -1
  %i.be = add i32 %i.bc, %i.bd
  %i.bf = sub i32 %i.be, %i.az                    ; 3 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 5 uses
  %min.iters.check331 = icmp ult i32 %i.bf, 7
  br i1 %min.iters.check331, label %.lr.ph.i28.i.i.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %iter.check361
  %i.bi = add i32 %4, %2
  %i.bj = xor i32 %.023.lcssa.i.i.i, -1
  %i.bk = add i32 %i.bi, %i.bj
  %i.bl = sub i32 %i.bk, %i.az
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 1
  %i.bo = getelementptr i8, ptr %.026.lcssa.i.i, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 2
  %i.bq = lshr i64 %i.bm, 3
  %i.br = getelementptr i8, ptr %.025.lcssa.i.i, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 1
  %bound0333 = icmp ult ptr %.026.lcssa.i.i, %i.bs
  %bound1334 = icmp ult ptr %.025.lcssa.i.i, %i.bp
  %found.conflict335 = and i1 %bound0333, %bound1334
  br i1 %found.conflict335, label %.lr.ph.i28.i.i.preheader, label %vector.main.loop.iter.check336

vector.main.loop.iter.check336:                   ; preds = %vector.memcheck332
  %min.iters.check337 = icmp ult i32 %i.bf, 31
  br i1 %min.iters.check337, label %vec.epilog.ph365, label %vector.ph338

end_hunk_0
