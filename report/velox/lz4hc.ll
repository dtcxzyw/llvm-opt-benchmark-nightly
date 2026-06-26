inline.NumInlined: 720
inline.NumDeleted: 28
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
  %.sroa.03.sroa.4.0.insert.shift.i722 = select i1 %or.cond.i720, i64 18, i64 %.sroa.2313.0.insert.ext.i.i708 ; 15 uses
  %.sroa.0162.4.extract.trunc = trunc nuw nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722 to i32
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
  %i.uv = sub i64 %.192783, %i.bl
  %diff.check = icmp ult i64 %i.uv, 32
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
  %i.bmd = add nuw nsw i32 %i.bll, 3
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
  %i.bmj = icmp eq i64 %i.blk, %.sroa.0104.4.extract.shift
  %i.bmk = tail call i32 @llvm.smax.i32(i32 %i.bll, i32 %i.bme)
  %.2370.peel = select i1 %i.bmj, i32 %i.bmk, i32 %i.bll
  %i.bml = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.blm ; 4 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 8
  %i.bmn = trunc nuw nsw i64 %i.blk to i32
  store i32 %i.bmn, ptr %i.bmm, align 4, !tbaa !89
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bml, i64 4
  store i32 %.22373.i.i.sink, ptr %i.bmo, align 4, !tbaa !91
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bml, i64 12
  store i32 %.0380.peel, ptr %i.bmp, align 4, !tbaa !92
  store i32 %.0381.peel, ptr %i.bml, align 4, !tbaa !93
  br label %.preheader

.preheader:                                       ; preds = %bb.la, %bb.kz, %.preheader1703
  %.1369.lcssa = phi i32 [ %.03681951, %.preheader1703 ], [ %.2370.peel, %bb.la ], [ %i.bll, %bb.kz ] ; 2 uses
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
  %indvars.iv2166 = phi i64 [ 4, %.lr.ph1948.split ], [ %indvars.iv.next2167, %bb.lk ] ; 9 uses
  %.13691947 = phi i32 [ %.03681951, %.lr.ph1948.split ], [ %.3371, %bb.lk ] ; 4 uses
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
  %.0.i933 = phi i32 [ %.reass3088, %bb.le ], [ %i.bju, %LZ4HC_literalsPrice.exit.i ]
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
  %i.bob = add nuw nsw i32 %.13691947, 3
  %i.boc = trunc nuw i64 %i.bnn to i32            ; 2 uses
  %i.bod = icmp slt i32 %i.bob, %i.boc
  br i1 %i.bod, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.boe = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bnn
  %i.bof = load i32, ptr %i.boe, align 4, !tbaa !93
  %i.bog = sub nsw i32 %i.bof, %10
  %.not417 = icmp sgt i32 %.0381, %i.bog
  br i1 %.not417, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %i.boh = icmp eq i64 %indvars.iv2166, %.sroa.0104.4.extract.shift
  %i.boi = tail call i32 @llvm.smax.i32(i32 %.13691947, i32 %i.boc)
  %.2370 = select i1 %i.boh, i32 %i.boi, i32 %.13691947
  %i.boj = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bnn ; 4 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boj, i64 8
  %i.bol = trunc nuw nsw i64 %indvars.iv2166 to i32
  store i32 %i.bol, ptr %i.bok, align 4, !tbaa !89
  %i.bom = getelementptr inbounds nuw i8, ptr %i.boj, i64 4
  store i32 %.22373.i.i.sink, ptr %i.bom, align 4, !tbaa !91
  %i.bon = getelementptr inbounds nuw i8, ptr %i.boj, i64 12
  store i32 %.0380, ptr %i.bon, align 4, !tbaa !92
  store i32 %.0381, ptr %i.boj, align 4, !tbaa !93
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %.3371 = phi i32 [ %.2370, %bb.lj ], [ %.13691947, %bb.li ] ; 2 uses
  %indvars.iv.next2167 = add nuw nsw i64 %indvars.iv2166, 1 ; 2 uses
  %exitcond2170.not = icmp eq i64 %indvars.iv2166, %i.bjv
  br i1 %exitcond2170.not, label %.preheader.loopexit.peel.begin, label %bb.lb, !llvm.loop !95

bb.ll:                                            ; preds = %bb.km
  %i.boo = add nuw nsw i32 %i.biy, 1
  br label %bb.lm

.loopexit:                                        ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i, %LZ4HC_InsertAndGetWiderMatch.exit.i471, %.preheader, %bb.dg, %LZ4HC_FindLongerMatch.exit687, %bb.dh
  %.4372.ph = phi i32 [ %.03681951, %bb.dg ], [ %.03681951, %bb.dh ], [ %.03681951, %LZ4HC_FindLongerMatch.exit687 ], [ %.1369.lcssa, %.preheader ], [ %.03681951, %LZ4HC_InsertAndGetWiderMatch.exit.i471 ], [ %.03681951, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 3 uses
  %indvars.iv.next2176 = add nuw nsw i64 %indvars.iv2175, 1 ; 2 uses
  %i.bop = zext nneg i32 %.4372.ph to i64
  %i.boq = icmp samesign ult i64 %indvars.iv.next2176, %i.bop
  %indvar.next = add i32 %indvar, 1
  br i1 %i.boq, label %bb.dd, label %.thread1595, !llvm.loop !97

.thread1595:                                      ; preds = %.loopexit, %bb.dd
  %.0368.lcssa.ph = phi i32 [ %.4372.ph, %.loopexit ], [ %.03681951, %bb.dd ] ; 3 uses
  %i.bor = zext nneg i32 %.0368.lcssa.ph to i64
  %i.bos = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bor ; 2 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bos, i64 8
  %i.bou = load i32, ptr %i.bot, align 4, !tbaa !89 ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bos, i64 4
  %i.bow = load i32, ptr %i.bov, align 4, !tbaa !91
  %i.box = sub nsw i32 %.0368.lcssa.ph, %i.bou
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %.thread1595
  %.6374 = phi i32 [ %.0368.lcssa.ph, %.thread1595 ], [ %i.boo, %bb.ll ] ; 2 uses
  %.1367 = phi i32 [ %i.box, %.thread1595 ], [ %i.biy, %bb.ll ]
  %.3362 = phi i32 [ %i.bow, %.thread1595 ], [ %.22373.i.i.sink, %bb.ll ]
  %.3357 = phi i32 [ %i.bou, %.thread1595 ], [ %.sroa.0104.4.extract.trunc, %bb.ll ]
  br label %bb.ln

bb.ln:                                            ; preds = %bb.ln, %bb.lm
  %.0377 = phi i32 [ %.1367, %bb.lm ], [ %i.bpf, %bb.ln ] ; 3 uses
  %.0376 = phi i32 [ %.3357, %bb.lm ], [ %i.bpb, %bb.ln ]
  %.0375 = phi i32 [ %.3362, %bb.lm ], [ %i.bpd, %bb.ln ]
  %i.boy = sext i32 %.0377 to i64
  %i.boz = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.boy ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 8 ; 2 uses
  %i.bpb = load i32, ptr %i.bpa, align 4, !tbaa !89 ; 3 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.boz, i64 4 ; 2 uses
  %i.bpd = load i32, ptr %i.bpc, align 4, !tbaa !91
  store i32 %.0376, ptr %i.bpa, align 4, !tbaa !89
  store i32 %.0375, ptr %i.bpc, align 4, !tbaa !91
  %i.bpe = icmp sgt i32 %i.bpb, %.0377
  %i.bpf = sub nsw i32 %.0377, %i.bpb
  br i1 %i.bpe, label %.preheader1704, label %bb.ln

.preheader1704:                                   ; preds = %bb.ln
  %i.bpg = icmp sgt i32 %.6374, 0
  br i1 %i.bpg, label %.lr.ph1976, label %.loopexit1705

.lr.ph1976:                                       ; preds = %.preheader1704, %bb.lz
  %.03641975 = phi i32 [ %.1365, %bb.lz ], [ 0, %.preheader1704 ] ; 3 uses
  %.113161974 = phi ptr [ %.21317, %bb.lz ], [ %.013151997, %.preheader1704 ] ; 10 uses
  %.113211973 = phi ptr [ %.21322, %bb.lz ], [ %.013201996, %.preheader1704 ] ; 6 uses
  %.113281972 = phi ptr [ %.21329, %bb.lz ], [ %.013271995, %.preheader1704 ] ; 4 uses
  %i.bph = sext i32 %.03641975 to i64
  %i.bpi = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bph ; 2 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 8
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !89 ; 4 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpi, i64 4
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !91 ; 2 uses
  %i.bpn = icmp eq i32 %i.bpk, 1
  br i1 %i.bpn, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %.lr.ph1976
  %i.bpo = getelementptr inbounds nuw i8, ptr %.113281972, i64 1
  %i.bpp = add nsw i32 %.03641975, 1
  br label %bb.lz, !llvm.loop !98

bb.lp:                                            ; preds = %.lr.ph1976
  %i.bpq = add nsw i32 %i.bpk, %.03641975
  %i.bpr = getelementptr i8, ptr %.113161974, i64 1 ; 4 uses
  %i.bps = ptrtoint ptr %.113281972 to i64        ; 4 uses
  %i.bpt = ptrtoint ptr %.113211973 to i64        ; 5 uses
  %i.bpu = sub i64 %i.bps, %i.bpt                 ; 6 uses
  %i.bpv = udiv i64 %i.bpu, 255
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpr, i64 %i.bpv
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpw, i64 %i.bpu
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 8
  %i.bpz = icmp ugt ptr %i.bpy, %spec.select
  %or.cond.i = select i1 %.not.i, i1 %i.bpz, i1 false
  br i1 %or.cond.i, label %.thread1601.loopexit, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.bqa = icmp ugt i64 %i.bpu, 14
  br i1 %i.bqa, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.bqb = add i64 %i.bpu, -15                    ; 2 uses
  store i8 -16, ptr %.113161974, align 1, !tbaa !27
  %i.bqc = icmp ugt i64 %i.bqb, 254
  br i1 %i.bqc, label %.lr.ph1961.preheader, label %._crit_edge1962

.lr.ph1961.preheader:                             ; preds = %bb.lr
  %i.bqd = add i64 %i.bps, -270
  %i.bqe = sub i64 %i.bqd, %i.bpt                 ; 2 uses
  %i.bqf = udiv i64 %i.bqe, 255                   ; 3 uses
  %i.bqg = add nuw nsw i64 %i.bqf, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bpr, i8 -1, i64 %i.bqg, i1 false), !tbaa !27
  %scevgep = getelementptr i8, ptr %.113161974, i64 2
  %scevgep2178 = getelementptr i8, ptr %scevgep, i64 %i.bqf
  %.neg = mul i64 %i.bqf, -255
  %i.bqh = add i64 %.neg, %i.bqe
  br label %._crit_edge1962

._crit_edge1962:                                  ; preds = %.lr.ph1961.preheader, %bb.lr
  %.17.lcssa = phi ptr [ %i.bpr, %bb.lr ], [ %scevgep2178, %.lr.ph1961.preheader ] ; 2 uses
  %.0.i433.lcssa = phi i64 [ %i.bqb, %bb.lr ], [ %i.bqh, %.lr.ph1961.preheader ]
  %i.bqi = trunc nuw i64 %.0.i433.lcssa to i8
  %i.bqj = getelementptr inbounds nuw i8, ptr %.17.lcssa, i64 1
  store i8 %i.bqi, ptr %.17.lcssa, align 1, !tbaa !27
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  %.tr.i430 = trunc nuw nsw i64 %i.bpu to i8
  %i.bqk = shl nuw i8 %.tr.i430, 4
  store i8 %i.bqk, ptr %.113161974, align 1, !tbaa !27
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %._crit_edge1962
  %.13 = phi ptr [ %i.bqj, %._crit_edge1962 ], [ %i.bpr, %bb.ls ] ; 7 uses
  %.132791 = ptrtoint ptr %.13 to i64             ; 3 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %.13, i64 %i.bpu ; 3 uses
  %i.bqm = add i64 %.132791, %i.bps
  %i.bqn = sub i64 %i.bqm, %i.bpt
  %i.bqo = add nuw i64 %.132791, 8
  %umax2792 = tail call i64 @llvm.umax.i64(i64 %i.bqn, i64 %i.bqo)
  %i.bqp = xor i64 %.132791, -1
  %i.bqq = add i64 %umax2792, %i.bqp              ; 2 uses
  %i.bqr = lshr i64 %i.bqq, 3
  %i.bqs = add nuw nsw i64 %i.bqr, 1              ; 2 uses
  %min.iters.check2794 = icmp ult i64 %i.bqq, 24
  %.132789 = ptrtoaddr ptr %.13 to i64
  %i.bqt = sub i64 %.132789, %i.bpt
  %diff.check2790 = icmp ult i64 %i.bqt, 32
  %or.cond2836 = select i1 %min.iters.check2794, i1 true, i1 %diff.check2790
  br i1 %or.cond2836, label %scalar.ph2793.preheader, label %vector.ph2795

vector.ph2795:                                    ; preds = %bb.lt
  %n.vec2797 = and i64 %i.bqs, 4611686018427387900 ; 3 uses
  %i.bqu = shl i64 %n.vec2797, 3                  ; 2 uses
  %i.bqv = getelementptr i8, ptr %.113211973, i64 %i.bqu
  %i.bqw = getelementptr i8, ptr %.13, i64 %i.bqu
  br label %vector.body2798

vector.body2798:                                  ; preds = %vector.body2798, %vector.ph2795
  %index2799 = phi i64 [ 0, %vector.ph2795 ], [ %index.next2804, %vector.body2798 ] ; 2 uses
  %i.bqx = shl i64 %index2799, 3                  ; 2 uses
  %next.gep2800 = getelementptr i8, ptr %.113211973, i64 %i.bqx ; 2 uses
  %next.gep2801 = getelementptr i8, ptr %.13, i64 %i.bqx ; 2 uses
  %i.bqy = getelementptr i8, ptr %next.gep2800, i64 16
  %wide.load2802 = load <2 x i64>, ptr %next.gep2800, align 1
  %wide.load2803 = load <2 x i64>, ptr %i.bqy, align 1
  %i.bqz = getelementptr i8, ptr %next.gep2801, i64 16
  store <2 x i64> %wide.load2802, ptr %next.gep2801, align 1
  store <2 x i64> %wide.load2803, ptr %i.bqz, align 1
  %index.next2804 = add nuw i64 %index2799, 4     ; 2 uses
  %i.bra = icmp eq i64 %index.next2804, %n.vec2797
  br i1 %i.bra, label %middle.block2805, label %vector.body2798, !llvm.loop !99

middle.block2805:                                 ; preds = %vector.body2798
  %cmp.n2806 = icmp eq i64 %i.bqs, %n.vec2797
  br i1 %cmp.n2806, label %LZ4_wildCopy8.exit449, label %scalar.ph2793.preheader

scalar.ph2793.preheader:                          ; preds = %bb.lt, %middle.block2805
  %.09.i447.ph = phi ptr [ %.113211973, %bb.lt ], [ %i.bqv, %middle.block2805 ]
  %.0.i448.ph = phi ptr [ %.13, %bb.lt ], [ %i.bqw, %middle.block2805 ]
  br label %scalar.ph2793

scalar.ph2793:                                    ; preds = %scalar.ph2793.preheader, %scalar.ph2793
  %.09.i447 = phi ptr [ %i.brd, %scalar.ph2793 ], [ %.09.i447.ph, %scalar.ph2793.preheader ] ; 2 uses
  %.0.i448 = phi ptr [ %i.brc, %scalar.ph2793 ], [ %.0.i448.ph, %scalar.ph2793.preheader ] ; 2 uses
  %i.brb = load i64, ptr %.09.i447, align 1
  store i64 %i.brb, ptr %.0.i448, align 1
  %i.brc = getelementptr inbounds nuw i8, ptr %.0.i448, i64 8 ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %.09.i447, i64 8
  %i.bre = icmp ult ptr %i.brc, %i.bql
  br i1 %i.bre, label %scalar.ph2793, label %LZ4_wildCopy8.exit449, !llvm.loop !100

LZ4_wildCopy8.exit449:                            ; preds = %scalar.ph2793, %middle.block2805
  %i.brf = trunc i32 %i.bpm to i16
  store i16 %i.brf, ptr %i.bql, align 1, !tbaa !25
  %i.brg = getelementptr i8, ptr %i.bql, i64 2    ; 4 uses
  %i.brh = sext i32 %i.bpk to i64                 ; 4 uses
  %i.bri = add nsw i64 %i.brh, -4                 ; 3 uses
  %i.brj = udiv i64 %i.bri, 255
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brg, i64 %i.brj
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 6
  %i.brm = icmp ugt ptr %i.brl, %spec.select
  %or.cond64.i = select i1 %.not.i, i1 %i.brm, i1 false
  br i1 %or.cond64.i, label %.thread1601.loopexit, label %bb.lu

bb.lu:                                            ; preds = %LZ4_wildCopy8.exit449
  %i.brn = icmp ugt i64 %i.bri, 14
  br i1 %i.brn, label %bb.lv, label %bb.ly

bb.lv:                                            ; preds = %bb.lu
  %i.bro = load i8, ptr %.113161974, align 1, !tbaa !27
  %i.brp = add i8 %i.bro, 15
  store i8 %i.brp, ptr %.113161974, align 1, !tbaa !27
  %i.brq = add nsw i64 %i.brh, -19                ; 2 uses
  %i.brr = icmp ugt i64 %i.brq, 509
  br i1 %i.brr, label %.lr.ph1968.preheader, label %._crit_edge1969

.lr.ph1968.preheader:                             ; preds = %bb.lv
  %i.brs = add nsw i64 %i.brh, -529               ; 2 uses
  %i.brt = udiv i64 %i.brs, 510                   ; 2 uses
  %i.bru = shl nuw nsw i64 %i.brt, 1              ; 2 uses
  %i.brv = add nuw nsw i64 %i.bru, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.brg, i8 -1, i64 %i.brv, i1 false), !tbaa !27
  %scevgep2179 = getelementptr i8, ptr %.13, i64 4
  %i.brw = add i64 %i.bru, %i.bps
  %i.brx = sub i64 %i.brw, %i.bpt
  %scevgep2180 = getelementptr i8, ptr %scevgep2179, i64 %i.brx
  %.neg2403 = mul i64 %i.brt, -510
  %i.bry = add i64 %.neg2403, %i.brs
  br label %._crit_edge1969

._crit_edge1969:                                  ; preds = %.lr.ph1968.preheader, %bb.lv
  %.15.lcssa = phi ptr [ %i.brg, %bb.lv ], [ %scevgep2180, %.lr.ph1968.preheader ] ; 3 uses
  %.051.i431.lcssa = phi i64 [ %i.brq, %bb.lv ], [ %i.bry, %.lr.ph1968.preheader ] ; 3 uses
  %i.brz = icmp samesign ugt i64 %.051.i431.lcssa, 254
  br i1 %i.brz, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %._crit_edge1969
  %i.bsa = add nsw i64 %.051.i431.lcssa, -255
  %i.bsb = getelementptr inbounds nuw i8, ptr %.15.lcssa, i64 1
  store i8 -1, ptr %.15.lcssa, align 1, !tbaa !27
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %._crit_edge1969
  %.16 = phi ptr [ %i.bsb, %bb.lw ], [ %.15.lcssa, %._crit_edge1969 ] ; 2 uses
  %.1.i432 = phi i64 [ %i.bsa, %bb.lw ], [ %.051.i431.lcssa, %._crit_edge1969 ]
  %i.bsc = trunc nuw i64 %.1.i432 to i8
  %i.bsd = getelementptr inbounds nuw i8, ptr %.16, i64 1
  store i8 %i.bsc, ptr %.16, align 1, !tbaa !27
  br label %select.unfold1600

bb.ly:                                            ; preds = %bb.lu
  %i.bse = trunc nuw nsw i64 %i.bri to i8
  %i.bsf = load i8, ptr %.113161974, align 1, !tbaa !27
  %i.bsg = add i8 %i.bsf, %i.bse
  store i8 %i.bsg, ptr %.113161974, align 1, !tbaa !27
  br label %select.unfold1600

select.unfold1600:                                ; preds = %bb.ly, %bb.lx
  %.14 = phi ptr [ %i.bsd, %bb.lx ], [ %i.brg, %bb.ly ]
  %i.bsh = getelementptr inbounds i8, ptr %.113281972, i64 %i.brh ; 2 uses
  br label %bb.lz

bb.lz:                                            ; preds = %select.unfold1600, %bb.lo
  %.21329 = phi ptr [ %i.bpo, %bb.lo ], [ %i.bsh, %select.unfold1600 ] ; 2 uses
  %.21322 = phi ptr [ %.113211973, %bb.lo ], [ %i.bsh, %select.unfold1600 ] ; 2 uses
  %.21317 = phi ptr [ %.113161974, %bb.lo ], [ %.14, %select.unfold1600 ] ; 2 uses
  %.1365 = phi i32 [ %i.bpp, %bb.lo ], [ %i.bpq, %select.unfold1600 ] ; 2 uses
  %i.bsi = icmp slt i32 %.1365, %.6374
  br i1 %i.bsi, label %.lr.ph1976, label %.loopexit1705

select.unfold1610:                                ; preds = %bb.da, %bb.cz
  %.20 = phi ptr [ %i.we, %bb.cz ], [ %i.vi, %bb.da ]
  %i.bsj = getelementptr inbounds nuw i8, ptr %.013271995, i64 %.sroa.03.sroa.4.0.insert.shift.i722 ; 2 uses
  br label %.loopexit1705

.loopexit1705:                                    ; preds = %bb.lz, %.preheader1704, %select.unfold1610, %LZ4HC_FindLongerMatch.exit920.thread
  %.31330 = phi ptr [ %i.tv, %LZ4HC_FindLongerMatch.exit920.thread ], [ %i.bsj, %select.unfold1610 ], [ %.013271995, %.preheader1704 ], [ %.21329, %bb.lz ] ; 2 uses
  %.31323 = phi ptr [ %.013201996, %LZ4HC_FindLongerMatch.exit920.thread ], [ %i.bsj, %select.unfold1610 ], [ %.013201996, %.preheader1704 ], [ %.21322, %bb.lz ] ; 2 uses
  %.3 = phi ptr [ %.013151997, %LZ4HC_FindLongerMatch.exit920.thread ], [ %.20, %select.unfold1610 ], [ %.013151997, %.preheader1704 ], [ %.21317, %bb.lz ] ; 2 uses
  %.not = icmp ugt ptr %.31330, %i.k
  br i1 %.not, label %.loopexit1710, label %bb.c

.loopexit1710:                                    ; preds = %.loopexit1705, %bb.b, %LZ4HC_encodeSequence.exit
  %.41324 = phi ptr [ %i.bxe, %LZ4HC_encodeSequence.exit ], [ %1, %bb.b ], [ %.31323, %.loopexit1705 ] ; 3 uses
  %.41318 = phi ptr [ %.12, %LZ4HC_encodeSequence.exit ], [ %2, %bb.b ], [ %.3, %.loopexit1705 ] ; 3 uses
  %i.bsk = ptrtoint ptr %i.j to i64
  %i.bsl = ptrtoint ptr %.41324 to i64
  %i.bsm = sub i64 %i.bsk, %i.bsl                 ; 3 uses
  %i.bsn = add i64 %i.bsm, 240
  %i.bso = udiv i64 %i.bsn, 255
  %spec.select426.idx = select i1 %i.p, i64 5, i64 0
  %spec.select426 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select426.idx ; 2 uses
  %.not421 = icmp ne i32 %7, 0
  %i.bsp = getelementptr i8, ptr %.41318, i64 %i.bso
  %i.bsq = getelementptr i8, ptr %i.bsp, i64 1
  %i.bsr = getelementptr i8, ptr %i.bsq, i64 %i.bsm
  %i.bss = icmp ugt ptr %i.bsr, %spec.select426
  %or.cond1686 = select i1 %.not421, i1 %i.bss, i1 false
  br i1 %or.cond1686, label %bb.ma, label %bb.mb

.thread1640:                                      ; preds = %bb.mg, %bb.mf
  %i.bst = ptrtoint ptr %i.j to i64
  %i.bsu = sub i64 %i.bst, %i.buf                 ; 3 uses
  %i.bsv = add i64 %i.bsu, 240
  %i.bsw = udiv i64 %i.bsv, 255
  %i.bsx = getelementptr i8, ptr %.4.ph, i64 %i.bsw
  %i.bsy = getelementptr i8, ptr %i.bsx, i64 1
  %i.bsz = getelementptr i8, ptr %i.bsy, i64 %i.bsu
  %i.bta = icmp ugt ptr %i.bsz, %i.o
  br i1 %i.bta, label %.thread1649, label %bb.mb

bb.ma:                                            ; preds = %.loopexit1710
  %i.btb = icmp eq i32 %7, 1
  br i1 %i.btb, label %bb.mp, label %.thread1649

.thread1649:                                      ; preds = %.thread1640, %bb.ma
  %spec.select426163916451656 = phi ptr [ %spec.select426, %bb.ma ], [ %i.o, %.thread1640 ]
  %.41318163716461655 = phi ptr [ %.41318, %bb.ma ], [ %.4.ph, %.thread1640 ] ; 2 uses
  %.41324163516471654 = phi ptr [ %.41324, %bb.ma ], [ %.31323.ph, %.thread1640 ]
  %i.btc = ptrtoint ptr %spec.select426163916451656 to i64
  %i.btd = ptrtoint ptr %.41318163716461655 to i64
  %i.bte = xor i64 %i.btd, -1
  %i.btf = add i64 %i.bte, %i.btc                 ; 2 uses
  %i.btg = add i64 %i.btf, 241
  %i.bth = lshr i64 %i.btg, 8
  %i.bti = sub i64 %i.btf, %i.bth
  br label %bb.mb

bb.mb:                                            ; preds = %.thread1640, %.thread1649, %.loopexit1710
  %.413181638 = phi ptr [ %.41318163716461655, %.thread1649 ], [ %.4.ph, %.thread1640 ], [ %.41318, %.loopexit1710 ] ; 6 uses
  %.413241636 = phi ptr [ %.41324163516471654, %.thread1649 ], [ %.31323.ph, %.thread1640 ], [ %.41324, %.loopexit1710 ] ; 2 uses
  %.0353 = phi i64 [ %i.bti, %.thread1649 ], [ %i.bsu, %.thread1640 ], [ %i.bsm, %.loopexit1710 ] ; 7 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %.413241636, i64 %.0353
  %i.btk = icmp ugt i64 %.0353, 14
  %.513192016 = getelementptr i8, ptr %.413181638, i64 1 ; 3 uses
  br i1 %i.btk, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.btl = add i64 %.0353, -15                    ; 2 uses
  store i8 -16, ptr %.413181638, align 1, !tbaa !27
  %i.btm = icmp ugt i64 %i.btl, 254
  br i1 %i.btm, label %.lr.ph2020.preheader, label %._crit_edge2021

.lr.ph2020.preheader:                             ; preds = %bb.mc
  %i.btn = add i64 %.0353, -270                   ; 2 uses
  %i.bto = udiv i64 %i.btn, 255                   ; 3 uses
  %i.btp = add nuw nsw i64 %i.bto, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.513192016, i8 -1, i64 %i.btp, i1 false), !tbaa !27
  %scevgep2187 = getelementptr i8, ptr %.413181638, i64 %i.btp
  %.neg2408 = mul i64 %i.bto, -255
  %i.btq = add i64 %.neg2408, %i.btn
  %i.btr = getelementptr i8, ptr %.413181638, i64 %i.bto
  %scevgep2188 = getelementptr i8, ptr %i.btr, i64 2
  br label %._crit_edge2021

._crit_edge2021:                                  ; preds = %.lr.ph2020.preheader, %bb.mc
  %.413181638.pn.lcssa = phi ptr [ %.413181638, %bb.mc ], [ %scevgep2187, %.lr.ph2020.preheader ]
  %.0346.lcssa = phi i64 [ %i.btl, %bb.mc ], [ %i.btq, %.lr.ph2020.preheader ]
  %.51319.lcssa = phi ptr [ %.513192016, %bb.mc ], [ %scevgep2188, %.lr.ph2020.preheader ]
  %i.bts = trunc nuw i64 %.0346.lcssa to i8
  %i.btt = getelementptr inbounds nuw i8, ptr %.413181638.pn.lcssa, i64 2
  store i8 %i.bts, ptr %.51319.lcssa, align 1, !tbaa !27
  br label %bb.me

bb.md:                                            ; preds = %bb.mb
  %.0353.tr = trunc nuw nsw i64 %.0353 to i8
  %i.btu = shl nuw i8 %.0353.tr, 4
  store i8 %i.btu, ptr %.413181638, align 1, !tbaa !27
  br label %bb.me

bb.me:                                            ; preds = %._crit_edge2021, %bb.md
  %.6 = phi ptr [ %i.btt, %._crit_edge2021 ], [ %.513192016, %bb.md ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.6, ptr align 1 %.413241636, i64 %.0353, i1 false)
  %i.btv = getelementptr inbounds nuw i8, ptr %.6, i64 %.0353
  %i.btw = ptrtoint ptr %i.btj to i64
  %i.btx = ptrtoint ptr %1 to i64
  %i.bty = sub i64 %i.btw, %i.btx
  %i.btz = trunc i64 %i.bty to i32
  store i32 %i.btz, ptr %3, align 4, !tbaa !3
  %i.bua = ptrtoint ptr %i.btv to i64
  %i.bub = ptrtoint ptr %2 to i64
  %i.buc = sub i64 %i.bua, %i.bub
  %i.bud = trunc i64 %i.buc to i32
  br label %bb.mp

.thread1601.loopexit:                             ; preds = %bb.lp, %LZ4_wildCopy8.exit449
  %11 = sext i32 %i.bpk to i64
  br label %.thread1601

.thread1601:                                      ; preds = %LZ4_wildCopy8.exit, %bb.cr, %.thread1601.loopexit
  %.31330.ph = phi ptr [ %.113281972, %.thread1601.loopexit ], [ %.013271995, %bb.cr ], [ %.013271995, %LZ4_wildCopy8.exit ] ; 2 uses
  %.31323.ph = phi ptr [ %.113211973, %.thread1601.loopexit ], [ %.013201996, %bb.cr ], [ %.013201996, %LZ4_wildCopy8.exit ] ; 6 uses
  %.5352.ph = phi i32 [ %i.bpm, %.thread1601.loopexit ], [ %.22373.i.i706, %bb.cr ], [ %.22373.i.i706, %LZ4_wildCopy8.exit ]
  %.5.ph = phi i64 [ %11, %.thread1601.loopexit ], [ %.sroa.03.sroa.4.0.insert.shift.i722, %bb.cr ], [ %.sroa.03.sroa.4.0.insert.shift.i722, %LZ4_wildCopy8.exit ]
  %.4.ph = phi ptr [ %.113161974, %.thread1601.loopexit ], [ %.013151997, %bb.cr ], [ %.013151997, %LZ4_wildCopy8.exit ] ; 12 uses
  br i1 %i.p, label %bb.mf, label %bb.mp

bb.mf:                                            ; preds = %.thread1601
  %i.bue = ptrtoint ptr %.31330.ph to i64         ; 4 uses
  %i.buf = ptrtoint ptr %.31323.ph to i64         ; 6 uses
  %i.bug = sub i64 %i.bue, %i.buf                 ; 6 uses
  %i.buh = add i64 %i.bug, 240
  %i.bui = udiv i64 %i.buh, 255
  %i.buj = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.buk = getelementptr i8, ptr %.4.ph, i64 %i.bui
  %i.bul = getelementptr i8, ptr %i.buk, i64 1
  %i.bum = getelementptr i8, ptr %i.bul, i64 %i.bug ; 3 uses
  %.not420 = icmp ugt ptr %i.bum, %i.buj
  br i1 %.not420, label %.thread1640, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bun = ptrtoint ptr %i.buj to i64
  %i.buo = ptrtoint ptr %i.bum to i64
  %i.bup = sub i64 %i.bun, %i.buo
  %i.buq = mul i64 %i.bup, 255
  %i.bur = add i64 %i.buq, 18
  %spec.select4291691 = tail call i64 @llvm.umin.i64(i64 %i.bur, i64 %.5.ph)
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bum, i64 2
  %i.but = ptrtoint ptr %i.o to i64
  %i.buu = ptrtoint ptr %i.bus to i64
  %sext = shl i64 %spec.select4291691, 32
  %i.buv = ashr exact i64 %sext, 32               ; 5 uses
  %i.buw = add i64 %i.buv, %i.but
  %i.bux = sub i64 %i.buu, %i.buw
  %i.buy = icmp slt i64 %i.bux, -12
  br i1 %i.buy, label %bb.mh, label %.thread1640

bb.mh:                                            ; preds = %bb.mg
  %i.buz = getelementptr i8, ptr %.4.ph, i64 1    ; 3 uses
  %i.bva = icmp ugt i64 %i.bug, 14
  br i1 %i.bva, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bvb = add i64 %i.bug, -15                    ; 2 uses
  store i8 -16, ptr %.4.ph, align 1, !tbaa !27
  %i.bvc = icmp ugt i64 %i.bvb, 254
  br i1 %i.bvc, label %.lr.ph2005.preheader, label %._crit_edge2006

.lr.ph2005.preheader:                             ; preds = %bb.mi
  %i.bvd = add i64 %i.bue, -270
  %i.bve = sub i64 %i.bvd, %i.buf                 ; 2 uses
  %i.bvf = udiv i64 %i.bve, 255                   ; 3 uses
  %i.bvg = add nuw nsw i64 %i.bvf, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.buz, i8 -1, i64 %i.bvg, i1 false), !tbaa !27
  %i.bvh = getelementptr i8, ptr %.4.ph, i64 %i.bvf
  %scevgep2185 = getelementptr i8, ptr %i.bvh, i64 2
  %.neg2406 = mul i64 %i.bvf, -255
  %i.bvi = add i64 %.neg2406, %i.bve
  br label %._crit_edge2006

._crit_edge2006:                                  ; preds = %.lr.ph2005.preheader, %bb.mi
  %.11.lcssa = phi ptr [ %i.buz, %bb.mi ], [ %scevgep2185, %.lr.ph2005.preheader ] ; 2 uses
  %.0.i.lcssa = phi i64 [ %i.bvb, %bb.mi ], [ %i.bvi, %.lr.ph2005.preheader ]
  %i.bvj = trunc nuw i64 %.0.i.lcssa to i8
  %i.bvk = getelementptr inbounds nuw i8, ptr %.11.lcssa, i64 1
  store i8 %i.bvj, ptr %.11.lcssa, align 1, !tbaa !27
  br label %bb.mk

bb.mj:                                            ; preds = %bb.mh
  %.tr.i = trunc nuw nsw i64 %i.bug to i8
  %i.bvl = shl nuw i8 %.tr.i, 4
  store i8 %i.bvl, ptr %.4.ph, align 1, !tbaa !27
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %._crit_edge2006
  %.8 = phi ptr [ %i.bvk, %._crit_edge2006 ], [ %i.buz, %bb.mj ] ; 7 uses
  %.82812 = ptrtoint ptr %.8 to i64               ; 3 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %.8, i64 %i.bug ; 3 uses
  %i.bvn = add i64 %.82812, %i.bue
  %i.bvo = sub i64 %i.bvn, %i.buf
  %i.bvp = add nuw i64 %.82812, 8
  %umax2813 = tail call i64 @llvm.umax.i64(i64 %i.bvo, i64 %i.bvp)
  %i.bvq = xor i64 %.82812, -1
  %i.bvr = add i64 %umax2813, %i.bvq              ; 2 uses
  %i.bvs = lshr i64 %i.bvr, 3
  %i.bvt = add nuw nsw i64 %i.bvs, 1              ; 2 uses
  %min.iters.check2815 = icmp ult i64 %i.bvr, 56
  %.82810 = ptrtoaddr ptr %.8 to i64
  %i.bvu = sub i64 %.82810, %i.buf
  %diff.check2811 = icmp ult i64 %i.bvu, 32
  %or.cond2837 = or i1 %min.iters.check2815, %diff.check2811
  br i1 %or.cond2837, label %scalar.ph2814.preheader, label %vector.ph2816

vector.ph2816:                                    ; preds = %bb.mk
  %n.vec2818 = and i64 %i.bvt, 4611686018427387900 ; 3 uses
  %i.bvv = shl i64 %n.vec2818, 3                  ; 2 uses
  %i.bvw = getelementptr i8, ptr %.31323.ph, i64 %i.bvv
  %i.bvx = getelementptr i8, ptr %.8, i64 %i.bvv
  br label %vector.body2819

vector.body2819:                                  ; preds = %vector.body2819, %vector.ph2816
  %index2820 = phi i64 [ 0, %vector.ph2816 ], [ %index.next2825, %vector.body2819 ] ; 2 uses
  %i.bvy = shl i64 %index2820, 3                  ; 2 uses
  %next.gep2821 = getelementptr i8, ptr %.31323.ph, i64 %i.bvy ; 2 uses
  %next.gep2822 = getelementptr i8, ptr %.8, i64 %i.bvy ; 2 uses
  %i.bvz = getelementptr i8, ptr %next.gep2821, i64 16
  %wide.load2823 = load <2 x i64>, ptr %next.gep2821, align 1
  %wide.load2824 = load <2 x i64>, ptr %i.bvz, align 1
  %i.bwa = getelementptr i8, ptr %next.gep2822, i64 16
  store <2 x i64> %wide.load2823, ptr %next.gep2822, align 1
  store <2 x i64> %wide.load2824, ptr %i.bwa, align 1
  %index.next2825 = add nuw i64 %index2820, 4     ; 2 uses
  %i.bwb = icmp eq i64 %index.next2825, %n.vec2818
  br i1 %i.bwb, label %middle.block2826, label %vector.body2819, !llvm.loop !101

middle.block2826:                                 ; preds = %vector.body2819
  %cmp.n2827 = icmp eq i64 %i.bvt, %n.vec2818
  br i1 %cmp.n2827, label %LZ4_wildCopy8.exit452, label %scalar.ph2814.preheader

scalar.ph2814.preheader:                          ; preds = %bb.mk, %middle.block2826
  %.09.i450.ph = phi ptr [ %.31323.ph, %bb.mk ], [ %i.bvw, %middle.block2826 ]
  %.0.i451.ph = phi ptr [ %.8, %bb.mk ], [ %i.bvx, %middle.block2826 ]
  br label %scalar.ph2814

scalar.ph2814:                                    ; preds = %scalar.ph2814.preheader, %scalar.ph2814
  %.09.i450 = phi ptr [ %i.bwe, %scalar.ph2814 ], [ %.09.i450.ph, %scalar.ph2814.preheader ] ; 2 uses
  %.0.i451 = phi ptr [ %i.bwd, %scalar.ph2814 ], [ %.0.i451.ph, %scalar.ph2814.preheader ] ; 2 uses
  %i.bwc = load i64, ptr %.09.i450, align 1
  store i64 %i.bwc, ptr %.0.i451, align 1
  %i.bwd = getelementptr inbounds nuw i8, ptr %.0.i451, i64 8 ; 2 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %.09.i450, i64 8
  %i.bwf = icmp ult ptr %i.bwd, %i.bvm
  br i1 %i.bwf, label %scalar.ph2814, label %LZ4_wildCopy8.exit452, !llvm.loop !102

LZ4_wildCopy8.exit452:                            ; preds = %scalar.ph2814, %middle.block2826
  %i.bwg = trunc i32 %.5352.ph to i16
  store i16 %i.bwg, ptr %i.bvm, align 1, !tbaa !25
  %i.bwh = getelementptr i8, ptr %i.bvm, i64 2    ; 3 uses
  %i.bwi = add nsw i64 %i.buv, -4                 ; 2 uses
  %i.bwj = icmp ugt i64 %i.bwi, 14
  br i1 %i.bwj, label %bb.ml, label %bb.mo

bb.ml:                                            ; preds = %LZ4_wildCopy8.exit452
  %i.bwk = load i8, ptr %.4.ph, align 1, !tbaa !27
  %i.bwl = add i8 %i.bwk, 15
  store i8 %i.bwl, ptr %.4.ph, align 1, !tbaa !27
  %i.bwm = add nsw i64 %i.buv, -19                ; 2 uses
  %i.bwn = icmp ugt i64 %i.bwm, 509
  br i1 %i.bwn, label %.lr.ph2012.preheader, label %._crit_edge2013

.lr.ph2012.preheader:                             ; preds = %bb.ml
  %i.bwo = add nsw i64 %i.buv, -529               ; 2 uses
  %i.bwp = udiv i64 %i.bwo, 510                   ; 2 uses
  %i.bwq = shl nuw nsw i64 %i.bwp, 1              ; 2 uses
  %i.bwr = add nuw nsw i64 %i.bwq, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bwh, i8 -1, i64 %i.bwr, i1 false), !tbaa !27
  %i.bws = add i64 %i.bwq, %i.bue
  %i.bwt = add i64 %i.bws, 4
  %i.bwu = sub i64 %i.bwt, %i.buf
  %scevgep2186 = getelementptr i8, ptr %.8, i64 %i.bwu
  %.neg2407 = mul i64 %i.bwp, -510
  %i.bwv = add i64 %.neg2407, %i.bwo
  br label %._crit_edge2013

._crit_edge2013:                                  ; preds = %.lr.ph2012.preheader, %bb.ml
  %.9.lcssa = phi ptr [ %i.bwh, %bb.ml ], [ %scevgep2186, %.lr.ph2012.preheader ] ; 3 uses
  %.051.i.lcssa = phi i64 [ %i.bwm, %bb.ml ], [ %i.bwv, %.lr.ph2012.preheader ] ; 3 uses
  %i.bww = icmp samesign ugt i64 %.051.i.lcssa, 254
  br i1 %i.bww, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %._crit_edge2013
  %i.bwx = add nsw i64 %.051.i.lcssa, -255
  %i.bwy = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 1
  store i8 -1, ptr %.9.lcssa, align 1, !tbaa !27
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %._crit_edge2013
  %.10 = phi ptr [ %i.bwy, %bb.mm ], [ %.9.lcssa, %._crit_edge2013 ] ; 2 uses
  %.1.i = phi i64 [ %i.bwx, %bb.mm ], [ %.051.i.lcssa, %._crit_edge2013 ]
  %i.bwz = trunc nuw i64 %.1.i to i8
  %i.bxa = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.bwz, ptr %.10, align 1, !tbaa !27
  br label %LZ4HC_encodeSequence.exit

bb.mo:                                            ; preds = %LZ4_wildCopy8.exit452
  %i.bxb = trunc nuw nsw i64 %i.bwi to i8
  %i.bxc = load i8, ptr %.4.ph, align 1, !tbaa !27
  %i.bxd = add i8 %i.bxc, %i.bxb
  store i8 %i.bxd, ptr %.4.ph, align 1, !tbaa !27
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.mn, %bb.mo
  %.12 = phi ptr [ %i.bxa, %bb.mn ], [ %i.bwh, %bb.mo ]
  %i.bxe = getelementptr inbounds i8, ptr %.31330.ph, i64 %i.buv
  br label %.loopexit1710

bb.mp:                                            ; preds = %bb.me, %.thread1601, %bb.ma
  %.1 = phi i32 [ 0, %bb.ma ], [ %i.bud, %bb.me ], [ 0, %.thread1601 ]
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
