Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29984
inline.NumDeleted: 10453
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_:bb.a
  %i.pw = icmp sgt i32 %i.pp, 0
  %or.cond11 = and i1 %i.pw, %.not125
  br i1 %or.cond11, label %.preheader, label %.critedge7.thread

.preheader:                                       ; preds = %bb.af
  %i.px = load ptr, ptr %0, align 8, !tbaa !1981
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader, %bb.ah
  %.0 = phi i32 [ %i.qd, %bb.ah ], [ %i.pp, %.preheader ] ; 4 uses
  %i.py = zext nneg i32 %.0 to i64
  %i.pz = getelementptr i8, ptr %i.px, i64 %i.py
  %i.qa = getelementptr i8, ptr %i.pz, i64 -1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !254
  %i.qc = icmp eq i8 %i.qb, 48
  br i1 %i.qc, label %bb.ah, label %.critedge7.thread

bb.ah:                                            ; preds = %bb.ag
  %i.qd = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.ag, label %.critedge7

.critedge7:                                       ; preds = %bb.ah, %.thread
  %.099211 = phi i32 [ %spec.select133, %.thread ], [ %i.po, %bb.ah ] ; 2 uses
  %.not217 = icmp eq i32 %.099211, 0
  br i1 %.not217, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.ag, %bb.af, %.critedge7
  %.1216 = phi i32 [ 0, %.critedge7 ], [ %i.pp, %bb.af ], [ %.0, %bb.ag ] ; 5 uses
  %.099211215 = phi i32 [ %.099211, %.critedge7 ], [ %i.po, %bb.af ], [ %i.po, %bb.ag ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qf = load i8, ptr %i.qe, align 8, !tbaa !1984
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  store i8 %i.qf, ptr %i.pn, align 1, !tbaa !254
  %i.qh = icmp slt i32 %.099211215, 1
  br i1 %i.qh, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, label %bb.ai

bb.ai:                                            ; preds = %.critedge7.thread
  %i.qi = zext nneg i32 %.099211215 to i64        ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qg, i8 48, i64 %i.qi, i1 false)
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187:           ; preds = %.critedge7.thread, %bb.ai
  %.0.i.i186 = phi ptr [ %i.qg, %.critedge7.thread ], [ %i.qj, %bb.ai ] ; 7 uses
  %i.qk = load ptr, ptr %0, align 8, !tbaa !1981  ; 7 uses
  %i.ql = sext i32 %.1216 to i64                  ; 6 uses
  %i.qm = getelementptr inbounds i8, ptr %i.qk, i64 %i.ql
  %.not9.i.i188 = icmp eq i32 %.1216, 0
  br i1 %.not9.i.i188, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %iter.check367

iter.check367:                                    ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187
  %i.qn = ptrtoaddr ptr %i.qk to i64              ; 2 uses
  %.0.i.i186350 = ptrtoaddr ptr %.0.i.i186 to i64
  %min.iters.check351 = icmp ult i32 %.1216, 8
  %i.qo = sub i64 %i.qn, %.0.i.i186350
  %diff.check353 = icmp ugt i64 %i.qo, -32
  %or.cond531 = select i1 %min.iters.check351, i1 true, i1 %diff.check353
  br i1 %or.cond531, label %.lr.ph.i.i189.preheader, label %vector.main.loop.iter.check354

vector.main.loop.iter.check354:                   ; preds = %iter.check367
  %min.iters.check355 = icmp ult i32 %.1216, 32
  br i1 %min.iters.check355, label %vec.epilog.ph371, label %vector.ph356

vector.ph356:                                     ; preds = %vector.main.loop.iter.check354
  %n.vec357 = and i64 %i.ql, -32                  ; 5 uses
  %i.qp = getelementptr i8, ptr %i.qk, i64 %n.vec357
  %i.qq = getelementptr i8, ptr %.0.i.i186, i64 %n.vec357 ; 2 uses
  br label %vector.body358

vector.body358:                                   ; preds = %vector.ph356, %vector.body358
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next364, %vector.body358 ] ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.qk, i64 %index359 ; 2 uses
  %next.gep361 = getelementptr i8, ptr %.0.i.i186, i64 %index359 ; 2 uses
  %i.qr = getelementptr i8, ptr %next.gep360, i64 16
  %wide.load362 = load <16 x i8>, ptr %next.gep360, align 1, !tbaa !254
  %wide.load363 = load <16 x i8>, ptr %i.qr, align 1, !tbaa !254
  %i.qs = getelementptr i8, ptr %next.gep361, i64 16
  store <16 x i8> %wide.load362, ptr %next.gep361, align 1, !tbaa !254
  store <16 x i8> %wide.load363, ptr %i.qs, align 1, !tbaa !254
  %index.next364 = add nuw i64 %index359, 32      ; 2 uses
  %i.qt = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.qt, label %middle.block365, label %vector.body358, !llvm.loop !6135

middle.block365:                                  ; preds = %vector.body358
  %cmp.n366 = icmp eq i64 %n.vec357, %i.ql
  br i1 %cmp.n366, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block365
  %i.qu = and i32 %.1216, 24
  %min.epilog.iters.check370 = icmp eq i32 %i.qu, 0
  br i1 %min.epilog.iters.check370, label %.lr.ph.i.i189.preheader, label %vec.epilog.ph371, !prof !515

vec.epilog.ph371:                                 ; preds = %vector.main.loop.iter.check354, %vec.epilog.iter.check368
  %vec.epilog.resume.val372 = phi i64 [ %n.vec357, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check354 ]
  %n.vec373 = and i64 %i.ql, -8                   ; 4 uses
  %i.qv = getelementptr i8, ptr %i.qk, i64 %n.vec373
  %i.qw = getelementptr i8, ptr %.0.i.i186, i64 %n.vec373 ; 2 uses
  br label %vec.epilog.vector.body374

vec.epilog.vector.body374:                        ; preds = %vec.epilog.vector.body374, %vec.epilog.ph371
  %index375 = phi i64 [ %vec.epilog.resume.val372, %vec.epilog.ph371 ], [ %index.next379, %vec.epilog.vector.body374 ] ; 3 uses
  %next.gep376 = getelementptr i8, ptr %i.qk, i64 %index375
  %next.gep377 = getelementptr i8, ptr %.0.i.i186, i64 %index375
  %wide.load378 = load <8 x i8>, ptr %next.gep376, align 1, !tbaa !254
  store <8 x i8> %wide.load378, ptr %next.gep377, align 1, !tbaa !254
  %index.next379 = add nuw i64 %index375, 8       ; 2 uses
  %i.qx = icmp eq i64 %index.next379, %n.vec373
  br i1 %i.qx, label %vec.epilog.middle.block380, label %vec.epilog.vector.body374, !llvm.loop !6136

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body374
  %cmp.n381 = icmp eq i64 %n.vec373, %i.ql
  br i1 %cmp.n381, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %iter.check367, %vec.epilog.iter.check368, %vec.epilog.middle.block380
  %.011.i.i190.ph = phi ptr [ %i.qk, %iter.check367 ], [ %i.qp, %vec.epilog.iter.check368 ], [ %i.qv, %vec.epilog.middle.block380 ] ; 3 uses
  %.0810.i.i191.ph = phi ptr [ %.0.i.i186, %iter.check367 ], [ %i.qq, %vec.epilog.iter.check368 ], [ %i.qw, %vec.epilog.middle.block380 ] ; 2 uses
  %i.qy = add i64 %i.qn, %i.ql                    ; 2 uses
  %.011.i.i190.ph549 = ptrtoaddr ptr %.011.i.i190.ph to i64 ; 2 uses
  %i.qz = sub i64 %i.qy, %.011.i.i190.ph549
  %xtraiter550 = and i64 %i.qz, 7                 ; 2 uses
  %lcmp.mod551.not = icmp eq i64 %xtraiter550, 0
  br i1 %lcmp.mod551.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol

.lr.ph.i.i189.prol:                               ; preds = %.lr.ph.i.i189.preheader, %.lr.ph.i.i189.prol
  %.011.i.i190.prol = phi ptr [ %i.rb, %.lr.ph.i.i189.prol ], [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %.0810.i.i191.prol = phi ptr [ %i.rc, %.lr.ph.i.i189.prol ], [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %prol.iter552 = phi i64 [ %prol.iter552.next, %.lr.ph.i.i189.prol ], [ 0, %.lr.ph.i.i189.preheader ]
  %i.ra = load i8, ptr %.011.i.i190.prol, align 1, !tbaa !254
  store i8 %i.ra, ptr %.0810.i.i191.prol, align 1, !tbaa !254
  %i.rb = getelementptr inbounds nuw i8, ptr %.011.i.i190.prol, i64 1 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0810.i.i191.prol, i64 1 ; 3 uses
  %prol.iter552.next = add i64 %prol.iter552, 1   ; 2 uses
  %prol.iter552.cmp.not = icmp eq i64 %prol.iter552.next, %xtraiter550
  br i1 %prol.iter552.cmp.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol, !llvm.loop !6137

.lr.ph.i.i189.prol.loopexit:                      ; preds = %.lr.ph.i.i189.prol, %.lr.ph.i.i189.preheader
  %.lcssa540.unr = phi ptr [ poison, %.lr.ph.i.i189.preheader ], [ %i.rc, %.lr.ph.i.i189.prol ]
  %.011.i.i190.unr = phi ptr [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ], [ %i.rb, %.lr.ph.i.i189.prol ]
  %.0810.i.i191.unr = phi ptr [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ], [ %i.rc, %.lr.ph.i.i189.prol ]
  %i.rd = sub i64 %.011.i.i190.ph549, %i.qy
  %i.re = icmp ugt i64 %i.rd, -8
  br i1 %i.re, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189
  %.011.i.i190 = phi ptr [ %i.sb, %.lr.ph.i.i189 ], [ %.011.i.i190.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %.0810.i.i191 = phi ptr [ %i.sc, %.lr.ph.i.i189 ], [ %.0810.i.i191.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %i.rf = load i8, ptr %.011.i.i190, align 1, !tbaa !254
  store i8 %i.rf, ptr %.0810.i.i191, align 1, !tbaa !254
  %i.rg = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 1
  %i.rh = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 1
  %i.ri = load i8, ptr %i.rg, align 1, !tbaa !254
  store i8 %i.ri, ptr %i.rh, align 1, !tbaa !254
  %i.rj = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 2
  %i.rk = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 2
  %i.rl = load i8, ptr %i.rj, align 1, !tbaa !254
  store i8 %i.rl, ptr %i.rk, align 1, !tbaa !254
  %i.rm = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 3
  %i.rn = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 3
  %i.ro = load i8, ptr %i.rm, align 1, !tbaa !254
  store i8 %i.ro, ptr %i.rn, align 1, !tbaa !254
  %i.rp = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 4
  %i.rr = load i8, ptr %i.rp, align 1, !tbaa !254
  store i8 %i.rr, ptr %i.rq, align 1, !tbaa !254
  %i.rs = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 5
  %i.rt = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 5
  %i.ru = load i8, ptr %i.rs, align 1, !tbaa !254
  store i8 %i.ru, ptr %i.rt, align 1, !tbaa !254
  %i.rv = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 6
  %i.rw = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 6
  %i.rx = load i8, ptr %i.rv, align 1, !tbaa !254
  store i8 %i.rx, ptr %i.rw, align 1, !tbaa !254
  %i.ry = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 7
  %i.rz = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 7
  %i.sa = load i8, ptr %i.ry, align 1, !tbaa !254
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !254
  %i.sb = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 8 ; 2 uses
  %.not.i.i192.7 = icmp eq ptr %i.sb, %i.qm
  br i1 %.not.i.i192.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189, !llvm.loop !6138

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176: ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189, %bb.ab, %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171, %middle.block365, %vec.epilog.middle.block380, %middle.block472, %vec.epilog.middle.block487, %.critedge, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155, %bb.s, %bb.r, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, %bb.ad, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183, %.critedge7, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit
  %.1101 = phi ptr [ %i.cy, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit ], [ %i.pn, %.critedge7 ], [ %i.ic, %bb.s ], [ %.6, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153 ], [ %i.hw, %bb.r ], [ %.08.lcssa.i.i182, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183 ], [ %i.pm, %bb.ad ], [ %i.nf, %.lr.ph.i.i171 ], [ %.11, %bb.ab ], [ %.0.i.i186, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187 ], [ %i.ie, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155 ], [ %.11, %.critedge ], [ %i.lz, %vec.epilog.middle.block487 ], [ %i.lu, %middle.block472 ], [ %i.qw, %vec.epilog.middle.block380 ], [ %i.qq, %middle.block365 ], [ %.lcssa532.unr, %.lr.ph.i.i171.prol.loopexit ], [ %.lcssa540.unr, %.lr.ph.i.i189.prol.loopexit ], [ %i.sc, %.lr.ph.i.i189 ]
  ret ptr %.1101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1982 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1983 ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = load i32, ptr %i.f, align 8, !tbaa !1986
  %3 = sub nsw i32 %2, %i.b                       ; 2 uses
  %4 = icmp sgt i32 %3, 0
  %5 = and i32 %i.h, 536870912
  %6 = icmp ne i32 %5, 0
  %7 = and i1 %6, %4                              ; 2 uses
  %8 = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %8, i1 true, i1 %7
  %.sroa.0186.0.v = select i1 %or.cond, i64 2, i64 1
  %.sroa.0186.0 = add i64 %.sroa.0186.0.v, %1
  %9 = sext i32 %i.b to i64
  %gepdiff227 = add i64 %.sroa.0186.0, %9
  %10 = add nsw i32 %3, -1
  %11 = zext nneg i32 %10 to i64
  %.sroa.0186.1.v = select i1 %7, i64 %11, i64 -1
  %.sroa.0186.1 = add i64 %gepdiff227, %.sroa.0186.1.v ; 2 uses
  %i.k = add nsw i32 %i.e, -1
  %.sroa.028.0.i = add i64 %.sroa.0186.1, 2       ; 2 uses
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true) ; 2 uses
  %i.l = icmp samesign ugt i32 %.0.i, 99
  %i.m = icmp samesign ugt i32 %.0.i, 999
  %i.n = add i64 %.sroa.0186.1, 3
  %spec.select.i = select i1 %i.m, i64 %i.n, i64 %.sroa.028.0.i
  %i.o = add i64 %spec.select.i, 1
  %.sroa.028.2.i = select i1 %i.l, i64 %i.o, i64 %.sroa.028.0.i
  %i.p = add i64 %.sroa.028.2.i, 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = and i32 %i.h, 16711680
  %i.r = icmp ne i32 %i.q, 0
  %i.s = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond3, label %.peel.begin, label %bb.l

.peel.begin:                                      ; preds = %bb.d
  %i.t = urem i32 %i.e, 3                         ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %spec.select = select i1 %i.u, i32 3, i32 %i.t  ; 5 uses
  %i.v = icmp sgt i32 %i.b, 0
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.w = zext nneg i32 %spec.select to i64
  %i.x = add i64 %1, %i.w
  br label %.peel.next.preheader

bb.f:                                             ; preds = %.peel.begin
  %i.y = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.z ; 3 uses
  %i.aa = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.aa, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %i.ab = sub nsw i32 %spec.select, %i.y          ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = add nsw i32 %i.ab, -1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.ag = add i64 %i.af, %i.ae
  %.sroa.02.0.lcssa.i.i.i134.peel = select i1 %i.ac, i64 %i.ag, i64 %.sroa.05.0.lcssa.i.i133.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2231.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i134.peel, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.x, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102233 = phi i32 [ %i.aq, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0186.2231 = phi i64 [ %.sroa.0186.4, %bb.k ], [ %.sroa.0186.2231.ph, %.peel.next.preheader ] ; 2 uses
  %i.ah = icmp slt i32 %.0102233, %i.b
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select220 = add i64 %.sroa.0186.2231, 1
  %i.ai = sub nsw i32 %i.b, %.0102233             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 3) ; 2 uses
  %i.aj = zext nneg i32 %.sroa.speculated to i64
  %.sroa.05.0.lcssa.i.i133 = add i64 %spec.select220, %i.aj ; 2 uses
  %i.ak = icmp slt i32 %i.ai, 3
  br i1 %i.ak, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.al = sub i32 2, %.sroa.speculated
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.ao = add i64 %i.an, %i.am
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.ap = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.ao, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.ap, %bb.j ] ; 2 uses
  %i.aq = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %i.e
  br i1 %i.ar, label %.peel.next, label %.loopexit229, !llvm.loop !6139

bb.l:                                             ; preds = %bb.d
  %i.as = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.as    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.at = add nsw i32 %i.d, -1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.aw = add i64 %i.av, %i.au
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.aw
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.ax = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.ax, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !1986
  %i.az = sub nsw i32 %i.ay, %i.e                 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bb = add nsw i32 %i.az, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %.sroa.0186.5, 2
  %i.be = add i64 %i.bd, %i.bc
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bf = icmp sgt i32 %i.e, 0
  br i1 %i.bf, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bg = and i32 %i.h, 16711680
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.bj = urem i32 %i.e, 3                        ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  %spec.select126 = select i1 %i.bk, i32 3, i32 %i.bj ; 4 uses
  %i.bl = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bl ; 2 uses
  %i.bm = add i32 %i.b, %i.d
  %i.bn = xor i32 %spec.select126, -1
  %i.bo = add i32 %i.bm, %i.bn                    ; 2 uses
  %i.bp = udiv i32 %i.bo, 3
  %i.bq = add nuw nsw i32 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bo, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.bq, 2147483644              ; 3 uses
  %i.br = mul i32 %n.vec, 3
  %i.bs = or disjoint i32 %spec.select126, %i.br
  %i.bt = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.bt, %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %i.bu = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.bv = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.bw = icmp eq i32 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !6140

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.bq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.bs, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.bx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.by, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.by = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.e
  br i1 %i.bz, label %scalar.ph, label %.loopexit, !llvm.loop !6141

bb.r:                                             ; preds = %bb.q
  %i.ca = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ca
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.bx, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cb = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cb, 0
  %i.cc = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cd = load ptr, ptr %0, align 8, !tbaa !1981
  %i.ce = zext nneg i32 %i.e to i64
end_hunk_0
