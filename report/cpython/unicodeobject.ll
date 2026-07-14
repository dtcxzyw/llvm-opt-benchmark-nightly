inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_copy_characters:bb.a
bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr i8, ptr %0, i64 56
  %.val4.i279 = load ptr, ptr %i.al, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit280

_PyUnicode_DATA.exit280:                          ; preds = %bb.o, %bb.p
  %.0.i278 = phi ptr [ %.0.i.i277, %bb.o ], [ %.val4.i279, %bb.p ]
  %i.am = getelementptr [2 x i8], ptr %.0.i278, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_PyUnicode_DATA.exit280
  %i.an = and i32 %i.c, 64
  %.not.i.i283 = icmp eq i32 %i.an, 0
  %.0.v.i.i284 = select i1 %.not.i.i283, i64 56, i64 40
  %.0.i.i285 = getelementptr i8, ptr %2, i64 %.0.v.i.i284
  br label %_PyUnicode_DATA.exit296

bb.r:                                             ; preds = %_PyUnicode_DATA.exit280
  %i.ao = getelementptr i8, ptr %2, i64 56
  %.val4.i287 = load ptr, ptr %i.ao, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit296

_PyUnicode_DATA.exit296:                          ; preds = %bb.q, %bb.r
  %.0.i.i285.pn = phi ptr [ %.0.i.i285, %bb.q ], [ %.val4.i287, %bb.r ] ; 2 uses
  %.0.i.i285.pn700 = ptrtoint ptr %.0.i.i285.pn to i64 ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i285.pn, i64 %3 ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %4     ; 2 uses
  %i.ar = and i64 %4, -4
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar  ; 2 uses
  %i.at = icmp ult ptr %i.ap, %i.as
  br i1 %i.at, label %.lr.ph488, label %.preheader

.preheader:                                       ; preds = %.lr.ph488, %_PyUnicode_DATA.exit296
  %.0231.lcssa = phi ptr [ %i.ap, %_PyUnicode_DATA.exit296 ], [ %i.cg, %.lr.ph488 ] ; 10 uses
  %.0229.lcssa = phi ptr [ %i.am, %_PyUnicode_DATA.exit296 ], [ %i.ch, %.lr.ph488 ] ; 8 uses
  %.0231.lcssa701 = ptrtoint ptr %.0231.lcssa to i64 ; 3 uses
  %i.au = icmp ult ptr %.0231.lcssa, %i.aq
  br i1 %i.au, label %iter.check726, label %ucs1lib_find_max_char.exit

iter.check726:                                    ; preds = %.preheader
  %i.av = add i64 %4, %3
  %i.aw = add i64 %i.av, %.0.i.i285.pn700
  %i.ax = sub i64 %i.aw, %.0231.lcssa701          ; 7 uses
  %min.iters.check708 = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check708, label %.lr.ph493.preheader, label %vector.memcheck699

vector.memcheck699:                               ; preds = %iter.check726
  %i.ay = add i64 %4, %3
  %i.az = add i64 %i.ay, %.0.i.i285.pn700         ; 2 uses
  %i.ba = sub i64 %i.az, %.0231.lcssa701
  %i.bb = shl i64 %i.ba, 1
  %scevgep702 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bb
  %i.bc = sub i64 %i.az, %.0231.lcssa701
  %scevgep703 = getelementptr i8, ptr %.0231.lcssa, i64 %i.bc
  %bound0704 = icmp ult ptr %.0229.lcssa, %scevgep703
  %bound1705 = icmp ult ptr %.0231.lcssa, %scevgep702
  %found.conflict706 = and i1 %bound0704, %bound1705
  br i1 %found.conflict706, label %.lr.ph493.preheader, label %vector.main.loop.iter.check709

vector.main.loop.iter.check709:                   ; preds = %vector.memcheck699
  %min.iters.check710 = icmp ult i64 %i.ax, 16
  br i1 %min.iters.check710, label %vec.epilog.ph730, label %vector.ph711

vector.ph711:                                     ; preds = %vector.main.loop.iter.check709
  %n.mod.vf712 = and i64 %i.ax, 12
  %n.vec713 = and i64 %i.ax, -16                  ; 5 uses
  %i.bd = shl i64 %n.vec713, 1
  %i.be = getelementptr i8, ptr %.0229.lcssa, i64 %i.bd
  %i.bf = getelementptr i8, ptr %.0231.lcssa, i64 %n.vec713
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph711
  %index715 = phi i64 [ 0, %vector.ph711 ], [ %index.next720, %vector.body714 ] ; 3 uses
  %i.bg = shl i64 %index715, 1
  %next.gep716 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bg ; 2 uses
  %next.gep717 = getelementptr i8, ptr %.0231.lcssa, i64 %index715 ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep717, i64 8
  %wide.load718 = load <8 x i8>, ptr %next.gep717, align 1, !tbaa !205, !alias.scope !222
  %wide.load719 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !205, !alias.scope !222
  %i.bi = zext <8 x i8> %wide.load718 to <8 x i16>
  %i.bj = zext <8 x i8> %wide.load719 to <8 x i16>
  %i.bk = getelementptr i8, ptr %next.gep716, i64 16
  store <8 x i16> %i.bi, ptr %next.gep716, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  store <8 x i16> %i.bj, ptr %i.bk, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  %index.next720 = add nuw i64 %index715, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next720, %n.vec713
  br i1 %i.bl, label %middle.block721, label %vector.body714, !llvm.loop !227

middle.block721:                                  ; preds = %vector.body714
  %cmp.n722 = icmp eq i64 %i.ax, %n.vec713
  br i1 %cmp.n722, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check728

vec.epilog.iter.check728:                         ; preds = %middle.block721
  %min.epilog.iters.check729 = icmp eq i64 %n.mod.vf712, 0
  br i1 %min.epilog.iters.check729, label %.lr.ph493.preheader, label %vec.epilog.ph730, !prof !228

vec.epilog.ph730:                                 ; preds = %vector.main.loop.iter.check709, %vec.epilog.iter.check728
  %vec.epilog.resume.val723 = phi i64 [ %n.vec713, %vec.epilog.iter.check728 ], [ 0, %vector.main.loop.iter.check709 ]
  %n.vec732 = and i64 %i.ax, -4                   ; 4 uses
  %i.bm = shl i64 %n.vec732, 1
  %i.bn = getelementptr i8, ptr %.0229.lcssa, i64 %i.bm
  %i.bo = getelementptr i8, ptr %.0231.lcssa, i64 %n.vec732
  br label %vec.epilog.vector.body733

vec.epilog.vector.body733:                        ; preds = %vec.epilog.vector.body733, %vec.epilog.ph730
  %index734 = phi i64 [ %vec.epilog.resume.val723, %vec.epilog.ph730 ], [ %index.next738, %vec.epilog.vector.body733 ] ; 3 uses
  %i.bp = shl i64 %index734, 1
  %next.gep735 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bp
  %next.gep736 = getelementptr i8, ptr %.0231.lcssa, i64 %index734
  %wide.load737 = load <4 x i8>, ptr %next.gep736, align 1, !tbaa !205, !alias.scope !222
  %i.bq = zext <4 x i8> %wide.load737 to <4 x i16>
  store <4 x i16> %i.bq, ptr %next.gep735, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  %index.next738 = add nuw i64 %index734, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next738, %n.vec732
  br i1 %i.br, label %vec.epilog.middle.block739, label %vec.epilog.vector.body733, !llvm.loop !229

vec.epilog.middle.block739:                       ; preds = %vec.epilog.vector.body733
  %cmp.n740 = icmp eq i64 %i.ax, %n.vec732
  br i1 %cmp.n740, label %ucs1lib_find_max_char.exit, label %.lr.ph493.preheader

.lr.ph493.preheader:                              ; preds = %vector.memcheck699, %iter.check726, %vec.epilog.iter.check728, %vec.epilog.middle.block739
  %.1230492.ph = phi ptr [ %.0229.lcssa, %iter.check726 ], [ %.0229.lcssa, %vector.memcheck699 ], [ %i.be, %vec.epilog.iter.check728 ], [ %i.bn, %vec.epilog.middle.block739 ]
  %.1232491.ph = phi ptr [ %.0231.lcssa, %iter.check726 ], [ %.0231.lcssa, %vector.memcheck699 ], [ %i.bf, %vec.epilog.iter.check728 ], [ %i.bo, %vec.epilog.middle.block739 ]
  br label %.lr.ph493

.lr.ph488:                                        ; preds = %_PyUnicode_DATA.exit296, %.lr.ph488
  %.0229487 = phi ptr [ %i.ch, %.lr.ph488 ], [ %i.am, %_PyUnicode_DATA.exit296 ] ; 5 uses
  %.0231486 = phi ptr [ %i.cg, %.lr.ph488 ], [ %i.ap, %_PyUnicode_DATA.exit296 ] ; 5 uses
  %i.bs = load i8, ptr %.0231486, align 1, !tbaa !205
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %.0229487, align 2, !tbaa !208
  %i.bu = getelementptr i8, ptr %.0231486, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !205
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr i8, ptr %.0229487, i64 2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !208
  %i.by = getelementptr i8, ptr %.0231486, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !205
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr i8, ptr %.0229487, i64 4
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !208
  %i.cc = getelementptr i8, ptr %.0231486, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !205
  %i.ce = zext i8 %i.cd to i16
  %i.cf = getelementptr i8, ptr %.0229487, i64 6
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !208
  %i.cg = getelementptr i8, ptr %.0231486, i64 4  ; 3 uses
  %i.ch = getelementptr i8, ptr %.0229487, i64 8  ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.as
  br i1 %i.ci, label %.lr.ph488, label %.preheader, !llvm.loop !230

.lr.ph493:                                        ; preds = %.lr.ph493.preheader, %.lr.ph493
  %.1230492 = phi ptr [ %i.cm, %.lr.ph493 ], [ %.1230492.ph, %.lr.ph493.preheader ] ; 2 uses
  %.1232491 = phi ptr [ %i.cj, %.lr.ph493 ], [ %.1232491.ph, %.lr.ph493.preheader ] ; 2 uses
  %i.cj = getelementptr i8, ptr %.1232491, i64 1  ; 2 uses
  %i.ck = load i8, ptr %.1232491, align 1, !tbaa !205
  %i.cl = zext i8 %i.ck to i16
  %i.cm = getelementptr i8, ptr %.1230492, i64 2
  store i16 %i.cl, ptr %.1230492, align 2, !tbaa !208
  %i.cn = icmp ult ptr %i.cj, %i.aq
  br i1 %i.cn, label %.lr.ph493, label %ucs1lib_find_max_char.exit, !llvm.loop !231

bb.s:                                             ; preds = %bb.m
  %i.co = icmp eq i32 %i.l, 4                     ; 2 uses
  %or.cond4 = and i1 %i.ai, %i.co
  br i1 %or.cond4, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i265, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = and i32 %i.j, 64
  %.not.i.i299 = icmp eq i32 %i.cp, 0
  %.0.v.i.i300 = select i1 %.not.i.i299, i64 56, i64 40
  %.0.i.i301 = getelementptr i8, ptr %0, i64 %.0.v.i.i300
  br label %_PyUnicode_DATA.exit304

bb.v:                                             ; preds = %bb.t
  %i.cq = getelementptr i8, ptr %0, i64 56
  %.val4.i303 = load ptr, ptr %i.cq, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit304

_PyUnicode_DATA.exit304:                          ; preds = %bb.u, %bb.v
  %.0.i302 = phi ptr [ %.0.i.i301, %bb.u ], [ %.val4.i303, %bb.v ]
  %i.cr = getelementptr [4 x i8], ptr %.0.i302, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit304
  %i.cs = and i32 %i.c, 64
  %.not.i.i307 = icmp eq i32 %i.cs, 0
  %.0.v.i.i308 = select i1 %.not.i.i307, i64 56, i64 40
  %.0.i.i309 = getelementptr i8, ptr %2, i64 %.0.v.i.i308
  br label %_PyUnicode_DATA.exit320

bb.x:                                             ; preds = %_PyUnicode_DATA.exit304
  %i.ct = getelementptr i8, ptr %2, i64 56
  %.val4.i311 = load ptr, ptr %i.ct, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit320

_PyUnicode_DATA.exit320:                          ; preds = %bb.w, %bb.x
  %.0.i.i309.pn = phi ptr [ %.0.i.i309, %bb.w ], [ %.val4.i311, %bb.x ] ; 2 uses
  %.0.i.i309.pn676 = ptrtoint ptr %.0.i.i309.pn to i64 ; 2 uses
  %i.cu = getelementptr i8, ptr %.0.i.i309.pn, i64 %3 ; 5 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 %4     ; 2 uses
  %i.cw = and i64 %4, -4
  %i.cx = getelementptr i8, ptr %i.cu, i64 %i.cw  ; 2 uses
  %i.cy = icmp ult ptr %i.cu, %i.cx
  br i1 %i.cy, label %.lr.ph480, label %.preheader431

.preheader431:                                    ; preds = %.lr.ph480, %_PyUnicode_DATA.exit320
  %.0239.lcssa = phi ptr [ %i.cu, %_PyUnicode_DATA.exit320 ], [ %i.ef, %.lr.ph480 ] ; 8 uses
  %.0233.lcssa = phi ptr [ %i.cr, %_PyUnicode_DATA.exit320 ], [ %i.eg, %.lr.ph480 ] ; 6 uses
  %.0239.lcssa677 = ptrtoint ptr %.0239.lcssa to i64 ; 3 uses
  %i.cz = icmp ult ptr %.0239.lcssa, %i.cv
  br i1 %i.cz, label %.lr.ph485.preheader, label %ucs1lib_find_max_char.exit

.lr.ph485.preheader:                              ; preds = %.preheader431
  %i.da = add i64 %4, %3
  %i.db = add i64 %i.da, %.0.i.i309.pn676
  %i.dc = sub i64 %i.db, %.0239.lcssa677          ; 3 uses
  %min.iters.check684 = icmp ult i64 %i.dc, 32
  br i1 %min.iters.check684, label %.lr.ph485.preheader747, label %vector.memcheck675

vector.memcheck675:                               ; preds = %.lr.ph485.preheader
  %i.dd = add i64 %4, %3
  %i.de = add i64 %i.dd, %.0.i.i309.pn676         ; 2 uses
  %i.df = sub i64 %i.de, %.0239.lcssa677
  %i.dg = shl i64 %i.df, 2
  %scevgep678 = getelementptr i8, ptr %.0233.lcssa, i64 %i.dg
  %i.dh = sub i64 %i.de, %.0239.lcssa677
  %scevgep679 = getelementptr i8, ptr %.0239.lcssa, i64 %i.dh
  %bound0680 = icmp ult ptr %.0233.lcssa, %scevgep679
  %bound1681 = icmp ult ptr %.0239.lcssa, %scevgep678
  %found.conflict682 = and i1 %bound0680, %bound1681
  br i1 %found.conflict682, label %.lr.ph485.preheader747, label %vector.ph685

vector.ph685:                                     ; preds = %vector.memcheck675
  %n.vec687 = and i64 %i.dc, -8                   ; 4 uses
  %i.di = shl i64 %n.vec687, 2
  %i.dj = getelementptr i8, ptr %.0233.lcssa, i64 %i.di
  %i.dk = getelementptr i8, ptr %.0239.lcssa, i64 %n.vec687
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph685
  %index689 = phi i64 [ 0, %vector.ph685 ], [ %index.next694, %vector.body688 ] ; 3 uses
  %i.dl = shl i64 %index689, 2
  %next.gep690 = getelementptr i8, ptr %.0233.lcssa, i64 %i.dl ; 2 uses
  %next.gep691 = getelementptr i8, ptr %.0239.lcssa, i64 %index689 ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep691, i64 4
  %wide.load692 = load <4 x i8>, ptr %next.gep691, align 1, !tbaa !205, !alias.scope !232
  %wide.load693 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !205, !alias.scope !232
  %i.dn = zext <4 x i8> %wide.load692 to <4 x i32>
  %i.do = zext <4 x i8> %wide.load693 to <4 x i32>
  %i.dp = getelementptr i8, ptr %next.gep690, i64 16
  store <4 x i32> %i.dn, ptr %next.gep690, align 4, !tbaa !7, !alias.scope !235, !noalias !232
  store <4 x i32> %i.do, ptr %i.dp, align 4, !tbaa !7, !alias.scope !235, !noalias !232
  %index.next694 = add nuw i64 %index689, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next694, %n.vec687
  br i1 %i.dq, label %middle.block695, label %vector.body688, !llvm.loop !237

middle.block695:                                  ; preds = %vector.body688
  %cmp.n696 = icmp eq i64 %i.dc, %n.vec687
  br i1 %cmp.n696, label %ucs1lib_find_max_char.exit, label %.lr.ph485.preheader747

.lr.ph485.preheader747:                           ; preds = %vector.memcheck675, %.lr.ph485.preheader, %middle.block695
  %.1234484.ph = phi ptr [ %.0233.lcssa, %vector.memcheck675 ], [ %.0233.lcssa, %.lr.ph485.preheader ], [ %i.dj, %middle.block695 ]
  %.1240483.ph = phi ptr [ %.0239.lcssa, %vector.memcheck675 ], [ %.0239.lcssa, %.lr.ph485.preheader ], [ %i.dk, %middle.block695 ]
  br label %.lr.ph485

.lr.ph480:                                        ; preds = %_PyUnicode_DATA.exit320, %.lr.ph480
  %.0233479 = phi ptr [ %i.eg, %.lr.ph480 ], [ %i.cr, %_PyUnicode_DATA.exit320 ] ; 5 uses
  %.0239478 = phi ptr [ %i.ef, %.lr.ph480 ], [ %i.cu, %_PyUnicode_DATA.exit320 ] ; 5 uses
  %i.dr = load i8, ptr %.0239478, align 1, !tbaa !205
  %i.ds = zext i8 %i.dr to i32
  store i32 %i.ds, ptr %.0233479, align 4, !tbaa !7
  %i.dt = getelementptr i8, ptr %.0239478, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !205
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr i8, ptr %.0233479, i64 4
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !7
  %i.dx = getelementptr i8, ptr %.0239478, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !205
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr i8, ptr %.0233479, i64 8
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !7
  %i.eb = getelementptr i8, ptr %.0239478, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !205
  %i.ed = zext i8 %i.ec to i32
  %i.ee = getelementptr i8, ptr %.0233479, i64 12
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !7
  %i.ef = getelementptr i8, ptr %.0239478, i64 4  ; 3 uses
  %i.eg = getelementptr i8, ptr %.0233479, i64 16 ; 2 uses
  %i.eh = icmp ult ptr %i.ef, %i.cx
  br i1 %i.eh, label %.lr.ph480, label %.preheader431, !llvm.loop !238

.lr.ph485:                                        ; preds = %.lr.ph485.preheader747, %.lr.ph485
  %.1234484 = phi ptr [ %i.el, %.lr.ph485 ], [ %.1234484.ph, %.lr.ph485.preheader747 ] ; 2 uses
  %.1240483 = phi ptr [ %i.ei, %.lr.ph485 ], [ %.1240483.ph, %.lr.ph485.preheader747 ] ; 2 uses
  %i.ei = getelementptr i8, ptr %.1240483, i64 1  ; 2 uses
  %i.ej = load i8, ptr %.1240483, align 1, !tbaa !205
  %i.ek = zext i8 %i.ej to i32
  %i.el = getelementptr i8, ptr %.1234484, i64 4
  store i32 %i.ek, ptr %.1234484, align 4, !tbaa !7
  %i.em = icmp ult ptr %i.ei, %i.cv
  br i1 %i.em, label %.lr.ph485, label %ucs1lib_find_max_char.exit, !llvm.loop !239

bb.y:                                             ; preds = %bb.s
  %i.en = icmp eq i32 %i.e, 2                     ; 2 uses
  %or.cond6 = and i1 %i.en, %i.co
  br i1 %or.cond6, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i265, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = and i32 %i.j, 64
  %.not.i.i323 = icmp eq i32 %i.eo, 0
  %.0.v.i.i324 = select i1 %.not.i.i323, i64 56, i64 40
  %.0.i.i325 = getelementptr i8, ptr %0, i64 %.0.v.i.i324
  br label %_PyUnicode_DATA.exit328

bb.ab:                                            ; preds = %bb.z
  %i.ep = getelementptr i8, ptr %0, i64 56
  %.val4.i327 = load ptr, ptr %i.ep, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit328

_PyUnicode_DATA.exit328:                          ; preds = %bb.aa, %bb.ab
  %.0.i326 = phi ptr [ %.0.i.i325, %bb.aa ], [ %.val4.i327, %bb.ab ]
  %i.eq = getelementptr [4 x i8], ptr %.0.i326, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_PyUnicode_DATA.exit328
  %i.er = and i32 %i.c, 64
  %.not.i.i331 = icmp eq i32 %i.er, 0
  %.0.v.i.i332 = select i1 %.not.i.i331, i64 56, i64 40
  %.0.i.i333 = getelementptr i8, ptr %2, i64 %.0.v.i.i332
  br label %_PyUnicode_DATA.exit344

bb.ad:                                            ; preds = %_PyUnicode_DATA.exit328
  %i.es = getelementptr i8, ptr %2, i64 56
  %.val4.i335 = load ptr, ptr %i.es, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit344

_PyUnicode_DATA.exit344:                          ; preds = %bb.ac, %bb.ad
  %.0.i.i333.pn = phi ptr [ %.0.i.i333, %bb.ac ], [ %.val4.i335, %bb.ad ] ; 2 uses
  %.0.i.i333.pn656 = ptrtoint ptr %.0.i.i333.pn to i64
  %i.et = getelementptr [2 x i8], ptr %.0.i.i333.pn, i64 %3 ; 5 uses
  %i.eu = getelementptr [2 x i8], ptr %i.et, i64 %4 ; 2 uses
  %.idx552 = shl i64 %4, 1                        ; 2 uses
  %i.ev = ashr exact i64 %.idx552, 1
  %i.ew = and i64 %i.ev, -4
  %i.ex = getelementptr [2 x i8], ptr %i.et, i64 %i.ew ; 2 uses
  %i.ey = icmp ult ptr %i.et, %i.ex
  br i1 %i.ey, label %.lr.ph472, label %.preheader433

.preheader433:                                    ; preds = %.lr.ph472, %_PyUnicode_DATA.exit344
  %.0243.lcssa = phi ptr [ %i.et, %_PyUnicode_DATA.exit344 ], [ %i.ft, %.lr.ph472 ] ; 5 uses
  %.0241.lcssa = phi ptr [ %i.eq, %_PyUnicode_DATA.exit344 ], [ %i.fu, %.lr.ph472 ] ; 3 uses
  %i.ez = icmp ult ptr %.0243.lcssa, %i.eu
  br i1 %i.ez, label %.lr.ph477.preheader, label %ucs1lib_find_max_char.exit

.lr.ph477.preheader:                              ; preds = %.preheader433
  %.0243.lcssa657 = ptrtoint ptr %.0243.lcssa to i64 ; 2 uses
  %i.fa = add i64 %.idx552, %.0.i.i333.pn656
  %6 = shl i64 %3, 1
  %7 = add i64 %i.fa, %6
  %i.fb = add i64 %.0243.lcssa657, 2
  %umax658 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.fb)
  %i.fc = xor i64 %.0243.lcssa657, -1
  %i.fd = add i64 %umax658, %i.fc                 ; 2 uses
  %i.fe = lshr i64 %i.fd, 1
  %i.ff = add nuw i64 %i.fe, 1                    ; 2 uses
  %min.iters.check660 = icmp ult i64 %i.fd, 14
  br i1 %min.iters.check660, label %.lr.ph477.preheader751, label %vector.ph661

vector.ph661:                                     ; preds = %.lr.ph477.preheader
  %n.vec663 = and i64 %i.ff, -8                   ; 4 uses
  %i.fg = shl i64 %n.vec663, 2
  %i.fh = getelementptr i8, ptr %.0241.lcssa, i64 %i.fg
  %i.fi = shl i64 %n.vec663, 1
  %i.fj = getelementptr i8, ptr %.0243.lcssa, i64 %i.fi
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph661
  %index665 = phi i64 [ 0, %vector.ph661 ], [ %index.next670, %vector.body664 ] ; 3 uses
  %i.fk = shl i64 %index665, 2
  %next.gep666 = getelementptr i8, ptr %.0241.lcssa, i64 %i.fk ; 2 uses
  %i.fl = shl i64 %index665, 1
  %next.gep667 = getelementptr i8, ptr %.0243.lcssa, i64 %i.fl ; 2 uses
  %i.fm = getelementptr i8, ptr %next.gep667, i64 8
  %wide.load668 = load <4 x i16>, ptr %next.gep667, align 2, !tbaa !208
  %wide.load669 = load <4 x i16>, ptr %i.fm, align 2, !tbaa !208
  %i.fn = zext <4 x i16> %wide.load668 to <4 x i32>
  %i.fo = zext <4 x i16> %wide.load669 to <4 x i32>
  %i.fp = getelementptr i8, ptr %next.gep666, i64 16
  store <4 x i32> %i.fn, ptr %next.gep666, align 4, !tbaa !7
  store <4 x i32> %i.fo, ptr %i.fp, align 4, !tbaa !7
  %index.next670 = add nuw i64 %index665, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next670, %n.vec663
  br i1 %i.fq, label %middle.block671, label %vector.body664, !llvm.loop !240

middle.block671:                                  ; preds = %vector.body664
  %cmp.n672 = icmp eq i64 %i.ff, %n.vec663
  br i1 %cmp.n672, label %ucs1lib_find_max_char.exit, label %.lr.ph477.preheader751

.lr.ph477.preheader751:                           ; preds = %.lr.ph477.preheader, %middle.block671
  %.1242476.ph = phi ptr [ %.0241.lcssa, %.lr.ph477.preheader ], [ %i.fh, %middle.block671 ]
  %.1244475.ph = phi ptr [ %.0243.lcssa, %.lr.ph477.preheader ], [ %i.fj, %middle.block671 ]
  br label %.lr.ph477

.lr.ph472:                                        ; preds = %_PyUnicode_DATA.exit344, %.lr.ph472
  %.0241471 = phi ptr [ %i.fu, %.lr.ph472 ], [ %i.eq, %_PyUnicode_DATA.exit344 ] ; 2 uses
  %.0243470 = phi ptr [ %i.ft, %.lr.ph472 ], [ %i.et, %_PyUnicode_DATA.exit344 ] ; 2 uses
  %i.fr = load <4 x i16>, ptr %.0243470, align 2, !tbaa !208
  %i.fs = zext <4 x i16> %i.fr to <4 x i32>
  store <4 x i32> %i.fs, ptr %.0241471, align 4, !tbaa !7
  %i.ft = getelementptr i8, ptr %.0243470, i64 8  ; 3 uses
  %i.fu = getelementptr i8, ptr %.0241471, i64 16 ; 2 uses
  %i.fv = icmp ult ptr %i.ft, %i.ex
  br i1 %i.fv, label %.lr.ph472, label %.preheader433, !llvm.loop !241

.lr.ph477:                                        ; preds = %.lr.ph477.preheader751, %.lr.ph477
  %.1242476 = phi ptr [ %i.fz, %.lr.ph477 ], [ %.1242476.ph, %.lr.ph477.preheader751 ] ; 2 uses
  %.1244475 = phi ptr [ %i.fw, %.lr.ph477 ], [ %.1244475.ph, %.lr.ph477.preheader751 ] ; 2 uses
  %i.fw = getelementptr i8, ptr %.1244475, i64 2  ; 2 uses
  %i.fx = load i16, ptr %.1244475, align 2, !tbaa !208
  %i.fy = zext i16 %i.fx to i32
  %i.fz = getelementptr i8, ptr %.1242476, i64 4
  store i32 %i.fy, ptr %.1242476, align 4, !tbaa !7
  %i.ga = icmp ult ptr %i.fw, %i.eu
  br i1 %i.ga, label %.lr.ph477, label %ucs1lib_find_max_char.exit, !llvm.loop !242

bb.ae:                                            ; preds = %bb.y
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.af, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.af:                                            ; preds = %bb.ae
  %i.gb = icmp eq i32 %i.l, 1                     ; 2 uses
  %or.cond8 = and i1 %i.en, %i.gb
  br i1 %or.cond8, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i265, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gc = and i32 %i.j, 64
  %.not.i.i347 = icmp eq i32 %i.gc, 0
  %.0.v.i.i348 = select i1 %.not.i.i347, i64 56, i64 40
  %.0.i.i349 = getelementptr i8, ptr %0, i64 %.0.v.i.i348
  br label %_PyUnicode_DATA.exit352

bb.ai:                                            ; preds = %bb.ag
  %i.gd = getelementptr i8, ptr %0, i64 56
  %.val4.i351 = load ptr, ptr %i.gd, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit352

_PyUnicode_DATA.exit352:                          ; preds = %bb.ah, %bb.ai
  %.0.i350 = phi ptr [ %.0.i.i349, %bb.ah ], [ %.val4.i351, %bb.ai ]
  %i.ge = getelementptr i8, ptr %.0.i350, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit352
  %i.gf = and i32 %i.c, 64
  %.not.i.i355 = icmp eq i32 %i.gf, 0
  %.0.v.i.i356 = select i1 %.not.i.i355, i64 56, i64 40
  %.0.i.i357 = getelementptr i8, ptr %2, i64 %.0.v.i.i356
  br label %_PyUnicode_DATA.exit368

bb.ak:                                            ; preds = %_PyUnicode_DATA.exit352
  %i.gg = getelementptr i8, ptr %2, i64 56
  %.val4.i359 = load ptr, ptr %i.gg, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit368

_PyUnicode_DATA.exit368:                          ; preds = %bb.aj, %bb.ak
  %.0.i.i357.pn = phi ptr [ %.0.i.i357, %bb.aj ], [ %.val4.i359, %bb.ak ] ; 2 uses
  %.0.i.i357.pn620 = ptrtoint ptr %.0.i.i357.pn to i64 ; 2 uses
  %i.gh = getelementptr [2 x i8], ptr %.0.i.i357.pn, i64 %3 ; 5 uses
  %i.gi = getelementptr [2 x i8], ptr %i.gh, i64 %4 ; 2 uses
  %.idx551 = shl i64 %4, 1                        ; 3 uses
  %i.gj = ashr exact i64 %.idx551, 1
  %i.gk = and i64 %i.gj, -4
  %i.gl = getelementptr [2 x i8], ptr %i.gh, i64 %i.gk ; 2 uses
  %i.gm = icmp ult ptr %i.gh, %i.gl
  br i1 %i.gm, label %.lr.ph464, label %.preheader435

.preheader435:                                    ; preds = %.lr.ph464, %_PyUnicode_DATA.exit368
  %.0251.lcssa = phi ptr [ %i.gh, %_PyUnicode_DATA.exit368 ], [ %i.ij, %.lr.ph464 ] ; 10 uses
  %.0249.lcssa = phi ptr [ %i.ge, %_PyUnicode_DATA.exit368 ], [ %i.ik, %.lr.ph464 ] ; 8 uses
  %.0251.lcssa621 = ptrtoint ptr %.0251.lcssa to i64 ; 4 uses
  %i.gn = icmp ult ptr %.0251.lcssa, %i.gi
  br i1 %i.gn, label %iter.check, label %ucs1lib_find_max_char.exit

iter.check:                                       ; preds = %.preheader435
  %i.go = add i64 %.idx551, %.0.i.i357.pn620
  %i.gp = shl i64 %3, 1
  %i.gq = add i64 %i.go, %i.gp
  %i.gr = add i64 %.0251.lcssa621, 2
  %umax628 = tail call i64 @llvm.umax.i64(i64 %i.gq, i64 %i.gr)
  %i.gs = xor i64 %.0251.lcssa621, -1
  %i.gt = add i64 %umax628, %i.gs                 ; 3 uses
  %i.gu = lshr i64 %i.gt, 1
  %i.gv = add nuw i64 %i.gu, 1                    ; 5 uses
  %min.iters.check630 = icmp ult i64 %i.gt, 6
  br i1 %min.iters.check630, label %.lr.ph469.preheader, label %vector.memcheck619

vector.memcheck619:                               ; preds = %iter.check
  %i.gw = add i64 %.idx551, %.0.i.i357.pn620
  %i.gx = shl i64 %3, 1
  %i.gy = add i64 %i.gw, %i.gx
  %i.gz = add i64 %.0251.lcssa621, 2
  %umax622 = tail call i64 @llvm.umax.i64(i64 %i.gy, i64 %i.gz)
  %i.ha = xor i64 %.0251.lcssa621, -1
  %i.hb = add i64 %umax622, %i.ha                 ; 2 uses
  %i.hc = lshr i64 %i.hb, 1
  %i.hd = getelementptr i8, ptr %.0249.lcssa, i64 %i.hc
  %scevgep623 = getelementptr i8, ptr %i.hd, i64 1
  %i.he = and i64 %i.hb, -2
  %i.hf = getelementptr i8, ptr %.0251.lcssa, i64 %i.he
  %scevgep624 = getelementptr i8, ptr %i.hf, i64 2
  %bound0625 = icmp ult ptr %.0249.lcssa, %scevgep624
  %bound1626 = icmp ult ptr %.0251.lcssa, %scevgep623
  %found.conflict627 = and i1 %bound0625, %bound1626
  br i1 %found.conflict627, label %.lr.ph469.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck619
  %min.iters.check631 = icmp ult i64 %i.gt, 30
  br i1 %min.iters.check631, label %vec.epilog.ph, label %vector.ph632

vector.ph632:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf633 = and i64 %i.gv, 12
  %n.vec634 = and i64 %i.gv, -16                  ; 5 uses
  %i.hg = getelementptr i8, ptr %.0249.lcssa, i64 %n.vec634
  %i.hh = shl i64 %n.vec634, 1
  %i.hi = getelementptr i8, ptr %.0251.lcssa, i64 %i.hh
  br label %vector.body635

vector.body635:                                   ; preds = %vector.body635, %vector.ph632
  %index636 = phi i64 [ 0, %vector.ph632 ], [ %index.next641, %vector.body635 ] ; 3 uses
  %next.gep637 = getelementptr i8, ptr %.0249.lcssa, i64 %index636 ; 2 uses
  %i.hj = shl i64 %index636, 1
  %next.gep638 = getelementptr i8, ptr %.0251.lcssa, i64 %i.hj ; 2 uses
  %i.hk = getelementptr i8, ptr %next.gep638, i64 16
  %wide.load639 = load <8 x i16>, ptr %next.gep638, align 2, !tbaa !208, !alias.scope !243
  %wide.load640 = load <8 x i16>, ptr %i.hk, align 2, !tbaa !208, !alias.scope !243
  %i.hl = trunc <8 x i16> %wide.load639 to <8 x i8>
  %i.hm = trunc <8 x i16> %wide.load640 to <8 x i8>
  %i.hn = getelementptr i8, ptr %next.gep637, i64 8
  store <8 x i8> %i.hl, ptr %next.gep637, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  store <8 x i8> %i.hm, ptr %i.hn, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  %index.next641 = add nuw i64 %index636, 16      ; 2 uses
  %i.ho = icmp eq i64 %index.next641, %n.vec634
  br i1 %i.ho, label %middle.block642, label %vector.body635, !llvm.loop !248

middle.block642:                                  ; preds = %vector.body635
  %cmp.n643 = icmp eq i64 %i.gv, %n.vec634
  br i1 %cmp.n643, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block642
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf633, 0
  br i1 %min.epilog.iters.check, label %.lr.ph469.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec634, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec647 = and i64 %i.gv, -4                   ; 4 uses
  %i.hp = getelementptr i8, ptr %.0249.lcssa, i64 %n.vec647
  %i.hq = shl i64 %n.vec647, 1
  %i.hr = getelementptr i8, ptr %.0251.lcssa, i64 %i.hq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index648 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next652, %vec.epilog.vector.body ] ; 3 uses
  %next.gep649 = getelementptr i8, ptr %.0249.lcssa, i64 %index648
  %i.hs = shl i64 %index648, 1
  %next.gep650 = getelementptr i8, ptr %.0251.lcssa, i64 %i.hs
  %wide.load651 = load <4 x i16>, ptr %next.gep650, align 2, !tbaa !208, !alias.scope !243
  %i.ht = trunc <4 x i16> %wide.load651 to <4 x i8>
  store <4 x i8> %i.ht, ptr %next.gep649, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  %index.next652 = add nuw i64 %index648, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next652, %n.vec647
  br i1 %i.hu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n653 = icmp eq i64 %i.gv, %n.vec647
  br i1 %cmp.n653, label %ucs1lib_find_max_char.exit, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %vector.memcheck619, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1250468.ph = phi ptr [ %.0249.lcssa, %iter.check ], [ %.0249.lcssa, %vector.memcheck619 ], [ %i.hg, %vec.epilog.iter.check ], [ %i.hp, %vec.epilog.middle.block ]
  %.1252467.ph = phi ptr [ %.0251.lcssa, %iter.check ], [ %.0251.lcssa, %vector.memcheck619 ], [ %i.hi, %vec.epilog.iter.check ], [ %i.hr, %vec.epilog.middle.block ]
  br label %.lr.ph469

.lr.ph464:                                        ; preds = %_PyUnicode_DATA.exit368, %.lr.ph464
  %.0249463 = phi ptr [ %i.ik, %.lr.ph464 ], [ %i.ge, %_PyUnicode_DATA.exit368 ] ; 5 uses
  %.0251462 = phi ptr [ %i.ij, %.lr.ph464 ], [ %i.gh, %_PyUnicode_DATA.exit368 ] ; 5 uses
  %i.hv = load i16, ptr %.0251462, align 2, !tbaa !208
  %i.hw = trunc i16 %i.hv to i8
  store i8 %i.hw, ptr %.0249463, align 1, !tbaa !205
  %i.hx = getelementptr i8, ptr %.0251462, i64 2
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !208
  %i.hz = trunc i16 %i.hy to i8
  %i.ia = getelementptr i8, ptr %.0249463, i64 1
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !205
  %i.ib = getelementptr i8, ptr %.0251462, i64 4
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !208
  %i.id = trunc i16 %i.ic to i8
  %i.ie = getelementptr i8, ptr %.0249463, i64 2
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !205
  %i.if = getelementptr i8, ptr %.0251462, i64 6
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !208
  %i.ih = trunc i16 %i.ig to i8
  %i.ii = getelementptr i8, ptr %.0249463, i64 3
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !205
  %i.ij = getelementptr i8, ptr %.0251462, i64 8  ; 3 uses
  %i.ik = getelementptr i8, ptr %.0249463, i64 4  ; 2 uses
  %i.il = icmp ult ptr %i.ij, %i.gl
  br i1 %i.il, label %.lr.ph464, label %.preheader435, !llvm.loop !250

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.1250468 = phi ptr [ %i.ip, %.lr.ph469 ], [ %.1250468.ph, %.lr.ph469.preheader ] ; 2 uses
  %.1252467 = phi ptr [ %i.im, %.lr.ph469 ], [ %.1252467.ph, %.lr.ph469.preheader ] ; 2 uses
  %i.im = getelementptr i8, ptr %.1252467, i64 2  ; 2 uses
  %i.in = load i16, ptr %.1252467, align 2, !tbaa !208
  %i.io = trunc i16 %i.in to i8
  %i.ip = getelementptr i8, ptr %.1250468, i64 1
  store i8 %i.io, ptr %.1250468, align 1, !tbaa !205
  %i.iq = icmp ult ptr %i.im, %i.gi
  br i1 %i.iq, label %.lr.ph469, label %ucs1lib_find_max_char.exit, !llvm.loop !251

bb.al:                                            ; preds = %bb.af
  %i.ir = icmp eq i32 %i.e, 4                     ; 2 uses
  %or.cond10 = and i1 %i.ir, %i.gb
  br i1 %or.cond10, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i265, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.is = and i32 %i.j, 64
  %.not.i.i371 = icmp eq i32 %i.is, 0
  %.0.v.i.i372 = select i1 %.not.i.i371, i64 56, i64 40
  %.0.i.i373 = getelementptr i8, ptr %0, i64 %.0.v.i.i372
  br label %_PyUnicode_DATA.exit376

bb.ao:                                            ; preds = %bb.am
  %i.it = getelementptr i8, ptr %0, i64 56
  %.val4.i375 = load ptr, ptr %i.it, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit376

_PyUnicode_DATA.exit376:                          ; preds = %bb.an, %bb.ao
  %.0.i374 = phi ptr [ %.0.i.i373, %bb.an ], [ %.val4.i375, %bb.ao ]
  %i.iu = getelementptr i8, ptr %.0.i374, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_PyUnicode_DATA.exit376
  %i.iv = and i32 %i.c, 64
  %.not.i.i379 = icmp eq i32 %i.iv, 0
  %.0.v.i.i380 = select i1 %.not.i.i379, i64 56, i64 40
  %.0.i.i381 = getelementptr i8, ptr %2, i64 %.0.v.i.i380
  br label %_PyUnicode_DATA.exit392

bb.aq:                                            ; preds = %_PyUnicode_DATA.exit376
  %i.iw = getelementptr i8, ptr %2, i64 56
  %.val4.i383 = load ptr, ptr %i.iw, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit392

_PyUnicode_DATA.exit392:                          ; preds = %bb.ap, %bb.aq
  %.0.i.i381.pn = phi ptr [ %.0.i.i381, %bb.ap ], [ %.val4.i383, %bb.aq ] ; 2 uses
  %.0.i.i381.pn598 = ptrtoint ptr %.0.i.i381.pn to i64 ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %.0.i.i381.pn, i64 %3 ; 5 uses
  %i.iy = getelementptr [4 x i8], ptr %i.ix, i64 %4 ; 2 uses
  %.idx550 = shl i64 %4, 2                        ; 3 uses
  %i.iz = ashr exact i64 %.idx550, 2
  %i.ja = and i64 %i.iz, -4
  %i.jb = getelementptr [4 x i8], ptr %i.ix, i64 %i.ja ; 2 uses
  %i.jc = icmp ult ptr %i.ix, %i.jb
  br i1 %i.jc, label %.lr.ph456, label %.preheader437

.preheader437:                                    ; preds = %.lr.ph456, %_PyUnicode_DATA.exit392
  %.0247.lcssa = phi ptr [ %i.iu, %_PyUnicode_DATA.exit392 ], [ %i.kt, %.lr.ph456 ] ; 6 uses
  %.0245.lcssa = phi ptr [ %i.ix, %_PyUnicode_DATA.exit392 ], [ %i.ks, %.lr.ph456 ] ; 8 uses
  %.0245.lcssa599 = ptrtoint ptr %.0245.lcssa to i64 ; 4 uses
  %i.jd = icmp ult ptr %.0245.lcssa, %i.iy
  br i1 %i.jd, label %.lr.ph461.preheader, label %ucs1lib_find_max_char.exit

.lr.ph461.preheader:                              ; preds = %.preheader437
  %8 = add i64 %.idx550, %.0.i.i381.pn598
  %i.je = shl i64 %3, 2
  %i.jf = add i64 %8, %i.je
  %i.jg = add i64 %.0245.lcssa599, 4
  %umax602 = tail call i64 @llvm.umax.i64(i64 %i.jf, i64 %i.jg)
  %i.jh = xor i64 %.0245.lcssa599, -1
  %i.ji = add i64 %umax602, %i.jh                 ; 2 uses
  %i.jj = lshr i64 %i.ji, 2
  %i.jk = add nuw nsw i64 %i.jj, 1                ; 2 uses
  %min.iters.check604 = icmp ult i64 %i.ji, 188
  br i1 %min.iters.check604, label %.lr.ph461.preheader758, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph461.preheader
  %i.jl = add i64 %.idx550, %.0.i.i381.pn598
  %i.jm = shl i64 %3, 2
  %i.jn = add i64 %i.jl, %i.jm
  %i.jo = add i64 %.0245.lcssa599, 4
  %umax600 = tail call i64 @llvm.umax.i64(i64 %i.jn, i64 %i.jo)
  %i.jp = xor i64 %.0245.lcssa599, -1
  %i.jq = add i64 %umax600, %i.jp                 ; 2 uses
  %i.jr = lshr i64 %i.jq, 2
  %i.js = getelementptr i8, ptr %.0247.lcssa, i64 %i.jr
  %scevgep = getelementptr i8, ptr %i.js, i64 1
  %i.jt = and i64 %i.jq, -4
  %i.ju = getelementptr i8, ptr %.0245.lcssa, i64 %i.jt
  %scevgep601 = getelementptr i8, ptr %i.ju, i64 4
  %bound0 = icmp ult ptr %.0247.lcssa, %scevgep601
  %bound1 = icmp ult ptr %.0245.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph461.preheader758, label %vector.ph605

vector.ph605:                                     ; preds = %vector.memcheck
  %n.vec607 = and i64 %i.jk, 9223372036854775800  ; 4 uses
  %i.jv = shl i64 %n.vec607, 2
  %i.jw = getelementptr i8, ptr %.0245.lcssa, i64 %i.jv
  %i.jx = getelementptr i8, ptr %.0247.lcssa, i64 %n.vec607
  br label %vector.body608

vector.body608:                                   ; preds = %vector.body608, %vector.ph605
  %index609 = phi i64 [ 0, %vector.ph605 ], [ %index.next614, %vector.body608 ] ; 3 uses
  %i.jy = shl i64 %index609, 2
  %next.gep610 = getelementptr i8, ptr %.0245.lcssa, i64 %i.jy ; 2 uses
  %next.gep611 = getelementptr i8, ptr %.0247.lcssa, i64 %index609 ; 2 uses
  %i.jz = getelementptr i8, ptr %next.gep610, i64 16
  %wide.load612 = load <4 x i32>, ptr %next.gep610, align 4, !tbaa !7, !alias.scope !252
  %wide.load613 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !7, !alias.scope !252
  %i.ka = trunc <4 x i32> %wide.load612 to <4 x i8>
  %i.kb = trunc <4 x i32> %wide.load613 to <4 x i8>
  %i.kc = getelementptr i8, ptr %next.gep611, i64 4
  store <4 x i8> %i.ka, ptr %next.gep611, align 1, !tbaa !205, !alias.scope !255, !noalias !252
  store <4 x i8> %i.kb, ptr %i.kc, align 1, !tbaa !205, !alias.scope !255, !noalias !252
  %index.next614 = add nuw i64 %index609, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next614, %n.vec607
  br i1 %i.kd, label %middle.block615, label %vector.body608, !llvm.loop !257

middle.block615:                                  ; preds = %vector.body608
  %cmp.n616 = icmp eq i64 %i.jk, %n.vec607
  br i1 %cmp.n616, label %ucs1lib_find_max_char.exit, label %.lr.ph461.preheader758

.lr.ph461.preheader758:                           ; preds = %vector.memcheck, %.lr.ph461.preheader, %middle.block615
  %.1246460.ph = phi ptr [ %.0245.lcssa, %vector.memcheck ], [ %.0245.lcssa, %.lr.ph461.preheader ], [ %i.jw, %middle.block615 ]
  %.1248459.ph = phi ptr [ %.0247.lcssa, %vector.memcheck ], [ %.0247.lcssa, %.lr.ph461.preheader ], [ %i.jx, %middle.block615 ]
  br label %.lr.ph461

.lr.ph456:                                        ; preds = %_PyUnicode_DATA.exit392, %.lr.ph456
  %.0245455 = phi ptr [ %i.ks, %.lr.ph456 ], [ %i.ix, %_PyUnicode_DATA.exit392 ] ; 5 uses
  %.0247454 = phi ptr [ %i.kt, %.lr.ph456 ], [ %i.iu, %_PyUnicode_DATA.exit392 ] ; 5 uses
  %i.ke = load i32, ptr %.0245455, align 4, !tbaa !7
  %i.kf = trunc i32 %i.ke to i8
  store i8 %i.kf, ptr %.0247454, align 1, !tbaa !205
  %i.kg = getelementptr i8, ptr %.0245455, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !7
  %i.ki = trunc i32 %i.kh to i8
  %i.kj = getelementptr i8, ptr %.0247454, i64 1
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !205
  %i.kk = getelementptr i8, ptr %.0245455, i64 8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !7
  %i.km = trunc i32 %i.kl to i8
  %i.kn = getelementptr i8, ptr %.0247454, i64 2
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !205
  %i.ko = getelementptr i8, ptr %.0245455, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !7
  %i.kq = trunc i32 %i.kp to i8
  %i.kr = getelementptr i8, ptr %.0247454, i64 3
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !205
  %i.ks = getelementptr i8, ptr %.0245455, i64 16 ; 3 uses
  %i.kt = getelementptr i8, ptr %.0247454, i64 4  ; 2 uses
  %i.ku = icmp ult ptr %i.ks, %i.jb
  br i1 %i.ku, label %.lr.ph456, label %.preheader437, !llvm.loop !258

.lr.ph461:                                        ; preds = %.lr.ph461.preheader758, %.lr.ph461
  %.1246460 = phi ptr [ %i.kv, %.lr.ph461 ], [ %.1246460.ph, %.lr.ph461.preheader758 ] ; 2 uses
  %.1248459 = phi ptr [ %i.ky, %.lr.ph461 ], [ %.1248459.ph, %.lr.ph461.preheader758 ] ; 2 uses
  %i.kv = getelementptr i8, ptr %.1246460, i64 4  ; 2 uses
  %i.kw = load i32, ptr %.1246460, align 4, !tbaa !7
  %i.kx = trunc i32 %i.kw to i8
  %i.ky = getelementptr i8, ptr %.1248459, i64 1
  store i8 %i.kx, ptr %.1248459, align 1, !tbaa !205
  %i.kz = icmp ult ptr %i.kv, %i.iy
  br i1 %i.kz, label %.lr.ph461, label %ucs1lib_find_max_char.exit, !llvm.loop !259

bb.ar:                                            ; preds = %bb.al
  tail call void @llvm.assume(i1 %i.ir)
  tail call void @llvm.assume(i1 %i.aj)
  br i1 %.not.i265, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.la = and i32 %i.j, 64
  %.not.i.i395 = icmp eq i32 %i.la, 0
  %.0.v.i.i396 = select i1 %.not.i.i395, i64 56, i64 40
  %.0.i.i397 = getelementptr i8, ptr %0, i64 %.0.v.i.i396
  br label %_PyUnicode_DATA.exit400

bb.at:                                            ; preds = %bb.ar
  %i.lb = getelementptr i8, ptr %0, i64 56
  %.val4.i399 = load ptr, ptr %i.lb, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit400

_PyUnicode_DATA.exit400:                          ; preds = %bb.as, %bb.at
  %.0.i398 = phi ptr [ %.0.i.i397, %bb.as ], [ %.val4.i399, %bb.at ]
  %i.lc = getelementptr [2 x i8], ptr %.0.i398, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_PyUnicode_DATA.exit400
  %i.ld = and i32 %i.c, 64
  %.not.i.i403 = icmp eq i32 %i.ld, 0
  %.0.v.i.i404 = select i1 %.not.i.i403, i64 56, i64 40
  %.0.i.i405 = getelementptr i8, ptr %2, i64 %.0.v.i.i404
  br label %_PyUnicode_DATA.exit416

bb.av:                                            ; preds = %_PyUnicode_DATA.exit400
  %i.le = getelementptr i8, ptr %2, i64 56
  %.val4.i407 = load ptr, ptr %i.le, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit416

_PyUnicode_DATA.exit416:                          ; preds = %bb.au, %bb.av
  %.0.i.i405.pn = phi ptr [ %.0.i.i405, %bb.au ], [ %.val4.i407, %bb.av ] ; 2 uses
  %.0.i.i405.pn593 = ptrtoint ptr %.0.i.i405.pn to i64
  %i.lf = getelementptr [4 x i8], ptr %.0.i.i405.pn, i64 %3 ; 5 uses
  %i.lg = getelementptr [4 x i8], ptr %i.lf, i64 %4 ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.lh = ashr exact i64 %.idx, 2
  %i.li = and i64 %i.lh, -4
  %i.lj = getelementptr [4 x i8], ptr %i.lf, i64 %i.li ; 2 uses
  %i.lk = icmp ult ptr %i.lf, %i.lj
  br i1 %i.lk, label %.lr.ph448, label %.preheader439

.preheader439:                                    ; preds = %.lr.ph448, %_PyUnicode_DATA.exit416
  %.0237.lcssa = phi ptr [ %i.lc, %_PyUnicode_DATA.exit416 ], [ %i.mg, %.lr.ph448 ] ; 3 uses
  %.0235.lcssa = phi ptr [ %i.lf, %_PyUnicode_DATA.exit416 ], [ %i.mf, %.lr.ph448 ] ; 5 uses
  %i.ll = icmp ult ptr %.0235.lcssa, %i.lg
  br i1 %i.ll, label %.lr.ph453.preheader, label %ucs1lib_find_max_char.exit

.lr.ph453.preheader:                              ; preds = %.preheader439
  %.0235.lcssa594 = ptrtoint ptr %.0235.lcssa to i64 ; 2 uses
  %i.lm = add i64 %.idx, %.0.i.i405.pn593
  %9 = shl i64 %3, 2
  %10 = add i64 %i.lm, %9
  %i.ln = add i64 %.0235.lcssa594, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %10, i64 %i.ln)
  %i.lo = xor i64 %.0235.lcssa594, -1
  %i.lp = add i64 %umax, %i.lo                    ; 2 uses
  %i.lq = lshr i64 %i.lp, 2
  %i.lr = add nuw nsw i64 %i.lq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lp, 28
  br i1 %min.iters.check, label %.lr.ph453.preheader762, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph453.preheader
  %n.vec = and i64 %i.lr, 9223372036854775800     ; 4 uses
  %i.ls = shl i64 %n.vec, 2
  %i.lt = getelementptr i8, ptr %.0235.lcssa, i64 %i.ls
  %i.lu = shl nuw i64 %n.vec, 1
  %i.lv = getelementptr i8, ptr %.0237.lcssa, i64 %i.lu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0235.lcssa, i64 %i.lw ; 2 uses
  %i.lx = shl i64 %index, 1
  %next.gep595 = getelementptr i8, ptr %.0237.lcssa, i64 %i.lx ; 2 uses
  %i.ly = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load596 = load <4 x i32>, ptr %i.ly, align 4, !tbaa !7
  %i.lz = trunc <4 x i32> %wide.load to <4 x i16>
  %i.ma = trunc <4 x i32> %wide.load596 to <4 x i16>
  %i.mb = getelementptr i8, ptr %next.gep595, i64 8
  store <4 x i16> %i.lz, ptr %next.gep595, align 2, !tbaa !208
  store <4 x i16> %i.ma, ptr %i.mb, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mc = icmp eq i64 %index.next, %n.vec
  br i1 %i.mc, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lr, %n.vec
  br i1 %cmp.n, label %ucs1lib_find_max_char.exit, label %.lr.ph453.preheader762

.lr.ph453.preheader762:                           ; preds = %.lr.ph453.preheader, %middle.block
  %.1236452.ph = phi ptr [ %.0235.lcssa, %.lr.ph453.preheader ], [ %i.lt, %middle.block ]
  %.1238451.ph = phi ptr [ %.0237.lcssa, %.lr.ph453.preheader ], [ %i.lv, %middle.block ]
  br label %.lr.ph453

.lr.ph448:                                        ; preds = %_PyUnicode_DATA.exit416, %.lr.ph448
  %.0235447 = phi ptr [ %i.mf, %.lr.ph448 ], [ %i.lf, %_PyUnicode_DATA.exit416 ] ; 2 uses
  %.0237446 = phi ptr [ %i.mg, %.lr.ph448 ], [ %i.lc, %_PyUnicode_DATA.exit416 ] ; 2 uses
  %i.md = load <4 x i32>, ptr %.0235447, align 4, !tbaa !7
  %i.me = trunc <4 x i32> %i.md to <4 x i16>
  store <4 x i16> %i.me, ptr %.0237446, align 2, !tbaa !208
  %i.mf = getelementptr i8, ptr %.0235447, i64 16 ; 3 uses
  %i.mg = getelementptr i8, ptr %.0237446, i64 8  ; 2 uses
  %i.mh = icmp ult ptr %i.mf, %i.lj
  br i1 %i.mh, label %.lr.ph448, label %.preheader439, !llvm.loop !261

.lr.ph453:                                        ; preds = %.lr.ph453.preheader762, %.lr.ph453
  %.1236452 = phi ptr [ %i.mi, %.lr.ph453 ], [ %.1236452.ph, %.lr.ph453.preheader762 ] ; 2 uses
  %.1238451 = phi ptr [ %i.ml, %.lr.ph453 ], [ %.1238451.ph, %.lr.ph453.preheader762 ] ; 2 uses
  %i.mi = getelementptr i8, ptr %.1236452, i64 4  ; 2 uses
  %i.mj = load i32, ptr %.1236452, align 4, !tbaa !7
  %i.mk = trunc i32 %i.mj to i16
  %i.ml = getelementptr i8, ptr %.1238451, i64 2
  store i16 %i.mk, ptr %.1238451, align 2, !tbaa !208
  %i.mm = icmp ult ptr %i.mi, %i.lg
  br i1 %i.mm, label %.lr.ph453, label %ucs1lib_find_max_char.exit, !llvm.loop !262

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.ae
  %i.mn = and i32 %i.j, 64
  %.not.i417 = icmp eq i32 %i.mn, 0
  %switch.select.i = select i1 %i.aj, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.l, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  %.0.i418 = select i1 %.not.i417, i32 %switch.select6.i, i32 127
  %.not258443 = icmp sgt i64 %4, 0
  br i1 %.not258443, label %.lr.ph, label %ucs1lib_find_max_char.exit

.lr.ph:                                           ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %PyUnicode_WRITE.exit
  %.0444 = phi i64 [ %i.ne, %PyUnicode_WRITE.exit ], [ 0, %PyUnicode_MAX_CHAR_VALUE.exit ] ; 3 uses
  %i.mo = add i64 %.0444, %3                      ; 3 uses
  switch i32 %i.e, label %bb.ay [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
  ]

bb.aw:                                            ; preds = %.lr.ph
  %i.mp = getelementptr i8, ptr %.0.i, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !205
  %i.mr = zext i8 %i.mq to i32
  br label %PyUnicode_READ.exit

bb.ax:                                            ; preds = %.lr.ph
  %i.ms = getelementptr [2 x i8], ptr %.0.i, i64 %i.mo
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !208
  %i.mu = zext i16 %i.mt to i32
  br label %PyUnicode_READ.exit

bb.ay:                                            ; preds = %.lr.ph
  %i.mv = getelementptr [4 x i8], ptr %.0.i, i64 %i.mo
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.aw, %bb.ax, %bb.ay
  %.0.i419 = phi i32 [ %i.mr, %bb.aw ], [ %i.mu, %bb.ax ], [ %i.mw, %bb.ay ] ; 4 uses
  %i.mx = icmp ugt i32 %.0.i419, %.0.i418
  br i1 %i.mx, label %ucs1lib_find_max_char.exit, label %bb.az

bb.az:                                            ; preds = %PyUnicode_READ.exit
  %i.my = add i64 %.0444, %1                      ; 3 uses
  switch i32 %i.l, label %bb.bc [
    i32 1, label %bb.ba
    i32 2, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.mz = trunc i32 %.0.i419 to i8
  %i.na = getelementptr i8, ptr %.0.i269, i64 %i.my
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit

bb.bb:                                            ; preds = %bb.az
  %i.nb = trunc i32 %.0.i419 to i16
  %i.nc = getelementptr [2 x i8], ptr %.0.i269, i64 %i.my
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit

bb.bc:                                            ; preds = %bb.az
  %i.nd = getelementptr [4 x i8], ptr %.0.i269, i64 %i.my
  store i32 %.0.i419, ptr %i.nd, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.ne = add nuw nsw i64 %.0444, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ne, %4
  br i1 %exitcond.not, label %ucs1lib_find_max_char.exit, label %.lr.ph, !llvm.loop !263

ucs1lib_find_max_char.exit:                       ; preds = %PyUnicode_READ.exit, %PyUnicode_WRITE.exit, %.lr.ph453, %.lr.ph461, %.lr.ph469, %.lr.ph477, %.lr.ph485, %.lr.ph493, %.thread31.i, %bb.k, %middle.block, %middle.block615, %middle.block642, %vec.epilog.middle.block, %middle.block671, %middle.block695, %middle.block721, %vec.epilog.middle.block739, %PyUnicode_MAX_CHAR_VALUE.exit, %.preheader439, %.preheader437, %.preheader435, %.preheader433, %.preheader431, %.preheader, %ucs1lib_find_max_char.exit.thread, %bb.a
  %.2 = phi i32 [ 0, %.preheader439 ], [ 0, %PyUnicode_MAX_CHAR_VALUE.exit ], [ 0, %bb.a ], [ 0, %ucs1lib_find_max_char.exit.thread ], [ 0, %.preheader437 ], [ 0, %.preheader435 ], [ 0, %.preheader433 ], [ 0, %.preheader431 ], [ 0, %.preheader ], [ 0, %middle.block695 ], [ 0, %middle.block671 ], [ 0, %middle.block642 ], [ 0, %middle.block615 ], [ 0, %middle.block ], [ 0, %.lr.ph461 ], [ 0, %.lr.ph453 ], [ 0, %middle.block721 ], [ -1, %bb.k ], [ 0, %vec.epilog.middle.block739 ], [ -1, %.thread31.i ], [ 0, %.lr.ph493 ], [ 0, %.lr.ph485 ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph477 ], [ 0, %.lr.ph469 ], [ -1, %PyUnicode_READ.exit ], [ 0, %PyUnicode_WRITE.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PyUnicode_CopyCharacters(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val37 = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val37, i64 168
  %.val39 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val39, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val38 = load i64, ptr %i.e, align 8, !tbaa !198
  %i.f = and i64 %.val38, 268435456
  %.not34 = icmp eq i64 %i.f, 0
  br i1 %.not34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 1531) #33
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val45 = load i64, ptr %i.g, align 8, !tbaa !207 ; 2 uses
  %i.h = icmp ugt i64 %3, %.val45
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #33
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val44 = load i64, ptr %i.j, align 8, !tbaa !207 ; 3 uses
  %i.k = icmp ugt i64 %1, %.val44
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.28) #33
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.m = icmp slt i64 %4, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.29) #33
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.o = sub i64 %.val45, %3
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %4) ; 5 uses
  %i.p = add i64 %spec.select, %1
  %i.q = icmp sgt i64 %i.p, %.val44
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@PyUnicode_Resize:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_resize(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !194    ; 15 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %.val34 = load i64, ptr %i.b, align 8, !tbaa !207
  %i.c = icmp eq i64 %.val34, %1
  br i1 %i.c, label %Py_DECREF.exit32, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %0, align 8, !tbaa !194
  %i.e = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not.i31 = icmp sgt i32 %i.e, -1
  br i1 %.not.i31, label %bb.d, label %Py_DECREF.exit32

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !205
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_DECREF.exit32

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #33
  br label %Py_DECREF.exit32

bb.f:                                             ; preds = %bb.b
  %.val7.i = load i32, ptr %i.a, align 8, !tbaa !205
  %.not.i35 = icmp eq i32 %.val7.i, 1
  br i1 %.not.i35, label %bb.g, label %_PyUnicode_IsModifiable.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %.val8.i = load i64, ptr %i.h, align 8, !tbaa !217
  %.not4.i = icmp eq i64 %.val8.i, -1
  br i1 %.not4.i, label %bb.h, label %_PyUnicode_IsModifiable.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %.val.i = load i32, ptr %i.i, align 8           ; 3 uses
  %i.j = and i32 %.val.i, 3
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %_PyUnicode_IsModifiable.exit, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit:                     ; preds = %bb.h
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %.val9.i = load ptr, ptr %i.k, align 8, !tbaa !197
  %.not10.i.not = icmp eq ptr %.val9.i, @PyUnicode_Type
  br i1 %.not10.i.not, label %bb.m, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit.thread:              ; preds = %bb.h, %bb.g, %bb.f, %_PyUnicode_IsModifiable.exit
  %i.l = getelementptr i8, ptr %i.a, i64 32
  %.val14.i = load i32, ptr %i.l, align 8         ; 2 uses
  %i.m = and i32 %.val14.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.i:                                             ; preds = %_PyUnicode_IsModifiable.exit.thread
  %i.n = lshr i32 %.val14.i, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.o, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.o, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.i, %_PyUnicode_IsModifiable.exit.thread
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.i ], [ 127, %_PyUnicode_IsModifiable.exit.thread ]
  %i.p = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.0.i.i) ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Py_DECREF.exit32, label %bb.j

bb.j:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %.val13.i = load i64, ptr %i.b, align 8, !tbaa !207
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %1, i64 %.val13.i)
  %i.r = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.p, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef %spec.select.i, i32 noundef 0) ; 0 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !194    ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !194
  %i.t = load i32, ptr %i.s, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit32

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !205
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %Py_DECREF.exit32

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #33
  br label %Py_DECREF.exit32

bb.m:                                             ; preds = %_PyUnicode_IsModifiable.exit
  %i.w = and i32 %.val.i, 32
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call ptr @_PyUnicode_ResizeCompact(ptr noundef nonnull %i.a, i64 noundef %1) ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Py_DECREF.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.x, ptr %0, align 8, !tbaa !194
  br label %Py_DECREF.exit32

bb.p:                                             ; preds = %bb.m
  %i.z = getelementptr i8, ptr %i.a, i64 56       ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205 ; 3 uses
  %i.ab = lshr exact i32 %.val.i, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr i8, ptr %i.a, i64 48      ; 2 uses
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !203 ; 3 uses
  %i.af = udiv i64 9223372036854775807, %i.ad
  %.not.i36 = icmp slt i64 %1, %i.af
  br i1 %.not.i36, label %bb.q, label %.sink.split.i

bb.q:                                             ; preds = %bb.p
  %.not39.i = icmp eq ptr %.val.i.i, %i.aa
  %i.ag = add i64 %1, 1
  %i.ah = mul i64 %i.ag, %i.ad                    ; 2 uses
  br i1 %.not39.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not4.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not4.i.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

_PyUnicode_HAS_UTF8_MEMORY.exit.i:                ; preds = %bb.r
  tail call void @PyMem_Free(ptr noundef nonnull %.val.i.i) #33
  %i.ai = getelementptr i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i

_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i:         ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.i, %bb.r
  %i.aj = tail call ptr @PyObject_Realloc(ptr noundef %i.aa, i64 noundef %i.ah) #33 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.sink.split.i, label %bb.s

.thread.i:                                        ; preds = %bb.q
  %i.al = tail call ptr @PyObject_Realloc(ptr noundef %i.aa, i64 noundef %i.ah) #33 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.sink.split.i, label %.thread38.i

.thread38.i:                                      ; preds = %.thread.i
  store ptr %i.al, ptr %i.z, align 8, !tbaa !205
  %i.an = getelementptr i8, ptr %i.a, i64 40
  store i64 %1, ptr %i.an, align 8, !tbaa !206
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !203
  br label %bb.t

bb.s:                                             ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !205
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread38.i
  %i.ao = phi ptr [ %i.al, %.thread38.i ], [ %i.aj, %bb.s ] ; 3 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !207
  %i.ap = load i32, ptr %i.i, align 8
  %i.aq = lshr i32 %i.ap, 2
  %i.ar = and i32 %i.aq, 7
  switch i32 %i.ar, label %bb.w [
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr i8, ptr %i.ao, i64 %1
  store i8 0, ptr %i.as, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit.i

bb.v:                                             ; preds = %bb.t
  %i.at = getelementptr [2 x i8], ptr %i.ao, i64 %1
  store i16 0, ptr %i.at, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit.i

bb.w:                                             ; preds = %bb.t
  %i.au = getelementptr [4 x i8], ptr %i.ao, i64 %1
  store i32 0, ptr %i.au, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.i

PyUnicode_WRITE.exit.i:                           ; preds = %bb.w, %bb.v, %bb.u
  %i.av = icmp sgt i64 %1, 2305843009213693950
  br i1 %i.av, label %.sink.split.i, label %Py_DECREF.exit32

.sink.split.i:                                    ; preds = %PyUnicode_WRITE.exit.i, %.thread.i, %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i, %bb.p
  %i.aw = tail call ptr @PyErr_NoMemory() #33     ; 0 uses
  br label %Py_DECREF.exit32

Py_DECREF.exit32:                                 ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i, %.sink.split.i, %PyUnicode_WRITE.exit.i, %bb.l, %bb.k, %bb.j, %bb.e, %bb.d, %bb.c, %bb.o, %bb.n, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -1, %bb.n ], [ -1, %.sink.split.i ], [ 0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.o ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %PyUnicode_WRITE.exit.i ], [ -1, %PyUnicode_MAX_CHAR_VALUE.exit.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromWideChar(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp ne i64 %1, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 1900) #33
  br label %get_latin1_char.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @wcslen(ptr noundef %0) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.019 = phi i64 [ %i.e, %bb.d ], [ %1, %bb.c ]  ; 4 uses
  switch i64 %.019, label %bb.j [
    i64 0, label %get_latin1_char.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.g = icmp ult i32 %i.f, 256
  br i1 %i.g, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.h = trunc nuw i32 %i.f to i8                 ; 2 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.j
  br label %get_latin1_char.exit

bb.i:                                             ; preds = %bb.g
  %i.l = and i8 %i.h, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.m
  br label %get_latin1_char.exit

bb.j:                                             ; preds = %bb.e, %bb.f
  %i.o = getelementptr [4 x i8], ptr %0, i64 %.019 ; 6 uses
  %i.p = icmp ult ptr %0, %i.o
  br i1 %i.p, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.031 = phi i32 [ %.1, %bb.l ], [ 0, %bb.j ]
  %i.q = phi i32 [ %i.v, %bb.l ], [ 0, %bb.j ]    ; 2 uses
  %.01315.i = phi ptr [ %i.s, %bb.l ], [ %0, %bb.j ] ; 2 uses
  %i.r = load i32, ptr %.01315.i, align 4, !tbaa !7 ; 5 uses
  %i.s = getelementptr i8, ptr %.01315.i, i64 4   ; 2 uses
  %i.t = icmp ugt i32 %i.r, %i.q
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.u = icmp ugt i32 %i.r, 1114111
  br i1 %i.u, label %find_maxchar_surrogates.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.1 = phi i32 [ %i.r, %bb.k ], [ %.031, %.lr.ph.i ] ; 2 uses
  %i.v = phi i32 [ %i.r, %bb.k ], [ %i.q, %.lr.ph.i ]
  %i.w = icmp ult ptr %i.s, %i.o
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !llvm.loop !264

find_maxchar_surrogates.exit:                     ; preds = %bb.k
  %i.x = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  %i.y = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.125, i32 noundef %i.r, i32 noundef 1114111) #33 ; 0 uses
  br label %get_latin1_char.exit

.loopexit:                                        ; preds = %bb.l, %bb.j
  %.2.ph = phi i32 [ 0, %bb.j ], [ %.1, %bb.l ]
  %i.z = tail call ptr @PyUnicode_New(i64 noundef %.019, i32 noundef %.2.ph) ; 16 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %get_latin1_char.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.aa = getelementptr i8, ptr %i.z, i64 32      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = and i32 %i.ac, 7
  %i.ae = and i32 %i.ab, 32
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = and i32 %i.ab, 64
  %.not.i.i = icmp eq i32 %i.af, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.z, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.o:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %i.z, i64 56
  %.val4.i = load ptr, ptr %i.ag, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.n, %bb.o
  %.0.i23 = phi ptr [ %.0.i.i, %bb.n ], [ %.val4.i, %bb.o ] ; 5 uses
  %.idx57.i = shl i64 %.019, 2                    ; 6 uses
  switch i32 %i.ad, label %bb.s [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 4, label %bb.r
  ]

bb.p:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ah = ashr exact i64 %.idx57.i, 2
  %i.ai = and i64 %i.ah, -4
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = icmp ult ptr %0, %i.aj
  br i1 %i.ak, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph68.i, %bb.p
  %.051.lcssa.i = phi ptr [ %0, %bb.p ], [ %i.bx, %.lr.ph68.i ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %.0.i23, %bb.p ], [ %i.by, %.lr.ph68.i ] ; 6 uses
  %.051.lcssa.i83 = ptrtoint ptr %.051.lcssa.i to i64 ; 4 uses
  %i.al = icmp ult ptr %.051.lcssa.i, %i.o
  br i1 %i.al, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.am = add i64 %.idx57.i, %i.a
  %i.an = add i64 %.051.lcssa.i83, 4
  %umax86 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = xor i64 %.051.lcssa.i83, -1
  %i.ap = add i64 %umax86, %i.ao                  ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check88 = icmp ult i64 %i.ap, 156
  br i1 %min.iters.check88, label %.lr.ph73.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.as = add i64 %.idx57.i, %i.a
  %i.at = add i64 %.051.lcssa.i83, 4
  %umax84 = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = xor i64 %.051.lcssa.i83, -1
  %i.av = add i64 %umax84, %i.au                  ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 1
  %i.ay = and i64 %i.av, -4
  %i.az = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ay
  %scevgep85 = getelementptr i8, ptr %i.az, i64 4
  %bound0 = icmp ult ptr %.0.lcssa.i, %scevgep85
  %bound1 = icmp ult ptr %.051.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader103, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck
  %n.vec91 = and i64 %i.ar, 9223372036854775800   ; 4 uses
  %i.ba = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec91
  %i.bb = shl i64 %n.vec91, 2
  %i.bc = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bb
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %next.gep94 = getelementptr i8, ptr %.0.lcssa.i, i64 %index93 ; 2 uses
  %i.bd = shl i64 %index93, 2
  %next.gep95 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load96 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !7, !alias.scope !265
  %wide.load97 = load <4 x i32>, ptr %i.be, align 4, !tbaa !7, !alias.scope !265
  %i.bf = trunc <4 x i32> %wide.load96 to <4 x i8>
  %i.bg = trunc <4 x i32> %wide.load97 to <4 x i8>
  %i.bh = getelementptr i8, ptr %next.gep94, i64 4
  store <4 x i8> %i.bf, ptr %next.gep94, align 1, !tbaa !205, !alias.scope !268, !noalias !265
  store <4 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !205, !alias.scope !268, !noalias !265
  %index.next98 = add nuw i64 %index93, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.bi, label %middle.block99, label %vector.body92, !llvm.loop !270

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.ar, %n.vec91
  br i1 %cmp.n100, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader103

.lr.ph73.i.preheader103:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block99
  %.172.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ba, %middle.block99 ]
  %.15271.i.ph = phi ptr [ %.051.lcssa.i, %vector.memcheck ], [ %.051.lcssa.i, %.lr.ph73.i.preheader ], [ %i.bc, %middle.block99 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.p, %.lr.ph68.i
  %.067.i = phi ptr [ %i.by, %.lr.ph68.i ], [ %.0.i23, %bb.p ] ; 5 uses
  %.05166.i = phi ptr [ %i.bx, %.lr.ph68.i ], [ %0, %bb.p ] ; 5 uses
  %i.bj = load i32, ptr %.05166.i, align 4, !tbaa !7
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %.067.i, align 1, !tbaa !205
  %i.bl = getelementptr i8, ptr %.05166.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr i8, ptr %.067.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !205
  %i.bp = getelementptr i8, ptr %.05166.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr i8, ptr %.067.i, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !205
  %i.bt = getelementptr i8, ptr %.05166.i, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.067.i, i64 3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !205
  %i.bx = getelementptr i8, ptr %.05166.i, i64 16 ; 3 uses
  %i.by = getelementptr i8, ptr %.067.i, i64 4    ; 2 uses
  %i.bz = icmp ult ptr %i.bx, %i.aj
  br i1 %i.bz, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !271

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader103, %.lr.ph73.i
  %.172.i = phi ptr [ %i.cd, %.lr.ph73.i ], [ %.172.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %.15271.i = phi ptr [ %i.ca, %.lr.ph73.i ], [ %.15271.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.15271.i, i64 4  ; 2 uses
  %i.cb = load i32, ptr %.15271.i, align 4, !tbaa !7
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr i8, ptr %.172.i, i64 1
  store i8 %i.cc, ptr %.172.i, align 1, !tbaa !205
  %i.ce = icmp ult ptr %i.ca, %i.o
  br i1 %i.ce, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !272

bb.q:                                             ; preds = %_PyUnicode_DATA.exit
  %i.cf = ashr exact i64 %.idx57.i, 2
  %i.cg = and i64 %i.cf, -4
  %i.ch = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %0, %i.ch
  br i1 %i.ci, label %.lr.ph.i24, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i24, %bb.q
  %.055.lcssa.i = phi ptr [ %0, %bb.q ], [ %i.dd, %.lr.ph.i24 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %.0.i23, %bb.q ], [ %i.de, %.lr.ph.i24 ] ; 3 uses
  %i.cj = icmp ult ptr %.055.lcssa.i, %i.o
  br i1 %i.cj, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %.055.lcssa.i79 = ptrtoint ptr %.055.lcssa.i to i64 ; 2 uses
  %i.ck = add i64 %.idx57.i, %i.a
  %i.cl = add i64 %.055.lcssa.i79, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cm = xor i64 %.055.lcssa.i79, -1
  %i.cn = add i64 %umax, %i.cm                    ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.cp, 9223372036854775800     ; 4 uses
  %i.cq = shl nuw i64 %n.vec, 1
  %i.cr = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cq
  %i.cs = shl i64 %n.vec, 2
  %i.ct = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cu ; 2 uses
  %i.cv = shl i64 %index, 2
  %next.gep80 = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep80, align 4, !tbaa !7
  %wide.load81 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !7
  %i.cx = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cy = trunc <4 x i32> %wide.load81 to <4 x i16>
  %i.cz = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.cx, ptr %next.gep, align 2, !tbaa !208
  store <4 x i16> %i.cy, ptr %i.cz, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader105

.lr.ph65.i.preheader105:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.15464.i.ph = phi ptr [ %.053.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cr, %middle.block ]
  %.15663.i.ph = phi ptr [ %.055.lcssa.i, %.lr.ph65.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i24:                                       ; preds = %bb.q, %.lr.ph.i24
  %.05361.i = phi ptr [ %i.de, %.lr.ph.i24 ], [ %.0.i23, %bb.q ] ; 2 uses
  %.05560.i = phi ptr [ %i.dd, %.lr.ph.i24 ], [ %0, %bb.q ] ; 2 uses
  %i.db = load <4 x i32>, ptr %.05560.i, align 4, !tbaa !7
  %i.dc = trunc <4 x i32> %i.db to <4 x i16>
  store <4 x i16> %i.dc, ptr %.05361.i, align 2, !tbaa !208
  %i.dd = getelementptr i8, ptr %.05560.i, i64 16 ; 3 uses
  %i.de = getelementptr i8, ptr %.05361.i, i64 8  ; 2 uses
  %i.df = icmp ult ptr %i.dd, %i.ch
  br i1 %i.df, label %.lr.ph.i24, label %.preheader58.i, !llvm.loop !274

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader105, %.lr.ph65.i
  %.15464.i = phi ptr [ %i.dj, %.lr.ph65.i ], [ %.15464.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %.15663.i = phi ptr [ %i.dg, %.lr.ph65.i ], [ %.15663.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %i.dg = getelementptr i8, ptr %.15663.i, i64 4  ; 2 uses
  %i.dh = load i32, ptr %.15663.i, align 4, !tbaa !7
  %i.di = trunc i32 %i.dh to i16
  %i.dj = getelementptr i8, ptr %.15464.i, i64 2
  store i16 %i.di, ptr %.15464.i, align 2, !tbaa !208
  %i.dk = icmp ult ptr %i.dg, %i.o
  br i1 %i.dk, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !275

bb.r:                                             ; preds = %_PyUnicode_DATA.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i23, ptr readonly align 4 %0, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.s:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block99, %.preheader.i, %.preheader58.i, %bb.r
  %i.dl = getelementptr i8, ptr %i.z, i64 16
  %.val.i25 = load i64, ptr %i.dl, align 8, !tbaa !207
  switch i64 %.val.i25, label %get_latin1_char.exit [
    i64 0, label %bb.t
    i64 1, label %bb.w
  ]

bb.t:                                             ; preds = %unicode_write_widechar.exit
  %.not26.i = icmp eq ptr %i.z, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %get_latin1_char.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = load i32, ptr %i.z, align 8, !tbaa !205 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.dm, -1
  br i1 %.not.i27.i, label %bb.v, label %get_latin1_char.exit

bb.v:                                             ; preds = %bb.u
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.z, align 8, !tbaa !205
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %Py_DECREF.exit28.sink.split.i, label %get_latin1_char.exit

bb.w:                                             ; preds = %unicode_write_widechar.exit
  %i.dp = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.dq = and i32 %i.dp, 28
  %.not25.i = icmp eq i32 %i.dq, 4
  br i1 %.not25.i, label %bb.x, label %get_latin1_char.exit

bb.x:                                             ; preds = %bb.w
  %i.dr = and i32 %i.dp, 32
  %.not.i30.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i30.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = and i32 %i.dp, 64
  %.not.i.i.i = icmp eq i32 %i.ds, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.z, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.z:                                             ; preds = %bb.x
  %i.dt = getelementptr i8, ptr %i.z, i64 56
  %.val4.i.i = load ptr, ptr %i.dt, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.z, %bb.y
  %.0.i.i26 = phi ptr [ %.0.i.i.i, %bb.y ], [ %.val4.i.i, %bb.z ]
  %i.du = load i8, ptr %.0.i.i26, align 1, !tbaa !205 ; 3 uses
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.dv
  %i.dx = and i8 %i.du, 127
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.dy
  %i.ea = icmp slt i8 %i.du, 0
  %i.eb = select i1 %i.ea, ptr %i.dz, ptr %i.dw   ; 5 uses
  %.not.i27 = icmp eq ptr %i.z, %i.eb
  br i1 %.not.i27, label %get_latin1_char.exit, label %bb.aa

bb.aa:                                            ; preds = %_PyUnicode_DATA.exit.i
  %i.ec = load i32, ptr %i.z, align 8, !tbaa !205 ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.ec, -1
  br i1 %.not.i.i28, label %bb.ab, label %get_latin1_char.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.z, align 8, !tbaa !205
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %Py_DECREF.exit28.sink.split.i, label %get_latin1_char.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.ab, %bb.v
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.eb, %bb.ab ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #33
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %Py_DECREF.exit28.sink.split.i, %bb.ab, %bb.aa, %_PyUnicode_DATA.exit.i, %bb.w, %bb.v, %bb.u, %bb.t, %unicode_write_widechar.exit, %find_maxchar_surrogates.exit, %bb.i, %bb.h, %bb.e, %.loopexit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ], [ null, %find_maxchar_surrogates.exit ], [ %i.n, %bb.i ], [ %i.k, %bb.h ], [ %i.z, %unicode_write_widechar.exit ], [ %i.eb, %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.z, %bb.w ], [ %i.eb, %_PyUnicode_DATA.exit.i ], [ %i.eb, %bb.ab ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @wcslen(ptr noundef %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.024 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 6 uses
  %i.d = icmp eq i64 %.024, 0
  br i1 %i.d, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr %1, i64 %.024 ; 6 uses
  %i.f = icmp ult ptr %1, %i.e
  br i1 %i.f, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.034 = phi i32 [ %.135, %bb.f ], [ 0, %bb.d ]
  %i.g = phi i32 [ %i.l, %bb.f ], [ 0, %bb.d ]    ; 2 uses
  %.01315.i = phi ptr [ %i.i, %bb.f ], [ %1, %bb.d ] ; 2 uses
  %i.h = load i32, ptr %.01315.i, align 4, !tbaa !7 ; 5 uses
  %i.i = getelementptr i8, ptr %.01315.i, i64 4   ; 2 uses
  %i.j = icmp ugt i32 %i.h, %i.g
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.k = icmp ugt i32 %i.h, 1114111
  br i1 %i.k, label %find_maxchar_surrogates.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.135 = phi i32 [ %i.h, %bb.e ], [ %.034, %.lr.ph.i ] ; 4 uses
  %i.l = phi i32 [ %i.h, %bb.e ], [ %i.g, %.lr.ph.i ]
  %i.m = icmp ult ptr %i.i, %i.e
  br i1 %i.m, label %.lr.ph.i, label %bb.g, !llvm.loop !264

find_maxchar_surrogates.exit:                     ; preds = %bb.e
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.125, i32 noundef %i.h, i32 noundef 1114111) #33 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !276
  %.not = icmp ugt i32 %.135, %i.q
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %.2.ph41 = phi i32 [ %.135, %bb.g ], [ 0, %bb.d ]
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !278
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !279  ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %.not27 = icmp sgt i64 %.024, %i.v
  br i1 %.not27, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %.thread
  %.2.ph42 = phi i32 [ %.2.ph41, %.thread ], [ %.135, %bb.g ]
  %i.w = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.024, i32 noundef %.2.ph42) #33
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !279
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.thread
  %i.y = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.u, %.thread ]
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !280 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !281
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ae = sext i32 %i.aa to i64
  %i.af = mul i64 %i.y, %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af  ; 5 uses
  %.idx57.i = shl i64 %.024, 2                    ; 6 uses
  switch i32 %i.aa, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

bb.i:                                             ; preds = %.critedge
  %i.ah = ashr exact i64 %.idx57.i, 2
  %i.ai = and i64 %i.ah, -4
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %i.ai ; 2 uses
  %i.ak = icmp ult ptr %1, %i.aj
  br i1 %i.ak, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph68.i, %bb.i
  %.051.lcssa.i = phi ptr [ %1, %bb.i ], [ %i.bx, %.lr.ph68.i ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %i.ag, %bb.i ], [ %i.by, %.lr.ph68.i ] ; 6 uses
  %.051.lcssa.i83 = ptrtoint ptr %.051.lcssa.i to i64 ; 4 uses
  %i.al = icmp ult ptr %.051.lcssa.i, %i.e
  br i1 %i.al, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.am = add i64 %.idx57.i, %i.a
  %i.an = add i64 %.051.lcssa.i83, 4
  %umax86 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = xor i64 %.051.lcssa.i83, -1
  %i.ap = add i64 %umax86, %i.ao                  ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check88 = icmp ult i64 %i.ap, 156
  br i1 %min.iters.check88, label %.lr.ph73.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.as = add i64 %.idx57.i, %i.a
  %i.at = add i64 %.051.lcssa.i83, 4
  %umax84 = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = xor i64 %.051.lcssa.i83, -1
  %i.av = add i64 %umax84, %i.au                  ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 1
  %i.ay = and i64 %i.av, -4
  %i.az = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ay
  %scevgep85 = getelementptr i8, ptr %i.az, i64 4
  %bound0 = icmp ult ptr %.0.lcssa.i, %scevgep85
  %bound1 = icmp ult ptr %.051.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader103, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck
  %n.vec91 = and i64 %i.ar, 9223372036854775800   ; 4 uses
  %i.ba = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec91
  %i.bb = shl i64 %n.vec91, 2
  %i.bc = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bb
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %next.gep94 = getelementptr i8, ptr %.0.lcssa.i, i64 %index93 ; 2 uses
  %i.bd = shl i64 %index93, 2
  %next.gep95 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load96 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !7, !alias.scope !282
  %wide.load97 = load <4 x i32>, ptr %i.be, align 4, !tbaa !7, !alias.scope !282
  %i.bf = trunc <4 x i32> %wide.load96 to <4 x i8>
  %i.bg = trunc <4 x i32> %wide.load97 to <4 x i8>
  %i.bh = getelementptr i8, ptr %next.gep94, i64 4
  store <4 x i8> %i.bf, ptr %next.gep94, align 1, !tbaa !205, !alias.scope !285, !noalias !282
  store <4 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !205, !alias.scope !285, !noalias !282
  %index.next98 = add nuw i64 %index93, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.bi, label %middle.block99, label %vector.body92, !llvm.loop !287

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.ar, %n.vec91
  br i1 %cmp.n100, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader103

.lr.ph73.i.preheader103:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block99
  %.172.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ba, %middle.block99 ]
  %.15271.i.ph = phi ptr [ %.051.lcssa.i, %vector.memcheck ], [ %.051.lcssa.i, %.lr.ph73.i.preheader ], [ %i.bc, %middle.block99 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.i, %.lr.ph68.i
  %.067.i = phi ptr [ %i.by, %.lr.ph68.i ], [ %i.ag, %bb.i ] ; 5 uses
  %.05166.i = phi ptr [ %i.bx, %.lr.ph68.i ], [ %1, %bb.i ] ; 5 uses
  %i.bj = load i32, ptr %.05166.i, align 4, !tbaa !7
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %.067.i, align 1, !tbaa !205
  %i.bl = getelementptr i8, ptr %.05166.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr i8, ptr %.067.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !205
  %i.bp = getelementptr i8, ptr %.05166.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr i8, ptr %.067.i, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !205
  %i.bt = getelementptr i8, ptr %.05166.i, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.067.i, i64 3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !205
  %i.bx = getelementptr i8, ptr %.05166.i, i64 16 ; 3 uses
  %i.by = getelementptr i8, ptr %.067.i, i64 4    ; 2 uses
  %i.bz = icmp ult ptr %i.bx, %i.aj
  br i1 %i.bz, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !271

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader103, %.lr.ph73.i
  %.172.i = phi ptr [ %i.cd, %.lr.ph73.i ], [ %.172.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %.15271.i = phi ptr [ %i.ca, %.lr.ph73.i ], [ %.15271.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.15271.i, i64 4  ; 2 uses
  %i.cb = load i32, ptr %.15271.i, align 4, !tbaa !7
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr i8, ptr %.172.i, i64 1
  store i8 %i.cc, ptr %.172.i, align 1, !tbaa !205
  %i.ce = icmp ult ptr %i.ca, %i.e
  br i1 %i.ce, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !288

bb.j:                                             ; preds = %.critedge
  %i.cf = ashr exact i64 %.idx57.i, 2
  %i.cg = and i64 %i.cf, -4
  %i.ch = getelementptr [4 x i8], ptr %1, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %1, %i.ch
  br i1 %i.ci, label %.lr.ph.i28, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i28, %bb.j
  %.055.lcssa.i = phi ptr [ %1, %bb.j ], [ %i.dd, %.lr.ph.i28 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %i.ag, %bb.j ], [ %i.de, %.lr.ph.i28 ] ; 3 uses
  %i.cj = icmp ult ptr %.055.lcssa.i, %i.e
  br i1 %i.cj, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %.055.lcssa.i79 = ptrtoint ptr %.055.lcssa.i to i64 ; 2 uses
  %i.ck = add i64 %.idx57.i, %i.a
  %i.cl = add i64 %.055.lcssa.i79, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cm = xor i64 %.055.lcssa.i79, -1
  %i.cn = add i64 %umax, %i.cm                    ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.cp, 9223372036854775800     ; 4 uses
  %i.cq = shl nuw i64 %n.vec, 1
  %i.cr = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cq
  %i.cs = shl i64 %n.vec, 2
  %i.ct = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cu ; 2 uses
  %i.cv = shl i64 %index, 2
  %next.gep80 = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep80, align 4, !tbaa !7
  %wide.load81 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !7
  %i.cx = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cy = trunc <4 x i32> %wide.load81 to <4 x i16>
  %i.cz = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.cx, ptr %next.gep, align 2, !tbaa !208
  store <4 x i16> %i.cy, ptr %i.cz, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader105

.lr.ph65.i.preheader105:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.15464.i.ph = phi ptr [ %.053.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cr, %middle.block ]
  %.15663.i.ph = phi ptr [ %.055.lcssa.i, %.lr.ph65.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i28:                                       ; preds = %bb.j, %.lr.ph.i28
  %.05361.i = phi ptr [ %i.de, %.lr.ph.i28 ], [ %i.ag, %bb.j ] ; 2 uses
  %.05560.i = phi ptr [ %i.dd, %.lr.ph.i28 ], [ %1, %bb.j ] ; 2 uses
  %i.db = load <4 x i32>, ptr %.05560.i, align 4, !tbaa !7
  %i.dc = trunc <4 x i32> %i.db to <4 x i16>
  store <4 x i16> %i.dc, ptr %.05361.i, align 2, !tbaa !208
  %i.dd = getelementptr i8, ptr %.05560.i, i64 16 ; 3 uses
  %i.de = getelementptr i8, ptr %.05361.i, i64 8  ; 2 uses
  %i.df = icmp ult ptr %i.dd, %i.ch
  br i1 %i.df, label %.lr.ph.i28, label %.preheader58.i, !llvm.loop !274

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader105, %.lr.ph65.i
  %.15464.i = phi ptr [ %i.dj, %.lr.ph65.i ], [ %.15464.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %.15663.i = phi ptr [ %i.dg, %.lr.ph65.i ], [ %.15663.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %i.dg = getelementptr i8, ptr %.15663.i, i64 4  ; 2 uses
  %i.dh = load i32, ptr %.15663.i, align 4, !tbaa !7
  %i.di = trunc i32 %i.dh to i16
  %i.dj = getelementptr i8, ptr %.15464.i, i64 2
  store i16 %i.di, ptr %.15464.i, align 2, !tbaa !208
  %i.dk = icmp ult ptr %i.dg, %i.e
  br i1 %i.dk, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !290

bb.k:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr readonly align 4 %1, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.l:                                             ; preds = %.critedge
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block99, %.preheader.i, %.preheader58.i, %bb.k
  %i.dl = load i64, ptr %i.ad, align 8, !tbaa !279
  %i.dm = add i64 %i.dl, %.024
  store i64 %i.dm, ptr %i.ad, align 8, !tbaa !279
  br label %bb.m

bb.m:                                             ; preds = %unicode_write_widechar.exit, %bb.h, %find_maxchar_surrogates.exit, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %unicode_write_widechar.exit ], [ -1, %find_maxchar_surrogates.exit ], [ -1, %bb.h ]
  ret i32 %.1
}

declare i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromStringAndSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.32) #33
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !291
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not7 = icmp eq i64 %1, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.33) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.d ], [ null, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF8Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = zext i1 %.not to i32
  %i.b = tail call fastcc ptr @unicode_decode_utf8(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, ptr noundef %2, ptr noundef %3)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromString(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.34) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !291
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_FromId(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = cmpxchg ptr %i.a, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef %i.a) #33
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 11872    ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_PyMutex_Unlock.exit

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  %i.j = getelementptr i8, ptr %i.e, i64 7376
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !292  ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 10704    ; 4 uses
  %i.m = cmpxchg ptr %i.l, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_PyMutex_Lock.exit49, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Lock(ptr noundef %i.l) #33
  br label %_PyMutex_Lock.exit49

_PyMutex_Lock.exit49:                             ; preds = %bb.c, %bb.d
  %i.o = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_PyMutex_Lock.exit49
  %i.q = getelementptr i8, ptr %i.k, i64 10712    ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !293  ; 3 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !293
  store atomic i64 %i.r, ptr %i.g seq_cst, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_PyMutex_Lock.exit49
  %.042 = phi i64 [ %i.r, %bb.e ], [ %i.o, %_PyMutex_Lock.exit49 ] ; 2 uses
  %i.t = cmpxchg ptr %i.l, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_PyMutex_Unlock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PyMutex_Unlock(ptr noundef %i.l) #33
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.g, %bb.f, %_PyMutex_Lock.exit
  %.1 = phi i64 [ %i.h, %_PyMutex_Lock.exit ], [ %.042, %bb.f ], [ %.042, %bb.g ] ; 5 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !294
  %i.w = icmp slt i64 %.1, %i.v
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_PyMutex_Unlock.exit
  %i.x = getelementptr i8, ptr %i.e, i64 11880
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !295
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %_PyMutex_Unlock.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !296   ; 2 uses
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #34
  %i.ad = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %i.ab, i64 noundef %i.ac, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !291 ; 2 uses
  %.not46 = icmp eq ptr %i.ad, null
  br i1 %.not46, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call fastcc ptr @intern_common(ptr noundef nonnull readonly %i.e, ptr noundef nonnull %i.ad, i1 noundef zeroext true) ; 2 uses
  %i.af = load i64, ptr %i.f, align 8, !tbaa !294
  %.not47 = icmp slt i64 %.1, %i.af
  br i1 %.not47, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr i8, ptr %i.e, i64 11880
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !295
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = shl i64 %.1, 1
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 16) ; 3 uses
  %i.ai = getelementptr i8, ptr %i.e, i64 11880   ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !295
  %i.ak = shl i64 %i.ah, 3
  %i.al = tail call ptr @PyMem_Realloc(ptr noundef %i.aj, i64 noundef %i.ak) #33 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %i.an = load i64, ptr %i.f, align 8, !tbaa !294 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = sub i64 %i.ah, %i.an
  %i.aq = shl i64 %i.ap, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.aq, i1 false)
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !295
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !294
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call ptr @PyErr_NoMemory() #33     ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.as = phi ptr [ %.pre, %._crit_edge ], [ %i.al, %.thread ]
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.1
  store ptr %i.ae, ptr %i.at, align 8, !tbaa !194
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.m
  %.2 = phi ptr [ null, %bb.i ], [ %i.ae, %bb.m ], [ null, %bb.l ], [ %i.aa, %bb.h ]
  %i.au = cmpxchg ptr %i.a, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.av = extractvalue { i8, i1 } %i.au, 1
  br i1 %i.av, label %_PyMutex_Unlock.exit50, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @PyMutex_Unlock(ptr noundef %i.a) #33
  br label %_PyMutex_Unlock.exit50

_PyMutex_Unlock.exit50:                           ; preds = %bb.n, %bb.o
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyUnicode_InternImmortal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !194
  %i.b = tail call fastcc ptr @intern_common(ptr noundef %0, ptr noundef %i.a, i1 noundef zeroext true)
  store ptr %i.b, ptr %1, align 8, !tbaa !194
  ret void
}

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_FromASCII(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !205     ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.d
  br label %get_latin1_char.exit

bb.d:                                             ; preds = %bb.b
  %i.f = and i8 %i.b, 127
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.g
  br label %get_latin1_char.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef 127) ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %get_latin1_char.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val.i = load i32, ptr %i.j, align 8           ; 2 uses
  %i.k = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.i, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.i, i64 56
  %.val4.i = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %0, i64 %1, i1 false)
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %bb.d, %bb.c, %bb.e, %_PyUnicode_DATA.exit
  %.0 = phi ptr [ null, %bb.e ], [ %i.i, %_PyUnicode_DATA.exit ], [ %i.e, %bb.c ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteUCS4(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.35) #33
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr %1, i64 %2   ; 6 uses
  %.idx88 = shl i64 %2, 2                         ; 5 uses
  %i.f = ashr exact i64 %.idx88, 2
  %i.g = and i64 %i.f, -4
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g ; 6 uses
  %i.i = icmp ult ptr %1, %i.h                    ; 3 uses
  br i1 %i.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.h, %bb.g, %bb.d
  %.034.lcssa.i = phi ptr [ %1, %bb.d ], [ %i.s, %bb.f ], [ %i.w, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.d ], [ %.0294982.i, %bb.f ], [ -65536, %bb.h ], [ -256, %bb.g ]
  %.026.lcssa.i = phi i32 [ 127, %bb.d ], [ %.0265081.i, %bb.f ], [ 65535, %bb.h ], [ 255, %bb.g ] ; 2 uses
  %i.j = icmp ult ptr %.034.lcssa.i, %i.e
  br i1 %i.j, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.02650.i = phi i32 [ %.0265081.i, %bb.f ], [ 127, %bb.d ]
  %.02949.i = phi i32 [ %.0294982.i, %bb.f ], [ -128, %bb.d ] ; 3 uses
  %.03448.i = phi ptr [ %i.s, %bb.f ], [ %1, %bb.d ] ; 5 uses
  %i.k = load <4 x i32>, ptr %.03448.i, align 4, !tbaa !7
  %i.l = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.k) ; 4 uses
  %i.m = and i32 %i.l, %.02949.i
  %.not37.i = icmp eq i32 %i.m, 0
  br i1 %.not37.i, label %bb.f, label %bb.e

.lr.ph.i.jt4294967040:                            ; preds = %bb.g
  %i.n = load <4 x i32>, ptr %i.u, align 4, !tbaa !7
  %i.o = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.n) ; 2 uses
  %.not37.i.jt4294967040 = icmp ult i32 %i.o, 256
  br i1 %.not37.i.jt4294967040, label %bb.f, label %.lr.ph.jt4294901760.i

.lr.ph.i.jt4294901760:                            ; preds = %bb.h
  %i.p = load <4 x i32>, ptr %i.w, align 4, !tbaa !7
  %i.q = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.p)
  %.not37.i.jt4294901760 = icmp ult i32 %i.q, 65536
  br i1 %.not37.i.jt4294901760, label %bb.f, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.jt4294967040.i, %bb.e
  %i.r = phi i32 [ %i.l, %.lr.ph.jt4294967040.i ], [ %i.l, %bb.e ], [ %i.o, %.lr.ph.i.jt4294967040 ]
  %.03448.i129 = phi ptr [ %.03448.i, %.lr.ph.jt4294967040.i ], [ %.03448.i, %bb.e ], [ %i.u, %.lr.ph.i.jt4294967040 ]
  %.not37.jt4294901760.i = icmp ult i32 %i.r, 65536
  br i1 %.not37.jt4294901760.i, label %bb.h, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.e
  %.not37.jt4294967040.i = icmp ult i32 %i.l, 256
  br i1 %.not37.jt4294967040.i, label %bb.g, label %.lr.ph.jt4294901760.i

bb.e:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !298

bb.f:                                             ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.i.jt4294901760, %.lr.ph.i
  %.03448.i128 = phi ptr [ %i.u, %.lr.ph.i.jt4294967040 ], [ %i.w, %.lr.ph.i.jt4294901760 ], [ %.03448.i, %.lr.ph.i ]
  %.0294982.i = phi i32 [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.lr.ph.i.jt4294901760 ], [ %.02949.i, %.lr.ph.i ] ; 2 uses
  %.0265081.i = phi i32 [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.lr.ph.i.jt4294901760 ], [ %.02650.i, %.lr.ph.i ] ; 2 uses
  %i.s = getelementptr i8, ptr %.03448.i128, i64 16 ; 3 uses
  %i.t = icmp ult ptr %i.s, %i.h
  br i1 %i.t, label %.lr.ph.i, label %.preheader.i

bb.g:                                             ; preds = %.lr.ph.jt4294967040.i
  %i.u = getelementptr i8, ptr %.03448.i, i64 16  ; 5 uses
  %i.v = icmp ult ptr %i.u, %i.h
  br i1 %i.v, label %.lr.ph.i.jt4294967040, label %.preheader.i

bb.h:                                             ; preds = %.lr.ph.jt4294901760.i
  %i.w = getelementptr i8, ptr %.03448.i129, i64 16 ; 4 uses
  %i.x = icmp ult ptr %i.w, %i.h
  br i1 %i.x, label %.lr.ph.i.jt4294901760, label %.preheader.i

.outer.i:                                         ; preds = %bb.j, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.j ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.j ] ; 2 uses
  %i.y = getelementptr i8, ptr %.236.ph67.i, i64 4 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.e
  br i1 %i.z, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit, !llvm.loop !299

.lr.ph55.split.us.i:                              ; preds = %.preheader.i, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.y, %.outer.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.aa = load i32, ptr %.236.ph67.i, align 4, !tbaa !7 ; 2 uses
  %i.ab = and i32 %i.aa, %.332.ph68.i
  %.not.us62.i = icmp eq i32 %i.ab, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.j
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.j ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.i [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph64.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.i ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.i ], [ 255, %.lr.ph64.i ]
  %i.ac = and i32 %.433.us.i, %i.aa
  %.not.us.i = icmp eq i32 %i.ac, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

ucs4lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294901760.i, %bb.e, %.lr.ph.i.jt4294901760, %.outer.i, %.lr.ph64.i, %.preheader.i
  %.2.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ], [ 1114111, %.lr.ph64.i ], [ 1114111, %.lr.ph.i.jt4294901760 ], [ 1114111, %bb.e ], [ 1114111, %.lr.ph.jt4294901760.i ] ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !276
  %.not = icmp ugt i32 %.2.i, %i.ae
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ucs4lib_find_max_char.exit
  %i.af = getelementptr i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !278
  %i.ah = getelementptr i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !279 ; 2 uses
  %i.aj = sub i64 %i.ag, %i.ai
  %.not86 = icmp sgt i64 %2, %i.aj
  br i1 %.not86, label %bb.l, label %.critedge

bb.l:                                             ; preds = %ucs4lib_find_max_char.exit, %bb.k
  %i.ak = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %2, i32 noundef %.2.i) #33
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.p, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.l
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !279
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.k
  %i.am = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.ai, %bb.k ]
  %i.an = getelementptr i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !280 ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !281
  %i.ar = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.as = sext i32 %i.ao to i64
  %i.at = mul i64 %i.am, %i.as
  %i.au = getelementptr i8, ptr %i.aq, i64 %i.at  ; 5 uses
  switch i32 %i.ao, label %bb.o [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %.critedge
  br i1 %i.i, label %.lr.ph101, label %.preheader

.preheader:                                       ; preds = %.lr.ph101, %bb.m
  %.082.lcssa = phi ptr [ %1, %bb.m ], [ %i.ch, %.lr.ph101 ] ; 8 uses
  %.076.lcssa = phi ptr [ %i.au, %bb.m ], [ %i.ci, %.lr.ph101 ] ; 6 uses
  %.082.lcssa146 = ptrtoint ptr %.082.lcssa to i64 ; 4 uses
  %i.av = icmp ult ptr %.082.lcssa, %i.e
  br i1 %i.av, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.aw = add i64 %.idx88, %i.a
  %i.ax = add i64 %.082.lcssa146, 4
  %umax149 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.ax)
  %i.ay = xor i64 %.082.lcssa146, -1
  %i.az = add i64 %umax149, %i.ay                 ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.az, 156
  br i1 %min.iters.check151, label %.lr.ph106.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.bc = add i64 %.idx88, %i.a
  %i.bd = add i64 %.082.lcssa146, 4
  %umax147 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.bd)
  %i.be = xor i64 %.082.lcssa146, -1
  %i.bf = add i64 %umax147, %i.be                 ; 2 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = getelementptr i8, ptr %.076.lcssa, i64 %i.bg
  %scevgep = getelementptr i8, ptr %i.bh, i64 1
  %i.bi = and i64 %i.bf, -4
  %i.bj = getelementptr i8, ptr %.082.lcssa, i64 %i.bi
  %scevgep148 = getelementptr i8, ptr %i.bj, i64 4
  %bound0 = icmp ult ptr %.076.lcssa, %scevgep148
  %bound1 = icmp ult ptr %.082.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph106.preheader166, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck
  %n.vec154 = and i64 %i.bb, 9223372036854775800  ; 4 uses
  %i.bk = getelementptr i8, ptr %.076.lcssa, i64 %n.vec154
  %i.bl = shl i64 %n.vec154, 2
  %i.bm = getelementptr i8, ptr %.082.lcssa, i64 %i.bl
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next161, %vector.body155 ] ; 3 uses
  %next.gep157 = getelementptr i8, ptr %.076.lcssa, i64 %index156 ; 2 uses
  %i.bn = shl i64 %index156, 2
  %next.gep158 = getelementptr i8, ptr %.082.lcssa, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <4 x i32>, ptr %next.gep158, align 4, !tbaa !7, !alias.scope !300
  %wide.load160 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !7, !alias.scope !300
  %i.bp = trunc <4 x i32> %wide.load159 to <4 x i8>
  %i.bq = trunc <4 x i32> %wide.load160 to <4 x i8>
  %i.br = getelementptr i8, ptr %next.gep157, i64 4
  store <4 x i8> %i.bp, ptr %next.gep157, align 1, !tbaa !205, !alias.scope !303, !noalias !300
  store <4 x i8> %i.bq, ptr %i.br, align 1, !tbaa !205, !alias.scope !303, !noalias !300
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.bs, label %middle.block162, label %vector.body155, !llvm.loop !305

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.bb, %n.vec154
  br i1 %cmp.n163, label %.loopexit, label %.lr.ph106.preheader166

.lr.ph106.preheader166:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block162
  %.177105.ph = phi ptr [ %.076.lcssa, %vector.memcheck ], [ %.076.lcssa, %.lr.ph106.preheader ], [ %i.bk, %middle.block162 ]
  %.183104.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph106.preheader ], [ %i.bm, %middle.block162 ]
  br label %.lr.ph106

.lr.ph101:                                        ; preds = %bb.m, %.lr.ph101
  %.076100 = phi ptr [ %i.ci, %.lr.ph101 ], [ %i.au, %bb.m ] ; 5 uses
  %.08299 = phi ptr [ %i.ch, %.lr.ph101 ], [ %1, %bb.m ] ; 5 uses
  %i.bt = load i32, ptr %.08299, align 4, !tbaa !7
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %.076100, align 1, !tbaa !205
  %i.bv = getelementptr i8, ptr %.08299, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr i8, ptr %.076100, i64 1
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !205
  %i.bz = getelementptr i8, ptr %.08299, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr i8, ptr %.076100, i64 2
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !205
  %i.cd = getelementptr i8, ptr %.08299, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr i8, ptr %.076100, i64 3
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !205
  %i.ch = getelementptr i8, ptr %.08299, i64 16   ; 3 uses
  %i.ci = getelementptr i8, ptr %.076100, i64 4   ; 2 uses
  %i.cj = icmp ult ptr %i.ch, %i.h
  br i1 %i.cj, label %.lr.ph101, label %.preheader, !llvm.loop !306

.lr.ph106:                                        ; preds = %.lr.ph106.preheader166, %.lr.ph106
  %.177105 = phi ptr [ %i.cn, %.lr.ph106 ], [ %.177105.ph, %.lr.ph106.preheader166 ] ; 2 uses
  %.183104 = phi ptr [ %i.ck, %.lr.ph106 ], [ %.183104.ph, %.lr.ph106.preheader166 ] ; 2 uses
  %i.ck = getelementptr i8, ptr %.183104, i64 4   ; 2 uses
  %i.cl = load i32, ptr %.183104, align 4, !tbaa !7
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr i8, ptr %.177105, i64 1
  store i8 %i.cm, ptr %.177105, align 1, !tbaa !205
  %i.co = icmp ult ptr %i.ck, %i.e
  br i1 %i.co, label %.lr.ph106, label %.loopexit, !llvm.loop !307

bb.n:                                             ; preds = %.critedge
  br i1 %i.i, label %.lr.ph, label %.preheader89

.preheader89:                                     ; preds = %.lr.ph, %bb.n
  %.080.lcssa = phi ptr [ %i.au, %bb.n ], [ %i.dk, %.lr.ph ] ; 3 uses
  %.078.lcssa = phi ptr [ %1, %bb.n ], [ %i.dj, %.lr.ph ] ; 5 uses
  %i.cp = icmp ult ptr %.078.lcssa, %i.e
  br i1 %i.cp, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.preheader89
  %.078.lcssa142 = ptrtoint ptr %.078.lcssa to i64 ; 2 uses
  %i.cq = add i64 %.idx88, %i.a
  %i.cr = add i64 %.078.lcssa142, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cr)
  %i.cs = xor i64 %.078.lcssa142, -1
  %i.ct = add i64 %umax, %i.cs                    ; 2 uses
  %i.cu = lshr i64 %i.ct, 2
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 28
  br i1 %min.iters.check, label %.lr.ph98.preheader168, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.cv, 9223372036854775800     ; 4 uses
  %i.cw = shl i64 %n.vec, 2
  %i.cx = getelementptr i8, ptr %.078.lcssa, i64 %i.cw
  %i.cy = shl nuw i64 %n.vec, 1
  %i.cz = getelementptr i8, ptr %.080.lcssa, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.078.lcssa, i64 %i.da ; 2 uses
  %i.db = shl i64 %index, 1
  %next.gep143 = getelementptr i8, ptr %.080.lcssa, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load144 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !7
  %i.dd = trunc <4 x i32> %wide.load to <4 x i16>
  %i.de = trunc <4 x i32> %wide.load144 to <4 x i16>
  %i.df = getelementptr i8, ptr %next.gep143, i64 8
  store <4 x i16> %i.dd, ptr %next.gep143, align 2, !tbaa !208
  store <4 x i16> %i.de, ptr %i.df, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph98.preheader168

.lr.ph98.preheader168:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.17997.ph = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.cx, %middle.block ]
  %.18196.ph = phi ptr [ %.080.lcssa, %.lr.ph98.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.07894 = phi ptr [ %i.dj, %.lr.ph ], [ %1, %bb.n ] ; 2 uses
  %.08093 = phi ptr [ %i.dk, %.lr.ph ], [ %i.au, %bb.n ] ; 2 uses
  %i.dh = load <4 x i32>, ptr %.07894, align 4, !tbaa !7
  %i.di = trunc <4 x i32> %i.dh to <4 x i16>
  store <4 x i16> %i.di, ptr %.08093, align 2, !tbaa !208
  %i.dj = getelementptr i8, ptr %.07894, i64 16   ; 3 uses
  %i.dk = getelementptr i8, ptr %.08093, i64 8    ; 2 uses
  %i.dl = icmp ult ptr %i.dj, %i.h
  br i1 %i.dl, label %.lr.ph, label %.preheader89, !llvm.loop !309

.lr.ph98:                                         ; preds = %.lr.ph98.preheader168, %.lr.ph98
  %.17997 = phi ptr [ %i.dm, %.lr.ph98 ], [ %.17997.ph, %.lr.ph98.preheader168 ] ; 2 uses
  %.18196 = phi ptr [ %i.dp, %.lr.ph98 ], [ %.18196.ph, %.lr.ph98.preheader168 ] ; 2 uses
  %i.dm = getelementptr i8, ptr %.17997, i64 4    ; 2 uses
  %i.dn = load i32, ptr %.17997, align 4, !tbaa !7
  %i.do = trunc i32 %i.dn to i16
  %i.dp = getelementptr i8, ptr %.18196, i64 2
  store i16 %i.do, ptr %.18196, align 2, !tbaa !208
  %i.dq = icmp ult ptr %i.dm, %i.e
  br i1 %i.dq, label %.lr.ph98, label %.loopexit, !llvm.loop !310

bb.o:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 4 %1, i64 %.idx88, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %.lr.ph106, %middle.block, %middle.block162, %.preheader89, %.preheader, %bb.o
  %i.dr = load i64, ptr %i.ar, align 8, !tbaa !279
  %i.ds = add i64 %i.dr, %2
  store i64 %i.ds, ptr %i.ar, align 8, !tbaa !279
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.l, %bb.c, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %.loopexit ], [ -1, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromKindAndData(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.35) #33
  br label %_PyUnicode_FromUCS1.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %bb.r [
    i32 1, label %bb.d
    i32 2, label %bb.p
    i32 4, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  switch i64 %2, label %bb.h [
    i64 0, label %_PyUnicode_FromUCS1.exit
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr %1, align 1, !tbaa !205     ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = zext nneg i8 %i.c to i64
  %i.f = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.e
  br label %_PyUnicode_FromUCS1.exit

bb.g:                                             ; preds = %bb.e
  %i.g = and i8 %i.c, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.h
  br label %_PyUnicode_FromUCS1.exit

bb.h:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 %2         ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread31.i.i, %bb.h
  %.021.i.i = phi ptr [ %1, %bb.h ], [ %i.r, %.thread31.i.i ] ; 4 uses
  %i.k = icmp ult ptr %.021.i.i, %i.j
  br i1 %i.k, label %bb.j, label %ucs1lib_find_max_char.exit.i

bb.j:                                             ; preds = %bb.i
  %i.l = ptrtoint ptr %.021.i.i to i64
  %i.m = and i64 %i.l, 7
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.thread31.i.i

.preheader.i.i:                                   ; preds = %bb.j, %bb.k
  %.019.i.i = phi ptr [ %i.n, %bb.k ], [ %.021.i.i, %bb.j ] ; 4 uses
  %i.n = getelementptr i8, ptr %.019.i.i, i64 8   ; 2 uses
  %.not26.i.i = icmp ugt ptr %i.n, %i.j
  br i1 %.not26.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i
  %i.o = load i64, ptr %.019.i.i, align 8, !tbaa !193
  %i.p = and i64 %i.o, -9187201950435737472
  %.not27.i.i = icmp eq i64 %i.p, 0
  br i1 %.not27.i.i, label %.preheader.i.i, label %ucs1lib_find_max_char.exit.i, !llvm.loop !220

bb.l:                                             ; preds = %.preheader.i.i
  %i.q = icmp eq ptr %.019.i.i, %i.j
  br i1 %i.q, label %ucs1lib_find_max_char.exit.i, label %.thread31.i.i

.thread31.i.i:                                    ; preds = %bb.l, %bb.j
  %.223.i.i = phi ptr [ %.021.i.i, %bb.j ], [ %.019.i.i, %bb.l ] ; 2 uses
  %i.r = getelementptr i8, ptr %.223.i.i, i64 1
  %i.s = load i8, ptr %.223.i.i, align 1, !tbaa !205
  %.not28.i.i = icmp sgt i8 %i.s, -1
  br i1 %.not28.i.i, label %bb.i, label %ucs1lib_find_max_char.exit.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i:                     ; preds = %.thread31.i.i, %bb.l, %bb.i, %bb.k
  %.5.i.i = phi i32 [ 255, %bb.k ], [ 127, %bb.l ], [ 127, %bb.i ], [ 255, %.thread31.i.i ]
  %i.t = tail call ptr @PyUnicode_New(i64 noundef %2, i32 noundef %.5.i.i), !inline_history !311 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_PyUnicode_FromUCS1.exit, label %bb.m

bb.m:                                             ; preds = %ucs1lib_find_max_char.exit.i
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val.i.i = load i32, ptr %i.u, align 8         ; 2 uses
  %i.v = and i32 %.val.i.i, 32
  %.not.i15.i = icmp eq i32 %i.v, 0
  br i1 %.not.i15.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.w, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.t, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.o:                                             ; preds = %bb.m
  %i.x = getelementptr i8, ptr %i.t, i64 56
  %.val4.i.i = load ptr, ptr %i.x, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.o, %bb.n
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.n ], [ %.val4.i.i, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr align 1 %1, i64 %2, i1 false)
  br label %_PyUnicode_FromUCS1.exit

bb.p:                                             ; preds = %bb.c
  %i.y = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %1, i64 noundef %2)
  br label %_PyUnicode_FromUCS1.exit

bb.q:                                             ; preds = %bb.c
  %i.z = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %1, i64 noundef %2)
  br label %_PyUnicode_FromUCS1.exit

bb.r:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.36) #33
  br label %_PyUnicode_FromUCS1.exit

_PyUnicode_FromUCS1.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %ucs1lib_find_max_char.exit.i, %bb.g, %bb.f, %bb.d, %bb.r, %bb.q, %bb.p, %bb.b
end_hunk_1
begin_hunk_2_@_PyUnicode_FromUCS2:bb.a
ucs2lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294967040.i, %bb.o, %.lr.ph.i.jt4294967040, %.outer.i, %.lr.ph64.i, %.preheader.i
  %.2.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ], [ 65535, %.lr.ph64.i ], [ 65535, %.lr.ph.i.jt4294967040 ], [ 65535, %bb.o ], [ 65535, %.lr.ph.jt4294967040.i ]
  %i.au = and i32 %.2.i, 65535                    ; 2 uses
  %i.av = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %i.au) ; 11 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %unicode_char.exit, label %bb.r

bb.r:                                             ; preds = %ucs2lib_find_max_char.exit
  %i.aw = icmp samesign ugt i32 %i.au, 255
  %i.ax = getelementptr i8, ptr %i.av, i64 32
  %.val.i = load i32, ptr %i.ax, align 8          ; 3 uses
  %i.ay = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.ay, 0                  ; 2 uses
  br i1 %i.aw, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = and i32 %.val.i, 64
  %.not.i.i43 = icmp eq i32 %i.az, 0
  %.0.v.i.i = select i1 %.not.i.i43, i64 56, i64 40
  %.0.i.i44 = getelementptr i8, ptr %i.av, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.u:                                             ; preds = %bb.s
  %i.ba = getelementptr i8, ptr %i.av, i64 56
  %.val4.i = load ptr, ptr %i.ba, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.t, %bb.u
  %.0.i45 = phi ptr [ %.0.i.i44, %bb.t ], [ %.val4.i, %bb.u ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0.i45, ptr align 2 %0, i64 %.idx54, i1 false)
  br label %unicode_char.exit

bb.v:                                             ; preds = %bb.r
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = and i32 %.val.i, 64
  %.not.i.i48 = icmp eq i32 %i.bb, 0
  %.0.v.i.i49 = select i1 %.not.i.i48, i64 56, i64 40
  %.0.i.i50 = getelementptr i8, ptr %i.av, i64 %.0.v.i.i49
  br label %_PyUnicode_DATA.exit53

bb.x:                                             ; preds = %bb.v
  %i.bc = getelementptr i8, ptr %i.av, i64 56
  %.val4.i52 = load ptr, ptr %i.bc, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit53

_PyUnicode_DATA.exit53:                           ; preds = %bb.w, %bb.x
  %.0.i51 = phi ptr [ %.0.i.i50, %bb.w ], [ %.val4.i52, %bb.x ] ; 2 uses
  br i1 %i.aa, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_PyUnicode_DATA.exit53
  %.039.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit53 ], [ %i.cv, %.lr.ph ] ; 10 uses
  %.038.lcssa = phi ptr [ %.0.i51, %_PyUnicode_DATA.exit53 ], [ %i.cw, %.lr.ph ] ; 8 uses
  %.039.lcssa93 = ptrtoint ptr %.039.lcssa to i64 ; 4 uses
  %i.bd = icmp ult ptr %.039.lcssa, %i.w
  br i1 %i.bd, label %iter.check, label %unicode_char.exit

iter.check:                                       ; preds = %.preheader
  %i.be = add i64 %.idx54, %i.a
  %i.bf = add i64 %.039.lcssa93, 2
  %umax95 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %i.bf)
  %i.bg = xor i64 %.039.lcssa93, -1
  %i.bh = add i64 %umax95, %i.bg                  ; 3 uses
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = add nuw i64 %i.bi, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bh, 6
  br i1 %min.iters.check, label %.lr.ph62.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.idx54, %i.a
  %i.bl = add i64 %.039.lcssa93, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.bl)
  %i.bm = xor i64 %.039.lcssa93, -1
  %i.bn = add i64 %umax, %i.bm                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = getelementptr i8, ptr %.038.lcssa, i64 %i.bo
  %scevgep = getelementptr i8, ptr %i.bp, i64 1
  %i.bq = and i64 %i.bn, -2
  %i.br = getelementptr i8, ptr %.039.lcssa, i64 %i.bq
  %scevgep94 = getelementptr i8, ptr %i.br, i64 2
  %bound0 = icmp ult ptr %.038.lcssa, %scevgep94
  %bound1 = icmp ult ptr %.039.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph62.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check96 = icmp ult i64 %i.bh, 30
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, -16                     ; 5 uses
  %i.bs = getelementptr i8, ptr %.038.lcssa, i64 %n.vec
  %i.bt = shl i64 %n.vec, 1
  %i.bu = getelementptr i8, ptr %.039.lcssa, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.038.lcssa, i64 %index ; 2 uses
  %i.bv = shl i64 %index, 1
  %next.gep97 = getelementptr i8, ptr %.039.lcssa, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep97, align 2, !tbaa !208, !alias.scope !315
  %wide.load98 = load <8 x i16>, ptr %i.bw, align 2, !tbaa !208, !alias.scope !315
  %i.bx = trunc <8 x i16> %wide.load to <8 x i8>
  %i.by = trunc <8 x i16> %wide.load98 to <8 x i8>
  %i.bz = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.bx, ptr %next.gep, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  store <8 x i8> %i.by, ptr %i.bz, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph62.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %i.bj, -4                   ; 4 uses
  %i.cb = getelementptr i8, ptr %.038.lcssa, i64 %n.vec101
  %i.cc = shl i64 %n.vec101, 1
  %i.cd = getelementptr i8, ptr %.039.lcssa, i64 %i.cc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %.038.lcssa, i64 %index102
  %i.ce = shl i64 %index102, 1
  %next.gep104 = getelementptr i8, ptr %.039.lcssa, i64 %i.ce
  %wide.load105 = load <4 x i16>, ptr %next.gep104, align 2, !tbaa !208, !alias.scope !315
  %i.cf = trunc <4 x i16> %wide.load105 to <4 x i8>
  store <4 x i8> %i.cf, ptr %next.gep103, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.bj, %n.vec101
  br i1 %cmp.n107, label %unicode_char.exit, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.161.ph = phi ptr [ %.038.lcssa, %iter.check ], [ %.038.lcssa, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  %.14060.ph = phi ptr [ %.039.lcssa, %iter.check ], [ %.039.lcssa, %vector.memcheck ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  br label %.lr.ph62

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit53, %.lr.ph
  %.03858 = phi ptr [ %i.cw, %.lr.ph ], [ %.0.i51, %_PyUnicode_DATA.exit53 ] ; 5 uses
  %.03957 = phi ptr [ %i.cv, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit53 ] ; 5 uses
  %i.ch = load i16, ptr %.03957, align 2, !tbaa !208
  %i.ci = trunc i16 %i.ch to i8
  store i8 %i.ci, ptr %.03858, align 1, !tbaa !205
  %i.cj = getelementptr i8, ptr %.03957, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !208
  %i.cl = trunc i16 %i.ck to i8
  %i.cm = getelementptr i8, ptr %.03858, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !205
  %i.cn = getelementptr i8, ptr %.03957, i64 4
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !208
  %i.cp = trunc i16 %i.co to i8
  %i.cq = getelementptr i8, ptr %.03858, i64 2
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !205
  %i.cr = getelementptr i8, ptr %.03957, i64 6
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !208
  %i.ct = trunc i16 %i.cs to i8
  %i.cu = getelementptr i8, ptr %.03858, i64 3
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !205
  %i.cv = getelementptr i8, ptr %.03957, i64 8    ; 3 uses
  %i.cw = getelementptr i8, ptr %.03858, i64 4    ; 2 uses
  %i.cx = icmp ult ptr %i.cv, %i.z
  br i1 %i.cx, label %.lr.ph, label %.preheader, !llvm.loop !322

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  %.161 = phi ptr [ %i.db, %.lr.ph62 ], [ %.161.ph, %.lr.ph62.preheader ] ; 2 uses
  %.14060 = phi ptr [ %i.cy, %.lr.ph62 ], [ %.14060.ph, %.lr.ph62.preheader ] ; 2 uses
  %i.cy = getelementptr i8, ptr %.14060, i64 2    ; 2 uses
  %i.cz = load i16, ptr %.14060, align 2, !tbaa !208
  %i.da = trunc i16 %i.cz to i8
  %i.db = getelementptr i8, ptr %.161, i64 1
  store i8 %i.da, ptr %.161, align 1, !tbaa !205
  %i.dc = icmp ult ptr %i.cy, %i.w
  br i1 %i.dc, label %.lr.ph62, label %unicode_char.exit, !llvm.loop !323

unicode_char.exit:                                ; preds = %.lr.ph62, %middle.block, %vec.epilog.middle.block, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %bb.a, %_PyUnicode_DATA.exit, %ucs2lib_find_max_char.exit
  %.0 = phi ptr [ %i.av, %_PyUnicode_DATA.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs2lib_find_max_char.exit ], [ %i.k, %bb.e ], [ %i.l, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.l, %_PyUnicode_DATA.exit19.i ], [ %i.h, %bb.d ], [ %i.av, %.preheader ], [ %i.av, %middle.block ], [ %i.av, %vec.epilog.middle.block ], [ %i.av, %.lr.ph62 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_FromUCS4(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  switch i64 %1, label %bb.n [
    i64 0, label %unicode_char.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !7      ; 6 uses
  %i.c = icmp ult i32 %i.b, 256
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nuw i32 %i.b to i8                 ; 2 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.f
  br label %unicode_char.exit

bb.e:                                             ; preds = %bb.c
  %i.h = and i8 %i.d, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.i
  br label %unicode_char.exit

bb.f:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %i.b), !inline_history !312 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %unicode_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.k, i64 32
  %i.n = load i32, ptr %i.m, align 8              ; 5 uses
  %i.o = and i32 %i.n, 28
  %i.p = icmp eq i32 %i.o, 8
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.q = trunc i32 %i.b to i16
  %i.r = and i32 %i.n, 32
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = and i32 %i.n, 64
  %.not.i.i.i = icmp eq i32 %i.s, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.k, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.k, i64 56
  %.val4.i.i = load ptr, ptr %i.t, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  store i16 %i.q, ptr %.0.i.i, align 2, !tbaa !208
  br label %unicode_char.exit

bb.k:                                             ; preds = %bb.g
  %i.u = and i32 %i.n, 32
  %.not.i13.i = icmp eq i32 %i.u, 0
  br i1 %.not.i13.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = and i32 %i.n, 64
  %.not.i.i14.i = icmp eq i32 %i.v, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.k, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.m:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %i.k, i64 56
  %.val4.i18.i = load ptr, ptr %i.w, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.m, %bb.l
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.l ], [ %.val4.i18.i, %bb.m ]
  store i32 %i.b, ptr %.0.i17.i, align 4, !tbaa !7
  br label %unicode_char.exit

bb.n:                                             ; preds = %bb.a
  %i.x = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %.idx93 = shl i64 %1, 2                         ; 5 uses
  %i.y = ashr exact i64 %.idx93, 2
  %i.z = and i64 %i.y, -4
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.z ; 6 uses
  %i.ab = icmp ult ptr %0, %i.aa                  ; 3 uses
  br i1 %i.ab, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %bb.r, %bb.q, %bb.n
  %.034.lcssa.i = phi ptr [ %0, %bb.n ], [ %i.al, %bb.p ], [ %i.ap, %bb.r ], [ %i.an, %bb.q ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.n ], [ %.0294982.i, %bb.p ], [ -65536, %bb.r ], [ -256, %bb.q ]
  %.026.lcssa.i = phi i32 [ 127, %bb.n ], [ %.0265081.i, %bb.p ], [ 65535, %bb.r ], [ 255, %bb.q ] ; 2 uses
  %i.ac = icmp ult ptr %.034.lcssa.i, %i.x
  br i1 %i.ac, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.n, %bb.p
  %.02650.i = phi i32 [ %.0265081.i, %bb.p ], [ 127, %bb.n ]
  %.02949.i = phi i32 [ %.0294982.i, %bb.p ], [ -128, %bb.n ] ; 3 uses
  %.03448.i = phi ptr [ %i.al, %bb.p ], [ %0, %bb.n ] ; 5 uses
  %i.ad = load <4 x i32>, ptr %.03448.i, align 4, !tbaa !7
  %i.ae = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ad) ; 4 uses
  %i.af = and i32 %i.ae, %.02949.i
  %.not37.i = icmp eq i32 %i.af, 0
  br i1 %.not37.i, label %bb.p, label %bb.o

.lr.ph.i.jt4294967040:                            ; preds = %bb.q
  %i.ag = load <4 x i32>, ptr %i.an, align 4, !tbaa !7
  %i.ah = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ag) ; 2 uses
  %.not37.i.jt4294967040 = icmp ult i32 %i.ah, 256
  br i1 %.not37.i.jt4294967040, label %bb.p, label %.lr.ph.jt4294901760.i

.lr.ph.i.jt4294901760:                            ; preds = %bb.r
  %i.ai = load <4 x i32>, ptr %i.ap, align 4, !tbaa !7
  %i.aj = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ai)
  %.not37.i.jt4294901760 = icmp ult i32 %i.aj, 65536
  br i1 %.not37.i.jt4294901760, label %bb.p, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.jt4294967040.i, %bb.o
  %i.ak = phi i32 [ %i.ae, %.lr.ph.jt4294967040.i ], [ %i.ae, %bb.o ], [ %i.ah, %.lr.ph.i.jt4294967040 ]
  %.03448.i138 = phi ptr [ %.03448.i, %.lr.ph.jt4294967040.i ], [ %.03448.i, %bb.o ], [ %i.an, %.lr.ph.i.jt4294967040 ]
  %.not37.jt4294901760.i = icmp ult i32 %i.ak, 65536
  br i1 %.not37.jt4294901760.i, label %bb.r, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.o
  %.not37.jt4294967040.i = icmp ult i32 %i.ae, 256
  br i1 %.not37.jt4294967040.i, label %bb.q, label %.lr.ph.jt4294901760.i

bb.o:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !298

bb.p:                                             ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.i.jt4294901760, %.lr.ph.i
  %.03448.i137 = phi ptr [ %i.an, %.lr.ph.i.jt4294967040 ], [ %i.ap, %.lr.ph.i.jt4294901760 ], [ %.03448.i, %.lr.ph.i ]
  %.0294982.i = phi i32 [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.lr.ph.i.jt4294901760 ], [ %.02949.i, %.lr.ph.i ] ; 2 uses
  %.0265081.i = phi i32 [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.lr.ph.i.jt4294901760 ], [ %.02650.i, %.lr.ph.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.03448.i137, i64 16 ; 3 uses
  %i.am = icmp ult ptr %i.al, %i.aa
  br i1 %i.am, label %.lr.ph.i, label %.preheader.i

bb.q:                                             ; preds = %.lr.ph.jt4294967040.i
  %i.an = getelementptr i8, ptr %.03448.i, i64 16 ; 5 uses
  %i.ao = icmp ult ptr %i.an, %i.aa
  br i1 %i.ao, label %.lr.ph.i.jt4294967040, label %.preheader.i

bb.r:                                             ; preds = %.lr.ph.jt4294901760.i
  %i.ap = getelementptr i8, ptr %.03448.i138, i64 16 ; 4 uses
  %i.aq = icmp ult ptr %i.ap, %i.aa
  br i1 %i.aq, label %.lr.ph.i.jt4294901760, label %.preheader.i

.outer.i:                                         ; preds = %bb.t, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.t ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.t ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.236.ph67.i, i64 4 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.x
  br i1 %i.as, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit, !llvm.loop !299

.lr.ph55.split.us.i:                              ; preds = %.preheader.i, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.ar, %.outer.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.at = load i32, ptr %.236.ph67.i, align 4, !tbaa !7 ; 2 uses
  %i.au = and i32 %i.at, %.332.ph68.i
  %.not.us62.i = icmp eq i32 %i.au, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.t
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.t ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.s [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph64.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.s ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.s ], [ 255, %.lr.ph64.i ]
  %i.av = and i32 %.433.us.i, %i.at
  %.not.us.i = icmp eq i32 %i.av, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

ucs4lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294901760.i, %bb.o, %.lr.ph.i.jt4294901760, %.outer.i, %.lr.ph64.i, %.preheader.i
  %.2.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ], [ 1114111, %.lr.ph64.i ], [ 1114111, %.lr.ph.i.jt4294901760 ], [ 1114111, %bb.o ], [ 1114111, %.lr.ph.jt4294901760.i ] ; 3 uses
  %i.aw = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.2.i) ; 16 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %unicode_char.exit, label %bb.u

bb.u:                                             ; preds = %ucs4lib_find_max_char.exit
  %i.ax = icmp ult i32 %.2.i, 256
  br i1 %i.ax, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr i8, ptr %i.aw, i64 32
  %.val.i = load i32, ptr %i.ay, align 8          ; 2 uses
  %i.az = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = and i32 %.val.i, 64
  %.not.i.i74 = icmp eq i32 %i.ba, 0
  %.0.v.i.i = select i1 %.not.i.i74, i64 56, i64 40
  %.0.i.i75 = getelementptr i8, ptr %i.aw, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.x:                                             ; preds = %bb.v
  %i.bb = getelementptr i8, ptr %i.aw, i64 56
  %.val4.i = load ptr, ptr %i.bb, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.w, %bb.x
  %.0.i76 = phi ptr [ %.0.i.i75, %bb.w ], [ %.val4.i, %bb.x ] ; 2 uses
  br i1 %i.ab, label %.lr.ph106, label %.preheader

.preheader:                                       ; preds = %.lr.ph106, %_PyUnicode_DATA.exit
  %.068.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit ], [ %i.co, %.lr.ph106 ] ; 8 uses
  %.063.lcssa = phi ptr [ %.0.i76, %_PyUnicode_DATA.exit ], [ %i.cp, %.lr.ph106 ] ; 6 uses
  %.068.lcssa155 = ptrtoint ptr %.068.lcssa to i64 ; 4 uses
  %i.bc = icmp ult ptr %.068.lcssa, %i.x
  br i1 %i.bc, label %.lr.ph111.preheader, label %unicode_char.exit

.lr.ph111.preheader:                              ; preds = %.preheader
  %i.bd = add i64 %.idx93, %i.a
  %i.be = add i64 %.068.lcssa155, 4
  %umax158 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bf = xor i64 %.068.lcssa155, -1
  %i.bg = add i64 %umax158, %i.bf                 ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.bg, 156
  br i1 %min.iters.check160, label %.lr.ph111.preheader175, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph111.preheader
  %i.bj = add i64 %.idx93, %i.a
  %i.bk = add i64 %.068.lcssa155, 4
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bk)
  %i.bl = xor i64 %.068.lcssa155, -1
  %i.bm = add i64 %umax156, %i.bl                 ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = getelementptr i8, ptr %.063.lcssa, i64 %i.bn
  %scevgep = getelementptr i8, ptr %i.bo, i64 1
  %i.bp = and i64 %i.bm, -4
  %i.bq = getelementptr i8, ptr %.068.lcssa, i64 %i.bp
  %scevgep157 = getelementptr i8, ptr %i.bq, i64 4
  %bound0 = icmp ult ptr %.063.lcssa, %scevgep157
  %bound1 = icmp ult ptr %.068.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.preheader175, label %vector.ph161

vector.ph161:                                     ; preds = %vector.memcheck
  %n.vec163 = and i64 %i.bi, 9223372036854775800  ; 4 uses
  %i.br = getelementptr i8, ptr %.063.lcssa, i64 %n.vec163
  %i.bs = shl i64 %n.vec163, 2
  %i.bt = getelementptr i8, ptr %.068.lcssa, i64 %i.bs
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next170, %vector.body164 ] ; 3 uses
  %next.gep166 = getelementptr i8, ptr %.063.lcssa, i64 %index165 ; 2 uses
  %i.bu = shl i64 %index165, 2
  %next.gep167 = getelementptr i8, ptr %.068.lcssa, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !7, !alias.scope !324
  %wide.load169 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !7, !alias.scope !324
  %i.bw = trunc <4 x i32> %wide.load168 to <4 x i8>
  %i.bx = trunc <4 x i32> %wide.load169 to <4 x i8>
  %i.by = getelementptr i8, ptr %next.gep166, i64 4
  store <4 x i8> %i.bw, ptr %next.gep166, align 1, !tbaa !205, !alias.scope !327, !noalias !324
  store <4 x i8> %i.bx, ptr %i.by, align 1, !tbaa !205, !alias.scope !327, !noalias !324
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.bz, label %middle.block171, label %vector.body164, !llvm.loop !329

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.bi, %n.vec163
  br i1 %cmp.n172, label %unicode_char.exit, label %.lr.ph111.preheader175

.lr.ph111.preheader175:                           ; preds = %vector.memcheck, %.lr.ph111.preheader, %middle.block171
  %.1110.ph = phi ptr [ %.063.lcssa, %vector.memcheck ], [ %.063.lcssa, %.lr.ph111.preheader ], [ %i.br, %middle.block171 ]
  %.169109.ph = phi ptr [ %.068.lcssa, %vector.memcheck ], [ %.068.lcssa, %.lr.ph111.preheader ], [ %i.bt, %middle.block171 ]
  br label %.lr.ph111

.lr.ph106:                                        ; preds = %_PyUnicode_DATA.exit, %.lr.ph106
  %.063105 = phi ptr [ %i.cp, %.lr.ph106 ], [ %.0.i76, %_PyUnicode_DATA.exit ] ; 5 uses
  %.068104 = phi ptr [ %i.co, %.lr.ph106 ], [ %0, %_PyUnicode_DATA.exit ] ; 5 uses
  %i.ca = load i32, ptr %.068104, align 4, !tbaa !7
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %.063105, align 1, !tbaa !205
  %i.cc = getelementptr i8, ptr %.068104, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr i8, ptr %.063105, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !205
  %i.cg = getelementptr i8, ptr %.068104, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr i8, ptr %.063105, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !205
  %i.ck = getelementptr i8, ptr %.068104, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !7
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr i8, ptr %.063105, i64 3
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !205
  %i.co = getelementptr i8, ptr %.068104, i64 16  ; 3 uses
  %i.cp = getelementptr i8, ptr %.063105, i64 4   ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.aa
  br i1 %i.cq, label %.lr.ph106, label %.preheader, !llvm.loop !330

.lr.ph111:                                        ; preds = %.lr.ph111.preheader175, %.lr.ph111
  %.1110 = phi ptr [ %i.cu, %.lr.ph111 ], [ %.1110.ph, %.lr.ph111.preheader175 ] ; 2 uses
  %.169109 = phi ptr [ %i.cr, %.lr.ph111 ], [ %.169109.ph, %.lr.ph111.preheader175 ] ; 2 uses
  %i.cr = getelementptr i8, ptr %.169109, i64 4   ; 2 uses
  %i.cs = load i32, ptr %.169109, align 4, !tbaa !7
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr i8, ptr %.1110, i64 1
  store i8 %i.ct, ptr %.1110, align 1, !tbaa !205
  %i.cv = icmp ult ptr %i.cr, %i.x
  br i1 %i.cv, label %.lr.ph111, label %unicode_char.exit, !llvm.loop !331

bb.y:                                             ; preds = %bb.u
  %i.cw = icmp ult i32 %.2.i, 65536
  %i.cx = getelementptr i8, ptr %i.aw, i64 32
  %.val.i77 = load i32, ptr %i.cx, align 8        ; 3 uses
  %i.cy = and i32 %.val.i77, 32
  %.not.i78 = icmp eq i32 %i.cy, 0                ; 2 uses
  br i1 %i.cw, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i78, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = and i32 %.val.i77, 64
  %.not.i.i79 = icmp eq i32 %i.cz, 0
  %.0.v.i.i80 = select i1 %.not.i.i79, i64 56, i64 40
  %.0.i.i81 = getelementptr i8, ptr %i.aw, i64 %.0.v.i.i80
  br label %_PyUnicode_DATA.exit84

bb.ab:                                            ; preds = %bb.z
  %i.da = getelementptr i8, ptr %i.aw, i64 56
  %.val4.i83 = load ptr, ptr %i.da, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit84

_PyUnicode_DATA.exit84:                           ; preds = %bb.aa, %bb.ab
  %.0.i82 = phi ptr [ %.0.i.i81, %bb.aa ], [ %.val4.i83, %bb.ab ] ; 2 uses
  br i1 %i.ab, label %.lr.ph, label %.preheader94

.preheader94:                                     ; preds = %.lr.ph, %_PyUnicode_DATA.exit84
  %.066.lcssa = phi ptr [ %.0.i82, %_PyUnicode_DATA.exit84 ], [ %i.dw, %.lr.ph ] ; 3 uses
  %.064.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit84 ], [ %i.dv, %.lr.ph ] ; 5 uses
  %i.db = icmp ult ptr %.064.lcssa, %i.x
  br i1 %i.db, label %.lr.ph103.preheader, label %unicode_char.exit

.lr.ph103.preheader:                              ; preds = %.preheader94
  %.064.lcssa151 = ptrtoint ptr %.064.lcssa to i64 ; 2 uses
  %i.dc = add i64 %.idx93, %i.a
  %i.dd = add i64 %.064.lcssa151, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.dd)
  %i.de = xor i64 %.064.lcssa151, -1
  %i.df = add i64 %umax, %i.de                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.df, 28
  br i1 %min.iters.check, label %.lr.ph103.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph103.preheader
  %n.vec = and i64 %i.dh, 9223372036854775800     ; 4 uses
  %i.di = shl i64 %n.vec, 2
  %i.dj = getelementptr i8, ptr %.064.lcssa, i64 %i.di
  %i.dk = shl nuw i64 %n.vec, 1
  %i.dl = getelementptr i8, ptr %.066.lcssa, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.064.lcssa, i64 %i.dm ; 2 uses
  %i.dn = shl i64 %index, 1
  %next.gep152 = getelementptr i8, ptr %.066.lcssa, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load153 = load <4 x i32>, ptr %i.do, align 4, !tbaa !7
  %i.dp = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dq = trunc <4 x i32> %wide.load153 to <4 x i16>
  %i.dr = getelementptr i8, ptr %next.gep152, i64 8
  store <4 x i16> %i.dp, ptr %next.gep152, align 2, !tbaa !208
  store <4 x i16> %i.dq, ptr %i.dr, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %.lr.ph103.preheader177

.lr.ph103.preheader177:                           ; preds = %.lr.ph103.preheader, %middle.block
  %.165102.ph = phi ptr [ %.064.lcssa, %.lr.ph103.preheader ], [ %i.dj, %middle.block ]
  %.167101.ph = phi ptr [ %.066.lcssa, %.lr.ph103.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph103

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit84, %.lr.ph
  %.06499 = phi ptr [ %i.dv, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit84 ] ; 2 uses
  %.06698 = phi ptr [ %i.dw, %.lr.ph ], [ %.0.i82, %_PyUnicode_DATA.exit84 ] ; 2 uses
  %i.dt = load <4 x i32>, ptr %.06499, align 4, !tbaa !7
  %i.du = trunc <4 x i32> %i.dt to <4 x i16>
  store <4 x i16> %i.du, ptr %.06698, align 2, !tbaa !208
  %i.dv = getelementptr i8, ptr %.06499, i64 16   ; 3 uses
  %i.dw = getelementptr i8, ptr %.06698, i64 8    ; 2 uses
  %i.dx = icmp ult ptr %i.dv, %i.aa
  br i1 %i.dx, label %.lr.ph, label %.preheader94, !llvm.loop !333

.lr.ph103:                                        ; preds = %.lr.ph103.preheader177, %.lr.ph103
  %.165102 = phi ptr [ %i.dy, %.lr.ph103 ], [ %.165102.ph, %.lr.ph103.preheader177 ] ; 2 uses
  %.167101 = phi ptr [ %i.eb, %.lr.ph103 ], [ %.167101.ph, %.lr.ph103.preheader177 ] ; 2 uses
  %i.dy = getelementptr i8, ptr %.165102, i64 4   ; 2 uses
  %i.dz = load i32, ptr %.165102, align 4, !tbaa !7
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = getelementptr i8, ptr %.167101, i64 2
  store i16 %i.ea, ptr %.167101, align 2, !tbaa !208
  %i.ec = icmp ult ptr %i.dy, %i.x
  br i1 %i.ec, label %.lr.ph103, label %unicode_char.exit, !llvm.loop !334

bb.ac:                                            ; preds = %bb.y
  br i1 %.not.i78, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = and i32 %.val.i77, 64
  %.not.i.i87 = icmp eq i32 %i.ed, 0
  %.0.v.i.i88 = select i1 %.not.i.i87, i64 56, i64 40
  %.0.i.i89 = getelementptr i8, ptr %i.aw, i64 %.0.v.i.i88
  br label %_PyUnicode_DATA.exit92

bb.ae:                                            ; preds = %bb.ac
  %i.ee = getelementptr i8, ptr %i.aw, i64 56
  %.val4.i91 = load ptr, ptr %i.ee, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit92

_PyUnicode_DATA.exit92:                           ; preds = %bb.ad, %bb.ae
  %.0.i90 = phi ptr [ %.0.i.i89, %bb.ad ], [ %.val4.i91, %bb.ae ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i90, ptr align 4 %0, i64 %.idx93, i1 false)
  br label %unicode_char.exit

unicode_char.exit:                                ; preds = %.lr.ph103, %.lr.ph111, %middle.block, %middle.block171, %.preheader94, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %bb.a, %_PyUnicode_DATA.exit92, %ucs4lib_find_max_char.exit
  %.0 = phi ptr [ %i.aw, %_PyUnicode_DATA.exit92 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs4lib_find_max_char.exit ], [ %i.aw, %.preheader ], [ %i.j, %bb.e ], [ %i.k, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.k, %_PyUnicode_DATA.exit19.i ], [ %i.g, %bb.d ], [ %i.aw, %.preheader94 ], [ %i.aw, %middle.block171 ], [ %i.aw, %middle.block ], [ %i.aw, %.lr.ph111 ], [ %i.aw, %.lr.ph103 ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_PyUnicode_FindMaxChar(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.b, align 8, !tbaa !207
  %i.c = icmp eq i64 %2, %.val24
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val25 = load i32, ptr %i.d, align 8           ; 2 uses
  %i.e = and i32 %.val25, 64
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i32 %.val25, 2
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.g, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.g, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp eq i64 %1, %2
  br i1 %i.h, label %PyUnicode_MAX_CHAR_VALUE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.i, align 8             ; 3 uses
  %i.j = and i32 %.val, 64
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.g:                                             ; preds = %bb.f
  %i.k = lshr i32 %.val, 2
  %i.l = and i32 %i.k, 7                          ; 2 uses
  %i.m = and i32 %.val, 32
  %.not.i26 = icmp eq i32 %i.m, 0
  %i.n = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br i1 %.not.i26, label %bb.h, label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.g
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i27 = phi ptr [ %.val4.i, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.o = zext nneg i32 %i.l to i64                ; 2 uses
  %i.p = mul i64 %2, %i.o                         ; 3 uses
  %i.q = getelementptr i8, ptr %.0.i27, i64 %i.p  ; 7 uses
  %i.r = mul i64 %1, %i.o                         ; 3 uses
  %i.s = getelementptr i8, ptr %.0.i27, i64 %i.r  ; 9 uses
  switch i32 %i.l, label %bb.u [
    i32 1, label %.preheader
    i32 2, label %bb.l
    i32 4, label %bb.p
  ]

.preheader:                                       ; preds = %_PyUnicode_DATA.exit, %.thread31.i
  %.021.i = phi ptr [ %i.aa, %.thread31.i ], [ %i.s, %_PyUnicode_DATA.exit ] ; 4 uses
  %i.t = icmp ult ptr %.021.i, %i.q
  br i1 %i.t, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.i:                                             ; preds = %.preheader
  %i.u = ptrtoint ptr %.021.i to i64
  %i.v = and i64 %i.u, 7
  %.not.i28 = icmp eq i64 %i.v, 0
  br i1 %.not.i28, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.i, %bb.j
  %.019.i = phi ptr [ %i.w, %bb.j ], [ %.021.i, %bb.i ] ; 4 uses
  %i.w = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.w, %i.q
  br i1 %.not26.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i
  %i.x = load i64, ptr %.019.i, align 8, !tbaa !193
  %i.y = and i64 %i.x, -9187201950435737472
  %.not27.i = icmp eq i64 %i.y, 0
  br i1 %.not27.i, label %.preheader.i, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !220

bb.k:                                             ; preds = %.preheader.i
  %i.z = icmp eq ptr %.019.i, %i.q
  br i1 %i.z, label %PyUnicode_MAX_CHAR_VALUE.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.k, %bb.i
  %.223.i = phi ptr [ %.021.i, %bb.i ], [ %.019.i, %bb.k ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.223.i, i64 1
  %i.ab = load i8, ptr %.223.i, align 1, !tbaa !205
  %.not28.i = icmp sgt i8 %i.ab, -1
  br i1 %.not28.i, label %.preheader, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !221

bb.l:                                             ; preds = %_PyUnicode_DATA.exit
  %gepdiff57 = sub i64 %i.p, %i.r
  %i.ac = ashr exact i64 %gepdiff57, 1
  %i.ad = and i64 %i.ac, -4
  %i.ae = getelementptr [2 x i8], ptr %i.s, i64 %i.ad ; 4 uses
  %i.af = icmp ult ptr %i.s, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %.preheader.i29

.preheader.i29:                                   ; preds = %.loopexit.i, %.loopexit.i.jt4294967040, %.loopexit.i.jt4294901760, %bb.l
  %.034.lcssa.i = phi ptr [ %i.s, %bb.l ], [ %i.ap, %.loopexit.i.jt4294901760 ], [ %i.ar, %.loopexit.i.jt4294967040 ], [ %i.an, %.loopexit.i ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.l ], [ -65536, %.loopexit.i.jt4294901760 ], [ -256, %.loopexit.i.jt4294967040 ], [ %.0294982.i, %.loopexit.i ]
  %.026.lcssa.i = phi i32 [ 127, %bb.l ], [ 65535, %.loopexit.i.jt4294901760 ], [ 255, %.loopexit.i.jt4294967040 ], [ %.0265081.i, %.loopexit.i ] ; 2 uses
  %i.ag = icmp ult ptr %.034.lcssa.i, %i.q
  br i1 %i.ag, label %.lr.ph55.split.us.i, label %PyUnicode_MAX_CHAR_VALUE.exit
end_hunk_2
begin_hunk_3_@PyUnicode_AsUCS4:bb.a

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @as_ucs4(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @as_ucs4(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 12 uses
  %.0.i111 = ptrtoint ptr %.0.i to i64            ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !207 ; 8 uses
  %i.i = icmp ne i32 %3, 0                        ; 3 uses
  %i.j = zext i1 %i.i to i64
  %spec.select = add i64 %.val, %i.j              ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.k = icmp ugt i64 %spec.select, 2305843009213693951
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nuw nsw i64 %spec.select, 2
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #33 ; 2 uses
  %.not89 = icmp eq ptr %i.m, null
  br i1 %.not89, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.d, %bb.e
  %i.n = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = icmp slt i64 %2, %spec.select
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.126) #33 ; 0 uses
  %i.r = icmp ne i64 %2, 0
  %or.cond = and i1 %i.r, %i.i
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 4, !tbaa !7
  br label %bb.n

bb.i:                                             ; preds = %bb.f, %bb.e
  %.076 = phi ptr [ %1, %bb.f ], [ %i.m, %bb.e ]  ; 8 uses
  switch i32 %i.d, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr i8, ptr %.0.i, i64 %.val
  %i.t = and i64 %.val, -4
  %i.u = getelementptr i8, ptr %.0.i, i64 %i.t    ; 2 uses
  %i.v = icmp ult ptr %.0.i, %i.u
  br i1 %i.v, label %.lr.ph101, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph101
  %.pre = ptrtoint ptr %i.ay to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.j
  %.083.lcssa112.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %.0.i111, %bb.j ] ; 2 uses
  %.083.lcssa = phi ptr [ %i.ay, %.preheader.loopexit ], [ %.0.i, %bb.j ] ; 7 uses
  %.081.lcssa = phi ptr [ %i.az, %.preheader.loopexit ], [ %.076, %bb.j ] ; 6 uses
  %i.w = icmp ult ptr %.083.lcssa, %i.s
  br i1 %i.w, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.x = add i64 %.val, %.0.i111                  ; 2 uses
  %i.y = sub i64 %i.x, %.083.lcssa112.pre-phi     ; 4 uses
  %scevgep = getelementptr i8, ptr %.083.lcssa, i64 %i.y ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.y, 20
  br i1 %min.iters.check135, label %.lr.ph106.preheader150, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.z = sub i64 %i.x, %.083.lcssa112.pre-phi
  %i.aa = shl i64 %i.z, 2
  %scevgep133 = getelementptr i8, ptr %.081.lcssa, i64 %i.aa
  %bound0 = icmp ult ptr %.081.lcssa, %scevgep
  %bound1 = icmp ult ptr %.083.lcssa, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph106.preheader150, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck
  %n.vec138 = and i64 %i.y, -8                    ; 4 uses
  %i.ab = shl i64 %n.vec138, 2
  %i.ac = getelementptr i8, ptr %.081.lcssa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.083.lcssa, i64 %n.vec138
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 3 uses
  %i.ae = shl i64 %index140, 2
  %next.gep141.a = getelementptr i8, ptr %.081.lcssa, i64 %i.ae ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.083.lcssa, i64 %index140 ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep142, i64 4
  %wide.load143.a = load <4 x i8>, ptr %next.gep142, align 1, !tbaa !205, !alias.scope !335
  %wide.load144 = load <4 x i8>, ptr %i.af, align 1, !tbaa !205, !alias.scope !335
  %i.ag = zext <4 x i8> %wide.load143.a to <4 x i32>
  %i.ah = zext <4 x i8> %wide.load144 to <4 x i32>
  %i.ai = getelementptr i8, ptr %next.gep141.a, i64 16
  store <4 x i32> %i.ag, ptr %next.gep141.a, align 4, !tbaa !7, !alias.scope !338, !noalias !335
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !7, !alias.scope !338, !noalias !335
  %index.next145 = add nuw i64 %index140, 8       ; 2 uses
  %i.aj = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.aj, label %middle.block146, label %vector.body139, !llvm.loop !340

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.y, %n.vec138
  br i1 %cmp.n147, label %.loopexit, label %.lr.ph106.preheader150

.lr.ph106.preheader150:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block146
  %.182105.ph = phi ptr [ %.081.lcssa, %vector.memcheck ], [ %.081.lcssa, %.lr.ph106.preheader ], [ %i.ac, %middle.block146 ]
  %.184104.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph106.preheader ], [ %i.ad, %middle.block146 ]
  br label %.lr.ph106

.lr.ph101:                                        ; preds = %bb.j, %.lr.ph101
  %.081100 = phi ptr [ %i.az, %.lr.ph101 ], [ %.076, %bb.j ] ; 5 uses
  %.08399 = phi ptr [ %i.ay, %.lr.ph101 ], [ %.0.i, %bb.j ] ; 5 uses
  %i.ak = load i8, ptr %.08399, align 1, !tbaa !205
  %i.al = zext i8 %i.ak to i32
  store i32 %i.al, ptr %.081100, align 4, !tbaa !7
  %i.am = getelementptr i8, ptr %.08399, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr i8, ptr %.081100, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !7
  %i.aq = getelementptr i8, ptr %.08399, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !205
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr i8, ptr %.081100, i64 8
  store i32 %i.as, ptr %i.at, align 4, !tbaa !7
  %i.au = getelementptr i8, ptr %.08399, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !205
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr i8, ptr %.081100, i64 12
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.08399, i64 4    ; 4 uses
  %i.az = getelementptr i8, ptr %.081100, i64 16  ; 2 uses
  %i.ba = icmp ult ptr %i.ay, %i.u
  br i1 %i.ba, label %.lr.ph101, label %.preheader.loopexit, !llvm.loop !341

.lr.ph106:                                        ; preds = %.lr.ph106.preheader150, %.lr.ph106
  %.182105 = phi ptr [ %i.be, %.lr.ph106 ], [ %.182105.ph, %.lr.ph106.preheader150 ] ; 2 uses
  %.184104 = phi ptr [ %i.bb, %.lr.ph106 ], [ %.184104.ph, %.lr.ph106.preheader150 ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.184104, i64 1   ; 2 uses
  %i.bc = load i8, ptr %.184104, align 1, !tbaa !205
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %.182105, i64 4
  store i32 %i.bd, ptr %.182105, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.bb, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph106, !llvm.loop !342

bb.k:                                             ; preds = %bb.i
  %i.bf = getelementptr [2 x i8], ptr %.0.i, i64 %.val ; 2 uses
  %.idx = shl i64 %.val, 1                        ; 2 uses
  %i.bg = ashr exact i64 %.idx, 1
  %i.bh = and i64 %i.bg, -4
  %i.bi = getelementptr [2 x i8], ptr %.0.i, i64 %i.bh ; 2 uses
  %i.bj = icmp ult ptr %.0.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.preheader91

.preheader91:                                     ; preds = %.lr.ph, %bb.k
  %.079.lcssa = phi ptr [ %.076, %bb.k ], [ %i.ce, %.lr.ph ] ; 3 uses
  %.078.lcssa = phi ptr [ %.0.i, %bb.k ], [ %i.cd, %.lr.ph ] ; 5 uses
  %i.bk = icmp ult ptr %.078.lcssa, %i.bf
  br i1 %i.bk, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.preheader91
  %.078.lcssa129 = ptrtoint ptr %.078.lcssa to i64 ; 2 uses
  %4 = add i64 %.idx, %.0.i111
  %i.bl = add i64 %.078.lcssa129, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.bl)
  %i.bm = xor i64 %.078.lcssa129, -1
  %i.bn = add i64 %umax, %i.bm                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 14
  br i1 %min.iters.check, label %.lr.ph98.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.bp, -8                      ; 4 uses
  %i.bq = shl i64 %n.vec, 1
  %i.br = getelementptr i8, ptr %.078.lcssa, i64 %i.bq
  %i.bs = shl i64 %n.vec, 2
  %i.bt = getelementptr i8, ptr %.079.lcssa, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.078.lcssa, i64 %i.bu ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep130 = getelementptr i8, ptr %.079.lcssa, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !208
  %wide.load131 = load <4 x i16>, ptr %i.bw, align 2, !tbaa !208
  %i.bx = zext <4 x i16> %wide.load to <4 x i32>
  %i.by = zext <4 x i16> %wide.load131 to <4 x i32>
  %i.bz = getelementptr i8, ptr %next.gep130, i64 16
  store <4 x i32> %i.bx, ptr %next.gep130, align 4, !tbaa !7
  store <4 x i32> %i.by, ptr %i.bz, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph98.preheader152

.lr.ph98.preheader152:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.197.ph = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.br, %middle.block ]
  %.18096.ph = phi ptr [ %.079.lcssa, %.lr.ph98.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.07894 = phi ptr [ %i.cd, %.lr.ph ], [ %.0.i, %bb.k ] ; 2 uses
  %.07993 = phi ptr [ %i.ce, %.lr.ph ], [ %.076, %bb.k ] ; 2 uses
  %i.cb = load <4 x i16>, ptr %.07894, align 2, !tbaa !208
  %i.cc = zext <4 x i16> %i.cb to <4 x i32>
  store <4 x i32> %i.cc, ptr %.07993, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %.07894, i64 8    ; 3 uses
  %i.ce = getelementptr i8, ptr %.07993, i64 16   ; 2 uses
  %i.cf = icmp ult ptr %i.cd, %i.bi
  br i1 %i.cf, label %.lr.ph, label %.preheader91, !llvm.loop !344

.lr.ph98:                                         ; preds = %.lr.ph98.preheader152, %.lr.ph98
  %.197 = phi ptr [ %i.cg, %.lr.ph98 ], [ %.197.ph, %.lr.ph98.preheader152 ] ; 2 uses
  %.18096 = phi ptr [ %i.cj, %.lr.ph98 ], [ %.18096.ph, %.lr.ph98.preheader152 ] ; 2 uses
  %i.cg = getelementptr i8, ptr %.197, i64 2      ; 2 uses
  %i.ch = load i16, ptr %.197, align 2, !tbaa !208
  %i.ci = zext i16 %i.ch to i32
  %i.cj = getelementptr i8, ptr %.18096, i64 4
  store i32 %i.ci, ptr %.18096, align 4, !tbaa !7
  %i.ck = icmp ult ptr %i.cg, %i.bf
  br i1 %i.ck, label %.lr.ph98, label %.loopexit, !llvm.loop !345

bb.l:                                             ; preds = %bb.i
  %i.cl = icmp eq i32 %i.d, 4
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = shl i64 %.val, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.076, ptr align 1 %.0.i, i64 %i.cm, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %.lr.ph106, %middle.block, %middle.block146, %.preheader91, %.preheader, %bb.l
  br i1 %i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.cn = getelementptr [4 x i8], ptr %.076, i64 %.val
  store i32 0, ptr %i.cn, align 4, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.m, %bb.g, %bb.h, %.thread
  %.0 = phi ptr [ null, %.thread ], [ null, %bb.g ], [ null, %bb.h ], [ %.076, %bb.m ], [ %.076, %.loopexit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUCS4Copy(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @as_ucs4(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromFormatV(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct._PyUnicodeWriter, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %2) #33
  %i.a = call fastcc i32 @unicode_from_format(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %2) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %2) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %.0
}

declare void @_PyUnicodeWriter_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_from_format(ptr noundef initializes((52, 53)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 41 uses
  %i.b = alloca [26 x i8], align 16               ; 9 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 70 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34 ; 5 uses
  %i.d = add i64 %i.c, 100
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !346
  %i.g = add i64 %i.d, %i.f
  store i64 %i.g, ptr %i.e, align 8, !tbaa !346
  %i.h = getelementptr i8, ptr %0, i64 52         ; 8 uses
  store i8 1, ptr %i.h, align 4, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.i = getelementptr i8, ptr %1, i64 %i.c       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread31.i, %bb.a
  %.021.i = phi ptr [ %1, %bb.a ], [ %i.q, %.thread31.i ] ; 4 uses
  %i.j = icmp ult ptr %.021.i, %i.i
  br i1 %i.j, label %bb.c, label %ucs1lib_find_max_char.exit

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %.021.i to i64
  %i.l = and i64 %i.k, 7
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.019.i = phi ptr [ %i.m, %bb.d ], [ %.021.i, %bb.c ] ; 4 uses
  %i.m = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.m, %i.i
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.n = load i64, ptr %.019.i, align 8, !tbaa !193
  %i.o = and i64 %i.n, -9187201950435737472
  %.not27.i = icmp eq i64 %i.o, 0
  br i1 %.not27.i, label %.preheader.i, label %.critedge58, !llvm.loop !220

bb.e:                                             ; preds = %.preheader.i
  %i.p = icmp eq ptr %.019.i, %i.i
  br i1 %i.p, label %ucs1lib_find_max_char.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.e, %bb.c
  %.223.i = phi ptr [ %.021.i, %bb.c ], [ %.019.i, %bb.e ] ; 2 uses
  %i.q = getelementptr i8, ptr %.223.i, i64 1
  %i.r = load i8, ptr %.223.i, align 1, !tbaa !205
  %.not28.i = icmp sgt i8 %i.r, -1
  br i1 %.not28.i, label %bb.b, label %.critedge58, !llvm.loop !221

ucs1lib_find_max_char.exit:                       ; preds = %bb.b, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 90 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 45 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.w = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 32         ; 18 uses
  %i.z = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.g

.critedge58:                                      ; preds = %.thread31.i, %bb.d
  %i.ab = icmp sgt i64 %i.c, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.critedge58, %bb.f
  %.04074 = phi i64 [ %i.af, %bb.f ], [ 0, %.critedge58 ] ; 3 uses
  %i.ac = getelementptr i8, ptr %1, i64 %.04074
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !205
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %i.af = add nuw nsw i64 %.04074, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.c
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !348

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge58
  %.040.lcssa = phi i64 [ 0, %.critedge58 ], [ %i.c, %bb.f ], [ %.04074, %.lr.ph ]
  %i.ag = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
end_hunk_3
begin_hunk_4_@PyUnicode_AsEncodedString:bb.a
  br label %_PyUnicode_DATA.exit.i93

_PyUnicode_DATA.exit.i93:                         ; preds = %bb.an, %bb.am
  %.0.i.i94 = phi ptr [ %.0.i.i.i92, %bb.am ], [ %.val4.i.i96, %bb.an ]
  %i.dv = getelementptr i8, ptr %0, i64 16
  %.val8.i95 = load i64, ptr %i.dv, align 8, !tbaa !207
  %i.dw = call ptr @PyBytes_FromStringAndSize(ptr noundef %.0.i.i94, i64 noundef %.val8.i95) #33
  br label %Py_DECREF.exit76

bb.ao:                                            ; preds = %bb.ak
  %i.dx = call fastcc ptr @unicode_encode_ucs1(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 256)
  br label %Py_DECREF.exit76

_PyUnicode_AsASCIIString.exit:                    ; preds = %bb.h, %bb.j, %bb.m, %bb.n, %bb.p, %bb.q, %bb.ah, %bb.s, %bb.t
  %i.dy = call ptr @_PyCodec_EncodeText(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #33 ; 14 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %Py_DECREF.exit76, label %bb.ap

bb.ap:                                            ; preds = %_PyUnicode_AsASCIIString.exit
  %i.ea = getelementptr i8, ptr %i.dy, i64 8      ; 2 uses
  %.val79 = load ptr, ptr %i.ea, align 8, !tbaa !197 ; 3 uses
  %i.eb = getelementptr i8, ptr %.val79, i64 168
  %.val81 = load i64, ptr %i.eb, align 8, !tbaa !198
  %i.ec = and i64 %.val81, 134217728
  %.not65 = icmp eq i64 %i.ec, 0
  br i1 %.not65, label %bb.aq, label %Py_DECREF.exit76

bb.aq:                                            ; preds = %bb.ap
  %.not.i97 = icmp eq ptr %.val79, @PyByteArray_Type
  br i1 %.not.i97, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.aq
  %i.ed = call i32 @PyType_IsSubtype(ptr noundef %.val79, ptr noundef nonnull @PyByteArray_Type) #33
  %.not119 = icmp eq i32 %i.ed, 0
  br i1 %.not119, label %bb.ax, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.aq, %PyObject_TypeCheck.exit
  %i.ee = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !194
  %i.ef = call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.ee, i64 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull %1) #33
  %.not67 = icmp eq i32 %i.ef, 0
  br i1 %.not67, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %PyObject_TypeCheck.exit.thread
  %i.eg = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i75 = icmp sgt i32 %i.eg, -1
  br i1 %.not.i75, label %bb.as, label %Py_DECREF.exit76

bb.as:                                            ; preds = %bb.ar
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.dy, align 8, !tbaa !205
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.at, label %Py_DECREF.exit76

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

bb.au:                                            ; preds = %PyObject_TypeCheck.exit.thread
  %i.ej = getelementptr i8, ptr %i.dy, i64 40
  %.val84 = load ptr, ptr %i.ej, align 8, !tbaa !397
  %i.ek = getelementptr i8, ptr %i.dy, i64 16
  %.val85 = load i64, ptr %i.ek, align 8, !tbaa !380
  %i.el = call ptr @PyBytes_FromStringAndSize(ptr noundef %.val84, i64 noundef %.val85) #33 ; 3 uses
  %i.em = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i73 = icmp sgt i32 %i.em, -1
  br i1 %.not.i73, label %bb.av, label %Py_DECREF.exit76

bb.av:                                            ; preds = %bb.au
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.dy, align 8, !tbaa !205
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.aw, label %Py_DECREF.exit76

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

bb.ax:                                            ; preds = %PyObject_TypeCheck.exit
  %i.ep = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %.val = load ptr, ptr %i.ea, align 8, !tbaa !197
  %i.eq = getelementptr i8, ptr %.val, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !378
  %i.es = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ep, ptr noundef nonnull @.str.52, ptr noundef nonnull %1, ptr noundef %i.er) #33 ; 0 uses
  %i.et = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.et, -1
  br i1 %.not.i, label %bb.ay, label %Py_DECREF.exit76

bb.ay:                                            ; preds = %bb.ax
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.dy, align 8, !tbaa !205
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.az, label %Py_DECREF.exit76

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

Py_DECREF.exit76:                                 ; preds = %bb.ao, %_PyUnicode_DATA.exit.i93, %bb.aj, %_PyUnicode_DATA.exit.i, %bb.y, %bb.ad, %bb.u, %bb.r, %bb.o, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %_PyUnicode_AsASCIIString.exit, %bb.c, %bb.e, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %i.i, %bb.e ], [ null, %bb.c ], [ null, %_PyUnicode_AsASCIIString.exit ], [ %i.dy, %bb.ap ], [ %i.el, %bb.aw ], [ null, %bb.az ], [ null, %bb.at ], [ null, %bb.ar ], [ null, %bb.as ], [ %i.el, %bb.au ], [ %i.el, %bb.av ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.aj ], [ %i.dx, %bb.ao ], [ %i.dw, %_PyUnicode_DATA.exit.i93 ], [ %i.ce, %bb.ad ], [ %i.cd, %_PyUnicode_DATA.exit.i ], [ null, %bb.y ], [ %i.bb, %bb.u ], [ %i.aw, %bb.r ], [ %i.ar, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.2
}

declare ptr @_PyInterpreterState_GetConfig(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc range(i32 1, 9) i32 @get_error_handler_wide(ptr nofree noundef readonly %0) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.168) #34
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.169) #34
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.170) #34
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.171) #34
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.172) #34
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.173) #34
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.174) #34
  %i.o = icmp eq i32 %i.n, 0
  %. = select i1 %i.o, i32 7, i32 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 6, %bb.g ], [ 1, %bb.a ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ %., %bb.h ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_AsUTF8String(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @unicode_encode_utf8(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_EncodeUTF16(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val129 = load ptr, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr i8, ptr %.val129, i64 168
  %.val132 = load i64, ptr %i.e, align 8, !tbaa !198
  %i.f = and i64 %.val132, 268435456
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %ucs1lib_utf16_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 7                          ; 3 uses
  %i.l = and i32 %i.i, 32
  %.not.i137 = icmp eq i32 %i.l, 0
  br i1 %.not.i137, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 18 uses
  %.0.i464 = ptrtoint ptr %.0.i to i64            ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val135 = load i64, ptr %i.o, align 8, !tbaa !207 ; 16 uses
  %i.p = icmp eq i32 %i.k, 4
  br i1 %i.p, label %bb.f, label %.loopexit243

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.q = getelementptr [4 x i8], ptr %.0.i, i64 %.val135 ; 2 uses
  %i.r = icmp ult ptr %.0.i, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit243

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.s = shl i64 %.val135, 2
  %i.t = add i64 %i.s, %.0.i464
  %i.u = add i64 %.0.i464, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %.0.i464, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 12
  br i1 %min.iters.check, label %.lr.ph.preheader657, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.y, 9223372036854775804      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %.0.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi465 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load466 = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.ad = icmp ugt <2 x i32> %wide.load, splat (i32 65535)
  %i.ae = icmp ugt <2 x i32> %wide.load466, splat (i32 65535)
  %i.af = zext <2 x i1> %i.ad to <2 x i64>
  %i.ag = zext <2 x i1> %i.ae to <2 x i64>
  %i.ah = add <2 x i64> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i64> %vec.phi465, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit243, label %.lr.ph.preheader657

.lr.ph.preheader657:                              ; preds = %.lr.ph.preheader, %middle.block
  %.086277.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.096276.ph = phi ptr [ %.0.i, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader657, %.lr.ph
  %.086277 = phi i64 [ %spec.select, %.lr.ph ], [ %.086277.ph, %.lr.ph.preheader657 ]
  %.096276 = phi ptr [ %i.al, %.lr.ph ], [ %.096276.ph, %.lr.ph.preheader657 ] ; 2 uses
  %i.al = getelementptr i8, ptr %.096276, i64 4   ; 2 uses
  %i.am = load i32, ptr %.096276, align 4, !tbaa !7
  %i.an = icmp ugt i32 %i.am, 65535
  %i.ao = zext i1 %i.an to i64
  %spec.select = add i64 %.086277, %i.ao          ; 2 uses
  %i.ap = icmp ult ptr %i.al, %i.q
  br i1 %i.ap, label %.lr.ph, label %.loopexit243, !llvm.loop !400

.loopexit243:                                     ; preds = %.lr.ph, %middle.block, %bb.f, %_PyUnicode_DATA.exit
  %.288 = phi i64 [ 0, %_PyUnicode_DATA.exit ], [ 0, %bb.f ], [ %i.ak, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.aq = icmp eq i32 %2, 0                       ; 5 uses
  %.neg235 = select i1 %i.aq, i64 4611686018427387902, i64 4611686018427387903
  %i.ar = sub i64 %.neg235, %.288
  %i.as = icmp sgt i64 %.val135, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit243
  %i.at = tail call ptr @PyErr_NoMemory() #33
  br label %ucs1lib_utf16_encode.exit

bb.h:                                             ; preds = %.loopexit243
  %i.au = zext i1 %i.aq to i64
  %i.av = add i64 %.val135, %i.au
  %i.aw = add i64 %i.av, %.288
  %i.ax = icmp sgt i32 %2, 0                      ; 4 uses
  %i.ay = icmp eq i32 %i.k, 1
  %i.az = shl i64 %i.aw, 1                        ; 2 uses
  br i1 %i.ay, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.az) #33 ; 12 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %ucs1lib_utf16_encode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.ba, i64 32     ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.ba, i64 34
  store i16 -257, ptr %i.bc, align 2, !tbaa !208
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0219 = phi ptr [ %i.bd, %bb.k ], [ %i.bc, %bb.j ] ; 4 uses
  %i.be = icmp sgt i64 %.val135, 0
  br i1 %i.be, label %bb.m, label %ucs1lib_utf16_encode.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = ptrtoint ptr %.0.i to i64               ; 4 uses
  %i.bg = getelementptr i8, ptr %.0.i, i64 %.val135 ; 2 uses
  %i.bh = and i64 %.val135, 9223372036854775804
  %i.bi = getelementptr i8, ptr %.0.i, i64 %i.bh  ; 3 uses
  %i.bj = icmp ult ptr %.0.i, %i.bi               ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bj, label %.lr.ph.i, label %.preheader47.i

.preheader47.loopexit.i:                          ; preds = %.lr.ph.i
  %.pre75.i = ptrtoint ptr %i.cs to i64
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %.preheader47.loopexit.i, %bb.n
  %.0.lcssa71.pre-phi.i = phi i64 [ %.pre75.i, %.preheader47.loopexit.i ], [ %i.bf, %bb.n ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %i.ct, %.preheader47.loopexit.i ], [ %.0219, %bb.n ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %i.cs, %.preheader47.loopexit.i ], [ %.0.i, %bb.n ] ; 9 uses
  %i.bk = icmp ult ptr %.0.lcssa.i, %i.bg
  br i1 %i.bk, label %iter.check559, label %ucs1lib_utf16_encode.exit

iter.check559:                                    ; preds = %.preheader47.i
  %i.bl = add i64 %.val135, %i.bf                 ; 2 uses
  %i.bm = sub i64 %i.bl, %.0.lcssa71.pre-phi.i    ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bm ; 2 uses
  %min.iters.check541 = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check541, label %.lr.ph54.i.preheader, label %vector.memcheck535

vector.memcheck535:                               ; preds = %iter.check559
  %i.bn = sub i64 %i.bl, %.0.lcssa71.pre-phi.i
  %i.bo = shl i64 %i.bn, 1
  %scevgep536 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bo
  %bound0537 = icmp ult ptr %.043.lcssa.i, %scevgep.i
  %bound1538 = icmp ult ptr %.0.lcssa.i, %scevgep536
  %found.conflict539 = and i1 %bound0537, %bound1538
  br i1 %found.conflict539, label %.lr.ph54.i.preheader, label %vector.main.loop.iter.check542

vector.main.loop.iter.check542:                   ; preds = %vector.memcheck535
  %min.iters.check543 = icmp ult i64 %i.bm, 16
  br i1 %min.iters.check543, label %vec.epilog.ph563, label %vector.ph544

vector.ph544:                                     ; preds = %vector.main.loop.iter.check542
  %n.mod.vf545 = and i64 %i.bm, 12
  %n.vec546 = and i64 %i.bm, -16                  ; 5 uses
  %i.bp = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec546
  %i.bq = shl i64 %n.vec546, 1
  %i.br = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bq
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph544
  %index548 = phi i64 [ 0, %vector.ph544 ], [ %index.next553, %vector.body547 ] ; 3 uses
  %next.gep549.a = getelementptr i8, ptr %.0.lcssa.i, i64 %index548 ; 2 uses
  %i.bs = shl i64 %index548, 1
  %next.gep550 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep549.a, i64 8
  %wide.load551.a = load <8 x i8>, ptr %next.gep549.a, align 1, !tbaa !205, !alias.scope !401
  %wide.load552 = load <8 x i8>, ptr %i.bt, align 1, !tbaa !205, !alias.scope !401
  %i.bu = zext <8 x i8> %wide.load551.a to <8 x i16>
  %i.bv = zext <8 x i8> %wide.load552 to <8 x i16>
  %i.bw = getelementptr i8, ptr %next.gep550, i64 16
  store <8 x i16> %i.bu, ptr %next.gep550, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  store <8 x i16> %i.bv, ptr %i.bw, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  %index.next553 = add nuw i64 %index548, 16      ; 2 uses
  %i.bx = icmp eq i64 %index.next553, %n.vec546
  br i1 %i.bx, label %middle.block554, label %vector.body547, !llvm.loop !406

middle.block554:                                  ; preds = %vector.body547
  %cmp.n555 = icmp eq i64 %i.bm, %n.vec546
  br i1 %cmp.n555, label %ucs1lib_utf16_encode.exit, label %vec.epilog.iter.check561

vec.epilog.iter.check561:                         ; preds = %middle.block554
  %min.epilog.iters.check562 = icmp eq i64 %n.mod.vf545, 0
  br i1 %min.epilog.iters.check562, label %.lr.ph54.i.preheader, label %vec.epilog.ph563, !prof !228

vec.epilog.ph563:                                 ; preds = %vector.main.loop.iter.check542, %vec.epilog.iter.check561
  %vec.epilog.resume.val556 = phi i64 [ %n.vec546, %vec.epilog.iter.check561 ], [ 0, %vector.main.loop.iter.check542 ]
  %n.vec565 = and i64 %i.bm, -4                   ; 4 uses
  %i.by = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec565
  %i.bz = shl i64 %n.vec565, 1
  %i.ca = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bz
  br label %vec.epilog.vector.body566

vec.epilog.vector.body566:                        ; preds = %vec.epilog.vector.body566, %vec.epilog.ph563
  %index567 = phi i64 [ %vec.epilog.resume.val556, %vec.epilog.ph563 ], [ %index.next571, %vec.epilog.vector.body566 ] ; 3 uses
  %next.gep568.a = getelementptr i8, ptr %.0.lcssa.i, i64 %index567
  %i.cb = shl i64 %index567, 1
  %next.gep569 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.cb
  %wide.load570 = load <4 x i8>, ptr %next.gep568.a, align 1, !tbaa !205, !alias.scope !401
  %i.cc = zext <4 x i8> %wide.load570 to <4 x i16>
  store <4 x i16> %i.cc, ptr %next.gep569, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  %index.next571 = add nuw i64 %index567, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next571, %n.vec565
  br i1 %i.cd, label %vec.epilog.middle.block572, label %vec.epilog.vector.body566, !llvm.loop !407

vec.epilog.middle.block572:                       ; preds = %vec.epilog.vector.body566
  %cmp.n573 = icmp eq i64 %i.bm, %n.vec565
  br i1 %cmp.n573, label %ucs1lib_utf16_encode.exit, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %vector.memcheck535, %iter.check559, %vec.epilog.iter.check561, %vec.epilog.middle.block572
  %.153.i.ph = phi ptr [ %.0.lcssa.i, %iter.check559 ], [ %.0.lcssa.i, %vector.memcheck535 ], [ %i.bp, %vec.epilog.iter.check561 ], [ %i.by, %vec.epilog.middle.block572 ]
  %.14452.i.ph = phi ptr [ %.043.lcssa.i, %iter.check559 ], [ %.043.lcssa.i, %vector.memcheck535 ], [ %i.br, %vec.epilog.iter.check561 ], [ %i.ca, %vec.epilog.middle.block572 ]
  br label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.050.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %.0.i, %bb.n ] ; 5 uses
  %.04349.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %.0219, %bb.n ] ; 5 uses
end_hunk_4
begin_hunk_5_@PyUnicode_AsEncodedUnicode:bb.a
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeLocaleAndSize(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_Py_GetErrorHandler(ptr noundef %2)
  %i.b = tail call fastcc ptr @unicode_decode_locale(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef 1)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_decode_locale(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 1, 9) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !205
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34
  %.not19 = icmp eq i64 %1, %i.f
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.54) #33
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.h = call i32 @_Py_DecodeLocaleEx(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %2) #33
  switch i32 %i.h, label %bb.j [
    i32 0, label %bb.k
    i32 -2, label %bb.e
    i32 -3, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_UnicodeDecodeError, align 8, !tbaa !194
  %i.j = load i64, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %i.k = add i64 %i.j, 1
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.m = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.i, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.166, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.j, i64 noundef %i.k, ptr noundef %i.l) #33 ; 5 uses
  %.not21 = icmp eq ptr %i.m, null
  br i1 %.not21, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.m) #33 ; 0 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !205
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #33
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.167) #33
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.d
  %i.s = call ptr @PyErr_NoMemory() #33           ; 0 uses
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !354
  %i.u = load i64, ptr %i.b, align 8, !tbaa !193
  %i.v = call ptr @PyUnicode_FromWideChar(ptr noundef %i.t, i64 noundef %i.u)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !354
  call void @PyMem_RawFree(ptr noundef %i.w) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.j, %bb.i, %bb.e, %bb.k
  %.0 = phi ptr [ %i.v, %bb.k ], [ null, %bb.e ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %.0, %Py_DECREF.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeLocale(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34
  %i.b = tail call i32 @_Py_GetErrorHandler(ptr noundef %1)
  %i.c = tail call fastcc ptr @unicode_decode_locale(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef %i.b, i32 noundef 1)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeFSDefault(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34 ; 3 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 11840
  %i.e = load i32, ptr %i.d, align 8, !tbaa !391
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 11856
  %i.g = load i32, ptr %i.f, align 8, !tbaa !392
  %i.h = getelementptr i8, ptr %i.c, i64 11848
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !393
  %i.j = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef %i.g, ptr noundef %i.i, ptr noundef null)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.c, i64 11832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !394  ; 2 uses
  %.not18.i = icmp eq ptr %i.l, null
  br i1 %.not18.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.c, i64 11848
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !393
  %i.o = tail call ptr @PyUnicode_Decode(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull %i.l, ptr noundef %i.n)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.c) #33
  %i.q = getelementptr i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !395
  %i.s = tail call fastcc i32 @get_error_handler_wide(ptr noundef %i.r)
  %i.t = tail call fastcc ptr @unicode_decode_locale(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef %i.s, i32 noundef 0)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

PyUnicode_DecodeFSDefaultAndSize.exit:            ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.d ], [ %i.t, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeFSDefaultAndSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11840
  %i.d = load i32, ptr %i.c, align 8, !tbaa !391
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 11856
  %i.f = load i32, ptr %i.e, align 8, !tbaa !392
  %i.g = getelementptr i8, ptr %i.b, i64 11848
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !393
  %i.i = tail call fastcc ptr @unicode_decode_utf8(ptr noundef %0, i64 noundef %1, i32 noundef %i.f, ptr noundef %i.h, ptr noundef null)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 11832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 11848
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !393
  %i.n = tail call ptr @PyUnicode_Decode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.k, ptr noundef %i.m)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.b) #33
  %i.p = getelementptr i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !395
  %i.r = tail call fastcc i32 @get_error_handler_wide(ptr noundef %i.q)
  %i.s = tail call fastcc ptr @unicode_decode_locale(ptr noundef %0, i64 noundef %1, i32 noundef %i.r, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.d ], [ %i.s, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_decode_utf8(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #1 {
bb.a:
  %5 = ptrtoint ptr %0 to i64
  %6 = alloca %struct._PyUnicodeWriter, align 8   ; 7 uses
  switch i64 %1, label %bb.h [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not71 = icmp eq ptr %4, null
  br i1 %.not71, label %get_latin1_char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %4, align 8, !tbaa !193
  br label %get_latin1_char.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !205     ; 2 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %bb.e, label %.thread81

bb.e:                                             ; preds = %bb.d
  %.not70 = icmp eq ptr %4, null
  br i1 %.not70, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %4, align 8, !tbaa !193
  %.pr = load i8, ptr %0, align 1, !tbaa !205     ; 3 uses
  %i.c = icmp sgt i8 %.pr, -1
  br i1 %i.c, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  %i.d = phi i8 [ %.pr, %bb.f ], [ %i.a, %bb.e ]
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.e
  br label %get_latin1_char.exit

bb.g:                                             ; preds = %bb.f
  %i.g = and i8 %.pr, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.h
  br label %get_latin1_char.exit

bb.h:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %1, 9223372036854775751
  br i1 %i.j, label %bb.i, label %.thread81

bb.i:                                             ; preds = %bb.h
  %i.k = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %get_latin1_char.exit

.thread81:                                        ; preds = %bb.d, %bb.h
  %i.l = getelementptr i8, ptr %0, i64 %1         ; 8 uses
  %i.m = tail call fastcc i64 @find_first_nonascii(ptr noundef %0, ptr noundef %i.l) ; 4 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.thread81
  %i.o = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef 127) ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %get_latin1_char.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val.i = load i32, ptr %i.q, align 8           ; 2 uses
  %i.r = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.s, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.o, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %i.o, i64 56
  %.val4.i = load ptr, ptr %i.t, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %.0.i.i, %bb.l ], [ %.val4.i, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %0, i64 %1, i1 false)
  %.not69 = icmp eq ptr %4, null
  br i1 %.not69, label %get_latin1_char.exit, label %bb.n

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  store i64 %1, ptr %4, align 8, !tbaa !193
  br label %get_latin1_char.exit

bb.o:                                             ; preds = %.thread81
  %i.u = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !205   ; 3 uses
  %i.w = icmp eq i32 %2, 1
  %i.x = icmp eq ptr %4, null
  %or.cond.not68 = and i1 %i.w, %i.x
  %i.y = icmp ugt i8 %i.v, -63
  %or.cond4 = select i1 %or.cond.not68, i1 %i.y, i1 false
  br i1 %or.cond4, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.z = ptrtoint ptr %i.l to i64
  %i.aa = icmp samesign ugt i64 %1, 7
  br i1 %i.aa, label %.preheader40.i, label %.loopexit.i

.preheader40.i:                                   ; preds = %bb.p
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = and i64 %i.ab, 7
  %.not41.i = icmp eq i64 %i.ac, 0
  br i1 %.not41.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.preheader40.i
  %.030.lcssa.i = phi i64 [ 0, %.preheader40.i ], [ %i.am, %.lr.ph.i ], [ %i.ax, %.lr.ph.i.1 ], [ %i.bi, %.lr.ph.i.2 ], [ %i.bt, %.lr.ph.i.3 ], [ %i.ce, %.lr.ph.i.4 ], [ %i.cp, %.lr.ph.i.5 ], [ %i.da, %.lr.ph.i.6 ], [ %i.dm, %.lr.ph.i.7 ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader40.i ], [ %i.ae, %.lr.ph.i ], [ %i.ap, %.lr.ph.i.1 ], [ %i.ba, %.lr.ph.i.2 ], [ %i.bl, %.lr.ph.i.3 ], [ %i.bw, %.lr.ph.i.4 ], [ %i.ch, %.lr.ph.i.5 ], [ %i.cs, %.lr.ph.i.6 ], [ %i.dd, %.lr.ph.i.7 ] ; 3 uses
  %i.ad = getelementptr i8, ptr %.0.lcssa.i, i64 8
  %.not3851.i = icmp ugt ptr %i.ad, %i.l
  br i1 %.not3851.i, label %.loopexit.i, label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %.preheader40.i
  %i.ae = getelementptr i8, ptr %0, i64 1         ; 3 uses
  %i.af = load i8, ptr %0, align 1, !tbaa !205
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = xor i32 %i.ag, -1
  %i.ai = lshr i32 %i.ah, 7
  %i.aj = lshr i32 %i.ag, 6
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = and i32 %i.ak, 1                        ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = ptrtoint ptr %i.ae to i64
  %i.ao = and i64 %i.an, 7
  %.not.i72 = icmp eq i64 %i.ao, 0
  br i1 %.not.i72, label %.preheader.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ap = getelementptr i8, ptr %0, i64 2         ; 3 uses
  %i.aq = load i8, ptr %i.ae, align 1, !tbaa !205
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = xor i32 %i.ar, -1
  %i.at = lshr i32 %i.as, 7
  %i.au = lshr i32 %i.ar, 6
  %i.av = or i32 %i.at, %i.au
  %i.aw = and i32 %i.av, 1
  %narrow = add nuw nsw i32 %i.al, %i.aw          ; 2 uses
  %i.ax = zext nneg i32 %narrow to i64
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = and i64 %i.ay, 7
  %.not.i72.1 = icmp eq i64 %i.az, 0
  br i1 %.not.i72.1, label %.preheader.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ba = getelementptr i8, ptr %0, i64 3         ; 3 uses
  %i.bb = load i8, ptr %i.ap, align 1, !tbaa !205
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = xor i32 %i.bc, -1
  %i.be = lshr i32 %i.bd, 7
  %i.bf = lshr i32 %i.bc, 6
  %i.bg = or i32 %i.be, %i.bf
  %i.bh = and i32 %i.bg, 1
  %narrow124.a = add nuw nsw i32 %narrow, %i.bh   ; 2 uses
  %i.bi = zext nneg i32 %narrow124.a to i64
  %i.bj = ptrtoint ptr %i.ba to i64
  %i.bk = and i64 %i.bj, 7
  %.not.i72.2 = icmp eq i64 %i.bk, 0
  br i1 %.not.i72.2, label %.preheader.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bl = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.bm = load i8, ptr %i.ba, align 1, !tbaa !205
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = xor i32 %i.bn, -1
  %i.bp = lshr i32 %i.bo, 7
  %i.bq = lshr i32 %i.bn, 6
  %i.br = or i32 %i.bp, %i.bq
  %i.bs = and i32 %i.br, 1
  %narrow125.a = add nuw nsw i32 %narrow124.a, %i.bs ; 2 uses
  %i.bt = zext nneg i32 %narrow125.a to i64
  %i.bu = ptrtoint ptr %i.bl to i64
  %i.bv = and i64 %i.bu, 7
  %.not.i72.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i72.3, label %.preheader.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.bw = getelementptr i8, ptr %0, i64 5         ; 3 uses
  %i.bx = load i8, ptr %i.bl, align 1, !tbaa !205
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = xor i32 %i.by, -1
  %i.ca = lshr i32 %i.bz, 7
  %i.cb = lshr i32 %i.by, 6
  %i.cc = or i32 %i.ca, %i.cb
  %i.cd = and i32 %i.cc, 1
  %narrow126.a = add nuw nsw i32 %narrow125.a, %i.cd ; 2 uses
  %i.ce = zext nneg i32 %narrow126.a to i64
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = and i64 %i.cf, 7
  %.not.i72.4 = icmp eq i64 %i.cg, 0
  br i1 %.not.i72.4, label %.preheader.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.ch = getelementptr i8, ptr %0, i64 6         ; 3 uses
  %i.ci = load i8, ptr %i.bw, align 1, !tbaa !205
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = xor i32 %i.cj, -1
  %i.cl = lshr i32 %i.ck, 7
  %i.cm = lshr i32 %i.cj, 6
  %i.cn = or i32 %i.cl, %i.cm
  %i.co = and i32 %i.cn, 1
  %narrow127.a = add nuw nsw i32 %narrow126.a, %i.co ; 2 uses
  %i.cp = zext nneg i32 %narrow127.a to i64
  %i.cq = ptrtoint ptr %i.ch to i64
  %i.cr = and i64 %i.cq, 7
  %.not.i72.5 = icmp eq i64 %i.cr, 0
  br i1 %.not.i72.5, label %.preheader.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.cs = getelementptr i8, ptr %0, i64 7         ; 3 uses
  %i.ct = load i8, ptr %i.ch, align 1, !tbaa !205
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = xor i32 %i.cu, -1
  %i.cw = lshr i32 %i.cv, 7
  %i.cx = lshr i32 %i.cu, 6
  %i.cy = or i32 %i.cw, %i.cx
  %i.cz = and i32 %i.cy, 1
  %narrow128 = add nuw nsw i32 %narrow127.a, %i.cz
  %i.da = zext i32 %narrow128 to i64              ; 2 uses
  %i.db = ptrtoint ptr %i.cs to i64
  %i.dc = and i64 %i.db, 7
  %.not.i72.6 = icmp eq i64 %i.dc, 0
  br i1 %.not.i72.6, label %.preheader.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.dd = getelementptr i8, ptr %0, i64 8
  %i.de = load i8, ptr %i.cs, align 1, !tbaa !205
  %i.df = zext i8 %i.de to i32                    ; 2 uses
  %i.dg = xor i32 %i.df, -1
  %i.dh = lshr i32 %i.dg, 7
  %i.di = lshr i32 %i.df, 6
  %i.dj = or i32 %i.dh, %i.di
  %i.dk = and i32 %i.dj, 1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = add nuw nsw i64 %i.da, %i.dl
  br label %.preheader.i

.lr.ph54.i:                                       ; preds = %.preheader.i, %._crit_edge.i
  %.153.i = phi ptr [ %.2.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i, %.preheader.i ] ; 5 uses
  %.13152.i = phi i64 [ %i.ek, %._crit_edge.i ], [ %.030.lcssa.i, %.preheader.i ]
  %i.dn = ptrtoint ptr %.153.i to i64
  %i.do = sub i64 %i.z, %i.dn
  %i.dp = icmp sgt i64 %i.do, 2040
  %i.dq = getelementptr i8, ptr %.153.i, i64 2040
  %spec.select.i = select i1 %i.dp, ptr %i.dq, ptr %i.l ; 2 uses
  %i.dr = getelementptr i8, ptr %.153.i, i64 8    ; 2 uses
  %.not3945.i = icmp ugt ptr %i.dr, %spec.select.i
  br i1 %.not3945.i, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph54.i, %.lr.ph48.i
  %i.ds = phi ptr [ %i.ea, %.lr.ph48.i ], [ %i.dr, %.lr.ph54.i ] ; 3 uses
  %.247.i = phi ptr [ %i.ds, %.lr.ph48.i ], [ %.153.i, %.lr.ph54.i ]
  %.03446.i = phi i64 [ %i.dz, %.lr.ph48.i ], [ 0, %.lr.ph54.i ]
  %i.dt = load i64, ptr %.247.i, align 8, !tbaa !193 ; 2 uses
  %i.du = xor i64 %i.dt, -1
  %i.dv = lshr i64 %i.du, 7
  %i.dw = lshr i64 %i.dt, 6
  %i.dx = or i64 %i.dv, %i.dw
  %i.dy = and i64 %i.dx, 72340172838076673
  %i.dz = add i64 %i.dy, %.03446.i                ; 2 uses
  %i.ea = getelementptr i8, ptr %i.ds, i64 8      ; 2 uses
  %.not39.i = icmp ugt ptr %i.ea, %spec.select.i
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph48.i, !llvm.loop !479

._crit_edge.i:                                    ; preds = %.lr.ph48.i, %.lr.ph54.i
  %.034.lcssa.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.dz, %.lr.ph48.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.153.i, %.lr.ph54.i ], [ %i.ds, %.lr.ph48.i ] ; 3 uses
  %i.eb = and i64 %.034.lcssa.i, 71777214294589695
  %i.ec = lshr i64 %.034.lcssa.i, 8
  %i.ed = and i64 %i.ec, 71777214294589695
  %i.ee = add nuw nsw i64 %i.ed, %i.eb            ; 2 uses
  %i.ef = lshr i64 %i.ee, 16
  %i.eg = add nuw nsw i64 %i.ef, %i.ee            ; 2 uses
  %i.eh = lshr i64 %i.eg, 32
  %i.ei = add nuw nsw i64 %i.eh, %i.eg
  %i.ej = and i64 %i.ei, 2047
  %i.ek = add i64 %i.ej, %.13152.i                ; 2 uses
  %i.el = getelementptr i8, ptr %.2.lcssa.i, i64 8
  %.not38.i = icmp ugt ptr %i.el, %i.l
  br i1 %.not38.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !480

.loopexit.i:                                      ; preds = %._crit_edge.i, %.preheader.i, %bb.p
  %.232.i = phi i64 [ 0, %bb.p ], [ %.030.lcssa.i, %.preheader.i ], [ %i.ek, %._crit_edge.i ] ; 3 uses
  %.3.i = phi ptr [ %0, %bb.p ], [ %.0.lcssa.i, %.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.em = icmp ult ptr %.3.i, %i.l
  br i1 %i.em, label %.lr.ph60.i.preheader, label %utf8_count_codepoints.exit

.lr.ph60.i.preheader:                             ; preds = %.loopexit.i
  %.3.i113 = ptrtoint ptr %.3.i to i64
  %i.en = add i64 %1, %5
  %i.eo = sub i64 %i.en, %.3.i113                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.eo, 4
  br i1 %min.iters.check, label %.lr.ph60.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.i.preheader
  %n.vec = and i64 %i.eo, -4                      ; 3 uses
  %i.ep = getelementptr i8, ptr %.3.i, i64 %n.vec
  %i.eq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.232.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eq, %vector.ph ], [ %i.fg, %vector.body ]
  %vec.phi114 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %next.gep = getelementptr i8, ptr %.3.i, i64 %index ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !205
  %wide.load115 = load <2 x i8>, ptr %i.er, align 1, !tbaa !205
  %i.es = zext <2 x i8> %wide.load to <2 x i32>   ; 2 uses
  %i.et = zext <2 x i8> %wide.load115 to <2 x i32> ; 2 uses
  %i.eu = xor <2 x i32> %i.es, splat (i32 -1)
  %i.ev = xor <2 x i32> %i.et, splat (i32 -1)
  %i.ew = lshr <2 x i32> %i.eu, splat (i32 7)
  %i.ex = lshr <2 x i32> %i.ev, splat (i32 7)
  %i.ey = lshr <2 x i32> %i.es, splat (i32 6)
  %i.ez = lshr <2 x i32> %i.et, splat (i32 6)
  %i.fa = or <2 x i32> %i.ew, %i.ey
  %i.fb = or <2 x i32> %i.ex, %i.ez
  %i.fc = and <2 x i32> %i.fa, splat (i32 1)
  %i.fd = and <2 x i32> %i.fb, splat (i32 1)
  %i.fe = zext nneg <2 x i32> %i.fc to <2 x i64>
  %i.ff = zext nneg <2 x i32> %i.fd to <2 x i64>
  %i.fg = add <2 x i64> %vec.phi, %i.fe           ; 2 uses
  %i.fh = add <2 x i64> %vec.phi114, %i.ff        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %utf8_count_codepoints.exit, label %.lr.ph60.i.preheader116

.lr.ph60.i.preheader116:                          ; preds = %.lr.ph60.i.preheader, %middle.block
  %.458.i.ph = phi ptr [ %.3.i, %.lr.ph60.i.preheader ], [ %i.ep, %middle.block ]
  %.33357.i.ph = phi i64 [ %.232.i, %.lr.ph60.i.preheader ], [ %i.fj, %middle.block ]
  br label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.lr.ph60.i.preheader116, %.lr.ph60.i
  %.458.i = phi ptr [ %i.fk, %.lr.ph60.i ], [ %.458.i.ph, %.lr.ph60.i.preheader116 ] ; 2 uses
  %.33357.i = phi i64 [ %i.ft, %.lr.ph60.i ], [ %.33357.i.ph, %.lr.ph60.i.preheader116 ]
  %i.fk = getelementptr i8, ptr %.458.i, i64 1    ; 2 uses
  %i.fl = load i8, ptr %.458.i, align 1, !tbaa !205
  %i.fm = zext i8 %i.fl to i32                    ; 2 uses
  %i.fn = xor i32 %i.fm, -1
  %i.fo = lshr i32 %i.fn, 7
  %i.fp = lshr i32 %i.fm, 6
  %i.fq = or i32 %i.fo, %i.fp
  %i.fr = and i32 %i.fq, 1
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = add i64 %.33357.i, %i.fs                ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.fk, %i.l
  br i1 %exitcond.not.i, label %utf8_count_codepoints.exit, label %.lr.ph60.i, !llvm.loop !482

utf8_count_codepoints.exit:                       ; preds = %.lr.ph60.i, %middle.block, %.loopexit.i
  %.333.lcssa.i = phi i64 [ %.232.i, %.loopexit.i ], [ %i.fj, %middle.block ], [ %i.ft, %.lr.ph60.i ] ; 2 uses
  %i.fu = icmp ult i8 %i.v, -60
  br i1 %i.fu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %utf8_count_codepoints.exit
  %i.fv = icmp samesign ult i8 %i.v, -16
  %. = select i1 %i.fv, i32 65535, i32 1114111
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %utf8_count_codepoints.exit, %bb.o
  %i.fw = phi i1 [ true, %bb.o ], [ false, %bb.q ], [ true, %utf8_count_codepoints.exit ]
  %.058 = phi i32 [ 127, %bb.o ], [ %., %bb.q ], [ 255, %utf8_count_codepoints.exit ]
  %.057 = phi i64 [ %1, %bb.o ], [ %.333.lcssa.i, %bb.q ], [ %.333.lcssa.i, %utf8_count_codepoints.exit ]
  %i.fx = tail call ptr @PyUnicode_New(i64 noundef %.057, i32 noundef %.058) ; 5 uses
  %.not = icmp eq ptr %i.fx, null
  br i1 %.not, label %get_latin1_char.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_PyUnicodeWriter_InitWithBuffer(ptr noundef nonnull %6, ptr noundef nonnull %i.fx) #33
  br i1 %i.fw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.fy = getelementptr i8, ptr %i.fx, i64 32
  %.val.i73 = load i32, ptr %i.fy, align 8        ; 2 uses
  %i.fz = and i32 %.val.i73, 32
  %.not.i74 = icmp eq i32 %i.fz, 0
  br i1 %.not.i74, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ga = and i32 %.val.i73, 64
  %.not.i.i75 = icmp eq i32 %i.ga, 0
  %.0.v.i.i76 = select i1 %.not.i.i75, i64 56, i64 40
  %.0.i.i77 = getelementptr i8, ptr %i.fx, i64 %.0.v.i.i76
  br label %_PyUnicode_DATA.exit80

bb.v:                                             ; preds = %bb.t
  %i.gb = getelementptr i8, ptr %i.fx, i64 56
  %.val4.i79 = load ptr, ptr %i.gb, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit80

_PyUnicode_DATA.exit80:                           ; preds = %bb.u, %bb.v
  %.0.i78 = phi ptr [ %.0.i.i77, %bb.u ], [ %.val4.i79, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i78, ptr align 1 %0, i64 %i.m, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.m, ptr %i.gc, align 8, !tbaa !279
  br label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit80, %bb.s
  %.056 = phi ptr [ %i.u, %_PyUnicode_DATA.exit80 ], [ %0, %bb.s ]
  %i.gd = call fastcc i32 @unicode_decode_utf8_impl(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %.056, ptr noundef %i.l, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %6) #33
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gf = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %6) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1 = phi ptr [ null, %bb.x ], [ %i.gf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %bb.g, %.thread, %bb.c, %bb.b, %_PyUnicode_DATA.exit, %bb.n, %bb.j, %bb.r, %bb.z, %bb.i
  %.4 = phi ptr [ null, %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ], [ null, %bb.i ], [ %i.o, %_PyUnicode_DATA.exit ], [ null, %bb.j ], [ %i.o, %bb.n ], [ %.1, %bb.z ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ %i.f, %.thread ], [ %i.i, %bb.g ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 131073) i32 @PyUnicode_FSConverter(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !194    ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %.not.i25 = icmp sgt i32 %i.c, -1
  br i1 %.not.i25, label %bb.c, label %Py_DECREF.exit26

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !205
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit26

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #33
  br label %Py_DECREF.exit26

Py_DECREF.exit26:                                 ; preds = %bb.b, %bb.c, %bb.d
  store ptr null, ptr %1, align 8, !tbaa !194
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyOS_FSPath(ptr noundef nonnull %0) #33 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.i = getelementptr i8, ptr %.val, i64 168
  %.val29 = load i64, ptr %i.i, align 8, !tbaa !198
  %i.j = and i64 %.val29, 134217728
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 6 uses
  %i.m = getelementptr i8, ptr %i.l, i64 11840
  %i.n = load i32, ptr %i.m, align 8, !tbaa !391
  %.not.i30 = icmp eq i32 %i.n, 0
  br i1 %.not.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.l, i64 11856
  %i.p = load i32, ptr %i.o, align 8, !tbaa !392
  %i.q = getelementptr i8, ptr %i.l, i64 11848
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !393
  %i.s = tail call fastcc ptr @unicode_encode_utf8(ptr noundef nonnull %i.f, i32 noundef %i.p, ptr noundef %i.r)
  br label %PyUnicode_EncodeFSDefault.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.l, i64 11832
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !394  ; 2 uses
  %.not15.i = icmp eq ptr %i.u, null
  br i1 %.not15.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.l, i64 11848
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !393
  %i.x = tail call ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %i.f, ptr noundef nonnull %i.u, ptr noundef %i.w)
  br label %PyUnicode_EncodeFSDefault.exit

bb.k:                                             ; preds = %bb.i
  %i.y = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.l) #33
  %i.z = getelementptr i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !395
  %i.ab = tail call fastcc i32 @get_error_handler_wide(ptr noundef %i.aa)
  %i.ac = tail call fastcc ptr @unicode_encode_locale(ptr noundef nonnull %i.f, i32 noundef %i.ab, i32 noundef 0)
  br label %PyUnicode_EncodeFSDefault.exit

PyUnicode_EncodeFSDefault.exit:                   ; preds = %bb.h, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.s, %bb.h ], [ %i.x, %bb.j ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !205 ; 2 uses
  %.not.i23 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i23, label %bb.l, label %Py_DECREF.exit24

bb.l:                                             ; preds = %PyUnicode_EncodeFSDefault.exit
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !205
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %Py_DECREF.exit24

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #33
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %PyUnicode_EncodeFSDefault.exit, %bb.l, %bb.m
  %.not21 = icmp eq ptr %.0.i, null
  br i1 %.not21, label %Py_DECREF.exit, label %bb.n

bb.n:                                             ; preds = %bb.f, %Py_DECREF.exit24
  %.017 = phi ptr [ %.0.i, %Py_DECREF.exit24 ], [ %i.f, %bb.f ] ; 6 uses
  %i.ag = getelementptr i8, ptr %.017, i64 16
  %.017.val = load i64, ptr %i.ag, align 8, !tbaa !380
  %i.ah = getelementptr i8, ptr %.017, i64 32
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #34
  %.not22 = icmp eq i64 %.017.val, %i.ai
  br i1 %.not22, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.54) #33
  %i.ak = load i32, ptr %.017, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.017, align 8, !tbaa !205
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %.017) #33
  br label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.n
  store ptr %.017, ptr %1, align 8, !tbaa !194
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %Py_DECREF.exit24, %bb.e, %bb.r, %Py_DECREF.exit26
  %.0 = phi i32 [ 1, %Py_DECREF.exit26 ], [ 0, %bb.e ], [ 0, %Py_DECREF.exit24 ], [ 131072, %bb.r ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ]
  ret i32 %.0
}

declare ptr @PyOS_FSPath(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 131073) i32 @PyUnicode_FSDecoder(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !194    ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %.not.i30 = icmp sgt i32 %i.c, -1
  br i1 %.not.i30, label %bb.c, label %Py_DECREF.exit31

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !205
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit31

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #33
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.b, %bb.c, %bb.d
  store ptr null, ptr %1, align 8, !tbaa !194
  br label %Py_DECREF.exit27

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyOS_FSPath(ptr noundef nonnull %0) #33 ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val36 = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.i = getelementptr i8, ptr %.val36, i64 168
  %.val38 = load i64, ptr %i.i, align 8, !tbaa !198 ; 2 uses
  %i.j = and i64 %.val38, 268435456
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %.val38, 134217728
  %.not24 = icmp eq i64 %i.k, 0
  br i1 %.not24, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %i.f, i64 32       ; 3 uses
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %.val39 = load i64, ptr %i.m, align 8, !tbaa !380 ; 3 uses
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 6 uses
  %i.p = getelementptr i8, ptr %i.o, i64 11840
  %i.q = load i32, ptr %i.p, align 8, !tbaa !391
  %.not.i40 = icmp eq i32 %i.q, 0
  br i1 %.not.i40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.o, i64 11856
  %i.s = load i32, ptr %i.r, align 8, !tbaa !392
  %i.t = getelementptr i8, ptr %i.o, i64 11848
end_hunk_5
begin_hunk_6_@_PyUnicode_JoinArray:bb.a
  br label %_PyUnicode_DATA.exit187.peel

bb.ae:                                            ; preds = %bb.ac
  %i.cp = getelementptr i8, ptr %i.cl, i64 56
  %.val4.i186.peel = load ptr, ptr %i.cp, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit187.peel

_PyUnicode_DATA.exit187.peel:                     ; preds = %bb.ae, %bb.ad
  %.0.i185.peel = phi ptr [ %.0.i.i184.peel, %bb.ad ], [ %.val4.i186.peel, %bb.ae ]
  %i.cq = mul i64 %.val157.peel.pre, %i.cj        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i171, ptr align 1 %.0.i185.peel, i64 %i.cq, i1 false)
  %i.cr = getelementptr i8, ptr %.0.i171, i64 %i.cq
  br label %bb.af

bb.af:                                            ; preds = %_PyUnicode_DATA.exit187.peel, %.lr.ph225
  %.3.peel = phi ptr [ %i.cr, %_PyUnicode_DATA.exit187.peel ], [ %.0.i171, %.lr.ph225 ]
  %exitcond246.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond246.peel.not, label %.loopexit.thread, label %.lr.ph225.split.peel.next

.lr.ph225.split.us:                               ; preds = %.lr.ph225.thread, %bb.aj
  %.1110224.us = phi ptr [ %.3.us, %bb.aj ], [ %.0.i171, %.lr.ph225.thread ] ; 3 uses
  %.1126223.us = phi i64 [ %i.db, %bb.aj ], [ 0, %.lr.ph225.thread ] ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %1, i64 %.1126223.us
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !194 ; 4 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val157.us = load i64, ptr %i.cu, align 8, !tbaa !207 ; 2 uses
  %.not145.us = icmp eq i64 %.val157.us, 0
  br i1 %.not145.us, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph225.split.us
  %i.cv = getelementptr i8, ptr %i.ct, i64 32
  %.val.i180.us = load i32, ptr %i.cv, align 8    ; 2 uses
  %i.cw = and i32 %.val.i180.us, 32
  %.not.i181.us = icmp eq i32 %i.cw, 0
  br i1 %.not.i181.us, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = and i32 %.val.i180.us, 64
  %.not.i.i182.us = icmp eq i32 %i.cx, 0
  %.0.v.i.i183.us = select i1 %.not.i.i182.us, i64 56, i64 40
  %.0.i.i184.us = getelementptr i8, ptr %i.ct, i64 %.0.v.i.i183.us
  br label %_PyUnicode_DATA.exit187.us

bb.ai:                                            ; preds = %bb.ag
  %i.cy = getelementptr i8, ptr %i.ct, i64 56
  %.val4.i186.us = load ptr, ptr %i.cy, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit187.us

_PyUnicode_DATA.exit187.us:                       ; preds = %bb.ai, %bb.ah
  %.0.i185.us = phi ptr [ %.0.i.i184.us, %bb.ah ], [ %.val4.i186.us, %bb.ai ]
  %i.cz = mul i64 %.val157.us, %i.ci              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1110224.us, ptr align 1 %.0.i185.us, i64 %i.cz, i1 false)
  %i.da = getelementptr i8, ptr %.1110224.us, i64 %i.cz
  br label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit187.us, %.lr.ph225.split.us
  %.3.us = phi ptr [ %i.da, %_PyUnicode_DATA.exit187.us ], [ %.1110224.us, %.lr.ph225.split.us ]
  %i.db = add nuw nsw i64 %.1126223.us, 1         ; 2 uses
  %exitcond248.not = icmp eq i64 %i.db, %2
  br i1 %exitcond248.not, label %.loopexit, label %.lr.ph225.split.us, !llvm.loop !545

.lr.ph225.split.peel.next:                        ; preds = %bb.af, %bb.an
  %.1110224 = phi ptr [ %.3, %bb.an ], [ %.3.peel, %bb.af ] ; 2 uses
  %.1126223 = phi i64 [ %i.dm, %bb.an ], [ 1, %bb.af ] ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %1, i64 %.1126223
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !194 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1110224, ptr align 1 %.0108, i64 %i.ck, i1 false)
  %i.de = getelementptr i8, ptr %.1110224, i64 %i.ck ; 3 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 16
  %.val157 = load i64, ptr %i.df, align 8, !tbaa !207 ; 2 uses
  %.not145 = icmp eq i64 %.val157, 0
  br i1 %.not145, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph225.split.peel.next
  %i.dg = getelementptr i8, ptr %i.dd, i64 32
  %.val.i180 = load i32, ptr %i.dg, align 8       ; 2 uses
  %i.dh = and i32 %.val.i180, 32
  %.not.i181 = icmp eq i32 %i.dh, 0
  br i1 %.not.i181, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = and i32 %.val.i180, 64
  %.not.i.i182 = icmp eq i32 %i.di, 0
  %.0.v.i.i183 = select i1 %.not.i.i182, i64 56, i64 40
  %.0.i.i184 = getelementptr i8, ptr %i.dd, i64 %.0.v.i.i183
  br label %_PyUnicode_DATA.exit187

bb.am:                                            ; preds = %bb.ak
  %i.dj = getelementptr i8, ptr %i.dd, i64 56
  %.val4.i186 = load ptr, ptr %i.dj, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit187

_PyUnicode_DATA.exit187:                          ; preds = %bb.al, %bb.am
  %.0.i185 = phi ptr [ %.0.i.i184, %bb.al ], [ %.val4.i186, %bb.am ]
  %i.dk = mul i64 %.val157, %i.cj                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %.0.i185, i64 %i.dk, i1 false)
  %i.dl = getelementptr i8, ptr %i.de, i64 %i.dk
  br label %bb.an

bb.an:                                            ; preds = %_PyUnicode_DATA.exit187, %.lr.ph225.split.peel.next
  %.3 = phi ptr [ %i.dl, %_PyUnicode_DATA.exit187 ], [ %i.de, %.lr.ph225.split.peel.next ]
  %i.dm = add nuw nsw i64 %.1126223, 1            ; 2 uses
  %exitcond246.not = icmp eq i64 %i.dm, %2
  br i1 %exitcond246.not, label %.loopexit, label %.lr.ph225.split.peel.next, !llvm.loop !546

.lr.ph228.split.peel.next:                        ; preds = %.critedge.peel, %.critedge
  %.0122227 = phi i64 [ %.2124, %.critedge ], [ %.val156.peel.pre, %.critedge.peel ] ; 2 uses
  %.2127226 = phi i64 [ %i.du, %.critedge ], [ 1, %.critedge.peel ] ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %1, i64 %.2127226
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !194 ; 2 uses
  %i.dp = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.bj, i64 noundef %.0122227, ptr noundef %.0107274, i64 noundef 0, i64 noundef %.1131.fr278, i32 noundef 0) ; 0 uses
  %i.dq = add i64 %.0122227, %.1131.fr278         ; 3 uses
  %i.dr = getelementptr i8, ptr %i.do, i64 16
  %.val156 = load i64, ptr %i.dr, align 8, !tbaa !207 ; 3 uses
  %.not144 = icmp eq i64 %.val156, 0
  br i1 %.not144, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph228.split.peel.next
  %i.ds = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.bj, i64 noundef %i.dq, ptr noundef nonnull %i.do, i64 noundef 0, i64 noundef %.val156, i32 noundef 0) ; 0 uses
  %i.dt = add i64 %.val156, %i.dq
  br label %.critedge

.critedge:                                        ; preds = %bb.ao, %.lr.ph228.split.peel.next
  %.2124 = phi i64 [ %i.dt, %bb.ao ], [ %i.dq, %.lr.ph228.split.peel.next ]
  %i.du = add nuw nsw i64 %.2127226, 1            ; 2 uses
  %exitcond249.not = icmp eq i64 %i.du, %2
  br i1 %exitcond249.not, label %.loopexit, label %.lr.ph228.split.peel.next, !llvm.loop !547

.loopexit:                                        ; preds = %bb.an, %bb.aj, %.critedge, %.critedge.us, %.critedge.peel, %_PyUnicode_DATA.exit179.thread
  %i.dv = phi ptr [ %i.bx, %bb.aj ], [ %i.bj, %.critedge.peel ], [ %i.bj, %.critedge ], [ %i.bx, %_PyUnicode_DATA.exit179.thread ], [ %i.bj, %.critedge.us ], [ %i.bx, %bb.an ] ; 2 uses
  %.0107275 = phi ptr [ %.0107273285290, %bb.aj ], [ %.0107274, %.critedge.peel ], [ %.0107274, %.critedge ], [ %.0107273285290, %_PyUnicode_DATA.exit179.thread ], [ %.0107274, %.critedge.us ], [ %.0107273285290, %bb.an ] ; 2 uses
  %.not.i188 = icmp eq ptr %.0107275, null
  br i1 %.not.i188, label %_Py_NewRef.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.af, %_PyUnicode_DATA.exit179, %.loopexit
  %.0107275297 = phi ptr [ %.0107275, %.loopexit ], [ %.0107273285290, %_PyUnicode_DATA.exit179 ], [ %.0107273285290, %bb.af ] ; 3 uses
  %i.dw = phi ptr [ %i.dv, %.loopexit ], [ %i.bx, %_PyUnicode_DATA.exit179 ], [ %i.bx, %bb.af ] ; 3 uses
  %i.dx = load i32, ptr %.0107275297, align 8, !tbaa !205 ; 2 uses
  %.not.i.i189 = icmp sgt i32 %i.dx, -1
  br i1 %.not.i.i189, label %bb.ap, label %_Py_NewRef.exit

bb.ap:                                            ; preds = %.loopexit.thread
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %.0107275297, align 8, !tbaa !205
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.aq, label %_Py_NewRef.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0107275297) #33
  br label %_Py_NewRef.exit

bb.ar:                                            ; preds = %._crit_edge.thread, %.loopexit244, %.loopexit245, %._crit_edge
  %.0107276 = phi ptr [ %.0107274, %.loopexit244 ], [ %.0107274, %.loopexit245 ], [ %.0107274, %._crit_edge ], [ %.0107, %._crit_edge.thread ] ; 4 uses
  %.not.i190 = icmp eq ptr %.0107276, null
  br i1 %.not.i190, label %_Py_NewRef.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = load i32, ptr %.0107276, align 8, !tbaa !205 ; 2 uses
  %.not.i.i191 = icmp sgt i32 %i.ea, -1
  br i1 %.not.i.i191, label %bb.at, label %_Py_NewRef.exit

bb.at:                                            ; preds = %bb.as
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %.0107276, align 8, !tbaa !205
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.au, label %_Py_NewRef.exit

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0107276) #33
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %.thread202, %bb.aq, %bb.ap, %.loopexit.thread, %.loopexit, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ %i.dw, %bb.aq ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ], [ %i.dv, %.loopexit ], [ %i.dw, %.loopexit.thread ], [ %i.dw, %bb.ap ], [ null, %.thread202 ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.au ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_PyUnicode_FastFill(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 4 uses
  %.0.i13 = ptrtoint ptr %.0.i to i64             ; 6 uses
  switch i32 %i.d, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.h = trunc i32 %3 to i8
  %i.i = getelementptr i8, ptr %.0.i, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 %i.h, i64 %2, i1 false)
  br label %_PyUnicode_Fill.exit

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.j = trunc i32 %3 to i16                      ; 3 uses
  %i.k = getelementptr [2 x i8], ptr %.0.i, i64 %1 ; 7 uses
  %i.l = getelementptr [2 x i8], ptr %i.k, i64 %2 ; 2 uses
  %i.m = icmp ult ptr %i.k, %i.l
  br i1 %i.m, label %iter.check, label %_PyUnicode_Fill.exit

iter.check:                                       ; preds = %bb.e
  %i.n = shl i64 %2, 1
  %i.o = add i64 %i.n, %.0.i13
  %i.p = shl i64 %1, 1                            ; 3 uses
  %i.q = add i64 %i.o, %i.p
  %i.r = add i64 %i.p, %.0.i13
  %i.s = add i64 %i.r, 2
  %umax14 = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.s)
  %i.t = xor i64 %.0.i13, -1
  %i.u = add i64 %umax14, %i.t
  %i.v = sub i64 %i.u, %i.p                       ; 3 uses
  %i.w = lshr i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 5 uses
  %min.iters.check16.a = icmp ult i64 %i.v, 6
  br i1 %min.iters.check16.a, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check17 = icmp ult i64 %i.v, 30
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph18

vector.ph18:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf19 = and i64 %i.x, 12
  %n.vec20 = and i64 %i.x, -16                    ; 4 uses
  %i.y = shl i64 %n.vec20, 1
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %broadcast.splatinsert21 = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat22 = shufflevector <8 x i16> %broadcast.splatinsert21, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph18
  %index24 = phi i64 [ 0, %vector.ph18 ], [ %index.next26, %vector.body23 ] ; 2 uses
  %i.aa = shl i64 %index24, 1
  %next.gep25 = getelementptr i8, ptr %i.k, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep25, i64 16
  store <8 x i16> %broadcast.splat22, ptr %next.gep25, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat22, ptr %i.ab, align 2, !tbaa !208
  %index.next26 = add nuw i64 %index24, 16        ; 2 uses
  %i.ac = icmp eq i64 %index.next26, %n.vec20
  br i1 %i.ac, label %middle.block27, label %vector.body23, !llvm.loop !548

middle.block27:                                   ; preds = %vector.body23
  %cmp.n28 = icmp eq i64 %i.x, %n.vec20
  br i1 %cmp.n28, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block27
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf19, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec20, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.x, -4                     ; 3 uses
  %i.ad = shl i64 %n.vec31, 1
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ad
  %broadcast.splatinsert32 = insertelement <4 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat33 = shufflevector <4 x i16> %broadcast.splatinsert32, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 2 uses
  %i.af = shl i64 %index34, 1
  %next.gep35 = getelementptr i8, ptr %i.k, i64 %i.af
  store <4 x i16> %broadcast.splat33, ptr %next.gep35, align 2, !tbaa !208
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !549

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.x, %n.vec31
  br i1 %cmp.n37, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.ah, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 %i.j, ptr %.029.i, align 2, !tbaa !208
  %i.ah = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.l
  br i1 %i.ai, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !550

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.aj = getelementptr [4 x i8], ptr %.0.i, i64 %1 ; 5 uses
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.am = shl i64 %2, 2
  %4 = add i64 %i.am, %.0.i13
  %5 = shl i64 %1, 2                              ; 3 uses
  %i.an = add i64 %4, %5
  %i.ao = add i64 %5, %.0.i13
  %i.ap = add i64 %i.ao, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ap)
  %6 = xor i64 %.0.i13, -1
  %i.aq = add i64 %umax, %6
  %7 = sub i64 %i.aq, %5                          ; 2 uses
  %i.ar = lshr i64 %7, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.aj, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader39

.lr.ph.i.preheader39:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %i.aj, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader39, %.lr.ph.i
  %.02628.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader39 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.az = icmp ult ptr %i.ay, %i.ak
  br i1 %i.az, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !552

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block27, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @PyUnicode_Fill(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val21 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val21, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 10165) #33
  br label %_PyUnicode_FastFill.exit

bb.c:                                             ; preds = %bb.a
  %.val7.i.i = load i32, ptr %0, align 8, !tbaa !205
  %.not.i.i = icmp eq i32 %.val7.i.i, 1
  br i1 %.not.i.i, label %bb.d, label %unicode_check_modifiable.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val8.i.i = load i64, ptr %i.d, align 8, !tbaa !217
  %.not4.i.i = icmp eq i64 %.val8.i.i, -1
  br i1 %.not4.i.i, label %bb.e, label %unicode_check_modifiable.exit

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val.i.i = load i32, ptr %i.e, align 8         ; 5 uses
  %i.f = and i32 %.val.i.i, 3
  %.not5.i.i = icmp eq i32 %i.f, 0
  %.not10.i.not.i = icmp eq ptr %.val, @PyUnicode_Type
  %or.cond = and i1 %.not10.i.not.i, %.not5.i.i
  br i1 %or.cond, label %bb.f, label %unicode_check_modifiable.exit

unicode_check_modifiable.exit:                    ; preds = %bb.c, %bb.d, %bb.e
  %i.g = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.116) #33
  br label %_PyUnicode_FastFill.exit

bb.f:                                             ; preds = %bb.e
  %i.h = icmp slt i64 %1, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #33
  br label %_PyUnicode_FastFill.exit

bb.h:                                             ; preds = %bb.f
  %i.j = and i32 %.val.i.i, 64
  %.not.i = icmp eq i32 %i.j, 0                   ; 2 uses
  br i1 %.not.i, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.i:                                             ; preds = %bb.h
  %i.k = lshr exact i32 %.val.i.i, 2
  %i.l = and i32 %i.k, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.l, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.l, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.h, %bb.i
  %.0.i24 = phi i32 [ %switch.select6.i, %bb.i ], [ 127, %bb.h ]
  %i.m = icmp ugt i32 %3, %.0.i24
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.102) #33
  br label %_PyUnicode_FastFill.exit

bb.k:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.o, align 8, !tbaa !207
  %i.p = sub i64 %.val22, %1
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %2) ; 14 uses
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %_PyUnicode_FastFill.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = lshr exact i32 %.val.i.i, 2
  %i.t = and i32 %i.s, 7
  %i.u = and i32 %.val.i.i, 32
  %.not.i.i25 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.v.i.i.i = select i1 %.not.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.n:                                             ; preds = %bb.l
  %i.v = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.v, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.n, %bb.m
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.m ], [ %.val4.i.i, %bb.n ] ; 4 uses
  %.0.i.i39 = ptrtoint ptr %.0.i.i to i64         ; 4 uses
  switch i32 %i.t, label %bb.r [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 4, label %bb.q
  ]

bb.o:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.w = trunc i32 %3 to i8
  %i.x = getelementptr i8, ptr %.0.i.i, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 %i.w, i64 %i.q, i1 false)
  br label %_PyUnicode_FastFill.exit

bb.p:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.y = trunc i32 %3 to i16                      ; 3 uses
  %i.z = getelementptr [2 x i8], ptr %.0.i.i, i64 %1 ; 7 uses
  %i.aa = getelementptr [2 x i8], ptr %i.z, i64 %i.q ; 2 uses
  %i.ab = icmp ult ptr %i.z, %i.aa
  br i1 %i.ab, label %iter.check, label %_PyUnicode_FastFill.exit

iter.check:                                       ; preds = %bb.p
  %i.ac = shl nuw i64 %1, 1                       ; 2 uses
  %i.ad = add i64 %i.ac, %.0.i.i39                ; 2 uses
  %i.ae = shl nuw i64 %i.q, 1
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = add i64 %i.ad, 2
  %umax40 = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = xor i64 %.0.i.i39, -1
  %i.ai = add i64 %umax40, %i.ah
  %i.aj = sub i64 %i.ai, %i.ac                    ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 5 uses
  %min.iters.check42.a = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check42.a, label %.lr.ph30.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph44

vector.ph44:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf45 = and i64 %i.al, 12
  %n.vec46 = and i64 %i.al, -16                   ; 4 uses
  %i.am = shl i64 %n.vec46, 1
  %i.an = getelementptr i8, ptr %i.z, i64 %i.am
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph44
  %index50 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body49 ] ; 2 uses
  %i.ao = shl i64 %index50, 1
  %next.gep51 = getelementptr i8, ptr %i.z, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep51, i64 16
  store <8 x i16> %broadcast.splat48, ptr %next.gep51, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat48, ptr %i.ap, align 2, !tbaa !208
  %index.next52 = add nuw i64 %index50, 16        ; 2 uses
  %i.aq = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.aq, label %middle.block53, label %vector.body49, !llvm.loop !553

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %i.al, %n.vec46
  br i1 %cmp.n54, label %_PyUnicode_FastFill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block53
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf45, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec46, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.al, -4                    ; 3 uses
  %i.ar = shl i64 %n.vec57, 1
  %i.as = getelementptr i8, ptr %i.z, i64 %i.ar
  %broadcast.splatinsert58 = insertelement <4 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat59 = shufflevector <4 x i16> %broadcast.splatinsert58, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index60, 1
  %next.gep61 = getelementptr i8, ptr %i.z, i64 %i.at
  store <4 x i16> %broadcast.splat59, ptr %next.gep61, align 2, !tbaa !208
  %index.next62 = add nuw i64 %index60, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %i.al, %n.vec57
  br i1 %cmp.n63, label %_PyUnicode_FastFill.exit, label %.lr.ph30.i.i.preheader

.lr.ph30.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.i.ph = phi ptr [ %i.z, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %.lr.ph30.i.i
  %.029.i.i = phi ptr [ %i.av, %.lr.ph30.i.i ], [ %.029.i.i.ph, %.lr.ph30.i.i.preheader ] ; 2 uses
  store i16 %i.y, ptr %.029.i.i, align 2, !tbaa !208
  %i.av = getelementptr i8, ptr %.029.i.i, i64 2  ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.aa
  br i1 %i.aw, label %.lr.ph30.i.i, label %_PyUnicode_FastFill.exit, !llvm.loop !555

bb.q:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ax = getelementptr [4 x i8], ptr %.0.i.i, i64 %1 ; 5 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.q ; 2 uses
  %i.az = icmp ult ptr %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.preheader, label %_PyUnicode_FastFill.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ba = shl i64 %1, 2                           ; 2 uses
  %4 = add i64 %i.ba, %.0.i.i39                   ; 2 uses
  %5 = shl i64 %i.q, 2
  %i.bb = add i64 %4, %5
  %i.bc = add i64 %4, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.bc)
  %6 = xor i64 %.0.i.i39, -1
  %i.bd = add i64 %umax, %6
  %7 = sub i64 %i.bd, %i.ba                       ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bg = shl i64 %n.vec, 2
  %i.bh = getelementptr i8, ptr %i.ax, i64 %i.bg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bj, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_PyUnicode_FastFill.exit, label %.lr.ph.i.i.preheader65

.lr.ph.i.i.preheader65:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.02628.i.i.ph = phi ptr [ %i.ax, %.lr.ph.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader65, %.lr.ph.i.i
  %.02628.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.02628.i.i.ph, %.lr.ph.i.i.preheader65 ] ; 2 uses
  store i32 %3, ptr %.02628.i.i, align 4, !tbaa !7
  %i.bl = getelementptr i8, ptr %.02628.i.i, i64 4 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.ay
  br i1 %i.bm, label %.lr.ph.i.i, label %_PyUnicode_FastFill.exit, !llvm.loop !557

bb.r:                                             ; preds = %_PyUnicode_DATA.exit.i
  unreachable

_PyUnicode_FastFill.exit:                         ; preds = %.lr.ph.i.i, %.lr.ph30.i.i, %middle.block, %middle.block53, %vec.epilog.middle.block, %bb.q, %bb.p, %bb.o, %unicode_check_modifiable.exit, %bb.k, %bb.j, %bb.g, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %unicode_check_modifiable.exit ], [ 0, %bb.k ], [ %i.q, %bb.o ], [ %i.q, %bb.p ], [ %i.q, %middle.block53 ], [ %i.q, %bb.q ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %.lr.ph30.i.i ], [ %i.q, %.lr.ph.i.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Splitlines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %asciilib_splitlines.exit

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 7 uses
  %i.h = lshr i32 %i.g, 2
  %i.i = and i32 %i.h, 7
  switch i32 %i.i, label %bb.by [
    i32 1, label %bb.b
    i32 2, label %bb.as
    i32 4, label %bb.bi
  ]

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.j = and i32 %i.g, 64
  %.not = icmp eq i32 %i.j, 0
  %i.k = and i32 %i.g, 32
  %.not.i34 = icmp eq i32 %i.k, 0                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.l, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i27 = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.m, align 8, !tbaa !207 ; 6 uses
  %i.n = tail call ptr @PyList_New(i64 noundef 0) #33, !inline_history !558 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %asciilib_splitlines.exit, label %.preheader81.i

.preheader81.i:                                   ; preds = %_PyUnicode_DATA.exit
  %.not57.i = icmp eq i32 %1, 0
  br label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit64.i, %.preheader81.i
  %.049.i = phi i64 [ %.3.i, %Py_DECREF.exit64.i ], [ 0, %.preheader81.i ] ; 5 uses
  %i.p = icmp slt i64 %.049.i, %.val24
  br i1 %i.p, label %.preheader.i, label %asciilib_splitlines.exit

.preheader.i:                                     ; preds = %bb.f, %.thread.i
  %.184.i = phi i64 [ %i.af, %.thread.i ], [ %.049.i, %bb.f ] ; 6 uses
  %i.q = getelementptr i8, ptr %.0.i27, i64 %.184.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !205   ; 4 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = icmp sgt i8 %i.r, -1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.u = zext nneg i8 %i.r to i64
  %i.v = getelementptr i8, ptr @ascii_linebreak, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.thread.i, label %.critedge.i

bb.h:                                             ; preds = %.preheader.i
  %.b234 = load i1, ptr @bloom_linebreak, align 8
  %i.y = select i1 %.b234, i64 3300413940768, i64 -1
  %i.z = and i32 %i.s, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.y, %i.ab
  %.not.i28 = icmp eq i64 %i.ac, 0
  br i1 %.not.i28, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %i.s) #33, !inline_history !558
  %.not79.i = icmp eq i32 %i.ad, 0
  br i1 %.not79.i, label %.thread.i, label %..critedge.i_crit_edge

..critedge.i_crit_edge:                           ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %.0.i27, i64 %.184.i
  %.pre159 = load i8, ptr %i.ae, align 1, !tbaa !205
  br label %.critedge.i

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g
  %i.af = add i64 %.184.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %.val24
  br i1 %exitcond.not.i, label %.critedge61.i, label %.preheader.i, !llvm.loop !559

.critedge.i:                                      ; preds = %bb.g, %..critedge.i_crit_edge
  %i.ag = phi i8 [ %.pre159, %..critedge.i_crit_edge ], [ %i.r, %bb.g ]
  %i.ah = icmp eq i8 %i.ag, 13
  %i.ai = add nsw i64 %.184.i, 1                  ; 4 uses
  %i.aj = icmp slt i64 %i.ai, %.val24
  %or.cond98.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond98.i, label %bb.j, label %.critedge._crit_edge.i

bb.j:                                             ; preds = %.critedge.i
  %i.ak = getelementptr i8, ptr %.0.i27, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !205
  %i.am = icmp eq i8 %i.al, 10
  %i.an = add nsw i64 %.184.i, 2
  %spec.select99.i = select i1 %i.am, i64 %i.an, i64 %i.ai
  br label %.critedge._crit_edge.i

.critedge._crit_edge.i:                           ; preds = %bb.j, %.critedge.i
  %.2.i = phi i64 [ %spec.select99.i, %bb.j ], [ %i.ai, %.critedge.i ] ; 2 uses
  %spec.select.i = select i1 %.not57.i, i64 %.184.i, i64 %.2.i
  br label %.critedge61.i

.critedge61.i:                                    ; preds = %.thread.i, %.critedge._crit_edge.i
  %.3.i = phi i64 [ %.2.i, %.critedge._crit_edge.i ], [ %.val24, %.thread.i ]
  %.0.i29 = phi i64 [ %spec.select.i, %.critedge._crit_edge.i ], [ %.val24, %.thread.i ] ; 2 uses
  %i.ao = icmp eq i64 %.049.i, 0
  %i.ap = icmp eq i64 %.0.i29, %.val24
  %or.cond.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.critedge61.i
  %.val.i32 = load ptr, ptr %i.a, align 8, !tbaa !197
  %.not80.i = icmp eq ptr %.val.i32, @PyUnicode_Type
  br i1 %.not80.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call i32 @PyList_Append(ptr noundef nonnull %i.n, ptr noundef nonnull %0) #33, !inline_history !558
  %.not60.i = icmp eq i32 %i.aq, 0
  br i1 %.not60.i, label %asciilib_splitlines.exit, label %_PyUnicode_FromASCII.exit.thread.i

bb.m:                                             ; preds = %bb.k, %.critedge61.i
  %i.ar = getelementptr i8, ptr %.0.i27, i64 %.049.i ; 2 uses
  %i.as = sub i64 %.0.i29, %.049.i                ; 3 uses
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %_PyUnicode_FromASCII.exit.i, label %bb.n

_PyUnicode_FromASCII.exit.i:                      ; preds = %bb.m
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !205 ; 3 uses
  %i.av = and i8 %i.au, 127
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aw
  %i.ay = zext nneg i8 %i.au to i64
  %i.az = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.ay
  %i.ba = icmp slt i8 %i.au, 0
end_hunk_6
begin_hunk_7_@PyUnicode_Contains:bb.a
bb.ak:                                            ; preds = %bb.ad
  unreachable

ucs1lib_find.exit:                                ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.045.in.in = phi i64 [ 0, %bb.ag ], [ 0, %bb.ae ], [ %i.bu, %bb.af ], [ %i.bv, %bb.ah ], [ %i.bw, %bb.aj ], [ 0, %bb.ai ]
  %.045.in = icmp ne i64 %.045.in.in, -1
  %.045 = zext i1 %.045.in to i32                 ; 2 uses
  br i1 %.not52, label %bb.am, label %bb.al

bb.al:                                            ; preds = %ucs1lib_find.exit
  tail call void @PyMem_Free(ptr noundef %.046) #33
  br label %bb.am

bb.am:                                            ; preds = %_PyUnicode_EnsureUnicode.exit.thread, %ucs1lib_find.exit, %bb.al, %bb.ac, %bb.d, %_PyUnicode_EnsureUnicode.exit, %findchar.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %_PyUnicode_EnsureUnicode.exit.thread ], [ 0, %_PyUnicode_EnsureUnicode.exit ], [ %i.br, %findchar.exit ], [ -1, %bb.ac ], [ 0, %bb.d ], [ %.045, %bb.al ], [ %.045, %ucs1lib_find.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_askind(i32 noundef range(i32 0, 8) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i32 noundef range(i32 0, 8) %3) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = icmp eq i32 %3, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %2, 1
  %i.e = tail call ptr @PyMem_Malloc(i64 noundef %i.d) #33 ; 7 uses
  %.not97 = icmp eq ptr %i.e, null
  br i1 %.not97, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 %2
  %i.g = and i64 %2, 4611686018427387900
  %i.h = getelementptr i8, ptr %1, i64 %i.g       ; 2 uses
  %i.i = icmp ult ptr %1, %i.h
  br i1 %i.i, label %.lr.ph121, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph121
  %.pre = ptrtoint ptr %i.ar to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.087.lcssa135.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.a, %bb.d ] ; 2 uses
  %.087.lcssa = phi ptr [ %i.ar, %.preheader.loopexit ], [ %1, %bb.d ] ; 9 uses
  %.085.lcssa = phi ptr [ %i.as, %.preheader.loopexit ], [ %i.e, %bb.d ] ; 8 uses
  %i.j = icmp ult ptr %.087.lcssa, %i.f
  br i1 %i.j, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.k = add i64 %2, %i.a                         ; 2 uses
  %i.l = sub i64 %i.k, %.087.lcssa135.pre-phi     ; 8 uses
  %scevgep136 = getelementptr i8, ptr %.087.lcssa, i64 %i.l ; 2 uses
  %min.iters.check192.a = icmp ult i64 %i.l, 4
  br i1 %min.iters.check192.a, label %.lr.ph126.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %iter.check
  %i.m = sub i64 %i.k, %.087.lcssa135.pre-phi
  %i.n = shl i64 %i.m, 1
  %scevgep187 = getelementptr i8, ptr %.085.lcssa, i64 %i.n
  %bound0188 = icmp ult ptr %.085.lcssa, %scevgep136
  %bound1189 = icmp ult ptr %.087.lcssa, %scevgep187
  %found.conflict190 = and i1 %bound0188, %bound1189
  br i1 %found.conflict190, label %.lr.ph126.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck186
  %min.iters.check193 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph194

vector.ph194:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf195 = and i64 %i.l, 12
  %n.vec196 = and i64 %i.l, -16                   ; 5 uses
  %i.o = shl i64 %n.vec196, 1
  %i.p = getelementptr i8, ptr %.085.lcssa, i64 %i.o
  %i.q = getelementptr i8, ptr %.087.lcssa, i64 %n.vec196
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph194
  %index198 = phi i64 [ 0, %vector.ph194 ], [ %index.next203, %vector.body197 ] ; 3 uses
  %i.r = shl i64 %index198, 1
  %next.gep199.a = getelementptr i8, ptr %.085.lcssa, i64 %i.r ; 2 uses
  %next.gep200 = getelementptr i8, ptr %.087.lcssa, i64 %index198 ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep200, i64 8
  %wide.load201.a = load <8 x i8>, ptr %next.gep200, align 1, !tbaa !205, !alias.scope !577
  %wide.load202 = load <8 x i8>, ptr %i.s, align 1, !tbaa !205, !alias.scope !577
  %i.t = zext <8 x i8> %wide.load201.a to <8 x i16>
  %i.u = zext <8 x i8> %wide.load202 to <8 x i16>
  %i.v = getelementptr i8, ptr %next.gep199.a, i64 16
  store <8 x i16> %i.t, ptr %next.gep199.a, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  store <8 x i16> %i.u, ptr %i.v, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  %index.next203 = add nuw i64 %index198, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.w, label %middle.block204, label %vector.body197, !llvm.loop !582

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %i.l, %n.vec196
  br i1 %cmp.n205, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block204
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf195, 0
  br i1 %min.epilog.iters.check, label %.lr.ph126.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec196, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec209 = and i64 %i.l, -4                    ; 4 uses
  %i.x = shl i64 %n.vec209, 1
  %i.y = getelementptr i8, ptr %.085.lcssa, i64 %i.x
  %i.z = getelementptr i8, ptr %.087.lcssa, i64 %n.vec209
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index210 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next214, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = shl i64 %index210, 1
  %next.gep211.a = getelementptr i8, ptr %.085.lcssa, i64 %i.aa
  %next.gep212 = getelementptr i8, ptr %.087.lcssa, i64 %index210
  %wide.load213 = load <4 x i8>, ptr %next.gep212, align 1, !tbaa !205, !alias.scope !577
  %i.ab = zext <4 x i8> %wide.load213 to <4 x i16>
  store <4 x i16> %i.ab, ptr %next.gep211.a, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  %index.next214 = add nuw i64 %index210, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !583

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n215 = icmp eq i64 %i.l, %n.vec209
  br i1 %cmp.n215, label %.loopexit, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %vector.memcheck186, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.186125.ph = phi ptr [ %.085.lcssa, %iter.check ], [ %.085.lcssa, %vector.memcheck186 ], [ %i.p, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.188124.ph = phi ptr [ %.087.lcssa, %iter.check ], [ %.087.lcssa, %vector.memcheck186 ], [ %i.q, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph126

.lr.ph121:                                        ; preds = %bb.d, %.lr.ph121
  %.085120 = phi ptr [ %i.as, %.lr.ph121 ], [ %i.e, %bb.d ] ; 5 uses
  %.087119 = phi ptr [ %i.ar, %.lr.ph121 ], [ %1, %bb.d ] ; 5 uses
  %i.ad = load i8, ptr %.087119, align 1, !tbaa !205
  %i.ae = zext i8 %i.ad to i16
  store i16 %i.ae, ptr %.085120, align 2, !tbaa !208
  %i.af = getelementptr i8, ptr %.087119, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = zext i8 %i.ag to i16
  %i.ai = getelementptr i8, ptr %.085120, i64 2
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !208
  %i.aj = getelementptr i8, ptr %.087119, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !205
  %i.al = zext i8 %i.ak to i16
  %i.am = getelementptr i8, ptr %.085120, i64 4
  store i16 %i.al, ptr %i.am, align 2, !tbaa !208
  %i.an = getelementptr i8, ptr %.087119, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !205
  %i.ap = zext i8 %i.ao to i16
  %i.aq = getelementptr i8, ptr %.085120, i64 6
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !208
  %i.ar = getelementptr i8, ptr %.087119, i64 4   ; 4 uses
  %i.as = getelementptr i8, ptr %.085120, i64 8   ; 2 uses
  %i.at = icmp ult ptr %i.ar, %i.h
  br i1 %i.at, label %.lr.ph121, label %.preheader.loopexit, !llvm.loop !584

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %.186125 = phi ptr [ %i.ax, %.lr.ph126 ], [ %.186125.ph, %.lr.ph126.preheader ] ; 2 uses
  %.188124 = phi ptr [ %i.au, %.lr.ph126 ], [ %.188124.ph, %.lr.ph126.preheader ] ; 2 uses
  %i.au = getelementptr i8, ptr %.188124, i64 1   ; 2 uses
  %i.av = load i8, ptr %.188124, align 1, !tbaa !205
  %i.aw = zext i8 %i.av to i16
  %i.ax = getelementptr i8, ptr %.186125, i64 2
  store i16 %i.aw, ptr %.186125, align 2, !tbaa !208
  %exitcond137.not = icmp eq ptr %i.au, %scevgep136
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph126, !llvm.loop !585

bb.e:                                             ; preds = %bb.a
  %i.ay = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.ay, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = shl nuw nsw i64 %2, 2
  %i.ba = tail call ptr @PyMem_Malloc(i64 noundef %i.az) #33 ; 11 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp eq i32 %0, 2
  %i.bc = and i64 %2, 2305843009213693948         ; 2 uses
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr [2 x i8], ptr %1, i64 %2  ; 2 uses
  %i.be = getelementptr [2 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.bf = icmp ult ptr %1, %i.be
  br i1 %i.bf, label %.lr.ph113, label %.preheader101

.preheader101:                                    ; preds = %.lr.ph113, %bb.h
  %.091.lcssa = phi ptr [ %1, %bb.h ], [ %i.cb, %.lr.ph113 ] ; 5 uses
  %.089.lcssa = phi ptr [ %i.ba, %bb.h ], [ %i.cc, %.lr.ph113 ] ; 3 uses
  %i.bg = icmp ult ptr %.091.lcssa, %i.bd
  br i1 %i.bg, label %.lr.ph118.preheader, label %.loopexit

.lr.ph118.preheader:                              ; preds = %.preheader101
  %.091.lcssa169 = ptrtoint ptr %.091.lcssa to i64 ; 2 uses
  %i.bh = shl nuw nsw i64 %2, 1
  %i.bi = add i64 %i.bh, %i.a
  %i.bj = add i64 %.091.lcssa169, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bj)
  %i.bk = xor i64 %.091.lcssa169, -1
  %i.bl = add i64 %umax, %i.bk                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 1
  %i.bn = add nuw i64 %i.bm, 1                    ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.bl, 14
  br i1 %min.iters.check171, label %.lr.ph118.preheader219, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph118.preheader
  %n.vec174 = and i64 %i.bn, -8                   ; 4 uses
  %i.bo = shl i64 %n.vec174, 2
  %i.bp = getelementptr i8, ptr %.089.lcssa, i64 %i.bo
  %i.bq = shl i64 %n.vec174, 1
  %i.br = getelementptr i8, ptr %.091.lcssa, i64 %i.bq
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph172
  %index176 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body175 ] ; 3 uses
  %i.bs = shl i64 %index176, 2
  %next.gep177.a = getelementptr i8, ptr %.089.lcssa, i64 %i.bs ; 2 uses
  %i.bt = shl i64 %index176, 1
  %next.gep178 = getelementptr i8, ptr %.091.lcssa, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep178, i64 8
  %wide.load179.a = load <4 x i16>, ptr %next.gep178, align 2, !tbaa !208
  %wide.load180 = load <4 x i16>, ptr %i.bu, align 2, !tbaa !208
  %i.bv = zext <4 x i16> %wide.load179.a to <4 x i32>
  %i.bw = zext <4 x i16> %wide.load180 to <4 x i32>
  %i.bx = getelementptr i8, ptr %next.gep177.a, i64 16
  store <4 x i32> %i.bv, ptr %next.gep177.a, align 4, !tbaa !7
  store <4 x i32> %i.bw, ptr %i.bx, align 4, !tbaa !7
  %index.next181 = add nuw i64 %index176, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.by, label %middle.block182, label %vector.body175, !llvm.loop !586

middle.block182:                                  ; preds = %vector.body175
  %cmp.n183 = icmp eq i64 %i.bn, %n.vec174
  br i1 %cmp.n183, label %.loopexit, label %.lr.ph118.preheader219

.lr.ph118.preheader219:                           ; preds = %.lr.ph118.preheader, %middle.block182
  %.190117.ph = phi ptr [ %.089.lcssa, %.lr.ph118.preheader ], [ %i.bp, %middle.block182 ]
  %.192116.ph = phi ptr [ %.091.lcssa, %.lr.ph118.preheader ], [ %i.br, %middle.block182 ]
  br label %.lr.ph118

.lr.ph113:                                        ; preds = %bb.h, %.lr.ph113
  %.089112 = phi ptr [ %i.cc, %.lr.ph113 ], [ %i.ba, %bb.h ] ; 2 uses
  %.091111 = phi ptr [ %i.cb, %.lr.ph113 ], [ %1, %bb.h ] ; 2 uses
  %i.bz = load <4 x i16>, ptr %.091111, align 2, !tbaa !208
  %i.ca = zext <4 x i16> %i.bz to <4 x i32>
  store <4 x i32> %i.ca, ptr %.089112, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %.091111, i64 8   ; 3 uses
  %i.cc = getelementptr i8, ptr %.089112, i64 16  ; 2 uses
  %i.cd = icmp ult ptr %i.cb, %i.be
  br i1 %i.cd, label %.lr.ph113, label %.preheader101, !llvm.loop !587

.lr.ph118:                                        ; preds = %.lr.ph118.preheader219, %.lr.ph118
  %.190117 = phi ptr [ %i.ch, %.lr.ph118 ], [ %.190117.ph, %.lr.ph118.preheader219 ] ; 2 uses
  %.192116 = phi ptr [ %i.ce, %.lr.ph118 ], [ %.192116.ph, %.lr.ph118.preheader219 ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.192116, i64 2   ; 2 uses
  %i.cf = load i16, ptr %.192116, align 2, !tbaa !208
  %i.cg = zext i16 %i.cf to i32
  %i.ch = getelementptr i8, ptr %.190117, i64 4
  store i32 %i.cg, ptr %.190117, align 4, !tbaa !7
  %i.ci = icmp ult ptr %i.ce, %i.bd
  br i1 %i.ci, label %.lr.ph118, label %.loopexit, !llvm.loop !588

bb.i:                                             ; preds = %bb.g
  %i.cj = getelementptr i8, ptr %1, i64 %2
  %i.ck = getelementptr i8, ptr %1, i64 %i.bc     ; 2 uses
  %i.cl = icmp ult ptr %1, %i.ck
  br i1 %i.cl, label %.lr.ph, label %.preheader103

.preheader103.loopexit:                           ; preds = %.lr.ph
  %.pre138 = ptrtoint ptr %i.do to i64
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.loopexit, %bb.i
  %.082.lcssa134.pre-phi = phi i64 [ %.pre138, %.preheader103.loopexit ], [ %i.a, %bb.i ] ; 2 uses
  %.083.lcssa = phi ptr [ %i.dp, %.preheader103.loopexit ], [ %i.ba, %bb.i ] ; 6 uses
  %.082.lcssa = phi ptr [ %i.do, %.preheader103.loopexit ], [ %1, %bb.i ] ; 7 uses
  %i.cm = icmp ult ptr %.082.lcssa, %i.cj
  br i1 %i.cm, label %.lr.ph110.preheader, label %.loopexit

.lr.ph110.preheader:                              ; preds = %.preheader103
  %i.cn = add i64 %2, %i.a                        ; 2 uses
  %i.co = sub i64 %i.cn, %.082.lcssa134.pre-phi   ; 4 uses
  %scevgep = getelementptr i8, ptr %.082.lcssa, i64 %i.co ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 20
  br i1 %min.iters.check, label %.lr.ph110.preheader223, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.cp = sub i64 %i.cn, %.082.lcssa134.pre-phi
  %i.cq = shl i64 %i.cp, 2
  %scevgep165 = getelementptr i8, ptr %.083.lcssa, i64 %i.cq
  %bound0 = icmp ult ptr %.083.lcssa, %scevgep
  %bound1 = icmp ult ptr %.082.lcssa, %scevgep165
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader223, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, -8                      ; 4 uses
  %i.cr = getelementptr i8, ptr %.082.lcssa, i64 %n.vec
  %i.cs = shl i64 %n.vec, 2
  %i.ct = getelementptr i8, ptr %.083.lcssa, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.082.lcssa, i64 %index ; 2 uses
  %i.cu = shl i64 %index, 2
  %next.gep166 = getelementptr i8, ptr %.083.lcssa, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !205, !alias.scope !589
  %wide.load167 = load <4 x i8>, ptr %i.cv, align 1, !tbaa !205, !alias.scope !589
  %i.cw = zext <4 x i8> %wide.load to <4 x i32>
  %i.cx = zext <4 x i8> %wide.load167 to <4 x i32>
  %i.cy = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %i.cw, ptr %next.gep166, align 4, !tbaa !7, !alias.scope !592, !noalias !589
  store <4 x i32> %i.cx, ptr %i.cy, align 4, !tbaa !7, !alias.scope !592, !noalias !589
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph110.preheader223

.lr.ph110.preheader223:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.1109.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph110.preheader ], [ %i.cr, %middle.block ]
  %.184108.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph110.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph110

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.082106 = phi ptr [ %i.do, %.lr.ph ], [ %1, %bb.i ] ; 5 uses
  %.083105 = phi ptr [ %i.dp, %.lr.ph ], [ %i.ba, %bb.i ] ; 5 uses
  %i.da = load i8, ptr %.082106, align 1, !tbaa !205
  %i.db = zext i8 %i.da to i32
  store i32 %i.db, ptr %.083105, align 4, !tbaa !7
  %i.dc = getelementptr i8, ptr %.082106, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !205
  %i.de = zext i8 %i.dd to i32
  %i.df = getelementptr i8, ptr %.083105, i64 4
  store i32 %i.de, ptr %i.df, align 4, !tbaa !7
  %i.dg = getelementptr i8, ptr %.082106, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !205
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr i8, ptr %.083105, i64 8
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %i.dk = getelementptr i8, ptr %.082106, i64 3
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !205
  %i.dm = zext i8 %i.dl to i32
  %i.dn = getelementptr i8, ptr %.083105, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %i.do = getelementptr i8, ptr %.082106, i64 4   ; 4 uses
  %i.dp = getelementptr i8, ptr %.083105, i64 16  ; 2 uses
  %i.dq = icmp ult ptr %i.do, %i.ck
  br i1 %i.dq, label %.lr.ph, label %.preheader103.loopexit, !llvm.loop !595

.lr.ph110:                                        ; preds = %.lr.ph110.preheader223, %.lr.ph110
  %.1109 = phi ptr [ %i.dr, %.lr.ph110 ], [ %.1109.ph, %.lr.ph110.preheader223 ] ; 2 uses
  %.184108 = phi ptr [ %i.du, %.lr.ph110 ], [ %.184108.ph, %.lr.ph110.preheader223 ] ; 2 uses
  %i.dr = getelementptr i8, ptr %.1109, i64 1     ; 2 uses
  %i.ds = load i8, ptr %.1109, align 1, !tbaa !205
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr i8, ptr %.184108, i64 4
  store i32 %i.dt, ptr %.184108, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.dr, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph110, !llvm.loop !596

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.dv = tail call ptr @PyErr_NoMemory() #33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph110, %.lr.ph118, %.lr.ph126, %middle.block, %middle.block182, %middle.block204, %vec.epilog.middle.block, %.loopexit.sink.split, %.preheader103, %.preheader101, %.preheader
  %.0 = phi ptr [ %i.dv, %.loopexit.sink.split ], [ %i.e, %middle.block204 ], [ %i.ba, %.preheader101 ], [ %i.e, %.preheader ], [ %i.ba, %.preheader103 ], [ %i.ba, %middle.block182 ], [ %i.ba, %middle.block ], [ %i.e, %vec.epilog.middle.block ], [ %i.ba, %.lr.ph118 ], [ %i.e, %.lr.ph126 ], [ %i.ba, %.lr.ph110 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Concat(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %bb.m

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.f, align 8, !tbaa !197 ; 2 uses
  %i.g = getelementptr i8, ptr %.val37, i64 168
  %.val38 = load i64, ptr %i.g, align 8, !tbaa !198
  %i.h = and i64 %.val38, 268435456
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_7
begin_hunk_8_@unicode_sizeof:bb.a
  %i.m = add i64 %i.l, 64
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %.val17.i = load i64, ptr %i.n, align 8, !tbaa !207
  %i.o = add i64 %.val17.i, 41
  br label %unicode_sizeof_impl.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.i.ph = phi i64 [ 64, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 48
  %.val5.i.i = load ptr, ptr %i.p, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i = icmp eq ptr %.val5.i.i, null
  br i1 %.not4.i.i, label %unicode_sizeof_impl.exit, label %bb.g

.thread:                                          ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val16.i = load i64, ptr %i.q, align 8, !tbaa !207
  %i.r = add i64 %.val16.i, 1
  %i.s = lshr i32 %.val18.i, 2
  %i.t = and i32 %i.s, 7
  %i.u = zext nneg i32 %i.t to i64
  %i.v = mul i64 %i.r, %i.u
  %i.w = add i64 %i.v, 56                         ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 48
  %.val5.i.i4 = load ptr, ptr %i.x, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i5 = icmp eq ptr %.val5.i.i4, null
  br i1 %.not4.i.i5, label %unicode_sizeof_impl.exit, label %.thread8

.thread8:                                         ; preds = %.thread
  %.0.v.i.i.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 56
  %.val4.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !205
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

_PyUnicode_HAS_UTF8_MEMORY.exit.i:                ; preds = %bb.g, %.thread8
  %.0.i.ph613 = phi i64 [ %i.w, %.thread8 ], [ %.0.i.ph, %bb.g ] ; 2 uses
  %.val5.i.i711 = phi ptr [ %.val5.i.i4, %.thread8 ], [ %.val5.i.i, %bb.g ]
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %.thread8 ], [ %.val4.i.i.i, %bb.g ]
  %.not22.i = icmp eq ptr %.val5.i.i711, %.0.i.i.i
  br i1 %.not22.i, label %unicode_sizeof_impl.exit, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.i
  %.0.in.i.i = getelementptr i8, ptr %0, i64 40
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !193
  %i.z = add i64 %.0.i.ph613, 1
  %i.aa = add i64 %i.z, %.0.i.i
  br label %unicode_sizeof_impl.exit

unicode_sizeof_impl.exit:                         ; preds = %.thread, %bb.e, %bb.f, %_PyUnicode_HAS_UTF8_MEMORY.exit.i, %bb.h
  %.1.i = phi i64 [ %i.aa, %bb.h ], [ %.0.i.ph613, %_PyUnicode_HAS_UTF8_MEMORY.exit.i ], [ %.0.i.ph, %bb.f ], [ %i.o, %bb.e ], [ %i.w, %.thread ]
  %i.ab = tail call ptr @PyLong_FromSsize_t(i64 noundef %.1.i) #33
  ret ptr %i.ab
}

; Function Attrs: nounwind uwtable
define internal ptr @unicode_getnewargs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val12.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val12.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 2379) #33, !inline_history !379
  br label %_PyUnicode_Copy.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val13.i = load i64, ptr %i.d, align 8, !tbaa !207 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val14.i = load i32, ptr %i.e, align 8         ; 2 uses
  %i.f = and i32 %.val14.i, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i32 %.val14.i, 2
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.h, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.h, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.d ], [ 127, %bb.c ]
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %.val13.i, i32 noundef %.0.i.i), !inline_history !379 ; 5 uses
  %.not11.i = icmp eq ptr %i.i, null
  br i1 %.not11.i, label %_PyUnicode_Copy.exit.thread, label %bb.e

bb.e:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val.i.i = load i32, ptr %i.j, align 8         ; 2 uses
  %i.k = and i32 %.val.i.i, 32
  %.not.i15.i = icmp eq i32 %i.k, 0
  br i1 %.not.i15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.i, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.i, i64 56
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.g, %bb.f
  %.0.i16.i = phi ptr [ %.0.i.i.i, %bb.f ], [ %.val4.i.i, %bb.g ]
  %.val.i17.i = load i32, ptr %i.e, align 8       ; 3 uses
  %i.n = and i32 %.val.i17.i, 32
  %.not.i18.i = icmp eq i32 %i.n, 0
  br i1 %.not.i18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.o = and i32 %.val.i17.i, 64
  %.not.i.i19.i = icmp eq i32 %i.o, 0
  %.0.v.i.i20.i = select i1 %.not.i.i19.i, i64 56, i64 40
  %.0.i.i21.i = getelementptr i8, ptr %0, i64 %.0.v.i.i20.i
  br label %bb.j

bb.i:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val4.i23.i = load ptr, ptr %i.p, align 8, !tbaa !205
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i22.i = phi ptr [ %.0.i.i21.i, %bb.h ], [ %.val4.i23.i, %bb.i ]
  %i.q = lshr i32 %.val.i17.i, 2
  %i.r = and i32 %i.q, 7
  %i.s = zext nneg i32 %i.r to i64
  %i.t = mul i64 %.val13.i, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i16.i, ptr align 1 %.0.i22.i, i64 %i.t, i1 false)
  %i.u = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.299, ptr noundef nonnull %i.i) #33
  br label %_PyUnicode_Copy.exit.thread

_PyUnicode_Copy.exit.thread:                      ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i, %bb.b, %bb.j
  %.0 = phi ptr [ %i.u, %bb.j ], [ null, %bb.b ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit.i ]
  ret ptr %.0
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #3

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @case_operation(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 7
  %i.f = and i32 %i.c, 32
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.c, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ]
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !207 ; 3 uses
  %i.j = icmp ugt i64 %.val, 768614336404564650
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.261) #33
  br label %bb.o

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.l = mul nuw nsw i64 %.val, 12
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #33 ; 14 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #33
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.q = call i64 %1(i32 noundef %i.e, ptr noundef %.0.i, i64 noundef %.val, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #33 ; 3 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !7
  %i.s = call ptr @PyUnicode_New(i64 noundef %i.q, i32 noundef %i.r) ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr [4 x i8], ptr %i.m, i64 %i.q ; 4 uses
  %i.v = getelementptr i8, ptr %i.s, i64 32
  %.val.i80 = load i32, ptr %i.v, align 8         ; 3 uses
  %i.w = and i32 %.val.i80, 32
  %.not.i81 = icmp eq i32 %i.w, 0
  br i1 %.not.i81, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i32 %.val.i80, 64
  %.not.i.i82 = icmp eq i32 %i.x, 0
  %.0.v.i.i83 = select i1 %.not.i.i82, i64 56, i64 40
  %.0.i.i84 = getelementptr i8, ptr %i.s, i64 %.0.v.i.i83
  br label %_PyUnicode_DATA.exit87

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.s, i64 56
  %.val4.i86 = load ptr, ptr %i.y, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit87

_PyUnicode_DATA.exit87:                           ; preds = %bb.i, %bb.j
  %.0.i85 = phi ptr [ %.0.i.i84, %bb.i ], [ %.val4.i86, %bb.j ] ; 5 uses
  %i.z = lshr i32 %.val.i80, 2
  %i.aa = and i32 %i.z, 7
  %.idx79 = shl i64 %i.q, 2                       ; 6 uses
  switch i32 %i.aa, label %bb.n [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 4, label %bb.m
  ]

bb.k:                                             ; preds = %_PyUnicode_DATA.exit87
  %i.ab = ashr exact i64 %.idx79, 2
  %i.ac = and i64 %i.ab, -4
  %i.ad = getelementptr [4 x i8], ptr %i.m, i64 %i.ac ; 2 uses
  %i.ae = icmp ult ptr %i.m, %i.ad
  br i1 %i.ae, label %.lr.ph98, label %.preheader

.preheader:                                       ; preds = %.lr.ph98, %bb.k
  %.074.lcssa = phi ptr [ %i.m, %bb.k ], [ %i.br, %.lr.ph98 ] ; 8 uses
  %.072.lcssa = phi ptr [ %.0.i85, %bb.k ], [ %i.bs, %.lr.ph98 ] ; 6 uses
  %.074.lcssa127 = ptrtoint ptr %.074.lcssa to i64 ; 4 uses
  %i.af = icmp ult ptr %.074.lcssa, %i.u
  br i1 %i.af, label %.lr.ph103.preheader, label %.loopexit

.lr.ph103.preheader:                              ; preds = %.preheader
  %i.ag = add i64 %.idx79, %i.n
  %i.ah = add i64 %.074.lcssa127, 4
  %umax130 = call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ah)
  %i.ai = xor i64 %.074.lcssa127, -1
  %i.aj = add i64 %umax130, %i.ai                 ; 2 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.aj, 156
  br i1 %min.iters.check132, label %.lr.ph103.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.preheader
  %i.am = add i64 %.idx79, %i.n
  %i.an = add i64 %.074.lcssa127, 4
  %umax128 = call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = xor i64 %.074.lcssa127, -1
  %i.ap = add i64 %umax128, %i.ao                 ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = getelementptr i8, ptr %.072.lcssa, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.ar, i64 1
  %i.as = and i64 %i.ap, -4
  %i.at = getelementptr i8, ptr %.074.lcssa, i64 %i.as
  %scevgep129 = getelementptr i8, ptr %i.at, i64 4
  %bound0 = icmp ult ptr %.072.lcssa, %scevgep129
  %bound1 = icmp ult ptr %.074.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph103.preheader147, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck
  %n.vec135 = and i64 %i.al, 9223372036854775800  ; 4 uses
  %i.au = getelementptr i8, ptr %.072.lcssa, i64 %n.vec135
  %i.av = shl i64 %n.vec135, 2
  %i.aw = getelementptr i8, ptr %.074.lcssa, i64 %i.av
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph133
  %index137 = phi i64 [ 0, %vector.ph133 ], [ %index.next142, %vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.072.lcssa, i64 %index137 ; 2 uses
  %i.ax = shl i64 %index137, 2
  %next.gep139 = getelementptr i8, ptr %.074.lcssa, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load140 = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !7, !alias.scope !948
  %wide.load141 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !7, !alias.scope !948
  %i.az = trunc <4 x i32> %wide.load140 to <4 x i8>
  %i.ba = trunc <4 x i32> %wide.load141 to <4 x i8>
  %i.bb = getelementptr i8, ptr %next.gep138, i64 4
  store <4 x i8> %i.az, ptr %next.gep138, align 1, !tbaa !205, !alias.scope !951, !noalias !948
  store <4 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !205, !alias.scope !951, !noalias !948
  %index.next142 = add nuw i64 %index137, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.bc, label %middle.block143, label %vector.body136, !llvm.loop !953

middle.block143:                                  ; preds = %vector.body136
  %cmp.n144 = icmp eq i64 %i.al, %n.vec135
  br i1 %cmp.n144, label %.loopexit, label %.lr.ph103.preheader147

.lr.ph103.preheader147:                           ; preds = %vector.memcheck, %.lr.ph103.preheader, %middle.block143
  %.173102.ph = phi ptr [ %.072.lcssa, %vector.memcheck ], [ %.072.lcssa, %.lr.ph103.preheader ], [ %i.au, %middle.block143 ]
  %.175101.ph = phi ptr [ %.074.lcssa, %vector.memcheck ], [ %.074.lcssa, %.lr.ph103.preheader ], [ %i.aw, %middle.block143 ]
  br label %.lr.ph103

.lr.ph98:                                         ; preds = %bb.k, %.lr.ph98
  %.07297 = phi ptr [ %i.bs, %.lr.ph98 ], [ %.0.i85, %bb.k ] ; 5 uses
  %.07496 = phi ptr [ %i.br, %.lr.ph98 ], [ %i.m, %bb.k ] ; 5 uses
  %i.bd = load i32, ptr %.07496, align 4, !tbaa !7
  %i.be = trunc i32 %i.bd to i8
  store i8 %i.be, ptr %.07297, align 1, !tbaa !205
  %i.bf = getelementptr i8, ptr %.07496, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr i8, ptr %.07297, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !205
  %i.bj = getelementptr i8, ptr %.07496, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr i8, ptr %.07297, i64 2
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !205
  %i.bn = getelementptr i8, ptr %.07496, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr i8, ptr %.07297, i64 3
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !205
  %i.br = getelementptr i8, ptr %.07496, i64 16   ; 3 uses
  %i.bs = getelementptr i8, ptr %.07297, i64 4    ; 2 uses
  %i.bt = icmp ult ptr %i.br, %i.ad
  br i1 %i.bt, label %.lr.ph98, label %.preheader, !llvm.loop !954

.lr.ph103:                                        ; preds = %.lr.ph103.preheader147, %.lr.ph103
  %.173102 = phi ptr [ %i.bx, %.lr.ph103 ], [ %.173102.ph, %.lr.ph103.preheader147 ] ; 2 uses
  %.175101 = phi ptr [ %i.bu, %.lr.ph103 ], [ %.175101.ph, %.lr.ph103.preheader147 ] ; 2 uses
  %i.bu = getelementptr i8, ptr %.175101, i64 4   ; 2 uses
  %i.bv = load i32, ptr %.175101, align 4, !tbaa !7
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr i8, ptr %.173102, i64 1
  store i8 %i.bw, ptr %.173102, align 1, !tbaa !205
  %i.by = icmp ult ptr %i.bu, %i.u
  br i1 %i.by, label %.lr.ph103, label %.loopexit, !llvm.loop !955

bb.l:                                             ; preds = %_PyUnicode_DATA.exit87
  %i.bz = ashr exact i64 %.idx79, 2
  %i.ca = and i64 %i.bz, -4
  %i.cb = getelementptr [4 x i8], ptr %i.m, i64 %i.ca ; 2 uses
  %i.cc = icmp ult ptr %i.m, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph, %bb.l
  %.070.lcssa = phi ptr [ %.0.i85, %bb.l ], [ %i.cy, %.lr.ph ] ; 3 uses
  %.069.lcssa = phi ptr [ %i.m, %bb.l ], [ %i.cx, %.lr.ph ] ; 5 uses
  %i.cd = icmp ult ptr %.069.lcssa, %i.u
  br i1 %i.cd, label %.lr.ph95.preheader, label %.loopexit

.lr.ph95.preheader:                               ; preds = %.preheader88
  %.069.lcssa123 = ptrtoint ptr %.069.lcssa to i64 ; 2 uses
  %i.ce = add i64 %.idx79, %i.n
  %i.cf = add i64 %.069.lcssa123, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cf)
  %i.cg = xor i64 %.069.lcssa123, -1
  %i.ch = add i64 %umax, %i.cg                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 28
  br i1 %min.iters.check, label %.lr.ph95.preheader149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.preheader
  %n.vec = and i64 %i.cj, 9223372036854775800     ; 4 uses
  %i.ck = shl i64 %n.vec, 2
  %i.cl = getelementptr i8, ptr %.069.lcssa, i64 %i.ck
  %i.cm = shl nuw i64 %n.vec, 1
  %i.cn = getelementptr i8, ptr %.070.lcssa, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.co = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.069.lcssa, i64 %i.co ; 2 uses
  %i.cp = shl i64 %index, 1
  %next.gep124 = getelementptr i8, ptr %.070.lcssa, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load125 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !7
  %i.cr = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cs = trunc <4 x i32> %wide.load125 to <4 x i16>
  %i.ct = getelementptr i8, ptr %next.gep124, i64 8
  store <4 x i16> %i.cr, ptr %next.gep124, align 2, !tbaa !208
  store <4 x i16> %i.cs, ptr %i.ct, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !956

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph95.preheader149

.lr.ph95.preheader149:                            ; preds = %.lr.ph95.preheader, %middle.block
  %.194.ph = phi ptr [ %.069.lcssa, %.lr.ph95.preheader ], [ %i.cl, %middle.block ]
  %.17193.ph = phi ptr [ %.070.lcssa, %.lr.ph95.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph95

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.06991 = phi ptr [ %i.cx, %.lr.ph ], [ %i.m, %bb.l ] ; 2 uses
  %.07090 = phi ptr [ %i.cy, %.lr.ph ], [ %.0.i85, %bb.l ] ; 2 uses
  %i.cv = load <4 x i32>, ptr %.06991, align 4, !tbaa !7
  %i.cw = trunc <4 x i32> %i.cv to <4 x i16>
  store <4 x i16> %i.cw, ptr %.07090, align 2, !tbaa !208
  %i.cx = getelementptr i8, ptr %.06991, i64 16   ; 3 uses
  %i.cy = getelementptr i8, ptr %.07090, i64 8    ; 2 uses
  %i.cz = icmp ult ptr %i.cx, %i.cb
  br i1 %i.cz, label %.lr.ph, label %.preheader88, !llvm.loop !957

.lr.ph95:                                         ; preds = %.lr.ph95.preheader149, %.lr.ph95
  %.194 = phi ptr [ %i.da, %.lr.ph95 ], [ %.194.ph, %.lr.ph95.preheader149 ] ; 2 uses
  %.17193 = phi ptr [ %i.dd, %.lr.ph95 ], [ %.17193.ph, %.lr.ph95.preheader149 ] ; 2 uses
  %i.da = getelementptr i8, ptr %.194, i64 4      ; 2 uses
  %i.db = load i32, ptr %.194, align 4, !tbaa !7
  %i.dc = trunc i32 %i.db to i16
  %i.dd = getelementptr i8, ptr %.17193, i64 2
  store i16 %i.dc, ptr %.17193, align 2, !tbaa !208
  %i.de = icmp ult ptr %i.da, %i.u
  br i1 %i.de, label %.lr.ph95, label %.loopexit, !llvm.loop !958

bb.m:                                             ; preds = %_PyUnicode_DATA.exit87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i85, ptr nonnull align 4 %i.m, i64 %.idx79, i1 false)
  br label %.loopexit

bb.n:                                             ; preds = %_PyUnicode_DATA.exit87
  unreachable

.loopexit:                                        ; preds = %.lr.ph95, %.lr.ph103, %middle.block, %middle.block143, %.preheader88, %.preheader, %bb.m, %bb.g
  call void @PyMem_Free(ptr noundef nonnull %i.m) #33
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.p, %bb.f ], [ %i.s, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @do_capitalize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !205
  %i.c = zext i8 %i.b to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 2, !tbaa !208
  %i.e = zext i16 %i.d to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %i.g = call i32 @_PyUnicode_ToTitleFull(i32 noundef %.0.i, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %PyUnicode_READ.exit
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03647.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i32 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %i.j = load i32, ptr %4, align 4, !tbaa !7
  %i.k = getelementptr [4 x i8], ptr %i.a, i64 %.03647.epil.init
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.j, i32 %i.l)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.m = getelementptr [4 x i8], ptr %3, i64 %.03647.epil.init
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %PyUnicode_READ.exit
  %.036.lcssa = phi i64 [ 0, %PyUnicode_READ.exit ], [ %wide.trip.count, %.preheader.loopexit.unr-lcssa ], [ %wide.trip.count, %.lr.ph.epil.preheader ] ; 2 uses
  %i.n = icmp sgt i64 %2, 1
  br i1 %i.n, label %.lr.ph55, label %._crit_edge56

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03647 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i32, ptr %4, align 4, !tbaa !7
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %.03647
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.o, i32 %i.q)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.r = or disjoint i64 %.03647, 1               ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %3, i64 %.03647
  store i32 %i.q, ptr %i.s, align 4, !tbaa !7
  %i.t = load i32, ptr %4, align 4, !tbaa !7
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %i.r
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.t, i32 %i.v)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.w = add nuw nsw i64 %.03647, 2               ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %3, i64 %i.r
  store i32 %i.v, ptr %i.x, align 4, !tbaa !7
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !959

.lr.ph55:                                         ; preds = %.preheader, %._crit_edge
  %.13754 = phi i64 [ %.2.lcssa, %._crit_edge ], [ %.036.lcssa, %.preheader ] ; 3 uses
  %.03853 = phi i64 [ %i.az, %._crit_edge ], [ 1, %.preheader ] ; 5 uses
  switch i32 %0, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph55
  %i.y = getelementptr i8, ptr %1, i64 %.03853
  %i.z = load i8, ptr %i.y, align 1, !tbaa !205
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ.exit46

bb.f:                                             ; preds = %.lr.ph55
  %i.ab = getelementptr [2 x i8], ptr %1, i64 %.03853
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !208
  %i.ad = zext i16 %i.ac to i32
  br label %PyUnicode_READ.exit46

bb.g:                                             ; preds = %.lr.ph55
  %i.ae = getelementptr [4 x i8], ptr %1, i64 %.03853
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  br label %PyUnicode_READ.exit46

PyUnicode_READ.exit46:                            ; preds = %bb.e, %bb.f, %bb.g
  %.0.i45 = phi i32 [ %i.aa, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.03853, i32 noundef %.0.i45, ptr noundef %i.a) ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph51.preheader, label %._crit_edge

.lr.ph51.preheader:                               ; preds = %PyUnicode_READ.exit46
  %wide.trip.count61 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter68 = and i64 %wide.trip.count61, 1
  %i.ai = icmp eq i32 %i.ag, 1
end_hunk_8
begin_hunk_9_@_PyUnicode_ToFoldedFull
; Function Attrs: nounwind uwtable
define internal i64 @do_title(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a, %._crit_edge
  %.02636 = phi i64 [ %i.af, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  %.02735 = phi i32 [ %i.ae, %._crit_edge ], [ 0, %bb.a ]
  %.02834 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph38
  %i.c = getelementptr i8, ptr %1, i64 %.02636
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph38
  %i.f = getelementptr [2 x i8], ptr %1, i64 %.02636
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208
  %i.h = zext i16 %i.g to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph38
  %i.i = getelementptr [4 x i8], ptr %1, i64 %.02636
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %.not = icmp eq i32 %.02735, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.k = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.02636, i32 noundef %.0.i, ptr noundef %i.a)
  br label %bb.g

bb.f:                                             ; preds = %PyUnicode_READ.exit
  %i.l = call i32 @_PyUnicode_ToTitleFull(i32 noundef %.0.i, ptr noundef nonnull %i.a) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.025 = phi i32 [ %i.k, %bb.e ], [ %i.l, %bb.f ] ; 4 uses
  %i.m = icmp sgt i32 %.025, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %.025 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %.025, 1
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.132 = phi i64 [ %.02834, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i32, ptr %4, align 4, !tbaa !7
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.o, i32 %i.q)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.r = getelementptr [4 x i8], ptr %3, i64 %.132
  store i32 %i.q, ptr %i.r, align 4, !tbaa !7
  %i.s = load i32, ptr %4, align 4, !tbaa !7
  %i.t = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.s, i32 %i.v)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.w = add i64 %.132, 2                         ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %3, i64 %.132
  %i.y = getelementptr i8, ptr %i.x, i64 4
  store i32 %i.v, ptr %i.y, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !966

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.132.epil.init = phi i64 [ %.02834, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod45 = trunc i32 %.025 to i1
  call void @llvm.assume(i1 %lcmp.mod45)
  %i.z = load i32, ptr %4, align 4, !tbaa !7
  %i.aa = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7  ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.z, i32 %i.ab)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.ac = add i64 %.132.epil.init, 1
  %i.ad = getelementptr [4 x i8], ptr %3, i64 %.132.epil.init
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.1.lcssa = phi i64 [ %.02834, %bb.g ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ae = call i32 @_PyUnicode_IsCased(i32 noundef %.0.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.af = add nuw nsw i64 %.02636, 1              ; 2 uses
  %exitcond42.not = icmp eq i64 %i.af, %2
  br i1 %exitcond42.not, label %._crit_edge39, label %.lr.ph38, !llvm.loop !967

._crit_edge39:                                    ; preds = %._crit_edge, %bb.a
  %.028.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.028.lcssa
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pad(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 9 uses
  %spec.store.select2 = tail call i64 @llvm.smax.i64(i64 %2, i64 0) ; 7 uses
  %i.a = icmp slt i64 %1, 1                       ; 2 uses
  %i.b = icmp slt i64 %2, 1                       ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @unicode_result_unchanged(ptr noundef %0)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !207  ; 2 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp sgt i64 %spec.store.select, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.e, %spec.store.select         ; 2 uses
  %i.i = sub i64 9223372036854775807, %i.h
  %i.j = icmp sgt i64 %spec.store.select2, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.264) #33
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.l, align 8             ; 2 uses
  %i.m = and i32 %.val, 64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i32 %.val, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.o, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.o, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %switch.select6.i, %bb.g ], [ 127, %bb.f ]
  %i.p = tail call i32 @llvm.umax.i32(i32 %.0.i, i32 %3)
  %i.q = add i64 %i.h, %spec.store.select2
  %i.r = tail call ptr @PyUnicode_New(i64 noundef %i.q, i32 noundef %i.p) ; 6 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.u, label %bb.h

bb.h:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8              ; 3 uses
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = and i32 %i.t, 32
  %.not.i44 = icmp eq i32 %i.w, 0
  br i1 %.not.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i32 %i.t, 64
  %.not.i.i = icmp eq i32 %i.x, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.r, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.r, i64 56
  %.val4.i = load ptr, ptr %i.y, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.i, %bb.j
  %.0.i45 = phi ptr [ %.0.i.i, %bb.i ], [ %.val4.i, %bb.j ] ; 17 uses
  %.0.i4567 = ptrtoint ptr %.0.i45 to i64         ; 12 uses
  br i1 %i.a, label %_PyUnicode_Fill.exit, label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.v, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = trunc i32 %3 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i45, i8 %i.z, i64 %spec.store.select, i1 false)
  br label %_PyUnicode_Fill.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = trunc i32 %3 to i16                     ; 3 uses
  %i.ab = getelementptr [2 x i8], ptr %.0.i45, i64 %spec.store.select ; 2 uses
  %i.ac = icmp ult ptr %.0.i45, %i.ab
  br i1 %i.ac, label %iter.check, label %_PyUnicode_Fill.exit

iter.check:                                       ; preds = %bb.m
  %i.ad = shl nuw i64 %spec.store.select, 1
  %i.ae = add i64 %i.ad, %.0.i4567
  %i.af = add i64 %.0.i4567, 2
  %umax68 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = xor i64 %.0.i4567, -1
  %i.ah = add i64 %umax68, %i.ag                  ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1                    ; 5 uses
  %min.iters.check70.a = icmp ult i64 %i.ah, 6
  br i1 %min.iters.check70.a, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check71 = icmp ult i64 %i.ah, 30
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph72

vector.ph72:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf73 = and i64 %i.aj, 12
  %n.vec74 = and i64 %i.aj, -16                   ; 4 uses
  %i.ak = shl i64 %n.vec74, 1
  %i.al = getelementptr i8, ptr %.0.i45, i64 %i.ak
  %broadcast.splatinsert75 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat76 = shufflevector <8 x i16> %broadcast.splatinsert75, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph72
  %index78 = phi i64 [ 0, %vector.ph72 ], [ %index.next80, %vector.body77 ] ; 2 uses
  %i.am = shl i64 %index78, 1
  %next.gep79 = getelementptr i8, ptr %.0.i45, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep79, i64 16
  store <8 x i16> %broadcast.splat76, ptr %next.gep79, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat76, ptr %i.an, align 2, !tbaa !208
  %index.next80 = add nuw i64 %index78, 16        ; 2 uses
  %i.ao = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.ao, label %middle.block81, label %vector.body77, !llvm.loop !968

middle.block81:                                   ; preds = %vector.body77
  %cmp.n82 = icmp eq i64 %i.aj, %n.vec74
  br i1 %cmp.n82, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block81
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf73, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec74, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.aj, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec85, 1
  %i.aq = getelementptr i8, ptr %.0.i45, i64 %i.ap
  %broadcast.splatinsert86 = insertelement <4 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat87 = shufflevector <4 x i16> %broadcast.splatinsert86, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %.0.i45, i64 %i.ar
  store <4 x i16> %broadcast.splat87, ptr %next.gep89, align 2, !tbaa !208
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.aj, %n.vec85
  br i1 %cmp.n91, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.ph = phi ptr [ %.0.i45, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.at, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 %i.aa, ptr %.029.i, align 2, !tbaa !208
  %i.at = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.ab
  br i1 %i.au, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !970

bb.n:                                             ; preds = %bb.k
  %i.av = getelementptr [4 x i8], ptr %.0.i45, i64 %spec.store.select ; 2 uses
  %i.aw = icmp ult ptr %.0.i45, %i.av
  br i1 %i.aw, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ax = shl i64 %spec.store.select, 2
  %i.ay = add i64 %i.ax, %.0.i4567
  %i.az = add i64 %.0.i4567, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %i.ba = xor i64 %.0.i4567, -1
  %i.bb = add i64 %umax, %i.ba                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %.0.i45, i64 %i.be
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i45, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bh, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader143

.lr.ph.i.preheader143:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %.0.i45, %.lr.ph.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader143, %.lr.ph.i
  %.02628.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader143 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.bj = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.av
  br i1 %i.bk, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !972

bb.o:                                             ; preds = %bb.k
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block81, %vec.epilog.middle.block, %bb.n, %bb.m, %bb.l, %_PyUnicode_DATA.exit
  %.pre55 = load i64, ptr %i.d, align 8, !tbaa !207 ; 9 uses
  br i1 %i.b, label %_PyUnicode_Fill.exit50, label %bb.p

bb.p:                                             ; preds = %_PyUnicode_Fill.exit
  %i.bl = add i64 %.pre55, %spec.store.select     ; 6 uses
  switch i32 %i.v, label %bb.t [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 4, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bm = trunc i32 %3 to i8
  %i.bn = getelementptr i8, ptr %.0.i45, i64 %i.bl
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 %i.bm, i64 %spec.store.select2, i1 false)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !207
  br label %_PyUnicode_Fill.exit50

bb.r:                                             ; preds = %bb.p
  %i.bo = trunc i32 %3 to i16                     ; 3 uses
  %i.bp = getelementptr [2 x i8], ptr %.0.i45, i64 %i.bl ; 7 uses
  %i.bq = getelementptr [2 x i8], ptr %i.bp, i64 %spec.store.select2 ; 2 uses
  %i.br = icmp ult ptr %i.bp, %i.bq
  br i1 %i.br, label %iter.check125, label %_PyUnicode_Fill.exit50

iter.check125:                                    ; preds = %bb.r
  %i.bs = shl nuw i64 %spec.store.select2, 1
  %i.bt = add i64 %i.bs, %.0.i4567
  %i.bu = shl i64 %i.bl, 1                        ; 3 uses
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = add i64 %i.bu, %.0.i4567
  %i.bx = add i64 %i.bw, 2
  %umax107 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bx)
  %i.by = xor i64 %.0.i4567, -1
  %i.bz = add i64 %umax107, %i.by
  %i.ca = sub i64 %i.bz, %i.bu                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 1
  %i.cc = add nuw i64 %i.cb, 1                    ; 5 uses
  %min.iters.check109 = icmp ult i64 %i.ca, 6
  br i1 %min.iters.check109, label %.lr.ph30.i48.preheader, label %vector.main.loop.iter.check110

vector.main.loop.iter.check110:                   ; preds = %iter.check125
  %min.iters.check111 = icmp ult i64 %i.ca, 30
  br i1 %min.iters.check111, label %vec.epilog.ph129, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check110
  %n.mod.vf113 = and i64 %i.cc, 12
  %n.vec114 = and i64 %i.cc, -16                  ; 4 uses
  %i.cd = shl i64 %n.vec114, 1
  %i.ce = getelementptr i8, ptr %i.bp, i64 %i.cd
  %broadcast.splatinsert115 = insertelement <8 x i16> poison, i16 %i.bo, i64 0
  %broadcast.splat116 = shufflevector <8 x i16> %broadcast.splatinsert115, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph112
  %index118 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body117 ] ; 2 uses
  %i.cf = shl i64 %index118, 1
  %next.gep119 = getelementptr i8, ptr %i.bp, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep119, i64 16
  store <8 x i16> %broadcast.splat116, ptr %next.gep119, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat116, ptr %i.cg, align 2, !tbaa !208
  %index.next120 = add nuw i64 %index118, 16      ; 2 uses
  %i.ch = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.ch, label %middle.block121, label %vector.body117, !llvm.loop !973

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %i.cc, %n.vec114
  br i1 %cmp.n122, label %_PyUnicode_Fill.exit50, label %vec.epilog.iter.check127

vec.epilog.iter.check127:                         ; preds = %middle.block121
  %min.epilog.iters.check128 = icmp eq i64 %n.mod.vf113, 0
  br i1 %min.epilog.iters.check128, label %.lr.ph30.i48.preheader, label %vec.epilog.ph129, !prof !228

vec.epilog.ph129:                                 ; preds = %vector.main.loop.iter.check110, %vec.epilog.iter.check127
  %vec.epilog.resume.val123 = phi i64 [ %n.vec114, %vec.epilog.iter.check127 ], [ 0, %vector.main.loop.iter.check110 ]
  %n.vec131 = and i64 %i.cc, -4                   ; 3 uses
  %i.ci = shl i64 %n.vec131, 1
  %i.cj = getelementptr i8, ptr %i.bp, i64 %i.ci
  %broadcast.splatinsert132 = insertelement <4 x i16> poison, i16 %i.bo, i64 0
  %broadcast.splat133 = shufflevector <4 x i16> %broadcast.splatinsert132, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph129
  %index135 = phi i64 [ %vec.epilog.resume.val123, %vec.epilog.ph129 ], [ %index.next137, %vec.epilog.vector.body134 ] ; 2 uses
  %i.ck = shl i64 %index135, 1
  %next.gep136 = getelementptr i8, ptr %i.bp, i64 %i.ck
  store <4 x i16> %broadcast.splat133, ptr %next.gep136, align 2, !tbaa !208
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next137, %n.vec131
  br i1 %i.cl, label %vec.epilog.middle.block138, label %vec.epilog.vector.body134, !llvm.loop !974

vec.epilog.middle.block138:                       ; preds = %vec.epilog.vector.body134
  %cmp.n139 = icmp eq i64 %i.cc, %n.vec131
  br i1 %cmp.n139, label %_PyUnicode_Fill.exit50, label %.lr.ph30.i48.preheader

.lr.ph30.i48.preheader:                           ; preds = %iter.check125, %vec.epilog.iter.check127, %vec.epilog.middle.block138
  %.029.i49.ph = phi ptr [ %i.bp, %iter.check125 ], [ %i.ce, %vec.epilog.iter.check127 ], [ %i.cj, %vec.epilog.middle.block138 ]
  br label %.lr.ph30.i48

.lr.ph30.i48:                                     ; preds = %.lr.ph30.i48.preheader, %.lr.ph30.i48
  %.029.i49 = phi ptr [ %i.cm, %.lr.ph30.i48 ], [ %.029.i49.ph, %.lr.ph30.i48.preheader ] ; 2 uses
  store i16 %i.bo, ptr %.029.i49, align 2, !tbaa !208
  %i.cm = getelementptr i8, ptr %.029.i49, i64 2  ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %i.bq
  br i1 %i.cn, label %.lr.ph30.i48, label %_PyUnicode_Fill.exit50, !llvm.loop !975

bb.s:                                             ; preds = %bb.p
  %i.co = getelementptr [4 x i8], ptr %.0.i45, i64 %i.bl ; 5 uses
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %spec.store.select2 ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.i46.preheader, label %_PyUnicode_Fill.exit50

.lr.ph.i46.preheader:                             ; preds = %bb.s
  %i.cr = shl i64 %spec.store.select2, 2
  %i.cs = shl i64 %i.bl, 2                        ; 2 uses
  %i.ct = add i64 %i.cr, %.0.i4567
  %i.cu = add i64 %i.ct, %i.cs
  %i.cv = add i64 %i.cs, %.0.i4567
  %i.cw = add i64 %i.cv, 4
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cw)
  %i.cy = shl i64 %i.bl, 2
  %i.cz = add i64 %i.cy, %.0.i4567
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %i.cx, %i.da                    ; 2 uses
  %i.dc = lshr i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check94 = icmp ult i64 %i.db, 28
  br i1 %min.iters.check94, label %.lr.ph.i46.preheader141, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.i46.preheader
  %n.vec97 = and i64 %i.dd, 9223372036854775800   ; 3 uses
  %i.de = shl i64 %n.vec97, 2
  %i.df = getelementptr i8, ptr %i.co, i64 %i.de
  %broadcast.splatinsert98 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat99 = shufflevector <4 x i32> %broadcast.splatinsert98, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph95
  %index101 = phi i64 [ 0, %vector.ph95 ], [ %index.next103, %vector.body100 ] ; 2 uses
  %i.dg = shl i64 %index101, 2
  %next.gep102 = getelementptr i8, ptr %i.co, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep102, i64 16
  store <4 x i32> %broadcast.splat99, ptr %next.gep102, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat99, ptr %i.dh, align 4, !tbaa !7
  %index.next103 = add nuw i64 %index101, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next103, %n.vec97
  br i1 %i.di, label %middle.block104, label %vector.body100, !llvm.loop !976

middle.block104:                                  ; preds = %vector.body100
  %cmp.n105 = icmp eq i64 %i.dd, %n.vec97
  br i1 %cmp.n105, label %_PyUnicode_Fill.exit50, label %.lr.ph.i46.preheader141

.lr.ph.i46.preheader141:                          ; preds = %.lr.ph.i46.preheader, %middle.block104
  %.02628.i47.ph = phi ptr [ %i.co, %.lr.ph.i46.preheader ], [ %i.df, %middle.block104 ]
  br label %.lr.ph.i46

end_hunk_9
