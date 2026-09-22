Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/timMan?download=true
inline.NumInlined: 188
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@Tim_ManGetReqTimes:bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.eb = load float, ptr %i.dt, align 4, !tbaa !23
  %i.ec = load float, ptr %i.du, align 4, !tbaa !23
  %i.ed = load float, ptr %i.dv, align 4, !tbaa !23
  %i.ee = load float, ptr %i.dw, align 4, !tbaa !23
  %i.ef = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.eg = insertelement <4 x float> %i.ef, float %i.ec, i64 1
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 2
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 3
  %i.ej = load float, ptr %i.dx, align 4, !tbaa !23
  %i.ek = load float, ptr %i.dy, align 4, !tbaa !23
  %i.el = load float, ptr %i.dz, align 4, !tbaa !23
  %i.em = load float, ptr %i.ea, align 4, !tbaa !23
  %i.en = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 2
  %i.eq = insertelement <4 x float> %i.ep, float %i.em, i64 3
  %i.er = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  store <4 x float> %i.ei, ptr %i.er, align 4, !tbaa !35
  store <4 x float> %i.eq, ptr %i.es, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %Tim_ManPoNum.exit73.us.preheader, label %vector.body, !llvm.loop !134

Tim_ManPoNum.exit73.us.preheader:                 ; preds = %vector.body, %vector.scevcheck, %.lr.ph100.split.us
  %indvars.iv113.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph100.split.us ], [ %n.vec, %vector.body ] ; 6 uses
  %i.eu = sub nsw i64 %wide.trip.count116, %indvars.iv113.ph
  %xtraiter139 = and i64 %i.eu, 1
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %Tim_ManPoNum.exit73.us.prol.loopexit, label %Tim_ManPoNum.exit73.us.prol

Tim_ManPoNum.exit73.us.prol:                      ; preds = %Tim_ManPoNum.exit73.us.preheader
  %i.ev = trunc nuw nsw i64 %indvars.iv113.ph to i32
  %.reass.prol = add i32 %invariant.op, %i.ev
  %i.ew = sext i32 %.reass.prol to i64
  %i.ex = getelementptr inbounds [24 x i8], ptr %i.cc, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !23
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv113.ph
  store float %i.ez, ptr %gep.prol, align 4, !tbaa !35
  %indvars.iv.next114.prol = add nuw nsw i64 %indvars.iv113.ph, 1
  br label %Tim_ManPoNum.exit73.us.prol.loopexit

Tim_ManPoNum.exit73.us.prol.loopexit:             ; preds = %Tim_ManPoNum.exit73.us.prol, %Tim_ManPoNum.exit73.us.preheader
  %indvars.iv113.unr = phi i64 [ %indvars.iv113.ph, %Tim_ManPoNum.exit73.us.preheader ], [ %indvars.iv.next114.prol, %Tim_ManPoNum.exit73.us.prol ]
  %i.fa = add nsw i64 %wide.trip.count116, -1
  %i.fb = icmp eq i64 %indvars.iv113.ph, %i.fa
  br i1 %i.fb, label %.critedge59, label %Tim_ManPoNum.exit73.us

Tim_ManPoNum.exit73.us:                           ; preds = %Tim_ManPoNum.exit73.us.prol.loopexit, %Tim_ManPoNum.exit73.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.1, %Tim_ManPoNum.exit73.us ], [ %indvars.iv113.unr, %Tim_ManPoNum.exit73.us.prol.loopexit ] ; 4 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv113 to i32
  %.reass = add i32 %invariant.op, %i.fc
  %i.fd = sext i32 %.reass to i64
  %i.fe = getelementptr inbounds [24 x i8], ptr %i.cc, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !23
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv113
  store float %i.fg, ptr %gep, align 4, !tbaa !35
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv.next114 to i32
  %.reass.1 = add i32 %invariant.op, %i.fh
  %i.fi = sext i32 %.reass.1 to i64
  %i.fj = getelementptr inbounds [24 x i8], ptr %i.cc, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !23
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next114
  store float %i.fl, ptr %gep.1, align 4, !tbaa !35
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %exitcond117.not.1 = icmp eq i64 %indvars.iv.next114.1, %wide.trip.count116
  br i1 %exitcond117.not.1, label %.critedge59, label %Tim_ManPoNum.exit73.us, !llvm.loop !135

.lr.ph100.split:                                  ; preds = %.lr.ph100, %Tim_ManPoNum.exit73
  %.399 = phi i32 [ %i.gf, %Tim_ManPoNum.exit73 ], [ 0, %.lr.ph100 ] ; 3 uses
  %i.fm = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.fn = load i32, ptr %i.a, align 4, !tbaa !15  ; 4 uses
  %i.fo = sub nsw i32 %.399, %1
  %i.fp = add i32 %i.fo, %i.fn
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [24 x i8], ptr %i.fm, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !23
  %i.fu = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i67, label %Tim_ManPoNum.exit73, label %Tim_ManBoxNum.exit.i68

Tim_ManBoxNum.exit.i68:                           ; preds = %.lr.ph100.split
  %i.fv = getelementptr i8, ptr %i.fu, i64 4
  %.val.i.i69 = load i32, ptr %i.fv, align 4, !tbaa !31 ; 2 uses
  %i.fw = icmp eq i32 %.val.i.i69, 0
  br i1 %i.fw, label %Tim_ManPoNum.exit73, label %Tim_ManBoxNum.exit10.i70

Tim_ManBoxNum.exit10.i70:                         ; preds = %Tim_ManBoxNum.exit.i68
  %i.fx = add nsw i32 %.val.i.i69, -1             ; 2 uses
  %i.fy = tail call i32 @Tim_ManBoxInputFirst(ptr noundef nonnull %0, i32 noundef %i.fx) #20
  %i.fz = tail call i32 @Tim_ManBoxInputNum(ptr noundef nonnull %0, i32 noundef %i.fx) #20
  %i.ga = add i32 %i.fy, %i.fz
  %i.gb = sub i32 %i.fn, %i.ga
  br label %Tim_ManPoNum.exit73

Tim_ManPoNum.exit73:                              ; preds = %.lr.ph100.split, %Tim_ManBoxNum.exit.i68, %Tim_ManBoxNum.exit10.i70
  %.0.i71 = phi i32 [ %i.gb, %Tim_ManBoxNum.exit10.i70 ], [ %i.fn, %Tim_ManBoxNum.exit.i68 ], [ %i.fn, %.lr.ph100.split ]
  %i.gc = add nsw i32 %.0.i71, %.399
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.gd
  store float %i.ft, ptr %i.ge, align 4, !tbaa !35
  %i.gf = add nuw nsw i32 %.399, 1                ; 2 uses
  %exitcond112.not = icmp eq i32 %i.gf, %1
  br i1 %exitcond112.not, label %.critedge59, label %.lr.ph100.split, !llvm.loop !136

.critedge59:                                      ; preds = %bb.d, %Tim_ManPoNum.exit73, %Tim_ManPoNum.exit73.us.prol.loopexit, %Tim_ManPoNum.exit73.us, %.critedge3, %.critedge
  %.049 = phi ptr [ null, %.critedge ], [ %i.ai, %.critedge3 ], [ %i.ai, %Tim_ManPoNum.exit73 ], [ %i.ai, %Tim_ManPoNum.exit73.us.prol.loopexit ], [ %i.ai, %Tim_ManPoNum.exit73.us ], [ null, %bb.d ]
  ret ptr %.049
}

; Function Attrs: nounwind uwtable
define void @Tim_ManPrint(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %Tim_ManBoxNum.exit.thread.i, label %Tim_ManBoxNum.exit.i

Tim_ManBoxNum.exit.i:                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !31
  %i.d = icmp eq i32 %.val.i.i, 0
  br i1 %i.d, label %Tim_ManBoxNum.exit.thread.i, label %bb.c

Tim_ManBoxNum.exit.thread.i:                      ; preds = %Tim_ManBoxNum.exit.i, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  br label %Tim_ManPiNum.exit

bb.c:                                             ; preds = %Tim_ManBoxNum.exit.i
  %i.g = tail call i32 @Tim_ManBoxOutputFirst(ptr noundef nonnull %0, i32 noundef 0) #20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !14
  %.pre332 = load ptr, ptr %0, align 8, !tbaa !38
  br label %Tim_ManPiNum.exit

Tim_ManPiNum.exit:                                ; preds = %Tim_ManBoxNum.exit.thread.i, %bb.c
  %i.h = phi ptr [ %i.b, %Tim_ManBoxNum.exit.thread.i ], [ %.pre332, %bb.c ] ; 3 uses
  %i.i = phi i32 [ %i.f, %Tim_ManBoxNum.exit.thread.i ], [ %.pre, %bb.c ]
  %.0.i = phi i32 [ %i.f, %Tim_ManBoxNum.exit.thread.i ], [ %i.g, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i.i201 = icmp eq ptr %i.h, null
  br i1 %.not.i.i201, label %Tim_ManBoxNum.exit.thread.i205, label %Tim_ManBoxNum.exit.i202

Tim_ManBoxNum.exit.i202:                          ; preds = %Tim_ManPiNum.exit
  %i.k = getelementptr i8, ptr %i.h, i64 4
  %.val.i.i203 = load i32, ptr %i.k, align 4, !tbaa !31 ; 2 uses
  %i.l = icmp eq i32 %.val.i.i203, 0
  br i1 %i.l, label %Tim_ManBoxNum.exit.thread.i205, label %Tim_ManBoxNum.exit10.i

Tim_ManBoxNum.exit.thread.i205:                   ; preds = %Tim_ManBoxNum.exit.i202, %Tim_ManPiNum.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15   ; 2 uses
  br label %Tim_ManPoNum.exit

Tim_ManBoxNum.exit10.i:                           ; preds = %Tim_ManBoxNum.exit.i202
  %i.o = add nsw i32 %.val.i.i203, -1             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = tail call i32 @Tim_ManBoxInputFirst(ptr noundef nonnull %0, i32 noundef %i.o) #20
  %i.s = tail call i32 @Tim_ManBoxInputNum(ptr noundef nonnull %0, i32 noundef %i.o) #20
  %i.t = add i32 %i.r, %i.s
  %i.u = sub i32 %i.q, %i.t
  %.pre334 = load i32, ptr %i.p, align 4, !tbaa !15
  %.pre335 = load ptr, ptr %0, align 8, !tbaa !38
  br label %Tim_ManPoNum.exit

Tim_ManPoNum.exit:                                ; preds = %Tim_ManBoxNum.exit.thread.i205, %Tim_ManBoxNum.exit10.i
  %i.v = phi ptr [ %i.h, %Tim_ManBoxNum.exit.thread.i205 ], [ %.pre335, %Tim_ManBoxNum.exit10.i ] ; 2 uses
  %i.w = phi i32 [ %i.n, %Tim_ManBoxNum.exit.thread.i205 ], [ %.pre334, %Tim_ManBoxNum.exit10.i ]
  %.0.i204 = phi i32 [ %i.n, %Tim_ManBoxNum.exit.thread.i205 ], [ %i.u, %Tim_ManBoxNum.exit10.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %Tim_ManBoxNum.exit, label %bb.d

bb.d:                                             ; preds = %Tim_ManPoNum.exit
  %i.y = getelementptr i8, ptr %i.v, i64 4
  %.val.i = load i32, ptr %i.y, align 4, !tbaa !31
  br label %Tim_ManBoxNum.exit

Tim_ManBoxNum.exit:                               ; preds = %Tim_ManPoNum.exit, %bb.d
  %i.z = phi i32 [ %.val.i, %bb.d ], [ 0, %Tim_ManPoNum.exit ]
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.0.i, i32 noundef %i.i, i32 noundef %.0.i204, i32 noundef %i.w, i32 noundef %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.af = load i32, ptr %i.j, align 8, !tbaa !14  ; 5 uses
  %1 = icmp slt i32 %i.af, 1
  %.not = icmp eq ptr %i.ac, null
  %or.cond = select i1 %1, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %Tim_ManBoxNum.exit
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.ak = load float, ptr %i.ad, align 4, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !50
  %i.an = fcmp une float %i.ak, %i.am
  br i1 %i.an, label %.critedge.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load float, ptr %i.ae, align 4, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !23
  %i.ar = fcmp une float %i.ao, %i.aq
  br i1 %i.ar, label %.critedge.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph.split, !llvm.loop !137

.critedge.loopexit:                               ; preds = %bb.e, %bb.f
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Tim_ManBoxNum.exit
  %.0167.lcssa = phi i32 [ 0, %Tim_ManBoxNum.exit ], [ %2, %.critedge.loopexit ]
  %i.as = icmp eq i32 %.0167.lcssa, %i.af
  br i1 %i.as, label %.critedge.thread, label %.critedge.thread361

.critedge.thread361:                              ; preds = %.critedge
  %3 = icmp sgt i32 %i.af, 0
  br i1 %3, label %.lr.ph233, label %.critedge2

.critedge.thread:                                 ; preds = %bb.g, %.critedge
  %i.at = load <2 x float>, ptr %i.ad, align 4, !tbaa !35
  %i.au = fpext <2 x float> %i.at to <2 x double> ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = extractelement <2 x double> %i.au, i64 1
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.av, double noundef %i.aw) ; 0 uses
  br label %.critedge2

.lr.ph233:                                        ; preds = %.critedge.thread361, %bb.j
  %i.ay = phi i32 [ %i.bl, %bb.j ], [ %i.af, %.critedge.thread361 ]
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %bb.j ], [ 0, %.critedge.thread361 ] ; 3 uses
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv291 ; 2 uses
  %.not184 = icmp eq ptr %i.az, null
  br i1 %.not184, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %.lr.ph233
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !22
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !35
  %i.bg = fpext <2 x float> %i.bf to <2 x double> ; 2 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv291 to i32
  %i.bi = extractelement <2 x double> %i.bg, i64 0
  %i.bj = extractelement <2 x double> %i.bg, i64 1
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.bh, double noundef %i.bi, double noundef %i.bj) ; 0 uses
  %.pre336 = load i32, ptr %i.j, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bl = phi i32 [ %.pre336, %bb.i ], [ %i.ay, %bb.h ] ; 2 uses
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next292, %i.bm
  br i1 %i.bn, label %.lr.ph233, label %.critedge2, !llvm.loop !138

.critedge2:                                       ; preds = %bb.j, %.lr.ph233, %.critedge.thread361, %.critedge.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.bs = load i32, ptr %i.x, align 4, !tbaa !15  ; 5 uses
  %4 = icmp slt i32 %i.bs, 1
  %.not185 = icmp eq ptr %i.bp, null
  %or.cond286 = select i1 %4, i1 true, i1 %.not185
  br i1 %or.cond286, label %.critedge4, label %.lr.ph236.split.preheader

.lr.ph236.split.preheader:                        ; preds = %.critedge2
  %wide.trip.count297 = zext nneg i32 %i.bs to i64
  br label %.lr.ph236.split

.lr.ph236.split:                                  ; preds = %.lr.ph236.split.preheader, %bb.m
  %indvars.iv294 = phi i64 [ 0, %.lr.ph236.split.preheader ], [ %indvars.iv.next295, %bb.m ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %indvars.iv294 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph236.split
  %i.bx = load float, ptr %i.bq, align 4, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load float, ptr %i.by, align 4, !tbaa !50
  %i.ca = fcmp une float %i.bx, %i.bz
  br i1 %i.ca, label %.critedge4.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load float, ptr %i.br, align 4, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !23
  %i.ce = fcmp une float %i.cb, %i.cd
  br i1 %i.ce, label %.critedge4.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph236.split, %bb.l
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.critedge4.thread, label %.lr.ph236.split, !llvm.loop !139

.critedge4.loopexit:                              ; preds = %bb.k, %bb.l
  %5 = trunc nuw nsw i64 %indvars.iv294 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.2169.lcssa = phi i32 [ 0, %.critedge2 ], [ %5, %.critedge4.loopexit ]
  %i.cf = icmp eq i32 %.2169.lcssa, %i.bs
  br i1 %i.cf, label %.critedge4.thread, label %.critedge4.thread367

.critedge4.thread367:                             ; preds = %.critedge4
  %6 = icmp sgt i32 %i.bs, 0
  br i1 %6, label %.lr.ph251, label %.critedge6

.critedge4.thread:                                ; preds = %bb.m, %.critedge4
  %i.cg = load <2 x float>, ptr %i.bq, align 4, !tbaa !35
  %i.ch = fpext <2 x float> %i.cg to <2 x double> ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = extractelement <2 x double> %i.ch, i64 1
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.ci, double noundef %i.cj) ; 0 uses
  br label %.critedge6

.lr.ph251:                                        ; preds = %.critedge4.thread367, %bb.p
  %i.cl = phi i32 [ %i.cy, %bb.p ], [ %i.bs, %.critedge4.thread367 ]
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %bb.p ], [ 0, %.critedge4.thread367 ] ; 2 uses
  %.0250 = phi i32 [ %.1, %bb.p ], [ 0, %.critedge4.thread367 ] ; 3 uses
  %i.cm = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %indvars.iv299 ; 2 uses
  %.not186 = icmp eq ptr %i.cm, null
  br i1 %.not186, label %.critedge6, label %bb.n

bb.n:                                             ; preds = %.lr.ph251
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !22
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = add nsw i32 %.0250, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.ct = load <2 x float>, ptr %i.cs, align 4, !tbaa !35
  %i.cu = fpext <2 x float> %i.ct to <2 x double> ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = extractelement <2 x double> %i.cu, i64 1
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.0250, double noundef %i.cv, double noundef %i.cw) ; 0 uses
  %.pre337 = load i32, ptr %i.x, align 4, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cy = phi i32 [ %i.cl, %bb.n ], [ %.pre337, %bb.o ] ; 2 uses
  %.1 = phi i32 [ %.0250, %bb.n ], [ %i.cr, %bb.o ]
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next300, %i.cz
  br i1 %i.da, label %.lr.ph251, label %.critedge6, !llvm.loop !140

.critedge6:                                       ; preds = %bb.p, %.lr.ph251, %.critedge4.thread367, %.critedge4.thread
  %i.db = load ptr, ptr %0, align 8, !tbaa !38    ; 3 uses
  %.not.i206 = icmp eq ptr %i.db, null
  br i1 %.not.i206, label %.critedge8, label %Tim_ManBoxNum.exit208

Tim_ManBoxNum.exit208:                            ; preds = %.critedge6
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %.val.i207 = load i32, ptr %i.dc, align 4, !tbaa !31
  %i.dd = icmp sgt i32 %.val.i207, 0
  br i1 %i.dd, label %.lr.ph279, label %.critedge8

bb.q:                                             ; preds = %.critedge16
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %.val192 = load i32, ptr %i.df, align 4, !tbaa !31
  %i.dg = sext i32 %.val192 to i64
  %i.dh = icmp slt i64 %indvars.iv.next316, %i.dg
  br i1 %i.dh, label %.lr.ph279, label %.critedge8, !llvm.loop !141

.lr.ph279:                                        ; preds = %Tim_ManBoxNum.exit208, %bb.q
  %indvars.iv315 = phi i64 [ %indvars.iv.next316, %bb.q ], [ 0, %Tim_ManBoxNum.exit208 ] ; 4 uses
  %i.di = phi ptr [ %i.de, %bb.q ], [ %i.db, %Tim_ManBoxNum.exit208 ]
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val194 = load ptr, ptr %i.dj, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.val194, i64 %indvars.iv315
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !34 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 6 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 4 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !42
  %i.dq = trunc nuw nsw i64 %indvars.iv315 to i32 ; 3 uses
  %i.dr = tail call i32 @Tim_ManBoxInputFirst(ptr noundef nonnull %0, i32 noundef %i.dq) #20
  %i.ds = tail call i32 @Tim_ManBoxOutputFirst(ptr noundef nonnull %0, i32 noundef %i.dq) #20
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !45
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dq, i32 noundef %i.dn, i32 noundef %i.dp, i32 noundef %i.dr, i32 noundef %i.ds, i32 noundef %i.du, i32 noundef %i.dw) ; 0 uses
  %.val197 = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 28 ; 6 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !39
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [24 x i8], ptr %.val197, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.ed = load i32, ptr %i.dm, align 4, !tbaa !41 ; 3 uses
  %i.ee = icmp slt i32 %i.ed, 1
  %.not187 = icmp eq ptr %.val197, null
  %or.cond.a = select i1 %i.ee, i1 true, i1 %.not187
  br i1 %or.cond.a, label %.critedge10, label %.lr.ph254.split

.lr.ph254.split:                                  ; preds = %.lr.ph279
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !50
  %wide.trip.count305 = zext nneg i32 %i.ed to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph254.split, %bb.t
  %indvars.iv302 = phi i64 [ 0, %.lr.ph254.split ], [ %indvars.iv.next303, %bb.t ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv302
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !39
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [24 x i8], ptr %.val197, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load float, ptr %i.el, align 4, !tbaa !50
  %i.en = fcmp une float %i.eg, %i.em
  br i1 %i.en, label %.critedge10.loopexit.split.loop.exit374, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eo = load float, ptr %i.ec, align 4, !tbaa !23
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !23
  %i.er = fcmp une float %i.eo, %i.eq
  br i1 %i.er, label %.critedge10.loopexit.split.loop.exit376, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.critedge10, label %bb.r, !llvm.loop !142

.critedge10.loopexit.split.loop.exit374:          ; preds = %bb.r
  %i.es = trunc nuw nsw i64 %indvars.iv302 to i32
  br label %.critedge10

.critedge10.loopexit.split.loop.exit376:          ; preds = %bb.s
  %i.et = trunc nuw nsw i64 %indvars.iv302 to i32
  br label %.critedge10

.critedge10:                                      ; preds = %bb.t, %.critedge10.loopexit.split.loop.exit374, %.critedge10.loopexit.split.loop.exit376, %.lr.ph279
  %.0164.lcssa = phi i32 [ 0, %.lr.ph279 ], [ %i.es, %.critedge10.loopexit.split.loop.exit374 ], [ %i.et, %.critedge10.loopexit.split.loop.exit376 ], [ %i.ed, %bb.t ]
  %i.eu = load i32, ptr %i.dl, align 4, !tbaa !149
  %i.ev = tail call i32 @Tim_ManBoxInputNum(ptr noundef nonnull %0, i32 noundef %i.eu) #20
  %i.ew = icmp eq i32 %.0164.lcssa, %i.ev
  br i1 %i.ew, label %bb.u, label %.preheader215

.preheader215:                                    ; preds = %.critedge10
  %i.ex = load i32, ptr %i.dm, align 4, !tbaa !41 ; 3 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph263.preheader, label %.critedge12

.lr.ph263.preheader:                              ; preds = %.preheader215
  %.val195391 = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %.not188392 = icmp eq ptr %.val195391, null
  br i1 %.not188392, label %.critedge12, label %.lr.ph395

bb.u:                                             ; preds = %.critedge10
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.fa = load <2 x float>, ptr %i.ez, align 4, !tbaa !35
  %i.fb = fpext <2 x float> %i.fa to <2 x double> ; 2 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 0
  %i.fd = extractelement <2 x double> %i.fb, i64 1
  %i.fe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.fc, double noundef %i.fd) ; 0 uses
  %.pre338 = load i32, ptr %i.dm, align 4, !tbaa !41
  br label %.critedge12

.lr.ph263:                                        ; preds = %.lr.ph395
  %.val195 = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %.not188 = icmp eq ptr %.val195, null
  br i1 %.not188, label %.critedge12, label %.lr.ph395, !llvm.loop !143

.lr.ph395:                                        ; preds = %.lr.ph263.preheader, %.lr.ph263
  %.val195394 = phi ptr [ %.val195, %.lr.ph263 ], [ %.val195391, %.lr.ph263.preheader ]
  %indvars.iv307393 = phi i64 [ %indvars.iv.next308, %.lr.ph263 ], [ 0, %.lr.ph263.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv307393
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !39
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [24 x i8], ptr %.val195394, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load <2 x float>, ptr %i.fj, align 4, !tbaa !35
  %i.fl = fpext <2 x float> %i.fk to <2 x double> ; 2 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv307393 to i32
  %i.fn = extractelement <2 x double> %i.fl, i64 0
  %i.fo = extractelement <2 x double> %i.fl, i64 1
  %i.fp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.fm, double noundef %i.fn, double noundef %i.fo) ; 0 uses
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307393, 1 ; 2 uses
  %i.fq = load i32, ptr %i.dm, align 4, !tbaa !41 ; 3 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next308, %i.fr
  br i1 %i.fs, label %.lr.ph263, label %..critedge12.loopexit_crit_edge, !llvm.loop !143

..critedge12.loopexit_crit_edge:                  ; preds = %.lr.ph395
  br label %.critedge12, !llvm.loop !143

.critedge12:                                      ; preds = %.lr.ph263, %.lr.ph263.preheader, %..critedge12.loopexit_crit_edge, %.preheader215, %bb.u
  %i.ft = phi i32 [ %.pre338, %bb.u ], [ %i.ex, %.preheader215 ], [ %i.ex, %.lr.ph263.preheader ], [ %i.fq, %..critedge12.loopexit_crit_edge ], [ %i.fq, %.lr.ph263 ]
  %.val200 = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !39
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [24 x i8], ptr %.val200, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  %i.ga = load i32, ptr %i.do, align 4, !tbaa !42 ; 3 uses
  %i.gb = icmp slt i32 %i.ga, 1
  %.not189 = icmp eq ptr %.val200, null
  %or.cond288 = select i1 %i.gb, i1 true, i1 %.not189
  br i1 %or.cond288, label %.critedge14, label %.lr.ph266.split

.lr.ph266.split:                                  ; preds = %.critedge12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !50
  %wide.trip.count313 = zext nneg i32 %i.ga to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.dy, i64 %i.fu
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph266.split, %bb.x
  %indvars.iv310 = phi i64 [ 0, %.lr.ph266.split ], [ %indvars.iv.next311, %bb.x ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv310
  %i.ge = load i32, ptr %gep, align 4, !tbaa !39
  %i.gf = sext i32 %i.ge to i64
end_hunk_0
