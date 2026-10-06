Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satTruth?download=true
inline.NumInlined: 34
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Tru_ManInsert:bb.a
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @Tru_ManLookup.s_Primes, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !20
  %i.bl = trunc i64 %i.bh to i32
  %i.bm = mul i32 %i.bk, %i.bl
  %i.bn = xor i32 %i.bm, %.02.i.i.prol            ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !51

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa158.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.02.i.i.unr = phi i32 [ %.02.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %Tru_ManHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.02.i.i = phi i32 [ %i.cv, %.lr.ph.i.i ], [ %.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !19
  %i.bs = and i64 %indvars.iv.i.i, 7
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @Tru_ManLookup.s_Primes, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.bv = trunc i64 %i.br to i32
  %i.bw = mul i32 %i.bu, %i.bv
  %i.bx = xor i32 %i.bw, %.02.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !19
  %i.ca = and i64 %indvars.iv.next.i.i, 7
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @Tru_ManLookup.s_Primes, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !20
  %i.cd = trunc i64 %i.bz to i32
  %i.ce = mul i32 %i.cc, %i.cd
  %i.cf = xor i32 %i.ce, %i.bx
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i.1
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !19
  %i.ci = and i64 %indvars.iv.next.i.i.1, 7
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @Tru_ManLookup.s_Primes, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !20
  %i.cl = trunc i64 %i.ch to i32
  %i.cm = mul i32 %i.ck, %i.cl
  %i.cn = xor i32 %i.cm, %i.cf
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i.2
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !19
  %i.cq = and i64 %indvars.iv.next.i.i.2, 7
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @Tru_ManLookup.s_Primes, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !20
  %i.ct = trunc i64 %i.cp to i32
  %i.cu = mul i32 %i.cs, %i.ct
  %i.cv = xor i32 %i.cu, %i.cn                    ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Tru_ManHash.exit.i, label %.lr.ph.i.i, !llvm.loop !52

Tru_ManHash.exit.i:                               ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block125, %Tru_ManNot.exit.thread, %Tru_ManNot.exit
  %i.cw = phi i1 [ false, %Tru_ManNot.exit ], [ false, %Tru_ManNot.exit.thread ], [ true, %middle.block125 ], [ true, %.lr.ph.i.i ], [ true, %.lr.ph.i.i.prol.loopexit ]
  %i.cx = phi i32 [ %i.am, %Tru_ManNot.exit ], [ %i.y, %Tru_ManNot.exit.thread ], [ %i.ao, %middle.block125 ], [ %i.ao, %.lr.ph.i.i ], [ %i.ao, %.lr.ph.i.i.prol.loopexit ]
  %i.cy = phi ptr [ %i.al, %Tru_ManNot.exit ], [ %i.x, %Tru_ManNot.exit.thread ], [ %i.ap, %middle.block125 ], [ %i.ap, %.lr.ph.i.i ], [ %i.ap, %.lr.ph.i.i.prol.loopexit ]
  %.0.lcssa.i.i = phi i32 [ 0, %Tru_ManNot.exit ], [ 0, %Tru_ManNot.exit.thread ], [ %i.bf, %middle.block125 ], [ %.lcssa158.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cv, %.lr.ph.i.i ]
  %i.cz = urem i32 %.0.lcssa.i.i, %i.cx
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.da ; 5 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !20 ; 3 uses
  %.not.i.i = icmp eq i32 %i.dc, 0
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !24  ; 8 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre87 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28 ; 5 uses
  %.pre88 = load i32, ptr %.pre, align 8, !tbaa !29 ; 5 uses
  br i1 %.not.i.i, label %Tru_ManLookup.exit.thread, label %Tru_ManReadOne.exit.i

Tru_ManReadOne.exit.i:                            ; preds = %Tru_ManHash.exit.i
  %i.dd = ashr i32 %i.dc, %.pre88
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %.pre87, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !30 ; 2 uses
  %.not35.i = icmp eq ptr %i.dg, null
  br i1 %.not35.i, label %Tru_ManLookup.exit, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %Tru_ManReadOne.exit.i
  %i.dh = getelementptr i8, ptr %.pre, i64 4
  %.val4.i.i.i = load i32, ptr %i.dh, align 4, !tbaa !31 ; 2 uses
  %wide.trip.count.i20.i = zext nneg i32 %.pr.pre to i64
  br i1 %i.cw, label %.lr.ph.preheader.i19.i.preheader, label %Tru_ManLookup.exit

.lr.ph.preheader.i19.i.preheader:                 ; preds = %.lr.ph.i47
  %i.di = and i32 %.val4.i.i.i, %i.dc
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dj
  br label %.lr.ph.preheader.i19.i

.lr.ph.preheader.i19.i:                           ; preds = %.lr.ph.preheader.i19.i.preheader, %Tru_ManReadOne.exit29.i
  %.037.i = phi ptr [ %i.dq, %Tru_ManReadOne.exit29.i ], [ %i.db, %.lr.ph.preheader.i19.i.preheader ]
  %.01636.i = phi ptr [ %i.dy, %Tru_ManReadOne.exit29.i ], [ %i.dk, %.lr.ph.preheader.i19.i.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01636.i, i64 8
  br label %.lr.ph.i21.i

bb.g:                                             ; preds = %.lr.ph.i21.i
  %indvars.iv.next.i24.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i25.i = icmp eq i64 %indvars.iv.next.i24.i, %wide.trip.count.i20.i
  br i1 %exitcond.not.i25.i, label %Tru_ManLookup.exit, label %.lr.ph.i21.i, !llvm.loop !0

.lr.ph.i21.i:                                     ; preds = %bb.g, %.lr.ph.preheader.i19.i
  %indvars.iv.i22.i = phi i64 [ 0, %.lr.ph.preheader.i19.i ], [ %indvars.iv.next.i24.i, %bb.g ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i22.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i22.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !19
  %.not.i23.i = icmp eq i64 %i.dn, %i.dp
  br i1 %.not.i23.i, label %bb.g, label %Tru_ManEqual.exit.i

Tru_ManEqual.exit.i:                              ; preds = %.lr.ph.i21.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.01636.i, i64 4 ; 4 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !20 ; 3 uses
  %.not.i26.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i26.i, label %Tru_ManLookup.exit.thread, label %Tru_ManReadOne.exit29.i

Tru_ManReadOne.exit29.i:                          ; preds = %Tru_ManEqual.exit.i
  %i.ds = ashr i32 %i.dr, %.pre88
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %.pre87, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !30 ; 2 uses
  %i.dw = and i32 %i.dr, %.val4.i.i.i
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dx
  %.not.i48 = icmp eq ptr %i.dv, null
  br i1 %.not.i48, label %Tru_ManLookup.exit, label %.lr.ph.preheader.i19.i, !llvm.loop !1

Tru_ManLookup.exit.thread:                        ; preds = %Tru_ManEqual.exit.i, %Tru_ManHash.exit.i
  %.034.i72 = phi ptr [ %i.db, %Tru_ManHash.exit.i ], [ %i.dq, %Tru_ManEqual.exit.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !38
  %i.eb = add nsw i32 %i.ea, 1
  %i.ec = ashr i32 %i.eb, 1                       ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !36
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !36
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre, i64 12 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !58 ; 3 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %.pre87, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30 ; 2 uses
  %.val.i = load i64, ptr %i.el, align 8, !tbaa !19 ; 2 uses
  %i.em = trunc i64 %.val.i to i32
  %i.en = add nsw i32 %i.ec, %i.em
  %i.eo = shl nuw i32 1, %.pre88
  %.not.i49 = icmp slt i32 %i.en, %i.eo
  br i1 %.not.i49, label %Vec_SetAppend.exit, label %bb.h

bb.h:                                             ; preds = %Tru_ManLookup.exit.thread
  %i.ep = add nsw i32 %i.ei, 1                    ; 4 uses
  store i32 %i.ep, ptr %i.eh, align 4, !tbaa !58
  %i.eq = getelementptr inbounds nuw i8, ptr %.pre, i64 20 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !39
  %i.es = icmp eq i32 %i.ep, %i.er
  br i1 %i.es, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.et = shl nsw i32 %i.ep, 1
  %i.eu = sext i32 %i.et to i64
  %i.ev = shl nsw i64 %i.eu, 3
  %i.ew = tail call ptr @realloc(ptr noundef nonnull %.pre87, i64 noundef %i.ev) #15 ; 3 uses
  store ptr %i.ew, ptr %i.eg, align 8, !tbaa !28
  %i.ex = load i32, ptr %i.eq, align 4, !tbaa !39 ; 2 uses
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = shl nsw i64 %i.ey, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.fa, i1 false)
  %i.fb = shl nsw i32 %i.ex, 1
  store i32 %i.fb, ptr %i.eq, align 4, !tbaa !39
  %.pre.i = load i32, ptr %i.eh, align 4, !tbaa !58
  %.pre1.pre.pre.i = load i32, ptr %.pre, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre1.pre.i = phi i32 [ %.pre1.pre.pre.i, %bb.i ], [ %.pre88, %bb.h ] ; 2 uses
  %i.fc = phi i32 [ %.pre.i, %bb.i ], [ %i.ep, %bb.h ] ; 2 uses
  %i.fd = phi ptr [ %i.ew, %bb.i ], [ %.pre87, %bb.h ]
  %i.fe = sext i32 %i.fc to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !30 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = zext nneg i32 %.pre1.pre.i to i64
  %sext.i = shl i64 4294967296, %i.fi
  %i.fj = ashr exact i64 %sext.i, 29
  %i.fk = tail call noalias ptr @malloc(i64 noundef %i.fj) #16 ; 2 uses
  store ptr %i.fk, ptr %i.ff, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fl = phi ptr [ %i.fk, %bb.k ], [ %i.fg, %bb.j ] ; 3 uses
  store i64 2, ptr %i.fl, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 -1, ptr %i.fm, align 8, !tbaa !19
  br label %Vec_SetAppend.exit

Vec_SetAppend.exit:                               ; preds = %Tru_ManLookup.exit.thread, %bb.l
  %i.fn = phi i32 [ %.pre88, %Tru_ManLookup.exit.thread ], [ %.pre1.pre.i, %bb.l ]
  %i.fo = phi i64 [ %.val.i, %Tru_ManLookup.exit.thread ], [ 2, %bb.l ]
  %i.fp = phi ptr [ %i.el, %Tru_ManLookup.exit.thread ], [ %i.fl, %bb.l ]
  %i.fq = phi i32 [ %i.ei, %Tru_ManLookup.exit.thread ], [ %i.fc, %bb.l ]
  %i.fr = sext i32 %i.ec to i64
  %i.fs = add i64 %i.fo, %i.fr                    ; 2 uses
  store i64 %i.fs, ptr %i.fp, align 8, !tbaa !19
  %i.ft = shl i32 %i.fq, %i.fn
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = sub i32 %i.fu, %i.ec
  %i.fw = add i32 %i.fv, %i.ft                    ; 5 uses
  store i32 %i.fw, ptr %.034.i72, align 4, !tbaa !20
  %.not.i50 = icmp eq i32 %i.fw, 0
  br i1 %.not.i50, label %Tru_ManReadOne.exit, label %bb.m

bb.m:                                             ; preds = %Vec_SetAppend.exit
  %i.fx = load ptr, ptr %i.l, align 8, !tbaa !24  ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !28
  %.val.i.i = load i32, ptr %i.fx, align 8, !tbaa !29
  %i.ga = ashr i32 %i.fw, %.val.i.i
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !30
  %i.ge = getelementptr i8, ptr %i.fx, i64 4
  %.val4.i.i = load i32, ptr %i.ge, align 4, !tbaa !31
  %i.gf = and i32 %.val4.i.i, %i.fw
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gg
  br label %Tru_ManReadOne.exit

Tru_ManReadOne.exit:                              ; preds = %Vec_SetAppend.exit, %bb.m
  %i.gi = phi ptr [ %i.gh, %bb.m ], [ null, %Vec_SetAppend.exit ] ; 4 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 6 uses
  %i.gl = load i32, ptr %i.b, align 4, !tbaa !16  ; 4 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph.preheader.i51, label %Tru_ManCopy.exit

.lr.ph.preheader.i51:                             ; preds = %Tru_ManReadOne.exit
  %wide.trip.count.i52 = zext nneg i32 %i.gl to i64 ; 5 uses
  %min.iters.check129 = icmp ult i32 %i.gl, 10
  br i1 %min.iters.check129, label %.lr.ph.i53.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i51
  %i.gn = sub i64 %i.gj, %i.a
  %i.go = add i64 %i.gn, 7
  %diff.check = icmp ult i64 %i.go, 31
  br i1 %diff.check, label %.lr.ph.i53.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck
  %n.vec131 = and i64 %wide.trip.count.i52, 2147483644 ; 3 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next136, %vector.body132 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index133 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load134 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !19
  %wide.load135 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index133 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <2 x i64> %wide.load134, ptr %i.gr, align 8, !tbaa !19
  store <2 x i64> %wide.load135, ptr %i.gs, align 8, !tbaa !19
  %index.next136 = add nuw i64 %index133, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.gt, label %middle.block137, label %vector.body132, !llvm.loop !53

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %n.vec131, %wide.trip.count.i52
  br i1 %cmp.n138, label %Tru_ManCopy.exit, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i51, %middle.block137
  %indvars.iv.i54.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i51 ], [ %n.vec131, %middle.block137 ] ; 3 uses
  %xtraiter162 = and i64 %wide.trip.count.i52, 3  ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol

.lr.ph.i53.prol:                                  ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53.prol
  %indvars.iv.i54.prol = phi i64 [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ], [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ] ; 3 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %.lr.ph.i53.prol ], [ 0, %.lr.ph.i53.preheader ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i54.prol
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !19
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.i54.prol
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !19
  %indvars.iv.next.i55.prol = add nuw nsw i64 %indvars.iv.i54.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol, !llvm.loop !54

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.i53.preheader
  %indvars.iv.i54.unr = phi i64 [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ], [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ]
  %i.gx = sub nsw i64 %indvars.iv.i54.ph, %wide.trip.count.i52
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %Tru_ManCopy.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55.3, %.lr.ph.i53 ], [ %indvars.iv.i54.unr, %.lr.ph.i53.prol.loopexit ] ; 6 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i54
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !19
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.i54
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !19
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i55
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !19
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i55
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !19
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i55.1
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !19
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i55.1
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !19
  %indvars.iv.next.i55.2 = add nuw nsw i64 %indvars.iv.i54, 3 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i55.2
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !19
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i55.2
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !19
  %indvars.iv.next.i55.3 = add nuw nsw i64 %indvars.iv.i54, 4 ; 2 uses
  %exitcond.not.i56.3 = icmp eq i64 %indvars.iv.next.i55.3, %wide.trip.count.i52
  br i1 %exitcond.not.i56.3, label %Tru_ManCopy.exit, label %.lr.ph.i53, !llvm.loop !55

Tru_ManCopy.exit:                                 ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %middle.block137, %Tru_ManReadOne.exit
  store i32 %i.fw, ptr %i.gi, align 8, !tbaa !34
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 0, ptr %i.hl, align 4, !tbaa !33
  br label %Tru_ManLookup.exit

Tru_ManLookup.exit:                               ; preds = %Tru_ManReadOne.exit29.i, %bb.g, %.lr.ph.i47, %Tru_ManReadOne.exit.i, %Tru_ManCopy.exit
  %i.hm = phi i32 [ %i.gl, %Tru_ManCopy.exit ], [ %.pr.pre, %bb.g ], [ %.pr.pre, %.lr.ph.i47 ], [ %.pr.pre, %Tru_ManReadOne.exit.i ], [ %.pr.pre, %Tru_ManReadOne.exit29.i ] ; 3 uses
  %.034.i71 = phi ptr [ %.034.i72, %Tru_ManCopy.exit ], [ %.037.i, %bb.g ], [ %i.db, %.lr.ph.i47 ], [ %i.db, %Tru_ManReadOne.exit.i ], [ %i.dq, %Tru_ManReadOne.exit29.i ]
  %i.hn = icmp sgt i32 %i.hm, 0
  %or.cond = select i1 %.not32, i1 %i.hn, i1 false
  br i1 %or.cond, label %.lr.ph.preheader.i57, label %Tru_ManNot.exit63

.lr.ph.preheader.i57:                             ; preds = %Tru_ManLookup.exit
  %wide.trip.count.i58 = zext nneg i32 %i.hm to i64 ; 3 uses
  %min.iters.check141 = icmp ult i32 %i.hm, 4
  br i1 %min.iters.check141, label %.lr.ph.i59.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph.preheader.i57
  %n.vec143 = and i64 %wide.trip.count.i58, 2147483644 ; 3 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next148, %vector.body144 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index145 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %wide.load146 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !19
  %wide.load147 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !19
  %i.hq = xor <2 x i64> %wide.load146, splat (i64 -1)
  %i.hr = xor <2 x i64> %wide.load147, splat (i64 -1)
  store <2 x i64> %i.hq, ptr %i.ho, align 8, !tbaa !19
  store <2 x i64> %i.hr, ptr %i.hp, align 8, !tbaa !19
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.hs, label %middle.block149, label %vector.body144, !llvm.loop !56

middle.block149:                                  ; preds = %vector.body144
  %cmp.n150 = icmp eq i64 %n.vec143, %wide.trip.count.i58
  br i1 %cmp.n150, label %Tru_ManNot.exit63, label %.lr.ph.i59.preheader

.lr.ph.i59.preheader:                             ; preds = %.lr.ph.preheader.i57, %middle.block149
  %indvars.iv.i60.ph = phi i64 [ 0, %.lr.ph.preheader.i57 ], [ %n.vec143, %middle.block149 ]
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader, %.lr.ph.i59
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61, %.lr.ph.i59 ], [ %indvars.iv.i60.ph, %.lr.ph.i59.preheader ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i60 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !19
  %i.hv = xor i64 %i.hu, -1
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !19
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, %wide.trip.count.i58
  br i1 %exitcond.not.i62, label %Tru_ManNot.exit63, label %.lr.ph.i59, !llvm.loop !57

Tru_ManNot.exit63:                                ; preds = %.lr.ph.i59, %middle.block149, %Tru_ManLookup.exit
  %i.hw = load i32, ptr %.034.i71, align 4, !tbaa !20
  %i.hx = xor i32 %i.hw, %i.u
  br label %Tru_ManEqual0.exit.thread

Tru_ManEqual0.exit.thread:                        ; preds = %bb.b, %bb.c, %bb.a, %Tru_ManNot.exit63
  %.0 = phi i32 [ %i.hx, %Tru_ManNot.exit63 ], [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Tru_ManAlloc(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 -6148914691236517206, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -3689348814741910324, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 -1085102592571150096, ptr %i.c, align 16
end_hunk_0
