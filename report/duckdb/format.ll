Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/format?download=true
inline.NumInlined: 5789
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_:bb.a
  %or.cond534 = select i1 %min.iters.check354, i1 true, i1 %diff.check356
  br i1 %or.cond534, label %.lr.ph.i.i189.preheader, label %vector.main.loop.iter.check357

vector.main.loop.iter.check357:                   ; preds = %iter.check370
  %min.iters.check358 = icmp ult i32 %.1216, 32
  br i1 %min.iters.check358, label %vec.epilog.ph374, label %vector.ph359

vector.ph359:                                     ; preds = %vector.main.loop.iter.check357
  %n.vec360 = and i64 %i.ql, -32                  ; 5 uses
  %i.qp = getelementptr i8, ptr %i.qk, i64 %n.vec360
  %i.qq = getelementptr i8, ptr %.0.i.i186, i64 %n.vec360 ; 2 uses
  br label %vector.body361

vector.body361:                                   ; preds = %vector.ph359, %vector.body361
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next367, %vector.body361 ] ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.qk, i64 %index362 ; 2 uses
  %next.gep364 = getelementptr i8, ptr %.0.i.i186, i64 %index362 ; 2 uses
  %i.qr = getelementptr i8, ptr %next.gep363, i64 16
  %wide.load365 = load <16 x i8>, ptr %next.gep363, align 1, !tbaa !148
  %wide.load366 = load <16 x i8>, ptr %i.qr, align 1, !tbaa !148
  %i.qs = getelementptr i8, ptr %next.gep364, i64 16
  store <16 x i8> %wide.load365, ptr %next.gep364, align 1, !tbaa !148
  store <16 x i8> %wide.load366, ptr %i.qs, align 1, !tbaa !148
  %index.next367 = add nuw i64 %index362, 32      ; 2 uses
  %i.qt = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.qt, label %middle.block368, label %vector.body361, !llvm.loop !1764

middle.block368:                                  ; preds = %vector.body361
  %cmp.n369 = icmp eq i64 %n.vec360, %i.ql
  br i1 %cmp.n369, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %vec.epilog.iter.check371

vec.epilog.iter.check371:                         ; preds = %middle.block368
  %i.qu = and i32 %.1216, 24
  %min.epilog.iters.check373 = icmp eq i32 %i.qu, 0
  br i1 %min.epilog.iters.check373, label %.lr.ph.i.i189.preheader, label %vec.epilog.ph374, !prof !152

vec.epilog.ph374:                                 ; preds = %vector.main.loop.iter.check357, %vec.epilog.iter.check371
  %vec.epilog.resume.val375 = phi i64 [ %n.vec360, %vec.epilog.iter.check371 ], [ 0, %vector.main.loop.iter.check357 ]
  %n.vec376 = and i64 %i.ql, -8                   ; 4 uses
  %i.qv = getelementptr i8, ptr %i.qk, i64 %n.vec376
  %i.qw = getelementptr i8, ptr %.0.i.i186, i64 %n.vec376 ; 2 uses
  br label %vec.epilog.vector.body377

vec.epilog.vector.body377:                        ; preds = %vec.epilog.vector.body377, %vec.epilog.ph374
  %index378 = phi i64 [ %vec.epilog.resume.val375, %vec.epilog.ph374 ], [ %index.next382, %vec.epilog.vector.body377 ] ; 3 uses
  %next.gep379 = getelementptr i8, ptr %i.qk, i64 %index378
  %next.gep380 = getelementptr i8, ptr %.0.i.i186, i64 %index378
  %wide.load381 = load <8 x i8>, ptr %next.gep379, align 1, !tbaa !148
  store <8 x i8> %wide.load381, ptr %next.gep380, align 1, !tbaa !148
  %index.next382 = add nuw i64 %index378, 8       ; 2 uses
  %i.qx = icmp eq i64 %index.next382, %n.vec376
  br i1 %i.qx, label %vec.epilog.middle.block383, label %vec.epilog.vector.body377, !llvm.loop !1765

vec.epilog.middle.block383:                       ; preds = %vec.epilog.vector.body377
  %cmp.n384 = icmp eq i64 %n.vec376, %i.ql
  br i1 %cmp.n384, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %iter.check370, %vec.epilog.iter.check371, %vec.epilog.middle.block383
  %.011.i.i190.ph = phi ptr [ %i.qk, %iter.check370 ], [ %i.qp, %vec.epilog.iter.check371 ], [ %i.qv, %vec.epilog.middle.block383 ] ; 3 uses
  %.0810.i.i191.ph = phi ptr [ %.0.i.i186, %iter.check370 ], [ %i.qq, %vec.epilog.iter.check371 ], [ %i.qw, %vec.epilog.middle.block383 ] ; 2 uses
  %i.qy = add i64 %i.qn, %i.ql                    ; 2 uses
  %.011.i.i190.ph552 = ptrtoaddr ptr %.011.i.i190.ph to i64 ; 2 uses
  %i.qz = sub i64 %i.qy, %.011.i.i190.ph552
  %xtraiter553 = and i64 %i.qz, 7                 ; 2 uses
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol

.lr.ph.i.i189.prol:                               ; preds = %.lr.ph.i.i189.preheader, %.lr.ph.i.i189.prol
  %.011.i.i190.prol = phi ptr [ %i.rb, %.lr.ph.i.i189.prol ], [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %.0810.i.i191.prol = phi ptr [ %i.rc, %.lr.ph.i.i189.prol ], [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %prol.iter555 = phi i64 [ %prol.iter555.next, %.lr.ph.i.i189.prol ], [ 0, %.lr.ph.i.i189.preheader ]
  %i.ra = load i8, ptr %.011.i.i190.prol, align 1, !tbaa !148
  store i8 %i.ra, ptr %.0810.i.i191.prol, align 1, !tbaa !148
  %i.rb = getelementptr inbounds nuw i8, ptr %.011.i.i190.prol, i64 1 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0810.i.i191.prol, i64 1 ; 3 uses
  %prol.iter555.next = add i64 %prol.iter555, 1   ; 2 uses
  %prol.iter555.cmp.not = icmp eq i64 %prol.iter555.next, %xtraiter553
  br i1 %prol.iter555.cmp.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol, !llvm.loop !1766

.lr.ph.i.i189.prol.loopexit:                      ; preds = %.lr.ph.i.i189.prol, %.lr.ph.i.i189.preheader
  %.lcssa543.unr = phi ptr [ poison, %.lr.ph.i.i189.preheader ], [ %i.rc, %.lr.ph.i.i189.prol ]
  %.011.i.i190.unr = phi ptr [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ], [ %i.rb, %.lr.ph.i.i189.prol ]
  %.0810.i.i191.unr = phi ptr [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ], [ %i.rc, %.lr.ph.i.i189.prol ]
  %i.rd = sub i64 %.011.i.i190.ph552, %i.qy
  %i.re = icmp ugt i64 %i.rd, -8
  br i1 %i.re, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189
  %.011.i.i190 = phi ptr [ %i.sb, %.lr.ph.i.i189 ], [ %.011.i.i190.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %.0810.i.i191 = phi ptr [ %i.sc, %.lr.ph.i.i189 ], [ %.0810.i.i191.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %i.rf = load i8, ptr %.011.i.i190, align 1, !tbaa !148
  store i8 %i.rf, ptr %.0810.i.i191, align 1, !tbaa !148
  %i.rg = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 1
  %i.rh = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 1
  %i.ri = load i8, ptr %i.rg, align 1, !tbaa !148
  store i8 %i.ri, ptr %i.rh, align 1, !tbaa !148
  %i.rj = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 2
  %i.rk = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 2
  %i.rl = load i8, ptr %i.rj, align 1, !tbaa !148
  store i8 %i.rl, ptr %i.rk, align 1, !tbaa !148
  %i.rm = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 3
  %i.rn = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 3
  %i.ro = load i8, ptr %i.rm, align 1, !tbaa !148
  store i8 %i.ro, ptr %i.rn, align 1, !tbaa !148
  %i.rp = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 4
  %i.rr = load i8, ptr %i.rp, align 1, !tbaa !148
  store i8 %i.rr, ptr %i.rq, align 1, !tbaa !148
  %i.rs = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 5
  %i.rt = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 5
  %i.ru = load i8, ptr %i.rs, align 1, !tbaa !148
  store i8 %i.ru, ptr %i.rt, align 1, !tbaa !148
  %i.rv = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 6
  %i.rw = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 6
  %i.rx = load i8, ptr %i.rv, align 1, !tbaa !148
  store i8 %i.rx, ptr %i.rw, align 1, !tbaa !148
  %i.ry = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 7
  %i.rz = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 7
  %i.sa = load i8, ptr %i.ry, align 1, !tbaa !148
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !148
  %i.sb = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 8 ; 2 uses
  %.not.i.i192.7 = icmp eq ptr %i.sb, %i.qm
  br i1 %.not.i.i192.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189, !llvm.loop !1767

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176: ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189, %bb.ab, %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171, %middle.block368, %vec.epilog.middle.block383, %middle.block475, %vec.epilog.middle.block490, %.critedge, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155, %bb.s, %bb.r, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, %bb.ad, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183, %.critedge7, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit
  %.1101 = phi ptr [ %i.cy, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit ], [ %i.pn, %.critedge7 ], [ %i.ic, %bb.s ], [ %.6, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153 ], [ %i.hw, %bb.r ], [ %.08.lcssa.i.i182, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183 ], [ %i.pm, %bb.ad ], [ %i.nf, %.lr.ph.i.i171 ], [ %.11, %bb.ab ], [ %.0.i.i186, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187 ], [ %i.ie, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155 ], [ %.11, %.critedge ], [ %i.lz, %vec.epilog.middle.block490 ], [ %i.lu, %middle.block475 ], [ %i.qw, %vec.epilog.middle.block383 ], [ %i.qq, %middle.block368 ], [ %.lcssa535.unr, %.lr.ph.i.i171.prol.loopexit ], [ %.lcssa543.unr, %.lr.ph.i.i189.prol.loopexit ], [ %i.sc, %.lr.ph.i.i189 ]
  ret ptr %.1101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1) local_unnamed_addr #9 comdat align 2 !guid !1773 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !470  ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !471  ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !474
  %i.l = sub nsw i32 %i.k, %i.b                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = and i32 %i.h, 536870912
  %i.o = icmp ne i32 %i.n, 0
  %i.p = and i1 %i.o, %i.m                        ; 2 uses
  %i.q = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  %.sroa.0186.0.v = select i1 %or.cond, i64 2, i64 1
  %.sroa.0186.0 = add i64 %.sroa.0186.0.v, %1
  %i.r = sext i32 %i.b to i64
  %gepdiff227 = add i64 %.sroa.0186.0, %i.r
  %i.s = add nsw i32 %i.l, -1
  %i.t = zext nneg i32 %i.s to i64
  %.sroa.0186.1.v = select i1 %i.p, i64 %i.t, i64 -1
  %.sroa.0186.1 = add i64 %gepdiff227, %.sroa.0186.1.v ; 2 uses
  %i.u = add nsw i32 %i.e, -1
  %.sroa.028.0.i = add i64 %.sroa.0186.1, 2       ; 2 uses
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.v = icmp samesign ugt i32 %.0.i, 99
  %i.w = icmp samesign ugt i32 %.0.i, 999
  %i.x = add i64 %.sroa.0186.1, 3
  %spec.select.i = select i1 %i.w, i64 %i.x, i64 %.sroa.028.0.i
  %i.y = add i64 %spec.select.i, 1
  %.sroa.028.2.i = select i1 %i.v, i64 %i.y, i64 %.sroa.028.0.i
  %i.z = add i64 %.sroa.028.2.i, 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = and i32 %i.h, 16711680
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond3, label %.peel.begin, label %bb.l

.peel.begin:                                      ; preds = %bb.d
  %i.ad = urem i32 %i.e, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %i.ae, i32 3, i32 %i.ad ; 5 uses
  %i.af = icmp sgt i32 %i.b, 0
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.ag = zext nneg i32 %spec.select to i64
  %i.ah = add i64 %1, %i.ag
  br label %.peel.next.preheader

bb.f:                                             ; preds = %.peel.begin
  %i.ai = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.aj ; 3 uses
  %i.ak = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.ak, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %2 = sub nsw i32 %spec.select, %i.ai            ; 2 uses
  %3 = icmp sgt i32 %2, 0
  %i.al = add nsw i32 %2, -1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.ao = add i64 %i.an, %i.am
  %.sroa.02.0.lcssa.i.i.i134.peel = select i1 %3, i64 %i.ao, i64 %.sroa.05.0.lcssa.i.i133.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2231.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i134.peel, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.ah, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102233 = phi i32 [ %i.ay, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0186.2231 = phi i64 [ %.sroa.0186.4, %bb.k ], [ %.sroa.0186.2231.ph, %.peel.next.preheader ] ; 2 uses
  %i.ap = icmp slt i32 %.0102233, %i.b
  br i1 %i.ap, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select220 = add i64 %.sroa.0186.2231, 1
  %i.aq = sub nsw i32 %i.b, %.0102233             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 3) ; 2 uses
  %i.ar = zext nneg i32 %.sroa.speculated to i64
  %.sroa.05.0.lcssa.i.i133 = add i64 %spec.select220, %i.ar ; 2 uses
  %i.as = icmp slt i32 %i.aq, 3
  br i1 %i.as, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.at = sub i32 2, %.sroa.speculated
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.aw = add i64 %i.av, %i.au
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.ax = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.aw, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.ax, %bb.j ] ; 2 uses
  %i.ay = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.e
  br i1 %i.az, label %.peel.next, label %.loopexit229, !llvm.loop !1769

bb.l:                                             ; preds = %bb.d
  %i.ba = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.ba    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.bb = add nsw i32 %i.d, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.be = add i64 %i.bd, %i.bc
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.be
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.bf = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bf, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !474
  %i.bh = sub nsw i32 %i.bg, %i.e                 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bj = add nsw i32 %i.bh, -1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = add i64 %.sroa.0186.5, 2
  %i.bm = add i64 %i.bl, %i.bk
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bn = icmp sgt i32 %i.e, 0
  br i1 %i.bn, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bo = and i32 %i.h, 16711680
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.br = urem i32 %i.e, 3                        ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  %spec.select126 = select i1 %i.bs, i32 3, i32 %i.br ; 4 uses
  %i.bt = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bt ; 2 uses
  %i.bu = add i32 %i.b, %i.d
  %i.bv = xor i32 %spec.select126, -1
  %i.bw = add i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = udiv i32 %i.bw, 3
  %i.by = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bw, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.by, 2147483644              ; 3 uses
  %i.bz = mul i32 %n.vec, 3
  %i.ca = or disjoint i32 %spec.select126, %i.bz
  %i.cb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.cb, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %i.cc = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cd = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ce = icmp eq i32 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1770

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.ca, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.cf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.cg, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.cg = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.e
  br i1 %i.ch, label %scalar.ph, label %.loopexit, !llvm.loop !1771

bb.r:                                             ; preds = %bb.q
  %i.ci = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ci
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.cf, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cj = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cj, 0
  %i.ck = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !469
  %i.cm = zext nneg i32 %i.e to i64
  %i.cn = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cn)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ck, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.cl, i64 %indvars.iv
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !148
  %i.cr = icmp eq i8 %i.cq, 48
  br i1 %i.cr, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cs = icmp sgt i64 %indvars.iv.next, %i.cm
  br i1 %i.cs, label %bb.s, label %.critedge, !llvm.loop !1772

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.ct = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %i.ct, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 2 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e    ; 2 uses
  %i.cu = zext i1 %.not122 to i64
  %spec.select223 = add i64 %.sroa.0186.10, %i.cu
  %i.cv = zext nneg i32 %i.e to i64
  %i.cw = sext i32 %.0105.lcssa.ph to i64
  %gepdiff226 = sub nsw i64 %i.cw, %i.cv
  %i.cx = select i1 %.not122, i64 %gepdiff226, i64 0
  %.sroa.05.0.lcssa.i.i149 = add i64 %spec.select223, %i.cx
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.cy = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %i.ck, %i.cy
  %i.cz = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.cz, %.sroa.0186.10 ; 2 uses
  %i.da = load i32, ptr %i.f, align 8, !tbaa !474 ; 2 uses
  %i.db = icmp sgt i32 %i.da, %i.b
  br i1 %i.db, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.dc = xor i32 %i.b, -1
  %i.dd = add i32 %i.da, %i.dc
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %.sroa.05.0.lcssa.i.i152, 1
  %i.dg = add i64 %i.df, %i.de
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dh = add i64 %1, 1
  %i.di = sub nsw i32 0, %i.e                     ; 5 uses
  %i.dj = icmp eq i32 %i.b, 0
end_hunk_0
begin_hunk_1_@_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_:bb.a
  %.099228 = phi i32 [ %spec.select133, %.thread ], [ %i.ms, %bb.ah ] ; 2 uses
  %.not234 = icmp eq i32 %.099228, 0
  br i1 %.not234, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.ag, %bb.af, %.critedge7
  %.1233 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.af ], [ %.0, %bb.ag ] ; 3 uses
  %.099228232 = phi i32 [ %.099228, %.critedge7 ], [ %i.ms, %bb.af ], [ %i.ms, %bb.ag ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !740
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 %i.ni, ptr %i.mr, align 4, !tbaa !196
  %i.nk = icmp slt i32 %.099228232, 1
  br i1 %i.nk, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %bb.ai

bb.ai:                                            ; preds = %.critedge7.thread
  %i.nl = zext nneg i32 %.099228232 to i64
  %.idx.i.i200 = shl nuw nsw i64 %i.nl, 2         ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.idx.i.i200 ; 3 uses
  %i.nn = add nsw i64 %.idx.i.i200, -4            ; 2 uses
  %i.no = lshr exact i64 %i.nn, 2
  %i.np = add nuw nsw i64 %i.no, 1                ; 2 uses
  %min.iters.check404 = icmp ult i64 %i.nn, 28
  br i1 %min.iters.check404, label %.lr.ph.i.i.i.i201.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %bb.ai
  %n.vec406 = and i64 %i.np, 9223372036854775800  ; 3 uses
  %i.nq = shl i64 %n.vec406, 2
  %i.nr = getelementptr i8, ptr %i.nj, i64 %i.nq
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next410, %vector.body407 ] ; 2 uses
  %i.ns = shl i64 %index408, 2
  %next.gep409 = getelementptr i8, ptr %i.nj, i64 %i.ns ; 2 uses
  %i.nt = getelementptr i8, ptr %next.gep409, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep409, align 4, !tbaa !196
  store <4 x i32> splat (i32 48), ptr %i.nt, align 4, !tbaa !196
  %index.next410 = add nuw i64 %index408, 8       ; 2 uses
  %i.nu = icmp eq i64 %index.next410, %n.vec406
  br i1 %i.nu, label %middle.block411, label %vector.body407, !llvm.loop !3795

middle.block411:                                  ; preds = %vector.body407
  %cmp.n412 = icmp eq i64 %i.np, %n.vec406
  br i1 %cmp.n412, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %.lr.ph.i.i.i.i201.preheader

.lr.ph.i.i.i.i201.preheader:                      ; preds = %bb.ai, %middle.block411
  %.06.i.i.i.i202.ph = phi ptr [ %i.nj, %bb.ai ], [ %i.nr, %middle.block411 ]
  br label %.lr.ph.i.i.i.i201

.lr.ph.i.i.i.i201:                                ; preds = %.lr.ph.i.i.i.i201.preheader, %.lr.ph.i.i.i.i201
  %.06.i.i.i.i202 = phi ptr [ %i.nv, %.lr.ph.i.i.i.i201 ], [ %.06.i.i.i.i202.ph, %.lr.ph.i.i.i.i201.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i202, align 4, !tbaa !196
  %i.nv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i202, i64 4 ; 2 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.nv, %i.nm
  br i1 %.not.i.i.i.i203, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %.lr.ph.i.i.i.i201, !llvm.loop !3796

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205:           ; preds = %.lr.ph.i.i.i.i201, %middle.block411, %.critedge7.thread
  %.0.i.i204 = phi ptr [ %i.nj, %.critedge7.thread ], [ %i.nm, %middle.block411 ], [ %i.nm, %.lr.ph.i.i.i.i201 ] ; 7 uses
  %i.nw = icmp sgt i32 %.1233, 0
  br i1 %i.nw, label %.lr.ph.i.i.i.i.i.i207.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

.lr.ph.i.i.i.i.i.i207.preheader:                  ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205
  %i.nx = zext nneg i32 %.1233 to i64             ; 7 uses
  %i.ny = load ptr, ptr %0, align 8, !tbaa !737   ; 6 uses
  %min.iters.check421 = icmp ult i32 %.1233, 12
  br i1 %min.iters.check421, label %.lr.ph.i.i.i.i.i.i207.preheader577, label %vector.memcheck422

vector.memcheck422:                               ; preds = %.lr.ph.i.i.i.i.i.i207.preheader
  %i.nz = shl nuw nsw i64 %i.nx, 2
  %i.oa = getelementptr i8, ptr %.0.i.i204, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.ny, i64 %i.nx
  %bound0423 = icmp ult ptr %.0.i.i204, %i.ob
  %bound1424 = icmp ult ptr %i.ny, %i.oa
  %found.conflict425 = and i1 %bound0423, %bound1424
  br i1 %found.conflict425, label %.lr.ph.i.i.i.i.i.i207.preheader577, label %vector.ph426

vector.ph426:                                     ; preds = %vector.memcheck422
  %n.vec427 = and i64 %i.nx, 2147483640           ; 4 uses
  %i.oc = and i64 %i.nx, 7
  %i.od = shl nuw nsw i64 %n.vec427, 2
  %i.oe = getelementptr i8, ptr %.0.i.i204, i64 %i.od ; 2 uses
  %i.of = getelementptr i8, ptr %i.ny, i64 %n.vec427
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph426
  %index429 = phi i64 [ 0, %vector.ph426 ], [ %index.next434, %vector.body428 ] ; 3 uses
  %i.og = shl i64 %index429, 2
  %next.gep430 = getelementptr i8, ptr %.0.i.i204, i64 %i.og ; 2 uses
  %next.gep431 = getelementptr i8, ptr %i.ny, i64 %index429 ; 2 uses
  %i.oh = getelementptr i8, ptr %next.gep431, i64 4
  %wide.load432 = load <4 x i8>, ptr %next.gep431, align 1, !tbaa !148, !alias.scope !3815
  %wide.load433 = load <4 x i8>, ptr %i.oh, align 1, !tbaa !148, !alias.scope !3815
  %i.oi = sext <4 x i8> %wide.load432 to <4 x i32>
  %i.oj = sext <4 x i8> %wide.load433 to <4 x i32>
  %i.ok = getelementptr i8, ptr %next.gep430, i64 16
  store <4 x i32> %i.oi, ptr %next.gep430, align 4, !tbaa !196, !alias.scope !3816, !noalias !3815
  store <4 x i32> %i.oj, ptr %i.ok, align 4, !tbaa !196, !alias.scope !3816, !noalias !3815
  %index.next434 = add nuw i64 %index429, 8       ; 2 uses
  %i.ol = icmp eq i64 %index.next434, %n.vec427
  br i1 %i.ol, label %middle.block435, label %vector.body428, !llvm.loop !3800

middle.block435:                                  ; preds = %vector.body428
  %cmp.n436 = icmp eq i64 %n.vec427, %i.nx
  br i1 %cmp.n436, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i.i.i207.preheader577

.lr.ph.i.i.i.i.i.i207.preheader577:               ; preds = %vector.memcheck422, %.lr.ph.i.i.i.i.i.i207.preheader, %middle.block435
  %.012.i.i.i.i.i.i208.ph = phi i64 [ %i.nx, %vector.memcheck422 ], [ %i.nx, %.lr.ph.i.i.i.i.i.i207.preheader ], [ %i.oc, %middle.block435 ]
  %.0811.i.i.i.i.i.i209.ph = phi ptr [ %.0.i.i204, %vector.memcheck422 ], [ %.0.i.i204, %.lr.ph.i.i.i.i.i.i207.preheader ], [ %i.oe, %middle.block435 ]
  %.0910.i.i.i.i.i.i210.ph = phi ptr [ %i.ny, %vector.memcheck422 ], [ %i.ny, %.lr.ph.i.i.i.i.i.i207.preheader ], [ %i.of, %middle.block435 ]
  br label %.lr.ph.i.i.i.i.i.i207

.lr.ph.i.i.i.i.i.i207:                            ; preds = %.lr.ph.i.i.i.i.i.i207.preheader577, %.lr.ph.i.i.i.i.i.i207
  %.012.i.i.i.i.i.i208 = phi i64 [ %i.oq, %.lr.ph.i.i.i.i.i.i207 ], [ %.012.i.i.i.i.i.i208.ph, %.lr.ph.i.i.i.i.i.i207.preheader577 ] ; 2 uses
  %.0811.i.i.i.i.i.i209 = phi ptr [ %i.op, %.lr.ph.i.i.i.i.i.i207 ], [ %.0811.i.i.i.i.i.i209.ph, %.lr.ph.i.i.i.i.i.i207.preheader577 ] ; 2 uses
  %.0910.i.i.i.i.i.i210 = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.i207 ], [ %.0910.i.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i.i207.preheader577 ] ; 2 uses
  %i.om = load i8, ptr %.0910.i.i.i.i.i.i210, align 1, !tbaa !148
  %i.on = sext i8 %i.om to i32
  store i32 %i.on, ptr %.0811.i.i.i.i.i.i209, align 4, !tbaa !196
  %i.oo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i210, i64 1
  %i.op = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i209, i64 4 ; 2 uses
  %i.oq = add nsw i64 %.012.i.i.i.i.i.i208, -1
  %i.or = icmp samesign ugt i64 %.012.i.i.i.i.i.i208, 1
  br i1 %i.or, label %.lr.ph.i.i.i.i.i.i207, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, !llvm.loop !3801

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187: ; preds = %.lr.ph.i.i.i.i165, %.lr.ph.i.i.i.i.i.i207, %.lr.ph.i.i.i.i195, %.lr.ph.i.i.i.i.i.i183, %middle.block400, %middle.block435, %middle.block500, %middle.block524, %bb.u, %bb.t, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, %bb.ac, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193, %.critedge7, %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit
  %.1101 = phi ptr [ %i.cj, %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit ], [ %i.mr, %.critedge7 ], [ %i.gp, %middle.block400 ], [ %.6, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163 ], [ %i.mh, %middle.block500 ], [ %.lcssa320, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193 ], [ %i.gn, %bb.u ], [ %.12, %bb.ac ], [ %i.ks, %.lr.ph.i.i.i.i.i.i183 ], [ %.0.i.i204, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205 ], [ %i.gh, %bb.t ], [ %i.kh, %middle.block524 ], [ %i.op, %.lr.ph.i.i.i.i.i.i207 ], [ %i.oe, %middle.block435 ], [ %i.mh, %.lr.ph.i.i.i.i195 ], [ %i.gp, %.lr.ph.i.i.i.i165 ]
  ret ptr %.1101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1) local_unnamed_addr #9 comdat align 2 !guid !3821 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !738  ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !739  ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !742
  %i.l = sub nsw i32 %i.k, %i.b                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = and i32 %i.h, 536870912
  %i.o = icmp ne i32 %i.n, 0
  %i.p = and i1 %i.o, %i.m                        ; 2 uses
  %i.q = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  %.sroa.0179.0.v = select i1 %or.cond, i64 2, i64 1
  %.sroa.0179.0 = add i64 %.sroa.0179.0.v, %1
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add i64 %.sroa.0179.0, %i.s
  %i.u = add nsw i32 %i.l, -1
  %i.v = zext nneg i32 %i.u to i64
  %.sroa.0179.1.v = select i1 %i.p, i64 %i.v, i64 -1
  %.sroa.0179.1 = add i64 %i.t, %.sroa.0179.1.v   ; 2 uses
  %i.w = add nsw i32 %i.e, -1
  %.sroa.028.0.i = add i64 %.sroa.0179.1, 2       ; 2 uses
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.w, i1 true) ; 2 uses
  %i.x = icmp samesign ugt i32 %.0.i, 99
  %i.y = icmp samesign ugt i32 %.0.i, 999
  %i.z = add i64 %.sroa.0179.1, 3
  %spec.select.i = select i1 %i.y, i64 %i.z, i64 %.sroa.028.0.i
  %i.aa = add i64 %spec.select.i, 1
  %.sroa.028.2.i = select i1 %i.x, i64 %i.aa, i64 %.sroa.028.0.i
  %i.ab = add i64 %.sroa.028.2.i, 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = and i32 %i.h, 16711680
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3, label %.peel.begin, label %bb.l

.peel.begin:                                      ; preds = %bb.d
  %i.af = urem i32 %i.e, 3                        ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select = select i1 %i.ag, i32 3, i32 %i.af ; 5 uses
  %i.ah = icmp sgt i32 %i.b, 0
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.ai = zext nneg i32 %spec.select to i64
  %i.aj = add i64 %1, %i.ai
  br label %.peel.next.preheader

bb.f:                                             ; preds = %.peel.begin
  %i.ak = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel = add i64 %1, %i.al ; 3 uses
  %i.am = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.am, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %2 = sub nsw i32 %spec.select, %i.ak            ; 2 uses
  %3 = icmp sgt i32 %2, 0
  %i.an = add nsw i32 %2, -1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel, 1
  %i.aq = add i64 %i.ap, %i.ao
  %.sroa.02.0.lcssa.i.i.i133.peel = select i1 %3, i64 %i.aq, i64 %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0179.2224.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i133.peel, %bb.g ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel, %bb.f ], [ %i.aj, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102226 = phi i32 [ %i.ba, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0179.2224 = phi i64 [ %.sroa.0179.4, %bb.k ], [ %.sroa.0179.2224.ph, %.peel.next.preheader ] ; 2 uses
  %i.ar = icmp slt i32 %.0102226, %i.b
  br i1 %i.ar, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select213 = add i64 %.sroa.0179.2224, 1
  %i.as = sub nsw i32 %i.b, %.0102226             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.as, i32 3) ; 2 uses
  %i.at = zext nneg i32 %.sroa.speculated to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i132 = add i64 %spec.select213, %i.at ; 2 uses
  %i.au = icmp slt i32 %i.as, 3
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = sub i32 2, %.sroa.speculated
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i132, 1
  %i.ay = add i64 %i.ax, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.az = add i64 %.sroa.0179.2224, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0179.4 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i132, %bb.h ], [ %i.az, %bb.j ] ; 2 uses
  %i.ba = add nuw nsw i32 %.0102226, 3            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.e
  br i1 %i.bb, label %.peel.next, label %.loopexit222, !llvm.loop !3817

bb.l:                                             ; preds = %bb.d
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %i.bd = zext nneg i32 %i.bc to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i135 = add i64 %1, %i.bd ; 2 uses
  %.not217 = icmp eq i32 %i.d, 0
  %i.be = add nsw i32 %i.d, -1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i135, 1
  %i.bh = add i64 %i.bg, %i.bf
  %.sroa.02.0.lcssa.i.i.i136 = select i1 %.not217, i64 %.sroa.06.0.lcssa.i.i.i.i.i.i135, i64 %i.bh
  br label %.loopexit222

.loopexit222:                                     ; preds = %bb.k, %bb.l
  %.sroa.0179.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i136, %bb.l ], [ %.sroa.0179.4, %bb.k ] ; 3 uses
  %i.bi = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bi, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit222
  %i.bj = load i32, ptr %i.f, align 8, !tbaa !742
  %i.bk = sub nsw i32 %i.bj, %i.e                 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select214.v = select i1 %.not124, i64 1, i64 2
  %spec.select214 = add i64 %.sroa.0179.5, %spec.select214.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bm = add nsw i32 %i.bk, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %.sroa.0179.5, 2
  %i.bp = add i64 %i.bo, %i.bn
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bq = icmp sgt i32 %i.e, 0
  br i1 %i.bq, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.br = and i32 %i.h, 16711680
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond5, label %.peel.next236, label %bb.r

.peel.next236:                                    ; preds = %bb.q
  %i.bu = urem i32 %i.e, 3                        ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  %spec.select126 = select i1 %i.bv, i32 3, i32 %i.bu ; 4 uses
  %i.bw = zext nneg i32 %spec.select126 to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i141.peel = add i64 %1, %i.bw ; 2 uses
  %i.bx = add i32 %i.b, %i.d
  %i.by = xor i32 %spec.select126, -1
  %i.bz = add i32 %i.bx, %i.by                    ; 2 uses
  %i.ca = udiv i32 %i.bz, 3
  %i.cb = add nuw nsw i32 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bz, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next236
  %n.vec = and i32 %i.cb, 2147483644              ; 3 uses
  %i.cc = mul i32 %n.vec, 3
  %i.cd = or disjoint i32 %spec.select126, %i.cc
  %i.ce = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.06.0.lcssa.i.i.i.i.i.i141.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.ce, %vector.ph ], [ %i.cf, %vector.body ]
  %vec.phi253 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cg, %vector.body ]
  %i.cf = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cg = add <2 x i64> %vec.phi253, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ch = icmp eq i32 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !3818

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next236, %middle.block
  %.0104228.ph = phi i32 [ %spec.select126, %.peel.next236 ], [ %i.cd, %middle.block ]
  %.sroa.0179.8227.ph = phi i64 [ %.sroa.06.0.lcssa.i.i.i.i.i.i141.peel, %.peel.next236 ], [ %i.ci, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104228 = phi i32 [ %i.cj, %scalar.ph ], [ %.0104228.ph, %scalar.ph.preheader ]
  %.sroa.0179.8227 = phi i64 [ %.sroa.06.0.lcssa.i.i.i.i.i.i141, %scalar.ph ], [ %.sroa.0179.8227.ph, %scalar.ph.preheader ]
  %.sroa.06.0.lcssa.i.i.i.i.i.i141 = add i64 %.sroa.0179.8227, 4 ; 2 uses
  %i.cj = add nuw nsw i32 %.0104228, 3            ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.e
  br i1 %i.ck, label %scalar.ph, label %.loopexit, !llvm.loop !3819

bb.r:                                             ; preds = %bb.q
  %i.cl = zext nneg i32 %i.e to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i142 = add i64 %1, %i.cl
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0179.10 = phi i64 [ %.sroa.06.0.lcssa.i.i.i.i.i.i142, %bb.r ], [ %i.ci, %middle.block ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i141, %scalar.ph ] ; 2 uses
  %i.cm = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cm, 0
  %i.cn = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.co = load ptr, ptr %0, align 8, !tbaa !737
  %i.cp = zext nneg i32 %i.e to i64
  %i.cq = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cq)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 %indvars.iv
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !148
  %i.cu = icmp eq i8 %i.ct, 48
  br i1 %i.cu, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cv = icmp sgt i64 %indvars.iv.next, %i.cp
  br i1 %i.cv, label %bb.s, label %.critedge, !llvm.loop !3820

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.cw = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %i.cw, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 2 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e
  %i.cx = zext i1 %.not122 to i64
  %spec.select216 = add i64 %.sroa.0179.10, %i.cx
  %i.cy = zext nneg i32 %i.e to i64
  %i.cz = sext i32 %.0105.lcssa.ph to i64
  %gepdiff219 = sub nsw i64 %i.cz, %i.cy
  %i.da = tail call i64 @llvm.smax.i64(i64 %gepdiff219, i64 0)
  %.sroa.06.0.lcssa.i.i.i.i.i.i144 = add i64 %spec.select216, %i.da
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.db = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %i.cn, %i.db
  %i.dc = add nsw i64 %gepdiff, 1
  %.sroa.06.0.lcssa.i.i.i.i.i.i146 = add i64 %i.dc, %.sroa.0179.10 ; 2 uses
  %i.dd = load i32, ptr %i.f, align 8, !tbaa !742 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, %i.b
  br i1 %i.de, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.df = xor i32 %i.b, -1
  %i.dg = add i32 %i.dd, %i.df
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i146, 1
  %i.dj = add i64 %i.di, %i.dh
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dk = add i64 %1, 1
  %i.dl = sub nsw i32 0, %i.e                     ; 5 uses
end_hunk_1
