inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@jpeg2000_decode_packet:bb.a
  br label %bb.bw

bb.bw:                                            ; preds = %bytestream2_peek_byte.exit.i612, %.lr.ph.i607
  %i.tk = phi ptr [ %.promoted16.i609, %.lr.ph.i607 ], [ %i.tu, %bytestream2_peek_byte.exit.i612 ] ; 4 uses
  %i.tl = phi i32 [ %.promoted.i608, %.lr.ph.i607 ], [ %i.tw, %bytestream2_peek_byte.exit.i612 ] ; 2 uses
  %.in.i610 = phi i32 [ %i.th, %.lr.ph.i607 ], [ %i.tm, %bytestream2_peek_byte.exit.i612 ] ; 2 uses
  %.015.i611 = phi i32 [ 0, %.lr.ph.i607 ], [ %i.ue, %bytestream2_peek_byte.exit.i612 ]
  %i.tm = add nsw i32 %.in.i610, -1
  %i.tn = shl i32 %.015.i611, 1
  %i.to = icmp eq i32 %i.tl, 0
  br i1 %i.to, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.tp = ptrtoint ptr %i.tk to i64
  %i.tq = sub i64 %i.tj, %i.tp
  %i.tr = icmp slt i64 %i.tq, 1
  br i1 %i.tr, label %bytestream2_get_byte.exit.thread.i619, label %bytestream2_get_byte.exit.i615

bytestream2_get_byte.exit.thread.i619:            ; preds = %bb.bx
  store ptr %i.ti, ptr %i.cj, align 8, !tbaa !41
  br label %bb.by

bytestream2_get_byte.exit.i615:                   ; preds = %bb.bx
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 1 ; 2 uses
  store ptr %i.ts, ptr %i.cj, align 8, !tbaa !45
  %i.tt = load i8, ptr %i.tk, align 1, !tbaa !46
  %.fr.i616 = freeze i8 %i.tt
  %.not.i617 = icmp eq i8 %.fr.i616, -1
  %spec.select.i618 = select i1 %.not.i617, i32 7, i32 8
  br label %bb.by

bb.by:                                            ; preds = %bytestream2_get_byte.exit.i615, %bytestream2_get_byte.exit.thread.i619, %bb.bw
  %i.tu = phi ptr [ %i.tk, %bb.bw ], [ %i.ti, %bytestream2_get_byte.exit.thread.i619 ], [ %i.ts, %bytestream2_get_byte.exit.i615 ] ; 3 uses
  %i.tv = phi i32 [ %i.tl, %bb.bw ], [ 8, %bytestream2_get_byte.exit.thread.i619 ], [ %spec.select.i618, %bytestream2_get_byte.exit.i615 ]
  %i.tw = add nsw i32 %i.tv, -1                   ; 3 uses
  store i32 %i.tw, ptr %i.ci, align 8, !tbaa !128
  %i.tx = ptrtoint ptr %i.tu to i64
  %i.ty = sub i64 %i.tj, %i.tx
  %i.tz = icmp slt i64 %i.ty, 1
  br i1 %i.tz, label %bytestream2_peek_byte.exit.i612, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ua = load i8, ptr %i.tu, align 1, !tbaa !46
  %i.ub = zext i8 %i.ua to i32
  br label %bytestream2_peek_byte.exit.i612

bytestream2_peek_byte.exit.i612:                  ; preds = %bb.bz, %bb.by
  %.0.i11.i613 = phi i32 [ %i.ub, %bb.bz ], [ 0, %bb.by ]
  %i.uc = lshr i32 %.0.i11.i613, %i.tw
  %i.ud = and i32 %i.uc, 1
  %i.ue = or disjoint i32 %i.ud, %i.tn            ; 4 uses
  %i.uf = icmp samesign ugt i32 %.in.i610, 1
  br i1 %i.uf, label %bb.bw, label %get_bits.exit620, !llvm.loop !327

get_bits.exit620:                                 ; preds = %bytestream2_peek_byte.exit.i612
  %.not552 = icmp eq i32 %i.ue, 0
  br i1 %.not552, label %get_bits.exit698, label %bb.ca

bb.ca:                                            ; preds = %get_bits.exit620
  %.not553 = icmp sgt i8 %i.rx, -1
  br i1 %.not553, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i8 0, ptr %i.sy, align 1, !tbaa !314
  %i.ug = and i8 %i.rx, -65
  store i8 %i.ug, ptr %i.rw, align 4, !tbaa !166
  br label %get_bits.exit698

bb.cc:                                            ; preds = %bb.ca
  %i.uh = load ptr, ptr %i.dr, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.uh, i32 noundef 24, ptr noundef nonnull @.str.89) #10
  br label %get_bits.exit698

.lr.ph920:                                        ; preds = %.preheader880, %.lr.ph920
  %.1443919 = phi i32 [ %i.uj, %.lr.ph920 ], [ 2, %.preheader880 ]
  %.1457918 = phi i8 [ %i.ui, %.lr.ph920 ], [ %i.rt, %.preheader880 ]
  %i.ui = add i8 %.1457918, 1                     ; 2 uses
  %i.uj = shl nsw i32 %.1443919, 1                ; 3 uses
  %.not544 = icmp sgt i32 %i.uj, %i.td
  br i1 %.not544, label %._crit_edge, label %.lr.ph920, !llvm.loop !328

._crit_edge:                                      ; preds = %.lr.ph920, %.preheader880
  %.1457.lcssa = phi i8 [ %i.rt, %.preheader880 ], [ %i.ui, %.lr.ph920 ] ; 2 uses
  %.1443.lcssa = phi i32 [ 2, %.preheader880 ], [ %i.uj, %.lr.ph920 ] ; 4 uses
  %i.uk = zext i8 %.1457.lcssa to i32             ; 2 uses
  %.not17.i621 = icmp eq i8 %.1457.lcssa, 0
  br i1 %.not17.i621, label %get_bits.exit636.thread, label %.lr.ph.i622

.lr.ph.i622:                                      ; preds = %._crit_edge
  %i.ul = load ptr, ptr %i.ck, align 8, !tbaa !43 ; 5 uses
  %i.um = ptrtoint ptr %i.ul to i64               ; 4 uses
  %.promoted.i623 = load i32, ptr %i.ci, align 8, !tbaa !128
  %.promoted16.i624 = load ptr, ptr %i.cj, align 8, !tbaa !45
  br label %bb.cd

bb.cd:                                            ; preds = %bytestream2_peek_byte.exit.i627, %.lr.ph.i622
  %i.un = phi ptr [ %.promoted16.i624, %.lr.ph.i622 ], [ %.promoted930, %bytestream2_peek_byte.exit.i627 ] ; 4 uses
  %i.uo = phi i32 [ %.promoted.i623, %.lr.ph.i622 ], [ %i.uy, %bytestream2_peek_byte.exit.i627 ] ; 2 uses
  %.in.i625 = phi i32 [ %i.uk, %.lr.ph.i622 ], [ %i.up, %bytestream2_peek_byte.exit.i627 ] ; 2 uses
  %.015.i626 = phi i32 [ 0, %.lr.ph.i622 ], [ %i.vg, %bytestream2_peek_byte.exit.i627 ]
  %i.up = add nsw i32 %.in.i625, -1
  %i.uq = shl i32 %.015.i626, 1
  %i.ur = icmp eq i32 %i.uo, 0
  br i1 %i.ur, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.us = ptrtoint ptr %i.un to i64
  %i.ut = sub i64 %i.um, %i.us
  %i.uu = icmp slt i64 %i.ut, 1
  br i1 %i.uu, label %bytestream2_get_byte.exit.thread.i635, label %bytestream2_get_byte.exit.i631

bytestream2_get_byte.exit.thread.i635:            ; preds = %bb.ce
  store ptr %i.ul, ptr %i.cj, align 8, !tbaa !41
  br label %bb.cf

bytestream2_get_byte.exit.i631:                   ; preds = %bb.ce
  %i.uv = getelementptr inbounds nuw i8, ptr %i.un, i64 1 ; 2 uses
  store ptr %i.uv, ptr %i.cj, align 8, !tbaa !45
  %i.uw = load i8, ptr %i.un, align 1, !tbaa !46
  %.fr.i632 = freeze i8 %i.uw
  %.not.i633 = icmp eq i8 %.fr.i632, -1
  %spec.select.i634 = select i1 %.not.i633, i32 7, i32 8
  br label %bb.cf

bb.cf:                                            ; preds = %bytestream2_get_byte.exit.i631, %bytestream2_get_byte.exit.thread.i635, %bb.cd
  %.promoted930 = phi ptr [ %i.un, %bb.cd ], [ %i.ul, %bytestream2_get_byte.exit.thread.i635 ], [ %i.uv, %bytestream2_get_byte.exit.i631 ] ; 4 uses
  %i.ux = phi i32 [ %i.uo, %bb.cd ], [ 8, %bytestream2_get_byte.exit.thread.i635 ], [ %spec.select.i634, %bytestream2_get_byte.exit.i631 ]
  %i.uy = add nsw i32 %i.ux, -1                   ; 4 uses
  store i32 %i.uy, ptr %i.ci, align 8, !tbaa !128
  %i.uz = ptrtoint ptr %.promoted930 to i64
  %i.va = sub i64 %i.um, %i.uz
  %i.vb = icmp slt i64 %i.va, 1
  br i1 %i.vb, label %bytestream2_peek_byte.exit.i627, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vc = load i8, ptr %.promoted930, align 1, !tbaa !46
  %i.vd = zext i8 %i.vc to i32
  br label %bytestream2_peek_byte.exit.i627

bytestream2_peek_byte.exit.i627:                  ; preds = %bb.cg, %bb.cf
  %.0.i11.i628 = phi i32 [ %i.vd, %bb.cg ], [ 0, %bb.cf ]
  %i.ve = lshr i32 %.0.i11.i628, %i.uy
  %i.vf = and i32 %i.ve, 1
  %i.vg = or disjoint i32 %i.vf, %i.uq            ; 11 uses
  %i.vh = icmp samesign ugt i32 %.in.i625, 1
  br i1 %i.vh, label %bb.cd, label %get_bits.exit636, !llvm.loop !327

get_bits.exit636:                                 ; preds = %bytestream2_peek_byte.exit.i627
  %.not545 = icmp eq i32 %i.vg, 0
  br i1 %.not545, label %get_bits.exit636.thread, label %bb.ch

bb.ch:                                            ; preds = %get_bits.exit636
  %.not549 = icmp sgt i8 %i.rx, -1
  br i1 %.not549, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.vi = icmp eq i32 %i.vg, 1
  br i1 %i.vi, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.vj = load ptr, ptr %i.dr, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vj, i32 noundef 24, ptr noundef nonnull @.str.89) #10
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  store i8 0, ptr %i.sy, align 1, !tbaa !314
  %i.vk = getelementptr inbounds nuw i8, ptr %i.er, i64 92
  store i32 %i.vg, ptr %i.vk, align 4, !tbaa !49
  br label %get_bits.exit698

bb.cl:                                            ; preds = %bb.ch
  %i.vl = icmp ugt i8 %i.rt, 3
  %i.vm = icmp ne i32 %i.vg, 1
  %or.cond5 = and i1 %i.vl, %i.vm
  br i1 %or.cond5, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.vn = add nsw i32 %i.uk, -1
  %i.vo = lshr i32 %i.vg, %i.vn
  %i.vp = icmp eq i32 %i.vo, 0
  br i1 %i.vp, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i8 0, ptr %i.sy, align 1, !tbaa !314
  %i.vq = getelementptr inbounds nuw i8, ptr %i.er, i64 92
  store i32 %i.vg, ptr %i.vq, align 4, !tbaa !49
  br label %get_bits.exit698

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %i.vr = and i8 %i.rx, -65
  store i8 %i.vr, ptr %i.rw, align 4, !tbaa !166
  store i8 0, ptr %i.sy, align 1, !tbaa !314
  %.not550923 = icmp sgt i32 %.1443.lcssa, %.0.i591
  br i1 %.not550923, label %get_bits.exit698, label %.lr.ph927

.lr.ph927:                                        ; preds = %bb.co, %bytestream2_peek_byte.exit.i642
  %.promoted16.i639933 = phi ptr [ %.promoted16.i639931, %bytestream2_peek_byte.exit.i642 ], [ %.promoted930, %bb.co ] ; 4 uses
  %.promoted.i638929 = phi i32 [ %i.vz, %bytestream2_peek_byte.exit.i642 ], [ %i.uy, %bb.co ] ; 2 uses
  %.2925 = phi i32 [ %9, %bytestream2_peek_byte.exit.i642 ], [ %.1443.lcssa, %bb.co ]
  %.0453924 = phi i32 [ %i.wh, %bytestream2_peek_byte.exit.i642 ], [ %i.vg, %bb.co ]
  %i.vs = icmp eq i32 %.promoted.i638929, 0
  br i1 %i.vs, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph927
  %i.vt = ptrtoint ptr %.promoted16.i639933 to i64
  %i.vu = sub i64 %i.um, %i.vt
  %i.vv = icmp slt i64 %i.vu, 1
  br i1 %i.vv, label %bytestream2_get_byte.exit.thread.i650, label %bytestream2_get_byte.exit.i646

bytestream2_get_byte.exit.thread.i650:            ; preds = %bb.cp
  store ptr %i.ul, ptr %i.cj, align 8, !tbaa !41
  br label %bb.cq

bytestream2_get_byte.exit.i646:                   ; preds = %bb.cp
  %i.vw = getelementptr inbounds nuw i8, ptr %.promoted16.i639933, i64 1 ; 2 uses
  store ptr %i.vw, ptr %i.cj, align 8, !tbaa !45
  %i.vx = load i8, ptr %.promoted16.i639933, align 1, !tbaa !46
  %.fr.i647 = freeze i8 %i.vx
  %.not.i648 = icmp eq i8 %.fr.i647, -1
  %spec.select.i649 = select i1 %.not.i648, i32 7, i32 8
  br label %bb.cq

bb.cq:                                            ; preds = %bytestream2_get_byte.exit.i646, %bytestream2_get_byte.exit.thread.i650, %.lr.ph927
  %.promoted16.i639931 = phi ptr [ %.promoted16.i639933, %.lr.ph927 ], [ %i.ul, %bytestream2_get_byte.exit.thread.i650 ], [ %i.vw, %bytestream2_get_byte.exit.i646 ] ; 3 uses
  %i.vy = phi i32 [ %.promoted.i638929, %.lr.ph927 ], [ 8, %bytestream2_get_byte.exit.thread.i650 ], [ %spec.select.i649, %bytestream2_get_byte.exit.i646 ]
  %i.vz = add nsw i32 %i.vy, -1                   ; 3 uses
  store i32 %i.vz, ptr %i.ci, align 8, !tbaa !128
  %i.wa = ptrtoint ptr %.promoted16.i639931 to i64
  %i.wb = sub i64 %i.um, %i.wa
  %i.wc = icmp slt i64 %i.wb, 1
  br i1 %i.wc, label %bytestream2_peek_byte.exit.i642, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wd = load i8, ptr %.promoted16.i639931, align 1, !tbaa !46
  %i.we = zext i8 %i.wd to i32
  br label %bytestream2_peek_byte.exit.i642

bytestream2_peek_byte.exit.i642:                  ; preds = %bb.cr, %bb.cq
  %.0.i11.i643 = phi i32 [ %i.we, %bb.cr ], [ 0, %bb.cq ]
  %i.wf = lshr i32 %.0.i11.i643, %i.vz
  %i.wg = and i32 %i.wf, 1
  %9 = shl nuw nsw i32 %.2925, 1                  ; 2 uses
  %10 = shl i32 %.0453924, 1
  %i.wh = or disjoint i32 %i.wg, %10              ; 2 uses
  %.not550 = icmp sgt i32 %9, %.0.i591
  br i1 %.not550, label %get_bits.exit698, label %.lr.ph927, !llvm.loop !329

get_bits.exit636.thread:                          ; preds = %._crit_edge, %get_bits.exit636
  %.not546 = icmp sgt i32 %.1443.lcssa, %.0.i591
  br i1 %.not546, label %get_bits.exit698, label %.preheader878

.preheader878:                                    ; preds = %get_bits.exit636.thread
  %i.wi = load ptr, ptr %i.ck, align 8, !tbaa !43 ; 3 uses
  %i.wj = ptrtoint ptr %i.wi to i64               ; 2 uses
  %.promoted935 = load i32, ptr %i.ci, align 8, !tbaa !128
  %.promoted937 = load ptr, ptr %i.cj, align 8, !tbaa !45
  br label %bb.cs

bb.cs:                                            ; preds = %.preheader878, %bytestream2_peek_byte.exit.i657
  %.promoted16.i654940 = phi ptr [ %.promoted16.i654938, %bytestream2_peek_byte.exit.i657 ], [ %.promoted937, %.preheader878 ] ; 4 uses
  %.promoted.i653936 = phi i32 [ %i.wr, %bytestream2_peek_byte.exit.i657 ], [ %.promoted935, %.preheader878 ] ; 2 uses
  %.1454 = phi i32 [ %i.wz, %bytestream2_peek_byte.exit.i657 ], [ 0, %.preheader878 ]
  %.3 = phi i32 [ %11, %bytestream2_peek_byte.exit.i657 ], [ %.1443.lcssa, %.preheader878 ]
  %i.wk = icmp eq i32 %.promoted.i653936, 0
  br i1 %i.wk, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.wl = ptrtoint ptr %.promoted16.i654940 to i64
  %i.wm = sub i64 %i.wj, %i.wl
  %i.wn = icmp slt i64 %i.wm, 1
  br i1 %i.wn, label %bytestream2_get_byte.exit.thread.i665, label %bytestream2_get_byte.exit.i661

bytestream2_get_byte.exit.thread.i665:            ; preds = %bb.ct
  store ptr %i.wi, ptr %i.cj, align 8, !tbaa !41
  br label %bb.cu

bytestream2_get_byte.exit.i661:                   ; preds = %bb.ct
  %i.wo = getelementptr inbounds nuw i8, ptr %.promoted16.i654940, i64 1 ; 2 uses
  store ptr %i.wo, ptr %i.cj, align 8, !tbaa !45
  %i.wp = load i8, ptr %.promoted16.i654940, align 1, !tbaa !46
  %.fr.i662 = freeze i8 %i.wp
  %.not.i663 = icmp eq i8 %.fr.i662, -1
  %spec.select.i664 = select i1 %.not.i663, i32 7, i32 8
  br label %bb.cu

bb.cu:                                            ; preds = %bytestream2_get_byte.exit.i661, %bytestream2_get_byte.exit.thread.i665, %bb.cs
  %.promoted16.i654938 = phi ptr [ %.promoted16.i654940, %bb.cs ], [ %i.wi, %bytestream2_get_byte.exit.thread.i665 ], [ %i.wo, %bytestream2_get_byte.exit.i661 ] ; 3 uses
  %i.wq = phi i32 [ %.promoted.i653936, %bb.cs ], [ 8, %bytestream2_get_byte.exit.thread.i665 ], [ %spec.select.i664, %bytestream2_get_byte.exit.i661 ]
  %i.wr = add nsw i32 %i.wq, -1                   ; 3 uses
  store i32 %i.wr, ptr %i.ci, align 8, !tbaa !128
  %i.ws = ptrtoint ptr %.promoted16.i654938 to i64
  %i.wt = sub i64 %i.wj, %i.ws
  %i.wu = icmp slt i64 %i.wt, 1
  br i1 %i.wu, label %bytestream2_peek_byte.exit.i657, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.wv = load i8, ptr %.promoted16.i654938, align 1, !tbaa !46
  %i.ww = zext i8 %i.wv to i32
  br label %bytestream2_peek_byte.exit.i657

bytestream2_peek_byte.exit.i657:                  ; preds = %bb.cv, %bb.cu
  %.0.i11.i658 = phi i32 [ %i.ww, %bb.cv ], [ 0, %bb.cu ]
  %i.wx = lshr i32 %.0.i11.i658, %i.wr
  %i.wy = and i32 %i.wx, 1
  %11 = shl nuw nsw i32 %.3, 1                    ; 2 uses
  %12 = shl i32 %.1454, 1
  %i.wz = or disjoint i32 %i.wy, %12              ; 4 uses
  %i.xa = icmp sgt i32 %11, %.0.i591
  br i1 %i.xa, label %bb.cw, label %bb.cs

bb.cw:                                            ; preds = %bytestream2_peek_byte.exit.i657
  %.not547 = icmp eq i32 %i.wz, 0
  br i1 %.not547, label %get_bits.exit698, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.not548 = icmp sgt i8 %i.rx, -1
  br i1 %.not548, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xb = and i8 %i.rx, -65
  store i8 %i.xb, ptr %i.rw, align 4, !tbaa !166
  store i8 0, ptr %i.sy, align 1, !tbaa !314
  br label %get_bits.exit698

bb.cz:                                            ; preds = %bb.cx
  %i.xc = load ptr, ptr %i.dr, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xc, i32 noundef 24, ptr noundef nonnull @.str.89) #10
  br label %get_bits.exit698

bb.da:                                            ; preds = %.loopexit882
  %i.xd = zext i8 %i.rx to i32                    ; 3 uses
  %i.xe = and i32 %i.xd, 64
  %.not538 = icmp eq i32 %i.xe, 0
  br i1 %.not538, label %bb.di, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xf = urem i8 %i.ru, 3                        ; 2 uses
  %i.xg = icmp eq i8 %i.xf, 0
  br i1 %i.xg, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not543 = icmp eq i32 %.0.i591, 1
  %i.xh = xor i8 %i.xf, 3
  %i.xi = zext nneg i8 %i.xh to i32
  %i.xj = select i1 %.not543, i32 1, i32 %i.xi    ; 2 uses
  %i.xk = zext nneg i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !46
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %.4460 = phi i8 [ %i.xm, %bb.dc ], [ 0, %bb.db ]
  %.0448 = phi i32 [ %i.xj, %bb.dc ], [ 1, %bb.db ]
  %.0444 = phi i8 [ 1, %bb.dc ], [ 2, %bb.db ]
  %i.xn = add i8 %.4460, %i.rt                    ; 2 uses
  %.not17.i667 = icmp eq i8 %i.xn, 0
  br i1 %.not17.i667, label %get_bits.exit682, label %.lr.ph.i668

.lr.ph.i668:                                      ; preds = %bb.dd
  %i.xo = zext i8 %i.xn to i32
  %i.xp = load ptr, ptr %i.ck, align 8, !tbaa !43 ; 3 uses
  %i.xq = ptrtoint ptr %i.xp to i64               ; 2 uses
  %.promoted.i669 = load i32, ptr %i.ci, align 8, !tbaa !128
  %.promoted16.i670 = load ptr, ptr %i.cj, align 8, !tbaa !45
  br label %bb.de

bb.de:                                            ; preds = %bytestream2_peek_byte.exit.i673, %.lr.ph.i668
  %i.xr = phi ptr [ %.promoted16.i670, %.lr.ph.i668 ], [ %i.yb, %bytestream2_peek_byte.exit.i673 ] ; 4 uses
  %i.xs = phi i32 [ %.promoted.i669, %.lr.ph.i668 ], [ %i.yd, %bytestream2_peek_byte.exit.i673 ] ; 2 uses
  %.in.i671 = phi i32 [ %i.xo, %.lr.ph.i668 ], [ %i.xt, %bytestream2_peek_byte.exit.i673 ] ; 2 uses
  %.015.i672 = phi i32 [ 0, %.lr.ph.i668 ], [ %i.yl, %bytestream2_peek_byte.exit.i673 ]
  %i.xt = add nsw i32 %.in.i671, -1
  %i.xu = shl i32 %.015.i672, 1
  %i.xv = icmp eq i32 %i.xs, 0
  br i1 %i.xv, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.xw = ptrtoint ptr %i.xr to i64
  %i.xx = sub i64 %i.xq, %i.xw
  %i.xy = icmp slt i64 %i.xx, 1
  br i1 %i.xy, label %bytestream2_get_byte.exit.thread.i681, label %bytestream2_get_byte.exit.i677

bytestream2_get_byte.exit.thread.i681:            ; preds = %bb.df
  store ptr %i.xp, ptr %i.cj, align 8, !tbaa !41
  br label %bb.dg

bytestream2_get_byte.exit.i677:                   ; preds = %bb.df
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xr, i64 1 ; 2 uses
  store ptr %i.xz, ptr %i.cj, align 8, !tbaa !45
  %i.ya = load i8, ptr %i.xr, align 1, !tbaa !46
  %.fr.i678 = freeze i8 %i.ya
  %.not.i679 = icmp eq i8 %.fr.i678, -1
  %spec.select.i680 = select i1 %.not.i679, i32 7, i32 8
  br label %bb.dg

bb.dg:                                            ; preds = %bytestream2_get_byte.exit.i677, %bytestream2_get_byte.exit.thread.i681, %bb.de
  %i.yb = phi ptr [ %i.xr, %bb.de ], [ %i.xp, %bytestream2_get_byte.exit.thread.i681 ], [ %i.xz, %bytestream2_get_byte.exit.i677 ] ; 3 uses
  %i.yc = phi i32 [ %i.xs, %bb.de ], [ 8, %bytestream2_get_byte.exit.thread.i681 ], [ %spec.select.i680, %bytestream2_get_byte.exit.i677 ]
  %i.yd = add nsw i32 %i.yc, -1                   ; 3 uses
  store i32 %i.yd, ptr %i.ci, align 8, !tbaa !128
  %i.ye = ptrtoint ptr %i.yb to i64
  %i.yf = sub i64 %i.xq, %i.ye
  %i.yg = icmp slt i64 %i.yf, 1
  br i1 %i.yg, label %bytestream2_peek_byte.exit.i673, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yh = load i8, ptr %i.yb, align 1, !tbaa !46
  %i.yi = zext i8 %i.yh to i32
  br label %bytestream2_peek_byte.exit.i673

bytestream2_peek_byte.exit.i673:                  ; preds = %bb.dh, %bb.dg
  %.0.i11.i674 = phi i32 [ %i.yi, %bb.dh ], [ 0, %bb.dg ]
  %i.yj = lshr i32 %.0.i11.i674, %i.yd
  %i.yk = and i32 %i.yj, 1
  %i.yl = or disjoint i32 %i.yk, %i.xu            ; 2 uses
  %i.ym = icmp samesign ugt i32 %.in.i671, 1
  br i1 %i.ym, label %bb.de, label %get_bits.exit682, !llvm.loop !327

get_bits.exit682:                                 ; preds = %bytestream2_peek_byte.exit.i673, %bb.dd
  %.0.lcssa.i676 = phi i32 [ 0, %bb.dd ], [ %i.yl, %bytestream2_peek_byte.exit.i673 ] ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.er, i64 96 ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !49
  %i.yp = add i32 %i.yo, %.0.lcssa.i676
  store i32 %i.yp, ptr %i.yn, align 8, !tbaa !49
  br label %get_bits.exit698

bb.di:                                            ; preds = %bb.da
  %i.yq = and i32 %i.xd, 5
  %.not539 = icmp eq i32 %i.yq, 0
  br i1 %.not539, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di
  %i.yr = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.rh
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !46
  %i.yt = add i8 %i.ys, %i.rt                     ; 2 uses
  %.not17.i683 = icmp eq i8 %i.yt, 0
  br i1 %.not17.i683, label %get_bits.exit698, label %.lr.ph.i684

.lr.ph.i684:                                      ; preds = %bb.dj
  %i.yu = zext i8 %i.yt to i32
  %i.yv = load ptr, ptr %i.ck, align 8, !tbaa !43 ; 3 uses
  %i.yw = ptrtoint ptr %i.yv to i64               ; 2 uses
  %.promoted.i685 = load i32, ptr %i.ci, align 8, !tbaa !128
  %.promoted16.i686 = load ptr, ptr %i.cj, align 8, !tbaa !45
  br label %bb.dk

bb.dk:                                            ; preds = %bytestream2_peek_byte.exit.i689, %.lr.ph.i684
  %i.yx = phi ptr [ %.promoted16.i686, %.lr.ph.i684 ], [ %i.zh, %bytestream2_peek_byte.exit.i689 ] ; 4 uses
  %i.yy = phi i32 [ %.promoted.i685, %.lr.ph.i684 ], [ %i.zj, %bytestream2_peek_byte.exit.i689 ] ; 2 uses
  %.in.i687 = phi i32 [ %i.yu, %.lr.ph.i684 ], [ %i.yz, %bytestream2_peek_byte.exit.i689 ] ; 2 uses
  %.015.i688 = phi i32 [ 0, %.lr.ph.i684 ], [ %i.zr, %bytestream2_peek_byte.exit.i689 ]
  %i.yz = add nsw i32 %.in.i687, -1
  %i.za = shl i32 %.015.i688, 1
  %i.zb = icmp eq i32 %i.yy, 0
  br i1 %i.zb, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.zc = ptrtoint ptr %i.yx to i64
  %i.zd = sub i64 %i.yw, %i.zc
  %i.ze = icmp slt i64 %i.zd, 1
  br i1 %i.ze, label %bytestream2_get_byte.exit.thread.i697, label %bytestream2_get_byte.exit.i693

bytestream2_get_byte.exit.thread.i697:            ; preds = %bb.dl
  store ptr %i.yv, ptr %i.cj, align 8, !tbaa !41
  br label %bb.dm

bytestream2_get_byte.exit.i693:                   ; preds = %bb.dl
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yx, i64 1 ; 2 uses
  store ptr %i.zf, ptr %i.cj, align 8, !tbaa !45
  %i.zg = load i8, ptr %i.yx, align 1, !tbaa !46
  %.fr.i694 = freeze i8 %i.zg
  %.not.i695 = icmp eq i8 %.fr.i694, -1
  %spec.select.i696 = select i1 %.not.i695, i32 7, i32 8
  br label %bb.dm

bb.dm:                                            ; preds = %bytestream2_get_byte.exit.i693, %bytestream2_get_byte.exit.thread.i697, %bb.dk
  %i.zh = phi ptr [ %i.yx, %bb.dk ], [ %i.yv, %bytestream2_get_byte.exit.thread.i697 ], [ %i.zf, %bytestream2_get_byte.exit.i693 ] ; 3 uses
  %i.zi = phi i32 [ %i.yy, %bb.dk ], [ 8, %bytestream2_get_byte.exit.thread.i697 ], [ %spec.select.i696, %bytestream2_get_byte.exit.i693 ]
  %i.zj = add nsw i32 %i.zi, -1                   ; 3 uses
  store i32 %i.zj, ptr %i.ci, align 8, !tbaa !128
  %i.zk = ptrtoint ptr %i.zh to i64
  %i.zl = sub i64 %i.yw, %i.zk
  %i.zm = icmp slt i64 %i.zl, 1
  br i1 %i.zm, label %bytestream2_peek_byte.exit.i689, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zn = load i8, ptr %i.zh, align 1, !tbaa !46
  %i.zo = zext i8 %i.zn to i32
  br label %bytestream2_peek_byte.exit.i689

bytestream2_peek_byte.exit.i689:                  ; preds = %bb.dn, %bb.dm
  %.0.i11.i690 = phi i32 [ %i.zo, %bb.dn ], [ 0, %bb.dm ]
  %i.zp = lshr i32 %.0.i11.i690, %i.zj
  %i.zq = and i32 %i.zp, 1
  %i.zr = or disjoint i32 %i.zq, %i.za            ; 2 uses
  %i.zs = icmp samesign ugt i32 %.in.i687, 1
  br i1 %i.zs, label %bb.dk, label %get_bits.exit698, !llvm.loop !327

bb.do:                                            ; preds = %bb.di
  %i.zt = and i32 %i.xd, 4
  %.not540 = icmp eq i32 %i.zt, 0
  br i1 %.not540, label %bb.du, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not17.i699 = icmp eq i8 %i.rt, 0
  br i1 %.not17.i699, label %get_bits.exit698, label %.lr.ph.i700
end_hunk_0
