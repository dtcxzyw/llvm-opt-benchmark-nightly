inline.NumInlined: 720
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@LZ4HC_compress_optimal:bb.a
  %.18.i.i701 = phi i32 [ 3, %LZ4HC_Insert.exit.i.i689 ], [ %.0.i.i697.be, %.backedge2443 ], [ %.6.i.i828, %bb.bz ], [ %.17.i.i784, %bb.ca ], [ %.5.i.i766, %bb.bx ] ; 3 uses
  %i.qn = icmp sgt i32 %.1315.i.i700, 0
  %or.cond13.i.i702 = select i1 %i.ac, i1 %i.qn, i1 false
  %or.cond15.i.i703 = and i1 %i.bx, %or.cond13.i.i702
  br i1 %or.cond15.i.i703, label %bb.cb, label %LZ4HC_InsertAndGetWiderMatch.exit.i704

bb.cb:                                            ; preds = %.thread1398
  %i.qo = getelementptr inbounds nuw i8, ptr %i.bo, i64 262144
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !7
  %i.qq = getelementptr inbounds nuw i8, ptr %i.bo, i64 262152
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !13 ; 2 uses
  %i.qs = ptrtoint ptr %i.qp to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.bo, i64 262168
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !14
  %i.qx = zext i32 %i.qw to i64                   ; 2 uses
  %i.qy = add i64 %i.qu, %i.qx                    ; 2 uses
  %.val954 = load i32, ptr %.013271995, align 1, !tbaa !15
  %i.qz = mul i32 %.val954, -1640531535
  %i.ra = lshr i32 %i.qz, 17
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !3  ; 2 uses
  %i.re = add i32 %i.rd, %i.bz
  %i.rf = trunc i64 %i.qy to i32
  %i.rg = sub i32 %i.re, %i.rf                    ; 2 uses
  %i.rh = sub i32 %i.bu, %i.rg                    ; 2 uses
  %i.ri = icmp ult i32 %i.rh, 65536
  br i1 %i.ri, label %.lr.ph1820, label %LZ4HC_InsertAndGetWiderMatch.exit.i704

.lr.ph1820:                                       ; preds = %bb.cb
  %i.rj = sub nsw i64 0, %i.qx
  %i.rk = getelementptr inbounds i8, ptr %i.qr, i64 %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bo, i64 131072
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cq, %.lr.ph1820
  %.in = phi i32 [ %.1315.i.i700, %.lr.ph1820 ], [ %i.rn, %bb.cq ]
  %.19370.i.i72518142700 = phi i32 [ %.18369.i.i699, %.lr.ph1820 ], [ %.21372.i.i732, %bb.cq ] ; 2 uses
  %.0340.i.i72618152699 = phi i32 [ %i.rd, %.lr.ph1820 ], [ %i.to, %bb.cq ] ; 3 uses
  %.16339.i.i72718162698 = phi i32 [ %i.rg, %.lr.ph1820 ], [ %i.tl, %bb.cq ]
  %.19.i.i72918182697 = phi i32 [ %.18.i.i701, %.lr.ph1820 ], [ %.21.i.i733, %bb.cq ] ; 3 uses
  %i.rm = phi i32 [ %i.rh, %.lr.ph1820 ], [ %i.tm, %bb.cq ]
  %i.rn = add nsw i32 %.in, -1                    ; 2 uses
  %i.ro = zext i32 %.0340.i.i72618152699 to i64   ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.ro ; 3 uses
  %.val941 = load i32, ptr %i.rp, align 1, !tbaa !15
  %i.rq = icmp eq i32 %.val941, %.val942
  br i1 %i.rq, label %bb.cd, label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  %i.rr = sub i64 %i.qy, %i.ro
  %i.rs = getelementptr inbounds nuw i8, ptr %.013271995, i64 %i.rr ; 2 uses
  %i.rt = icmp ugt ptr %i.rs, %i.l
  %spec.select457.i.i734 = select i1 %i.rt, ptr %i.l, ptr %i.rs ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 4 ; 2 uses
  %i.rv = getelementptr inbounds i8, ptr %spec.select457.i.i734, i64 -7 ; 3 uses
  %i.rw = icmp ult ptr %i.dz, %i.rv
  br i1 %i.rw, label %bb.ce, label %bb.cg, !prof !19

bb.ce:                                            ; preds = %bb.cd
  %.val975 = load i64, ptr %i.ru, align 1, !tbaa !20 ; 2 uses
  %.val974 = load i64, ptr %i.dz, align 1, !tbaa !20 ; 2 uses
  %.not.i.i.i756 = icmp eq i64 %.val975, %.val974
  br i1 %.not.i.i.i756, label %.thread1406, label %bb.cf

.thread1406:                                      ; preds = %bb.ce
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ry = xor i64 %.val974, %.val975
  %i.rz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ry, i1 true)
  %i.sa = trunc nuw nsw i64 %i.rz to i32
  %i.sb = lshr i32 %i.sa, 3
  br label %LZ4_count.exit.i.i746

bb.cg:                                            ; preds = %.thread1406, %bb.cd
  %.150.i.i.i735 = phi ptr [ %i.rx, %.thread1406 ], [ %i.ru, %bb.cd ] ; 2 uses
  %.145.i.i.i736 = phi ptr [ %i.eb, %.thread1406 ], [ %i.dz, %bb.cd ] ; 3 uses
  %i.sc = icmp ult ptr %.145.i.i.i736, %i.rv
  br i1 %i.sc, label %.lr.ph1809, label %._crit_edge1810, !prof !23

.lr.ph1809:                                       ; preds = %bb.cg, %bb.ch
  %.246.i.i.i7391807 = phi ptr [ %i.sk, %bb.ch ], [ %.145.i.i.i736, %bb.cg ] ; 3 uses
  %.251.i.i.i7381806 = phi ptr [ %i.sl, %bb.ch ], [ %.150.i.i.i735, %bb.cg ] ; 2 uses
  %.251.i.i.i738.val977 = load i64, ptr %.251.i.i.i7381806, align 1, !tbaa !20 ; 2 uses
  %.246.i.i.i739.val976 = load i64, ptr %.246.i.i.i7391807, align 1, !tbaa !20 ; 2 uses
  %.not59.i.i.i752 = icmp eq i64 %.251.i.i.i738.val977, %.246.i.i.i739.val976
  br i1 %.not59.i.i.i752, label %bb.ch, label %.thread1410

.thread1410:                                      ; preds = %.lr.ph1809
  %i.sd = xor i64 %.246.i.i.i739.val976, %.251.i.i.i738.val977
  %i.se = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.sd, i1 true)
  %i.sf = lshr i64 %i.se, 3
  %i.sg = getelementptr inbounds nuw i8, ptr %.246.i.i.i7391807, i64 %i.sf
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = sub i64 %i.sh, %i.ec
  %i.sj = trunc i64 %i.si to i32
  br label %LZ4_count.exit.i.i746

bb.ch:                                            ; preds = %.lr.ph1809
  %i.sk = getelementptr inbounds nuw i8, ptr %.246.i.i.i7391807, i64 8 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.251.i.i.i7381806, i64 8 ; 2 uses
  %i.sm = icmp ult ptr %i.sk, %i.rv
  br i1 %i.sm, label %.lr.ph1809, label %._crit_edge1810, !prof !24

._crit_edge1810:                                  ; preds = %bb.ch, %bb.cg
  %.251.i.i.i738.lcssa = phi ptr [ %.150.i.i.i735, %bb.cg ], [ %i.sl, %bb.ch ] ; 4 uses
  %.246.i.i.i739.lcssa = phi ptr [ %.145.i.i.i736, %bb.cg ], [ %i.sk, %bb.ch ] ; 5 uses
  %i.sn = getelementptr inbounds i8, ptr %spec.select457.i.i734, i64 -3
  %i.so = icmp ult ptr %.246.i.i.i739.lcssa, %i.sn
  br i1 %i.so, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %._crit_edge1810
  %.251.i.i.i738.val = load i32, ptr %.251.i.i.i738.lcssa, align 1, !tbaa !15
  %.246.i.i.i739.val = load i32, ptr %.246.i.i.i739.lcssa, align 1, !tbaa !15
  %i.sp = icmp eq i32 %.251.i.i.i738.val, %.246.i.i.i739.val
  br i1 %i.sp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.sq = getelementptr inbounds nuw i8, ptr %.246.i.i.i739.lcssa, i64 4
  %i.sr = getelementptr inbounds nuw i8, ptr %.251.i.i.i738.lcssa, i64 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %._crit_edge1810
  %.453.i.i.i741 = phi ptr [ %i.sr, %bb.cj ], [ %.251.i.i.i738.lcssa, %bb.ci ], [ %.251.i.i.i738.lcssa, %._crit_edge1810 ] ; 4 uses
  %.448.i.i.i742 = phi ptr [ %i.sq, %bb.cj ], [ %.246.i.i.i739.lcssa, %bb.ci ], [ %.246.i.i.i739.lcssa, %._crit_edge1810 ] ; 5 uses
  %i.ss = getelementptr inbounds i8, ptr %spec.select457.i.i734, i64 -1
  %i.st = icmp ult ptr %.448.i.i.i742, %i.ss
  br i1 %i.st, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %.453.i.i.i741.val = load i16, ptr %.453.i.i.i741, align 1, !tbaa !25
  %.448.i.i.i742.val = load i16, ptr %.448.i.i.i742, align 1, !tbaa !25
  %i.su = icmp eq i16 %.453.i.i.i741.val, %.448.i.i.i742.val
  br i1 %i.su, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sv = getelementptr inbounds nuw i8, ptr %.448.i.i.i742, i64 2
  %i.sw = getelementptr inbounds nuw i8, ptr %.453.i.i.i741, i64 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %.554.i.i.i743 = phi ptr [ %i.sw, %bb.cm ], [ %.453.i.i.i741, %bb.cl ], [ %.453.i.i.i741, %bb.ck ]
  %.5.i.i.i744 = phi ptr [ %i.sv, %bb.cm ], [ %.448.i.i.i742, %bb.cl ], [ %.448.i.i.i742, %bb.ck ] ; 4 uses
  %i.sx = icmp ult ptr %.5.i.i.i744, %spec.select457.i.i734
  br i1 %i.sx, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.sy = load i8, ptr %.554.i.i.i743, align 1, !tbaa !27
  %i.sz = load i8, ptr %.5.i.i.i744, align 1, !tbaa !27
  %i.ta = icmp eq i8 %i.sy, %i.sz
  %spec.select.i.i.i751.idx = zext i1 %i.ta to i64
  %spec.select.i.i.i751 = getelementptr inbounds nuw i8, ptr %.5.i.i.i744, i64 %spec.select.i.i.i751.idx
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.6.i.i.i745 = phi ptr [ %.5.i.i.i744, %bb.cn ], [ %spec.select.i.i.i751, %bb.co ]
  %i.tb = ptrtoint ptr %.6.i.i.i745 to i64
  %i.tc = sub i64 %i.tb, %i.ec
  %i.td = trunc i64 %i.tc to i32
  br label %LZ4_count.exit.i.i746

LZ4_count.exit.i.i746:                            ; preds = %.thread1410, %bb.cf, %bb.cp
  %.4.i.i.i747 = phi i32 [ %i.sj, %.thread1410 ], [ %i.td, %bb.cp ], [ %i.sb, %bb.cf ]
  %i.te = add nsw i32 %.4.i.i.i747, 4             ; 2 uses
  %i.tf = icmp sgt i32 %i.te, %.19.i.i72918182697
  %.20371.i.i749 = select i1 %i.tf, i32 %i.rm, i32 %.19370.i.i72518142700
  %.20.i.i750 = tail call i32 @llvm.smax.i32(i32 %i.te, i32 %.19.i.i72918182697)
  br label %bb.cq

bb.cq:                                            ; preds = %LZ4_count.exit.i.i746, %bb.cc
  %.21372.i.i732 = phi i32 [ %.20371.i.i749, %LZ4_count.exit.i.i746 ], [ %.19370.i.i72518142700, %bb.cc ] ; 2 uses
  %.21.i.i733 = phi i32 [ %.20.i.i750, %LZ4_count.exit.i.i746 ], [ %.19.i.i72918182697, %bb.cc ] ; 2 uses
  %i.tg = and i32 %.0340.i.i72618152699, 65535
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %i.rl, i64 %i.th
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !29
  %i.tk = zext i16 %i.tj to i32                   ; 2 uses
  %i.tl = sub i32 %.16339.i.i72718162698, %i.tk   ; 2 uses
  %i.tm = sub i32 %i.bu, %i.tl                    ; 2 uses
  %i.tn = icmp ugt i32 %i.tm, 65535
  %i.to = sub i32 %.0340.i.i72618152699, %i.tk
  %.not442.i.i730 = icmp eq i32 %i.rn, 0
  %or.cond2832 = select i1 %i.tn, i1 true, i1 %.not442.i.i730
  br i1 %or.cond2832, label %LZ4HC_InsertAndGetWiderMatch.exit.i704, label %bb.cc, !llvm.loop !44

LZ4HC_InsertAndGetWiderMatch.exit.i704:           ; preds = %bb.cq, %bb.cb, %.thread1398
  %.22373.i.i706 = phi i32 [ %.18369.i.i699, %.thread1398 ], [ %.18369.i.i699, %bb.cb ], [ %.21372.i.i732, %bb.cq ] ; 4 uses
  %.22.i.i707 = phi i32 [ %.18.i.i701, %.thread1398 ], [ %.18.i.i701, %bb.cb ], [ %.21.i.i733, %bb.cq ] ; 3 uses
  %.not.i714 = icmp sgt i32 %.22.i.i707, 3
  br i1 %.not.i714, label %LZ4HC_FindLongerMatch.exit920, label %LZ4HC_FindLongerMatch.exit920.thread

LZ4HC_FindLongerMatch.exit920:                    ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i704
  %.sroa.2313.0.insert.ext.i.i708 = zext nneg i32 %.22.i.i707 to i64
  %i.tp = add nsw i32 %.22.i.i707, -19
  %i.tq = icmp ult i32 %i.tp, 18
  %or.cond.i720 = and i1 %.not.i.i760, %i.tq
  %.sroa.03.sroa.4.0.insert.shift.i722 = select i1 %or.cond.i720, i64 18, i64 %.sroa.2313.0.insert.ext.i.i708 ; 13 uses
  %.sroa.0162.4.extract.trunc = trunc nuw nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722 to i32 ; 3 uses
  %i.tr = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i722, %spec.store.select
  br i1 %i.tr, label %bb.cr, label %.preheader1709.preheader

.preheader1709.preheader:                         ; preds = %LZ4HC_FindLongerMatch.exit920
  %sext2402 = shl i64 %i.bm, 32                   ; 3 uses
  %i.ts = ashr exact i64 %sext2402, 32            ; 3 uses
  %i.tt = icmp sgt i64 %i.ts, 14
  %i.tu = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.tt, label %LZ4HC_literalsPrice.exit929.thread, label %LZ4HC_literalsPrice.exit929

LZ4HC_FindLongerMatch.exit920.thread:             ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i704
  %i.tv = getelementptr inbounds nuw i8, ptr %.013271995, i64 1
  br label %.loopexit1705, !llvm.loop !86

bb.cr:                                            ; preds = %LZ4HC_FindLongerMatch.exit920
  %i.tw = getelementptr i8, ptr %.013151997, i64 1 ; 4 uses
  %i.tx = udiv i64 %i.bm, 255
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.bm
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = icmp ugt ptr %i.ua, %spec.select
  %or.cond.i437 = select i1 %.not.i, i1 %i.ub, i1 false
  br i1 %or.cond.i437, label %.thread1601, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uc = icmp ugt i64 %i.bm, 14
  br i1 %i.uc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ud = add i64 %i.bm, -15                      ; 2 uses
  store i8 -16, ptr %.013151997, align 1, !tbaa !27
  %i.ue = icmp ugt i64 %i.ud, 254
  br i1 %i.ue, label %.lr.ph1983.preheader, label %._crit_edge1984

.lr.ph1983.preheader:                             ; preds = %bb.ct
  %i.uf = add i64 %i.bk, -270
  %i.ug = sub i64 %i.uf, %i.bl                    ; 2 uses
  %i.uh = udiv i64 %i.ug, 255                     ; 3 uses
  %i.ui = add nuw nsw i64 %i.uh, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.tw, i8 -1, i64 %i.ui, i1 false), !tbaa !27
  %scevgep2181 = getelementptr i8, ptr %.013151997, i64 2
  %scevgep2182 = getelementptr i8, ptr %scevgep2181, i64 %i.uh
  %.neg2404 = mul i64 %i.uh, -255
  %i.uj = add i64 %.neg2404, %i.ug
  br label %._crit_edge1984

._crit_edge1984:                                  ; preds = %.lr.ph1983.preheader, %bb.ct
  %.23.lcssa = phi ptr [ %i.tw, %bb.ct ], [ %scevgep2182, %.lr.ph1983.preheader ] ; 2 uses
  %.0.i444.lcssa = phi i64 [ %i.ud, %bb.ct ], [ %i.uj, %.lr.ph1983.preheader ]
  %i.uk = trunc nuw i64 %.0.i444.lcssa to i8
  %i.ul = getelementptr inbounds nuw i8, ptr %.23.lcssa, i64 1
  store i8 %i.uk, ptr %.23.lcssa, align 1, !tbaa !27
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %.tr.i438 = trunc nuw nsw i64 %i.bm to i8
  %i.um = shl nuw i8 %.tr.i438, 4
  store i8 %i.um, ptr %.013151997, align 1, !tbaa !27
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %._crit_edge1984
  %.19 = phi ptr [ %i.ul, %._crit_edge1984 ], [ %i.tw, %bb.cu ] ; 7 uses
  %.192784 = ptrtoint ptr %.19 to i64             ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.19, i64 %i.bm ; 3 uses
  %i.uo = add i64 %.192784, %i.bk
  %i.up = sub i64 %i.uo, %i.bl
  %i.uq = add nuw i64 %.192784, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.up, i64 %i.uq)
  %i.ur = xor i64 %.192784, -1
  %i.us = add i64 %umax, %i.ur                    ; 2 uses
  %i.ut = lshr i64 %i.us, 3
  %i.uu = add nuw nsw i64 %i.ut, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.us, 24
  %.192783 = ptrtoaddr ptr %.19 to i64
  %i.uv = sub i64 %i.bl, %.192783
  %diff.check = icmp ugt i64 %i.uv, -32
  %or.cond2833 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2833, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.cv
  %n.vec = and i64 %i.uu, 4611686018427387900     ; 3 uses
  %i.uw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ux = getelementptr i8, ptr %.013201996, i64 %i.uw
  %i.uy = getelementptr i8, ptr %.19, i64 %i.uw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.013201996, i64 %i.uz ; 2 uses
  %next.gep2785 = getelementptr i8, ptr %.19, i64 %i.uz ; 2 uses
  %i.va = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load2786 = load <2 x i64>, ptr %i.va, align 1
  %i.vb = getelementptr i8, ptr %next.gep2785, i64 16
  store <2 x i64> %wide.load, ptr %next.gep2785, align 1
  store <2 x i64> %wide.load2786, ptr %i.vb, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vc = icmp eq i64 %index.next, %n.vec
  br i1 %i.vc, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uu, %n.vec
  br i1 %cmp.n, label %LZ4_wildCopy8.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.cv, %middle.block
  %.09.i.ph = phi ptr [ %.013201996, %bb.cv ], [ %i.ux, %middle.block ]
  %.0.i446.ph = phi ptr [ %.19, %bb.cv ], [ %i.uy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi ptr [ %i.vf, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i446 = phi ptr [ %i.ve, %scalar.ph ], [ %.0.i446.ph, %scalar.ph.preheader ] ; 2 uses
  %i.vd = load i64, ptr %.09.i, align 1
  store i64 %i.vd, ptr %.0.i446, align 1
  %i.ve = getelementptr inbounds nuw i8, ptr %.0.i446, i64 8 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.vg = icmp ult ptr %i.ve, %i.un
  br i1 %i.vg, label %scalar.ph, label %LZ4_wildCopy8.exit, !llvm.loop !88

LZ4_wildCopy8.exit:                               ; preds = %scalar.ph, %middle.block
  %i.vh = trunc i32 %.22373.i.i706 to i16
  store i16 %i.vh, ptr %i.un, align 1, !tbaa !25
  %i.vi = getelementptr i8, ptr %i.un, i64 2      ; 4 uses
  %i.vj = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722, -4 ; 2 uses
  %.lhs.trunc = trunc i64 %i.vj to i32
  %i.vk = udiv i32 %.lhs.trunc, 255
  %.zext = zext nneg i32 %i.vk to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 %.zext
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 6
  %i.vn = icmp ugt ptr %i.vm, %spec.select
  %or.cond64.i440 = select i1 %.not.i, i1 %i.vn, i1 false
  br i1 %or.cond64.i440, label %.thread1601, label %bb.cw

bb.cw:                                            ; preds = %LZ4_wildCopy8.exit
  %i.vo = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i722, 18
  br i1 %i.vo, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.vp = load i8, ptr %.013151997, align 1, !tbaa !27
  %i.vq = add i8 %i.vp, 15
  store i8 %i.vq, ptr %.013151997, align 1, !tbaa !27
  %i.vr = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722, -19
  %i.vs = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i722, 528
  br i1 %i.vs, label %.lr.ph1990.preheader, label %._crit_edge1991

.lr.ph1990.preheader:                             ; preds = %bb.cx
  %i.vt = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722, -529 ; 2 uses
  %.lhs.trunc2440 = trunc i64 %i.vt to i32
  %i.vu = udiv i32 %.lhs.trunc2440, 510
  %.zext2441 = zext nneg i32 %i.vu to i64         ; 2 uses
  %i.vv = shl nuw nsw i64 %.zext2441, 1           ; 2 uses
  %i.vw = add nuw nsw i64 %i.vv, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.vi, i8 -1, i64 %i.vw, i1 false), !tbaa !27
  %scevgep2183 = getelementptr i8, ptr %.19, i64 4
  %i.vx = add i64 %i.vv, %i.bk
  %i.vy = sub i64 %i.vx, %i.bl
  %scevgep2184 = getelementptr i8, ptr %scevgep2183, i64 %i.vy
  %.neg2405 = mul nsw i64 %.zext2441, -510
  %i.vz = add nsw i64 %.neg2405, %i.vt
  br label %._crit_edge1991

._crit_edge1991:                                  ; preds = %.lr.ph1990.preheader, %bb.cx
  %.21.lcssa = phi ptr [ %i.vi, %bb.cx ], [ %scevgep2184, %.lr.ph1990.preheader ] ; 3 uses
  %.051.i442.lcssa = phi i64 [ %i.vr, %bb.cx ], [ %i.vz, %.lr.ph1990.preheader ] ; 3 uses
  %i.wa = icmp samesign ugt i64 %.051.i442.lcssa, 254
  br i1 %i.wa, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge1991
  %i.wb = add nsw i64 %.051.i442.lcssa, -255
  %i.wc = getelementptr inbounds nuw i8, ptr %.21.lcssa, i64 1
  store i8 -1, ptr %.21.lcssa, align 1, !tbaa !27
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge1991
  %.22 = phi ptr [ %i.wc, %bb.cy ], [ %.21.lcssa, %._crit_edge1991 ] ; 2 uses
  %.1.i443 = phi i64 [ %i.wb, %bb.cy ], [ %.051.i442.lcssa, %._crit_edge1991 ]
  %i.wd = trunc nuw i64 %.1.i443 to i8
  %i.we = getelementptr inbounds nuw i8, ptr %.22, i64 1
  store i8 %i.wd, ptr %.22, align 1, !tbaa !27
  br label %select.unfold1610

bb.da:                                            ; preds = %bb.cw
  %i.wf = trunc nuw nsw i64 %i.vj to i8
  %i.wg = load i8, ptr %.013151997, align 1, !tbaa !27
  %i.wh = add i8 %i.wg, %i.wf
  store i8 %i.wh, ptr %.013151997, align 1, !tbaa !27
  br label %select.unfold1610

.lr.ph1829:                                       ; preds = %LZ4HC_literalsPrice.exit929.2, %bb.db
  %i.wi = phi i32 [ %i.xr, %bb.db ], [ %i.xq, %LZ4HC_literalsPrice.exit929.2 ]
  %.0.i928.3 = phi i32 [ %i.xx, %bb.db ], [ %i.xq, %LZ4HC_literalsPrice.exit929.2 ]
  store i32 1, ptr %i.be, align 4, !tbaa !89
  store i32 0, ptr %i.bf, align 4, !tbaa !91
  store i32 %i.wi, ptr %i.bg, align 4, !tbaa !92
  store i32 %.0.i928.3, ptr %i.bd, align 4, !tbaa !93
  %i.wj = icmp sgt i32 %i.bn, 14
  %i.wk = add nsw i32 %i.bn, -15
  %i.wl = udiv i32 %i.wk, 255
  %i.wm = add nuw nsw i32 %i.bn, 1
end_hunk_0
begin_hunk_1_@LZ4HC_compress_optimal:bb.a
  %i.bmc = add nsw i32 %.0.i933.peel, %i.blu
  br label %bb.ky

bb.ky:                                            ; preds = %LZ4HC_sequencePrice.exit934.peel, %LZ4HC_sequencePrice.exit.peel
  %.0381.peel = phi i32 [ %i.bmc, %LZ4HC_sequencePrice.exit934.peel ], [ %i.bls, %LZ4HC_sequencePrice.exit.peel ] ; 2 uses
  %.0380.peel = phi i32 [ %i.bjd, %LZ4HC_sequencePrice.exit934.peel ], [ 0, %LZ4HC_sequencePrice.exit.peel ]
  %i.bmd = add nuw nsw i32 %.03681951, 3
  %i.bme = trunc nuw i64 %i.blm to i32            ; 2 uses
  %i.bmf = icmp slt i32 %i.bmd, %i.bme
  br i1 %i.bmf, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.bmg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.blm
  %i.bmh = load i32, ptr %i.bmg, align 4, !tbaa !93
  %i.bmi = sub nsw i32 %i.bmh, %10
  %.not417.peel = icmp sgt i32 %.0381.peel, %i.bmi
  br i1 %.not417.peel, label %.preheader, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %i.bmj = icmp eq i64 %i.bll, %.sroa.0104.4.extract.shift
  %i.bmk = tail call i32 @llvm.smax.i32(i32 %.03681951, i32 %i.bme)
  %.2370.peel = select i1 %i.bmj, i32 %i.bmk, i32 %.03681951
  %i.bml = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.blm ; 4 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 8
  %i.bmn = trunc nuw nsw i64 %i.bll to i32
  store i32 %i.bmn, ptr %i.bmm, align 4, !tbaa !89
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bml, i64 4
  store i32 %.22373.i.i.sink, ptr %i.bmo, align 4, !tbaa !91
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bml, i64 12
  store i32 %.0380.peel, ptr %i.bmp, align 4, !tbaa !92
  store i32 %.0381.peel, ptr %i.bml, align 4, !tbaa !93
  br label %.preheader

.preheader:                                       ; preds = %bb.la, %bb.kz, %.preheader1703
  %.1369.lcssa = phi i32 [ %.03681951, %.preheader1703 ], [ %.2370.peel, %bb.la ], [ %.03681951, %bb.kz ] ; 2 uses
  %i.bmq = zext nneg i32 %.1369.lcssa to i64      ; 4 uses
  %i.bmr = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmq ; 3 uses
  %i.bms = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmq ; 4 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 16
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bms, i64 24
  store i32 1, ptr %i.bmu, align 4, !tbaa !89
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bms, i64 20
  store i32 0, ptr %i.bmv, align 4, !tbaa !91
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bms, i64 28
  store i32 1, ptr %i.bmw, align 4, !tbaa !92
  %i.bmx = load i32, ptr %i.bmr, align 4, !tbaa !93
  %i.bmy = add nsw i32 %i.bmx, 1
  store i32 %i.bmy, ptr %i.bmt, align 4, !tbaa !93
  %i.bmz = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmq ; 4 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 32
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmz, i64 40
  store i32 1, ptr %i.bnb, align 4, !tbaa !89
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmz, i64 36
  store i32 0, ptr %i.bnc, align 4, !tbaa !91
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bmz, i64 44
  store i32 2, ptr %i.bnd, align 4, !tbaa !92
  %i.bne = load i32, ptr %i.bmr, align 4, !tbaa !93
  %i.bnf = add nsw i32 %i.bne, 2
  store i32 %i.bnf, ptr %i.bna, align 4, !tbaa !93
  %i.bng = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmq ; 4 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 48
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bng, i64 56
  store i32 1, ptr %i.bni, align 4, !tbaa !89
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bng, i64 52
  store i32 0, ptr %i.bnj, align 4, !tbaa !91
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bng, i64 60
  store i32 3, ptr %i.bnk, align 4, !tbaa !92
  %i.bnl = load i32, ptr %i.bmr, align 4, !tbaa !93
  %i.bnm = add nsw i32 %i.bnl, 3
  store i32 %i.bnm, ptr %i.bnh, align 4, !tbaa !93
  br label %.loopexit

bb.lb:                                            ; preds = %.lr.ph1948.split, %bb.lk
  %indvars.iv2166 = phi i64 [ 4, %.lr.ph1948.split ], [ %indvars.iv.next2167, %bb.lk ] ; 8 uses
  %i.bnn = add nuw nsw i64 %indvars.iv2166, %indvars.iv2175 ; 3 uses
  br i1 %i.bjp, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  br i1 %i.bjq, label %bb.ld, label %LZ4HC_literalsPrice.exit.i

bb.ld:                                            ; preds = %bb.lc
  %i.bno = load i32, ptr %i.bjt, align 4, !tbaa !93
  br label %LZ4HC_literalsPrice.exit.i

LZ4HC_literalsPrice.exit.i:                       ; preds = %bb.lc, %bb.ld
  %i.bnp = phi i32 [ %i.bno, %bb.ld ], [ 0, %bb.lc ]
  %i.bnq = icmp samesign ugt i64 %indvars.iv2166, 18
  br i1 %i.bnq, label %bb.le, label %LZ4HC_sequencePrice.exit934

bb.le:                                            ; preds = %LZ4HC_literalsPrice.exit.i
  %i.bnr = trunc i64 %indvars.iv2166 to i32
  %i.bns = add i32 %i.bnr, -19
  %i.bnt = udiv i32 %i.bns, 255
  %.reass3088 = add i32 %i.bnt, %invariant.op3087
  br label %LZ4HC_sequencePrice.exit934

LZ4HC_sequencePrice.exit934:                      ; preds = %LZ4HC_literalsPrice.exit.i, %bb.le
  %.0.i933 = phi i32 [ %.reass3088, %bb.le ], [ %i.bjv, %LZ4HC_literalsPrice.exit.i ]
  %i.bnu = add nsw i32 %.0.i933, %i.bnp
  br label %bb.lh

bb.lf:                                            ; preds = %bb.lb
  %i.bnv = icmp samesign ugt i64 %indvars.iv2166, 18
  br i1 %i.bnv, label %bb.lg, label %LZ4HC_sequencePrice.exit

bb.lg:                                            ; preds = %bb.lf
  %i.bnw = trunc i64 %indvars.iv2166 to i32
  %i.bnx = add i32 %i.bnw, -19
  %i.bny = udiv i32 %i.bnx, 255
  %i.bnz = add nuw nsw i32 %i.bny, 4
  br label %LZ4HC_sequencePrice.exit

LZ4HC_sequencePrice.exit:                         ; preds = %bb.lf, %bb.lg
  %.0.i931 = phi i32 [ %i.bnz, %bb.lg ], [ 3, %bb.lf ]
  %i.boa = add nsw i32 %.0.i931, %i.bjk
  br label %bb.lh

bb.lh:                                            ; preds = %LZ4HC_sequencePrice.exit, %LZ4HC_sequencePrice.exit934
  %.0381 = phi i32 [ %i.bnu, %LZ4HC_sequencePrice.exit934 ], [ %i.boa, %LZ4HC_sequencePrice.exit ] ; 2 uses
  %.0380 = phi i32 [ %i.bjd, %LZ4HC_sequencePrice.exit934 ], [ 0, %LZ4HC_sequencePrice.exit ]
  %i.bob = trunc nuw i64 %i.bnn to i32
  %i.boc = icmp slt i32 %i.bju, %i.bob
  br i1 %i.boc, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bod = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bnn
  %i.boe = load i32, ptr %i.bod, align 4, !tbaa !93
  %i.bof = sub nsw i32 %i.boe, %10
  %.not417 = icmp sgt i32 %.0381, %i.bof
  br i1 %.not417, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %i.bog = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bnn ; 4 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 8
  %i.boi = trunc nuw nsw i64 %indvars.iv2166 to i32
  store i32 %i.boi, ptr %i.boh, align 4, !tbaa !89
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bog, i64 4
  store i32 %.22373.i.i.sink, ptr %i.boj, align 4, !tbaa !91
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bog, i64 12
  store i32 %.0380, ptr %i.bok, align 4, !tbaa !92
  store i32 %.0381, ptr %i.bog, align 4, !tbaa !93
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %indvars.iv.next2167 = add nuw nsw i64 %indvars.iv2166, 1 ; 2 uses
  %exitcond2170.not = icmp eq i64 %indvars.iv2166, %i.bjw
  br i1 %exitcond2170.not, label %.preheader.loopexit.peel.begin, label %bb.lb, !llvm.loop !95

bb.ll:                                            ; preds = %bb.km
  %i.bol = add nuw nsw i32 %i.biy, 1
  br label %bb.lm

.loopexit:                                        ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i, %LZ4HC_InsertAndGetWiderMatch.exit.i471, %.preheader, %bb.dg, %LZ4HC_FindLongerMatch.exit687, %bb.dh
  %.4372.ph = phi i32 [ %.03681951, %bb.dg ], [ %.03681951, %bb.dh ], [ %.03681951, %LZ4HC_FindLongerMatch.exit687 ], [ %.1369.lcssa, %.preheader ], [ %.03681951, %LZ4HC_InsertAndGetWiderMatch.exit.i471 ], [ %.03681951, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 3 uses
  %indvars.iv.next2176 = add nuw nsw i64 %indvars.iv2175, 1 ; 2 uses
  %i.bom = zext nneg i32 %.4372.ph to i64
  %i.bon = icmp samesign ult i64 %indvars.iv.next2176, %i.bom
  %indvar.next = add i32 %indvar, 1
  br i1 %i.bon, label %bb.dd, label %.thread1595, !llvm.loop !97

.thread1595:                                      ; preds = %.loopexit, %bb.dd
  %.0368.lcssa.ph = phi i32 [ %.4372.ph, %.loopexit ], [ %.03681951, %bb.dd ] ; 3 uses
  %i.boo = zext nneg i32 %.0368.lcssa.ph to i64
  %i.bop = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.boo ; 2 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 8
  %i.bor = load i32, ptr %i.boq, align 4, !tbaa !89 ; 2 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bop, i64 4
  %i.bot = load i32, ptr %i.bos, align 4, !tbaa !91
  %i.bou = sub nsw i32 %.0368.lcssa.ph, %i.bor
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %.thread1595
  %.6374 = phi i32 [ %.0368.lcssa.ph, %.thread1595 ], [ %i.bol, %bb.ll ] ; 2 uses
  %.1367 = phi i32 [ %i.bou, %.thread1595 ], [ %i.biy, %bb.ll ]
  %.3362 = phi i32 [ %i.bot, %.thread1595 ], [ %.22373.i.i.sink, %bb.ll ]
  %.3357 = phi i32 [ %i.bor, %.thread1595 ], [ %.sroa.0104.4.extract.trunc, %bb.ll ]
  br label %bb.ln

bb.ln:                                            ; preds = %bb.ln, %bb.lm
  %.0377 = phi i32 [ %.1367, %bb.lm ], [ %i.bpc, %bb.ln ] ; 3 uses
  %.0376 = phi i32 [ %.3357, %bb.lm ], [ %i.boy, %bb.ln ]
  %.0375 = phi i32 [ %.3362, %bb.lm ], [ %i.bpa, %bb.ln ]
  %i.bov = sext i32 %.0377 to i64
  %i.bow = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bov ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 8 ; 2 uses
  %i.boy = load i32, ptr %i.box, align 4, !tbaa !89 ; 3 uses
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bow, i64 4 ; 2 uses
  %i.bpa = load i32, ptr %i.boz, align 4, !tbaa !91
  store i32 %.0376, ptr %i.box, align 4, !tbaa !89
  store i32 %.0375, ptr %i.boz, align 4, !tbaa !91
  %i.bpb = icmp sgt i32 %i.boy, %.0377
  %i.bpc = sub nsw i32 %.0377, %i.boy
  br i1 %i.bpb, label %.preheader1704, label %bb.ln

.preheader1704:                                   ; preds = %bb.ln
  %i.bpd = icmp sgt i32 %.6374, 0
  br i1 %i.bpd, label %.lr.ph1976, label %.loopexit1705

.lr.ph1976:                                       ; preds = %.preheader1704, %bb.lz
  %.03641975 = phi i32 [ %.1365, %bb.lz ], [ 0, %.preheader1704 ] ; 3 uses
  %.113161974 = phi ptr [ %.21317, %bb.lz ], [ %.013151997, %.preheader1704 ] ; 11 uses
  %.113211973 = phi ptr [ %.21322, %bb.lz ], [ %.013201996, %.preheader1704 ] ; 7 uses
  %.113281972 = phi ptr [ %.21329, %bb.lz ], [ %.013271995, %.preheader1704 ] ; 5 uses
  %i.bpe = sext i32 %.03641975 to i64
  %i.bpf = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bpe ; 2 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 8
  %i.bph = load i32, ptr %i.bpg, align 4, !tbaa !89 ; 5 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpf, i64 4
  %i.bpj = load i32, ptr %i.bpi, align 4, !tbaa !91 ; 3 uses
  %i.bpk = icmp eq i32 %i.bph, 1
  br i1 %i.bpk, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %.lr.ph1976
  %i.bpl = getelementptr inbounds nuw i8, ptr %.113281972, i64 1
  %i.bpm = add nsw i32 %.03641975, 1
  br label %bb.lz, !llvm.loop !98

bb.lp:                                            ; preds = %.lr.ph1976
  %i.bpn = add nsw i32 %i.bph, %.03641975
  %i.bpo = getelementptr i8, ptr %.113161974, i64 1 ; 4 uses
  %i.bpp = ptrtoint ptr %.113281972 to i64        ; 4 uses
  %i.bpq = ptrtoint ptr %.113211973 to i64        ; 5 uses
  %i.bpr = sub i64 %i.bpp, %i.bpq                 ; 6 uses
  %i.bps = udiv i64 %i.bpr, 255
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpo, i64 %i.bps
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 %i.bpr
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 8
  %i.bpw = icmp ugt ptr %i.bpv, %spec.select
  %or.cond.i = select i1 %.not.i, i1 %i.bpw, i1 false
  br i1 %or.cond.i, label %.thread1601, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.bpx = icmp ugt i64 %i.bpr, 14
  br i1 %i.bpx, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.bpy = add i64 %i.bpr, -15                    ; 2 uses
  store i8 -16, ptr %.113161974, align 1, !tbaa !27
  %i.bpz = icmp ugt i64 %i.bpy, 254
  br i1 %i.bpz, label %.lr.ph1961.preheader, label %._crit_edge1962

.lr.ph1961.preheader:                             ; preds = %bb.lr
  %i.bqa = add i64 %i.bpp, -270
  %i.bqb = sub i64 %i.bqa, %i.bpq                 ; 2 uses
  %i.bqc = udiv i64 %i.bqb, 255                   ; 3 uses
  %i.bqd = add nuw nsw i64 %i.bqc, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bpo, i8 -1, i64 %i.bqd, i1 false), !tbaa !27
  %scevgep = getelementptr i8, ptr %.113161974, i64 2
  %scevgep2178 = getelementptr i8, ptr %scevgep, i64 %i.bqc
  %.neg = mul i64 %i.bqc, -255
  %i.bqe = add i64 %.neg, %i.bqb
  br label %._crit_edge1962

._crit_edge1962:                                  ; preds = %.lr.ph1961.preheader, %bb.lr
  %.17.lcssa = phi ptr [ %i.bpo, %bb.lr ], [ %scevgep2178, %.lr.ph1961.preheader ] ; 2 uses
  %.0.i433.lcssa = phi i64 [ %i.bpy, %bb.lr ], [ %i.bqe, %.lr.ph1961.preheader ]
  %i.bqf = trunc nuw i64 %.0.i433.lcssa to i8
  %i.bqg = getelementptr inbounds nuw i8, ptr %.17.lcssa, i64 1
  store i8 %i.bqf, ptr %.17.lcssa, align 1, !tbaa !27
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  %.tr.i430 = trunc nuw nsw i64 %i.bpr to i8
  %i.bqh = shl nuw i8 %.tr.i430, 4
  store i8 %i.bqh, ptr %.113161974, align 1, !tbaa !27
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %._crit_edge1962
  %.13 = phi ptr [ %i.bqg, %._crit_edge1962 ], [ %i.bpo, %bb.ls ] ; 7 uses
  %.132791 = ptrtoint ptr %.13 to i64             ; 3 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %.13, i64 %i.bpr ; 3 uses
  %i.bqj = add i64 %.132791, %i.bpp
  %i.bqk = sub i64 %i.bqj, %i.bpq
  %i.bql = add nuw i64 %.132791, 8
  %umax2792 = tail call i64 @llvm.umax.i64(i64 %i.bqk, i64 %i.bql)
  %i.bqm = xor i64 %.132791, -1
  %i.bqn = add i64 %umax2792, %i.bqm              ; 2 uses
  %i.bqo = lshr i64 %i.bqn, 3
  %i.bqp = add nuw nsw i64 %i.bqo, 1              ; 2 uses
  %min.iters.check2794 = icmp ult i64 %i.bqn, 24
  %.132789 = ptrtoaddr ptr %.13 to i64
  %i.bqq = sub i64 %i.bpq, %.132789
  %diff.check2790 = icmp ugt i64 %i.bqq, -32
  %or.cond2836 = select i1 %min.iters.check2794, i1 true, i1 %diff.check2790
  br i1 %or.cond2836, label %scalar.ph2793.preheader, label %vector.ph2795

vector.ph2795:                                    ; preds = %bb.lt
  %n.vec2797 = and i64 %i.bqp, 4611686018427387900 ; 3 uses
  %i.bqr = shl i64 %n.vec2797, 3                  ; 2 uses
  %i.bqs = getelementptr i8, ptr %.113211973, i64 %i.bqr
  %i.bqt = getelementptr i8, ptr %.13, i64 %i.bqr
  br label %vector.body2798

vector.body2798:                                  ; preds = %vector.body2798, %vector.ph2795
  %index2799 = phi i64 [ 0, %vector.ph2795 ], [ %index.next2804, %vector.body2798 ] ; 2 uses
  %i.bqu = shl i64 %index2799, 3                  ; 2 uses
  %next.gep2800 = getelementptr i8, ptr %.113211973, i64 %i.bqu ; 2 uses
  %next.gep2801 = getelementptr i8, ptr %.13, i64 %i.bqu ; 2 uses
  %i.bqv = getelementptr i8, ptr %next.gep2800, i64 16
  %wide.load2802 = load <2 x i64>, ptr %next.gep2800, align 1
  %wide.load2803 = load <2 x i64>, ptr %i.bqv, align 1
  %i.bqw = getelementptr i8, ptr %next.gep2801, i64 16
  store <2 x i64> %wide.load2802, ptr %next.gep2801, align 1
  store <2 x i64> %wide.load2803, ptr %i.bqw, align 1
  %index.next2804 = add nuw i64 %index2799, 4     ; 2 uses
  %i.bqx = icmp eq i64 %index.next2804, %n.vec2797
  br i1 %i.bqx, label %middle.block2805, label %vector.body2798, !llvm.loop !99

middle.block2805:                                 ; preds = %vector.body2798
  %cmp.n2806 = icmp eq i64 %i.bqp, %n.vec2797
  br i1 %cmp.n2806, label %LZ4_wildCopy8.exit449, label %scalar.ph2793.preheader

scalar.ph2793.preheader:                          ; preds = %bb.lt, %middle.block2805
  %.09.i447.ph = phi ptr [ %.113211973, %bb.lt ], [ %i.bqs, %middle.block2805 ]
  %.0.i448.ph = phi ptr [ %.13, %bb.lt ], [ %i.bqt, %middle.block2805 ]
  br label %scalar.ph2793

scalar.ph2793:                                    ; preds = %scalar.ph2793.preheader, %scalar.ph2793
  %.09.i447 = phi ptr [ %i.bra, %scalar.ph2793 ], [ %.09.i447.ph, %scalar.ph2793.preheader ] ; 2 uses
  %.0.i448 = phi ptr [ %i.bqz, %scalar.ph2793 ], [ %.0.i448.ph, %scalar.ph2793.preheader ] ; 2 uses
  %i.bqy = load i64, ptr %.09.i447, align 1
  store i64 %i.bqy, ptr %.0.i448, align 1
  %i.bqz = getelementptr inbounds nuw i8, ptr %.0.i448, i64 8 ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %.09.i447, i64 8
  %i.brb = icmp ult ptr %i.bqz, %i.bqi
  br i1 %i.brb, label %scalar.ph2793, label %LZ4_wildCopy8.exit449, !llvm.loop !100

LZ4_wildCopy8.exit449:                            ; preds = %scalar.ph2793, %middle.block2805
  %i.brc = trunc i32 %i.bpj to i16
  store i16 %i.brc, ptr %i.bqi, align 1, !tbaa !25
  %i.brd = getelementptr i8, ptr %i.bqi, i64 2    ; 4 uses
  %i.bre = sext i32 %i.bph to i64                 ; 4 uses
  %i.brf = add nsw i64 %i.bre, -4                 ; 3 uses
  %i.brg = udiv i64 %i.brf, 255
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brd, i64 %i.brg
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 6
  %i.brj = icmp ugt ptr %i.bri, %spec.select
  %or.cond64.i = select i1 %.not.i, i1 %i.brj, i1 false
  br i1 %or.cond64.i, label %.thread1601, label %bb.lu

bb.lu:                                            ; preds = %LZ4_wildCopy8.exit449
  %i.brk = icmp ugt i64 %i.brf, 14
  br i1 %i.brk, label %bb.lv, label %bb.ly

bb.lv:                                            ; preds = %bb.lu
  %i.brl = load i8, ptr %.113161974, align 1, !tbaa !27
  %i.brm = add i8 %i.brl, 15
  store i8 %i.brm, ptr %.113161974, align 1, !tbaa !27
  %i.brn = add nsw i64 %i.bre, -19                ; 2 uses
  %i.bro = icmp ugt i64 %i.brn, 509
  br i1 %i.bro, label %.lr.ph1968.preheader, label %._crit_edge1969

.lr.ph1968.preheader:                             ; preds = %bb.lv
  %i.brp = add nsw i64 %i.bre, -529               ; 2 uses
  %i.brq = udiv i64 %i.brp, 510                   ; 2 uses
  %i.brr = shl nuw nsw i64 %i.brq, 1              ; 2 uses
  %i.brs = add nuw nsw i64 %i.brr, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.brd, i8 -1, i64 %i.brs, i1 false), !tbaa !27
  %scevgep2179 = getelementptr i8, ptr %.13, i64 4
  %i.brt = add i64 %i.brr, %i.bpp
  %i.bru = sub i64 %i.brt, %i.bpq
  %scevgep2180 = getelementptr i8, ptr %scevgep2179, i64 %i.bru
  %.neg2403 = mul i64 %i.brq, -510
  %i.brv = add i64 %.neg2403, %i.brp
  br label %._crit_edge1969

._crit_edge1969:                                  ; preds = %.lr.ph1968.preheader, %bb.lv
  %.15.lcssa = phi ptr [ %i.brd, %bb.lv ], [ %scevgep2180, %.lr.ph1968.preheader ] ; 3 uses
  %.051.i431.lcssa = phi i64 [ %i.brn, %bb.lv ], [ %i.brv, %.lr.ph1968.preheader ] ; 3 uses
  %i.brw = icmp samesign ugt i64 %.051.i431.lcssa, 254
  br i1 %i.brw, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %._crit_edge1969
  %i.brx = add nsw i64 %.051.i431.lcssa, -255
  %i.bry = getelementptr inbounds nuw i8, ptr %.15.lcssa, i64 1
  store i8 -1, ptr %.15.lcssa, align 1, !tbaa !27
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %._crit_edge1969
  %.16 = phi ptr [ %i.bry, %bb.lw ], [ %.15.lcssa, %._crit_edge1969 ] ; 2 uses
  %.1.i432 = phi i64 [ %i.brx, %bb.lw ], [ %.051.i431.lcssa, %._crit_edge1969 ]
  %i.brz = trunc nuw i64 %.1.i432 to i8
  %i.bsa = getelementptr inbounds nuw i8, ptr %.16, i64 1
  store i8 %i.brz, ptr %.16, align 1, !tbaa !27
  br label %select.unfold1600

bb.ly:                                            ; preds = %bb.lu
  %i.bsb = trunc nuw nsw i64 %i.brf to i8
  %i.bsc = load i8, ptr %.113161974, align 1, !tbaa !27
  %i.bsd = add i8 %i.bsc, %i.bsb
  store i8 %i.bsd, ptr %.113161974, align 1, !tbaa !27
  br label %select.unfold1600

select.unfold1600:                                ; preds = %bb.ly, %bb.lx
  %.14 = phi ptr [ %i.bsa, %bb.lx ], [ %i.brd, %bb.ly ]
  %i.bse = getelementptr inbounds i8, ptr %.113281972, i64 %i.bre ; 2 uses
  br label %bb.lz

bb.lz:                                            ; preds = %select.unfold1600, %bb.lo
  %.21329 = phi ptr [ %i.bpl, %bb.lo ], [ %i.bse, %select.unfold1600 ] ; 2 uses
  %.21322 = phi ptr [ %.113211973, %bb.lo ], [ %i.bse, %select.unfold1600 ] ; 2 uses
  %.21317 = phi ptr [ %.113161974, %bb.lo ], [ %.14, %select.unfold1600 ] ; 2 uses
  %.1365 = phi i32 [ %i.bpm, %bb.lo ], [ %i.bpn, %select.unfold1600 ] ; 2 uses
  %i.bsf = icmp slt i32 %.1365, %.6374
  br i1 %i.bsf, label %.lr.ph1976, label %.loopexit1705

select.unfold1610:                                ; preds = %bb.da, %bb.cz
  %.20 = phi ptr [ %i.we, %bb.cz ], [ %i.vi, %bb.da ]
  %i.bsg = getelementptr inbounds nuw i8, ptr %.013271995, i64 %.sroa.03.sroa.4.0.insert.shift.i722 ; 2 uses
  br label %.loopexit1705

.loopexit1705:                                    ; preds = %bb.lz, %.preheader1704, %select.unfold1610, %LZ4HC_FindLongerMatch.exit920.thread
  %.31330 = phi ptr [ %i.tv, %LZ4HC_FindLongerMatch.exit920.thread ], [ %i.bsg, %select.unfold1610 ], [ %.013271995, %.preheader1704 ], [ %.21329, %bb.lz ] ; 2 uses
  %.31323 = phi ptr [ %.013201996, %LZ4HC_FindLongerMatch.exit920.thread ], [ %i.bsg, %select.unfold1610 ], [ %.013201996, %.preheader1704 ], [ %.21322, %bb.lz ] ; 2 uses
  %.3 = phi ptr [ %.013151997, %LZ4HC_FindLongerMatch.exit920.thread ], [ %.20, %select.unfold1610 ], [ %.013151997, %.preheader1704 ], [ %.21317, %bb.lz ] ; 2 uses
  %.not = icmp ugt ptr %.31330, %i.k
  br i1 %.not, label %.loopexit1710, label %bb.c

.loopexit1710:                                    ; preds = %.loopexit1705, %bb.b, %LZ4HC_encodeSequence.exit
  %.41324 = phi ptr [ %i.bxb, %LZ4HC_encodeSequence.exit ], [ %1, %bb.b ], [ %.31323, %.loopexit1705 ] ; 3 uses
  %.41318 = phi ptr [ %.12, %LZ4HC_encodeSequence.exit ], [ %2, %bb.b ], [ %.3, %.loopexit1705 ] ; 3 uses
  %i.bsh = ptrtoint ptr %i.j to i64
  %i.bsi = ptrtoint ptr %.41324 to i64
  %i.bsj = sub i64 %i.bsh, %i.bsi                 ; 3 uses
  %i.bsk = add i64 %i.bsj, 240
  %i.bsl = udiv i64 %i.bsk, 255
  %spec.select426.idx = select i1 %i.p, i64 5, i64 0
  %spec.select426 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select426.idx ; 2 uses
  %.not421 = icmp ne i32 %7, 0
  %i.bsm = getelementptr i8, ptr %.41318, i64 %i.bsl
  %i.bsn = getelementptr i8, ptr %i.bsm, i64 1
  %i.bso = getelementptr i8, ptr %i.bsn, i64 %i.bsj
  %i.bsp = icmp ugt ptr %i.bso, %spec.select426
  %or.cond1686 = select i1 %.not421, i1 %i.bsp, i1 false
  br i1 %or.cond1686, label %bb.ma, label %bb.mb

.thread1640:                                      ; preds = %bb.mg, %bb.mf
  %i.bsq = ptrtoint ptr %i.j to i64
  %i.bsr = sub i64 %i.bsq, %i.buc                 ; 3 uses
  %i.bss = add i64 %i.bsr, 240
  %i.bst = udiv i64 %i.bss, 255
  %i.bsu = getelementptr i8, ptr %.4.ph, i64 %i.bst
  %i.bsv = getelementptr i8, ptr %i.bsu, i64 1
  %i.bsw = getelementptr i8, ptr %i.bsv, i64 %i.bsr
  %i.bsx = icmp ugt ptr %i.bsw, %i.o
  br i1 %i.bsx, label %.thread1649, label %bb.mb

bb.ma:                                            ; preds = %.loopexit1710
  %i.bsy = icmp eq i32 %7, 1
  br i1 %i.bsy, label %bb.mp, label %.thread1649

.thread1649:                                      ; preds = %.thread1640, %bb.ma
  %spec.select426163916451656 = phi ptr [ %spec.select426, %bb.ma ], [ %i.o, %.thread1640 ]
  %.41318163716461655 = phi ptr [ %.41318, %bb.ma ], [ %.4.ph, %.thread1640 ] ; 2 uses
  %.41324163516471654 = phi ptr [ %.41324, %bb.ma ], [ %.31323.ph, %.thread1640 ]
  %i.bsz = ptrtoint ptr %spec.select426163916451656 to i64
  %i.bta = ptrtoint ptr %.41318163716461655 to i64
  %i.btb = xor i64 %i.bta, -1
  %i.btc = add i64 %i.btb, %i.bsz                 ; 2 uses
  %i.btd = add i64 %i.btc, 241
  %i.bte = lshr i64 %i.btd, 8
  %i.btf = sub i64 %i.btc, %i.bte
  br label %bb.mb

bb.mb:                                            ; preds = %.thread1640, %.thread1649, %.loopexit1710
  %.413181638 = phi ptr [ %.41318163716461655, %.thread1649 ], [ %.4.ph, %.thread1640 ], [ %.41318, %.loopexit1710 ] ; 6 uses
  %.413241636 = phi ptr [ %.41324163516471654, %.thread1649 ], [ %.31323.ph, %.thread1640 ], [ %.41324, %.loopexit1710 ] ; 2 uses
  %.0353 = phi i64 [ %i.btf, %.thread1649 ], [ %i.bsr, %.thread1640 ], [ %i.bsj, %.loopexit1710 ] ; 7 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %.413241636, i64 %.0353
  %i.bth = icmp ugt i64 %.0353, 14
  %.513192016 = getelementptr i8, ptr %.413181638, i64 1 ; 3 uses
  br i1 %i.bth, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bti = add i64 %.0353, -15                    ; 2 uses
  store i8 -16, ptr %.413181638, align 1, !tbaa !27
  %i.btj = icmp ugt i64 %i.bti, 254
  br i1 %i.btj, label %.lr.ph2020.preheader, label %._crit_edge2021

.lr.ph2020.preheader:                             ; preds = %bb.mc
  %i.btk = add i64 %.0353, -270                   ; 2 uses
  %i.btl = udiv i64 %i.btk, 255                   ; 3 uses
  %i.btm = add nuw nsw i64 %i.btl, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.513192016, i8 -1, i64 %i.btm, i1 false), !tbaa !27
  %scevgep2187 = getelementptr i8, ptr %.413181638, i64 %i.btm
  %.neg2408 = mul i64 %i.btl, -255
  %i.btn = add i64 %.neg2408, %i.btk
  %i.bto = getelementptr i8, ptr %.413181638, i64 %i.btl
  %scevgep2188 = getelementptr i8, ptr %i.bto, i64 2
  br label %._crit_edge2021

._crit_edge2021:                                  ; preds = %.lr.ph2020.preheader, %bb.mc
  %.413181638.pn.lcssa = phi ptr [ %.413181638, %bb.mc ], [ %scevgep2187, %.lr.ph2020.preheader ]
  %.0346.lcssa = phi i64 [ %i.bti, %bb.mc ], [ %i.btn, %.lr.ph2020.preheader ]
  %.51319.lcssa = phi ptr [ %.513192016, %bb.mc ], [ %scevgep2188, %.lr.ph2020.preheader ]
  %i.btp = trunc nuw i64 %.0346.lcssa to i8
  %i.btq = getelementptr inbounds nuw i8, ptr %.413181638.pn.lcssa, i64 2
  store i8 %i.btp, ptr %.51319.lcssa, align 1, !tbaa !27
  br label %bb.me

bb.md:                                            ; preds = %bb.mb
  %.0353.tr = trunc nuw nsw i64 %.0353 to i8
  %i.btr = shl nuw i8 %.0353.tr, 4
  store i8 %i.btr, ptr %.413181638, align 1, !tbaa !27
  br label %bb.me

bb.me:                                            ; preds = %._crit_edge2021, %bb.md
  %.6 = phi ptr [ %i.btq, %._crit_edge2021 ], [ %.513192016, %bb.md ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.6, ptr align 1 %.413241636, i64 %.0353, i1 false)
  %i.bts = getelementptr inbounds nuw i8, ptr %.6, i64 %.0353
  %i.btt = ptrtoint ptr %i.btg to i64
  %i.btu = ptrtoint ptr %1 to i64
  %i.btv = sub i64 %i.btt, %i.btu
  %i.btw = trunc i64 %i.btv to i32
  store i32 %i.btw, ptr %3, align 4, !tbaa !3
  %i.btx = ptrtoint ptr %i.bts to i64
  %i.bty = ptrtoint ptr %2 to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = trunc i64 %i.btz to i32
  br label %bb.mp

.thread1601:                                      ; preds = %LZ4_wildCopy8.exit, %bb.cr, %LZ4_wildCopy8.exit449, %bb.lp
  %.31330.ph = phi ptr [ %.113281972, %LZ4_wildCopy8.exit449 ], [ %.113281972, %bb.lp ], [ %.013271995, %bb.cr ], [ %.013271995, %LZ4_wildCopy8.exit ] ; 2 uses
  %.31323.ph = phi ptr [ %.113211973, %LZ4_wildCopy8.exit449 ], [ %.113211973, %bb.lp ], [ %.013201996, %bb.cr ], [ %.013201996, %LZ4_wildCopy8.exit ] ; 6 uses
  %.5352.ph = phi i32 [ %i.bpj, %LZ4_wildCopy8.exit449 ], [ %i.bpj, %bb.lp ], [ %.22373.i.i706, %bb.cr ], [ %.22373.i.i706, %LZ4_wildCopy8.exit ]
  %.5.ph = phi i32 [ %i.bph, %LZ4_wildCopy8.exit449 ], [ %i.bph, %bb.lp ], [ %.sroa.0162.4.extract.trunc, %bb.cr ], [ %.sroa.0162.4.extract.trunc, %LZ4_wildCopy8.exit ]
  %.4.ph = phi ptr [ %.113161974, %LZ4_wildCopy8.exit449 ], [ %.113161974, %bb.lp ], [ %.013151997, %bb.cr ], [ %.013151997, %LZ4_wildCopy8.exit ] ; 12 uses
  br i1 %i.p, label %bb.mf, label %bb.mp

bb.mf:                                            ; preds = %.thread1601
  %i.bub = ptrtoint ptr %.31330.ph to i64         ; 4 uses
  %i.buc = ptrtoint ptr %.31323.ph to i64         ; 6 uses
  %i.bud = sub i64 %i.bub, %i.buc                 ; 6 uses
  %i.bue = add i64 %i.bud, 240
  %i.buf = udiv i64 %i.bue, 255
  %i.bug = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.buh = getelementptr i8, ptr %.4.ph, i64 %i.buf
  %i.bui = getelementptr i8, ptr %i.buh, i64 1
  %i.buj = getelementptr i8, ptr %i.bui, i64 %i.bud ; 3 uses
  %.not420 = icmp ugt ptr %i.buj, %i.bug
  br i1 %.not420, label %.thread1640, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.buk = ptrtoint ptr %i.bug to i64
  %i.bul = ptrtoint ptr %i.buj to i64
  %i.bum = sub i64 %i.buk, %i.bul
  %i.bun = mul i64 %i.bum, 255
  %i.buo = add i64 %i.bun, 18
  %11 = sext i32 %.5.ph to i64
  %spec.select4291691 = tail call i64 @llvm.umin.i64(i64 %i.buo, i64 %11)
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buj, i64 2
  %i.buq = ptrtoint ptr %i.o to i64
  %i.bur = ptrtoint ptr %i.bup to i64
  %sext = shl i64 %spec.select4291691, 32
  %i.bus = ashr exact i64 %sext, 32               ; 5 uses
  %i.but = add i64 %i.bus, %i.buq
  %i.buu = sub i64 %i.bur, %i.but
  %i.buv = icmp slt i64 %i.buu, -12
  br i1 %i.buv, label %bb.mh, label %.thread1640

bb.mh:                                            ; preds = %bb.mg
  %i.buw = getelementptr i8, ptr %.4.ph, i64 1    ; 3 uses
  %i.bux = icmp ugt i64 %i.bud, 14
  br i1 %i.bux, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.buy = add i64 %i.bud, -15                    ; 2 uses
  store i8 -16, ptr %.4.ph, align 1, !tbaa !27
  %i.buz = icmp ugt i64 %i.buy, 254
  br i1 %i.buz, label %.lr.ph2005.preheader, label %._crit_edge2006

.lr.ph2005.preheader:                             ; preds = %bb.mi
  %i.bva = add i64 %i.bub, -270
  %i.bvb = sub i64 %i.bva, %i.buc                 ; 2 uses
  %i.bvc = udiv i64 %i.bvb, 255                   ; 3 uses
  %i.bvd = add nuw nsw i64 %i.bvc, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.buw, i8 -1, i64 %i.bvd, i1 false), !tbaa !27
  %i.bve = getelementptr i8, ptr %.4.ph, i64 %i.bvc
  %scevgep2185 = getelementptr i8, ptr %i.bve, i64 2
  %.neg2406 = mul i64 %i.bvc, -255
  %i.bvf = add i64 %.neg2406, %i.bvb
  br label %._crit_edge2006

._crit_edge2006:                                  ; preds = %.lr.ph2005.preheader, %bb.mi
  %.11.lcssa = phi ptr [ %i.buw, %bb.mi ], [ %scevgep2185, %.lr.ph2005.preheader ] ; 2 uses
  %.0.i.lcssa = phi i64 [ %i.buy, %bb.mi ], [ %i.bvf, %.lr.ph2005.preheader ]
  %i.bvg = trunc nuw i64 %.0.i.lcssa to i8
  %i.bvh = getelementptr inbounds nuw i8, ptr %.11.lcssa, i64 1
  store i8 %i.bvg, ptr %.11.lcssa, align 1, !tbaa !27
  br label %bb.mk

bb.mj:                                            ; preds = %bb.mh
  %.tr.i = trunc nuw nsw i64 %i.bud to i8
  %i.bvi = shl nuw i8 %.tr.i, 4
  store i8 %i.bvi, ptr %.4.ph, align 1, !tbaa !27
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %._crit_edge2006
  %.8 = phi ptr [ %i.bvh, %._crit_edge2006 ], [ %i.buw, %bb.mj ] ; 7 uses
  %.82812 = ptrtoint ptr %.8 to i64               ; 3 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %.8, i64 %i.bud ; 3 uses
  %i.bvk = add i64 %.82812, %i.bub
  %i.bvl = sub i64 %i.bvk, %i.buc
  %i.bvm = add nuw i64 %.82812, 8
  %umax2813 = tail call i64 @llvm.umax.i64(i64 %i.bvl, i64 %i.bvm)
  %i.bvn = xor i64 %.82812, -1
  %i.bvo = add i64 %umax2813, %i.bvn              ; 2 uses
  %i.bvp = lshr i64 %i.bvo, 3
  %i.bvq = add nuw nsw i64 %i.bvp, 1              ; 2 uses
  %min.iters.check2815 = icmp ult i64 %i.bvo, 72
  %.82810 = ptrtoaddr ptr %.8 to i64
  %i.bvr = sub i64 %i.buc, %.82810
  %diff.check2811 = icmp ugt i64 %i.bvr, -32
  %or.cond2837 = or i1 %min.iters.check2815, %diff.check2811
  br i1 %or.cond2837, label %scalar.ph2814.preheader, label %vector.ph2816

vector.ph2816:                                    ; preds = %bb.mk
  %n.vec2818 = and i64 %i.bvq, 4611686018427387900 ; 3 uses
  %i.bvs = shl i64 %n.vec2818, 3                  ; 2 uses
  %i.bvt = getelementptr i8, ptr %.31323.ph, i64 %i.bvs
  %i.bvu = getelementptr i8, ptr %.8, i64 %i.bvs
  br label %vector.body2819

vector.body2819:                                  ; preds = %vector.body2819, %vector.ph2816
  %index2820 = phi i64 [ 0, %vector.ph2816 ], [ %index.next2825, %vector.body2819 ] ; 2 uses
  %i.bvv = shl i64 %index2820, 3                  ; 2 uses
  %next.gep2821 = getelementptr i8, ptr %.31323.ph, i64 %i.bvv ; 2 uses
  %next.gep2822 = getelementptr i8, ptr %.8, i64 %i.bvv ; 2 uses
  %i.bvw = getelementptr i8, ptr %next.gep2821, i64 16
  %wide.load2823 = load <2 x i64>, ptr %next.gep2821, align 1
  %wide.load2824 = load <2 x i64>, ptr %i.bvw, align 1
  %i.bvx = getelementptr i8, ptr %next.gep2822, i64 16
  store <2 x i64> %wide.load2823, ptr %next.gep2822, align 1
  store <2 x i64> %wide.load2824, ptr %i.bvx, align 1
  %index.next2825 = add nuw i64 %index2820, 4     ; 2 uses
  %i.bvy = icmp eq i64 %index.next2825, %n.vec2818
  br i1 %i.bvy, label %middle.block2826, label %vector.body2819, !llvm.loop !101

middle.block2826:                                 ; preds = %vector.body2819
  %cmp.n2827 = icmp eq i64 %i.bvq, %n.vec2818
  br i1 %cmp.n2827, label %LZ4_wildCopy8.exit452, label %scalar.ph2814.preheader

scalar.ph2814.preheader:                          ; preds = %bb.mk, %middle.block2826
  %.09.i450.ph = phi ptr [ %.31323.ph, %bb.mk ], [ %i.bvt, %middle.block2826 ]
  %.0.i451.ph = phi ptr [ %.8, %bb.mk ], [ %i.bvu, %middle.block2826 ]
  br label %scalar.ph2814

scalar.ph2814:                                    ; preds = %scalar.ph2814.preheader, %scalar.ph2814
  %.09.i450 = phi ptr [ %i.bwb, %scalar.ph2814 ], [ %.09.i450.ph, %scalar.ph2814.preheader ] ; 2 uses
  %.0.i451 = phi ptr [ %i.bwa, %scalar.ph2814 ], [ %.0.i451.ph, %scalar.ph2814.preheader ] ; 2 uses
  %i.bvz = load i64, ptr %.09.i450, align 1
  store i64 %i.bvz, ptr %.0.i451, align 1
  %i.bwa = getelementptr inbounds nuw i8, ptr %.0.i451, i64 8 ; 2 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %.09.i450, i64 8
  %i.bwc = icmp ult ptr %i.bwa, %i.bvj
  br i1 %i.bwc, label %scalar.ph2814, label %LZ4_wildCopy8.exit452, !llvm.loop !102

LZ4_wildCopy8.exit452:                            ; preds = %scalar.ph2814, %middle.block2826
  %i.bwd = trunc i32 %.5352.ph to i16
  store i16 %i.bwd, ptr %i.bvj, align 1, !tbaa !25
  %i.bwe = getelementptr i8, ptr %i.bvj, i64 2    ; 3 uses
  %i.bwf = add nsw i64 %i.bus, -4                 ; 2 uses
  %i.bwg = icmp ugt i64 %i.bwf, 14
  br i1 %i.bwg, label %bb.ml, label %bb.mo

bb.ml:                                            ; preds = %LZ4_wildCopy8.exit452
  %i.bwh = load i8, ptr %.4.ph, align 1, !tbaa !27
  %i.bwi = add i8 %i.bwh, 15
  store i8 %i.bwi, ptr %.4.ph, align 1, !tbaa !27
  %i.bwj = add nsw i64 %i.bus, -19                ; 2 uses
  %i.bwk = icmp ugt i64 %i.bwj, 509
  br i1 %i.bwk, label %.lr.ph2012.preheader, label %._crit_edge2013

.lr.ph2012.preheader:                             ; preds = %bb.ml
  %i.bwl = add nsw i64 %i.bus, -529               ; 2 uses
  %i.bwm = udiv i64 %i.bwl, 510                   ; 2 uses
  %i.bwn = shl nuw nsw i64 %i.bwm, 1              ; 2 uses
  %i.bwo = add nuw nsw i64 %i.bwn, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bwe, i8 -1, i64 %i.bwo, i1 false), !tbaa !27
  %i.bwp = add i64 %i.bwn, %i.bub
  %i.bwq = add i64 %i.bwp, 4
  %i.bwr = sub i64 %i.bwq, %i.buc
  %scevgep2186 = getelementptr i8, ptr %.8, i64 %i.bwr
  %.neg2407 = mul i64 %i.bwm, -510
  %i.bws = add i64 %.neg2407, %i.bwl
  br label %._crit_edge2013

._crit_edge2013:                                  ; preds = %.lr.ph2012.preheader, %bb.ml
  %.9.lcssa = phi ptr [ %i.bwe, %bb.ml ], [ %scevgep2186, %.lr.ph2012.preheader ] ; 3 uses
  %.051.i.lcssa = phi i64 [ %i.bwj, %bb.ml ], [ %i.bws, %.lr.ph2012.preheader ] ; 3 uses
  %i.bwt = icmp samesign ugt i64 %.051.i.lcssa, 254
  br i1 %i.bwt, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %._crit_edge2013
  %i.bwu = add nsw i64 %.051.i.lcssa, -255
  %i.bwv = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 1
  store i8 -1, ptr %.9.lcssa, align 1, !tbaa !27
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %._crit_edge2013
  %.10 = phi ptr [ %i.bwv, %bb.mm ], [ %.9.lcssa, %._crit_edge2013 ] ; 2 uses
  %.1.i = phi i64 [ %i.bwu, %bb.mm ], [ %.051.i.lcssa, %._crit_edge2013 ]
  %i.bww = trunc nuw i64 %.1.i to i8
  %i.bwx = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.bww, ptr %.10, align 1, !tbaa !27
  br label %LZ4HC_encodeSequence.exit

bb.mo:                                            ; preds = %LZ4_wildCopy8.exit452
  %i.bwy = trunc nuw nsw i64 %i.bwf to i8
  %i.bwz = load i8, ptr %.4.ph, align 1, !tbaa !27
  %i.bxa = add i8 %i.bwz, %i.bwy
  store i8 %i.bxa, ptr %.4.ph, align 1, !tbaa !27
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.mn, %bb.mo
  %.12 = phi ptr [ %i.bwx, %bb.mn ], [ %i.bwe, %bb.mo ]
  %i.bxb = getelementptr inbounds i8, ptr %.31330.ph, i64 %i.bus
  br label %.loopexit1710

bb.mp:                                            ; preds = %bb.me, %.thread1601, %bb.ma
  %.1 = phi i32 [ 0, %bb.ma ], [ %i.bua, %bb.me ], [ 0, %.thread1601 ]
  tail call void @free(ptr noundef nonnull %i.g) #18
  br label %.thread1663

.thread1663:                                      ; preds = %bb.a, %bb.mp
  %.0 = phi i32 [ 0, %bb.a ], [ %.1, %bb.mp ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i32 } @LZ4MID_searchExtDict(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 262144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 262152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 262168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = add i64 %i.g, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 65536
  %.val105 = load i64, ptr %0, align 1            ; 6 uses
  %i.m = mul i64 %.val105, -3523014627193167104
  %i.n = lshr i64 %i.m, 50
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = trunc i64 %i.k to i32                    ; 2 uses
end_hunk_1
