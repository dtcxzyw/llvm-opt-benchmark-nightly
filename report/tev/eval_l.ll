Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_l?download=true
inline.NumInlined: 47
inline.NumDeleted: 8
begin_hunk_0_@fits_parser_yylex:bb.a
bb.eo:                                            ; preds = %bb.en
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.55) #30
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.qh = getelementptr inbounds nuw i8, ptr %i.mx, i64 52
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !49
  %i.qj = icmp eq i32 %i.qi, 0
  %i.qk = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.ql = ptrtoint ptr %i.qe to i64               ; 3 uses
  br i1 %i.qj, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = icmp eq i64 %i.qm, 1
  br i1 %i.qn, label %yy_get_previous_state.exit481, label %yy_get_next_buffer.exit.thread532

bb.er:                                            ; preds = %bb.ep
  %i.qo = xor i64 %i.ql, -1
  %i.qp = add i64 %i.qo, %i.qk                    ; 6 uses
  %i.qq = trunc i64 %i.qp to i32                  ; 6 uses
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %iter.check, label %._crit_edge.i463

iter.check:                                       ; preds = %bb.er
  %i.qs = and i64 %i.qp, 2147483647               ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.qs, 4
  %i.qt = sub i64 %i.ql, %i.nj
  %diff.check = icmp ugt i64 %i.qt, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i465.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1127 = icmp samesign ult i64 %i.qs, 32
  br i1 %min.iters.check1127, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qu = and i64 %i.qp, 28
  %n.vec = and i64 %i.qp, 2147483616              ; 6 uses
  %i.qv = trunc nuw nsw i64 %n.vec to i32
  %i.qw = getelementptr i8, ptr %i.qe, i64 %n.vec
  %i.qx = getelementptr i8, ptr %i.ni, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.qe, i64 %index ; 2 uses
  %next.gep1128 = getelementptr i8, ptr %i.ni, i64 %index ; 2 uses
  %i.qy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !38
  %wide.load1129 = load <16 x i8>, ptr %i.qy, align 1, !tbaa !38
  %i.qz = getelementptr i8, ptr %next.gep1128, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1128, align 1, !tbaa !38
  store <16 x i8> %wide.load1129, ptr %i.qz, align 1, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ra = icmp eq i64 %index.next, %n.vec
  br i1 %i.ra, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qs, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i465.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1132 = and i64 %i.qp, 2147483644          ; 5 uses
  %i.rb = trunc nuw nsw i64 %n.vec1132 to i32
  %i.rc = getelementptr i8, ptr %i.qe, i64 %n.vec1132
  %i.rd = getelementptr i8, ptr %i.ni, i64 %n.vec1132
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1137, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1134.a = getelementptr i8, ptr %i.qe, i64 %index1133
  %next.gep1135 = getelementptr i8, ptr %i.ni, i64 %index1133
  %wide.load1136 = load <4 x i8>, ptr %next.gep1134.a, align 1, !tbaa !38
  store <4 x i8> %wide.load1136, ptr %next.gep1135, align 1, !tbaa !38
  %index.next1137 = add nuw i64 %index1133, 4     ; 2 uses
  %i.re = icmp eq i64 %index.next1137, %n.vec1132
  br i1 %i.re, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1138 = icmp eq i64 %i.qs, %n.vec1132
  br i1 %cmp.n1138, label %._crit_edge.loopexit.i, label %.lr.ph.i465.preheader

.lr.ph.i465.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0101127.i.ph = phi i32 [ 0, %iter.check ], [ %i.qv, %vec.epilog.iter.check ], [ %i.rb, %vec.epilog.middle.block ]
  %.0102126.i.ph = phi ptr [ %i.qe, %iter.check ], [ %i.qw, %vec.epilog.iter.check ], [ %i.rc, %vec.epilog.middle.block ]
  %.0103125.i.ph = phi ptr [ %i.ni, %iter.check ], [ %i.qx, %vec.epilog.iter.check ], [ %i.rd, %vec.epilog.middle.block ]
  br label %.lr.ph.i465

.lr.ph.i465:                                      ; preds = %.lr.ph.i465.preheader, %.lr.ph.i465
  %.0101127.i = phi i32 [ %i.ri, %.lr.ph.i465 ], [ %.0101127.i.ph, %.lr.ph.i465.preheader ]
  %.0102126.i = phi ptr [ %i.rf, %.lr.ph.i465 ], [ %.0102126.i.ph, %.lr.ph.i465.preheader ] ; 2 uses
  %.0103125.i = phi ptr [ %i.rh, %.lr.ph.i465 ], [ %.0103125.i.ph, %.lr.ph.i465.preheader ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0102126.i, i64 1
  %i.rg = load i8, ptr %.0102126.i, align 1, !tbaa !38
  %i.rh = getelementptr inbounds nuw i8, ptr %.0103125.i, i64 1
  store i8 %i.rg, ptr %.0103125.i, align 1, !tbaa !38
  %i.ri = add nuw nsw i32 %.0101127.i, 1          ; 2 uses
  %exitcond.not.i466 = icmp eq i32 %i.ri, %i.qq
  br i1 %exitcond.not.i466, label %._crit_edge.loopexit.i, label %.lr.ph.i465, !llvm.loop !75

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i465, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !23
  %.pre139.i = load i64, ptr %i.bp, align 8, !tbaa !24
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.pre139.i
  %.pre140.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre140.i, i64 56
  %.pre874 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %._crit_edge.i463

._crit_edge.i463:                                 ; preds = %._crit_edge.loopexit.i, %bb.er
  %i.rj = phi i32 [ %.pre874, %._crit_edge.loopexit.i ], [ %i.ne, %bb.er ]
  %i.rk = phi ptr [ %.pre140.i, %._crit_edge.loopexit.i ], [ %i.mx, %bb.er ] ; 4 uses
  %i.rl = icmp eq i32 %i.rj, 2
  br i1 %i.rl, label %.thread118.i, label %bb.es

.thread118.i:                                     ; preds = %._crit_edge.i463
  store i32 0, ptr %i.bq, align 4, !tbaa !33
  br label %bb.ew

bb.es:                                            ; preds = %._crit_edge.i463
  %i.rm = xor i32 %i.qq, -1                       ; 2 uses
  %.pn.in128.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %.pn129.i = load i32, ptr %.pn.in128.i, align 8, !tbaa !29 ; 2 uses
  %.0130.i = add i32 %.pn129.i, %i.rm             ; 2 uses
  %i.rn = icmp slt i32 %.0130.i, 1
  br i1 %i.rn, label %.lr.ph132.preheader.i, label %._crit_edge133.i

.lr.ph132.preheader.i:                            ; preds = %bb.es
  %.pre141.i = load ptr, ptr %i.bh, align 8, !tbaa !35
  br label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %bb.eu, %.lr.ph132.preheader.i
  %i.ro = phi i32 [ %.pn129.i, %.lr.ph132.preheader.i ], [ %.pn.i, %bb.eu ] ; 4 uses
  %i.rp = phi ptr [ %.pre141.i, %.lr.ph132.preheader.i ], [ %i.si, %bb.eu ]
  %i.rq = phi ptr [ %i.rk, %.lr.ph132.preheader.i ], [ %i.sm, %bb.eu ] ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 3 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !30 ; 2 uses
  %i.rt = ptrtoint ptr %i.rp to i64
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !31
  %.not.i464 = icmp eq i32 %i.rx, 0
  br i1 %.not.i464, label %.thread.i, label %bb.et

.thread.i:                                        ; preds = %.lr.ph132.i
  store ptr null, ptr %i.rr, align 8, !tbaa !30
  br label %.loopexit.i

bb.et:                                            ; preds = %.lr.ph132.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rz = icmp slt i32 %i.ro, 1
  %i.sa = shl nuw nsw i32 %i.ro, 1
  %.nonneg.i = sub i32 0, %i.ro
  %i.sb = lshr i32 %.nonneg.i, 3
  %i.sc = sub nsw i32 %i.ro, %i.sb
  %storemerge111.i = select i1 %i.rz, i32 %i.sc, i32 %i.sa ; 2 uses
  store i32 %storemerge111.i, ptr %i.ry, align 8, !tbaa !29
  %i.sd = add nsw i32 %storemerge111.i, 2
  %i.se = sext i32 %i.sd to i64
  %i.sf = tail call noalias noundef ptr @realloc(ptr noundef %i.rs, i64 noundef %i.se) #31 ; 3 uses
  store ptr %i.sf, ptr %i.rr, align 8, !tbaa !30
  %.not112.i = icmp eq ptr %i.sf, null
  br i1 %.not112.i, label %.loopexit.i, label %bb.eu

.loopexit.i:                                      ; preds = %bb.et, %.thread.i
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.56) #30
  unreachable

bb.eu:                                            ; preds = %bb.et
  %i.sg = shl i64 %i.rv, 32
  %i.sh = ashr exact i64 %i.sg, 32
  %i.si = getelementptr inbounds i8, ptr %i.sf, i64 %i.sh ; 2 uses
  store ptr %i.si, ptr %i.bh, align 8, !tbaa !35
  %i.sj = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.sk = load i64, ptr %i.bp, align 8, !tbaa !24
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !26 ; 3 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !29 ; 2 uses
  %.0.i = add i32 %.pn.i, %i.rm                   ; 2 uses
  %i.sn = icmp slt i32 %.0.i, 1
  br i1 %i.sn, label %.lr.ph132.i, label %._crit_edge133.i, !llvm.loop !76

._crit_edge133.i:                                 ; preds = %bb.eu, %bb.es
  %i.so = phi ptr [ %i.rk, %bb.es ], [ %i.sm, %bb.eu ]
  %.0.lcssa.i = phi i32 [ %.0130.i, %bb.es ], [ %.0.i, %bb.eu ]
  %i.sp = tail call i32 @llvm.umin.i32(i32 %.0.lcssa.i, i32 8192) ; 3 uses
  %i.sq = load ptr, ptr %1, align 8, !tbaa !42    ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !30
  %sext.i = shl i64 %i.qp, 32
  %i.st = ashr exact i64 %sext.i, 32
  %i.su = getelementptr inbounds i8, ptr %i.ss, i64 %i.st ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 52 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !90
  %.not.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.thread157.i

.thread157.i:                                     ; preds = %._crit_edge133.i
  store i8 0, ptr %i.su, align 1, !tbaa !38
  store i32 0, ptr %i.bq, align 4, !tbaa !33
  %2 = load ptr, ptr %i.bo, align 8, !tbaa !23
  %3 = load i64, ptr %i.bp, align 8, !tbaa !24
  %4 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  br label %bb.ew

.preheader.i.i:                                   ; preds = %._crit_edge133.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 40 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sq, i64 48 ; 5 uses
  %i.sz = add nsw i32 %i.sp, -1                   ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.sz to i64
  %.pre.i.i = load ptr, ptr %i.sx, align 8, !tbaa !91
  %.pre19.i.i = load i32, ptr %i.sy, align 8, !tbaa !92 ; 2 uses
  %i.ta = add nsw i32 %.pre19.i.i, 1
  store i32 %i.ta, ptr %i.sy, align 8, !tbaa !92
  %i.tb = sext i32 %.pre19.i.i to i64
  %i.tc = getelementptr inbounds i8, ptr %.pre.i.i, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !38
  store i8 %i.td, ptr %i.su, align 1, !tbaa !38
  %exitcond.not.i.i1119 = icmp eq i32 %i.sz, 0
  %.pre20.i.i1120 = load ptr, ptr %i.sx, align 8, !tbaa !91 ; 2 uses
  %.pre21.i.i1121 = load i32, ptr %i.sy, align 8, !tbaa !92 ; 2 uses
  br i1 %exitcond.not.i.i1119, label %.critedge.i.i, label %.lr.ph1125

bb.ev:                                            ; preds = %.lr.ph1125
  %i.te = add nsw i32 %.pre21.i.i1124, 1
  store i32 %i.te, ptr %i.sy, align 8, !tbaa !92
  %i.tf = sext i32 %.pre21.i.i1124 to i64
  %i.tg = getelementptr inbounds i8, ptr %.pre20.i.i1123, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !38
  %i.ti = getelementptr inbounds nuw i8, ptr %i.su, i64 %indvars.iv.next.i.i
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !38
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %.pre20.i.i = load ptr, ptr %i.sx, align 8, !tbaa !91 ; 2 uses
  %.pre21.i.i = load i32, ptr %i.sy, align 8, !tbaa !92 ; 2 uses
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph1125, !llvm.loop !77

.lr.ph1125:                                       ; preds = %.preheader.i.i, %bb.ev
  %.pre21.i.i1124 = phi i32 [ %.pre21.i.i, %bb.ev ], [ %.pre21.i.i1121, %.preheader.i.i ] ; 3 uses
  %.pre20.i.i1123 = phi ptr [ %.pre20.i.i, %bb.ev ], [ %.pre20.i.i1120, %.preheader.i.i ] ; 2 uses
  %indvars.iv.i.i1122 = phi i64 [ %indvars.iv.next.i.i, %bb.ev ], [ 0, %.preheader.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i1122, 1 ; 4 uses
  %i.tj = sext i32 %.pre21.i.i1124 to i64
  %i.tk = getelementptr inbounds i8, ptr %.pre20.i.i1123, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !38
  %.not15.i.i = icmp eq i8 %i.tl, 0
  br i1 %.not15.i.i, label %expr_read.exit.thread159.i, label %bb.ev, !llvm.loop !77

.critedge.i.i:                                    ; preds = %bb.ev, %.preheader.i.i
  %.pre20.i.i.lcssa = phi ptr [ %.pre20.i.i1120, %.preheader.i.i ], [ %.pre20.i.i, %bb.ev ]
  %.pre21.i.i.lcssa = phi i32 [ %.pre21.i.i1121, %.preheader.i.i ], [ %.pre21.i.i, %bb.ev ]
  %.phi.trans.insert.i.i = sext i32 %.pre21.i.i.lcssa to i64
  %.phi.trans.insert22.i.i = getelementptr inbounds i8, ptr %.pre20.i.i.lcssa, i64 %.phi.trans.insert.i.i
  %.pre23.i.i = load i8, ptr %.phi.trans.insert22.i.i, align 1, !tbaa !38
  %i.tm = icmp eq i8 %.pre23.i.i, 0
  br i1 %i.tm, label %expr_read.exit.i, label %.thread161.i

expr_read.exit.thread159.i:                       ; preds = %.lr.ph1125
  %6 = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %expr_read.exit.i

expr_read.exit.i:                                 ; preds = %expr_read.exit.thread159.i, %.critedge.i.i
  %.lcssa25.i.i = phi i32 [ %i.sp, %.critedge.i.i ], [ %6, %expr_read.exit.thread159.i ]
  store i32 1, ptr %i.sv, align 4, !tbaa !90
  br label %.thread161.i

.thread161.i:                                     ; preds = %expr_read.exit.i, %.critedge.i.i
  %.1.i.i = phi i32 [ %i.sp, %.critedge.i.i ], [ %.lcssa25.i.i, %expr_read.exit.i ] ; 4 uses
  %7 = sext i32 %.1.i.i to i64
  %i.tn = getelementptr inbounds i8, ptr %i.su, i64 %7
  store i8 0, ptr %i.tn, align 1, !tbaa !38
  store i32 %.1.i.i, ptr %i.bq, align 4, !tbaa !33
  %i.to = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.tp = load i64, ptr %i.bp, align 8, !tbaa !24
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %i.tp
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !26 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 28
  store i32 %.1.i.i, ptr %i.ts, align 4, !tbaa !32
  br label %bb.ez

bb.ew:                                            ; preds = %.thread157.i, %.thread118.i
  %.sink170.i = phi ptr [ %5, %.thread157.i ], [ %i.rk, %.thread118.i ] ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.sink170.i, i64 28
  store i32 0, ptr %i.tt, align 4, !tbaa !32
  %i.tu = icmp eq i32 %i.qq, 0
  br i1 %i.tu, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.tv = load ptr, ptr %i.br, align 8, !tbaa !20
  tail call void @fits_parser_yyrestart(ptr noundef %i.tv, ptr noundef nonnull %1)
  %.pre142.i = load i32, ptr %i.bq, align 4, !tbaa !33
  %.pre143.i = load ptr, ptr %i.bo, align 8, !tbaa !23
  %.pre144.i = load i64, ptr %i.bp, align 8, !tbaa !24
  %.phi.trans.insert145.i = getelementptr inbounds nuw [8 x i8], ptr %.pre143.i, i64 %.pre144.i
  %.pre146.i = load ptr, ptr %.phi.trans.insert145.i, align 8, !tbaa !26
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.tw = getelementptr inbounds nuw i8, ptr %.sink170.i, i64 56
  store i32 2, ptr %i.tw, align 8, !tbaa !48
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %.thread161.i
  %i.tx = phi ptr [ %.pre146.i, %bb.ex ], [ %.sink170.i, %bb.ey ], [ %i.tr, %.thread161.i ] ; 3 uses
  %i.ty = phi i32 [ %.pre142.i, %bb.ex ], [ 0, %bb.ey ], [ %.1.i.i, %.thread161.i ] ; 2 uses
  %.0100.i = phi i32 [ 1, %bb.ex ], [ 2, %bb.ey ], [ 0, %.thread161.i ]
  %i.tz = add nsw i32 %i.ty, %i.qq                ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !29
  %i.uc = icmp sgt i32 %i.tz, %i.ub
  br i1 %i.uc, label %bb.fa, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.ez
  %.phi.trans.insert149.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %.pre150.i = load ptr, ptr %.phi.trans.insert149.i, align 8, !tbaa !30
  br label %yy_get_next_buffer.exit

bb.fa:                                            ; preds = %bb.ez
  %i.ud = ashr i32 %i.ty, 1
  %i.ue = add nsw i32 %i.tz, %i.ud                ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !30
  %i.uh = sext i32 %i.ue to i64
  %i.ui = tail call noalias noundef ptr @realloc(ptr noundef %i.ug, i64 noundef %i.uh) #31 ; 3 uses
  %i.uj = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.uk = load i64, ptr %i.bp, align 8, !tbaa !24
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %i.uk
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !26 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store ptr %i.ui, ptr %i.un, align 8, !tbaa !30
  %.not113.i = icmp eq ptr %i.ui, null
  br i1 %.not113.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.58) #30
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.uo = add nsw i32 %i.ue, -2
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  store i32 %i.uo, ptr %i.up, align 8, !tbaa !29
  %.pre147.i = load i32, ptr %i.bq, align 4, !tbaa !33
  %.pre151.i = add nsw i32 %.pre147.i, %i.qq
  br label %yy_get_next_buffer.exit

yy_get_next_buffer.exit:                          ; preds = %._crit_edge148.i, %bb.fc
  %.pre-phi.i = phi i32 [ %i.tz, %._crit_edge148.i ], [ %.pre151.i, %bb.fc ] ; 2 uses
  %i.uq = phi ptr [ %.pre150.i, %._crit_edge148.i ], [ %i.ui, %bb.fc ]
  store i32 %.pre-phi.i, ptr %i.bq, align 4, !tbaa !33
  %i.ur = sext i32 %.pre-phi.i to i64
  %i.us = getelementptr inbounds i8, ptr %i.uq, i64 %i.ur
  store i8 0, ptr %i.us, align 1, !tbaa !38
  %i.ut = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.uu = load i64, ptr %i.bp, align 8, !tbaa !24
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.uu
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !26
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !30
  %i.uz = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr i8, ptr %i.uy, i64 %i.va
  %i.vc = getelementptr i8, ptr %i.vb, i64 1
  store i8 0, ptr %i.vc, align 1, !tbaa !38
  %i.vd = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.ve = load i64, ptr %i.bp, align 8, !tbaa !24
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !26
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !30 ; 8 uses
  store ptr %i.vi, ptr %i.bm, align 8, !tbaa !36
  switch i32 %.0100.i, label %default.unreachable913 [
    i32 1, label %yy_get_previous_state.exit481
    i32 0, label %bb.fd
    i32 2, label %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread532_crit_edge
  ]

yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread532_crit_edge: ; preds = %yy_get_next_buffer.exit
  %.pre875 = load i32, ptr %i.bq, align 4, !tbaa !33
  %.pre878 = sext i32 %.pre875 to i64
  br label %yy_get_next_buffer.exit.thread532

bb.fd:                                            ; preds = %yy_get_next_buffer.exit
  %i.vj = ptrtoint ptr %.3353 to i64
  %i.vk = ptrtoint ptr %i.ms to i64
  %i.vl = sub i64 %i.vj, %i.vk                    ; 2 uses
  %i.vm = trunc i64 %i.vl to i32
  %i.vn = shl i64 %i.vl, 32
  %sext1019 = add i64 %i.vn, -4294967296
  %i.vo = ashr exact i64 %sext1019, 32
  %i.vp = getelementptr inbounds i8, ptr %i.vi, i64 %i.vo ; 4 uses
  store ptr %i.vp, ptr %i.bh, align 8, !tbaa !35
  %i.vq = load i32, ptr %i.bj, align 4, !tbaa !79 ; 2 uses
  %i.vr = icmp sgt i32 %i.vm, 1
  br i1 %i.vr, label %.lr.ph31.i468, label %.loopexit544.backedge

.lr.ph31.i468:                                    ; preds = %bb.fd, %._crit_edge.i478
  %.02129.i469 = phi ptr [ %i.xa, %._crit_edge.i478 ], [ %i.vi, %bb.fd ] ; 3 uses
  %.02228.i470 = phi i32 [ %i.wz, %._crit_edge.i478 ], [ %i.vq, %bb.fd ] ; 3 uses
  %i.vs = load i8, ptr %.02129.i469, align 1, !tbaa !38 ; 2 uses
  %.not.i471 = icmp eq i8 %i.vs, 0
  br i1 %.not.i471, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph31.i468
  %i.vt = zext i8 %i.vs to i64
  %i.vu = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !38
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph31.i468
  %i.vw = phi i8 [ %i.vv, %bb.fe ], [ 1, %.lr.ph31.i468 ] ; 2 uses
  %i.vx = sext i32 %.02228.i470 to i64            ; 3 uses
  %i.vy = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.vx
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !81
  %.not24.i472 = icmp eq i16 %i.vz, 0
  br i1 %.not24.i472, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  store i32 %.02228.i470, ptr %i.bk, align 8, !tbaa !82
  store ptr %.02129.i469, ptr %i.bl, align 8, !tbaa !83
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.wa = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.vx
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !81
  %i.wc = sext i16 %i.wb to i64
  %i.wd = zext i8 %i.vw to i64                    ; 2 uses
  %i.we = add nsw i64 %i.wc, %i.wd                ; 2 uses
  %i.wf = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.we
  %i.wg = load i16, ptr %i.wf, align 2, !tbaa !81
  %i.wh = sext i16 %i.wg to i32
  %.not2526.i473 = icmp eq i32 %.02228.i470, %i.wh
  br i1 %.not2526.i473, label %._crit_edge.i478, label %.lr.ph.i474

.lr.ph.i474:                                      ; preds = %bb.fh, %bb.fj
  %i.wi = phi i64 [ %i.wt, %bb.fj ], [ %i.wd, %bb.fh ]
  %i.wj = phi i64 [ %i.wp, %bb.fj ], [ %i.vx, %bb.fh ]
  %.027.i475 = phi i8 [ %.1.i476, %bb.fj ], [ %i.vw, %bb.fh ]
  %i.wk = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.wj
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !81 ; 3 uses
  %i.wm = icmp sgt i16 %i.wl, 173
  br i1 %i.wm, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %.lr.ph.i474
  %i.wn = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.wi
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !38
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %.lr.ph.i474
  %.1.i476 = phi i8 [ %i.wo, %bb.fi ], [ %.027.i475, %.lr.ph.i474 ] ; 2 uses
  %i.wp = sext i16 %i.wl to i64                   ; 2 uses
  %i.wq = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.wp
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !81
  %i.ws = sext i16 %i.wr to i64
  %i.wt = zext i8 %.1.i476 to i64                 ; 2 uses
  %i.wu = add nsw i64 %i.ws, %i.wt                ; 2 uses
  %i.wv = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.wu
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !81
  %.not25.i477 = icmp eq i16 %i.wl, %i.ww
  br i1 %.not25.i477, label %._crit_edge.i478, label %.lr.ph.i474, !llvm.loop !70

._crit_edge.i478:                                 ; preds = %bb.fj, %bb.fh
  %.lcssa.i479 = phi i64 [ %i.we, %bb.fh ], [ %i.wu, %bb.fj ]
  %i.wx = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i479
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !81
  %i.wz = sext i16 %i.wy to i32                   ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.02129.i469, i64 1 ; 2 uses
  %exitcond.not.i480 = icmp eq ptr %i.xa, %i.vp
  br i1 %exitcond.not.i480, label %.loopexit544.backedge, label %.lr.ph31.i468, !llvm.loop !71

yy_get_next_buffer.exit.thread532:                ; preds = %bb.eq, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread532_crit_edge
  %.pre-phi = phi i64 [ %.pre878, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread532_crit_edge ], [ %i.nk, %bb.eq ]
  %i.xb = phi ptr [ %i.vi, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread532_crit_edge ], [ %i.qe, %bb.eq ] ; 4 uses
  %i.xc = phi ptr [ %i.vi, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread532_crit_edge ], [ %i.ni, %bb.eq ]
  %i.xd = getelementptr inbounds i8, ptr %i.xc, i64 %.pre-phi ; 5 uses
  store ptr %i.xd, ptr %i.bh, align 8, !tbaa !35
  %i.xe = load i32, ptr %i.bj, align 4, !tbaa !79 ; 2 uses
  %i.xf = icmp ult ptr %i.xb, %i.xd
  br i1 %i.xf, label %.lr.ph31.i483, label %.preheader546.outer.backedge

.lr.ph31.i483:                                    ; preds = %yy_get_next_buffer.exit.thread532, %._crit_edge.i493
  %.02129.i484 = phi ptr [ %i.yo, %._crit_edge.i493 ], [ %i.xb, %yy_get_next_buffer.exit.thread532 ] ; 3 uses
  %.02228.i485 = phi i32 [ %i.yn, %._crit_edge.i493 ], [ %i.xe, %yy_get_next_buffer.exit.thread532 ] ; 3 uses
  %i.xg = load i8, ptr %.02129.i484, align 1, !tbaa !38 ; 2 uses
  %.not.i486 = icmp eq i8 %i.xg, 0
  br i1 %.not.i486, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph31.i483
  %i.xh = zext i8 %i.xg to i64
  %i.xi = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.xh
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !38
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph31.i483
  %i.xk = phi i8 [ %i.xj, %bb.fk ], [ 1, %.lr.ph31.i483 ] ; 2 uses
  %i.xl = sext i32 %.02228.i485 to i64            ; 3 uses
  %i.xm = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.xl
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !81
  %.not24.i487 = icmp eq i16 %i.xn, 0
  br i1 %.not24.i487, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store i32 %.02228.i485, ptr %i.bk, align 8, !tbaa !82
  store ptr %.02129.i484, ptr %i.bl, align 8, !tbaa !83
  br label %bb.fn

end_hunk_0
