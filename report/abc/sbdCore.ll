Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManWindowRoots:bb.a
bb.k:                                             ; preds = %.thread
  %i.bd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.be = phi ptr [ %i.bc, %bb.j ], [ %i.bd, %bb.k ]
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %i.am, 1073741823
  %i.bg = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.bf, i32 %i.bg, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bi, null
  %i.bj = zext nneg i32 %spec.select.i to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = tail call ptr @realloc(ptr noundef nonnull %i.bi, i64 noundef %i.bk) #34
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bk) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bn = phi ptr [ %i.bl, %bb.n ], [ %i.bm, %bb.o ]
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %Vec_IntGrow.exit.i
  %i.bo = phi ptr [ %i.ar, %bb.p ], [ %i.az, %Vec_IntGrow.exit.i ] ; 2 uses
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.al, align 8, !tbaa !49
  %.pre = load i32, ptr %i.bo, align 4, !tbaa !47
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntGrow.exit.thread, %Vec_IntGrow.exit, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.bp = phi ptr [ %i.ar, %Vec_IntGrow.exit ], [ %i.ar, %bb.l ], [ %i.bo, %Vec_IntGrow.exit11.sink.split.i ], [ %i.av, %Vec_IntGrow.exit.thread ]
  %i.bq = phi i32 [ %i.as, %Vec_IntGrow.exit ], [ %i.am, %bb.l ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ], [ %i.aw, %Vec_IntGrow.exit.thread ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !48
  %i.bt = add nsw i32 %i.bq, 1
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !47
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 %i.aj, ptr %i.bv, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %.val91 = load i32, ptr %i.bx, align 4, !tbaa !47
  %i.by = sext i32 %.val91 to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %.lr.ph, label %.critedge, !llvm.loop !123

.critedge:                                        ; preds = %.lr.ph, %Vec_IntPush.exit, %Vec_BitStart.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4      ; 2 uses
  %.val90178 = load i32, ptr %i.cc, align 4, !tbaa !47
  %i.cd = icmp sgt i32 %.val90178, 0
  br i1 %i.cd, label %.lr.ph180, label %.critedge2.preheader

.lr.ph180:                                        ; preds = %.critedge
  %i.ce = getelementptr i8, ptr %0, i64 32
  %.val103 = load ptr, ptr %i.ce, align 8, !tbaa !52
  %i.cf = getelementptr i8, ptr %i.cb, i64 8
  %.val104.val = load ptr, ptr %i.cf, align 8, !tbaa !48
  br label %bb.q

.critedge2.preheader:                             ; preds = %bb.q, %.critedge
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !39
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph195, label %.critedge2._crit_edge

.lr.ph195:                                        ; preds = %.critedge2.preheader
  %i.ci = getelementptr i8, ptr %0, i64 32
  %i.cj = getelementptr i8, ptr %0, i64 144
  %i.ck = getelementptr i8, ptr %0, i64 160       ; 2 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph180, %bb.q
  %indvars.iv201 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next202, %bb.q ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val104.val, i64 %indvars.iv201
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !14 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [12 x i8], ptr %.val103, i64 %i.cn
  %.val3.i = load i64, ptr %i.co, align 4
  %i.cp = trunc i64 %.val3.i to i32
  %i.cq = and i32 %i.cp, 536870911
  %i.cr = sub nsw i32 %i.cm, %i.cq                ; 2 uses
  %i.cs = and i32 %i.cr, 31
  %i.ct = shl nuw i32 1, %i.cs
  %i.cu = ashr i32 %i.cr, 5
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !14
  %i.cy = or i32 %i.ct, %i.cx
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !14
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %.val90 = load i32, ptr %i.cc, align 4, !tbaa !47
  %i.cz = sext i32 %.val90 to i64
  %i.da = icmp slt i64 %indvars.iv.next202, %i.cz
  br i1 %i.da, label %bb.q, label %.critedge2.preheader, !llvm.loop !124

bb.r:                                             ; preds = %.lr.ph195, %.critedge2
  %.promoted190 = phi ptr [ %i.f, %.lr.ph195 ], [ %.promoted186214, %.critedge2 ] ; 4 uses
  %indvars.iv210 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next211, %.critedge2 ] ; 15 uses
  %.val95 = load ptr, ptr %i.ci, align 8, !tbaa !52
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %.val95, i64 %indvars.iv210
  %.val108 = load i64, ptr %i.db, align 4         ; 4 uses
  %i.dc = and i64 %.val108, 2147483648
  %.not.i120 = icmp ne i64 %i.dc, 0
  %i.dd = and i64 %.val108, 536870911
  %i.de = icmp eq i64 %i.dd, 536870911
  %narrow.i.not = or i1 %.not.i120, %i.de
  br i1 %narrow.i.not, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = trunc nuw nsw i64 %indvars.iv210 to i32 ; 3 uses
  %i.dg = lshr i64 %indvars.iv210, 5
  %i.dh = and i64 %i.dg, 134217727
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = and i32 %i.df, 31
  %i.dl = shl nuw i32 1, %i.dk
  %i.dm = and i32 %i.dj, %i.dl
  %.not84 = icmp eq i32 %i.dm, 0
  br i1 %.not84, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val110 = load ptr, ptr %i.cj, align 8, !tbaa !134
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val110, i64 %indvars.iv210
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !14
  %i.dp = icmp sge i32 %i.do, %2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dq = phi i1 [ true, %bb.s ], [ %i.dp, %bb.t ] ; 2 uses
  %i.dr = and i64 %.val108, 536870911
  %i.ds = sub nsw i64 %indvars.iv210, %i.dr
  %.val101 = load ptr, ptr %i.n, align 8, !tbaa !42 ; 3 uses
  %sext = shl i64 %i.ds, 32
  %i.dt = ashr exact i64 %sext, 28
  %i.du = getelementptr inbounds i8, ptr %.val101, i64 %i.dt ; 2 uses
  %i.dv = lshr i64 %.val108, 32
  %i.dw = and i64 %i.dv, 536870911
  %i.dx = sub nsw i64 %indvars.iv210, %i.dw
  %sext270 = shl i64 %i.dx, 32
  %i.dy = ashr exact i64 %sext270, 28
  %i.dz = getelementptr inbounds i8, ptr %.val101, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.val101, i64 %indvars.iv210 ; 6 uses
  %i.eb = getelementptr i8, ptr %i.du, i64 4      ; 2 uses
  %.val6.i = load i32, ptr %i.eb, align 4, !tbaa !47 ; 3 uses
  %i.ec = getelementptr i8, ptr %i.dz, i64 4      ; 2 uses
  %.val.i = load i32, ptr %i.ec, align 4, !tbaa !47 ; 3 uses
  %i.ed = add nsw i32 %.val.i, %.val6.i           ; 3 uses
  %i.ee = load i32, ptr %i.ea, align 8, !tbaa !49
  %.not.i.i121 = icmp slt i32 %i.ee, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 9 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !48 ; 3 uses
  br i1 %.not.i.i121, label %bb.v, label %Vec_IntGrow.exit.i122

bb.v:                                             ; preds = %bb.u
  %.not9.i.i123 = icmp eq ptr %i.eg, null
  %i.eh = sext i32 %i.ed to i64
  %i.ei = shl nsw i64 %i.eh, 2                    ; 2 uses
  br i1 %.not9.i.i123, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = tail call ptr @realloc(ptr noundef nonnull %i.eg, i64 noundef %i.ei) #34
  %.val7.pre.pre.i = load i32, ptr %i.eb, align 4, !tbaa !47
  %.val9.pre.pre.i = load i32, ptr %i.ec, align 4, !tbaa !47
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ei) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.val9.pre.i = phi i32 [ %.val9.pre.pre.i, %bb.w ], [ %.val.i, %bb.x ]
  %.val7.pre.i = phi i32 [ %.val7.pre.pre.i, %bb.w ], [ %.val6.i, %bb.x ]
  %i.el = phi ptr [ %i.ej, %bb.w ], [ %i.ek, %bb.x ] ; 2 uses
  store ptr %i.el, ptr %i.ef, align 8, !tbaa !48
  store i32 %i.ed, ptr %i.ea, align 8, !tbaa !49
  br label %Vec_IntGrow.exit.i122

Vec_IntGrow.exit.i122:                            ; preds = %bb.y, %bb.u
  %i.em = phi ptr [ %i.el, %bb.y ], [ %i.eg, %bb.u ] ; 3 uses
  %.val9.i = phi i32 [ %.val9.pre.i, %bb.y ], [ %.val.i, %bb.u ] ; 2 uses
  %.val7.i = phi i32 [ %.val7.pre.i, %bb.y ], [ %.val6.i, %bb.u ] ; 2 uses
  %i.en = getelementptr i8, ptr %i.du, i64 8
  %.val8.i = load ptr, ptr %i.en, align 8, !tbaa !48 ; 4 uses
  %i.eo = getelementptr i8, ptr %i.dz, i64 8
  %.val10.i = load ptr, ptr %i.eo, align 8, !tbaa !48 ; 4 uses
  %i.ep = sext i32 %.val7.i to i64
  %.idx.i.i = shl nsw i64 %i.ep, 2                ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %.val8.i, i64 %.idx.i.i ; 3 uses
  %i.er = sext i32 %.val9.i to i64
  %.idx19.i.i = shl nsw i64 %i.er, 2              ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.val10.i, i64 %.idx19.i.i ; 3 uses
  %i.et = icmp sgt i32 %.val7.i, 0
  %i.eu = icmp sgt i32 %.val9.i, 0
  %i.ev = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %i.ev, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.ad, %Vec_IntGrow.exit.i122
  %.036.lcssa.i.i = phi ptr [ %i.em, %Vec_IntGrow.exit.i122 ], [ %.137.i.i, %bb.ad ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntGrow.exit.i122 ], [ %.134.i.i, %bb.ad ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val10.i, %Vec_IntGrow.exit.i122 ], [ %.1.i.i, %bb.ad ] ; 5 uses
  %.0.lcssa.i.i281 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 2 uses
  %i.ew = icmp ult ptr %.033.lcssa.i.i, %i.eq
  br i1 %i.ew, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i287 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 2 uses
  %.036.lcssa.i.i286 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %3 = ptrtoaddr ptr %.val8.i to i64
  %i.ex = add i64 %.idx.i.i, %3
  %i.ey = xor i64 %.033.lcssa.i.i287, -1
  %i.ez = add i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = lshr i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check290 = icmp ult i64 %i.ez, 28
  %i.fc = sub i64 %.033.lcssa.i.i287, %.036.lcssa.i.i286
  %diff.check288 = icmp ugt i64 %i.fc, -32
  %or.cond = select i1 %min.iters.check290, i1 true, i1 %diff.check288
  br i1 %or.cond, label %.lr.ph13.i.i.preheader307, label %vector.ph291

vector.ph291:                                     ; preds = %.lr.ph13.i.i.preheader
  %n.vec292 = and i64 %i.fb, 9223372036854775800  ; 3 uses
  %i.fd = shl i64 %n.vec292, 2                    ; 2 uses
  %i.fe = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.fd
  %i.ff = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.fd ; 2 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next299, %vector.body293 ] ; 2 uses
  %i.fg = shl i64 %index294, 2                    ; 2 uses
  %next.gep295 = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.fg ; 2 uses
  %next.gep296 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.fg ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep295, i64 16
  %wide.load297 = load <4 x i32>, ptr %next.gep295, align 4, !tbaa !14
  %wide.load298 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !14
  %i.fi = getelementptr i8, ptr %next.gep296, i64 16
  store <4 x i32> %wide.load297, ptr %next.gep296, align 4, !tbaa !14
  store <4 x i32> %wide.load298, ptr %i.fi, align 4, !tbaa !14
  %index.next299 = add nuw i64 %index294, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next299, %n.vec292
  br i1 %i.fj, label %middle.block300, label %vector.body293, !llvm.loop !125

middle.block300:                                  ; preds = %vector.body293
  %cmp.n301 = icmp eq i64 %i.fb, %n.vec292
  br i1 %cmp.n301, label %.preheader.i.i, label %.lr.ph13.i.i.preheader307

.lr.ph13.i.i.preheader307:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block300
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.fe, %middle.block300 ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.ff, %middle.block300 ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i122, %bb.ad
  %.08.i.i = phi ptr [ %.1.i.i, %bb.ad ], [ %.val10.i, %Vec_IntGrow.exit.i122 ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.ad ], [ %.val8.i, %Vec_IntGrow.exit.i122 ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.ad ], [ %i.em, %Vec_IntGrow.exit.i122 ] ; 4 uses
  %i.fk = load i32, ptr %.0337.i.i, align 4, !tbaa !14 ; 4 uses
  %i.fl = load i32, ptr %.08.i.i, align 4, !tbaa !14 ; 3 uses
  %i.fm = icmp eq i32 %i.fk, %i.fl
  br i1 %i.fm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.fk, ptr %.0366.i.i, align 4, !tbaa !14
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.fp = icmp slt i32 %i.fk, %i.fl
  br i1 %i.fp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fq = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.fk, ptr %.0366.i.i, align 4, !tbaa !14
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fr = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fl, ptr %.0366.i.i, align 4, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %.134.i.i = phi ptr [ %i.fn, %bb.z ], [ %i.fq, %bb.ab ], [ %.0337.i.i, %bb.ac ] ; 3 uses
  %.1.i.i = phi ptr [ %i.fo, %bb.z ], [ %.08.i.i, %bb.ab ], [ %i.fr, %bb.ac ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.fs = icmp ult ptr %.134.i.i, %i.eq
  %i.ft = icmp ult ptr %.1.i.i, %i.es
  %i.fu = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %i.fu, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !126

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block300, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.ff, %middle.block300 ], [ %i.gl, %.lr.ph13.i.i ] ; 5 uses
  %i.fv = icmp ult ptr %.0.lcssa.i.i, %i.es
  br i1 %i.fv, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge2.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i280 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %4 = ptrtoaddr ptr %.val10.i to i64
  %i.fw = add i64 %.idx19.i.i, %4
  %i.fx = xor i64 %.0.lcssa.i.i281, -1
  %i.fy = add i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fy, 28
  %i.gb = sub i64 %.0.lcssa.i.i281, %.238.lcssa.i.i280
  %diff.check = icmp ugt i64 %i.gb, -32
  %or.cond304 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond304, label %.lr.ph17.i.i.preheader306, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph17.i.i.preheader
  %n.vec = and i64 %i.ga, 9223372036854775800     ; 3 uses
  %i.gc = shl i64 %n.vec, 2                       ; 2 uses
  %i.gd = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.gc
  %i.ge = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.gc ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.gf ; 2 uses
  %next.gep282 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.gf ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !14
  %wide.load283 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !14
  %i.gh = getelementptr i8, ptr %next.gep282, i64 16
  store <4 x i32> %wide.load, ptr %next.gep282, align 4, !tbaa !14
  store <4 x i32> %wide.load283, ptr %i.gh, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ga, %n.vec
  br i1 %cmp.n, label %Vec_IntTwoMerge2.exit, label %.lr.ph17.i.i.preheader306

.lr.ph17.i.i.preheader306:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.gd, %middle.block ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.ge, %middle.block ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader307, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.gj, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader307 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.gl, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader307 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.gk = load i32, ptr %.23512.i.i, align 4, !tbaa !14
  %i.gl = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.gk, ptr %.23811.i.i, align 4, !tbaa !14
  %i.gm = icmp ult ptr %i.gj, %i.eq
  br i1 %i.gm, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !128

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader306, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.gn, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader306 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.gp, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader306 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.go = load i32, ptr %.216.i.i, align 4, !tbaa !14
  %i.gp = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.go, ptr %.315.i.i, align 4, !tbaa !14
  %i.gq = icmp ult ptr %i.gn, %i.es
  br i1 %i.gq, label %.lr.ph17.i.i, label %Vec_IntTwoMerge2.exit, !llvm.loop !129

Vec_IntTwoMerge2.exit:                            ; preds = %.lr.ph17.i.i, %middle.block, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.ge, %middle.block ], [ %i.gp, %.lr.ph17.i.i ]
  %i.gr = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.gs = ptrtoint ptr %i.em to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = lshr exact i64 %i.gt, 2
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 6 uses
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !47
  %i.gx = icmp sgt i32 %i.gv, 0
  br i1 %i.gx, label %.lr.ph184, label %.critedge4

.lr.ph184:                                        ; preds = %Vec_IntTwoMerge2.exit
  %i.gy = add nuw nsw i64 %indvars.iv210, 1       ; 2 uses
  %i.gz = shl nuw nsw i64 %i.gy, 2                ; 2 uses
  %i.ha = shl nuw nsw i64 %indvars.iv210, 1       ; 2 uses
  %.promoted188 = load i32, ptr %i.g, align 4, !tbaa !43 ; 2 uses
  br i1 %i.dq, label %.lr.ph184.split.us, label %.lr.ph184.split

.lr.ph184.split.us:                               ; preds = %.lr.ph184
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = or disjoint i32 %i.hb, 1
  br label %.critedge86.us

.critedge86.us:                                   ; preds = %Vec_WecPush.exit160.us, %.lr.ph184.split.us
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %Vec_WecPush.exit160.us ], [ 0, %.lr.ph184.split.us ] ; 2 uses
  %.val.i149.us193 = phi ptr [ %.val.i149.us192, %Vec_WecPush.exit160.us ], [ %.promoted190, %.lr.ph184.split.us ] ; 4 uses
  %i.hd = phi i32 [ %i.hu, %Vec_WecPush.exit160.us ], [ %.promoted188, %.lr.ph184.split.us ] ; 3 uses
  %.val92.us = load ptr, ptr %i.ef, align 8, !tbaa !48
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.val92.us, i64 %indvars.iv207
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !14 ; 3 uses
  %.not.i146.us = icmp sgt i32 %i.hd, %i.hf
  br i1 %.not.i146.us, label %Vec_WecGrow.exit.i148.us, label %bb.ae

bb.ae:                                            ; preds = %.critedge86.us
  %i.hg = add nsw i32 %i.hf, 1                    ; 3 uses
  %i.hh = shl nsw i32 %i.hd, 1
  %i.hi = tail call noundef i32 @llvm.smax.i32(i32 %i.hh, i32 %i.hg) ; 4 uses
  %i.hj = load i32, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  %.not.i.i147.us = icmp slt i32 %i.hj, %i.hi
  br i1 %.not.i.i147.us, label %bb.af, label %Vec_WecGrow.exit.i148.us

bb.af:                                            ; preds = %bb.ae
  %.not13.i.i158.us = icmp eq ptr %.val.i149.us193, null
  %i.hk = sext i32 %i.hi to i64
  %i.hl = shl nsw i64 %i.hk, 4                    ; 2 uses
  br i1 %.not13.i.i158.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hm = tail call ptr @realloc(ptr noundef nonnull %.val.i149.us193, i64 noundef %i.hl) #34
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.hn = tail call noalias ptr @malloc(i64 noundef %i.hl) #31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ho = phi ptr [ %i.hm, %bb.ag ], [ %i.hn, %bb.ah ] ; 2 uses
  %i.hp = sext i32 %i.hj to i64
  %i.hq = getelementptr inbounds [16 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = sub nsw i32 %i.hi, %i.hj
  %i.hs = sext i32 %i.hr to i64
  %i.ht = shl nuw nsw i64 %i.hs, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hq, i8 0, i64 %i.ht, i1 false)
  store i32 %i.hi, ptr %i.b, align 8, !tbaa !41
  br label %Vec_WecGrow.exit.i148.us

Vec_WecGrow.exit.i148.us:                         ; preds = %bb.ae, %bb.ai, %.critedge86.us
  %.val.i149.us192 = phi ptr [ %.val.i149.us193, %.critedge86.us ], [ %i.ho, %bb.ai ], [ %.val.i149.us193, %bb.ae ] ; 3 uses
  %i.hu = phi i32 [ %i.hd, %.critedge86.us ], [ %i.hg, %bb.ai ], [ %i.hg, %bb.ae ] ; 2 uses
  %i.hv = sext i32 %i.hf to i64
  %i.hw = getelementptr inbounds [16 x i8], ptr %.val.i149.us192, i64 %i.hv ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !47 ; 7 uses
  %i.hz = load i32, ptr %i.hw, align 8, !tbaa !49
  %i.ia = icmp eq i32 %i.hy, %i.hz
  br i1 %i.ia, label %bb.aj, label %Vec_WecPush.exit160.us

bb.aj:                                            ; preds = %Vec_WecGrow.exit.i148.us
  %i.ib = icmp slt i32 %i.hy, 16
  br i1 %i.ib, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ic = icmp samesign ult i32 %i.hy, 1073741823
  %i.id = shl nuw nsw i32 %i.hy, 1
  %spec.select.i.i150.us = select i1 %i.ic, i32 %i.id, i32 2147483647 ; 3 uses
  %.not.i9.i.i151.us = icmp samesign ult i32 %i.hy, %spec.select.i.i150.us
  br i1 %.not.i9.i.i151.us, label %bb.al, label %Vec_WecPush.exit160.us

bb.al:                                            ; preds = %bb.ak
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !48 ; 2 uses
  %.not9.i10.i.i152.us = icmp eq ptr %i.if, null
  %i.ig = zext nneg i32 %spec.select.i.i150.us to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2                ; 2 uses
  br i1 %.not9.i10.i.i152.us, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ii = tail call ptr @realloc(ptr noundef nonnull %i.if, i64 noundef %i.ih) #34
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ih) #31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ik = phi ptr [ %i.ii, %bb.am ], [ %i.ij, %bb.an ]
  store ptr %i.ik, ptr %i.ie, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i.i153.us

bb.ap:                                            ; preds = %bb.aj
  %i.il = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i.i156.us = icmp eq ptr %i.im, null
  br i1 %.not9.i.i.i156.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.in = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.im, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i.i157.us

bb.ar:                                            ; preds = %bb.ap
  %i.io = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i.i157.us

Vec_IntGrow.exit.i.i157.us:                       ; preds = %bb.ar, %bb.aq
  %i.ip = phi ptr [ %i.in, %bb.aq ], [ %i.io, %bb.ar ]
  store ptr %i.ip, ptr %i.il, align 8, !tbaa !48
  br label %Vec_IntGrow.exit11.sink.split.i.i153.us

Vec_IntGrow.exit11.sink.split.i.i153.us:          ; preds = %Vec_IntGrow.exit.i.i157.us, %bb.ao
  %spec.select.sink.i.i154.us = phi i32 [ %spec.select.i.i150.us, %bb.ao ], [ 16, %Vec_IntGrow.exit.i.i157.us ]
  store i32 %spec.select.sink.i.i154.us, ptr %i.hw, align 8, !tbaa !49
  %.pre.i155.us = load i32, ptr %i.hx, align 4, !tbaa !47
  br label %Vec_WecPush.exit160.us

Vec_WecPush.exit160.us:                           ; preds = %Vec_IntGrow.exit11.sink.split.i.i153.us, %bb.ak, %Vec_WecGrow.exit.i148.us
  %i.iq = phi i32 [ %i.hy, %Vec_WecGrow.exit.i148.us ], [ %i.hy, %bb.ak ], [ %.pre.i155.us, %Vec_IntGrow.exit11.sink.split.i.i153.us ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@Sbd_ManExploreCut:Abc_Clock.exit
  store i64 0, ptr %i.xf, align 8, !tbaa !112
  %.not494 = icmp slt i64 %indvar, %i.wv
  br i1 %.not494, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %._crit_edge720
  store i32 %i.wz, ptr %i.xd, align 4, !tbaa !111
  br i1 %i.vl, label %.lr.ph723, label %.loopexit

.lr.ph723:                                        ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr nonnull align 16 %i.c, i64 %i.wu, i1 false), !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph723, %bb.bj, %._crit_edge720
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.xg = icmp samesign ult i64 %indvar.next, %i.ww
  br i1 %i.xg, label %bb.bi, label %._crit_edge727, !llvm.loop !343

._crit_edge727:                                   ; preds = %.loopexit, %._crit_edge716
  %i.xh = add nsw i32 %i.wn, 3
  store i32 %i.xh, ptr %4, align 4, !tbaa !14
  %i.xi = call fastcc i64 @Abc_Clock()
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !65
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !70
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !81
  %i.xp = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !99
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !80
  %i.xu = load ptr, ptr %i.ef, align 8, !tbaa !83
  %i.xv = load i32, ptr %4, align 4, !tbaa !14
  %i.xw = call i32 @Sbd_ProblemSolve(ptr noundef %i.xk, ptr noundef %i.xm, i32 noundef %1, ptr noundef %i.xo, ptr noundef %i.xp, ptr noundef %i.xr, ptr noundef %i.xt, ptr noundef %i.xu, i32 noundef %i.xv, ptr noundef nonnull %5) #33 ; 2 uses
  %i.xx = call fastcc i64 @Abc_Clock()
  %i.xy = sub i64 %i.xx, %i.xi
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !113
  %i.yb = add nsw i64 %i.xy, %i.ya
  store i64 %i.yb, ptr %i.xz, align 8, !tbaa !113
  %.not493 = icmp eq i32 %i.xw, 0
  br i1 %.not493, label %.loopexit585, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge727
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !14
  %i.ye = add nsw i32 %i.yd, 1
  store i32 %i.ye, ptr %i.yc, align 8, !tbaa !14
  br label %.loopexit585

.loopexit585:                                     ; preds = %bb.q, %.thread559, %bb.bk, %._crit_edge727, %._crit_edge685, %bb.ax, %.thread552, %._crit_edge649, %.critedge3.thread, %.critedge3, %bb.ah, %._crit_edge603
  %.5468 = phi i32 [ %i.rw, %._crit_edge685 ], [ 0, %.thread559 ], [ 1, %._crit_edge603 ], [ 0, %.critedge3 ], [ 0, %.critedge3.thread ], [ %i.lo, %._crit_edge649 ], [ 0, %.thread552 ], [ 0, %bb.ax ], [ 0, %bb.ah ], [ %i.xw, %bb.bk ], [ 0, %._crit_edge727 ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.5468
}

declare i32 @Sbd_ProblemSolve(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Sbd_ManExplore3(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [10 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val44 = load i32, ptr %i.e, align 4, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val43 = load i32, ptr %i.h, align 4, !tbaa !47
  %i.i = add nsw i32 %.val43, %.val44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val = load i32, ptr %i.l, align 4, !tbaa !47
  %i.m = add nsw i32 %i.i, %.val
  store i32 %i.m, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.n = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #33
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %5, align 8, !tbaa !56
  %.neg47 = mul i64 %i.p, -1000000
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !57
  %.neg = sdiv i64 %i.r, -1000
  %.neg48 = add i64 %.neg, %.neg47
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg48, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.ad = call ptr @Sbd_ManSatSolver(ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, i32 noundef %1, ptr noundef %i.y, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef 0) #33
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ae = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #33
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %Abc_Clock.exit46, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.ag = load i64, ptr %4, align 8, !tbaa !56
  %i.ah = mul nsw i64 %i.ag, 1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !57
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ah
  br label %Abc_Clock.exit46

Abc_Clock.exit46:                                 ; preds = %Abc_Clock.exit, %bb.c
  %.0.i45 = phi i64 [ %i.al, %bb.c ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.am = add i64 %.0.i45, %.0.i.neg
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !101
  %i.ap = add nsw i64 %i.am, %i.ao
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit46
  %i.as = call i32 @Sbd_ManCutServerFirst(ptr noundef nonnull %i.ar, i32 noundef %1, ptr noundef nonnull %i.b) #33 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = call i32 @Sbd_ManExploreCut(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.as, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %.not42 = icmp ne i32 %i.au, 0
  %. = zext i1 %.not42 to i32
  br label %.loopexit

bb.f:                                             ; preds = %Abc_Clock.exit46
  %i.av = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !68 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !90
  %.not40.not50 = icmp slt i32 %i.aw, %i.ay
  br i1 %.not40.not50, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.051.in = phi i32 [ %i.aw, %.lr.ph ], [ %.051, %bb.i ]
  %.051 = add nsw i32 %.051.in, 1                 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !93
  %i.bb = call i32 @Sbd_StoObjBestCut(ptr noundef %i.ba, i32 noundef %1, i32 noundef %.051, ptr noundef nonnull %i.b) #33 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = call i32 @Sbd_ManExploreCut(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.bb, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %.not41 = icmp eq i32 %i.bd, 0
  br i1 %.not41, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = load ptr, ptr %0, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !90
  %.not40.not = icmp slt i32 %.051, %i.bg
  br i1 %.not40.not, label %bb.g, label %.loopexit, !llvm.loop !344

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.f, %bb.e, %bb.d
  %.036 = phi i32 [ 0, %bb.d ], [ %., %bb.e ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.036
}

declare i32 @Sbd_ManCutServerFirst(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Sbd_StoObjBestCut(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Sbd_CutMergeSimple(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !14     ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 2                     ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx57 = shl nsw i64 %i.g, 2                   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %.idx57 ; 3 uses
  %.03643 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = icmp sgt i32 %i.c, 0
  %i.j = icmp sgt i32 %i.f, 0
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %.preheader42

.preheader42:                                     ; preds = %bb.f, %bb.a
  %.033.lcssa = phi ptr [ %i.a, %bb.a ], [ %.134, %bb.f ] ; 5 uses
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.1, %bb.f ] ; 5 uses
  %.036.lcssa = phi ptr [ %.03643, %bb.a ], [ %.036, %bb.f ] ; 5 uses
  %.0.lcssa75 = ptrtoaddr ptr %.0.lcssa to i64    ; 2 uses
  %i.l = icmp ult ptr %.033.lcssa, %i.e
  br i1 %i.l, label %.lr.ph51.preheader, label %.preheader

.lr.ph51.preheader:                               ; preds = %.preheader42
  %.033.lcssa69 = ptrtoaddr ptr %.033.lcssa to i64 ; 2 uses
  %.036.lcssa68 = ptrtoaddr ptr %.036.lcssa to i64
  %4 = ptrtoaddr ptr %1 to i64
  %i.m = add i64 %.idx, %4
  %i.n = add i64 %i.m, 3
  %i.o = sub i64 %i.n, %.033.lcssa69              ; 2 uses
  %i.p = lshr i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 44
  %i.r = sub i64 %.033.lcssa69, %.036.lcssa68
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph51.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph51.preheader
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %.033.lcssa, i64 %i.s
  %i.u = getelementptr i8, ptr %.036.lcssa, i64 %i.s ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa, i64 %i.v ; 2 uses
  %next.gep70 = getelementptr i8, ptr %.036.lcssa, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !14
  %wide.load71 = load <4 x i32>, ptr %i.w, align 4, !tbaa !14
  %i.x = getelementptr i8, ptr %next.gep70, i64 16
  store <4 x i32> %wide.load, ptr %next.gep70, align 4, !tbaa !14
  store <4 x i32> %wide.load71, ptr %i.x, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph51.preheader94

.lr.ph51.preheader94:                             ; preds = %.lr.ph51.preheader, %middle.block
  %.23550.ph = phi ptr [ %.033.lcssa, %.lr.ph51.preheader ], [ %i.t, %middle.block ]
  %.23849.ph = phi ptr [ %.036.lcssa, %.lr.ph51.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph51

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.03646 = phi ptr [ %.036, %bb.f ], [ %.03643, %bb.a ] ; 4 uses
  %.045 = phi ptr [ %.1, %bb.f ], [ %i.b, %bb.a ] ; 4 uses
  %.03344 = phi ptr [ %.134, %bb.f ], [ %i.a, %bb.a ] ; 4 uses
  %i.z = load i32, ptr %.03344, align 4, !tbaa !14 ; 4 uses
  %i.aa = load i32, ptr %.045, align 4, !tbaa !14 ; 3 uses
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.03344, i64 4
  store i32 %i.z, ptr %.03646, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %.045, i64 4
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.ae = icmp slt i32 %i.z, %i.aa
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.03344, i64 4
  store i32 %i.z, ptr %.03646, align 4, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.045, i64 4
  store i32 %i.aa, ptr %.03646, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.134 = phi ptr [ %i.ac, %bb.b ], [ %i.af, %bb.d ], [ %.03344, %bb.e ] ; 3 uses
  %.1 = phi ptr [ %i.ad, %bb.b ], [ %.045, %bb.d ], [ %i.ag, %bb.e ] ; 3 uses
  %.036 = getelementptr inbounds nuw i8, ptr %.03646, i64 4 ; 2 uses
  %i.ah = icmp ult ptr %.134, %i.e
  %i.ai = icmp ult ptr %.1, %i.h
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.lr.ph, label %.preheader42, !llvm.loop !4

.preheader:                                       ; preds = %.lr.ph51, %middle.block, %.preheader42
  %.238.lcssa = phi ptr [ %.036.lcssa, %.preheader42 ], [ %i.u, %middle.block ], [ %i.ba, %.lr.ph51 ] ; 5 uses
  %i.ak = icmp ult ptr %.0.lcssa, %i.h
  br i1 %i.ak, label %.lr.ph55.preheader, label %._crit_edge

.lr.ph55.preheader:                               ; preds = %.preheader
  %.238.lcssa74 = ptrtoaddr ptr %.238.lcssa to i64
  %5 = ptrtoaddr ptr %2 to i64
  %i.al = add i64 %.idx57, %5
  %i.am = add i64 %i.al, 3
  %i.an = sub i64 %i.am, %.0.lcssa75              ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check78 = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %.0.lcssa75, %.238.lcssa74
  %diff.check76 = icmp ugt i64 %i.aq, -32
  %or.cond92 = select i1 %min.iters.check78, i1 true, i1 %diff.check76
  br i1 %or.cond92, label %.lr.ph55.preheader93, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph55.preheader
  %n.vec80 = and i64 %i.ap, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec80, 2                     ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa, i64 %i.ar
  %i.at = getelementptr i8, ptr %.238.lcssa, i64 %i.ar ; 2 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 2 uses
  %i.au = shl i64 %index82, 2                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.0.lcssa, i64 %i.au ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.238.lcssa, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !14
  %wide.load86 = load <4 x i32>, ptr %i.av, align 4, !tbaa !14
  %i.aw = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x i32> %wide.load85, ptr %next.gep84, align 4, !tbaa !14
  store <4 x i32> %wide.load86, ptr %i.aw, align 4, !tbaa !14
  %index.next87 = add nuw i64 %index82, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.ax, label %middle.block88, label %vector.body81, !llvm.loop !346

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.ap, %n.vec80
  br i1 %cmp.n89, label %._crit_edge, label %.lr.ph55.preheader93

.lr.ph55.preheader93:                             ; preds = %.lr.ph55.preheader, %middle.block88
  %.254.ph = phi ptr [ %.0.lcssa, %.lr.ph55.preheader ], [ %i.as, %middle.block88 ]
  %.353.ph = phi ptr [ %.238.lcssa, %.lr.ph55.preheader ], [ %i.at, %middle.block88 ]
  br label %.lr.ph55

.lr.ph51:                                         ; preds = %.lr.ph51.preheader94, %.lr.ph51
  %.23550 = phi ptr [ %i.ay, %.lr.ph51 ], [ %.23550.ph, %.lr.ph51.preheader94 ] ; 2 uses
  %.23849 = phi ptr [ %i.ba, %.lr.ph51 ], [ %.23849.ph, %.lr.ph51.preheader94 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.23550, i64 4 ; 2 uses
  %i.az = load i32, ptr %.23550, align 4, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %.23849, i64 4 ; 2 uses
  store i32 %i.az, ptr %.23849, align 4, !tbaa !14
  %i.bb = icmp ult ptr %i.ay, %i.e
  br i1 %i.bb, label %.lr.ph51, label %.preheader, !llvm.loop !347

.lr.ph55:                                         ; preds = %.lr.ph55.preheader93, %.lr.ph55
  %.254 = phi ptr [ %i.bc, %.lr.ph55 ], [ %.254.ph, %.lr.ph55.preheader93 ] ; 2 uses
  %.353 = phi ptr [ %i.be, %.lr.ph55 ], [ %.353.ph, %.lr.ph55.preheader93 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.254, i64 4 ; 2 uses
  %i.bd = load i32, ptr %.254, align 4, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %.353, i64 4 ; 2 uses
  store i32 %i.bd, ptr %.353, align 4, !tbaa !14
  %i.bf = icmp ult ptr %i.bc, %i.h
  br i1 %i.bf, label %.lr.ph55, label %._crit_edge, !llvm.loop !348

._crit_edge:                                      ; preds = %.lr.ph55, %middle.block88, %.preheader
  %.3.lcssa = phi ptr [ %.238.lcssa, %.preheader ], [ %i.at, %middle.block88 ], [ %i.be, %.lr.ph55 ]
  %i.bg = ptrtoint ptr %.3.lcssa to i64
  %i.bh = ptrtoint ptr %3 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %3, align 4, !tbaa !14
  ret i32 %i.bl
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Sbd_ManMergeCuts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [13 x i32], align 16              ; 8 uses
  %i.b = alloca [13 x i32], align 16              ; 7 uses
  %i.c = alloca [13 x i32], align 16              ; 7 uses
  %i.d = alloca [13 x i32], align 16              ; 6 uses
  %i.e = alloca [2 x i32], align 4                ; 8 uses
  %i.f = alloca [2 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %.val86 = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %.val86, i64 %i.j
  %.val87 = load i64, ptr %i.k, align 4           ; 2 uses
  %i.l = trunc i64 %.val87 to i32
  %i.m = and i32 %i.l, 536870911
  %i.n = sub nsw i32 %1, %i.m                     ; 3 uses
  %i.o = lshr i64 %.val87, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = and i32 %i.p, 536870911
  %i.r = sub nsw i32 %1, %i.q                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val84 = load ptr, ptr %i.u, align 8, !tbaa !48 ; 3 uses
  %i.v = sext i32 %i.n to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.val84, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.x, i32 1) ; 3 uses
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.val84, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 1) ; 3 uses
  %.val94 = load ptr, ptr %0, align 8, !tbaa !64  ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 32
  %.val95 = load ptr, ptr %i.ac, align 8, !tbaa !69
  %.val94.val = load i32, ptr %.val94, align 4, !tbaa !68
  %i.ad = getelementptr i8, ptr %.val95, i64 8
  %.val95.val = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 7 uses
  %i.ae = add nsw i32 %.val94.val, 1              ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.n
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val95.val, i64 %i.ag ; 3 uses
  %i.ai = mul nsw i32 %i.ae, %i.r
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val95.val, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i32 1, ptr %i.e, align 4, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 7 uses
  store i32 %i.n, ptr %i.al, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store i32 1, ptr %i.f, align 4, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 7 uses
  store i32 %i.r, ptr %i.am, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 6 uses
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !14 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %.idx.i = shl nsw i64 %i.aq, 2                  ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i ; 3 uses
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !14 ; 3 uses
  %i.at = sext i32 %i.as to i64
  %.idx57.i = shl nsw i64 %i.at, 2                ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %i.ao, i64 %.idx57.i ; 3 uses
  %.03643.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.av = icmp sgt i32 %i.ap, 0
  %i.aw = icmp sgt i32 %i.as, 0
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.i, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.f, %bb.a
  %.033.lcssa.i = phi ptr [ %i.an, %bb.a ], [ %.134.i, %bb.f ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %i.ao, %bb.a ], [ %.1.i, %bb.f ] ; 5 uses
  %.036.lcssa.i = phi ptr [ %.03643.i, %bb.a ], [ %.036.i, %bb.f ] ; 5 uses
  %.0.lcssa.i234 = ptrtoaddr ptr %.0.lcssa.i to i64 ; 2 uses
  %i.ay = icmp ult ptr %.033.lcssa.i, %i.ar
  br i1 %i.ay, label %.lr.ph51.i.preheader, label %.preheader.i

.lr.ph51.i.preheader:                             ; preds = %.preheader42.i
  %.033.lcssa.i228 = ptrtoaddr ptr %.033.lcssa.i to i64 ; 2 uses
  %.036.lcssa.i227 = ptrtoaddr ptr %.036.lcssa.i to i64
  %2 = ptrtoaddr ptr %.val95.val to i64
  %i.az = shl nsw i64 %i.ag, 2
  %i.ba = add i64 %.idx.i, %2
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = add i64 %i.bb, 3
  %i.bd = sub i64 %i.bc, %.033.lcssa.i228         ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 44
  %i.bg = sub i64 %.033.lcssa.i228, %.036.lcssa.i227
  %diff.check = icmp ugt i64 %i.bg, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph51.i.preheader385, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph51.i.preheader
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2                       ; 2 uses
  %i.bi = getelementptr i8, ptr %.033.lcssa.i, i64 %i.bh
  %i.bj = getelementptr i8, ptr %.036.lcssa.i, i64 %i.bh ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa.i, i64 %i.bk ; 2 uses
  %next.gep229 = getelementptr i8, ptr %.036.lcssa.i, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !14
  %wide.load230 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !14
  %i.bm = getelementptr i8, ptr %next.gep229, i64 16
  store <4 x i32> %wide.load, ptr %next.gep229, align 4, !tbaa !14
  store <4 x i32> %wide.load230, ptr %i.bm, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph51.i.preheader385

.lr.ph51.i.preheader385:                          ; preds = %.lr.ph51.i.preheader, %middle.block
  %.23550.i.ph = phi ptr [ %.033.lcssa.i, %.lr.ph51.i.preheader ], [ %i.bi, %middle.block ]
  %.23849.i.ph = phi ptr [ %.036.lcssa.i, %.lr.ph51.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph51.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.03646.i = phi ptr [ %.036.i, %bb.f ], [ %.03643.i, %bb.a ] ; 4 uses
  %.045.i = phi ptr [ %.1.i, %bb.f ], [ %i.ao, %bb.a ] ; 4 uses
  %.03344.i = phi ptr [ %.134.i, %bb.f ], [ %i.an, %bb.a ] ; 4 uses
  %i.bo = load i32, ptr %.03344.i, align 4, !tbaa !14 ; 4 uses
  %i.bp = load i32, ptr %.045.i, align 4, !tbaa !14 ; 3 uses
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds nuw i8, ptr %.03344.i, i64 4
  store i32 %i.bo, ptr %.03646.i, align 4, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.045.i, i64 4
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.i
  %i.bt = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %.03344.i, i64 4
  store i32 %i.bo, ptr %.03646.i, align 4, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %.045.i, i64 4
  store i32 %i.bp, ptr %.03646.i, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.134.i = phi ptr [ %i.br, %bb.b ], [ %i.bu, %bb.d ], [ %.03344.i, %bb.e ] ; 3 uses
  %.1.i = phi ptr [ %i.bs, %bb.b ], [ %.045.i, %bb.d ], [ %i.bv, %bb.e ] ; 3 uses
  %.036.i = getelementptr inbounds nuw i8, ptr %.03646.i, i64 4 ; 2 uses
  %i.bw = icmp ult ptr %.134.i, %i.ar
  %i.bx = icmp ult ptr %.1.i, %i.au
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph.i, label %.preheader42.i, !llvm.loop !4

.preheader.i:                                     ; preds = %.lr.ph51.i, %middle.block, %.preheader42.i
  %.238.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader42.i ], [ %i.bj, %middle.block ], [ %i.cr, %.lr.ph51.i ] ; 5 uses
  %i.bz = icmp ult ptr %.0.lcssa.i, %i.au
  br i1 %i.bz, label %.lr.ph55.i.preheader, label %Sbd_CutMergeSimple.exit

.lr.ph55.i.preheader:                             ; preds = %.preheader.i
  %.238.lcssa.i233 = ptrtoaddr ptr %.238.lcssa.i to i64
  %3 = ptrtoaddr ptr %.val95.val to i64
  %i.ca = shl nsw i64 %i.aj, 2
  %i.cb = add i64 %.idx57.i, %3
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = add i64 %i.cc, 3
  %i.ce = sub i64 %i.cd, %.0.lcssa.i234           ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check237 = icmp ult i64 %i.ce, 44
  %i.ch = sub i64 %.0.lcssa.i234, %.238.lcssa.i233
  %diff.check235 = icmp ugt i64 %i.ch, -32
  %or.cond365 = select i1 %min.iters.check237, i1 true, i1 %diff.check235
  br i1 %or.cond365, label %.lr.ph55.i.preheader383, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph55.i.preheader
  %n.vec239 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ci = shl i64 %n.vec239, 2                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ci
  %i.ck = getelementptr i8, ptr %.238.lcssa.i, i64 %i.ci ; 2 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next246, %vector.body240 ] ; 2 uses
  %i.cl = shl i64 %index241, 2                    ; 2 uses
  %next.gep242 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cl ; 2 uses
  %next.gep243 = getelementptr i8, ptr %.238.lcssa.i, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep242, i64 16
  %wide.load244 = load <4 x i32>, ptr %next.gep242, align 4, !tbaa !14
  %wide.load245 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !14
  %i.cn = getelementptr i8, ptr %next.gep243, i64 16
  store <4 x i32> %wide.load244, ptr %next.gep243, align 4, !tbaa !14
  store <4 x i32> %wide.load245, ptr %i.cn, align 4, !tbaa !14
  %index.next246 = add nuw i64 %index241, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.co, label %middle.block247, label %vector.body240, !llvm.loop !350

middle.block247:                                  ; preds = %vector.body240
  %cmp.n248 = icmp eq i64 %i.cg, %n.vec239
  br i1 %cmp.n248, label %Sbd_CutMergeSimple.exit.loopexit, label %.lr.ph55.i.preheader383

.lr.ph55.i.preheader383:                          ; preds = %.lr.ph55.i.preheader, %middle.block247
  %.254.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph55.i.preheader ], [ %i.cj, %middle.block247 ]
  %.353.i.ph = phi ptr [ %.238.lcssa.i, %.lr.ph55.i.preheader ], [ %i.ck, %middle.block247 ]
  br label %.lr.ph55.i

.lr.ph51.i:                                       ; preds = %.lr.ph51.i.preheader385, %.lr.ph51.i
  %.23550.i = phi ptr [ %i.cp, %.lr.ph51.i ], [ %.23550.i.ph, %.lr.ph51.i.preheader385 ] ; 2 uses
  %.23849.i = phi ptr [ %i.cr, %.lr.ph51.i ], [ %.23849.i.ph, %.lr.ph51.i.preheader385 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.23550.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %.23550.i, align 4, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %.23849.i, i64 4 ; 2 uses
  store i32 %i.cq, ptr %.23849.i, align 4, !tbaa !14
  %i.cs = icmp ult ptr %i.cp, %i.ar
  br i1 %i.cs, label %.lr.ph51.i, label %.preheader.i, !llvm.loop !351

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader383, %.lr.ph55.i
  %.254.i = phi ptr [ %i.ct, %.lr.ph55.i ], [ %.254.i.ph, %.lr.ph55.i.preheader383 ] ; 2 uses
  %.353.i = phi ptr [ %i.cv, %.lr.ph55.i ], [ %.353.i.ph, %.lr.ph55.i.preheader383 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.254.i, i64 4 ; 2 uses
  %i.cu = load i32, ptr %.254.i, align 4, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %.353.i, i64 4 ; 2 uses
  store i32 %i.cu, ptr %.353.i, align 4, !tbaa !14
  %i.cw = icmp ult ptr %i.ct, %i.au
  br i1 %i.cw, label %.lr.ph55.i, label %Sbd_CutMergeSimple.exit.loopexit, !llvm.loop !352

Sbd_CutMergeSimple.exit.loopexit:                 ; preds = %.lr.ph55.i, %middle.block247
  %.lcssa225 = phi ptr [ %i.ck, %middle.block247 ], [ %i.cv, %.lr.ph55.i ]
  %.pre = load i32, ptr %i.e, align 4, !tbaa !14
  %.pre182 = load i32, ptr %i.ak, align 4, !tbaa !14 ; 2 uses
  %.pre184 = sext i32 %.pre182 to i64
  %.pre185 = shl nsw i64 %.pre184, 2
  br label %Sbd_CutMergeSimple.exit

Sbd_CutMergeSimple.exit:                          ; preds = %Sbd_CutMergeSimple.exit.loopexit, %.preheader.i
  %.idx57.i97.pre-phi = phi i64 [ %.pre185, %Sbd_CutMergeSimple.exit.loopexit ], [ %.idx57.i, %.preheader.i ] ; 2 uses
  %i.cx = phi i32 [ %.pre182, %Sbd_CutMergeSimple.exit.loopexit ], [ %i.as, %.preheader.i ]
  %i.cy = phi i32 [ %.pre, %Sbd_CutMergeSimple.exit.loopexit ], [ 1, %.preheader.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.lcssa225, %Sbd_CutMergeSimple.exit.loopexit ], [ %.238.lcssa.i, %.preheader.i ]
  %i.cz = ptrtoint ptr %.3.lcssa.i to i64
  %i.da = ptrtoint ptr %i.a to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, -1                       ; 2 uses
  store i32 %i.de, ptr %i.a, align 16, !tbaa !14
  %i.df = sext i32 %i.cy to i64
  %.idx.i96 = shl nsw i64 %i.df, 2                ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.al, i64 %.idx.i96 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %i.ao, i64 %.idx57.i97.pre-phi ; 3 uses
  %.03643.i98 = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.di = icmp sgt i32 %i.cy, 0
  %i.dj = icmp sgt i32 %i.cx, 0
  %i.dk = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %i.dk, label %.lr.ph.i112, label %.preheader42.i99

.preheader42.i99:                                 ; preds = %bb.k, %Sbd_CutMergeSimple.exit
  %.033.lcssa.i100 = phi ptr [ %i.al, %Sbd_CutMergeSimple.exit ], [ %.134.i116, %bb.k ] ; 5 uses
  %.0.lcssa.i101 = phi ptr [ %i.ao, %Sbd_CutMergeSimple.exit ], [ %.1.i117, %bb.k ] ; 5 uses
  %.036.lcssa.i102 = phi ptr [ %.03643.i98, %Sbd_CutMergeSimple.exit ], [ %.036.i118, %bb.k ] ; 5 uses
  %.0.lcssa.i101272 = ptrtoaddr ptr %.0.lcssa.i101 to i64 ; 2 uses
  %i.dl = icmp ult ptr %.033.lcssa.i100, %i.dg
  br i1 %i.dl, label %.lr.ph51.i109.preheader, label %.preheader.i103

.lr.ph51.i109.preheader:                          ; preds = %.preheader42.i99
  %.033.lcssa.i100253 = ptrtoaddr ptr %.033.lcssa.i100 to i64 ; 2 uses
  %.036.lcssa.i102252 = ptrtoaddr ptr %.036.lcssa.i102 to i64
  %4 = ptrtoaddr ptr %i.e to i64
  %i.dm = add i64 %.idx.i96, %4
  %i.dn = or disjoint i64 %i.dm, 3
  %i.do = sub i64 %i.dn, %.033.lcssa.i100253      ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check256 = icmp ult i64 %i.do, 44
  %i.dr = sub i64 %.033.lcssa.i100253, %.036.lcssa.i102252
  %diff.check254 = icmp ugt i64 %i.dr, -32
  %or.cond366 = select i1 %min.iters.check256, i1 true, i1 %diff.check254
  br i1 %or.cond366, label %.lr.ph51.i109.preheader381, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph51.i109.preheader
  %n.vec258 = and i64 %i.dq, 9223372036854775800  ; 3 uses
  %i.ds = shl i64 %n.vec258, 2                    ; 2 uses
  %i.dt = getelementptr i8, ptr %.033.lcssa.i100, i64 %i.ds
  %i.du = getelementptr i8, ptr %.036.lcssa.i102, i64 %i.ds ; 2 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next265, %vector.body259 ] ; 2 uses
  %i.dv = shl i64 %index260, 2                    ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.033.lcssa.i100, i64 %i.dv ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.036.lcssa.i102, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep261, i64 16
  %wide.load263 = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !14
  %wide.load264 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !14
  %i.dx = getelementptr i8, ptr %next.gep262, i64 16
  store <4 x i32> %wide.load263, ptr %next.gep262, align 4, !tbaa !14
  store <4 x i32> %wide.load264, ptr %i.dx, align 4, !tbaa !14
  %index.next265 = add nuw i64 %index260, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.dy, label %middle.block266, label %vector.body259, !llvm.loop !353

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %i.dq, %n.vec258
  br i1 %cmp.n267, label %.preheader.i103, label %.lr.ph51.i109.preheader381

.lr.ph51.i109.preheader381:                       ; preds = %.lr.ph51.i109.preheader, %middle.block266
  %.23550.i110.ph = phi ptr [ %.033.lcssa.i100, %.lr.ph51.i109.preheader ], [ %i.dt, %middle.block266 ]
  %.23849.i111.ph = phi ptr [ %.036.lcssa.i102, %.lr.ph51.i109.preheader ], [ %i.du, %middle.block266 ]
  br label %.lr.ph51.i109

.lr.ph.i112:                                      ; preds = %Sbd_CutMergeSimple.exit, %bb.k
  %.03646.i113 = phi ptr [ %.036.i118, %bb.k ], [ %.03643.i98, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %.045.i114 = phi ptr [ %.1.i117, %bb.k ], [ %i.ao, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %.03344.i115 = phi ptr [ %.134.i116, %bb.k ], [ %i.al, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %i.dz = load i32, ptr %.03344.i115, align 4, !tbaa !14 ; 4 uses
  %i.ea = load i32, ptr %.045.i114, align 4, !tbaa !14 ; 3 uses
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i112
  %i.ec = getelementptr inbounds nuw i8, ptr %.03344.i115, i64 4
  store i32 %i.dz, ptr %.03646.i113, align 4, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %.045.i114, i64 4
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i112
  %i.ee = icmp slt i32 %i.dz, %i.ea
  br i1 %i.ee, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ef = getelementptr inbounds nuw i8, ptr %.03344.i115, i64 4
  store i32 %i.dz, ptr %.03646.i113, align 4, !tbaa !14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.eg = getelementptr inbounds nuw i8, ptr %.045.i114, i64 4
  store i32 %i.ea, ptr %.03646.i113, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i116 = phi ptr [ %i.ec, %bb.g ], [ %i.ef, %bb.i ], [ %.03344.i115, %bb.j ] ; 3 uses
  %.1.i117 = phi ptr [ %i.ed, %bb.g ], [ %.045.i114, %bb.i ], [ %i.eg, %bb.j ] ; 3 uses
  %.036.i118 = getelementptr inbounds nuw i8, ptr %.03646.i113, i64 4 ; 2 uses
  %i.eh = icmp ult ptr %.134.i116, %i.dg
  %i.ei = icmp ult ptr %.1.i117, %i.dh
  %i.ej = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %i.ej, label %.lr.ph.i112, label %.preheader42.i99, !llvm.loop !4

.preheader.i103:                                  ; preds = %.lr.ph51.i109, %middle.block266, %.preheader42.i99
  %.238.lcssa.i104 = phi ptr [ %.036.lcssa.i102, %.preheader42.i99 ], [ %i.du, %middle.block266 ], [ %i.fc, %.lr.ph51.i109 ] ; 5 uses
  %i.ek = icmp ult ptr %.0.lcssa.i101, %i.dh
  br i1 %i.ek, label %.lr.ph55.i106.preheader, label %Sbd_CutMergeSimple.exit119

.lr.ph55.i106.preheader:                          ; preds = %.preheader.i103
  %.238.lcssa.i104271 = ptrtoaddr ptr %.238.lcssa.i104 to i64
  %5 = ptrtoaddr ptr %.val95.val to i64
  %i.el = shl nsw i64 %i.aj, 2
  %i.em = add i64 %.idx57.i97.pre-phi, %5
  %i.en = add i64 %i.em, %i.el
  %i.eo = add i64 %i.en, 3
  %i.ep = sub i64 %i.eo, %.0.lcssa.i101272        ; 2 uses
  %i.eq = lshr i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check275 = icmp ult i64 %i.ep, 44
  %i.es = sub i64 %.0.lcssa.i101272, %.238.lcssa.i104271
  %diff.check273 = icmp ugt i64 %i.es, -32
  %or.cond367 = select i1 %min.iters.check275, i1 true, i1 %diff.check273
  br i1 %or.cond367, label %.lr.ph55.i106.preheader379, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph55.i106.preheader
  %n.vec277 = and i64 %i.er, 9223372036854775800  ; 3 uses
  %i.et = shl i64 %n.vec277, 2                    ; 2 uses
  %i.eu = getelementptr i8, ptr %.0.lcssa.i101, i64 %i.et
  %i.ev = getelementptr i8, ptr %.238.lcssa.i104, i64 %i.et ; 2 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 2 uses
  %i.ew = shl i64 %index279, 2                    ; 2 uses
  %next.gep280 = getelementptr i8, ptr %.0.lcssa.i101, i64 %i.ew ; 2 uses
  %next.gep281 = getelementptr i8, ptr %.238.lcssa.i104, i64 %i.ew ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep280, i64 16
  %wide.load282 = load <4 x i32>, ptr %next.gep280, align 4, !tbaa !14
  %wide.load283 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !14
  %i.ey = getelementptr i8, ptr %next.gep281, i64 16
  store <4 x i32> %wide.load282, ptr %next.gep281, align 4, !tbaa !14
  store <4 x i32> %wide.load283, ptr %i.ey, align 4, !tbaa !14
  %index.next284 = add nuw i64 %index279, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.ez, label %middle.block285, label %vector.body278, !llvm.loop !354

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %i.er, %n.vec277
  br i1 %cmp.n286, label %Sbd_CutMergeSimple.exit119, label %.lr.ph55.i106.preheader379

.lr.ph55.i106.preheader379:                       ; preds = %.lr.ph55.i106.preheader, %middle.block285
  %.254.i107.ph = phi ptr [ %.0.lcssa.i101, %.lr.ph55.i106.preheader ], [ %i.eu, %middle.block285 ]
  %.353.i108.ph = phi ptr [ %.238.lcssa.i104, %.lr.ph55.i106.preheader ], [ %i.ev, %middle.block285 ]
  br label %.lr.ph55.i106

.lr.ph51.i109:                                    ; preds = %.lr.ph51.i109.preheader381, %.lr.ph51.i109
  %.23550.i110 = phi ptr [ %i.fa, %.lr.ph51.i109 ], [ %.23550.i110.ph, %.lr.ph51.i109.preheader381 ] ; 2 uses
  %.23849.i111 = phi ptr [ %i.fc, %.lr.ph51.i109 ], [ %.23849.i111.ph, %.lr.ph51.i109.preheader381 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.23550.i110, i64 4 ; 2 uses
  %i.fb = load i32, ptr %.23550.i110, align 4, !tbaa !14
  %i.fc = getelementptr inbounds nuw i8, ptr %.23849.i111, i64 4 ; 2 uses
  store i32 %i.fb, ptr %.23849.i111, align 4, !tbaa !14
  %i.fd = icmp ult ptr %i.fa, %i.dg
  br i1 %i.fd, label %.lr.ph51.i109, label %.preheader.i103, !llvm.loop !355

.lr.ph55.i106:                                    ; preds = %.lr.ph55.i106.preheader379, %.lr.ph55.i106
  %.254.i107 = phi ptr [ %i.fe, %.lr.ph55.i106 ], [ %.254.i107.ph, %.lr.ph55.i106.preheader379 ] ; 2 uses
  %.353.i108 = phi ptr [ %i.fg, %.lr.ph55.i106 ], [ %.353.i108.ph, %.lr.ph55.i106.preheader379 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.254.i107, i64 4 ; 2 uses
  %i.ff = load i32, ptr %.254.i107, align 4, !tbaa !14
  %i.fg = getelementptr inbounds nuw i8, ptr %.353.i108, i64 4 ; 2 uses
  store i32 %i.ff, ptr %.353.i108, align 4, !tbaa !14
  %i.fh = icmp ult ptr %i.fe, %i.dh
  br i1 %i.fh, label %.lr.ph55.i106, label %Sbd_CutMergeSimple.exit119, !llvm.loop !356

Sbd_CutMergeSimple.exit119:                       ; preds = %.lr.ph55.i106, %middle.block285, %.preheader.i103
  %.3.lcssa.i105 = phi ptr [ %.238.lcssa.i104, %.preheader.i103 ], [ %i.ev, %middle.block285 ], [ %i.fg, %.lr.ph55.i106 ]
  %i.fi = ptrtoint ptr %.3.lcssa.i105 to i64
  %i.fj = ptrtoint ptr %i.b to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.b, align 16, !tbaa !14
  %i.fo = load i32, ptr %i.ah, align 4, !tbaa !14 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %.idx.i120 = shl nsw i64 %i.fp, 2               ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i120 ; 3 uses
  %i.fr = load i32, ptr %i.f, align 4, !tbaa !14  ; 3 uses
  %i.fs = sext i32 %i.fr to i64
  %.idx57.i121 = shl nsw i64 %i.fs, 2             ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %i.am, i64 %.idx57.i121 ; 3 uses
  %.03643.i122 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.fu = icmp sgt i32 %i.fo, 0
  %i.fv = icmp sgt i32 %i.fr, 0
  %i.fw = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %i.fw, label %.lr.ph.i136, label %.preheader42.i123

.preheader42.i123:                                ; preds = %bb.p, %Sbd_CutMergeSimple.exit119
  %.033.lcssa.i124 = phi ptr [ %i.an, %Sbd_CutMergeSimple.exit119 ], [ %.134.i140, %bb.p ] ; 5 uses
  %.0.lcssa.i125 = phi ptr [ %i.am, %Sbd_CutMergeSimple.exit119 ], [ %.1.i141, %bb.p ] ; 5 uses
  %.036.lcssa.i126 = phi ptr [ %.03643.i122, %Sbd_CutMergeSimple.exit119 ], [ %.036.i142, %bb.p ] ; 5 uses
  %.0.lcssa.i125310 = ptrtoaddr ptr %.0.lcssa.i125 to i64 ; 2 uses
  %i.fx = icmp ult ptr %.033.lcssa.i124, %i.fq
  br i1 %i.fx, label %.lr.ph51.i133.preheader, label %.preheader.i127

.lr.ph51.i133.preheader:                          ; preds = %.preheader42.i123
  %.033.lcssa.i124291 = ptrtoaddr ptr %.033.lcssa.i124 to i64 ; 2 uses
  %.036.lcssa.i126290 = ptrtoaddr ptr %.036.lcssa.i126 to i64
  %6 = ptrtoaddr ptr %.val95.val to i64
  %i.fy = shl nsw i64 %i.ag, 2
  %i.fz = add i64 %.idx.i120, %6
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = add i64 %i.ga, 3
  %i.gc = sub i64 %i.gb, %.033.lcssa.i124291      ; 2 uses
  %i.gd = lshr i64 %i.gc, 2
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %min.iters.check294 = icmp ult i64 %i.gc, 44
  %i.gf = sub i64 %.033.lcssa.i124291, %.036.lcssa.i126290
  %diff.check292 = icmp ugt i64 %i.gf, -32
  %or.cond368 = select i1 %min.iters.check294, i1 true, i1 %diff.check292
  br i1 %or.cond368, label %.lr.ph51.i133.preheader377, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph51.i133.preheader
  %n.vec296 = and i64 %i.ge, 9223372036854775800  ; 3 uses
  %i.gg = shl i64 %n.vec296, 2                    ; 2 uses
  %i.gh = getelementptr i8, ptr %.033.lcssa.i124, i64 %i.gg
  %i.gi = getelementptr i8, ptr %.036.lcssa.i126, i64 %i.gg ; 2 uses
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next303, %vector.body297 ] ; 2 uses
  %i.gj = shl i64 %index298, 2                    ; 2 uses
  %next.gep299 = getelementptr i8, ptr %.033.lcssa.i124, i64 %i.gj ; 2 uses
  %next.gep300 = getelementptr i8, ptr %.036.lcssa.i126, i64 %i.gj ; 2 uses
  %i.gk = getelementptr i8, ptr %next.gep299, i64 16
  %wide.load301 = load <4 x i32>, ptr %next.gep299, align 4, !tbaa !14
  %wide.load302 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !14
  %i.gl = getelementptr i8, ptr %next.gep300, i64 16
  store <4 x i32> %wide.load301, ptr %next.gep300, align 4, !tbaa !14
  store <4 x i32> %wide.load302, ptr %i.gl, align 4, !tbaa !14
  %index.next303 = add nuw i64 %index298, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next303, %n.vec296
  br i1 %i.gm, label %middle.block304, label %vector.body297, !llvm.loop !357

middle.block304:                                  ; preds = %vector.body297
  %cmp.n305 = icmp eq i64 %i.ge, %n.vec296
  br i1 %cmp.n305, label %.preheader.i127, label %.lr.ph51.i133.preheader377

.lr.ph51.i133.preheader377:                       ; preds = %.lr.ph51.i133.preheader, %middle.block304
  %.23550.i134.ph = phi ptr [ %.033.lcssa.i124, %.lr.ph51.i133.preheader ], [ %i.gh, %middle.block304 ]
  %.23849.i135.ph = phi ptr [ %.036.lcssa.i126, %.lr.ph51.i133.preheader ], [ %i.gi, %middle.block304 ]
  br label %.lr.ph51.i133

.lr.ph.i136:                                      ; preds = %Sbd_CutMergeSimple.exit119, %bb.p
  %.03646.i137 = phi ptr [ %.036.i142, %bb.p ], [ %.03643.i122, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %.045.i138 = phi ptr [ %.1.i141, %bb.p ], [ %i.am, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %.03344.i139 = phi ptr [ %.134.i140, %bb.p ], [ %i.an, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %i.gn = load i32, ptr %.03344.i139, align 4, !tbaa !14 ; 4 uses
  %i.go = load i32, ptr %.045.i138, align 4, !tbaa !14 ; 3 uses
  %i.gp = icmp eq i32 %i.gn, %i.go
  br i1 %i.gp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i136
  %i.gq = getelementptr inbounds nuw i8, ptr %.03344.i139, i64 4
  store i32 %i.gn, ptr %.03646.i137, align 4, !tbaa !14
  %i.gr = getelementptr inbounds nuw i8, ptr %.045.i138, i64 4
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i136
  %i.gs = icmp slt i32 %i.gn, %i.go
  br i1 %i.gs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gt = getelementptr inbounds nuw i8, ptr %.03344.i139, i64 4
  store i32 %i.gn, ptr %.03646.i137, align 4, !tbaa !14
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.gu = getelementptr inbounds nuw i8, ptr %.045.i138, i64 4
  store i32 %i.go, ptr %.03646.i137, align 4, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.134.i140 = phi ptr [ %i.gq, %bb.l ], [ %i.gt, %bb.n ], [ %.03344.i139, %bb.o ] ; 3 uses
  %.1.i141 = phi ptr [ %i.gr, %bb.l ], [ %.045.i138, %bb.n ], [ %i.gu, %bb.o ] ; 3 uses
  %.036.i142 = getelementptr inbounds nuw i8, ptr %.03646.i137, i64 4 ; 2 uses
  %i.gv = icmp ult ptr %.134.i140, %i.fq
  %i.gw = icmp ult ptr %.1.i141, %i.ft
  %i.gx = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %i.gx, label %.lr.ph.i136, label %.preheader42.i123, !llvm.loop !4

.preheader.i127:                                  ; preds = %.lr.ph51.i133, %middle.block304, %.preheader42.i123
  %.238.lcssa.i128 = phi ptr [ %.036.lcssa.i126, %.preheader42.i123 ], [ %i.gi, %middle.block304 ], [ %i.ho, %.lr.ph51.i133 ] ; 5 uses
  %i.gy = icmp ult ptr %.0.lcssa.i125, %i.ft
  br i1 %i.gy, label %.lr.ph55.i130.preheader, label %Sbd_CutMergeSimple.exit143

.lr.ph55.i130.preheader:                          ; preds = %.preheader.i127
  %.238.lcssa.i128309 = ptrtoaddr ptr %.238.lcssa.i128 to i64
  %7 = ptrtoaddr ptr %i.f to i64
  %i.gz = add i64 %.idx57.i121, %7
  %i.ha = or disjoint i64 %i.gz, 3
  %i.hb = sub i64 %i.ha, %.0.lcssa.i125310        ; 2 uses
  %i.hc = lshr i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check313 = icmp ult i64 %i.hb, 44
  %i.he = sub i64 %.0.lcssa.i125310, %.238.lcssa.i128309
  %diff.check311 = icmp ugt i64 %i.he, -32
  %or.cond369 = select i1 %min.iters.check313, i1 true, i1 %diff.check311
  br i1 %or.cond369, label %.lr.ph55.i130.preheader375, label %vector.ph314

vector.ph314:                                     ; preds = %.lr.ph55.i130.preheader
  %n.vec315 = and i64 %i.hd, 9223372036854775800  ; 3 uses
  %i.hf = shl i64 %n.vec315, 2                    ; 2 uses
  %i.hg = getelementptr i8, ptr %.0.lcssa.i125, i64 %i.hf
  %i.hh = getelementptr i8, ptr %.238.lcssa.i128, i64 %i.hf ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.hi = shl i64 %index317, 2                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %.0.lcssa.i125, i64 %i.hi ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.238.lcssa.i128, i64 %i.hi ; 2 uses
  %i.hj = getelementptr i8, ptr %next.gep318, i64 16
  %wide.load320 = load <4 x i32>, ptr %next.gep318, align 4, !tbaa !14
  %wide.load321 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !14
  %i.hk = getelementptr i8, ptr %next.gep319, i64 16
  store <4 x i32> %wide.load320, ptr %next.gep319, align 4, !tbaa !14
  store <4 x i32> %wide.load321, ptr %i.hk, align 4, !tbaa !14
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.hl, label %middle.block323, label %vector.body316, !llvm.loop !358

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.hd, %n.vec315
  br i1 %cmp.n324, label %Sbd_CutMergeSimple.exit143.loopexit, label %.lr.ph55.i130.preheader375

.lr.ph55.i130.preheader375:                       ; preds = %.lr.ph55.i130.preheader, %middle.block323
  %.254.i131.ph = phi ptr [ %.0.lcssa.i125, %.lr.ph55.i130.preheader ], [ %i.hg, %middle.block323 ]
  %.353.i132.ph = phi ptr [ %.238.lcssa.i128, %.lr.ph55.i130.preheader ], [ %i.hh, %middle.block323 ]
  br label %.lr.ph55.i130

.lr.ph51.i133:                                    ; preds = %.lr.ph51.i133.preheader377, %.lr.ph51.i133
  %.23550.i134 = phi ptr [ %i.hm, %.lr.ph51.i133 ], [ %.23550.i134.ph, %.lr.ph51.i133.preheader377 ] ; 2 uses
  %.23849.i135 = phi ptr [ %i.ho, %.lr.ph51.i133 ], [ %.23849.i135.ph, %.lr.ph51.i133.preheader377 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.23550.i134, i64 4 ; 2 uses
  %i.hn = load i32, ptr %.23550.i134, align 4, !tbaa !14
  %i.ho = getelementptr inbounds nuw i8, ptr %.23849.i135, i64 4 ; 2 uses
  store i32 %i.hn, ptr %.23849.i135, align 4, !tbaa !14
  %i.hp = icmp ult ptr %i.hm, %i.fq
  br i1 %i.hp, label %.lr.ph51.i133, label %.preheader.i127, !llvm.loop !359

.lr.ph55.i130:                                    ; preds = %.lr.ph55.i130.preheader375, %.lr.ph55.i130
  %.254.i131 = phi ptr [ %i.hq, %.lr.ph55.i130 ], [ %.254.i131.ph, %.lr.ph55.i130.preheader375 ] ; 2 uses
  %.353.i132 = phi ptr [ %i.hs, %.lr.ph55.i130 ], [ %.353.i132.ph, %.lr.ph55.i130.preheader375 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.254.i131, i64 4 ; 2 uses
  %i.hr = load i32, ptr %.254.i131, align 4, !tbaa !14
  %i.hs = getelementptr inbounds nuw i8, ptr %.353.i132, i64 4 ; 2 uses
  store i32 %i.hr, ptr %.353.i132, align 4, !tbaa !14
  %i.ht = icmp ult ptr %i.hq, %i.ft
  br i1 %i.ht, label %.lr.ph55.i130, label %Sbd_CutMergeSimple.exit143.loopexit, !llvm.loop !360

Sbd_CutMergeSimple.exit143.loopexit:              ; preds = %.lr.ph55.i130, %middle.block323
  %.lcssa221 = phi ptr [ %i.hh, %middle.block323 ], [ %i.hs, %.lr.ph55.i130 ]
  %.pre183 = load i32, ptr %i.f, align 4, !tbaa !14 ; 2 uses
  %.pre186 = sext i32 %.pre183 to i64
  %.pre188 = shl nsw i64 %.pre186, 2
  br label %Sbd_CutMergeSimple.exit143

Sbd_CutMergeSimple.exit143:                       ; preds = %Sbd_CutMergeSimple.exit143.loopexit, %.preheader.i127
  %.idx57.i145.pre-phi = phi i64 [ %.pre188, %Sbd_CutMergeSimple.exit143.loopexit ], [ %.idx57.i121, %.preheader.i127 ] ; 2 uses
  %i.hu = phi i32 [ %.pre183, %Sbd_CutMergeSimple.exit143.loopexit ], [ %i.fr, %.preheader.i127 ]
  %.3.lcssa.i129 = phi ptr [ %.lcssa221, %Sbd_CutMergeSimple.exit143.loopexit ], [ %.238.lcssa.i128, %.preheader.i127 ]
  %i.hv = ptrtoint ptr %.3.lcssa.i129 to i64
  %i.hw = ptrtoint ptr %i.c to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = lshr exact i64 %i.hx, 2
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = add i32 %i.hz, -1                       ; 2 uses
  store i32 %i.ia, ptr %i.c, align 16, !tbaa !14
  %i.ib = load i32, ptr %i.e, align 4, !tbaa !14  ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %.idx.i144 = shl nsw i64 %i.ic, 2               ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %i.al, i64 %.idx.i144 ; 3 uses
  %i.ie = getelementptr inbounds i8, ptr %i.am, i64 %.idx57.i145.pre-phi ; 3 uses
  %.03643.i146 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.if = icmp sgt i32 %i.ib, 0
  %i.ig = icmp sgt i32 %i.hu, 0
  %i.ih = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %i.ih, label %.lr.ph.i160, label %.preheader42.i147

.preheader42.i147:                                ; preds = %bb.u, %Sbd_CutMergeSimple.exit143
  %.033.lcssa.i148 = phi ptr [ %i.al, %Sbd_CutMergeSimple.exit143 ], [ %.134.i164, %bb.u ] ; 5 uses
  %.0.lcssa.i149 = phi ptr [ %i.am, %Sbd_CutMergeSimple.exit143 ], [ %.1.i165, %bb.u ] ; 5 uses
  %.036.lcssa.i150 = phi ptr [ %.03643.i146, %Sbd_CutMergeSimple.exit143 ], [ %.036.i166, %bb.u ] ; 5 uses
  %.0.lcssa.i149348 = ptrtoaddr ptr %.0.lcssa.i149 to i64 ; 2 uses
  %i.ii = icmp ult ptr %.033.lcssa.i148, %i.id
  br i1 %i.ii, label %.lr.ph51.i157.preheader, label %.preheader.i151

.lr.ph51.i157.preheader:                          ; preds = %.preheader42.i147
  %.033.lcssa.i148329 = ptrtoaddr ptr %.033.lcssa.i148 to i64 ; 2 uses
  %.036.lcssa.i150328 = ptrtoaddr ptr %.036.lcssa.i150 to i64
  %8 = ptrtoaddr ptr %i.e to i64
  %i.ij = add i64 %.idx.i144, %8
  %i.ik = or disjoint i64 %i.ij, 3
  %i.il = sub i64 %i.ik, %.033.lcssa.i148329      ; 2 uses
  %i.im = lshr i64 %i.il, 2
  %i.in = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check332 = icmp ult i64 %i.il, 44
  %i.io = sub i64 %.033.lcssa.i148329, %.036.lcssa.i150328
  %diff.check330 = icmp ugt i64 %i.io, -32
  %or.cond370 = select i1 %min.iters.check332, i1 true, i1 %diff.check330
  br i1 %or.cond370, label %.lr.ph51.i157.preheader373, label %vector.ph333

vector.ph333:                                     ; preds = %.lr.ph51.i157.preheader
  %n.vec334 = and i64 %i.in, 9223372036854775800  ; 3 uses
  %i.ip = shl i64 %n.vec334, 2                    ; 2 uses
  %i.iq = getelementptr i8, ptr %.033.lcssa.i148, i64 %i.ip
  %i.ir = getelementptr i8, ptr %.036.lcssa.i150, i64 %i.ip ; 2 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body335 ] ; 2 uses
  %i.is = shl i64 %index336, 2                    ; 2 uses
  %next.gep337 = getelementptr i8, ptr %.033.lcssa.i148, i64 %i.is ; 2 uses
  %next.gep338 = getelementptr i8, ptr %.036.lcssa.i150, i64 %i.is ; 2 uses
  %i.it = getelementptr i8, ptr %next.gep337, i64 16
  %wide.load339 = load <4 x i32>, ptr %next.gep337, align 4, !tbaa !14
  %wide.load340 = load <4 x i32>, ptr %i.it, align 4, !tbaa !14
  %i.iu = getelementptr i8, ptr %next.gep338, i64 16
  store <4 x i32> %wide.load339, ptr %next.gep338, align 4, !tbaa !14
  store <4 x i32> %wide.load340, ptr %i.iu, align 4, !tbaa !14
  %index.next341 = add nuw i64 %index336, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.iv, label %middle.block342, label %vector.body335, !llvm.loop !361

middle.block342:                                  ; preds = %vector.body335
  %cmp.n343 = icmp eq i64 %i.in, %n.vec334
  br i1 %cmp.n343, label %.preheader.i151, label %.lr.ph51.i157.preheader373

.lr.ph51.i157.preheader373:                       ; preds = %.lr.ph51.i157.preheader, %middle.block342
  %.23550.i158.ph = phi ptr [ %.033.lcssa.i148, %.lr.ph51.i157.preheader ], [ %i.iq, %middle.block342 ]
  %.23849.i159.ph = phi ptr [ %.036.lcssa.i150, %.lr.ph51.i157.preheader ], [ %i.ir, %middle.block342 ]
  br label %.lr.ph51.i157

.lr.ph.i160:                                      ; preds = %Sbd_CutMergeSimple.exit143, %bb.u
  %.03646.i161 = phi ptr [ %.036.i166, %bb.u ], [ %.03643.i146, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %.045.i162 = phi ptr [ %.1.i165, %bb.u ], [ %i.am, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %.03344.i163 = phi ptr [ %.134.i164, %bb.u ], [ %i.al, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %i.iw = load i32, ptr %.03344.i163, align 4, !tbaa !14 ; 4 uses
  %i.ix = load i32, ptr %.045.i162, align 4, !tbaa !14 ; 3 uses
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i160
  %i.iz = getelementptr inbounds nuw i8, ptr %.03344.i163, i64 4
  store i32 %i.iw, ptr %.03646.i161, align 4, !tbaa !14
  %i.ja = getelementptr inbounds nuw i8, ptr %.045.i162, i64 4
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph.i160
  %i.jb = icmp slt i32 %i.iw, %i.ix
  br i1 %i.jb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jc = getelementptr inbounds nuw i8, ptr %.03344.i163, i64 4
  store i32 %i.iw, ptr %.03646.i161, align 4, !tbaa !14
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.jd = getelementptr inbounds nuw i8, ptr %.045.i162, i64 4
  store i32 %i.ix, ptr %.03646.i161, align 4, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.134.i164 = phi ptr [ %i.iz, %bb.q ], [ %i.jc, %bb.s ], [ %.03344.i163, %bb.t ] ; 3 uses
  %.1.i165 = phi ptr [ %i.ja, %bb.q ], [ %.045.i162, %bb.s ], [ %i.jd, %bb.t ] ; 3 uses
  %.036.i166 = getelementptr inbounds nuw i8, ptr %.03646.i161, i64 4 ; 2 uses
  %i.je = icmp ult ptr %.134.i164, %i.id
  %i.jf = icmp ult ptr %.1.i165, %i.ie
  %i.jg = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %i.jg, label %.lr.ph.i160, label %.preheader42.i147, !llvm.loop !4

.preheader.i151:                                  ; preds = %.lr.ph51.i157, %middle.block342, %.preheader42.i147
  %.238.lcssa.i152 = phi ptr [ %.036.lcssa.i150, %.preheader42.i147 ], [ %i.ir, %middle.block342 ], [ %i.jx, %.lr.ph51.i157 ] ; 5 uses
  %i.jh = icmp ult ptr %.0.lcssa.i149, %i.ie
  br i1 %i.jh, label %.lr.ph55.i154.preheader, label %Sbd_CutMergeSimple.exit167

.lr.ph55.i154.preheader:                          ; preds = %.preheader.i151
  %.238.lcssa.i152347 = ptrtoaddr ptr %.238.lcssa.i152 to i64
  %9 = ptrtoaddr ptr %i.f to i64
  %i.ji = add i64 %.idx57.i145.pre-phi, %9
  %i.jj = or disjoint i64 %i.ji, 3
  %i.jk = sub i64 %i.jj, %.0.lcssa.i149348        ; 2 uses
  %i.jl = lshr i64 %i.jk, 2
  %i.jm = add nuw nsw i64 %i.jl, 1                ; 2 uses
  %min.iters.check351 = icmp ult i64 %i.jk, 44
  %i.jn = sub i64 %.0.lcssa.i149348, %.238.lcssa.i152347
  %diff.check349 = icmp ugt i64 %i.jn, -32
  %or.cond371 = select i1 %min.iters.check351, i1 true, i1 %diff.check349
  br i1 %or.cond371, label %.lr.ph55.i154.preheader372, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph55.i154.preheader
  %n.vec353 = and i64 %i.jm, 9223372036854775800  ; 3 uses
  %i.jo = shl i64 %n.vec353, 2                    ; 2 uses
  %i.jp = getelementptr i8, ptr %.0.lcssa.i149, i64 %i.jo
  %i.jq = getelementptr i8, ptr %.238.lcssa.i152, i64 %i.jo ; 2 uses
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next360, %vector.body354 ] ; 2 uses
  %i.jr = shl i64 %index355, 2                    ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.0.lcssa.i149, i64 %i.jr ; 2 uses
  %next.gep357 = getelementptr i8, ptr %.238.lcssa.i152, i64 %i.jr ; 2 uses
  %i.js = getelementptr i8, ptr %next.gep356, i64 16
  %wide.load358 = load <4 x i32>, ptr %next.gep356, align 4, !tbaa !14
  %wide.load359 = load <4 x i32>, ptr %i.js, align 4, !tbaa !14
  %i.jt = getelementptr i8, ptr %next.gep357, i64 16
  store <4 x i32> %wide.load358, ptr %next.gep357, align 4, !tbaa !14
  store <4 x i32> %wide.load359, ptr %i.jt, align 4, !tbaa !14
  %index.next360 = add nuw i64 %index355, 8       ; 2 uses
  %i.ju = icmp eq i64 %index.next360, %n.vec353
  br i1 %i.ju, label %middle.block361, label %vector.body354, !llvm.loop !362

middle.block361:                                  ; preds = %vector.body354
  %cmp.n362 = icmp eq i64 %i.jm, %n.vec353
  br i1 %cmp.n362, label %Sbd_CutMergeSimple.exit167, label %.lr.ph55.i154.preheader372

.lr.ph55.i154.preheader372:                       ; preds = %.lr.ph55.i154.preheader, %middle.block361
  %.254.i155.ph = phi ptr [ %.0.lcssa.i149, %.lr.ph55.i154.preheader ], [ %i.jp, %middle.block361 ]
  %.353.i156.ph = phi ptr [ %.238.lcssa.i152, %.lr.ph55.i154.preheader ], [ %i.jq, %middle.block361 ]
  br label %.lr.ph55.i154

.lr.ph51.i157:                                    ; preds = %.lr.ph51.i157.preheader373, %.lr.ph51.i157
  %.23550.i158 = phi ptr [ %i.jv, %.lr.ph51.i157 ], [ %.23550.i158.ph, %.lr.ph51.i157.preheader373 ] ; 2 uses
  %.23849.i159 = phi ptr [ %i.jx, %.lr.ph51.i157 ], [ %.23849.i159.ph, %.lr.ph51.i157.preheader373 ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.23550.i158, i64 4 ; 2 uses
  %i.jw = load i32, ptr %.23550.i158, align 4, !tbaa !14
  %i.jx = getelementptr inbounds nuw i8, ptr %.23849.i159, i64 4 ; 2 uses
  store i32 %i.jw, ptr %.23849.i159, align 4, !tbaa !14
  %i.jy = icmp ult ptr %i.jv, %i.id
  br i1 %i.jy, label %.lr.ph51.i157, label %.preheader.i151, !llvm.loop !363

.lr.ph55.i154:                                    ; preds = %.lr.ph55.i154.preheader372, %.lr.ph55.i154
  %.254.i155 = phi ptr [ %i.jz, %.lr.ph55.i154 ], [ %.254.i155.ph, %.lr.ph55.i154.preheader372 ] ; 2 uses
  %.353.i156 = phi ptr [ %i.kb, %.lr.ph55.i154 ], [ %.353.i156.ph, %.lr.ph55.i154.preheader372 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.254.i155, i64 4 ; 2 uses
  %i.ka = load i32, ptr %.254.i155, align 4, !tbaa !14
  %i.kb = getelementptr inbounds nuw i8, ptr %.353.i156, i64 4 ; 2 uses
  store i32 %i.ka, ptr %.353.i156, align 4, !tbaa !14
  %i.kc = icmp ult ptr %i.jz, %i.ie
  br i1 %i.kc, label %.lr.ph55.i154, label %Sbd_CutMergeSimple.exit167, !llvm.loop !364

Sbd_CutMergeSimple.exit167:                       ; preds = %.lr.ph55.i154, %middle.block361, %.preheader.i151
  %.3.lcssa.i153 = phi ptr [ %.238.lcssa.i152, %.preheader.i151 ], [ %i.jq, %middle.block361 ], [ %i.kb, %.lr.ph55.i154 ]
  %i.kd = ptrtoint ptr %.3.lcssa.i153 to i64
  %i.ke = ptrtoint ptr %i.d to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = lshr exact i64 %i.kf, 2
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = add i32 %i.kh, -1                       ; 3 uses
  store i32 %i.ki, ptr %i.d, align 16, !tbaa !14
  %i.kj = load i32, ptr %.val94, align 4, !tbaa !68 ; 4 uses
  %.not78 = icmp sgt i32 %i.de, %i.kj
  %i.kk = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.ab) ; 2 uses
  %i.kl = select i1 %.not78, i32 1000000000, i32 %i.kk ; 4 uses
  %.not79 = icmp sgt i32 %i.fn, %i.kj
  %i.km = add nsw i32 %spec.select, 1
  %i.kn = call i32 @llvm.smax.i32(i32 %i.km, i32 %i.ab)
  %i.ko = select i1 %.not79, i32 1000000000, i32 %i.kn ; 3 uses
  %.not80 = icmp sgt i32 %i.ia, %i.kj
  %i.kp = add nsw i32 %i.ab, 1
  %i.kq = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.kp)
  %i.kr = select i1 %.not80, i32 1000000000, i32 %i.kq ; 4 uses
  %.not81 = icmp sgt i32 %i.ki, %i.kj
  %i.ks = add nsw i32 %i.kk, 1
  %i.kt = select i1 %.not81, i32 1000000000, i32 %i.ks ; 4 uses
  %i.ku = icmp slt i32 %i.ko, %i.kl
  br i1 %i.ku, label %bb.x, label %bb.v

bb.v:                                             ; preds = %Sbd_CutMergeSimple.exit167
  %i.kv = icmp eq i32 %i.ko, %i.kl
  br i1 %i.kv, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.kw = load i32, ptr %i.b, align 16, !tbaa !14
  %i.kx = load i32, ptr %i.a, align 16, !tbaa !14
  %i.ky = icmp slt i32 %i.kw, %i.kx
  br i1 %i.ky, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %Sbd_CutMergeSimple.exit167
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.070 = phi ptr [ %i.b, %bb.x ], [ %i.a, %bb.w ], [ %i.a, %bb.v ] ; 3 uses
  %.0 = phi i32 [ %i.ko, %bb.x ], [ %i.kl, %bb.w ], [ %i.kl, %bb.v ] ; 3 uses
  %i.kz = icmp slt i32 %i.kr, %.0
  br i1 %i.kz, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.la = icmp eq i32 %i.kr, %.0
  br i1 %i.la, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.lb = load i32, ptr %i.c, align 16, !tbaa !14
  %i.lc = load i32, ptr %.070, align 16, !tbaa !14
  %i.ld = icmp slt i32 %i.lb, %i.lc
  br i1 %i.ld, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.y
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.171 = phi ptr [ %i.c, %bb.ab ], [ %.070, %bb.aa ], [ %.070, %bb.z ] ; 3 uses
  %.1 = phi i32 [ %i.kr, %bb.ab ], [ %i.kr, %bb.aa ], [ %.0, %bb.z ] ; 3 uses
  %i.le = icmp slt i32 %i.kt, %.1
  br i1 %i.le, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lf = icmp eq i32 %i.kt, %.1
  br i1 %i.lf, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.lg = load i32, ptr %.171, align 4, !tbaa !14
  %i.lh = icmp slt i32 %i.ki, %i.lg
  br i1 %i.lh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.272 = phi ptr [ %i.d, %bb.af ], [ %.171, %bb.ae ], [ %.171, %bb.ad ] ; 2 uses
  %.2 = phi i32 [ %i.kt, %bb.af ], [ %i.kt, %bb.ae ], [ %.1, %bb.ad ] ; 2 uses
  %i.li = getelementptr inbounds [4 x i8], ptr %.val84, i64 %i.j
  store i32 %.2, ptr %i.li, align 4, !tbaa !14
  %.val90.val = load i32, ptr %.val94, align 4, !tbaa !68
  %i.lj = add nsw i32 %.val90.val, 1
  %i.lk = mul nsw i32 %i.lj, %1
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %.val95.val, i64 %i.ll
  %i.ln = load i32, ptr %.272, align 4, !tbaa !14
  %i.lo = add nsw i32 %i.ln, 1
  %i.lp = sext i32 %i.lo to i64
  %i.lq = shl nsw i64 %i.lp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lm, ptr nonnull align 4 %.272, i64 %i.lq, i1 false)
  %i.lr = icmp eq i32 %.2, 1
  %i.ls = zext i1 %i.lr to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %i.ls
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @Sbd_ManDelay(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !47  ; 4 uses
  %i.f = icmp sgt i32 %.val, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 32
  %.val11 = load ptr, ptr %i.g, align 8, !tbaa !52 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val12.val = load ptr, ptr %i.h, align 8, !tbaa !48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val10 = load ptr, ptr %i.k, align 8, !tbaa !48 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %.val, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.015 = phi i32 [ 0, %.lr.ph.new ], [ %i.ai, %bb.b ]
end_hunk_1
