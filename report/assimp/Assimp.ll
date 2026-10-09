Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.h

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.al, align 8
  br label %bb.ak

bb.h:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ap, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #50 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.at, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.aw = sext i32 %spec.select to i64            ; 40 uses
  %i.ax = icmp slt i32 %spec.select, %i.av        ; 4 uses
  %i.ay = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.az = icmp sgt i32 %i.av, 0
  %i.ba = sext i32 %i.av to i64                   ; 13 uses
  %i.bb = icmp eq i32 %6, 8
  %i.bc = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bd = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 4 uses
  %i.be = icmp sgt i32 %4, 0                      ; 4 uses
  %i.bf = zext i32 %.030.i305 to i64              ; 16 uses
  %i.bg = zext i32 %i.z to i64
  %i.bh = icmp eq i32 %7, 0
  %i.bi = sext i32 %6 to i64
  %i.bj = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.bi
  %wide.trip.count460 = zext i32 %5 to i64
  %i.bk = zext nneg i32 %i.ah to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.av to i64     ; 8 uses
  %i.bl = sub nsw i64 %i.ba, %i.aw                ; 28 uses
  %i.bm = add i32 %i.z, -1                        ; 3 uses
  %i.bn = add nuw nsw i64 %i.bf, 1
  %min.iters.check699 = icmp ult i64 %i.bl, 8
  %i.bo = add nsw i64 %i.aw, -1
  %diff.check697 = icmp ult i64 %i.bo, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bl, 32
  %i.bp = and i64 %i.bl, 24
  %n.vec703 = and i64 %i.bl, -32                  ; 4 uses
  %i.bq = add nsw i64 %n.vec703, %i.aw
  %cmp.n712 = icmp eq i64 %i.bl, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bp, 0
  %n.vec720 = and i64 %i.bl, -8                   ; 3 uses
  %i.br = add nsw i64 %n.vec720, %i.aw
  %cmp.n727 = icmp eq i64 %i.bl, %n.vec720
  %i.bs = add nsw i64 %i.ba, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bt, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bl, 4
  %i.bu = add nsw i64 %i.aw, -1
  %diff.check626 = icmp ult i64 %i.bu, 15
  %min.iters.check634 = icmp ult i64 %i.bl, 16
  %i.bv = and i64 %i.bl, 12
  %n.vec636 = and i64 %i.bl, -16                  ; 4 uses
  %i.bw = add nsw i64 %n.vec636, %i.aw
  %cmp.n645 = icmp eq i64 %i.bl, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bv, 0
  %n.vec653 = and i64 %i.bl, -4                   ; 3 uses
  %i.bx = add nsw i64 %n.vec653, %i.aw
  %cmp.n662 = icmp eq i64 %i.bl, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.by = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.by, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bz = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bl, 4
  %i.ca = add nsw i64 %i.aw, -1
  %diff.check561 = icmp ult i64 %i.ca, 15
  %min.iters.check565 = icmp ult i64 %i.bl, 16
  %i.cb = and i64 %i.bl, 12
  %n.vec567 = and i64 %i.bl, -16                  ; 4 uses
  %i.cc = add nsw i64 %n.vec567, %i.aw
  %cmp.n575 = icmp eq i64 %i.bl, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.cb, 0
  %n.vec583 = and i64 %i.bl, -4                   ; 3 uses
  %i.cd = add nsw i64 %n.vec583, %i.aw
  %cmp.n591 = icmp eq i64 %i.bl, %n.vec583
  %i.ce = add nsw i64 %i.ba, -1
  %min.iters.check530 = icmp ult i32 %i.av, 4
  %min.iters.check532 = icmp ult i32 %i.av, 32
  %i.cf = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.cf, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bl, 8
  %i.cg = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.cg, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bl, 32
  %i.ch = and i64 %i.bl, 24
  %n.vec509 = and i64 %i.bl, -32                  ; 4 uses
  %i.ci = add nsw i64 %n.vec509, %i.aw
  %cmp.n518 = icmp eq i64 %i.bl, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  %n.vec520 = and i64 %i.bl, -8                   ; 3 uses
  %i.cj = add nsw i64 %n.vec520, %i.aw
  %cmp.n525 = icmp eq i64 %i.bl, %n.vec520
  %i.ck = add nsw i64 %i.ba, -1
  %xtraiter761 = and i32 %4, 1
  %i.cl = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.z, 3                  ; 3 uses
  %i.cm = icmp ult i32 %i.z, 4
  %unroll_iter767 = and i32 %i.z, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.cn = and i64 %i.bf, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.cn, 0
  %i.co = shl nuw nsw i64 %i.bf, 2
  %i.cp = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bf, -1
  %i.cq = icmp eq i32 %.030.i305, 0
  %i.cr = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.cr, 2147483640              ; 3 uses
  %i.cs = sub nsw i64 %i.bf, %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.cr
  %xtraiter772 = and i32 %i.z, 1
  %i.ct = icmp eq i32 %i.bm, 0
  %unroll_iter776 = and i32 %i.z, -2
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.z to i1
  %xtraiter778 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bm, 0
  %unroll_iter782 = and i32 %i.z, -2
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.z to i1
  %xtraiter784 = and i32 %i.z, 1
  %i.cv = icmp eq i32 %i.bm, 0
  %unroll_iter788 = and i32 %i.z, -2
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.z to i1
  %i.cw = and i64 %i.bf, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cw, 0
  %i.cx = shl nuw nsw i64 %i.bf, 2
  %i.cy = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bf, -1
  %i.cz = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.da = icmp ult i32 %4, 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qj, %.loopexit ] ; 2 uses
  %i.db = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.dc = trunc i64 %indvars.iv457 to i1
  %i.dd = select i1 %i.dc, i64 %i.bk, i64 0       ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dd ; 75 uses
  %i.df = and i32 %i.db, 1
  %i.dg = xor i32 %i.df, 1
  %i.dh = mul nuw nsw i32 %i.dg, %i.ah
  %i.di = zext nneg i32 %i.dh to i64              ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.di ; 30 uses
  %i.dk = load ptr, ptr %i.u, align 8
  %i.dl = mul i32 %i.e, %i.db
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dm ; 33 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dp = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dq = icmp ugt i8 %i.dp, 4
  br i1 %i.dq, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ds = zext nneg i8 %i.dp to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.du, %bb.o ], [ %i.dp, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.dv = sub nsw i64 %i.di, %i.dd
  %diff.check665 = icmp ugt i64 %i.dv, -32
  %or.cond729 = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %index673 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dw, align 1
  %wide.load675 = load <16 x i8>, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index673 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dy, align 1
  %wide.load677 = load <16 x i8>, ptr %i.dz, align 1
  %i.ea = add <16 x i8> %wide.load676, %wide.load674
  %i.eb = add <16 x i8> %wide.load677, %wide.load675
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 %index673 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <16 x i8> %i.ea, ptr %i.ec, align 1
  store <16 x i8> %i.eb, ptr %i.ed, align 1
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.ee = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.ee, label %middle.block679, label %vector.body672, !llvm.loop !164

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !18

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.eg, align 1
  %i.eh = add <4 x i8> %wide.load691, %wide.load690
  %i.ei = getelementptr inbounds nuw i8, ptr %i.de, i64 %index689
  store <4 x i8> %i.eh, ptr %i.ei, align 1
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ej, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !165

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421.prol
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421.prol
  %i.en = load i8, ptr %i.em, align 1
  %.narrow286.prol = add i8 %i.en, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.eo, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !166

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ep = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %i.er = sub nsw i64 %i.di, %i.dd
  %diff.check594 = icmp ugt i64 %i.er, -32
  %or.cond730 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond730, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %index602 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.es, align 1
  %wide.load604 = load <16 x i8>, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index602 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.eu, align 1
  %wide.load606 = load <16 x i8>, ptr %i.ev, align 1
  %i.ew = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.ex = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.ey = add <16 x i8> %i.ew, %wide.load603
  %i.ez = add <16 x i8> %i.ex, %wide.load604
  %i.fa = getelementptr inbounds nuw i8, ptr %i.de, i64 %index602 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <16 x i8> %i.ey, ptr %i.fa, align 1
  store <16 x i8> %i.ez, ptr %i.fb, align 1
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.fc, label %middle.block608, label %vector.body601, !llvm.loop !167

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !18

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.fd, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.fe, align 1
  %i.ff = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fg = add <4 x i8> %i.ff, %wide.load619
  %i.fh = getelementptr inbounds nuw i8, ptr %i.de, i64 %index618
  store <4 x i8> %i.fg, ptr %i.fh, align 1
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fi, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !168

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv431.ph = phi i64 [ 0, %iter.check611 ], [ %n.vec600, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 6 uses
  br i1 %lcmp.mod750.not, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv431.ph
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431.ph
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = lshr i8 %i.fm, 1
  %.narrow290.prol = add i8 %i.fn, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.fo, align 1
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.fp = icmp eq i64 %indvars.iv431.ph, %i.bz
  br i1 %i.fp, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.p
  br i1 %i.az, label %iter.check545, label %.loopexit348

iter.check545:                                    ; preds = %.preheader349
end_hunk_0
begin_hunk_1_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %i.hz = load i8, ptr %i.hy, align 1
  %.narrow292 = add i8 %i.hz, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.ia, align 1
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442
  %i.ie = load i8, ptr %i.id, align 1
  %.narrow292.1 = add i8 %i.ie, %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.if, align 1
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442.1
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.1
  %i.ij = load i8, ptr %i.ii, align 1
  %.narrow292.2 = add i8 %i.ij, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.ik, align 1
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442.2
  %i.im = load i8, ptr %i.il, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.2
  %i.io = load i8, ptr %i.in, align 1
  %.narrow292.3 = add i8 %i.io, %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.ip, align 1
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !175

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block608, %vec.epilog.middle.block622, %.preheader353
  br i1 %i.ax, label %iter.check578, label %.loopexit348

iter.check578:                                    ; preds = %.preheader351
  br i1 %min.iters.check563, label %.lr.ph366.preheader, label %vector.memcheck559

vector.memcheck559:                               ; preds = %iter.check578
  %i.iq = sub nsw i64 %i.di, %i.dd
  %diff.check560 = icmp ugt i64 %i.iq, -16
  %conflict.rdx = or i1 %diff.check560, %diff.check561
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %vector.memcheck559
  br i1 %min.iters.check565, label %vec.epilog.ph582, label %vector.body568

vector.body568:                                   ; preds = %vector.main.loop.iter.check564, %vector.body568
  %index569 = phi i64 [ %index.next573, %vector.body568 ], [ 0, %vector.main.loop.iter.check564 ] ; 3 uses
  %i.ir = add i64 %index569, %i.aw                ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %i.do, i64 %i.ir
  %wide.load570 = load <16 x i8>, ptr %i.is, align 1
  %i.it = getelementptr inbounds i8, ptr %i.dj, i64 %i.ir
  %wide.load571 = load <16 x i8>, ptr %i.it, align 1
  %i.iu = zext <16 x i8> %wide.load571 to <16 x i16>
  %i.iv = getelementptr inbounds i8, ptr %i.de, i64 %index569
  %wide.load572 = load <16 x i8>, ptr %i.iv, align 1
  %i.iw = zext <16 x i8> %wide.load572 to <16 x i16>
  %i.ix = add nuw nsw <16 x i16> %i.iw, %i.iu
  %i.iy = lshr <16 x i16> %i.ix, splat (i16 1)
  %i.iz = trunc nuw <16 x i16> %i.iy to <16 x i8>
  %i.ja = add <16 x i8> %wide.load570, %i.iz
  %i.jb = getelementptr inbounds i8, ptr %i.de, i64 %i.ir
  store <16 x i8> %i.ja, ptr %i.jb, align 1
  %index.next573 = add nuw i64 %index569, 16      ; 2 uses
  %i.jc = icmp eq i64 %index.next573, %n.vec567
  br i1 %i.jc, label %middle.block574, label %vector.body568, !llvm.loop !176

middle.block574:                                  ; preds = %vector.body568
  br i1 %cmp.n575, label %.loopexit348, label %vec.epilog.iter.check580

vec.epilog.iter.check580:                         ; preds = %middle.block574
  br i1 %min.epilog.iters.check581, label %.lr.ph366.preheader, label %vec.epilog.ph582, !prof !16

vec.epilog.ph582:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check580
  %vec.epilog.resume.val576 = phi i64 [ %n.vec567, %vec.epilog.iter.check580 ], [ 0, %vector.main.loop.iter.check564 ]
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph582
  %index585 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next589, %vec.epilog.vector.body584 ] ; 3 uses
  %i.jd = add i64 %index585, %i.aw                ; 3 uses
  %i.je = getelementptr inbounds i8, ptr %i.do, i64 %i.jd
  %wide.load586 = load <4 x i8>, ptr %i.je, align 1
  %i.jf = getelementptr inbounds i8, ptr %i.dj, i64 %i.jd
  %wide.load587 = load <4 x i8>, ptr %i.jf, align 1
  %i.jg = zext <4 x i8> %wide.load587 to <4 x i16>
  %i.jh = getelementptr inbounds i8, ptr %i.de, i64 %index585
  %wide.load588 = load <4 x i8>, ptr %i.jh, align 1
  %i.ji = zext <4 x i8> %wide.load588 to <4 x i16>
  %i.jj = add nuw nsw <4 x i16> %i.ji, %i.jg
  %i.jk = lshr <4 x i16> %i.jj, splat (i16 1)
  %i.jl = trunc nuw <4 x i16> %i.jk to <4 x i8>
  %i.jm = add <4 x i8> %wide.load586, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.de, i64 %i.jd
  store <4 x i8> %i.jm, ptr %i.jn, align 1
  %index.next589 = add nuw i64 %index585, 4       ; 2 uses
  %i.jo = icmp eq i64 %index.next589, %n.vec583
  br i1 %i.jo, label %vec.epilog.middle.block590, label %vec.epilog.vector.body584, !llvm.loop !177

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body584
  br i1 %cmp.n591, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %iter.check578, %vector.memcheck559, %vec.epilog.iter.check580, %vec.epilog.middle.block590
  %indvars.iv436.ph = phi i64 [ %i.aw, %iter.check578 ], [ %i.aw, %vector.memcheck559 ], [ %i.cc, %vec.epilog.iter.check580 ], [ %i.cd, %vec.epilog.middle.block590 ] ; 8 uses
  %i.jp = sub nsw i64 %i.ba, %indvars.iv436.ph
  %xtraiter752 = and i64 %i.jp, 1
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  br i1 %lcmp.mod753.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.jq = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv436.ph
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436.ph
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i16
  %i.jv = sub nsw i64 %indvars.iv436.ph, %i.aw
  %i.jw = getelementptr inbounds i8, ptr %i.de, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1
  %i.jy = zext i8 %i.jx to i16
  %i.jz = add nuw nsw i16 %i.jy, %i.ju
  %i.ka = lshr i16 %i.jz, 1
  %.tr287.prol = trunc nuw i16 %i.ka to i8
  %.narrow288.prol = add i8 %i.jr, %.tr287.prol
  %i.kb = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.kb, align 1
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.kc = icmp eq i64 %indvars.iv436.ph, %i.ce
  br i1 %i.kc, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv431
  %i.ke = load i8, ptr %i.kd, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = lshr i8 %i.kg, 1
  %.narrow290 = add i8 %i.kh, %i.ke
  %i.ki = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.ki, align 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next432
  %i.kk = load i8, ptr %i.kj, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next432
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = lshr i8 %i.km, 1
  %.narrow290.1 = add i8 %i.kn, %i.kk
  %i.ko = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.ko, align 1
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !178

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.kp = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv436
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = zext i8 %i.ks to i16
  %i.ku = sub nsw i64 %indvars.iv436, %i.aw
  %i.kv = getelementptr inbounds i8, ptr %i.de, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = zext i8 %i.kw to i16
  %i.ky = add nuw nsw i16 %i.kx, %i.kt
  %i.kz = lshr i16 %i.ky, 1
  %.tr287 = trunc nuw i16 %i.kz to i8
  %.narrow288 = add i8 %i.kq, %.tr287
  %i.la = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.la, align 1
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.lb = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv.next437
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv.next437
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i16
  %i.lg = sub nsw i64 %indvars.iv.next437, %i.aw
  %i.lh = getelementptr inbounds i8, ptr %i.de, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = zext i8 %i.li to i16
  %i.lk = add nuw nsw i16 %i.lj, %i.lf
  %i.ll = lshr i16 %i.lk, 1
  %.tr287.1 = trunc nuw i16 %i.ll to i8
  %.narrow288.1 = add i8 %i.lc, %.tr287.1
  %i.lm = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.lm, align 1
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.ba
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !179

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block679, %vec.epilog.middle.block693, %.preheader356
  br i1 %i.ax, label %iter.check648, label %.loopexit348

iter.check648:                                    ; preds = %.preheader354
  br i1 %min.iters.check632, label %.lr.ph362.preheader, label %vector.memcheck625

vector.memcheck625:                               ; preds = %iter.check648
  %i.ln = sub nsw i64 %i.di, %i.dd                ; 2 uses
  %diff.check627 = icmp ugt i64 %i.ln, -16
  %conflict.rdx628 = or i1 %diff.check626, %diff.check627
  %i.lo = sub nsw i64 %i.ln, %i.aw
  %diff.check629 = icmp ugt i64 %i.lo, -16
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  br i1 %conflict.rdx630, label %.lr.ph362.preheader, label %vector.main.loop.iter.check633

vector.main.loop.iter.check633:                   ; preds = %vector.memcheck625
  br i1 %min.iters.check634, label %vec.epilog.ph652, label %vector.body637

vector.body637:                                   ; preds = %vector.main.loop.iter.check633, %vector.body637
  %index638 = phi i64 [ %index.next643, %vector.body637 ], [ 0, %vector.main.loop.iter.check633 ] ; 4 uses
  %i.lp = add i64 %index638, %i.aw                ; 3 uses
  %i.lq = getelementptr inbounds i8, ptr %i.do, i64 %i.lp
  %wide.load639 = load <16 x i8>, ptr %i.lq, align 1
  %i.lr = getelementptr inbounds i8, ptr %i.de, i64 %index638
  %wide.load640 = load <16 x i8>, ptr %i.lr, align 1
  %i.ls = zext <16 x i8> %wide.load640 to <16 x i32> ; 3 uses
  %i.lt = getelementptr inbounds i8, ptr %i.dj, i64 %i.lp
  %wide.load641 = load <16 x i8>, ptr %i.lt, align 1
  %i.lu = zext <16 x i8> %wide.load641 to <16 x i32> ; 3 uses
  %i.lv = getelementptr inbounds i8, ptr %i.dj, i64 %index638
  %wide.load642 = load <16 x i8>, ptr %i.lv, align 1
  %i.lw = zext <16 x i8> %wide.load642 to <16 x i32> ; 2 uses
  %i.lx = mul nuw nsw <16 x i32> %i.lw, splat (i32 3)
  %i.ly = add nuw nsw <16 x i32> %i.lu, %i.ls
  %i.lz = sub nsw <16 x i32> %i.lx, %i.ly         ; 2 uses
  %i.ma = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ls, <16 x i32> %i.lu) ; 2 uses
  %i.mb = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.ls, <16 x i32> %i.lu) ; 2 uses
  %i.mc = icmp sgt <16 x i32> %i.mb, %i.lz
  %i.md = select <16 x i1> %i.mc, <16 x i32> %i.lw, <16 x i32> %i.ma
  %i.me = icmp sgt <16 x i32> %i.lz, %i.ma
  %i.mf = select <16 x i1> %i.me, <16 x i32> %i.md, <16 x i32> %i.mb
  %i.mg = trunc nuw <16 x i32> %i.mf to <16 x i8>
  %i.mh = add <16 x i8> %wide.load639, %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.de, i64 %i.lp
  store <16 x i8> %i.mh, ptr %i.mi, align 1
  %index.next643 = add nuw i64 %index638, 16      ; 2 uses
  %i.mj = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.mj, label %middle.block644, label %vector.body637, !llvm.loop !180

middle.block644:                                  ; preds = %vector.body637
  br i1 %cmp.n645, label %.loopexit348, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block644
  br i1 %min.epilog.iters.check651, label %.lr.ph362.preheader, label %vec.epilog.ph652, !prof !16

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check633, %vec.epilog.iter.check650
  %vec.epilog.resume.val646 = phi i64 [ %n.vec636, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check633 ]
  br label %vec.epilog.vector.body654

vec.epilog.vector.body654:                        ; preds = %vec.epilog.vector.body654, %vec.epilog.ph652
  %index655 = phi i64 [ %vec.epilog.resume.val646, %vec.epilog.ph652 ], [ %index.next660, %vec.epilog.vector.body654 ] ; 4 uses
  %i.mk = add i64 %index655, %i.aw                ; 3 uses
  %i.ml = getelementptr inbounds i8, ptr %i.do, i64 %i.mk
  %wide.load656 = load <4 x i8>, ptr %i.ml, align 1
  %i.mm = getelementptr inbounds i8, ptr %i.de, i64 %index655
  %wide.load657 = load <4 x i8>, ptr %i.mm, align 1
  %i.mn = zext <4 x i8> %wide.load657 to <4 x i32> ; 3 uses
  %i.mo = getelementptr inbounds i8, ptr %i.dj, i64 %i.mk
  %wide.load658 = load <4 x i8>, ptr %i.mo, align 1
  %i.mp = zext <4 x i8> %wide.load658 to <4 x i32> ; 3 uses
  %i.mq = getelementptr inbounds i8, ptr %i.dj, i64 %index655
  %wide.load659 = load <4 x i8>, ptr %i.mq, align 1
  %i.mr = zext <4 x i8> %wide.load659 to <4 x i32> ; 2 uses
  %i.ms = mul nuw nsw <4 x i32> %i.mr, splat (i32 3)
  %i.mt = add nuw nsw <4 x i32> %i.mp, %i.mn
  %i.mu = sub nsw <4 x i32> %i.ms, %i.mt          ; 2 uses
  %i.mv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mn, <4 x i32> %i.mp) ; 2 uses
  %i.mw = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mn, <4 x i32> %i.mp) ; 2 uses
  %i.mx = icmp sgt <4 x i32> %i.mw, %i.mu
  %i.my = select <4 x i1> %i.mx, <4 x i32> %i.mr, <4 x i32> %i.mv
  %i.mz = icmp sgt <4 x i32> %i.mu, %i.mv
  %i.na = select <4 x i1> %i.mz, <4 x i32> %i.my, <4 x i32> %i.mw
  %i.nb = trunc nuw <4 x i32> %i.na to <4 x i8>
  %i.nc = add <4 x i8> %wide.load656, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.de, i64 %i.mk
  store <4 x i8> %i.nc, ptr %i.nd, align 1
  %index.next660 = add nuw i64 %index655, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next660, %n.vec653
  br i1 %i.ne, label %vec.epilog.middle.block661, label %vec.epilog.vector.body654, !llvm.loop !181

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body654
  br i1 %cmp.n662, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %iter.check648, %vector.memcheck625, %vec.epilog.iter.check650, %vec.epilog.middle.block661
  %indvars.iv426.ph = phi i64 [ %i.aw, %iter.check648 ], [ %i.aw, %vector.memcheck625 ], [ %i.bw, %vec.epilog.iter.check650 ], [ %i.bx, %vec.epilog.middle.block661 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421
  %i.ng = load i8, ptr %i.nf, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421
  %i.ni = load i8, ptr %i.nh, align 1
  %.narrow286 = add i8 %i.ni, %i.ng
  %i.nj = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nj, align 1
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422
  %i.nl = load i8, ptr %i.nk, align 1
  %i.nm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422
  %i.nn = load i8, ptr %i.nm, align 1
  %.narrow286.1 = add i8 %i.nn, %i.nl
  %i.no = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.no, align 1
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422.1
  %i.nq = load i8, ptr %i.np, align 1
  %i.nr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.1
  %i.ns = load i8, ptr %i.nr, align 1
  %.narrow286.2 = add i8 %i.ns, %i.nq
  %i.nt = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.nt, align 1
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422.2
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.2
  %i.nx = load i8, ptr %i.nw, align 1
  %.narrow286.3 = add i8 %i.nx, %i.nv
  %i.ny = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.ny, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !182

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.nz = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv426
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = sub nsw i64 %indvars.iv426, %i.aw       ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %i.de, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1
  %i.oe = zext i8 %i.od to i32                    ; 3 uses
  %i.of = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv426
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = zext i8 %i.og to i32                    ; 3 uses
  %i.oi = getelementptr inbounds i8, ptr %i.dj, i64 %i.ob
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = zext i8 %i.oj to i32                    ; 2 uses
  %i.ol = mul nuw nsw i32 %i.ok, 3
  %i.om = add nuw nsw i32 %i.oh, %i.oe
  %i.on = sub nsw i32 %i.ol, %i.om                ; 2 uses
  %i.oo = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.oe, i32 range(i32 0, 256) %i.oh) ; 2 uses
  %i.op = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.oe, i32 range(i32 0, 256) %i.oh) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.op, %i.on
  %i.oq = select i1 %.not.i303, i32 %i.ok, i32 %i.oo
  %.not20.i = icmp sgt i32 %i.on, %i.oo
  %i.or = select i1 %.not20.i, i32 %i.oq, i32 %i.op
  %.tr = trunc nuw i32 %i.or to i8
  %.narrow284 = add i8 %i.oa, %.tr
  %i.os = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.os, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.ba
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !183

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %i.do, i64 %i.aw, i1 false)
  br i1 %i.ax, label %iter.check715, label %.loopexit348

iter.check715:                                    ; preds = %bb.s
  br i1 %or.cond733, label %.lr.ph.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %iter.check715
  br i1 %min.iters.check701, label %vec.epilog.ph719, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 3 uses
  %i.ot = add i64 %index705, %i.aw                ; 2 uses
  %i.ou = getelementptr inbounds i8, ptr %i.do, i64 %i.ot ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.ou, align 1
  %wide.load707 = load <16 x i8>, ptr %i.ov, align 1
  %i.ow = getelementptr inbounds i8, ptr %i.de, i64 %index705 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.ow, align 1
  %wide.load709 = load <16 x i8>, ptr %i.ox, align 1
  %i.oy = lshr <16 x i8> %wide.load708, splat (i8 1)
  %i.oz = lshr <16 x i8> %wide.load709, splat (i8 1)
  %i.pa = add <16 x i8> %i.oy, %wide.load706
  %i.pb = add <16 x i8> %i.oz, %wide.load707
  %i.pc = getelementptr inbounds i8, ptr %i.de, i64 %i.ot ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store <16 x i8> %i.pa, ptr %i.pc, align 1
  store <16 x i8> %i.pb, ptr %i.pd, align 1
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.pe = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.pe, label %middle.block711, label %vector.body704, !llvm.loop !184

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.loopexit348, label %vec.epilog.iter.check717

vec.epilog.iter.check717:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check718, label %.lr.ph.preheader, label %vec.epilog.ph719, !prof !200

vec.epilog.ph719:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check717
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check717 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph719
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph719 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 3 uses
  %i.pf = add i64 %index722, %i.aw                ; 2 uses
end_hunk_1
