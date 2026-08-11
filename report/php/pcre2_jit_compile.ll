inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@fast_forward_first_n_chars:bb.a
  %i.bg = zext i32 %i.bf to i64
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, -1 ; 5 uses
  %i.bh = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv.next92.i ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !438 ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = icmp ugt i8 %i.bj, 2
  br i1 %i.bl, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph86.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !82  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !82  ; 2 uses
  %i.bq = sext i32 %i.bf to i64
  %i.br = icmp sgt i64 %indvars.iv.next92.i, %i.bq
  br i1 %i.br, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bs = trunc nuw nsw i64 %indvars.iv.next92.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bg, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %.176.i = phi i32 [ %.05383.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.o ] ; 4 uses
  %.15575.i = phi i32 [ %.05482.i, %.lr.ph.preheader.i ], [ %.256.i, %bb.o ] ; 4 uses
  %.15974.i = phi i32 [ %.05881.i, %.lr.ph.preheader.i ], [ %.260.i, %bb.o ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !438 ; 2 uses
  %i.bw = icmp ugt i8 %i.bv, 2
  br i1 %i.bw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.i
  %i.bx = zext i8 %i.bv to i32
  %i.by = add nuw nsw i32 %i.bx, %i.bk            ; 2 uses
  %.not.i = icmp ult i32 %i.by, %.15974.i
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !82  ; 2 uses
  %.not69.i = icmp eq i8 %i.bn, %i.ca
  br i1 %.not69.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !82  ; 2 uses
  %.not70.i = icmp eq i8 %i.bn, %i.cc
  %.not71.i = icmp eq i8 %i.bp, %i.ca
  %.not72.i = icmp eq i8 %i.bp, %i.cc
  %i.cd = or i1 %.not71.i, %.not72.i
  %or.cond73.i = select i1 %.not70.i, i1 true, i1 %i.cd
  br i1 %or.cond73.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %.lr.ph.i
  %.260.i = phi i32 [ %i.by, %bb.n ], [ %.15974.i, %bb.k ], [ %.15974.i, %.lr.ph.i ], [ %.15974.i, %bb.m ], [ %.15974.i, %bb.l ] ; 2 uses
  %.256.i = phi i32 [ %i.ce, %bb.n ], [ %.15575.i, %bb.k ], [ %.15575.i, %.lr.ph.i ], [ %.15575.i, %bb.m ], [ %.15575.i, %bb.l ] ; 2 uses
  %.2.i = phi i32 [ %i.bs, %bb.n ], [ %.176.i, %bb.k ], [ %.176.i, %.lr.ph.i ], [ %.176.i, %bb.m ], [ %.176.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %sext.i = shl i64 %indvars.iv.next.i, 32
  %i.cf = ashr exact i64 %sext.i, 32
  %i.cg = icmp slt i64 %i.cf, %indvars.iv.next92.i
  br i1 %i.cg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !440

.loopexit.i:                                      ; preds = %bb.o, %bb.j, %.lr.ph86.i
  %.361.i = phi i32 [ %.05881.i, %.lr.ph86.i ], [ %.05881.i, %bb.j ], [ %.260.i, %bb.o ] ; 2 uses
  %.357.i = phi i32 [ %.05482.i, %.lr.ph86.i ], [ %.05482.i, %bb.j ], [ %.256.i, %bb.o ] ; 3 uses
  %.3.i = phi i32 [ %.05383.i, %.lr.ph86.i ], [ %.05383.i, %bb.j ], [ %.2.i, %bb.o ] ; 3 uses
  %i.ch = icmp sgt i64 %indvars.iv91.i, 2
  br i1 %i.ch, label %.lr.ph86.i, label %._crit_edge.i, !llvm.loop !441

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.ci = icmp eq i32 %.361.i, 0
  br i1 %i.ci, label %.lr.ph.preheader, label %check_fast_forward_char_pair_simd.exit

check_fast_forward_char_pair_simd.exit:           ; preds = %._crit_edge.i
  %i.cj = zext nneg i32 %.3.i to i64
  %i.ck = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !82
  %i.cp = sext i32 %.357.i to i64
  %i.cq = getelementptr inbounds [7 x i8], ptr %1, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !82
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !82
  call fastcc void @fast_forward_char_pair_simd(ptr noundef nonnull %0, i32 noundef %.3.i, i8 noundef zeroext %i.cm, i8 noundef zeroext %i.co, i32 noundef %.357.i, i8 noundef zeroext %i.cs, i8 noundef zeroext %i.cu)
  br label %sljit_emit_op1.exit323

.lr.ph.preheader:                                 ; preds = %bb.i, %._crit_edge.i
  %i.cv = zext nneg i32 %i.ab to i64
  %i.cw = add nuw i32 %i.ab, 1
  %wide.trip.count668 = zext i32 %i.cw to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %indvars.iv665 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next666, %bb.t ] ; 6 uses
  %.0652 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.t ]
  %.0153651 = phi i32 [ 3, %.lr.ph.preheader ], [ %.1154, %bb.t ] ; 4 uses
  %.0155650 = phi i32 [ -1, %.lr.ph.preheader ], [ %.1156, %bb.t ] ; 3 uses
  %.0157649 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1158, %bb.t ] ; 3 uses
  %.not175 = icmp ne i32 %.0652, 0                ; 2 uses
  br i1 %.not175, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph
  %i.cx = trunc nuw nsw i64 %indvars.iv665 to i32
  %i.cy = sub nsw i32 %i.cx, %.0157649            ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, %.0153651
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = add nsw i64 %indvars.iv665, -1          ; 2 uses
  %i.db = getelementptr inbounds [7 x i8], ptr %1, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !436
  %.not176 = icmp eq i8 %i.dc, -1                 ; 2 uses
  %i.dd = trunc nsw i64 %i.da to i32
  %spec.select = select i1 %.not176, i32 %.0155650, i32 %i.dd
  %spec.select179 = select i1 %.not176, i32 %.0153651, i32 %i.cy
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph
  %.1156 = phi i32 [ %.0155650, %.lr.ph ], [ %spec.select, %bb.q ], [ %.0155650, %bb.p ] ; 6 uses
  %.1154 = phi i32 [ %.0153651, %.lr.ph ], [ %spec.select179, %bb.q ], [ %.0153651, %bb.p ] ; 3 uses
  %i.de = icmp samesign ult i64 %indvars.iv665, %i.cv
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv665
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !436
  %.not177 = icmp eq i8 %i.dg, -1                 ; 2 uses
  %i.dh = or i1 %.not175, %.not177
  %i.di = trunc nuw nsw i64 %indvars.iv665 to i32
  %spec.select183 = select i1 %i.dh, i32 %.0157649, i32 %i.di
  %not..not177 = xor i1 %.not177, true
  %spec.select184 = zext i1 %not..not177 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1158 = phi i32 [ %.0157649, %bb.r ], [ %spec.select183, %bb.s ]
  %.1 = phi i32 [ 0, %bb.r ], [ %spec.select184, %bb.s ]
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %exitcond669.not = icmp eq i64 %indvars.iv.next666, %wide.trip.count668
  br i1 %exitcond669.not, label %._crit_edge, label %.lr.ph, !llvm.loop !442

._crit_edge:                                      ; preds = %bb.t
  %i.dj = icmp sgt i32 %.1156, -1
  br i1 %i.dj, label %bb.u, label %.lr.ph660.preheader

bb.u:                                             ; preds = %._crit_edge
  %i.dk = load ptr, ptr %0, align 8, !tbaa !126   ; 4 uses
  %.val13.i = load i32, ptr %i.dk, align 8, !tbaa !127
  %.not.i185 = icmp eq i32 %.val13.i, 0
  br i1 %.not.i185, label %bb.v, label %sljit_emit_op1.exit323, !prof !128

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !115 ; 2 uses
  %.val.i = load ptr, ptr %i.dm, align 8, !tbaa !86
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %.val12.i = load ptr, ptr %i.dn, align 8, !tbaa !87
  %i.do = call ptr %.val.i(i64 noundef 264, ptr noundef %.val12.i) #20, !inline_history !443 ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.w, label %.lr.ph656.preheader, !prof !37

bb.w:                                             ; preds = %bb.v
  %i.dq = load i32, ptr %i.dk, align 8, !tbaa !127
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.x, label %sljit_emit_op1.exit323

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.dk, align 8, !tbaa !127
  br label %sljit_emit_op1.exit323

.lr.ph656.preheader:                              ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !57
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !22
  store ptr %i.do, ptr %i.ds, align 8, !tbaa !57
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %i.dv = trunc i32 %.1154 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.du, i8 %i.dv, i64 256, i1 false)
  %i.dw = zext nneg i32 %.1156 to i64
  %wide.trip.count673 = zext nneg i32 %.1154 to i64
  br label %.lr.ph656

.lr.ph656:                                        ; preds = %.lr.ph656.preheader, %bb.ab
  %indvars.iv670 = phi i64 [ 0, %.lr.ph656.preheader ], [ %indvars.iv.next671, %bb.ab ] ; 4 uses
  %i.dx = sub nsw i64 %i.dw, %indvars.iv670
  %i.dy = getelementptr inbounds [7 x i8], ptr %1, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2 ; 2 uses
  %i.ea = load i8, ptr %i.dy, align 1, !tbaa !436
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb
  %i.ed = trunc i64 %indvars.iv670 to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph656
  %.0164 = phi ptr [ %i.dz, %.lr.ph656 ], [ %i.ek, %bb.aa ] ; 2 uses
  %i.ee = load i8, ptr %.0164, align 1, !tbaa !82
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ef ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !82
  %i.ei = zext i8 %i.eh to i64
  %i.ej = icmp samesign ult i64 %indvars.iv670, %i.ei
  br i1 %i.ej, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 %i.ed, ptr %i.eg, align 1, !tbaa !82
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %.0164, i64 1 ; 2 uses
  %i.el = icmp ult ptr %i.ek, %i.ec
  br i1 %i.el, label %bb.y, label %bb.ab, !llvm.loop !444

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %exitcond674.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count673
  br i1 %exitcond674.not, label %.loopexit.loopexit, label %.lr.ph656, !llvm.loop !445

.loopexit.loopexit:                               ; preds = %bb.ab
  %i.em = ptrtoint ptr %i.du to i64
  br label %.lr.ph660.preheader

.lr.ph660.preheader:                              ; preds = %._crit_edge, %.loopexit.loopexit
  %.0152 = phi i64 [ 0, %._crit_edge ], [ %i.em, %.loopexit.loopexit ]
  %i.en = zext i32 %.1156 to i64
  %wide.trip.count679 = zext nneg i32 %i.ab to i64
  br label %.lr.ph660

.lr.ph660:                                        ; preds = %.lr.ph660.preheader, %bb.af
  %indvars.iv675 = phi i64 [ 0, %.lr.ph660.preheader ], [ %indvars.iv.next676, %bb.af ] ; 6 uses
  %.0162657 = phi i32 [ -1, %.lr.ph660.preheader ], [ %.1163, %bb.af ] ; 4 uses
  %i.eo = icmp eq i64 %indvars.iv675, %i.en
  br i1 %i.eo, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph660
  %i.ep = icmp eq i32 %.0162657, -1
  br i1 %i.ep, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv675
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !438
  %i.et = icmp ugt i8 %i.es, 1
  %i.eu = trunc nuw nsw i64 %indvars.iv675 to i32
  %spec.select181 = select i1 %i.et, i32 %i.eu, i32 -1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ev = sext i32 %.0162657 to i64
  %i.ew = getelementptr inbounds [7 x i8], ptr %1, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !438
  %i.ez = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv675
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !438
  %i.fc = icmp ult i8 %i.ey, %i.fb
  %i.fd = trunc nuw nsw i64 %indvars.iv675 to i32
  %spec.select182 = select i1 %i.fc, i32 %i.fd, i32 %.0162657
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph660
  %.1163 = phi i32 [ %.0162657, %.lr.ph660 ], [ %spec.select181, %bb.ad ], [ %spec.select182, %bb.ae ] ; 7 uses
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1 ; 2 uses
  %exitcond680.not = icmp eq i64 %indvars.iv.next676, %wide.trip.count679
  br i1 %exitcond680.not, label %._crit_edge661, label %.lr.ph660, !llvm.loop !446

._crit_edge661:                                   ; preds = %bb.af
  %i.fe = icmp slt i32 %.1156, 0
  br i1 %i.fe, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge661
  %i.ff = icmp slt i32 %.1163, 0
  br i1 %i.ff, label %sljit_emit_op1.exit323, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fg = zext nneg i32 %.1163 to i64
  %i.fh = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !82
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !82
  call fastcc void @fast_forward_first_char2(ptr noundef %0, i8 noundef zeroext %i.fj, i8 noundef zeroext %i.fl, i32 noundef %.1163)
  br label %sljit_emit_op1.exit323

bb.ai:                                            ; preds = %._crit_edge661
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !106 ; 2 uses
  %.not172 = icmp eq i32 %i.fn, 0
  %i.fo = load i32, ptr %i.b, align 8, !tbaa !127
  %.not.i200 = icmp eq i32 %i.fo, 0               ; 2 uses
  br i1 %.not172, label %bb.bj, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not.i200, label %bb.ak, label %sljit_emit_op2u.exit, !prof !128

bb.ak:                                            ; preds = %bb.aj
  %i.fp = sext i32 %i.fn to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 4 uses
  store i32 0, ptr %i.fq, align 8, !tbaa !130
  %i.fr = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef %i.fp) ; 2 uses
  %.not66.i = icmp eq ptr %i.fr, null
  br i1 %.not66.i, label %emit_mov.exit, label %sljit_emit_op1.exit, !prof !37

emit_mov.exit:                                    ; preds = %bb.ak
  %i.fs = load i32, ptr %i.b, align 8, !tbaa !127
  %.not113.i = icmp eq i32 %i.fs, 0
  br i1 %.not113.i, label %sljit_emit_op1.exit.thread, label %sljit_emit_op2u.exit, !prof !138

sljit_emit_op1.exit:                              ; preds = %bb.ak
  store i8 -117, ptr %i.fr, align 1, !tbaa !82
  %.pre = load i32, ptr %i.b, align 8, !tbaa !127
  %i.ft = icmp eq i32 %.pre, 0
  br i1 %i.ft, label %sljit_emit_op1.exit.thread, label %sljit_emit_op2u.exit, !prof !141

sljit_emit_op1.exit.thread:                       ; preds = %emit_mov.exit, %sljit_emit_op1.exit
  store i32 0, ptr %i.fq, align 8, !tbaa !130
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !120 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !131 ; 2 uses
  %i.fy = add i64 %i.fx, 4                        ; 2 uses
  %i.fz = icmp ult i64 %i.fy, 4081
  br i1 %i.fz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %sljit_emit_op1.exit.thread
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fx
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !131
  br label %sljit_emit_op1.exit193

bb.am:                                            ; preds = %sljit_emit_op1.exit.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !115 ; 2 uses
  %.val.i.i466 = load ptr, ptr %i.gd, align 8, !tbaa !86
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  %.val18.i.i467 = load ptr, ptr %i.ge, align 8, !tbaa !87
  %i.gf = call ptr %.val.i.i466(i64 noundef 4096, ptr noundef %.val18.i.i467) #20, !inline_history !136 ; 5 uses
  %.not.i.i468 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i468, label %emit_mov.exit330, label %bb.an, !prof !37

bb.an:                                            ; preds = %bb.am
  %i.gg = load ptr, ptr %i.fu, align 8, !tbaa !120
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !134
  store ptr %i.gf, ptr %i.fu, align 8, !tbaa !120
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 4, ptr %i.gh, align 8, !tbaa !131
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  br label %sljit_emit_op1.exit193

emit_mov.exit330:                                 ; preds = %bb.am
  store i32 2, ptr %i.b, align 8, !tbaa !127
  br label %sljit_emit_op2u.exit

sljit_emit_op1.exit193:                           ; preds = %bb.an, %bb.al
  %.0.i269.ph.i469 = phi ptr [ %i.gi, %bb.an ], [ %i.gb, %bb.al ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i469, i64 1
  store i8 3, ptr %.0.i269.ph.i469, align 1, !tbaa !82
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !135
  %i.gm = add i64 %i.gl, 3
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !135
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i469, i64 2
  store i8 72, ptr %i.gj, align 1, !tbaa !82
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i469, i64 3
  store i8 -33, ptr %i.go, align 1, !tbaa !82
  store i8 -119, ptr %i.gn, align 1, !tbaa !82
  %.pre681 = load i32, ptr %i.b, align 8, !tbaa !127
  %i.gp = icmp eq i32 %.pre681, 0
  br i1 %i.gp, label %sljit_emit_op2.exit, label %sljit_emit_op2u.exit, !prof !141

sljit_emit_op2.exit:                              ; preds = %sljit_emit_op1.exit193
  store i32 0, ptr %i.fq, align 8, !tbaa !130
  %i.gq = call fastcc i32 @emit_non_cum_binary(ptr noundef nonnull %i.b, i32 noundef 757803304, i32 noundef 13, i64 noundef 0, i32 noundef 13, i64 noundef 0, i32 noundef 127, i64 noundef %wide.trip.count) ; 0 uses
  %.pr533.pre = load i32, ptr %i.b, align 8, !tbaa !127
  %i.gr = icmp eq i32 %.pr533.pre, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  br i1 %i.gr, label %bb.ao, label %sljit_emit_op2u.exit, !prof !141

bb.ao:                                            ; preds = %sljit_emit_op2.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 6 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !121 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !131 ; 2 uses
  %i.gx = add i64 %i.gw, 32                       ; 2 uses
  %i.gy = icmp ult i64 %i.gx, 4081
  br i1 %i.gy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gw
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !131
  br label %bb.at
end_hunk_0
begin_hunk_1_@compile_matchingpath:bb.a
bb.jv:                                            ; preds = %bb.ju
  %i.aqh = load i32, ptr %i.cu, align 4, !tbaa !96
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.alp, i64 144
  store i32 0, ptr %i.aqj, align 8, !tbaa !130
  %i.aqk = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 4, i64 noundef 0, i32 noundef 142, i64 noundef %i.aqi) ; 2 uses
  %.not66.i1151 = icmp eq ptr %i.aqk, null
  br i1 %.not66.i1151, label %emit_mov.exit1153, label %emit_mov.exit1153.thread, !prof !37

emit_mov.exit1153.thread:                         ; preds = %bb.jv
  store i8 -117, ptr %i.aqk, align 1, !tbaa !82
  %.pre1646 = load i32, ptr %i.alp, align 8, !tbaa !127
  br label %sljit_emit_op1.exit844

emit_mov.exit1153:                                ; preds = %bb.jv
  %i.aql = load i32, ptr %i.alp, align 8, !tbaa !127
  %.not113.i842 = icmp eq i32 %i.aql, 0
  br i1 %.not113.i842, label %sljit_emit_op1.exit844.thread, label %sljit_emit_op2.exit838, !prof !138

sljit_emit_op1.exit844:                           ; preds = %emit_mov.exit1153.thread, %sljit_emit_op1.exit850
  %i.aqm = phi i32 [ %.pre1646, %emit_mov.exit1153.thread ], [ %.pre1647, %sljit_emit_op1.exit850 ]
  %.not.i836 = icmp eq i32 %i.aqm, 0
  br i1 %.not.i836, label %sljit_emit_op1.exit844.thread, label %sljit_emit_op2.exit838, !prof !141

sljit_emit_op1.exit844.thread:                    ; preds = %emit_mov.exit1153, %sljit_emit_op1.exit844
  %.in1582 = zext nneg i32 %.5244.i to i64
  %i.aqn = shl nuw nsw i64 %.in1582, 3            ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.alp, i64 144
  store i32 0, ptr %i.aqo, align 8, !tbaa !130
  %or.cond.i1141 = icmp samesign ult i32 %.5244.i, 268435456
  br i1 %or.cond.i1141, label %bb.jw, label %emit_lea_binary.exit1150.thread

bb.jw:                                            ; preds = %sljit_emit_op1.exit844.thread
  %i.aqp = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 140, i64 noundef %i.aqn) ; 2 uses
  %.not61.i1146 = icmp eq ptr %i.aqp, null
  br i1 %.not61.i1146, label %emit_lea_binary.exit1150, label %.thread.i1147, !prof !37

.thread.i1147:                                    ; preds = %bb.jw
  store i8 -115, ptr %i.aqp, align 1, !tbaa !82
  %i.aqq = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483648) %i.aqd) ; 2 uses
  %.not73.i.i1149 = icmp eq ptr %i.aqq, null
  br i1 %.not73.i.i1149, label %emit_lea_binary.exit1150, label %emit_lea_binary.exit1150.thread1358, !prof !37

emit_lea_binary.exit1150.thread1358:              ; preds = %.thread.i1147
  store i8 -119, ptr %i.aqq, align 1, !tbaa !82
  br label %sljit_emit_op2.exit838

emit_lea_binary.exit1150:                         ; preds = %.thread.i1147, %bb.jw
  %.052.i1144 = load i32, ptr %i.alp, align 8, !tbaa !127
  %.not170.i = icmp eq i32 %.052.i1144, 4
  br i1 %.not170.i, label %emit_lea_binary.exit1150.thread, label %sljit_emit_op2.exit838

emit_lea_binary.exit1150.thread:                  ; preds = %sljit_emit_op1.exit844.thread, %emit_lea_binary.exit1150
  %i.aqr = tail call fastcc i32 @emit_cum_binary(ptr noundef nonnull %i.alp, i32 noundef 84082944, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483648) %i.aqd, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.aqn) ; 0 uses
  br label %sljit_emit_op2.exit838

sljit_emit_op2.exit838:                           ; preds = %emit_mov.exit1153, %emit_lea_binary.exit1150, %emit_lea_binary.exit1150.thread1358, %bb.ju, %sljit_emit_op1.exit844, %emit_lea_binary.exit1150.thread
  br i1 %.not259.not.not.not.not.i, label %sljit_emit_op1.exit835thread-pre-split, label %bb.jx

bb.jx:                                            ; preds = %sljit_emit_op2.exit838
  %i.aqs = load i32, ptr %i.alp, align 8, !tbaa !127 ; 2 uses
  %.not.i830 = icmp eq i32 %i.aqs, 0
  br i1 %.not.i830, label %bb.jy, label %sljit_emit_op1.exit835, !prof !128

bb.jy:                                            ; preds = %bb.jx
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.alp, i64 144
  store i32 0, ptr %i.aqt, align 8, !tbaa !130
  %i.aqu = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 127, i64 noundef 1, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not71.i1137 = icmp eq ptr %i.aqu, null
  br i1 %.not71.i1137, label %sljit_emit_op1.exit835thread-pre-split, label %emit_mov.exit1139.thread, !prof !37

emit_mov.exit1139.thread:                         ; preds = %bb.jy
  store i8 -57, ptr %i.aqu, align 1, !tbaa !82
  br label %sljit_emit_op1.exit835thread-pre-split

sljit_emit_op1.exit835thread-pre-split:           ; preds = %sljit_emit_op2.exit838, %emit_mov.exit1139.thread, %bb.jy
  %.2.i.ph = phi i32 [ 1, %bb.jy ], [ 1, %emit_mov.exit1139.thread ], [ 0, %sljit_emit_op2.exit838 ]
  %.pre1649.pre1682.pr = load i32, ptr %i.alp, align 8, !tbaa !127
  br label %sljit_emit_op1.exit835

sljit_emit_op1.exit835:                           ; preds = %sljit_emit_op1.exit835thread-pre-split, %bb.jx
  %.pre1649.pre1682 = phi i32 [ %.pre1649.pre1682.pr, %sljit_emit_op1.exit835thread-pre-split ], [ %i.aqs, %bb.jx ] ; 2 uses
  %.2.i = phi i32 [ %.2.i.ph, %sljit_emit_op1.exit835thread-pre-split ], [ 1, %bb.jx ] ; 3 uses
  br i1 %.not260.i, label %bb.jz, label %bb.kb

bb.jz:                                            ; preds = %sljit_emit_op1.exit835
  %.not.i824 = icmp eq i32 %.pre1649.pre1682, 0
  br i1 %.not.i824, label %bb.ka, label %sljit_emit_op1.exit829, !prof !128

bb.ka:                                            ; preds = %bb.jz
  %i.aqv = shl nuw nsw i32 %.2.i, 3
  %i.aqw = zext nneg i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.alp, i64 144
  store i32 0, ptr %i.aqx, align 8, !tbaa !130
  %i.aqy = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 4, i64 noundef 0, i32 noundef 140, i64 noundef range(i64 -2147483648, 2147483664) %i.aqw) ; 2 uses
  %.not73.i1132 = icmp eq ptr %i.aqy, null
  br i1 %.not73.i1132, label %sljit_emit_op1.exit829, label %emit_mov.exit1134.thread, !prof !37

emit_mov.exit1134.thread:                         ; preds = %bb.ka
  store i8 -119, ptr %i.aqy, align 1, !tbaa !82
  br label %sljit_emit_op1.exit829

sljit_emit_op1.exit829:                           ; preds = %bb.ka, %emit_mov.exit1134.thread, %bb.jz
  %i.aqz = add nuw nsw i32 %.2.i, 1
  %.pre1649.pre = load i32, ptr %i.alp, align 8, !tbaa !127
  br label %bb.kb

bb.kb:                                            ; preds = %sljit_emit_op1.exit829, %sljit_emit_op1.exit835
  %.pre1649 = phi i32 [ %.pre1649.pre, %sljit_emit_op1.exit829 ], [ %.pre1649.pre1682, %sljit_emit_op1.exit835 ] ; 2 uses
  %.3.i = phi i32 [ %i.aqz, %sljit_emit_op1.exit829 ], [ %.2.i, %sljit_emit_op1.exit835 ] ; 3 uses
  br i1 %i.aqa, label %bb.kc, label %bb.ke

bb.kc:                                            ; preds = %bb.kb
  %.not.i818 = icmp eq i32 %.pre1649, 0
  br i1 %.not.i818, label %bb.kd, label %sljit_emit_op1.exit823, !prof !128

bb.kd:                                            ; preds = %bb.kc
  %i.ara = shl nuw nsw i32 %.3.i, 3
  %i.arb = zext nneg i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr %i.alp, i64 144
  store i32 0, ptr %i.arc, align 8, !tbaa !130
  %i.ard = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 140, i64 noundef range(i64 -2147483648, 2147483664) %i.arb) ; 2 uses
  %.not73.i1129 = icmp eq ptr %i.ard, null
  br i1 %.not73.i1129, label %sljit_emit_op1.exit823, label %emit_mov.exit1131.thread, !prof !37

emit_mov.exit1131.thread:                         ; preds = %bb.kd
  store i8 -119, ptr %i.ard, align 1, !tbaa !82
  br label %sljit_emit_op1.exit823

sljit_emit_op1.exit823:                           ; preds = %bb.kd, %emit_mov.exit1131.thread, %bb.kc
  %i.are = add nuw nsw i32 %.3.i, 1
  %.pre1648 = load i32, ptr %i.alp, align 8, !tbaa !127
  br label %bb.ke

bb.ke:                                            ; preds = %sljit_emit_op1.exit823, %bb.kb
  %i.arf = phi i32 [ %.pre1648, %sljit_emit_op1.exit823 ], [ %.pre1649, %bb.kb ]
  %.neg.i = phi i32 [ -2, %sljit_emit_op1.exit823 ], [ -1, %bb.kb ]
  %.4.i = phi i32 [ %i.are, %sljit_emit_op1.exit823 ], [ %.3.i, %bb.kb ] ; 2 uses
  %.not.i812 = icmp eq i32 %i.arf, 0
  br i1 %.not.i812, label %bb.kf, label %sljit_emit_op1.exit817, !prof !128

bb.kf:                                            ; preds = %bb.ke
  %i.arg = shl nuw nsw i32 %.4.i, 3
  %i.arh = zext nneg i32 %i.arg to i64
  %i.ari = getelementptr inbounds nuw i8, ptr %i.alp, i64 144
  store i32 0, ptr %i.ari, align 8, !tbaa !130
  %i.arj = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 140, i64 noundef range(i64 -2147483648, 2147483664) %i.arh) ; 2 uses
  %.not73.i1126 = icmp eq ptr %i.arj, null
  br i1 %.not73.i1126, label %sljit_emit_op1.exit817, label %emit_mov.exit1128.thread, !prof !37

emit_mov.exit1128.thread:                         ; preds = %bb.kf
  store i8 -119, ptr %i.arj, align 1, !tbaa !82
  br label %sljit_emit_op1.exit817

sljit_emit_op1.exit817:                           ; preds = %bb.kf, %emit_mov.exit1128.thread, %bb.ke
  %i.ark = add nsw i32 %.5244.i, -1
  tail call fastcc void @init_frame(ptr noundef nonnull %0, ptr noundef nonnull %spec.select.i358, ptr noundef null, i32 noundef %i.ark)
  %i.arl = add nsw i32 %.4.i, %.neg.i
  br label %sljit_emit_op1.exit856

sljit_emit_op1.exit856:                           ; preds = %bb.jr, %bb.jq, %emit_mov.exit1159.thread, %sljit_emit_op1.exit817, %sljit_emit_op1.exit862
  %.6.i = phi i32 [ %.5244.i, %sljit_emit_op1.exit817 ], [ %.2241.i, %sljit_emit_op1.exit862 ], [ %.2241.i, %emit_mov.exit1159.thread ], [ %.2241.i, %bb.jq ], [ %.2241.i, %bb.jr ] ; 5 uses
  %.5.i = phi i32 [ %i.arl, %sljit_emit_op1.exit817 ], [ %.0.i360, %sljit_emit_op1.exit862 ], [ %.0.i360, %emit_mov.exit1159.thread ], [ %.0.i360, %bb.jq ], [ %.0.i360, %bb.jr ]
  %.not273.i = icmp eq i32 %.0238.i, 0            ; 6 uses
  br i1 %.not273.i, label %sljit_emit_op1.exit811, label %bb.kg

bb.kg:                                            ; preds = %sljit_emit_op1.exit856
  %i.arm = load i32, ptr %i.alp, align 8, !tbaa !127
  %.not.i806 = icmp eq i32 %i.arm, 0
  br i1 %.not.i806, label %bb.kh, label %sljit_emit_op1.exit811, !prof !128

bb.kh:                                            ; preds = %bb.kg
  %i.arn = getelementptr inbounds nuw i8, ptr %i.alp, i64 144
  store i32 0, ptr %i.arn, align 8, !tbaa !130
  %i.aro = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %.0246.i) ; 2 uses
  %.not73.i1123 = icmp eq ptr %i.aro, null
  br i1 %.not73.i1123, label %sljit_emit_op1.exit811, label %emit_mov.exit1125.thread, !prof !37

emit_mov.exit1125.thread:                         ; preds = %bb.kh
  store i8 -119, ptr %i.aro, align 1, !tbaa !82
  br label %sljit_emit_op1.exit811

sljit_emit_op1.exit811:                           ; preds = %bb.kh, %bb.kg, %emit_mov.exit1125.thread, %sljit_emit_op1.exit856
  %i.arp = tail call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.alp), !inline_history !492 ; 2 uses
  %.pr1371 = load i8, ptr %spec.select.i358, align 1, !tbaa !82
  %i.arq = icmp eq i8 %.pr1371, 124
  br i1 %i.arq, label %sljit_emit_op1.exit629._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sljit_emit_op1.exit811
  %i.arr = getelementptr inbounds nuw i8, ptr %.0.i924.ph2071, i64 16 ; 3 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %.0.i924.ph2071, i64 24 ; 2 uses
  %i.art = sext i32 %i.amr to i64                 ; 5 uses
  %i.aru = zext nneg i32 %.6.i to i64             ; 2 uses
  %i.arv = shl nuw nsw i64 %i.aru, 3              ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.alp, i64 144 ; 29 uses
  %i.arx = shl nuw nsw i32 %.0238.i, 3            ; 3 uses
  %i.ary = or disjoint i32 %i.arx, 8              ; 2 uses
  %i.arz = lshr exact i32 %.0238.i, 1
  %i.asa = zext nneg i32 %i.arz to i64            ; 2 uses
  %or.cond.i1055 = icmp samesign ult i32 %.6.i, 268435457
  %.neg = mul i64 %i.aru, -34359738368
  %i.asb = ashr exact i64 %.neg, 32
  %i.asc = icmp eq i8 %i.amk, -115                ; 3 uses
  %i.asd = shl i32 %i.ani, 3
  %i.ase = sub i32 -16, %i.asd
  %i.asf = sext i32 %i.ase to i64                 ; 3 uses
  %i.asg = shl nsw i32 %.5.i, 3
  %i.ash = sext i32 %i.asg to i64                 ; 2 uses
  %i.asi = and i8 %i.amk, -3
  %or.cond5.i = icmp eq i8 %i.asi, -115           ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.alp, i64 72 ; 15 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.alp, i64 56 ; 10 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.alp, i64 120 ; 10 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.alp, i64 40 ; 6 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.alp, i64 16 ; 3 uses
  %i.aso = icmp eq i32 %i.ani, -1
  %i.asp = shl i32 %.6.i, 3
  %i.asq = add i32 %i.asp, -8
  %i.asr = sext i32 %i.asq to i64
  %.not6.i640 = icmp eq ptr %i.arp, null
  %i.ass = getelementptr inbounds nuw i8, ptr %spec.select.i358, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.arr, i8 0, i64 16, i1 false)
  %i.ast = load i8, ptr %i.ass, align 1, !tbaa !82
  %i.asu = zext i8 %i.ast to i64
  %i.asv = shl nuw nsw i64 %i.asu, 8
  %i.asw = getelementptr inbounds nuw i8, ptr %spec.select.i358, i64 2
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !82
  %i.asy = zext i8 %i.asx to i64
  %i.asz = getelementptr inbounds nuw i8, ptr %spec.select.i358, i64 %i.asv
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 %i.asy ; 2 uses
  tail call fastcc void @compile_matchingpath(ptr noundef nonnull %0, ptr noundef %.0235.i, ptr noundef nonnull %i.ata, ptr noundef nonnull %.0.i924.ph2071), !inline_history !492
  %.val289.i2181 = load i32, ptr %i.alp, align 8, !tbaa !127
  %.not275.i2182 = icmp eq i32 %.val289.i2181, 0
  br i1 %.not275.i2182, label %.lr.ph2184, label %compile_bracketpos_matchingpath.exit, !prof !495

.lr.ph2184:                                       ; preds = %.lr.ph, %bb.ny
  %i.atb = phi ptr [ %i.bdb, %bb.ny ], [ %i.ata, %.lr.ph ] ; 8 uses
  %.0124716072183 = phi ptr [ %.214741487, %bb.ny ], [ null, %.lr.ph ] ; 16 uses
  br i1 %i.ank, label %bb.ki, label %bb.lq

bb.ki:                                            ; preds = %.lr.ph2184
  br i1 %i.aso, label %bb.kj, label %sljit_emit_op1.exit805.thread

bb.kj:                                            ; preds = %bb.ki
  store i32 0, ptr %i.arw, align 8, !tbaa !130
  %i.atc = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 12, i64 noundef 0, i32 noundef 142, i64 noundef %i.art) ; 2 uses
  %.not66.i1120 = icmp eq ptr %i.atc, null
  br i1 %.not66.i1120, label %sljit_emit_op1.exit805, label %emit_mov.exit1122.thread, !prof !37

emit_mov.exit1122.thread:                         ; preds = %bb.kj
  store i8 -117, ptr %i.atc, align 1, !tbaa !82
  br label %sljit_emit_op1.exit805

sljit_emit_op1.exit805:                           ; preds = %bb.kj, %emit_mov.exit1122.thread
  %.pre1668.pr = load i32, ptr %i.alp, align 8, !tbaa !127 ; 4 uses
  br i1 %.not273.i, label %bb.ko, label %bb.kk

sljit_emit_op1.exit805.thread:                    ; preds = %bb.ki
  br i1 %.not273.i, label %.thread2551, label %.thread2548

bb.kk:                                            ; preds = %sljit_emit_op1.exit805
  %.not.i794 = icmp eq i32 %.pre1668.pr, 0
  br i1 %.not.i794, label %.thread2548, label %sljit_emit_op1.exit787, !prof !496

.thread2548:                                      ; preds = %sljit_emit_op1.exit805.thread, %bb.kk
  store i32 0, ptr %i.arw, align 8, !tbaa !130
  %i.atd = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef %.0246.i) ; 2 uses
  %.not66.i1117 = icmp eq ptr %i.atd, null
  br i1 %.not66.i1117, label %emit_mov.exit1119, label %sljit_emit_op1.exit799, !prof !37

emit_mov.exit1119:                                ; preds = %.thread2548
  %i.ate = load i32, ptr %i.alp, align 8, !tbaa !127
  %.not113.i797 = icmp eq i32 %i.ate, 0
  br i1 %.not113.i797, label %sljit_emit_op1.exit799.thread, label %sljit_emit_op1.exit787thread-pre-split, !prof !138

sljit_emit_op1.exit799:                           ; preds = %.thread2548
  store i8 -117, ptr %i.atd, align 1, !tbaa !82
  %.pre1663 = load i32, ptr %i.alp, align 8, !tbaa !127
  %i.atf = icmp eq i32 %.pre1663, 0
  br i1 %i.atf, label %sljit_emit_op1.exit799.thread, label %sljit_emit_op1.exit787thread-pre-split, !prof !141

sljit_emit_op1.exit799.thread:                    ; preds = %emit_mov.exit1119, %sljit_emit_op1.exit799
  %.pn2040 = load i32, ptr %i.ch, align 4, !tbaa !84
  %.in1587 = add nsw i32 %.pn2040, %i.ary
  %i.atg = sext i32 %.in1587 to i64
  store i32 0, ptr %i.arw, align 8, !tbaa !130
  %i.ath = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.atg) ; 2 uses
  %.not73.i1114 = icmp eq ptr %i.ath, null
  br i1 %.not73.i1114, label %emit_mov.exit1116, label %sljit_emit_op1.exit793, !prof !37

emit_mov.exit1116:                                ; preds = %sljit_emit_op1.exit799.thread
  %i.ati = load i32, ptr %i.alp, align 8, !tbaa !127
  %.not113.i791 = icmp eq i32 %i.ati, 0
  br i1 %.not113.i791, label %sljit_emit_op1.exit793.thread, label %sljit_emit_op1.exit787thread-pre-split, !prof !138

sljit_emit_op1.exit793:                           ; preds = %sljit_emit_op1.exit799.thread
  store i8 -119, ptr %i.ath, align 1, !tbaa !82
  %.pre1664 = load i32, ptr %i.alp, align 8, !tbaa !127 ; 2 uses
  %i.atj = icmp eq i32 %.pre1664, 0
  br i1 %i.atj, label %sljit_emit_op1.exit793.thread, label %sljit_emit_op1.exit787, !prof !141

sljit_emit_op1.exit793.thread:                    ; preds = %emit_mov.exit1116, %sljit_emit_op1.exit793
  store i32 0, ptr %i.arw, align 8, !tbaa !130
  %i.atk = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %.0246.i) ; 2 uses
  %.not73.i1111 = icmp eq ptr %i.atk, null
  br i1 %.not73.i1111, label %sljit_emit_op1.exit787thread-pre-split, label %emit_mov.exit1113.thread, !prof !37

emit_mov.exit1113.thread:                         ; preds = %sljit_emit_op1.exit793.thread
  store i8 -119, ptr %i.atk, align 1, !tbaa !82
  br label %sljit_emit_op1.exit787thread-pre-split

sljit_emit_op1.exit787thread-pre-split:           ; preds = %emit_mov.exit1119, %emit_mov.exit1116, %sljit_emit_op1.exit799, %emit_mov.exit1113.thread, %sljit_emit_op1.exit793.thread
  %.pre1666.pr = load i32, ptr %i.alp, align 8, !tbaa !127
  br label %sljit_emit_op1.exit787

sljit_emit_op1.exit787:                           ; preds = %sljit_emit_op1.exit787thread-pre-split, %bb.kk, %sljit_emit_op1.exit793
  %.pre1666 = phi i32 [ %.pre1666.pr, %sljit_emit_op1.exit787thread-pre-split ], [ %.pre1668.pr, %bb.kk ], [ %.pre1664, %sljit_emit_op1.exit793 ] ; 2 uses
  %i.atl = load i32, ptr %i.cx, align 8, !tbaa !94 ; 2 uses
  %.not279.i = icmp eq i32 %i.atl, 0
  br i1 %.not279.i, label %sljit_emit_op1.exit781, label %bb.kl

bb.kl:                                            ; preds = %sljit_emit_op1.exit787
  %.not.i776 = icmp eq i32 %.pre1666, 0
  br i1 %.not.i776, label %bb.km, label %sljit_emit_op1.exit775, !prof !128

bb.km:                                            ; preds = %bb.kl
  %i.atm = sext i32 %i.atl to i64
  store i32 0, ptr %i.arw, align 8, !tbaa !130
  %i.atn = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.alp, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.atm, i32 noundef 127, i64 noundef %i.asa) ; 0 uses
  %.pre1665 = load i32, ptr %i.alp, align 8, !tbaa !127
  br label %sljit_emit_op1.exit781

sljit_emit_op1.exit781:                           ; preds = %bb.km, %sljit_emit_op1.exit787
  %i.ato = phi i32 [ %.pre1665, %bb.km ], [ %.pre1666, %sljit_emit_op1.exit787 ]
  %.not.i770 = icmp eq i32 %i.ato, 0
  br i1 %.not.i770, label %bb.kn, label %sljit_emit_op1.exit775, !prof !483

bb.kn:                                            ; preds = %sljit_emit_op1.exit781
  %i.atp = load i32, ptr %i.ch, align 4, !tbaa !84
  %i.atq = add nsw i32 %i.atp, %i.arx
  %i.atr = sext i32 %i.atq to i64
  store i32 0, ptr %i.arw, align 8, !tbaa !130
  %i.ats = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.atr) ; 2 uses
  %.not73.i1108 = icmp eq ptr %i.ats, null
  br i1 %.not73.i1108, label %sljit_emit_op1.exit775, label %sljit_emit_op1.exit775.sink.split, !prof !37

bb.ko:                                            ; preds = %sljit_emit_op1.exit805
  br i1 %i.asc, label %bb.kp, label %sljit_emit_op1.exit769

.thread2551:                                      ; preds = %sljit_emit_op1.exit805.thread
  br i1 %i.asc, label %.thread2554, label %sljit_emit_op1.exit769.thread

bb.kp:                                            ; preds = %bb.ko
  %.not.i764 = icmp eq i32 %.pre1668.pr, 0
  br i1 %.not.i764, label %.thread2554, label %sljit_emit_op1.exit775, !prof !496

.thread2554:                                      ; preds = %.thread2551, %bb.kp
  store i32 0, ptr %i.arw, align 8, !tbaa !130
  %i.att = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not66.i1105 = icmp eq ptr %i.att, null
  br i1 %.not66.i1105, label %emit_mov.exit1107, label %emit_mov.exit1107.thread, !prof !37

emit_mov.exit1107.thread:                         ; preds = %.thread2554
  store i8 -117, ptr %i.att, align 1, !tbaa !82
  %.pre1667 = load i32, ptr %i.alp, align 8, !tbaa !127
  br label %sljit_emit_op1.exit769

emit_mov.exit1107:                                ; preds = %.thread2554
  %i.atu = load i32, ptr %i.alp, align 8, !tbaa !127
  %.not113.i767 = icmp eq i32 %i.atu, 0
  br i1 %.not113.i767, label %sljit_emit_op1.exit769.thread, label %sljit_emit_op1.exit775, !prof !138

sljit_emit_op1.exit769:                           ; preds = %emit_mov.exit1107.thread, %bb.ko
  %i.atv = phi i32 [ %.pre1667, %emit_mov.exit1107.thread ], [ %.pre1668.pr, %bb.ko ]
  %.not.i758 = icmp eq i32 %i.atv, 0
  br i1 %.not.i758, label %sljit_emit_op1.exit769.thread, label %sljit_emit_op1.exit775, !prof !497

sljit_emit_op1.exit769.thread:                    ; preds = %.thread2551, %emit_mov.exit1107, %sljit_emit_op1.exit769
  store i32 0, ptr %i.arw, align 8, !tbaa !130
  %i.atw = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.alp, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not73.i1102 = icmp eq ptr %i.atw, null
  br i1 %.not73.i1102, label %sljit_emit_op1.exit775, label %sljit_emit_op1.exit775.sink.split, !prof !37

sljit_emit_op1.exit775.sink.split:                ; preds = %sljit_emit_op1.exit769.thread, %bb.kn
  %.sink2157 = phi ptr [ %i.ats, %bb.kn ], [ %i.atw, %sljit_emit_op1.exit769.thread ]
  store i8 -119, ptr %.sink2157, align 1, !tbaa !82
  br label %sljit_emit_op1.exit775

sljit_emit_op1.exit775:                           ; preds = %sljit_emit_op1.exit775.sink.split, %emit_mov.exit1107, %sljit_emit_op1.exit769.thread, %bb.kn, %bb.kp, %bb.kl, %sljit_emit_op1.exit769, %sljit_emit_op1.exit781
  %i.atx = load i32, ptr %i.a, align 4, !tbaa !21
  %.not280.i = icmp eq i32 %i.atx, 0
  br i1 %.not280.i, label %sljit_emit_op1.exit757thread-pre-split, label %bb.kq

bb.kq:                                            ; preds = %sljit_emit_op1.exit775
  %i.aty = load i32, ptr %i.cu, align 4, !tbaa !96
  %i.atz = sext i32 %i.aty to i64
  %i.aua = load i32, ptr %i.alp, align 8, !tbaa !127 ; 2 uses
  %.not.i752 = icmp eq i32 %i.aua, 0
  br i1 %.not.i752, label %bb.kr, label %sljit_emit_op1.exit757, !prof !128

bb.kr:                                            ; preds = %bb.kq
end_hunk_1
