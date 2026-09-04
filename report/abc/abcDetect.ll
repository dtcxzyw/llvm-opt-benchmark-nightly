Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDetect?download=true
inline.NumInlined: 614
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Abc_NtkDetectObjClasses_rec:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val.i.i = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.ab = sext i32 %i.n to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.ae = getelementptr i8, ptr %i.x, i64 8
  %.val3.i.i = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val3.i.i, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !61 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !62
  %i.aj = getelementptr i8, ptr %2, i64 44        ; 4 uses
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = getelementptr i8, ptr %2, i64 48        ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !64
  store i32 0, ptr %i.s, align 4, !tbaa !49
  %i.am = icmp sgt i32 %i.ah, 0
  br i1 %i.am, label %.lr.ph.i, label %Vec_IntAppend.exit

thread-pre-split:                                 ; preds = %Vec_IntPush.exit.i
  %.pr = load i32, ptr %i.s, align 4, !tbaa !49
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %thread-pre-split
  %i.an = phi i32 [ %.pr, %thread-pre-split ], [ 0, %bb.f ] ; 7 uses
  %i.ao = phi ptr [ %.pre10.i75, %thread-pre-split ], [ %i.t, %bb.f ] ; 7 uses
  %.pre.i = phi ptr [ %.pre.i73, %thread-pre-split ], [ %i.t, %bb.f ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %thread-pre-split ], [ 0, %bb.f ] ; 2 uses
  %.val.i = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !45
  %i.ar = load i32, ptr %i.r, align 8, !tbaa !50
  %i.as = icmp eq i32 %i.an, %i.ar
  br i1 %i.as, label %bb.g, label %Vec_IntPush.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.at = icmp slt i32 %i.an, 16
  br i1 %i.at, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.k:                                             ; preds = %bb.g
  %i.aw = icmp samesign ult i32 %i.an, 1073741823
  %i.ax = shl nuw nsw i32 %i.an, 1
  %spec.select.i.i = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.an, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i.i = icmp eq ptr %i.ao, null
  %i.ay = zext nneg i32 %spec.select.i.i to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.az) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.n, %bb.m, %bb.j, %bb.i
  %i.bc = phi ptr [ %i.av, %bb.j ], [ %i.au, %bb.i ], [ %i.ba, %bb.m ], [ %i.bb, %bb.n ] ; 3 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i.i, %bb.m ], [ %spec.select.i.i, %bb.n ]
  store ptr %i.bc, ptr %i.u, align 8, !tbaa !51
  store i32 %spec.select.sink.i.i, ptr %i.r, align 8, !tbaa !50
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %.lr.ph.i, %Vec_IntGrow.exit11.sink.split.i.i, %bb.k
  %.pre10.i75 = phi ptr [ %i.bc, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.ao, %bb.k ], [ %i.ao, %.lr.ph.i ]
  %.pre.i73 = phi ptr [ %i.bc, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.ao, %bb.k ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %i.bd = add nsw i32 %i.an, 1
  store i32 %i.bd, ptr %i.s, align 4, !tbaa !49
  %i.be = sext i32 %i.an to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre.i73, i64 %i.be
  store i32 %i.aq, ptr %i.bf, align 4, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val6.i = load i32, ptr %i.aj, align 4, !tbaa !49
  %i.bg = sext i32 %.val6.i to i64
  %i.bh = icmp slt i64 %indvars.iv.next.i, %i.bg
  br i1 %i.bh, label %thread-pre-split, label %Vec_IntAppend.exit.loopexit, !llvm.loop !0

Vec_IntAppend.exit.loopexit:                      ; preds = %Vec_IntPush.exit.i
  %.val5368.pre = load i32, ptr %i.f, align 4, !tbaa !121
  br label %Vec_IntAppend.exit

Vec_IntAppend.exit:                               ; preds = %Vec_IntAppend.exit.loopexit, %bb.f
  %.val5368 = phi i32 [ %.val5368.pre, %Vec_IntAppend.exit.loopexit ], [ %.val54, %bb.f ] ; 2 uses
  %i.bi = icmp sgt i32 %.val5368, 0
  br i1 %i.bi, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntAppend.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.z
  %.val5378 = phi i32 [ %.val5368, %.lr.ph ], [ %.val53, %bb.z ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 3 uses
  %i.bl = icmp eq i64 %indvars.iv, 0
  br i1 %i.bl, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val61 = load ptr, ptr %0, align 8, !tbaa !54
  %i.bm = getelementptr i8, ptr %.val61, i64 32
  %.val61.val = load ptr, ptr %i.bm, align 8, !tbaa !36
  %i.bn = getelementptr i8, ptr %.val61.val, i64 8
  %.val61.val.val = load ptr, ptr %i.bn, align 8, !tbaa !40
  %.val62 = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !45
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %.val61.val.val, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = tail call i32 @Abc_NtkDetectObjClasses_rec(ptr noundef %i.bs, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.bu = icmp ne i32 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.bw = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %.val.i.i63 = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.by = sext i32 %i.bt to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val.i.i63, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45
  %i.cb = getelementptr i8, ptr %i.bv, i64 8
  %.val3.i.i64 = load ptr, ptr %i.cb, align 8, !tbaa !51
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.val3.i.i64, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !61 ; 5 uses
  store i32 %i.ce, ptr %i.ai, align 8, !tbaa !62
  store i32 %i.ce, ptr %i.aj, align 4, !tbaa !63
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr %i.cf, ptr %i.al, align 8, !tbaa !64
  %.val6.i65 = load i32, ptr %i.s, align 4, !tbaa !49 ; 3 uses
  %i.cg = add nsw i32 %.val6.i65, %i.ce           ; 3 uses
  %i.ch = load i32, ptr %3, align 8, !tbaa !50
  %.not.i.i = icmp slt i32 %i.ch, %i.cg
  %i.ci = load ptr, ptr %i.bj, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i.i, label %bb.q, label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.p
  %.not9.i.i = icmp eq ptr %i.ci, null
  %i.cj = sext i32 %i.cg to i64
  %i.ck = shl nsw i64 %i.cj, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = tail call ptr @realloc(ptr noundef nonnull %i.ci, i64 noundef %i.ck) #35
  %.val9.pre.pre.i = load i32, ptr %i.aj, align 4, !tbaa !49
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.ck) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.val9.pre.i = phi i32 [ %.val9.pre.pre.i, %bb.r ], [ %i.ce, %bb.s ]
  %i.cn = phi ptr [ %i.cl, %bb.r ], [ %i.cm, %bb.s ] ; 2 uses
  store ptr %i.cn, ptr %i.bj, align 8, !tbaa !51
  store i32 %i.cg, ptr %3, align 8, !tbaa !50
  %.val10.i.pre = load ptr, ptr %i.al, align 8, !tbaa !51
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.t, %bb.p
  %.val10.i = phi ptr [ %.val10.i.pre, %bb.t ], [ %i.cf, %bb.p ] ; 4 uses
  %i.co = phi ptr [ %i.cn, %bb.t ], [ %i.ci, %bb.p ] ; 3 uses
  %.val9.i = phi i32 [ %.val9.pre.i, %bb.t ], [ %i.ce, %bb.p ] ; 2 uses
  %.val8.i = load ptr, ptr %i.u, align 8, !tbaa !51 ; 4 uses
  %i.cp = sext i32 %.val6.i65 to i64
  %.idx.i.i = shl nsw i64 %i.cp, 2                ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.val8.i, i64 %.idx.i.i ; 3 uses
  %i.cr = sext i32 %.val9.i to i64
  %.idx19.i.i = shl nsw i64 %i.cr, 2              ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.val10.i, i64 %.idx19.i.i ; 3 uses
  %i.ct = icmp sgt i32 %.val6.i65, 0
  %i.cu = icmp sgt i32 %.val9.i, 0
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.y, %Vec_IntGrow.exit.i
  %.036.lcssa.i.i = phi ptr [ %i.co, %Vec_IntGrow.exit.i ], [ %.137.i.i, %bb.y ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntGrow.exit.i ], [ %.134.i.i, %bb.y ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val10.i, %Vec_IntGrow.exit.i ], [ %.1.i.i, %bb.y ] ; 5 uses
  %.0.lcssa.i.i93 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 3 uses
  %i.cw = icmp ult ptr %.033.lcssa.i.i, %i.cq
  br i1 %i.cw, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i99 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 3 uses
  %.036.lcssa.i.i98 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %i.cx = ptrtoaddr ptr %.val8.i to i64
  %5 = add i64 %.idx.i.i, %i.cx
  %i.cy = add i64 %.033.lcssa.i.i99, 4
  %6 = tail call i64 @llvm.umax.i64(i64 %5, i64 %i.cy)
  %i.cz = xor i64 %.033.lcssa.i.i99, -1
  %i.da = add i64 %6, %i.cz                       ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check102 = icmp ult i64 %i.da, 28
  %i.dd = sub i64 %.033.lcssa.i.i99, %.036.lcssa.i.i98
  %diff.check100 = icmp ugt i64 %i.dd, -32
  %or.cond = select i1 %min.iters.check102, i1 true, i1 %diff.check100
  br i1 %or.cond, label %.lr.ph13.i.i.preheader118, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph13.i.i.preheader
  %n.vec104 = and i64 %i.dc, 9223372036854775800  ; 3 uses
  %i.de = shl i64 %n.vec104, 2                    ; 2 uses
  %i.df = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.de
  %i.dg = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.de ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.dh = shl i64 %index106, 2                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.dh ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load109 = load <4 x i32>, ptr %next.gep107, align 4, !tbaa !45
  %wide.load110 = load <4 x i32>, ptr %i.di, align 4, !tbaa !45
  %i.dj = getelementptr i8, ptr %next.gep108, i64 16
  store <4 x i32> %wide.load109, ptr %next.gep108, align 4, !tbaa !45
  store <4 x i32> %wide.load110, ptr %i.dj, align 4, !tbaa !45
  %index.next111 = add nuw i64 %index106, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.dk, label %middle.block112, label %vector.body105, !llvm.loop !115

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.dc, %n.vec104
  br i1 %cmp.n113, label %.preheader.i.i, label %.lr.ph13.i.i.preheader118

.lr.ph13.i.i.preheader118:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block112
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.df, %middle.block112 ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.dg, %middle.block112 ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i, %bb.y
  %.08.i.i = phi ptr [ %.1.i.i, %bb.y ], [ %.val10.i, %Vec_IntGrow.exit.i ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.y ], [ %.val8.i, %Vec_IntGrow.exit.i ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.y ], [ %i.co, %Vec_IntGrow.exit.i ] ; 4 uses
  %i.dl = load i32, ptr %.0337.i.i, align 4, !tbaa !45 ; 4 uses
  %i.dm = load i32, ptr %.08.i.i, align 4, !tbaa !45 ; 3 uses
  %i.dn = icmp eq i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.dl, ptr %.0366.i.i, align 4, !tbaa !45
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dq = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.dl, ptr %.0366.i.i, align 4, !tbaa !45
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.dm, ptr %.0366.i.i, align 4, !tbaa !45
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.134.i.i = phi ptr [ %i.do, %bb.u ], [ %i.dr, %bb.w ], [ %.0337.i.i, %bb.x ] ; 3 uses
  %.1.i.i = phi ptr [ %i.dp, %bb.u ], [ %.08.i.i, %bb.w ], [ %i.ds, %bb.x ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.dt = icmp ult ptr %.134.i.i, %i.cq
  %i.du = icmp ult ptr %.1.i.i, %i.cs
  %i.dv = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %i.dv, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !116

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block112, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.dg, %middle.block112 ], [ %i.en, %.lr.ph13.i.i ] ; 5 uses
  %i.dw = icmp ult ptr %.0.lcssa.i.i, %i.cs
  br i1 %i.dw, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge2.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i92 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.dx = ptrtoaddr ptr %.val10.i to i64
  %7 = add i64 %.idx19.i.i, %i.dx
  %i.dy = add i64 %.0.lcssa.i.i93, 4
  %8 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dy)
  %i.dz = xor i64 %.0.lcssa.i.i93, -1
  %i.ea = add i64 %8, %i.dz                       ; 2 uses
  %i.eb = lshr i64 %i.ea, 2
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ea, 28
  %i.ed = sub i64 %.0.lcssa.i.i93, %.238.lcssa.i.i92
  %diff.check = icmp ugt i64 %i.ed, -32
  %or.cond116 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond116, label %.lr.ph17.i.i.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph17.i.i.preheader
  %n.vec = and i64 %i.ec, 9223372036854775800     ; 3 uses
  %i.ee = shl i64 %n.vec, 2                       ; 2 uses
  %i.ef = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ee
  %i.eg = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.ee ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.eh ; 2 uses
  %next.gep94 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !45
  %wide.load95 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !45
  %i.ej = getelementptr i8, ptr %next.gep94, i64 16
  store <4 x i32> %wide.load, ptr %next.gep94, align 4, !tbaa !45
  store <4 x i32> %wide.load95, ptr %i.ej, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ec, %n.vec
  br i1 %cmp.n, label %Vec_IntTwoMerge2.exit, label %.lr.ph17.i.i.preheader117

.lr.ph17.i.i.preheader117:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.ef, %middle.block ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader118, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.el, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader118 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.en, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader118 ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.em = load i32, ptr %.23512.i.i, align 4, !tbaa !45
  %i.en = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.em, ptr %.23811.i.i, align 4, !tbaa !45
  %i.eo = icmp ult ptr %i.el, %i.cq
  br i1 %i.eo, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !118

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader117, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.ep, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader117 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.er, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader117 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.eq = load i32, ptr %.216.i.i, align 4, !tbaa !45
  %i.er = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.eq, ptr %.315.i.i, align 4, !tbaa !45
  %i.es = icmp ult ptr %i.ep, %i.cs
  br i1 %i.es, label %.lr.ph17.i.i, label %Vec_IntTwoMerge2.exit, !llvm.loop !119

Vec_IntTwoMerge2.exit:                            ; preds = %.lr.ph17.i.i, %middle.block, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.eg, %middle.block ], [ %i.er, %.lr.ph17.i.i ]
  %i.et = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.eu = ptrtoint ptr %i.co to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = lshr exact i64 %i.ev, 2
  %i.ex = trunc i64 %i.ew to i32
  store i32 %i.ex, ptr %i.bk, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !124
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.val53.pre = load i32, ptr %i.f, align 4, !tbaa !121
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %Vec_IntTwoMerge2.exit
  %.val53 = phi i32 [ %.val5378, %bb.o ], [ %.val53.pre, %Vec_IntTwoMerge2.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ey = sext i32 %.val53 to i64
  %i.ez = icmp slt i64 %indvars.iv.next, %i.ey
  br i1 %i.ez, label %bb.o, label %.critedge, !llvm.loop !120

.critedge:                                        ; preds = %bb.z, %Vec_IntAppend.exit
  %i.fa = tail call fastcc i32 @Hsh_VecManAdd(ptr noundef %2, ptr noundef nonnull %i.r) ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !48
  %.val56 = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.fb = sext i32 %.val to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %.val56, i64 %i.fb
  store i32 %i.fa, ptr %i.fc, align 4, !tbaa !45
  %i.fd = load ptr, ptr %i.u, align 8, !tbaa !51  ; 2 uses
  %.not.i = icmp eq ptr %i.fd, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.fd) #32
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.aa
  tail call void @free(ptr noundef nonnull %i.r) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %Vec_IntFree.exit, %bb.e, %bb.c
  %.047 = phi i32 [ %i.fa, %Vec_IntFree.exit ], [ 0, %bb.c ], [ %i.n, %bb.e ], [ %i.e, %bb.a ]
  ret i32 %.047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Hsh_VecManAdd(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val62 = load i32, ptr %i.c, align 4, !tbaa !49 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !67     ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val61 = load i32, ptr %i.e, align 4, !tbaa !49 ; 2 uses
  %i.f = icmp sgt i32 %.val62, %.val61
  br i1 %i.f, label %bb.b, label %.loopexit122

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.val61, 1
  %i.h = add i32 %i.g, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.b
  %.012.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %.critedge.i.backedge ] ; 2 uses
  %i.i = add i32 %.012.i, 1                       ; 9 uses
  %i.j = and i32 %.012.i, 1
  %.not.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.i, 9
  br i1 %.not15.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = add nuw nsw i32 %.01116.i, 2             ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %.not.i = icmp ugt i32 %i.l, %i.i
  br i1 %.not.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.01116.i = phi i32 [ %i.k, %bb.c ], [ 3, %.preheader.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.backedge, label %bb.c

Abc_PrimeCudd.exit:                               ; preds = %.preheader.i, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !50
  %.not.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51   ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %Abc_PrimeCudd.exit..lr.ph.i66_crit_edge

Abc_PrimeCudd.exit..lr.ph.i66_crit_edge:          ; preds = %Abc_PrimeCudd.exit
  %.pre166 = zext nneg i32 %i.i to i64
  %.pre167 = shl nuw nsw i64 %.pre166, 2
  br label %.lr.ph.i66

bb.d:                                             ; preds = %Abc_PrimeCudd.exit
  %.not9.i.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #35
  %.pre149.pre = load ptr, ptr %i.a, align 8, !tbaa !59
  %.pre152.pre.pre = load ptr, ptr %0, align 8, !tbaa !67
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre152.pre = phi ptr [ %.pre152.pre.pre, %bb.e ], [ %i.d, %bb.f ]
  %.pre149 = phi ptr [ %.pre149.pre, %bb.e ], [ %i.b, %bb.f ]
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !51
  store i32 %i.i, ptr %i.d, align 8, !tbaa !50
  br label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %Abc_PrimeCudd.exit..lr.ph.i66_crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre167, %Abc_PrimeCudd.exit..lr.ph.i66_crit_edge ], [ %i.s, %bb.g ]
  %.pre152 = phi ptr [ %i.d, %Abc_PrimeCudd.exit..lr.ph.i66_crit_edge ], [ %.pre152.pre, %bb.g ] ; 4 uses
  %i.w = phi ptr [ %i.b, %Abc_PrimeCudd.exit..lr.ph.i66_crit_edge ], [ %.pre149, %bb.g ] ; 4 uses
  %i.x = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i66_crit_edge ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 -1, i64 %.pre-phi, i1 false), !tbaa !45
  store i32 %i.i, ptr %i.e, align 4, !tbaa !49
  %i.y = getelementptr i8, ptr %i.w, i64 4        ; 2 uses
  %.val59129 = load i32, ptr %i.y, align 4, !tbaa !49 ; 2 uses
  %i.z = icmp sgt i32 %.val59129, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit122
end_hunk_0
begin_hunk_1_@Gia_ManAppendObj:bb.a
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !229 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !229
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !49
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !49 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !50
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #35
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !50
  %.pre = load i32, ptr %i.al, align 4, !tbaa !49
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !49
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !45
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !96
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !92
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #24

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @Vec_WecSortCompare3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #25 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.b = load i32, ptr %.val6, align 4, !tbaa !45
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.d = load i32, ptr %.val5, align 4, !tbaa !45
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #11 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !45
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #32 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #32
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #32 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !235
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #33
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #32 ; 0 uses
  call void @free(ptr noundef %i.d) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !235, !noalias !236
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #32, !inline_history !234 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #3

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #27

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #27

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind allocsize(0,1) }
attributes #37 = { cold noreturn nounwind }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !43}
!1 = distinct !{!1, !43}
!2 = distinct !{!2, !43}
!3 = distinct !{!3, !43}
!4 = distinct !{!4, !43}
!5 = distinct !{!5, !43}
!6 = distinct !{!6, !43}
!7 = distinct !{!7, !43}
!8 = distinct !{!8, !43}
!9 = distinct !{!9, !43}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"p1 _ZTS9Nm_Man_t_", !18, i64 0}
!21 = !{!"p1 _ZTS10Vec_Ptr_t_", !18, i64 0}
!22 = !{!"p1 _ZTS10Abc_Ntk_t_", !18, i64 0}
!23 = !{!"p1 _ZTS10Abc_Des_t_", !18, i64 0}
!24 = !{!"double", !14, i64 0}
!25 = !{!"p1 int", !18, i64 0}
!26 = !{!"Vec_Int_t_", !15, i64 0, !15, i64 4, !25, i64 8}
!27 = !{!"p1 _ZTS12Mem_Fixed_t_", !18, i64 0}
!28 = !{!"p1 _ZTS11Mem_Step_t_", !18, i64 0}
!29 = !{!"p1 _ZTS14Abc_ManTime_t_", !18, i64 0}
!30 = !{!"float", !14, i64 0}
!31 = !{!"p1 _ZTS10Vec_Int_t_", !18, i64 0}
!32 = !{!"p1 _ZTS10Abc_Cex_t_", !18, i64 0}
!33 = !{!"p1 float", !18, i64 0}
!34 = !{!"Abc_Ntk_t_", !15, i64 0, !15, i64 4, !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !14, i64 96, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !22, i64 160, !15, i64 168, !23, i64 176, !22, i64 184, !15, i64 192, !15, i64 196, !15, i64 200, !24, i64 208, !15, i64 216, !26, i64 224, !27, i64 240, !28, i64 248, !18, i64 256, !29, i64 264, !18, i64 272, !30, i64 280, !15, i64 284, !31, i64 288, !21, i64 296, !25, i64 304, !32, i64 312, !21, i64 320, !22, i64 328, !18, i64 336, !18, i64 344, !22, i64 352, !18, i64 360, !18, i64 368, !31, i64 376, !31, i64 384, !19, i64 392, !33, i64 400, !21, i64 408, !31, i64 416, !31, i64 424, !21, i64 432, !31, i64 440, !31, i64 448, !31, i64 456}
!35 = !{!34, !18, i64 256}
!36 = !{!34, !21, i64 32}
!37 = !{!"any p2 pointer", !18, i64 0}
!38 = !{!"Vec_Ptr_t_", !15, i64 0, !15, i64 4, !37, i64 8}
!39 = !{!38, !15, i64 4}
!40 = !{!38, !37, i64 8}
!41 = !{!18, !18, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!34, !19, i64 8}
!45 = !{!15, !15, i64 0}
!46 = !{!"p1 _ZTS10Abc_Obj_t_", !18, i64 0}
!47 = !{!"Abc_Obj_t_", !22, i64 0, !46, i64 8, !15, i64 16, !15, i64 20, !15, i64 20, !15, i64 20, !15, i64 20, !15, i64 20, !15, i64 21, !15, i64 21, !15, i64 21, !15, i64 21, !15, i64 21, !26, i64 24, !26, i64 40, !18, i64 56, !14, i64 64, !14, i64 72}
!48 = !{!47, !15, i64 16}
!49 = !{!26, !15, i64 4}
!50 = !{!26, !15, i64 0}
!51 = !{!26, !25, i64 8}
!52 = !{!34, !15, i64 4}
!53 = !{!34, !15, i64 0}
!54 = !{!47, !22, i64 0}
!55 = !{!47, !25, i64 32}
!56 = !{!47, !15, i64 28}
!57 = !{!"Hsh_VecMan_t_", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !26, i64 40, !26, i64 56, !26, i64 72}
!58 = !{!57, !31, i64 8}
!59 = !{!57, !31, i64 16}
!60 = !{!"Hsh_VecObj_t_", !15, i64 0, !15, i64 4, !14, i64 8}
!61 = !{!60, !15, i64 0}
!62 = !{!57, !15, i64 40}
!63 = !{!57, !15, i64 44}
!64 = !{!57, !25, i64 48}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!57, !31, i64 0}
!68 = !{!"Vec_Wec_t_", !15, i64 0, !15, i64 4, !31, i64 8}
!69 = !{!68, !15, i64 4}
!70 = !{!68, !15, i64 0}
!71 = !{!68, !31, i64 8}
!72 = !{!"p1 _ZTS10Vec_Wec_t_", !18, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!34, !15, i64 216}
!75 = !{!"p1 long", !18, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"long", !14, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!"p1 _ZTS10Gia_Obj_t_", !18, i64 0}
!81 = !{!"p1 _ZTS10Gia_Rpr_t_", !18, i64 0}
!82 = !{!"p1 _ZTS10Vec_Str_t_", !18, i64 0}
!83 = !{!"p1 _ZTS10Gia_Plc_t_", !18, i64 0}
!84 = !{!"p1 _ZTS10Gia_Man_t_", !18, i64 0}
!85 = !{!"p1 _ZTS10Vec_Flt_t_", !18, i64 0}
!86 = !{!"p1 _ZTS10Vec_Vec_t_", !18, i64 0}
!87 = !{!"p1 _ZTS10Vec_Wrd_t_", !18, i64 0}
!88 = !{!"p1 _ZTS10Vec_Bit_t_", !18, i64 0}
!89 = !{!"p1 _ZTS10Gia_Dat_t_", !18, i64 0}
!90 = !{!"Gia_Man_t_", !19, i64 0, !19, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !80, i64 32, !25, i64 40, !15, i64 48, !15, i64 52, !15, i64 56, !31, i64 64, !31, i64 72, !26, i64 80, !26, i64 96, !15, i64 112, !15, i64 116, !15, i64 120, !26, i64 128, !25, i64 144, !25, i64 152, !31, i64 160, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !25, i64 184, !81, i64 192, !25, i64 200, !25, i64 208, !25, i64 216, !15, i64 224, !15, i64 228, !25, i64 232, !15, i64 240, !31, i64 248, !31, i64 256, !31, i64 264, !72, i64 272, !72, i64 280, !31, i64 288, !18, i64 296, !31, i64 304, !31, i64 312, !82, i64 320, !19, i64 328, !31, i64 336, !31, i64 344, !31, i64 352, !31, i64 360, !31, i64 368, !32, i64 376, !32, i64 384, !21, i64 392, !26, i64 400, !26, i64 416, !31, i64 432, !31, i64 440, !31, i64 448, !31, i64 456, !31, i64 464, !31, i64 472, !31, i64 480, !31, i64 488, !31, i64 496, !31, i64 504, !31, i64 512, !19, i64 520, !83, i64 528, !84, i64 536, !85, i64 544, !85, i64 552, !31, i64 560, !31, i64 568, !31, i64 576, !31, i64 584, !31, i64 592, !15, i64 600, !30, i64 604, !30, i64 608, !31, i64 616, !25, i64 624, !15, i64 632, !21, i64 640, !21, i64 648, !21, i64 656, !31, i64 664, !31, i64 672, !31, i64 680, !31, i64 688, !31, i64 696, !31, i64 704, !31, i64 712, !31, i64 720, !31, i64 728, !86, i64 736, !85, i64 744, !18, i64 752, !18, i64 760, !18, i64 768, !77, i64 776, !77, i64 784, !18, i64 792, !25, i64 800, !15, i64 808, !15, i64 812, !15, i64 816, !15, i64 820, !15, i64 824, !15, i64 828, !15, i64 832, !15, i64 836, !15, i64 840, !15, i64 844, !15, i64 848, !15, i64 852, !87, i64 856, !87, i64 864, !87, i64 872, !87, i64 880, !31, i64 888, !31, i64 896, !31, i64 904, !88, i64 912, !15, i64 920, !15, i64 924, !15, i64 928, !31, i64 936, !15, i64 944, !15, i64 948, !31, i64 952, !31, i64 960, !21, i64 968, !87, i64 976, !31, i64 984, !31, i64 992, !15, i64 1000, !15, i64 1004, !87, i64 1008, !26, i64 1016, !26, i64 1032, !26, i64 1048, !89, i64 1064, !82, i64 1072, !82, i64 1080, !15, i64 1088, !15, i64 1092, !15, i64 1096, !15, i64 1100, !82, i64 1104, !31, i64 1112, !31, i64 1120, !31, i64 1128, !21, i64 1136}
!91 = !{!90, !31, i64 64}
!92 = !{!90, !80, i64 32}
!93 = !{!90, !31, i64 72}
!94 = !{!"Vec_Wrd_t_", !15, i64 0, !15, i64 4, !75, i64 8}
!95 = !{!94, !75, i64 8}
!96 = !{!90, !15, i64 24}
!97 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!98 = !{!34, !31, i64 448}
!99 = distinct !{!99, !43}
!100 = distinct !{!100, !43}
!101 = distinct !{!101, !43}
!102 = distinct !{null}
!103 = distinct !{!103, !43}
!104 = distinct !{!104, !43}
!105 = distinct !{!105, !43}
!106 = distinct !{!106, !43}
!107 = distinct !{!107, !43}
!108 = distinct !{!108, !43}
!109 = distinct !{!109, !43}
!110 = distinct !{!110, !43}
!111 = !{!34, !21, i64 40}
!112 = !{!34, !21, i64 48}
!113 = !{!34, !15, i64 144}
!114 = !{!38, !15, i64 0}
!115 = distinct !{!115, !43, !65, !66}
!116 = distinct !{!116, !43}
!117 = distinct !{!117, !43, !65, !66}
!118 = distinct !{!118, !43, !65}
!119 = distinct !{!119, !43, !65}
!120 = distinct !{!120, !43}
!121 = !{!47, !15, i64 44}
!122 = !{!47, !25, i64 48}
!123 = !{!25, !25, i64 0}
!124 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 8, !123}
!125 = distinct !{!125, !43}
!126 = distinct !{!126, !43}
!127 = distinct !{!127, !43}
!128 = distinct !{!128, !43}
!129 = !{!60, !15, i64 4}
!130 = distinct !{!130, !43}
!131 = distinct !{!131, !43}
!132 = distinct !{!132, !43}
!133 = distinct !{!133, !43}
!134 = !{!34, !21, i64 64}
!135 = !{!31, !31, i64 0}
!136 = distinct !{!136, !43}
!137 = !{!34, !21, i64 56}
!138 = distinct !{!138, !43}
!139 = distinct !{!139, !43}
!140 = !{!34, !25, i64 232}
!141 = distinct !{!141, !43}
!142 = distinct !{!142, !79}
!143 = distinct !{!143, !43}
!144 = distinct !{!144, !43}
!145 = distinct !{!145, !43, !65, !66}
!146 = distinct !{!146, !43, !66, !65}
!147 = distinct !{!147, !43}
!148 = distinct !{!148, !43}
!149 = distinct !{!149, !43}
!150 = distinct !{!150, !43}
!151 = distinct !{!151, !43}
end_hunk_1
