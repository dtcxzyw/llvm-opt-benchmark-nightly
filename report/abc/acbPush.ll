Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acbPush?download=true
inline.NumInlined: 186
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Acb_ObjPushToFanout:bb.a

.critedge.split.loop.exit2.i.i.i:                 ; preds = %.lr.ph127
  %i.ef = trunc nuw nsw i64 %indvars.iv.i.i.i126 to i32
  br label %Acb_ObjWhatFanin.exit.i.i

Acb_ObjWhatFanin.exit.i.i:                        ; preds = %bb.p, %Vec_IntRemove.exit.i, %.critedge.split.loop.exit2.i.i.i
  %.010.i.i.i = phi i32 [ %i.ef, %.critedge.split.loop.exit2.i.i.i ], [ -1, %Vec_IntRemove.exit.i ], [ -1, %bb.p ] ; 2 uses
  %i.eg = add nsw i32 %i.eb, -1                   ; 3 uses
  store i32 %i.eg, ptr %i.ea, align 4, !tbaa !17
  %i.eh = icmp slt i32 %.010.i.i.i, %i.eg
  br i1 %i.eh, label %.lr.ph.preheader.i.i.i, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %Acb_ObjWhatFanin.exit.i.i
  %.pre.i.i.i = sext i32 %i.eg to i64
  br label %Acb_ObjRemoveFaninFanoutOne.exit

.lr.ph.preheader.i.i.i:                           ; preds = %Acb_ObjWhatFanin.exit.i.i
  %i.ei = sext i32 %.010.i.i.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i12.i.i = phi i64 [ %i.ei, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i13.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %i.ea, i64 %indvars.iv.i12.i.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !17
  %indvars.iv.next.i13.i.i = add nsw i64 %indvars.iv.i12.i.i, 1 ; 3 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i13.i.i
  store i32 %i.el, ptr %i.em, align 4, !tbaa !17
  %i.en = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp slt i64 %indvars.iv.next.i13.i.i, %i.eo
  br i1 %i.ep, label %.lr.ph.i.i.i, label %Acb_ObjRemoveFaninFanoutOne.exit, !llvm.loop !26

Acb_ObjRemoveFaninFanoutOne.exit:                 ; preds = %.lr.ph.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.eo, %.lr.ph.i.i.i ]
  %i.eq = getelementptr [4 x i8], ptr %i.ea, i64 %.pre-phi.i.i.i
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  store i32 -1, ptr %i.er, align 4, !tbaa !17
  %i.es = load i32, ptr %i.aj, align 4, !tbaa !17
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17
  %i.ew = icmp eq i32 %.0, %i.ev
  br i1 %i.ew, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %Acb_ObjRemoveFaninFanoutOne.exit
  %i.ex = load i32, ptr %i.de, align 4, !tbaa !24 ; 7 uses
  %i.ey = load i32, ptr %i.dd, align 8, !tbaa !27
  %i.ez = icmp eq i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.r, label %Acb_ObjAddFaninFanoutOne.exit

bb.r:                                             ; preds = %bb.q
  %i.fa = icmp slt i32 %i.ex, 16
  br i1 %i.fa, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !14 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not9.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fc, i64 noundef 64) #10
  br label %Vec_IntGrow.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.fe = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.u, %bb.t
  %i.ff = phi ptr [ %i.fd, %bb.t ], [ %i.fe, %bb.u ]
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !14
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.v:                                             ; preds = %bb.r
  %i.fg = icmp samesign ult i32 %i.ex, 1073741823
  %i.fh = shl nuw nsw i32 %i.ex, 1
  %spec.select.i.i = select i1 %i.fg, i32 %i.fh, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ex, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.w, label %Acb_ObjAddFaninFanoutOne.exit

bb.w:                                             ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !14 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.fj, null
  %i.fk = zext nneg i32 %spec.select.i.i to i64
  %i.fl = shl nuw nsw i64 %i.fk, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fm = tail call ptr @realloc(ptr noundef nonnull %i.fj, i64 noundef %i.fl) #10
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fn = tail call noalias ptr @malloc(i64 noundef %i.fl) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fo = phi ptr [ %i.fm, %bb.x ], [ %i.fn, %bb.y ]
  store ptr %i.fo, ptr %i.fi, align 8, !tbaa !14
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.z, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.z ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.dd, align 8, !tbaa !27
  %.pre.i = load i32, ptr %i.de, align 4, !tbaa !24
  %.val5.i83.pre = load ptr, ptr %i.aa, align 8, !tbaa !14
  %.val6.i84.pre = load ptr, ptr %i.ab, align 8, !tbaa !14
  br label %Acb_ObjAddFaninFanoutOne.exit

Acb_ObjAddFaninFanoutOne.exit:                    ; preds = %bb.q, %bb.v, %Vec_IntGrow.exit11.sink.split.i.i
  %.val6.i84 = phi ptr [ %.val60, %bb.q ], [ %.val60, %bb.v ], [ %.val6.i84.pre, %Vec_IntGrow.exit11.sink.split.i.i ]
  %.val5.i83 = phi ptr [ %.val59, %bb.q ], [ %.val59, %bb.v ], [ %.val5.i83.pre, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.fp = phi i32 [ %i.ex, %bb.q ], [ %i.ex, %bb.v ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !14
  %i.fs = add nsw i32 %i.fp, 1
  store i32 %i.fs, ptr %i.de, align 4, !tbaa !24
  %i.ft = sext i32 %i.fp to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ft
  store i32 %3, ptr %i.fu, align 4, !tbaa !17
  %i.fv = getelementptr inbounds [4 x i8], ptr %.val5.i83, i64 %i.e
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !17
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %.val6.i84, i64 %i.fx ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !17
  %i.ga = add nsw i32 %i.fz, 1                    ; 2 uses
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !17
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.gb
  store i32 %i.ai, ptr %i.gc, align 4, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %Acb_ObjAddFaninFanoutOne.exit, %Acb_ObjRemoveFaninFanoutOne.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Acb_ObjPushToFanin(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216
  %.val51 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %.val51, i64 %i.b ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = sext i32 %3 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.val51, i64 %i.e ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12   ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %.val56 = load ptr, ptr %i.h, align 8, !tbaa !14 ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %.val57 = load ptr, ptr %i.i, align 8, !tbaa !14 ; 7 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.val56, i64 %i.b ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %.val57, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17   ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %exitcond.not.i118 = icmp slt i32 %i.n, 1
  br i1 %exitcond.not.i118, label %Acb_ObjWhatFanin.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Acb_ObjWhatFanin.exit, label %.lr.ph, !llvm.loop !18

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i119, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = icmp eq i32 %i.p, %3
  br i1 %i.q, label %.critedge.split.loop.exit2.i, label %bb.b, !llvm.loop !18

.critedge.split.loop.exit2.i:                     ; preds = %.lr.ph
  %i.r = trunc nuw nsw i64 %indvars.iv.i119 to i32
  br label %Acb_ObjWhatFanin.exit

Acb_ObjWhatFanin.exit:                            ; preds = %bb.b, %bb.a, %.critedge.split.loop.exit2.i
  %.010.i = phi i32 [ %i.r, %.critedge.split.loop.exit2.i ], [ -1, %bb.a ], [ -1, %bb.b ] ; 2 uses
  %i.s = sext i32 %.010.i to i64                  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12
  %i.v = and i64 %i.u, %i.d                       ; 2 uses
  %i.w = shl nuw i32 1, %.010.i
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = shl i64 %i.v, %i.x
  %i.z = or i64 %i.y, %i.v                        ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.s
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !12 ; 11 uses
  %i.ac = and i64 %i.ab, %i.d                     ; 2 uses
  %i.ad = lshr i64 %i.ac, %i.x
  %i.ae = or i64 %i.ad, %i.ac                     ; 2 uses
  %i.af = sext i32 %2 to i64                      ; 4 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !12 ; 2 uses
  %i.ai = and i64 %i.z, %i.ah                     ; 2 uses
  %i.aj = shl nuw i32 1, %2
  %i.ak = zext nneg i32 %i.aj to i64              ; 4 uses
  %i.al = shl i64 %i.ai, %i.ak
  %i.am = or i64 %i.al, %i.ai                     ; 6 uses
  %i.an = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.af
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !12 ; 2 uses
  %i.ap = and i64 %i.ao, %i.z                     ; 2 uses
  %i.aq = lshr i64 %i.ap, %i.ak
  %i.ar = or i64 %i.aq, %i.ap                     ; 6 uses
  %i.as = and i64 %i.ae, %i.ah                    ; 2 uses
  %i.at = shl i64 %i.as, %i.ak
  %i.au = or i64 %i.at, %i.as                     ; 6 uses
  %i.av = and i64 %i.ae, %i.ao                    ; 2 uses
  %i.aw = lshr i64 %i.av, %i.ak
  %i.ax = or i64 %i.aw, %i.av                     ; 4 uses
  %i.ay = icmp eq i64 %i.am, %i.ar
  %i.az = icmp eq i64 %i.am, %i.au
  %or.cond.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Acb_ObjWhatFanin.exit
  %i.ba = xor i64 %i.ab, -1
  %i.bb = and i64 %i.am, %i.ba
  %i.bc = and i64 %i.ax, %i.ab
  %i.bd = or i64 %i.bc, %i.bb
  br label %Abc_TtCheckDsdAnd.exit

bb.d:                                             ; preds = %Acb_ObjWhatFanin.exit
  %i.be = icmp eq i64 %i.ax, %i.am                ; 3 uses
  %i.bf = icmp eq i64 %i.ax, %i.au                ; 2 uses
  %or.cond72.i = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond72.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = xor i64 %i.ab, -1
  %i.bh = and i64 %i.au, %i.bg
  %i.bi = and i64 %i.ar, %i.ab
  %i.bj = or i64 %i.bh, %i.bi
  br label %Abc_TtCheckDsdAnd.exit

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp eq i64 %i.ax, %i.ar                ; 2 uses
  %or.cond73.i = and i1 %i.be, %i.bk
  br i1 %or.cond73.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = xor i64 %i.ab, -1
  %i.bm = and i64 %i.ar, %i.bl
  %i.bn = and i64 %i.au, %i.ab
  %i.bo = or i64 %i.bn, %i.bm
  br label %Abc_TtCheckDsdAnd.exit

bb.h:                                             ; preds = %bb.f
  %or.cond74.i = select i1 %i.bk, i1 %i.bf, i1 false
  br i1 %or.cond74.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = xor i64 %i.ab, -1
  %i.bq = and i64 %i.au, %i.bp
  %i.br = and i64 %i.am, %i.ab
  %i.bs = or i64 %i.bq, %i.br
  br label %Abc_TtCheckDsdAnd.exit

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp eq i64 %i.ar, %i.au
  %or.cond75.i = select i1 %i.be, i1 %i.bt, i1 false
  br i1 %or.cond75.i, label %bb.k, label %Abc_TtCheckDsdAnd.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = xor i64 %i.ab, -1
  %i.bv = and i64 %i.am, %i.bu
  %i.bw = and i64 %i.ar, %i.ab
  %i.bx = or i64 %i.bv, %i.bw
  br label %Abc_TtCheckDsdAnd.exit

Abc_TtCheckDsdAnd.exit:                           ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.j
  %.078 = phi i64 [ 0, %bb.j ], [ %i.bx, %bb.k ], [ %i.bs, %bb.i ], [ %i.bo, %bb.g ], [ %i.bj, %bb.e ], [ %i.bd, %bb.c ] ; 2 uses
  %.0.i = phi i32 [ -1, %bb.j ], [ 4, %bb.k ], [ 3, %bb.i ], [ 2, %bb.g ], [ 1, %bb.e ], [ 0, %bb.c ]
  %i.by = getelementptr [4 x i8], ptr %i.m, i64 %i.af
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !17 ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val56, i64 %i.e ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %.val57, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !17 ; 4 uses
  %smax.i64 = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %wide.trip.count.i65 = zext nneg i32 %smax.i64 to i64
  %exitcond.not.i67120 = icmp slt i32 %i.cf, 1
  br i1 %exitcond.not.i67120, label %Acb_ObjWhatFanin.exit71.thread, label %.lr.ph122

bb.l:                                             ; preds = %.lr.ph122
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i68, %wide.trip.count.i65
  br i1 %exitcond.not.i67, label %Acb_ObjWhatFanin.exit71.thread, label %.lr.ph122, !llvm.loop !18

.lr.ph122:                                        ; preds = %Abc_TtCheckDsdAnd.exit, %bb.l
  %indvars.iv.i66121 = phi i64 [ %indvars.iv.next.i68, %bb.l ], [ 0, %Abc_TtCheckDsdAnd.exit ] ; 2 uses
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i66121, 1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.i68
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !17
  %i.ci = icmp eq i32 %i.ch, %i.ca
  br i1 %i.ci, label %Acb_ObjWhatFanin.exit71, label %bb.l, !llvm.loop !18

Acb_ObjWhatFanin.exit71:                          ; preds = %.lr.ph122
  %i.cj = trunc nuw nsw i64 %indvars.iv.i66121 to i32
  br label %Acb_ObjWhatFanin.exit71.thread

Acb_ObjWhatFanin.exit71.thread:                   ; preds = %bb.l, %Abc_TtCheckDsdAnd.exit, %Acb_ObjWhatFanin.exit71
  %.0 = phi i32 [ %i.cj, %Acb_ObjWhatFanin.exit71 ], [ %i.cf, %Abc_TtCheckDsdAnd.exit ], [ %i.cf, %bb.l ] ; 6 uses
  switch i32 %.0.i, label %bb.r [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
  ]

bb.m:                                             ; preds = %Acb_ObjWhatFanin.exit71.thread
  %i.ck = sext i32 %.0 to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !12
  %i.cn = and i64 %i.cm, %i.g
  br label %bb.r

bb.n:                                             ; preds = %Acb_ObjWhatFanin.exit71.thread
  %i.co = xor i64 %i.g, -1
  %i.cp = sext i32 %.0 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !12
  %i.cs = and i64 %i.cr, %i.co
  br label %bb.r

bb.o:                                             ; preds = %Acb_ObjWhatFanin.exit71.thread
  %i.ct = sext i32 %.0 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !12
  %i.cw = xor i64 %i.cv, -1
  %i.cx = and i64 %i.g, %i.cw
  br label %bb.r

bb.p:                                             ; preds = %Acb_ObjWhatFanin.exit71.thread
  %i.cy = sext i32 %.0 to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !12
  %.demorgan = or i64 %i.da, %i.g
  %i.db = xor i64 %.demorgan, -1
  br label %bb.r

bb.q:                                             ; preds = %Acb_ObjWhatFanin.exit71.thread
  %i.dc = sext i32 %.0 to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !12
  %i.df = xor i64 %i.de, %i.g
  br label %bb.r

bb.r:                                             ; preds = %Acb_ObjWhatFanin.exit71.thread, %bb.n, %bb.p, %bb.q, %bb.o, %bb.m
  %.048 = phi i64 [ %i.cn, %bb.m ], [ %i.cs, %bb.n ], [ %i.cx, %bb.o ], [ %i.db, %bb.p ], [ %i.df, %bb.q ], [ 0, %Acb_ObjWhatFanin.exit71.thread ]
  %i.dg = icmp slt i32 %2, 5
  br i1 %i.dg, label %.lr.ph.i, label %Abc_Tt6RemoveVar.exit

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73, %.lr.ph.i ], [ %i.af, %bb.r ] ; 3 uses
  %.045.i = phi i64 [ %i.dw, %.lr.ph.i ], [ %.078, %bb.r ] ; 3 uses
  %indvars.iv.next.i73 = add nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %i.dh = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.i72 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !12
  %i.dj = and i64 %i.di, %.045.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !12
  %i.dm = and i64 %i.dl, %.045.i
  %i.dn = trunc nsw i64 %indvars.iv.i72 to i32
  %i.do = shl nuw nsw i32 1, %i.dn
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = shl i64 %i.dm, %i.dp
  %i.dr = or i64 %i.dq, %i.dj
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !12
  %i.du = and i64 %i.dt, %.045.i
  %i.dv = lshr i64 %i.du, %i.dp
  %i.dw = or i64 %i.dr, %i.dv                     ; 2 uses
  %i.dx = and i64 %indvars.iv.next.i73, 4294967295
  %exitcond.not.i74 = icmp eq i64 %i.dx, 5
  br i1 %exitcond.not.i74, label %Abc_Tt6RemoveVar.exit, label %.lr.ph.i, !llvm.loop !20

Abc_Tt6RemoveVar.exit:                            ; preds = %.lr.ph.i, %bb.r
  %.04.lcssa.i = phi i64 [ %.078, %bb.r ], [ %i.dw, %.lr.ph.i ]
  store i64 %.04.lcssa.i, ptr %i.c, align 8, !tbaa !12
  store i64 %.048, ptr %i.f, align 8, !tbaa !12
  %i.dy = getelementptr i8, ptr %0, i64 440
  %.val.i = load ptr, ptr %i.dy, align 8, !tbaa !21
  %i.dz = sext i32 %i.ca to i64
  %i.ea = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.dz ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 6 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !24 ; 6 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %Abc_Tt6RemoveVar.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !14
  %wide.trip.count.i.i = zext nneg i32 %i.ec to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !17
  %i.ei = icmp eq i32 %i.eh, %1
  br i1 %i.ei, label %._crit_edge.loopexit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Vec_IntRemove.exit.i, label %bb.s, !llvm.loop !25

._crit_edge.loopexit.i.i:                         ; preds = %bb.s
  %i.ej = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %Abc_Tt6RemoveVar.exit
  %.0.lcssa.i.i = phi i32 [ 0, %Abc_Tt6RemoveVar.exit ], [ %i.ej, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.ek = icmp eq i32 %.0.lcssa.i.i, %i.ec
  br i1 %i.ek, label %Vec_IntRemove.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i
  %.123.i.i = add nuw nsw i32 %.0.lcssa.i.i, 1
  %i.el = icmp slt i32 %.123.i.i, %i.ec
  br i1 %i.el, label %.lr.ph26.i.i, label %._crit_edge27.i.i

.lr.ph26.i.i:                                     ; preds = %.preheader.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !14
  %i.eo = zext i32 %.0.lcssa.i.i to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2
  %scevgep.i = getelementptr nuw i8, ptr %i.en, i64 %i.ep ; 2 uses
  %scevgep11.i = getelementptr nuw i8, ptr %scevgep.i, i64 4
  %i.eq = add i32 %i.ec, -2
  %i.er = sub i32 %i.eq, %.0.lcssa.i.i
  %i.es = zext i32 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep11.i, i64 %i.eu, i1 false), !tbaa !17
  %.pre.i.i = load i32, ptr %i.eb, align 4, !tbaa !24
  br label %._crit_edge27.i.i

._crit_edge27.i.i:                                ; preds = %.lr.ph26.i.i, %.preheader.i.i
  %i.ev = phi i32 [ %.pre.i.i, %.lr.ph26.i.i ], [ %i.ec, %.preheader.i.i ]
  %i.ew = add nsw i32 %i.ev, -1
  store i32 %i.ew, ptr %i.eb, align 4, !tbaa !24
  %.pre = load i32, ptr %i.j, align 4, !tbaa !17
  %.phi.trans.insert = sext i32 %.pre to i64      ; 2 uses
  %.phi.trans.insert90 = getelementptr inbounds [4 x i8], ptr %.val57, i64 %.phi.trans.insert
  %.pre91 = load i32, ptr %.phi.trans.insert90, align 4, !tbaa !17 ; 2 uses
  %.pre94 = tail call i32 @llvm.smax.i32(i32 %.pre91, i32 0)
  %.pre95 = zext nneg i32 %.pre94 to i64
  br label %Vec_IntRemove.exit.i

Vec_IntRemove.exit.i:                             ; preds = %bb.t, %._crit_edge27.i.i, %._crit_edge.i.i
  %wide.trip.count.i.i.i.pre-phi = phi i64 [ %wide.trip.count.i, %._crit_edge.i.i ], [ %.pre95, %._crit_edge27.i.i ], [ %wide.trip.count.i, %bb.t ] ; 2 uses
end_hunk_0
