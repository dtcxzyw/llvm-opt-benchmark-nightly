Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/louds_trie?download=true
inline.NumInlined: 2107
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEv:bb.a
  call void @llvm.memset.p0.i64(ptr align 4 %i.rk, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !70
  br label %bb.dl

bb.dl:                                            ; preds = %.noexc570, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.rl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rf) #27
          to label %.noexc578 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit879.thread ; 8 uses

.noexc578:                                        ; preds = %bb.dl
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.kc ; 4 uses
  store i32 0, ptr %i.rl, align 4, !tbaa !70
  br i1 %i.rj, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit579, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i573

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i573: ; preds = %.noexc578
  %i.rn = getelementptr i8, ptr %i.rl, i64 4
  %.idx.i.i.i.i.i.i.i574 = shl nuw nsw i64 %i.ri, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.rn, i8 0, i64 %.idx.i.i.i.i.i.i.i574, i1 false), !tbaa !70
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit579

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit579:            ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i573, %.noexc578
  br i1 %or.cond, label %.preheader1430, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ro = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.ro, ptr %9, align 8, !tbaa !91
  %i.rp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.rp, align 8, !tbaa !92
  store i8 0, ptr %i.ro, align 8, !tbaa !62
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit635

.preheader1430:                                   ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit579
  %i.rq = load i64, ptr %i.eb, align 8, !tbaa !158
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !71
  %i.rt = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ru = load i64, ptr %i.rt, align 8            ; 9 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.rw = load i64, ptr %i.rv, align 8            ; 2 uses
  %.not42.i582 = icmp eq i64 %i.rw, 0
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8            ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.sa = load i64, ptr %i.rz, align 8
  %i.sb = add i64 %i.sa, -1                       ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8            ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.sf = load i64, ptr %i.se, align 8            ; 3 uses
  %i.sg = load ptr, ptr %7, align 8               ; 3 uses
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.dj
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit881

_ZNSt6vectorIjSaIjEED2Ev.exit879.thread:          ; preds = %bb.dl
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.dn:                                            ; preds = %.preheader1430, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613
  %.02761493 = phi i64 [ 0, %.preheader1430 ], [ %i.ud, %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613 ] ; 4 uses
  %i.sj = add i64 %i.rq, %.02761493               ; 4 uses
  %.not.i580 = icmp ult i64 %i.sj, %i.rs
  br i1 %.not.i580, label %bb.do, label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit601

bb.do:                                            ; preds = %bb.dn
  br i1 %.not42.i582, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sk = lshr i64 %i.sj, 8                       ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !70 ; 2 uses
  %i.sn = add nuw nsw i64 %i.sk, 1                ; 2 uses
  %i.so = icmp ult i64 %i.sn, %i.rw
  br i1 %i.so, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.sn
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !70
  %i.sr = zext i32 %i.sq to i64
  br label %bb.dr

bb.dr:                                            ; preds = %bb.do, %bb.dp, %bb.dq
  %.034.shrunk.i583 = phi i32 [ %i.sm, %bb.dp ], [ %i.sm, %bb.dq ], [ 0, %bb.do ]
  %.033.i584 = phi i64 [ %i.sb, %bb.dp ], [ %i.sr, %bb.dq ], [ %i.sb, %bb.do ] ; 2 uses
  %.034.i585 = zext i32 %.034.shrunk.i583 to i64  ; 3 uses
  %umax.i586 = call i64 @llvm.umax.i64(i64 %.033.i584, i64 %.034.i585) ; 3 uses
  %exitcond.not.i5882001.not = icmp ugt i64 %.033.i584, %.034.i585
  br i1 %exitcond.not.i5882001.not, label %.lr.ph2004, label %.critedge.i590

bb.ds:                                            ; preds = %.lr.ph2004
  %exitcond.not.i588 = icmp eq i64 %i.ss, %umax.i586
  br i1 %exitcond.not.i588, label %.critedge.i590, label %.lr.ph2004, !llvm.loop !3

.lr.ph2004:                                       ; preds = %bb.dr, %bb.ds
  %.135.i5872002 = phi i64 [ %i.ss, %bb.ds ], [ %.034.i585, %bb.dr ] ; 2 uses
  %i.ss = add i64 %.135.i5872002, 1               ; 3 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !70
  %i.sv = zext i32 %i.su to i64
  %.not43.i589 = icmp ult i64 %i.sj, %i.sv
  br i1 %.not43.i589, label %..critedge.i590_crit_edge, label %bb.ds, !llvm.loop !3

..critedge.i590_crit_edge:                        ; preds = %.lr.ph2004
  br label %.critedge.i590, !llvm.loop !3

.critedge.i590:                                   ; preds = %bb.ds, %..critedge.i590_crit_edge, %bb.dr
  %.135.lcssa.i591 = phi i64 [ %umax.i586, %bb.dr ], [ %.135.i5872002, %..critedge.i590_crit_edge ], [ %umax.i586, %bb.ds ] ; 2 uses
  %i.sw = shl i64 %.135.lcssa.i591, 2             ; 3 uses
  %i.sx = add i64 %i.sw, 4
  %.sroa.speculated.i592 = call i64 @llvm.umin.i64(i64 %i.sf, i64 %i.sx) ; 2 uses
  %.not4553.i593 = icmp ult i64 %i.sw, %.sroa.speculated.i592
  br i1 %.not4553.i593, label %.lr.ph.i595, label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit601

.lr.ph.i595:                                      ; preds = %.critedge.i590
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %.135.lcssa.i591
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !70
  %i.ta = zext i32 %i.sz to i64
  %i.tb = sub i64 %i.sj, %i.ta
  br label %bb.dt

bb.dt:                                            ; preds = %bb.du, %.lr.ph.i595
  %.03055.i596 = phi i64 [ %i.sw, %.lr.ph.i595 ], [ %i.tl, %bb.du ] ; 3 uses
  %.03154.i597 = phi i64 [ %i.tb, %.lr.ph.i595 ], [ %i.tk, %bb.du ] ; 3 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %.03055.i596
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !65 ; 2 uses
  %i.te = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.td) ; 2 uses
  %.not44.i598 = icmp ult i64 %.03154.i597, %i.te
  br i1 %.not44.i598, label %.thread49.i600, label %bb.du

.thread49.i600:                                   ; preds = %bb.dt
  %i.tf = shl i64 %.03055.i596, 6
  %i.tg = shl nuw i64 1, %.03154.i597
  %i.th = call noundef i64 @llvm.pdep.i64(i64 %i.tg, i64 %i.td)
  %i.ti = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.th, i1 true)
  %i.tj = or disjoint i64 %i.ti, %i.tf
  br label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit601

bb.du:                                            ; preds = %bb.dt
  %i.tk = sub nuw i64 %.03154.i597, %i.te
  %i.tl = add i64 %.03055.i596, 1                 ; 2 uses
  %exitcond59.not.i599 = icmp eq i64 %i.tl, %.sroa.speculated.i592
  br i1 %exitcond59.not.i599, label %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit601, label %bb.dt, !llvm.loop !4

_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit601: ; preds = %bb.du, %.critedge.i590, %bb.dn, %.thread49.i600
  %.4.i581 = phi i64 [ %i.tj, %.thread49.i600 ], [ %i.ru, %bb.dn ], [ %i.ru, %.critedge.i590 ], [ %i.ru, %bb.du ] ; 2 uses
  %i.tm = trunc i64 %.4.i581 to i32
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %.02761493
  store i32 %i.tm, ptr %i.tn, align 4, !tbaa !70
  %i.to = add i64 %.4.i581, 1                     ; 4 uses
  %.not.i602 = icmp ult i64 %i.to, %i.ru
  br i1 %.not.i602, label %bb.dv, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613

bb.dv:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit601
  %i.tp = lshr i64 %i.to, 6                       ; 2 uses
  %i.tq = and i64 %i.to, 63
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.tp
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !65
  %i.tt = lshr i64 %i.ts, %i.tq                   ; 2 uses
  %.not30.i604 = icmp eq i64 %i.tt, 0
  br i1 %.not30.i604, label %.preheader.i606.preheader, label %bb.dw

.preheader.i606.preheader:                        ; preds = %bb.dv
  %.0.i6082008 = add nuw nsw i64 %i.tp, 1         ; 2 uses
  %.not32.i6092009 = icmp ult i64 %.0.i6082008, %i.sf
  br i1 %.not32.i6092009, label %.lr.ph2011, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613

bb.dw:                                            ; preds = %bb.dv
  %i.tu = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tt, i1 true)
  %i.tv = add i64 %i.tu, %i.to
  %..i605 = call i64 @llvm.umin.i64(i64 %i.tv, i64 %i.ru)
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613

.preheader.i606:                                  ; preds = %.lr.ph2011
  %.0.i608 = add nuw i64 %.0.i6082010, 1          ; 2 uses
  %.not32.i609 = icmp ult i64 %.0.i608, %i.sf
  br i1 %.not32.i609, label %.lr.ph2011, label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613, !llvm.loop !0

.lr.ph2011:                                       ; preds = %.preheader.i606.preheader, %.preheader.i606
  %.0.i6082010 = phi i64 [ %.0.i608, %.preheader.i606 ], [ %.0.i6082008, %.preheader.i606.preheader ] ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %.0.i6082010
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !65 ; 2 uses
  %.not31.i610 = icmp eq i64 %i.tx, 0
  br i1 %.not31.i610, label %.preheader.i606, label %.thread.i611, !llvm.loop !0

.thread.i611:                                     ; preds = %.lr.ph2011
  %i.ty = shl i64 %.0.i6082010, 6
  %i.tz = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tx, i1 true)
  %i.ua = or disjoint i64 %i.tz, %i.ty
  %.33.i612 = call i64 @llvm.umin.i64(i64 %i.ua, i64 %i.ru)
  br label %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613

_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613: ; preds = %.preheader.i606, %.preheader.i606.preheader, %.thread.i611, %bb.dw, %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit601
  %.2.i603 = phi i64 [ %i.ru, %_ZNK7rocksdb10trie_index9Bitvector13FindNthOneBitEm.exit601 ], [ %..i605, %bb.dw ], [ %.33.i612, %.thread.i611 ], [ %i.ru, %.preheader.i606.preheader ], [ %i.ru, %.preheader.i606 ]
  %spec.select392 = call i64 @llvm.umin.i64(i64 %.2.i603, i64 %i.hg)
  %i.ub = trunc nuw i64 %spec.select392 to i32
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %.02761493
  store i32 %i.ub, ptr %i.uc, align 4, !tbaa !70
  %i.ud = add nuw nsw i64 %.02761493, 1           ; 2 uses
  %exitcond1636.not = icmp eq i64 %i.ud, %i.kc
  br i1 %exitcond1636.not, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread, label %bb.dn, !llvm.loop !244

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread: ; preds = %_ZNK7rocksdb10trie_index9Bitvector10NextSetBitEm.exit613, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit579
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ue = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ue, ptr %9, align 8, !tbaa !91
  %i.uf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.uf, align 8, !tbaa !92
  store i8 0, ptr %i.ue, align 8, !tbaa !62
  %i.ug = shl nuw nsw i64 %i.kc, 2                ; 4 uses
  %i.uh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ug) #27
          to label %.noexc618 unwind label %bb.dx ; 5 uses

.noexc618:                                        ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.uh, i8 -1, i64 %i.ug, i1 false), !tbaa !70
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.kc ; 3 uses
  %i.uj = shl nuw nsw i64 %i.kc, 1                ; 2 uses
  %i.uk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uj) #27
          to label %.noexc625 unwind label %_ZNSt6vectorItSaItEED2Ev.exit872.thread ; 4 uses

.noexc625:                                        ; preds = %.noexc618
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.uk, i8 0, i64 %i.uj, i1 false), !tbaa !78
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.kc ; 2 uses
  %i.um = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ug) #27
          to label %.noexc634 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit870.thread ; 3 uses

.noexc634:                                        ; preds = %.noexc625
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.um, i8 -1, i64 %i.ug, i1 false), !tbaa !70
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.kc
  %i.uo = ptrtoint ptr %i.un to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit635

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit635:         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886, %.noexc634
  %.sroa.01103.01883 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.rl, %.noexc634 ] ; 7 uses
  %.sroa.121109.01873 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.rm, %.noexc634 ] ; 3 uses
  %.sroa.121118.011341857 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.rh, %.noexc634 ] ; 3 uses
  %.sroa.01112.011491845 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.rg, %.noexc634 ] ; 7 uses
  %i.up = phi ptr [ %i.rp, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.uf, %.noexc634 ] ; 7 uses
  %i.uq = phi ptr [ %i.ro, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.ue, %.noexc634 ] ; 10 uses
  %.sroa.271088.01211 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.ul, %.noexc634 ] ; 2 uses
  %.sroa.01068.01200 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.uk, %.noexc634 ] ; 20 uses
  %.sroa.141100.0117611801190 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.ui, %.noexc634 ] ; 3 uses
  %.sroa.01092.0116411821188 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.uh, %.noexc634 ] ; 9 uses
  %.sroa.01059.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.um, %.noexc634 ] ; 9 uses
  %.sroa.121064.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread1886 ], [ %i.uo, %.noexc634 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ur = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 80, i1 false)
  store ptr %i.us, ptr %i.ur, align 8, !tbaa !91
  %i.ut = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i64 0, ptr %i.ut, align 8, !tbaa !92
  store i8 0, ptr %i.us, align 8, !tbaa !62
  invoke void @_ZN7rocksdb10trie_index9Bitvector9BuildFromERKNS0_16BitvectorBuilderE(ptr noundef nonnull align 8 dereferenceable(112) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.jw)
          to label %.preheader1424 unwind label %bb.dy

.preheader1424:                                   ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit635
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EED2Ev.exit.thread, label %.lr.ph1508

.lr.ph1508:                                       ; preds = %.preheader1424
  %i.uu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.dz

bb.dx:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i614.thread
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit874

_ZNSt6vectorItSaItEED2Ev.exit872.thread:          ; preds = %.noexc618
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

_ZNSt6vectorIjSaIjEED2Ev.exit870.thread:          ; preds = %.noexc625
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.dy:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit635
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

bb.dz:                                            ; preds = %.lr.ph1508, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.02741506 = phi i64 [ 0, %.lr.ph1508 ], [ %i.adi, %_ZNSt6vectorIhSaIhEED2Ev.exit ] ; 6 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01112.011491845, i64 %.02741506
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !70 ; 3 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01103.01883, i64 %.02741506
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !70
  %i.vf = sub i32 %i.ve, %i.vc
  %.not365 = icmp eq i32 %i.vf, 1
  br i1 %.not365, label %bb.ea, label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ea:                                            ; preds = %bb.dz
  %i.vg = zext i32 %i.vc to i64                   ; 3 uses
  %i.vh = load ptr, ptr %6, align 8, !tbaa !64
  %i.vi = lshr i64 %i.vg, 6
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %i.vi
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !65
  %i.vl = and i64 %i.vg, 63
  %i.vm = lshr i64 %i.vk, %i.vl
  %i.vn = trunc i64 %i.vm to i1
  br i1 %i.vn, label %bb.eb, label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.eb:                                            ; preds = %bb.ea
  %i.vo = add i32 %i.vc, 1
  %i.vp = zext i32 %i.vo to i64                   ; 3 uses
  %i.vq = lshr i64 %i.vp, 8                       ; 3 uses
  %i.vr = load ptr, ptr %i.uu, align 8, !tbaa !69
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %i.vq
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !70
  %i.vu = zext i32 %i.vt to i64                   ; 4 uses
  %i.vv = shl nuw nsw i64 %i.vq, 2                ; 7 uses
  %i.vw = lshr i64 %i.vp, 6                       ; 3 uses
  %i.vx = sub nsw i64 %i.vw, %i.vv                ; 2 uses
  switch i64 %i.vx, label %bb.ef [
    i64 3, label %bb.ec
    i64 2, label %._crit_edge.i638
    i64 1, label %._crit_edge20.i
  ]

._crit_edge20.i:                                  ; preds = %bb.eb
  %.pre21.i = load ptr, ptr %7, align 8, !tbaa !64
  br label %bb.ee

._crit_edge.i638:                                 ; preds = %bb.eb
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !64
  br label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.vy = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %i.vv
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !65
  %i.wc = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.wb)
  %i.wd = add nuw nsw i64 %i.wc, %i.vu
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %._crit_edge.i638
  %i.we = phi ptr [ %i.vy, %bb.ec ], [ %.pre.i, %._crit_edge.i638 ] ; 2 uses
  %.0.i639 = phi i64 [ %i.wd, %bb.ec ], [ %i.vu, %._crit_edge.i638 ]
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %i.vv
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !65
  %i.wi = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.wh)
  %i.wj = add nuw nsw i64 %i.wi, %.0.i639
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge20.i
  %i.wk = phi ptr [ %i.we, %bb.ed ], [ %.pre21.i, %._crit_edge20.i ]
  %.1.i = phi i64 [ %i.wj, %bb.ed ], [ %i.vu, %._crit_edge20.i ]
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.vv
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !65
  %i.wn = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.wm)
  %i.wo = add nuw nsw i64 %i.wn, %.1.i
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.eb
  %.2.i636 = phi i64 [ %i.vu, %bb.eb ], [ %i.wo, %bb.ee ] ; 2 uses
  %i.wp = and i64 %i.vp, 63                       ; 3 uses
  %.not.i637 = icmp eq i64 %i.wp, 0               ; 2 uses
  br i1 %.not.i637, label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %notmask.i = shl nsw i64 -1, %i.wp
  %i.wq = xor i64 %notmask.i, -1
  %i.wr = load ptr, ptr %7, align 8, !tbaa !64
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.vw
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !65
  %i.wu = and i64 %i.wt, %i.wq
  %i.wv = call noundef range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.wu)
  %i.ww = add nuw nsw i64 %i.wv, %.2.i636
  br label %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit

_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit:  ; preds = %bb.eg, %bb.ef
  %.3.i = phi i64 [ %i.ww, %bb.eg ], [ %.2.i636, %bb.ef ]
  %i.wx = add nsw i64 %.3.i, -1                   ; 3 uses
  %i.wy = load i64, ptr %i.uv, align 8, !tbaa !63
  %i.wz = icmp ult i64 %i.wx, %i.wy
  br i1 %i.wz, label %bb.eh, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.eh:                                            ; preds = %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit
  %i.xa = load ptr, ptr %10, align 8, !tbaa !64
  %i.xb = lshr i64 %i.wx, 6
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.xb
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !65
  %i.xe = and i64 %i.wx, 63
  %i.xf = lshr i64 %i.xd, %i.xe
  %i.xg = trunc i64 %i.xf to i1
  br i1 %i.xg, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.eh, %_ZNK7rocksdb10trie_index9Bitvector5Rank1Em.exit
  %i.xh = load ptr, ptr %i.ha, align 8, !tbaa !139
  %i.xi = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #27
          to label %bb.ei unwind label %.thread1226 ; 4 uses

bb.ei:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEv:bb.a

bb.fh:                                            ; preds = %.thread1219
  %i.acp = load i64, ptr %i.up, align 8, !tbaa !92 ; 6 uses
  %i.acq = trunc i64 %i.acp to i32
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01092.0116411821188, i64 %.02741506
  store i32 %i.acq, ptr %i.acr, align 4, !tbaa !70
  %i.acs = trunc nuw i64 %i.acn to i16
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %.02741506
  store i16 %i.acs, ptr %i.act, align 2, !tbaa !78
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01059.0, i64 %.02741506
  store i32 %.3268, ptr %i.acu, align 4, !tbaa !70
  %i.acv = sub i64 9223372036854775807, %i.acp
  %i.acw = icmp ult i64 %i.acv, %i.acn
  br i1 %i.acw, label %bb.fi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i687

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #26
          to label %.noexc694 unwind label %.loopexit.split-lp1426

.noexc694:                                        ; preds = %bb.fi
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i687: ; preds = %bb.fh
  %i.acx = add i64 %i.acp, %i.acn                 ; 3 uses
  %i.acy = load ptr, ptr %9, align 8, !tbaa !104  ; 2 uses
  %i.acz = icmp eq ptr %i.acy, %i.uq
  br i1 %i.acz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i693, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i688

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i693: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i687
  %i.ada = icmp ult i64 %i.acp, 16
  call void @llvm.assume(i1 %i.ada)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i689

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i688: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i687
  %i.adb = load i64, ptr %i.uq, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i689

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i689: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i688, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i693
  %i.adc = phi i64 [ %i.adb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i688 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i693 ]
  %.not.i.i690 = icmp ugt i64 %i.acx, %i.adc
  br i1 %.not.i.i690, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i689
  %i.add = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.acp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.add, ptr align 1 %.sroa.01036.2, i64 %i.acn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit696

bb.fk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i689
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.acp, i64 noundef 0, ptr noundef %.sroa.01036.2, i64 noundef %i.acn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit696 unwind label %.loopexit1425

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit696: ; preds = %bb.fk, %bb.fj
  store i64 %i.acx, ptr %i.up, align 8, !tbaa !92
  %i.ade = load ptr, ptr %9, align 8, !tbaa !104
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.acx
  store i8 0, ptr %i.adf, align 1, !tbaa !62
  br label %bb.fl

.loopexit1425:                                    ; preds = %bb.fk
  %lpad.loopexit1427 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1245

.loopexit.split-lp1426:                           ; preds = %bb.fi
  %lpad.loopexit.split-lp1428 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1245

bb.fl:                                            ; preds = %.thread1219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit696
  %i.adg = ptrtoint ptr %.sroa.27.2 to i64
  %i.adh = sub i64 %i.adg, %i.acm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01036.2, i64 noundef %i.adh) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.fl, %bb.eh, %bb.ea, %bb.dz
  %i.adi = add nuw i64 %.02741506, 1              ; 2 uses
  %exitcond1637.not = icmp eq i64 %i.adi, %i.kc
  br i1 %exitcond1637.not, label %iter.check, label %bb.dz, !llvm.loop !245

iter.check:                                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %min.iters.check = icmp ult i64 %i.kc, 4
  br i1 %min.iters.check, label %.lr.ph1511.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2012 = icmp ult i64 %i.kc, 16
  br i1 %min.iters.check2012, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.adj = and i64 %i.kc, 12
  %n.vec = and i64 %i.kc, 2305843009213693936     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.adw, %vector.body ]
  %vec.phi2013 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.adx, %vector.body ]
  %vec.phi2014 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ady, %vector.body ]
  %vec.phi2015 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.adz, %vector.body ]
  %i.adk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %index ; 4 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 24
  %wide.load = load <4 x i16>, ptr %i.adk, align 2, !tbaa !78
  %wide.load2016 = load <4 x i16>, ptr %i.adl, align 2, !tbaa !78
  %wide.load2017 = load <4 x i16>, ptr %i.adm, align 2, !tbaa !78
  %wide.load2018 = load <4 x i16>, ptr %i.adn, align 2, !tbaa !78
  %i.ado = icmp ne <4 x i16> %wide.load, zeroinitializer
  %i.adp = icmp ne <4 x i16> %wide.load2016, zeroinitializer
  %i.adq = icmp ne <4 x i16> %wide.load2017, zeroinitializer
  %i.adr = icmp ne <4 x i16> %wide.load2018, zeroinitializer
  %i.ads = zext <4 x i1> %i.ado to <4 x i64>
  %i.adt = zext <4 x i1> %i.adp to <4 x i64>
  %i.adu = zext <4 x i1> %i.adq to <4 x i64>
  %i.adv = zext <4 x i1> %i.adr to <4 x i64>
  %i.adw = add <4 x i64> %vec.phi, %i.ads         ; 2 uses
  %i.adx = add <4 x i64> %vec.phi2013, %i.adt     ; 2 uses
  %i.ady = add <4 x i64> %vec.phi2014, %i.adu     ; 2 uses
  %i.adz = add <4 x i64> %vec.phi2015, %i.adv     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aea = icmp eq i64 %index.next, %n.vec
  br i1 %i.aea, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.adx, %i.adw
  %bin.rdx2019 = add <4 x i64> %i.ady, %bin.rdx
  %bin.rdx2020 = add <4 x i64> %i.adz, %bin.rdx2019
  %i.aeb = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx2020) ; 3 uses
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br i1 %cmp.n, label %._crit_edge1512, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.adj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1511.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.aeb, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2021 = and i64 %i.kc, 2305843009213693948 ; 3 uses
  %i.aec = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2022 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2025, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi2023 = phi <4 x i64> [ %i.aec, %vec.epilog.ph ], [ %i.aeg, %vec.epilog.vector.body ]
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %index2022
  %wide.load2024 = load <4 x i16>, ptr %i.aed, align 2, !tbaa !78
  %i.aee = icmp ne <4 x i16> %wide.load2024, zeroinitializer
  %i.aef = zext <4 x i1> %i.aee to <4 x i64>
  %i.aeg = add <4 x i64> %vec.phi2023, %i.aef     ; 2 uses
  %index.next2025 = add nuw i64 %index2022, 4     ; 2 uses
  %i.aeh = icmp eq i64 %index.next2025, %n.vec2021
  br i1 %i.aeh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aei = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.aeg) ; 2 uses
  %cmp.n2026 = icmp eq i64 %i.kc, %n.vec2021
  br i1 %cmp.n2026, label %._crit_edge1512, label %.lr.ph1511.preheader

.lr.ph1511.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02621510.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec2021, %vec.epilog.middle.block ]
  %.02631509.ph = phi i64 [ 0, %iter.check ], [ %i.aeb, %vec.epilog.iter.check ], [ %i.aei, %vec.epilog.middle.block ]
  br label %.lr.ph1511

.thread1245:                                      ; preds = %.loopexit.split-lp1420, %.loopexit1419, %.loopexit.split-lp1426, %.loopexit1425
  %.sroa.01036.3 = phi ptr [ %.sroa.01036.01496, %.loopexit.split-lp1420 ], [ %.sroa.01036.01496, %.loopexit1419 ], [ %.sroa.01036.2, %.loopexit1425 ], [ %.sroa.01036.2, %.loopexit.split-lp1426 ] ; 2 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.01498, %.loopexit.split-lp1420 ], [ %.sroa.27.01498, %.loopexit1419 ], [ %.sroa.27.2, %.loopexit1425 ], [ %.sroa.27.2, %.loopexit.split-lp1426 ]
  %.pn370.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1422, %.loopexit.split-lp1420 ], [ %lpad.loopexit1421, %.loopexit1419 ], [ %lpad.loopexit1427, %.loopexit1425 ], [ %lpad.loopexit.split-lp1428, %.loopexit.split-lp1426 ]
  %i.aej = ptrtoint ptr %.sroa.27.3 to i64
  %i.aek = ptrtoint ptr %.sroa.01036.3 to i64
  %i.ael = sub i64 %i.aej, %i.aek
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01036.3, i64 noundef %i.ael) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

._crit_edge1512:                                  ; preds = %.lr.ph1511, %vec.epilog.middle.block, %middle.block
  %spec.select395.lcssa = phi i64 [ %i.aei, %vec.epilog.middle.block ], [ %i.aeb, %middle.block ], [ %spec.select395, %.lr.ph1511 ] ; 4 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !95
  %i.aep = load ptr, ptr %i.aem, align 8, !tbaa !98
  %i.aeq = ptrtoint ptr %i.aeo to i64
  %i.aer = ptrtoint ptr %i.aep to i64
  %i.aes = sub i64 %i.aeq, %i.aer
  %i.aet = ashr exact i64 %i.aes, 4
  %i.aeu = add i64 %spec.select395.lcssa, -1
  %or.cond6.not = icmp ult i64 %i.aeu, %i.aet
  br i1 %or.cond6.not, label %bb.fm, label %.lr.ph1515.preheader

.lr.ph1515.preheader:                             ; preds = %._crit_edge1512
  %i.aev = shl nuw nsw i64 %i.kc, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %.sroa.01068.01200, i8 0, i64 %i.aev, i1 false), !tbaa !78
  br label %.lr.ph1544

.lr.ph1511:                                       ; preds = %.lr.ph1511.preheader, %.lr.ph1511
  %.02621510 = phi i64 [ %i.aez, %.lr.ph1511 ], [ %.02621510.ph, %.lr.ph1511.preheader ] ; 2 uses
  %.02631509 = phi i64 [ %spec.select395, %.lr.ph1511 ], [ %.02631509.ph, %.lr.ph1511.preheader ]
  %i.aew = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %.02621510
  %i.aex = load i16, ptr %i.aew, align 2, !tbaa !78
  %.not364 = icmp ne i16 %i.aex, 0
  %i.aey = zext i1 %.not364 to i64
  %spec.select395 = add i64 %.02631509, %i.aey    ; 2 uses
  %i.aez = add nuw nsw i64 %.02621510, 1          ; 2 uses
  %exitcond1638.not = icmp eq i64 %i.aez, %i.kc
  br i1 %exitcond1638.not, label %._crit_edge1512, label %.lr.ph1511, !llvm.loop !248

bb.fm:                                            ; preds = %._crit_edge1512
  %i.afa = load i64, ptr %i.ad, align 8, !tbaa !92
  %i.afb = uitofp i64 %i.afa to double
  %i.afc = fmul nnan double %i.afb, 1.000000e-01
  %i.afd = fptoui double %i.afc to i64            ; 2 uses
  %i.afe = add nuw nsw i64 %i.kc, 7
  %i.aff = lshr i64 %i.afe, 3
  %i.afg = lshr i64 %i.kc, 6
  %i.afh = and i64 %i.afg, 36028797018963960
  %i.afi = add nuw nsw i64 %i.afh, 8
  %i.afj = add nuw nsw i64 %i.afi, %i.aff         ; 2 uses
  %.not328 = icmp ult i64 %i.afj, %i.afd
  br i1 %.not328, label %iter.check2051, label %.lr.ph1517.preheader

.lr.ph1517.preheader:                             ; preds = %bb.fm
  %i.afk = shl nuw nsw i64 %i.kc, 1
  call void @llvm.memset.p0.i64(ptr align 2 %.sroa.01068.01200, i8 0, i64 %i.afk, i1 false), !tbaa !78
  br label %.lr.ph1544

iter.check2051:                                   ; preds = %bb.fm
  %i.afl = sub nuw i64 %i.afd, %i.afj             ; 2 uses
  %min.iters.check2028 = icmp ult i64 %i.kc, 4
  br i1 %min.iters.check2028, label %.lr.ph1521.preheader, label %vector.main.loop.iter.check2029

vector.main.loop.iter.check2029:                  ; preds = %iter.check2051
  %min.iters.check2030 = icmp ult i64 %i.kc, 16
  br i1 %min.iters.check2030, label %vec.epilog.ph2055, label %vector.ph2031

vector.ph2031:                                    ; preds = %vector.main.loop.iter.check2029
  %i.afm = and i64 %i.kc, 12
  %n.vec2032 = and i64 %i.kc, 2305843009213693936 ; 4 uses
  br label %vector.body2033

vector.body2033:                                  ; preds = %vector.body2033, %vector.ph2031
  %index2034 = phi i64 [ 0, %vector.ph2031 ], [ %index.next2043, %vector.body2033 ] ; 2 uses
  %vec.phi2035 = phi <4 x i64> [ zeroinitializer, %vector.ph2031 ], [ %i.agh, %vector.body2033 ]
  %vec.phi2036 = phi <4 x i64> [ zeroinitializer, %vector.ph2031 ], [ %i.agi, %vector.body2033 ]
  %vec.phi2037 = phi <4 x i64> [ zeroinitializer, %vector.ph2031 ], [ %i.agj, %vector.body2033 ]
  %vec.phi2038 = phi <4 x i64> [ zeroinitializer, %vector.ph2031 ], [ %i.agk, %vector.body2033 ]
  %i.afn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %index2034 ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 24
  %wide.load2039 = load <4 x i16>, ptr %i.afn, align 2, !tbaa !78 ; 2 uses
  %wide.load2040 = load <4 x i16>, ptr %i.afo, align 2, !tbaa !78 ; 2 uses
  %wide.load2041 = load <4 x i16>, ptr %i.afp, align 2, !tbaa !78 ; 2 uses
  %wide.load2042 = load <4 x i16>, ptr %i.afq, align 2, !tbaa !78 ; 2 uses
  %i.afr = icmp eq <4 x i16> %wide.load2039, zeroinitializer
  %i.afs = icmp eq <4 x i16> %wide.load2040, zeroinitializer
  %i.aft = icmp eq <4 x i16> %wide.load2041, zeroinitializer
  %i.afu = icmp eq <4 x i16> %wide.load2042, zeroinitializer
  %i.afv = zext <4 x i16> %wide.load2039 to <4 x i64>
  %i.afw = zext <4 x i16> %wide.load2040 to <4 x i64>
  %i.afx = zext <4 x i16> %wide.load2041 to <4 x i64>
  %i.afy = zext <4 x i16> %wide.load2042 to <4 x i64>
  %i.afz = add nuw nsw <4 x i64> %i.afv, splat (i64 10)
  %i.aga = add nuw nsw <4 x i64> %i.afw, splat (i64 10)
  %i.agb = add nuw nsw <4 x i64> %i.afx, splat (i64 10)
  %i.agc = add nuw nsw <4 x i64> %i.afy, splat (i64 10)
  %i.agd = select <4 x i1> %i.afr, <4 x i64> zeroinitializer, <4 x i64> %i.afz
  %i.age = select <4 x i1> %i.afs, <4 x i64> zeroinitializer, <4 x i64> %i.aga
  %i.agf = select <4 x i1> %i.aft, <4 x i64> zeroinitializer, <4 x i64> %i.agb
  %i.agg = select <4 x i1> %i.afu, <4 x i64> zeroinitializer, <4 x i64> %i.agc
  %i.agh = add <4 x i64> %i.agd, %vec.phi2035     ; 2 uses
  %i.agi = add <4 x i64> %i.age, %vec.phi2036     ; 2 uses
  %i.agj = add <4 x i64> %i.agf, %vec.phi2037     ; 2 uses
  %i.agk = add <4 x i64> %i.agg, %vec.phi2038     ; 2 uses
  %index.next2043 = add nuw i64 %index2034, 16    ; 2 uses
  %i.agl = icmp eq i64 %index.next2043, %n.vec2032
  br i1 %i.agl, label %middle.block2044, label %vector.body2033, !llvm.loop !249

middle.block2044:                                 ; preds = %vector.body2033
  %bin.rdx2045 = add <4 x i64> %i.agi, %i.agh
  %bin.rdx2046 = add <4 x i64> %i.agj, %bin.rdx2045
  %bin.rdx2047 = add <4 x i64> %i.agk, %bin.rdx2046
  %i.agm = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx2047) ; 3 uses
  %cmp.n2048 = icmp eq i64 %i.kc, %n.vec2032
  br i1 %cmp.n2048, label %._crit_edge1522, label %vec.epilog.iter.check2053

vec.epilog.iter.check2053:                        ; preds = %middle.block2044
  %min.epilog.iters.check2054 = icmp eq i64 %i.afm, 0
  br i1 %min.epilog.iters.check2054, label %.lr.ph1521.preheader, label %vec.epilog.ph2055, !prof !132

vec.epilog.ph2055:                                ; preds = %vector.main.loop.iter.check2029, %vec.epilog.iter.check2053
  %vec.epilog.resume.val2049 = phi i64 [ %n.vec2032, %vec.epilog.iter.check2053 ], [ 0, %vector.main.loop.iter.check2029 ]
  %bc.merge.rdx2050 = phi i64 [ %i.agm, %vec.epilog.iter.check2053 ], [ 0, %vector.main.loop.iter.check2029 ]
  %n.vec2056 = and i64 %i.kc, 2305843009213693948 ; 3 uses
  %i.agn = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx2050, i64 0
  br label %vec.epilog.vector.body2057

vec.epilog.vector.body2057:                       ; preds = %vec.epilog.vector.body2057, %vec.epilog.ph2055
  %index2058 = phi i64 [ %vec.epilog.resume.val2049, %vec.epilog.ph2055 ], [ %index.next2061, %vec.epilog.vector.body2057 ] ; 2 uses
  %vec.phi2059 = phi <4 x i64> [ %i.agn, %vec.epilog.ph2055 ], [ %i.agt, %vec.epilog.vector.body2057 ]
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %index2058
  %wide.load2060 = load <4 x i16>, ptr %i.ago, align 2, !tbaa !78 ; 2 uses
  %i.agp = icmp eq <4 x i16> %wide.load2060, zeroinitializer
  %i.agq = zext <4 x i16> %wide.load2060 to <4 x i64>
  %i.agr = add nuw nsw <4 x i64> %i.agq, splat (i64 10)
  %i.ags = select <4 x i1> %i.agp, <4 x i64> zeroinitializer, <4 x i64> %i.agr
  %i.agt = add <4 x i64> %i.ags, %vec.phi2059     ; 2 uses
  %index.next2061 = add nuw i64 %index2058, 4     ; 2 uses
  %i.agu = icmp eq i64 %index.next2061, %n.vec2056
  br i1 %i.agu, label %vec.epilog.middle.block2062, label %vec.epilog.vector.body2057, !llvm.loop !250

vec.epilog.middle.block2062:                      ; preds = %vec.epilog.vector.body2057
  %i.agv = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.agt) ; 2 uses
  %cmp.n2063 = icmp eq i64 %i.kc, %n.vec2056
  br i1 %cmp.n2063, label %._crit_edge1522, label %.lr.ph1521.preheader

.lr.ph1521.preheader:                             ; preds = %iter.check2051, %vec.epilog.iter.check2053, %vec.epilog.middle.block2062
  %.02571519.ph = phi i64 [ 0, %iter.check2051 ], [ %n.vec2032, %vec.epilog.iter.check2053 ], [ %n.vec2056, %vec.epilog.middle.block2062 ]
  %.02581518.ph = phi i64 [ 0, %iter.check2051 ], [ %i.agm, %vec.epilog.iter.check2053 ], [ %i.agv, %vec.epilog.middle.block2062 ]
  br label %.lr.ph1521

._crit_edge1522:                                  ; preds = %.lr.ph1521, %vec.epilog.middle.block2062, %middle.block2044
  %.1259.lcssa = phi i64 [ %i.agv, %vec.epilog.middle.block2062 ], [ %i.agm, %middle.block2044 ], [ %.1259, %.lr.ph1521 ]
  %i.agw = icmp ugt i64 %.1259.lcssa, %i.afl
  br i1 %i.agw, label %bb.fn, label %.lr.ph1544

.lr.ph1521:                                       ; preds = %.lr.ph1521.preheader, %.lr.ph1521
  %.02571519 = phi i64 [ %i.ahc, %.lr.ph1521 ], [ %.02571519.ph, %.lr.ph1521.preheader ] ; 2 uses
  %.02581518 = phi i64 [ %.1259, %.lr.ph1521 ], [ %.02581518.ph, %.lr.ph1521.preheader ]
  %i.agx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %.02571519
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !78 ; 2 uses
  %.not339 = icmp eq i16 %i.agy, 0
  %i.agz = zext i16 %i.agy to i64
  %i.aha = add nuw nsw i64 %i.agz, 10
  %i.ahb = select i1 %.not339, i64 0, i64 %i.aha
  %.1259 = add i64 %i.ahb, %.02581518             ; 2 uses
  %i.ahc = add nuw nsw i64 %.02571519, 1          ; 2 uses
  %exitcond1639.not = icmp eq i64 %i.ahc, %i.kc
  br i1 %exitcond1639.not, label %._crit_edge1522, label %.lr.ph1521, !llvm.loop !251

bb.fn:                                            ; preds = %._crit_edge1522
  %i.ahd = icmp ugt i64 %spec.select395.lcssa, 384307168202282325
  br i1 %i.ahd, label %bb.fo, label %_ZNSt12_Vector_baseIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE11_M_allocateEm.exit.i

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #26
          to label %.noexc701 unwind label %.body.thread

.noexc701:                                        ; preds = %bb.fo
  unreachable

_ZNSt12_Vector_baseIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.fn
  %i.ahe = mul nuw nsw i64 %spec.select395.lcssa, 24
  %i.ahf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahe) #27
          to label %.lr.ph1529.preheader unwind label %.body.thread ; 3 uses

.lr.ph1529.preheader:                             ; preds = %_ZNSt12_Vector_baseIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE11_M_allocateEm.exit.i
  %i.ahg = getelementptr inbounds nuw [24 x i8], ptr %i.ahf, i64 %spec.select395.lcssa
  br label %.lr.ph1529

._crit_edge1530:                                  ; preds = %bb.gj
  %i.ahh = icmp eq ptr %.sroa.01031.1, %.sroa.13.1 ; 2 uses
  br i1 %i.ahh, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEEZNS4_12SerializeAllEvE3$_0EvT_SC_T0_.exit.thread", label %bb.fp

bb.fp:                                            ; preds = %._crit_edge1530
  %i.ahi = ptrtoint ptr %.sroa.13.1 to i64
  %i.ahj = ptrtoint ptr %.sroa.01031.1 to i64     ; 2 uses
  %i.ahk = sub i64 %i.ahi, %i.ahj                 ; 2 uses
  %i.ahl = sdiv exact i64 %i.ahk, 24
  %i.ahm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ahl, i1 true)
  %i.ahn = shl nuw nsw i64 %i.ahm, 1
  %i.aho = xor i64 %i.ahn, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.01031.1, ptr %.sroa.13.1, i64 noundef %i.aho)
  %i.ahp = icmp sgt i64 %i.ahk, 384
  br i1 %i.ahp, label %.lr.ph.i.i.i.i, label %.preheader.i30.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fp
  %i.ahq = getelementptr i8, ptr %.sroa.01031.1, i64 16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.01031.1, i64 24
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fv, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 24, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.fv ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.01031.1, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.fv ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01031.1, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.ahr = getelementptr i8, ptr %.pn18.i.i.i.i, i64 40
  %.val2.i.i.i.i.i = load i16, ptr %i.ahr, align 8, !tbaa !161 ; 4 uses
  %.val3.i.i.i.i.i = load i16, ptr %i.ahq, align 8, !tbaa !161
  %i.ahs = icmp ugt i16 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.ahs, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !162
  %i.aht = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 24
  br i1 %i.aht, label %bb.fs, label %bb.ft, !prof !163

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.01031.1, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i

bb.ft:                                            ; preds = %bb.fr
  %i.ahu = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahu, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.01031.1, i64 24, i1 false), !tbaa.struct !162
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i: ; preds = %bb.ft, %bb.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01031.1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %.sroa.06.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.0.019.i.ptr.i.i.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !149
  %i.ahv = getelementptr i8, ptr %.pn18.i.i.i.i, i64 16
  %.val3.i9.i.i.i.i.i = load i16, ptr %i.ahv, align 8, !tbaa !161
  %i.ahw = icmp ugt i16 %.val2.i.i.i.i.i, %.val3.i9.i.i.i.i.i
  br i1 %i.ahw, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fu, %.lr.ph.i.i.i.i.i
  %.sroa.08.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.fu ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.010.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !162
  %i.ahx = getelementptr i8, ptr %.sroa.08.010.i.i.i.i.i, i64 -32
  %.val3.i.i.i.i.i.i = load i16, ptr %i.ahx, align 8, !tbaa !161
  %i.ahy = icmp ugt i16 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.ahy, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !252

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.fu
  %.sroa.08.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.fu ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store <2 x i64> %.sroa.06.i.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.08.0.lcssa.i.i.i.i.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i, i64 16
  store i16 %.val2.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i, align 8, !tbaa !78
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !149
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.fv

bb.fv:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 24 ; 2 uses
  %i.ahz = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 384
  br i1 %i.ahz, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_SF_T0_.exit.i.i.i", label %bb.fq, !llvm.loop !253

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_SF_T0_.exit.i.i.i": ; preds = %bb.fv
  %i.aia = getelementptr inbounds nuw i8, ptr %.sroa.01031.1, i64 384 ; 2 uses
  %i.aib = icmp eq ptr %i.aia, %.sroa.13.1
  br i1 %i.aib, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEEZNS4_12SerializeAllEvE3$_0EvT_SC_T0_.exit.thread", label %.lr.ph.i17.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_SF_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i20.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.aig, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.aia, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_SF_T0_.exit.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i16.i.i.i)
  %.sroa.06.i.i15.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.0.06.i.i.i.i, align 8
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i, align 8, !tbaa !78 ; 3 uses
  %.sroa.5.0..val3.sroa_idx.i.i18.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i16.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..val3.sroa_idx.i.i18.i.i.i, i64 6, i1 false), !tbaa.struct !149
  %i.aic = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val3.i9.i.i19.i.i.i = load i16, ptr %i.aic, align 8, !tbaa !161
  %i.aid = icmp ugt i16 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i9.i.i19.i.i.i
  br i1 %i.aid, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i20.i.i.i"

.lr.ph.i.i24.i.i.i:                               ; preds = %.lr.ph.i17.i.i.i, %.lr.ph.i.i24.i.i.i
  %.sroa.08.010.i.i25.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i17.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i25.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.010.i.i25.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i26.i.i.i, i64 24, i1 false), !tbaa.struct !162
  %i.aie = getelementptr i8, ptr %.sroa.08.010.i.i25.i.i.i, i64 -32
  %.val3.i.i.i27.i.i.i = load i16, ptr %i.aie, align 8, !tbaa !161
  %i.aif = icmp ugt i16 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i.i.i27.i.i.i
  br i1 %i.aif, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i20.i.i.i", !llvm.loop !252

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i20.i.i.i": ; preds = %.lr.ph.i.i24.i.i.i, %.lr.ph.i17.i.i.i
  %.sroa.08.0.lcssa.i.i21.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i17.i.i.i ], [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ] ; 3 uses
  store <2 x i64> %.sroa.06.i.i15.i.i.i.sroa.0.0.copyload, ptr %.sroa.08.0.lcssa.i.i21.i.i.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i22.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i21.i.i.i, i64 16
  store i16 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i22.i.i.i, align 8, !tbaa !78
  %.sroa.5.0..val.sroa_idx.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i21.i.i.i, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..val.sroa_idx.i.i23.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i16.i.i.i, i64 6, i1 false), !tbaa.struct !149
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i16.i.i.i)
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 24 ; 2 uses
  %i.aih = icmp eq ptr %i.aig, %.sroa.13.1
  br i1 %i.aih, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEEZNS4_12SerializeAllEvE3$_0EvT_SC_T0_.exit.thread", label %.lr.ph.i17.i.i.i, !llvm.loop !254

.preheader.i30.i.i.i:                             ; preds = %bb.fp
  %.sroa.0.017.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01031.1, i64 24 ; 2 uses
  %i.aii = icmp eq ptr %.sroa.0.017.i31.i.i.i, %.sroa.13.1
  br i1 %i.aii, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEEZNS4_12SerializeAllEvE3$_0EvT_SC_T0_.exit.thread", label %.lr.ph.i32.i.i.i

.lr.ph.i32.i.i.i:                                 ; preds = %.preheader.i30.i.i.i
  %i.aij = getelementptr i8, ptr %.sroa.01031.1, i64 16
  br label %bb.fw

bb.fw:                                            ; preds = %bb.gc, %.lr.ph.i32.i.i.i
  %.sroa.0.019.i33.i.i.i = phi ptr [ %.sroa.0.017.i31.i.i.i, %.lr.ph.i32.i.i.i ], [ %.sroa.0.0.i43.i.i.i, %bb.gc ] ; 7 uses
  %.pn18.i34.i.i.i = phi ptr [ %.sroa.01031.1, %.lr.ph.i32.i.i.i ], [ %.sroa.0.019.i33.i.i.i, %bb.gc ] ; 5 uses
  %i.aik = getelementptr i8, ptr %.pn18.i34.i.i.i, i64 40
  %.val2.i.i35.i.i.i = load i16, ptr %i.aik, align 8, !tbaa !161 ; 4 uses
  %.val3.i.i36.i.i.i = load i16, ptr %i.aij, align 8, !tbaa !161
  %i.ail = icmp ugt i16 %.val2.i.i35.i.i.i, %.val3.i.i36.i.i.i
  br i1 %i.ail, label %bb.fx, label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i33.i.i.i, i64 24, i1 false), !tbaa.struct !162
  %i.aim = ptrtoint ptr %.sroa.0.019.i33.i.i.i to i64
  %i.ain = sub i64 %i.aim, %i.ahj                 ; 4 uses
  %i.aio = icmp sgt i64 %i.ain, 24
  br i1 %i.aio, label %bb.fy, label %bb.fz, !prof !163

bb.fy:                                            ; preds = %bb.fx
  %i.aip = getelementptr inbounds nuw i8, ptr %.pn18.i34.i.i.i, i64 48
  %.neg23.i49.i.i.i = udiv exact i64 %i.ain, 24
  %.neg23.neg.i50.i.i.i = sub nsw i64 0, %.neg23.i49.i.i.i
  %i.aiq = getelementptr inbounds [24 x i8], ptr %i.aip, i64 %.neg23.neg.i50.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aiq, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.01031.1, i64 %i.ain, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i48.i.i.i

bb.fz:                                            ; preds = %bb.fx
  %i.air = icmp eq i64 %i.ain, 24
  br i1 %i.air, label %bb.ga, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i48.i.i.i

bb.ga:                                            ; preds = %bb.fz
  %i.ais = getelementptr inbounds nuw i8, ptr %.pn18.i34.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ais, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.01031.1, i64 24, i1 false), !tbaa.struct !162
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i48.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i48.i.i.i: ; preds = %bb.ga, %bb.fz, %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01031.1, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !162
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i29.i.i.i)
  %.sroa.06.i.i28.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.0.019.i33.i.i.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i37.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i34.i.i.i, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i29.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..val3.sroa_idx.i.i37.i.i.i, i64 6, i1 false), !tbaa.struct !149
end_hunk_1
begin_hunk_2_@_ZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEv:bb.a
  store i64 %i.ajc, ptr %.sroa.61025.0..sroa_idx1026, align 8, !tbaa !65
  %.sroa.7.0..sroa_idx1028 = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  store i16 %i.aja, ptr %.sroa.7.0..sroa_idx1028, align 8, !tbaa !78
  %i.ajq = icmp sgt i64 %i.ajf, 0
  br i1 %i.ajq, label %bb.gh, label %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i

bb.gh:                                            ; preds = %.noexc706
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ajo, ptr align 8 %.sroa.01031.01524, i64 %i.ajf, i1 false)
  br label %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i

_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i: ; preds = %bb.gh, %.noexc706
  %.not.i21.i.i.i = icmp eq ptr %.sroa.01031.01524, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01031.01524, i64 noundef %i.ajf) #28
  br label %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.gi, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i
  %i.ajr = getelementptr inbounds nuw [24 x i8], ptr %i.ajo, i64 %i.ajm
  br label %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.ge
  %.sroa.01031.4 = phi ptr [ %i.ajo, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.01031.01524, %bb.ge ]
  %.pn = phi ptr [ %i.ajp, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.13.01525, %bb.ge ]
  %.sroa.22.4 = phi ptr [ %i.ajr, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.22.01526, %bb.ge ]
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  br label %bb.gj

.loopexit1410:                                    ; preds = %_ZNKSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1412 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1411:                           ; preds = %bb.gg
  %lpad.loopexit.split-lp1413 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gj:                                            ; preds = %.lr.ph1529, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE9push_backEOS3_.exit
  %.sroa.01031.1 = phi ptr [ %.sroa.01031.01524, %.lr.ph1529 ], [ %.sroa.01031.4, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE9push_backEOS3_.exit ] ; 24 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.01525, %.lr.ph1529 ], [ %.sroa.13.3, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE9push_backEOS3_.exit ] ; 9 uses
  %.sroa.22.1 = phi ptr [ %.sroa.22.01526, %.lr.ph1529 ], [ %.sroa.22.4, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EE9push_backEOS3_.exit ] ; 4 uses
  %i.ajs = add nuw i64 %.02561527, 1              ; 2 uses
  %exitcond1640.not = icmp eq i64 %i.ajs, %i.kc
  br i1 %exitcond1640.not, label %._crit_edge1530, label %.lr.ph1529, !llvm.loop !255

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEEZNS4_12SerializeAllEvE3$_0EvT_SC_T0_.exit.thread": ; preds = %bb.gc, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_T0_.exit.i20.i.i.i", %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12SerializeAllEvE3$_0EEEvT_SF_T0_.exit.i.i.i", %._crit_edge1530, %.preheader.i30.i.i.i
  %i.ajt = add nuw nsw i64 %i.kc, 63              ; 2 uses
  %i.aju = lshr i64 %i.ajt, 3
  %i.ajv = and i64 %i.aju, 576460752303423480
  %i.ajw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajv) #27
          to label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ; 5 uses

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEEZNS4_12SerializeAllEvE3$_0EvT_SC_T0_.exit.thread"
  %i.ajx = lshr i64 %i.ajt, 6                     ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ajx, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ajw, i8 0, i64 %.idx.i, i1 false)
  br i1 %i.ahh, label %._crit_edge1537, label %.lr.ph1536

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSt6vectorIS5_SaIS5_EEEEZNS4_12SerializeAllEvE3$_0EvT_SC_T0_.exit.thread"
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge1537:                                  ; preds = %bb.gl, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ajz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 14 uses
  store ptr %i.ajz, ptr %11, align 8, !tbaa !91
  %i.aka = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.aka, align 8, !tbaa !92
  store i8 0, ptr %i.ajz, align 8, !tbaa !62
  br label %.lr.ph1540

.lr.ph1536:                                       ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, %bb.gl
  %.02511535 = phi i64 [ %.1252, %bb.gl ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ] ; 3 uses
  %.sroa.01012.01534 = phi ptr [ %i.akp, %bb.gl ], [ %.sroa.01031.1, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ] ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.01012.01534, i64 8 ; 2 uses
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !268
  %i.akd = add i64 %i.akc, %.02511535
  %.not332 = icmp ugt i64 %i.akd, %i.afl
  br i1 %.not332, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %.lr.ph1536
  %i.ake = load i64, ptr %.sroa.01012.01534, align 8, !tbaa !269 ; 3 uses
  %i.akf = sdiv i64 %i.ake, 64
  %i.akg = getelementptr inbounds [8 x i8], ptr %i.ajw, i64 %i.akf
  %i.akh = and i64 %i.ake, -9223372036854775745
  %i.aki = icmp ugt i64 %i.akh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i709 = select i1 %i.aki, i64 -8, i64 0
  %storemerge.i.i.i.i.i710 = getelementptr inbounds i8, ptr %i.akg, i64 %storemerge.idx.i.i.i.i.i709 ; 2 uses
  %i.akj = and i64 %i.ake, 63
  %i.akk = shl nuw i64 1, %i.akj
  %i.akl = load i64, ptr %storemerge.i.i.i.i.i710, align 8, !tbaa !65
  %i.akm = or i64 %i.akk, %i.akl
  store i64 %i.akm, ptr %storemerge.i.i.i.i.i710, align 8, !tbaa !65
  %i.akn = load i64, ptr %i.akb, align 8, !tbaa !268
  %i.ako = add i64 %i.akn, %.02511535
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %.lr.ph1536
  %.1252 = phi i64 [ %i.ako, %bb.gk ], [ %.02511535, %.lr.ph1536 ]
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.01012.01534, i64 24 ; 2 uses
  %i.akq = icmp eq ptr %i.akp, %.sroa.13.1
  br i1 %i.akq, label %._crit_edge1537, label %.lr.ph1536

._crit_edge1541:                                  ; preds = %.critedge.thread
  %i.akr = load ptr, ptr %9, align 8, !tbaa !104  ; 6 uses
  %i.aks = icmp eq ptr %i.akr, %i.uq
  %i.akt = load ptr, ptr %11, align 8, !tbaa !104 ; 5 uses
  %i.aku = icmp eq ptr %i.akt, %i.ajz             ; 2 uses
  %.pre1670 = load i64, ptr %i.aka, align 8, !tbaa !92 ; 5 uses
  br i1 %i.aks, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %._crit_edge1541
  br i1 %i.aku, label %bb.gm, label %.thread.i713

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %._crit_edge1541
  br i1 %i.aku, label %bb.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.gm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.akv = icmp ult i64 %.pre1670, 16
  call void @llvm.assume(i1 %i.akv)
  switch i64 %.pre1670, label %bb.go [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.gn
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.akw = load i8, ptr %i.akt, align 1, !tbaa !62
  store i8 %i.akw, ptr %i.akr, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.go:                                            ; preds = %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.akr, ptr align 1 %i.akt, i64 %.pre1670, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.go, %bb.gn, %bb.gm
  %i.akx = load i64, ptr %i.aka, align 8, !tbaa !92 ; 2 uses
  store i64 %i.akx, ptr %i.up, align 8, !tbaa !92
  %i.aky = load ptr, ptr %9, align 8, !tbaa !104
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 %i.akx
  store i8 0, ptr %i.akz, align 1, !tbaa !62
  %.pre.i712 = load ptr, ptr %11, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i713:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.akt, ptr %9, align 8, !tbaa !104
  store i64 %.pre1670, ptr %i.up, align 8, !tbaa !92
  %i.ala = load i64, ptr %i.ajz, align 8, !tbaa !62
  store i64 %i.ala, ptr %i.uq, align 8, !tbaa !62
  br label %bb.gq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.alb = load i64, ptr %i.uq, align 8, !tbaa !62
  store ptr %i.akt, ptr %9, align 8, !tbaa !104
  store i64 %.pre1670, ptr %i.up, align 8, !tbaa !92
  %i.alc = load i64, ptr %i.ajz, align 8, !tbaa !62
  store i64 %i.alc, ptr %i.uq, align 8, !tbaa !62
  %.not.i711 = icmp eq ptr %i.akr, null
  br i1 %.not.i711, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.akr, ptr %11, align 8, !tbaa !104
  store i64 %i.alb, ptr %i.ajz, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.gq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i713
  store ptr %i.ajz, ptr %11, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.gp, %bb.gq
  %i.ald = phi ptr [ %.pre.i712, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.akr, %bb.gp ], [ %i.ajz, %bb.gq ]
  store i64 0, ptr %i.aka, align 8, !tbaa !92
  store i8 0, ptr %i.ald, align 1, !tbaa !62
  %i.ale = load ptr, ptr %11, align 8, !tbaa !104 ; 2 uses
  %i.alf = icmp eq ptr %i.ale, %i.ajz
  br i1 %i.alf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.alg = load i64, ptr %i.ajz, align 8, !tbaa !62
  %i.alh = add i64 %i.alg, 1
  call void @_ZdlPvm(ptr noundef %i.ale, i64 noundef %i.alh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.idx2066 = shl nuw nsw i64 %i.ajx, 3
  call void @_ZdlPvm(ptr noundef %i.ajw, i64 noundef %.idx2066) #28
  %.not.i.i.i715 = icmp eq ptr %.sroa.01031.1, null
  br i1 %.not.i.i.i715, label %.lr.ph1544, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ali = ptrtoint ptr %.sroa.22.1 to i64
  %i.alj = ptrtoint ptr %.sroa.01031.1 to i64
  %i.alk = sub i64 %i.ali, %i.alj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01031.1, i64 noundef %i.alk) #28
  br label %.lr.ph1544

.lr.ph1540:                                       ; preds = %._crit_edge1537, %.critedge.thread
  %.02501538 = phi i64 [ %i.amq, %.critedge.thread ], [ 0, %._crit_edge1537 ] ; 7 uses
  %i.all = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %.02501538 ; 2 uses
  %i.alm = load i16, ptr %i.all, align 2, !tbaa !78 ; 3 uses
  %.not329 = icmp eq i16 %i.alm, 0
  br i1 %.not329, label %.critedge.thread, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph1540
  %14 = lshr i64 %.02501538, 6
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.ajw, i64 %14
  %i.alo = and i64 %.02501538, 63
  %i.alp = shl nuw i64 1, %i.alo
  %i.alq = load i64, ptr %i.aln, align 8, !tbaa !65
  %i.alr = and i64 %i.alq, %i.alp
  %.not1350 = icmp eq i64 %i.alr, 0
  br i1 %.not1350, label %bb.gt, label %.critedge

bb.gt:                                            ; preds = %bb.gs
  store i16 0, ptr %i.all, align 2, !tbaa !78
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01092.0116411821188, i64 %.02501538
  store i32 -1, ptr %i.als, align 4, !tbaa !70
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01059.0, i64 %.02501538
  store i32 -1, ptr %i.alt, align 4, !tbaa !70
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.gs
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01092.0116411821188, i64 %.02501538 ; 2 uses
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !70
  %i.alw = load i64, ptr %i.aka, align 8, !tbaa !92 ; 6 uses
  %i.alx = trunc i64 %i.alw to i32
  store i32 %i.alx, ptr %i.alu, align 4, !tbaa !70
  %i.aly = load ptr, ptr %9, align 8, !tbaa !104
  %i.alz = zext i32 %i.alv to i64
  %i.ama = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.alz ; 3 uses
  %i.amb = zext i16 %i.alm to i64                 ; 4 uses
  %i.amc = sub i64 9223372036854775807, %i.alw
  %i.amd = icmp ult i64 %i.amc, %i.amb
  br i1 %i.amd, label %bb.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i720

bb.gu:                                            ; preds = %.critedge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #26
          to label %.noexc727 unwind label %.loopexit.split-lp1405

.noexc727:                                        ; preds = %bb.gu
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i720: ; preds = %.critedge
  %i.ame = add i64 %i.alw, %i.amb                 ; 3 uses
  %i.amf = load ptr, ptr %11, align 8, !tbaa !104 ; 2 uses
  %i.amg = icmp eq ptr %i.amf, %i.ajz
  br i1 %i.amg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i726, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i721

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i726: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i720
  %i.amh = icmp ult i64 %i.alw, 16
  call void @llvm.assume(i1 %i.amh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i722

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i721: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i720
  %i.ami = load i64, ptr %i.ajz, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i722

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i722: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i721, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i726
  %i.amj = phi i64 [ %i.ami, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i721 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i726 ]
  %.not.i.i723 = icmp ugt i64 %i.ame, %i.amj
  br i1 %.not.i.i723, label %bb.gy, label %bb.gv

bb.gv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i722
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.alw ; 2 uses
  %cond.i.i725 = icmp eq i16 %i.alm, 1
  br i1 %cond.i.i725, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.aml = load i8, ptr %i.ama, align 1, !tbaa !62
  store i8 %i.aml, ptr %i.amk, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amk, ptr align 1 %i.ama, i64 %i.amb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729

bb.gy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i722
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.alw, i64 noundef 0, ptr noundef %i.ama, i64 noundef %i.amb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729 unwind label %.loopexit1404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729: ; preds = %bb.gy, %bb.gw, %bb.gx
  store i64 %i.ame, ptr %i.aka, align 8, !tbaa !92
  %i.amm = load ptr, ptr %11, align 8, !tbaa !104
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 %i.ame
  store i8 0, ptr %i.amn, align 1, !tbaa !62
  br label %.critedge.thread

.loopexit1404:                                    ; preds = %bb.gy
  %lpad.loopexit1406 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

.loopexit.split-lp1405:                           ; preds = %bb.gu
  %lpad.loopexit.split-lp1407 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.gz:                                            ; preds = %.loopexit.split-lp1405, %.loopexit1404
  %lpad.phi1408 = phi { ptr, i32 } [ %lpad.loopexit1406, %.loopexit1404 ], [ %lpad.loopexit.split-lp1407, %.loopexit.split-lp1405 ]
  %i.amo = load ptr, ptr %11, align 8, !tbaa !104 ; 2 uses
  %i.amp = icmp eq ptr %i.amo, %i.ajz
  br i1 %i.amp, label %.thread1265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730

.critedge.thread:                                 ; preds = %.lr.ph1540, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729, %bb.gt
  %i.amq = add nuw i64 %.02501538, 1              ; 2 uses
  %exitcond1641.not = icmp eq i64 %i.amq, %i.kc
  br i1 %exitcond1641.not, label %._crit_edge1541, label %.lr.ph1540, !llvm.loop !256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730: ; preds = %bb.gz
  %i.amr = load i64, ptr %i.ajz, align 8, !tbaa !62
  %i.ams = add i64 %i.amr, 1
  call void @_ZdlPvm(ptr noundef %i.amo, i64 noundef %i.ams) #28
  br label %.thread1265

.thread1265:                                      ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.idx = shl nuw nsw i64 %i.ajx, 3
  call void @_ZdlPvm(ptr noundef %i.ajw, i64 noundef %.idx) #28
  br label %.body

.body:                                            ; preds = %.loopexit1410, %.loopexit.split-lp1411, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, %.thread1265
  %.sroa.01031.01452 = phi ptr [ %.sroa.01031.1, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %.sroa.01031.1, %.thread1265 ], [ %.sroa.01031.01524, %.loopexit1410 ], [ %.sroa.01031.01524, %.loopexit.split-lp1411 ] ; 3 uses
  %.sroa.22.01446 = phi ptr [ %.sroa.22.1, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %.sroa.22.1, %.thread1265 ], [ %.sroa.22.01526, %.loopexit1410 ], [ %.sroa.22.01526, %.loopexit.split-lp1411 ]
  %.pn337 = phi { ptr, i32 } [ %i.ajy, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %lpad.phi1408, %.thread1265 ], [ %lpad.loopexit1412, %.loopexit1410 ], [ %lpad.loopexit.split-lp1413, %.loopexit.split-lp1411 ] ; 2 uses
  %.not.i.i.i735 = icmp eq ptr %.sroa.01031.01452, null
  br i1 %.not.i.i.i735, label %_ZNSt6vectorIhSaIhEED2Ev.exit699, label %bb.ha

bb.ha:                                            ; preds = %.body
  %i.amt = ptrtoint ptr %.sroa.22.01446 to i64
  %i.amu = ptrtoint ptr %.sroa.01031.01452 to i64
  %i.amv = sub i64 %i.amt, %i.amu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01031.01452, i64 noundef %i.amv) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EED2Ev.exit.thread: ; preds = %.preheader1424
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  br label %._crit_edge1545

.lr.ph1544:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.gr, %.lr.ph1515.preheader, %._crit_edge1522, %.lr.ph1517.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.amy = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.he

._crit_edge1545:                                  ; preds = %bb.hm, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EED2Ev.exit.thread
  %i.anb = phi ptr [ %i.amw, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EED2Ev.exit.thread ], [ %i.aem, %bb.hm ] ; 4 uses
  %i.anc = phi ptr [ %i.amx, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EED2Ev.exit.thread ], [ %i.aen, %bb.hm ] ; 2 uses
  %.0249.lcssa = phi i64 [ 0, %_ZNSt6vectorIZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEvE14ChainCandidateSaIS3_EED2Ev.exit.thread ], [ %spec.select396, %bb.hm ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.0249.lcssa, ptr %i.m, align 8, !tbaa !65
  %i.and = load i64, ptr %i.ad, align 8, !tbaa !92 ; 5 uses
  %i.ane = and i64 %i.and, -8
  %i.anf = icmp eq i64 %i.ane, 9223372036854775800
  br i1 %i.anf, label %bb.hb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i737

bb.hb:                                            ; preds = %._crit_edge1545
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #26
          to label %.noexc742 unwind label %bb.hs

.noexc742:                                        ; preds = %bb.hb
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i737: ; preds = %._crit_edge1545
  %i.ang = add nsw i64 %i.and, 8                  ; 3 uses
  %i.anh = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %i.ani = icmp eq ptr %i.anh, %i.ak
  br i1 %i.ani, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i741, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i738

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i741: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i737
  %i.anj = icmp ult i64 %i.and, 16
  call void @llvm.assume(i1 %i.anj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i739

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i738: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i737
  %i.ank = load i64, ptr %i.ak, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i739

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i739: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i738, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i741
  %i.anl = phi i64 [ %i.ank, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i738 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i741 ]
  %.not.i.i.i740 = icmp ugt i64 %i.ang, %i.anl
  br i1 %.not.i.i.i740, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i739
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anh, i64 %i.and
  store i64 %.0249.lcssa, ptr %i.anm, align 1
  br label %bb.hn

bb.hd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i739
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.and, i64 noundef 0, ptr noundef nonnull %i.m, i64 noundef 8)
          to label %bb.hn unwind label %bb.hs

bb.he:                                            ; preds = %.lr.ph1544, %bb.hm
  %i.ann = phi ptr [ null, %.lr.ph1544 ], [ %i.aoo, %bb.hm ] ; 6 uses
  %i.ano = phi ptr [ null, %.lr.ph1544 ], [ %i.aop, %bb.hm ] ; 4 uses
  %i.anp = phi ptr [ null, %.lr.ph1544 ], [ %i.aox, %bb.hm ] ; 4 uses
  %i.anq = phi i64 [ 0, %.lr.ph1544 ], [ %i.aoz, %bb.hm ]
  %.02481543 = phi i64 [ 0, %.lr.ph1544 ], [ %i.apb, %bb.hm ] ; 2 uses
  %.02491542 = phi i64 [ 0, %.lr.ph1544 ], [ %spec.select396, %bb.hm ]
  %i.anr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01068.01200, i64 %.02481543
  %i.ans = load i16, ptr %i.anr, align 2, !tbaa !78
  %.not1349 = icmp ne i16 %i.ans, 0               ; 2 uses
  %i.ant = and i64 %i.anq, 63
  %i.anu = icmp eq i64 %i.ant, 0
  br i1 %i.anu, label %bb.hf, label %_ZNSt6vectorImSaImEE9push_backEOm.exit.i
end_hunk_2
