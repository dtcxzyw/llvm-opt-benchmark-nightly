Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioWriteVerilog?download=true
inline.NumInlined: 284
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Io_WriteVerilogInt:bb.a
  %index.next164 = add nuw i64 %index162, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next164, %n.vec161
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n165 = icmp eq i64 %wide.trip.count54.i, %n.vec161
  br i1 %cmp.n165, label %._crit_edge49.i, label %.lr.ph48.i.preheader

.lr.ph48.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv51.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec161, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.i.preheader, %.lr.ph48.i.prol
  %indvars.iv51.i.prol = phi i64 [ %indvars.iv.next52.i.prol, %.lr.ph48.i.prol ], [ %indvars.iv51.i.ph, %.lr.ph48.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.i.prol ], [ 0, %.lr.ph48.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv51.i.prol
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !38
  %indvars.iv.next52.i.prol = add nuw nsw i64 %indvars.iv51.i.prol, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i.prol
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !38
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol, !llvm.loop !64

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %.lr.ph48.i.preheader
  %indvars.iv51.i.unr = phi i64 [ %indvars.iv51.i.ph, %.lr.ph48.i.preheader ], [ %indvars.iv.next52.i.prol, %.lr.ph48.i.prol ]
  %i.ae = sub nsw i64 %indvars.iv51.i.ph, %wide.trip.count54.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge49.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i.3, %.lr.ph48.i ], [ %indvars.iv51.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv51.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !38
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv.next52.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !38
  %indvars.iv.next52.i.1 = add nuw nsw i64 %indvars.iv51.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i.1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv.next52.i.1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !38
  %indvars.iv.next52.i.2 = add nuw nsw i64 %indvars.iv51.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i.2
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv.next52.i.2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !38
  %indvars.iv.next52.i.3 = add nuw nsw i64 %indvars.iv51.i, 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i.3
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !38
  %exitcond55.not.i.3 = icmp eq i64 %indvars.iv.next52.i.3, %wide.trip.count54.i
  br i1 %exitcond55.not.i.3, label %._crit_edge49.i, label %.lr.ph48.i, !llvm.loop !65

._crit_edge49.i:                                  ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i, %middle.block, %vec.epilog.middle.block, %bb.d
  %i.as = shl i64 %i.b, 32                        ; 2 uses
  %sext.i = add i64 %i.as, 4294967296
  %i.at = ashr exact i64 %sext.i, 32
  %i.au = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.at
  store i8 32, ptr %i.au, align 1, !tbaa !38
  %sext37.i = add i64 %i.as, 8589934592
  %i.av = ashr exact i64 %sext37.i, 32
  %i.aw = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !38
  br label %Io_WriteVerilogGetName.exit

Io_WriteVerilogGetName.exit:                      ; preds = %bb.c, %._crit_edge.i, %._crit_edge49.i
  %.031.i = phi ptr [ @Io_WriteVerilogGetName.Buffer, %._crit_edge49.i ], [ %.val, %._crit_edge.i ], [ %.val, %bb.c ]
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, ptr noundef nonnull %.031.i) #11 ; 0 uses
  %i.ay = getelementptr i8, ptr %1, i64 128       ; 5 uses
  %.val66 = load i32, ptr %i.ay, align 8, !tbaa !43
  %i.az = icmp sgt i32 %.val66, 0
  br i1 %i.az, label %bb.e, label %bb.g

bb.e:                                             ; preds = %Io_WriteVerilogGetName.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !44
  %i.bc = tail call i32 @Nm_ManFindIdByName(ptr noundef %i.bb, ptr noundef nonnull @.str.45, i32 noundef 2) #11
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.46, i64 7, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %Io_WriteVerilogGetName.exit
  %fwrite49 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 4, i64 1, ptr nonnull %0) ; 0 uses
  %i.be = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %.val68 = load ptr, ptr %i.be, align 8, !tbaa !45
  %i.bf = getelementptr i8, ptr %.val68, i64 4
  %.val68.val = load i32, ptr %i.bf, align 4, !tbaa !34
  %i.bg = icmp sgt i32 %.val68.val, 0
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @Io_WriteVerilogPis(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3)
  %fwrite50 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 5, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bh = getelementptr i8, ptr %1, i64 48        ; 4 uses
  %.val70 = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.bi = getelementptr i8, ptr %.val70, i64 4
  %.val70.val = load i32, ptr %i.bi, align 4, !tbaa !34
  %i.bj = icmp sgt i32 %.val70.val, 0
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @Io_WriteVerilogPos(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3, i32 noundef %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %fwrite51 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 5, i64 1, ptr nonnull %0) ; 0 uses
  %.val65 = load i32, ptr %i.ay, align 8, !tbaa !43
  %i.bk = icmp sgt i32 %.val65, 0
  br i1 %i.bk, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44
  %i.bn = tail call i32 @Nm_ManFindIdByName(ptr noundef %i.bm, ptr noundef nonnull @.str.45, i32 noundef 2) #11
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %fwrite52 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 16, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.val67 = load ptr, ptr %i.be, align 8, !tbaa !45
  %i.bp = getelementptr i8, ptr %.val67, i64 4
  %.val67.val = load i32, ptr %i.bp, align 4, !tbaa !34
  %i.bq = icmp sgt i32 %.val67.val, 0
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %fwrite53 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 8, i64 1, ptr nonnull %0) ; 0 uses
  tail call fastcc void @Io_WriteVerilogPis(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 10)
  %fwrite54 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 2, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.val69 = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.br = getelementptr i8, ptr %.val69, i64 4
  %.val69.val = load i32, ptr %i.br, align 4, !tbaa !34
  %i.bs = icmp sgt i32 %.val69.val, 0
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %fwrite55 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 8, i64 1, ptr nonnull %0) ; 0 uses
  tail call fastcc void @Io_WriteVerilogPos(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 5, i32 noundef %3)
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 2, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %.val71 = load i32, ptr %i.bt, align 4, !tbaa !28
  %.not = icmp eq i32 %.val71, 6
  br i1 %.not, label %bb.dg, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val64 = load i32, ptr %i.ay, align 8, !tbaa !43
  %i.bu = icmp sgt i32 %.val64, 0
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %fwrite57 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 5, i64 1, ptr nonnull %0) ; 0 uses
  tail call fastcc void @Io_WriteVerilogRegs(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %fwrite58 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 2, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bv = tail call fastcc i32 @Io_WriteVerilogWiresCount(ptr noundef nonnull %1)
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %fwrite59 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 6, i64 1, ptr nonnull %0) ; 0 uses
  tail call fastcc void @Io_WriteVerilogWires(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %fwrite60 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 2, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bx = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %.val254.i = load ptr, ptr %i.bx, align 8, !tbaa !47 ; 2 uses
  %i.by = getelementptr i8, ptr %.val254.i, i64 4
  %.val254.val.i = load i32, ptr %i.by, align 4, !tbaa !34 ; 2 uses
  %.val.i = load i32, ptr %i.ay, align 8, !tbaa !43
  %i.bz = sub nsw i32 %.val254.val.i, %.val.i     ; 3 uses
  %i.ca = icmp ult i32 %i.bz, 2
  br i1 %i.ca, label %Abc_Base10Log.exit.i, label %.lr.ph.preheader.i.i.a

.lr.ph.preheader.i.i.a:                           ; preds = %bb.w
  %i.cb = add i32 %i.bz, -1
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %.lr.ph.i.i.a, %.lr.ph.preheader.i.i.a
  %.013.i.i = phi i32 [ %i.cd, %.lr.ph.i.i.a ], [ 0, %.lr.ph.preheader.i.i.a ]
  %.0812.i.i = phi i32 [ %i.cc, %.lr.ph.i.i.a ], [ %i.cb, %.lr.ph.preheader.i.i.a ] ; 2 uses
  %i.cc = udiv i32 %.0812.i.i, 10
  %i.cd = add nuw nsw i32 %.013.i.i, 1            ; 2 uses
  %.not.i.i = icmp ult i32 %.0812.i.i, 10
  br i1 %.not.i.i, label %Abc_Base10Log.exit.i, label %.lr.ph.i.i.a, !llvm.loop !1

Abc_Base10Log.exit.i:                             ; preds = %.lr.ph.i.i.a, %bb.w
  %.09.i.i = phi i32 [ %i.bz, %bb.w ], [ %i.cd, %.lr.ph.i.i.a ]
  %i.ce = icmp sgt i32 %.val254.val.i, 0
  br i1 %i.ce, label %.lr.ph643.i, label %.critedge.i

.lr.ph643.i:                                      ; preds = %Abc_Base10Log.exit.i, %bb.am
  %i.cf = phi ptr [ %i.my, %bb.am ], [ %.val254.i, %Abc_Base10Log.exit.i ] ; 2 uses
  %indvars.iv680.i = phi i64 [ %indvars.iv.next681.i, %bb.am ], [ 0, %Abc_Base10Log.exit.i ] ; 2 uses
  %.0161642.i = phi i32 [ %.1162.i, %bb.am ], [ 0, %Abc_Base10Log.exit.i ] ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %.val228.val.i = load ptr, ptr %i.cg, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.val228.val.i, i64 %indvars.iv680.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !36 ; 6 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 20
  %.val229.i = load i32, ptr %i.cj, align 4
  %i.ck = and i32 %.val229.i, 15
  %.not615.i = icmp eq i32 %i.ck, 8
  br i1 %.not615.i, label %bb.am, label %bb.x

bb.x:                                             ; preds = %.lr.ph643.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !38 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !31
  %i.cp = add nsw i32 %.0161642.i, 1
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %i.co, i32 noundef %.09.i.i, i32 noundef %.0161642.i) #11 ; 0 uses
  %fputc197.i = tail call i32 @fputc(i32 40, ptr nonnull %0) ; 0 uses
  %i.cr = getelementptr i8, ptr %i.cm, i64 40     ; 2 uses
  %.val202631.i = load ptr, ptr %i.cr, align 8, !tbaa !45 ; 2 uses
  %i.cs = getelementptr i8, ptr %.val202631.i, i64 4
  %.val202.val632.i = load i32, ptr %i.cs, align 4, !tbaa !34
  %i.ct = icmp sgt i32 %.val202.val632.i, 0
  br i1 %i.ct, label %.lr.ph.i74, label %.critedge2.preheader.i

.lr.ph.i74:                                       ; preds = %bb.x
  %i.cu = getelementptr i8, ptr %i.ci, i64 32
  br label %bb.y

.critedge2.preheader.i:                           ; preds = %Io_WriteVerilogGetName.exit283.i, %bb.x
  %i.cv = getelementptr i8, ptr %i.cm, i64 48     ; 3 uses
  %.val218635.i = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 2 uses
  %i.cw = getelementptr i8, ptr %.val218635.i, i64 4
  %.val218.val636.i = load i32, ptr %i.cw, align 4, !tbaa !34
  %i.cx = icmp sgt i32 %.val218.val636.i, 0
  br i1 %i.cx, label %.lr.ph639.i, label %.critedge4.i

.lr.ph639.i:                                      ; preds = %.critedge2.preheader.i
  %i.cy = getelementptr i8, ptr %i.ci, i64 48
  br label %bb.af

bb.y:                                             ; preds = %Io_WriteVerilogGetName.exit283.i, %.lr.ph.i74
  %indvars.iv.i75 = phi i64 [ 0, %.lr.ph.i74 ], [ %indvars.iv.next.i76, %Io_WriteVerilogGetName.exit283.i ] ; 3 uses
  %.val202634.i = phi ptr [ %.val202631.i, %.lr.ph.i74 ], [ %.val202.i, %Io_WriteVerilogGetName.exit283.i ]
  %i.cz = getelementptr i8, ptr %.val202634.i, i64 8
  %.val203.val.i = load ptr, ptr %i.cz, align 8, !tbaa !35
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val203.val.i, i64 %indvars.iv.i75
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %.val215.i = load ptr, ptr %i.db, align 8, !tbaa !50
  %i.dc = getelementptr i8, ptr %i.db, i64 48
  %.val216.i = load ptr, ptr %i.dc, align 8, !tbaa !51
  %i.dd = getelementptr i8, ptr %.val215.i, i64 32
  %.val215.val.i = load ptr, ptr %i.dd, align 8, !tbaa !52
  %.val216.val.i = load i32, ptr %.val216.i, align 4, !tbaa !43
  %i.de = getelementptr i8, ptr %.val215.val.i, i64 8
  %.val215.val.val.i = load ptr, ptr %i.de, align 8, !tbaa !35
  %i.df = sext i32 %.val216.val.i to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %.val215.val.val.i, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !36
  %i.di = tail call ptr @Abc_ObjName(ptr noundef %i.dh) #11 ; 13 uses
  %i.dj = ptrtoaddr ptr %i.di to i64
  %i.dk = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.di) #12 ; 8 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 3 uses
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !38
  %i.dn = add i8 %i.dm, -58
  %or.cond.i.i = icmp ult i8 %i.dn, -10
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.ab

.preheader.i.i:                                   ; preds = %bb.y
  %i.do = icmp sgt i32 %i.dl, 0
  br i1 %i.do, label %.lr.ph.preheader.i257.i, label %._crit_edge.i.i

.lr.ph.preheader.i257.i:                          ; preds = %.preheader.i.i
  %wide.trip.count.i.i = and i64 %i.dk, 2147483647
  br label %.lr.ph.i258.i

.lr.ph.i258.i:                                    ; preds = %bb.aa, %.lr.ph.preheader.i257.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i257.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !38  ; 3 uses
  %i.dr = and i8 %i.dq, -33
  %i.ds = add i8 %i.dr, -65
  %or.cond42.i.i = icmp ult i8 %i.ds, 26
  br i1 %or.cond42.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i258.i
  %i.dt = add i8 %i.dq, -48
  %or.cond40.i.i = icmp ult i8 %i.dt, 10
  %i.du = icmp eq i8 %i.dq, 95
  %or.cond41.i.i = or i1 %i.du, %or.cond40.i.i
  br i1 %or.cond41.i.i, label %bb.aa, label %._crit_edge.loopexit.i.i

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i258.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Io_WriteVerilogGetName.exit.i, label %.lr.ph.i258.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %bb.z
  %i.dv = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.dv, %._crit_edge.loopexit.i.i ]
  %i.dw = icmp eq i32 %.0.lcssa.i.i, %i.dl
  br i1 %i.dw, label %Io_WriteVerilogGetName.exit.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i, %bb.y
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.dx = icmp sgt i32 %i.dl, 0
  br i1 %i.dx, label %iter.check265, label %._crit_edge49.i.i

iter.check265:                                    ; preds = %bb.ab
  %wide.trip.count54.i.i = and i64 %i.dk, 2147483647 ; 6 uses
  %min.iters.check252 = icmp samesign ult i64 %wide.trip.count54.i.i, 8
  %i.dy = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.dj
  %diff.check251 = icmp ult i64 %i.dy, 31
  %or.cond558 = or i1 %min.iters.check252, %diff.check251
  br i1 %or.cond558, label %.lr.ph48.i.i.preheader, label %vector.main.loop.iter.check253

vector.main.loop.iter.check253:                   ; preds = %iter.check265
  %min.iters.check254 = icmp samesign ult i64 %wide.trip.count54.i.i, 32
  br i1 %min.iters.check254, label %vec.epilog.ph269, label %vector.ph255

vector.ph255:                                     ; preds = %vector.main.loop.iter.check253
  %i.dz = and i64 %i.dk, 24
  %n.vec256 = and i64 %i.dk, 2147483616           ; 4 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next261, %vector.body257 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.di, i64 %index258 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load259 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !38
  %wide.load260 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index258 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 17
  store <16 x i8> %wide.load259, ptr %i.ed, align 1, !tbaa !38
  store <16 x i8> %wide.load260, ptr %i.ee, align 1, !tbaa !38
  %index.next261 = add nuw i64 %index258, 32      ; 2 uses
  %i.ef = icmp eq i64 %index.next261, %n.vec256
  br i1 %i.ef, label %middle.block262, label %vector.body257, !llvm.loop !66

middle.block262:                                  ; preds = %vector.body257
  %cmp.n263 = icmp eq i64 %wide.trip.count54.i.i, %n.vec256
  br i1 %cmp.n263, label %._crit_edge49.i.i, label %vec.epilog.iter.check267

vec.epilog.iter.check267:                         ; preds = %middle.block262
  %min.epilog.iters.check268 = icmp eq i64 %i.dz, 0
  br i1 %min.epilog.iters.check268, label %.lr.ph48.i.i.preheader, label %vec.epilog.ph269, !prof !41

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check253, %vec.epilog.iter.check267
  %vec.epilog.resume.val264 = phi i64 [ %n.vec256, %vec.epilog.iter.check267 ], [ 0, %vector.main.loop.iter.check253 ]
  %n.vec270 = and i64 %i.dk, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body271

vec.epilog.vector.body271:                        ; preds = %vec.epilog.vector.body271, %vec.epilog.ph269
  %index272 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph269 ], [ %index.next274, %vec.epilog.vector.body271 ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.di, i64 %index272
  %wide.load273 = load <8 x i8>, ptr %i.eg, align 1, !tbaa !38
  %i.eh = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index272
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store <8 x i8> %wide.load273, ptr %i.ei, align 1, !tbaa !38
  %index.next274 = add nuw i64 %index272, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next274, %n.vec270
  br i1 %i.ej, label %vec.epilog.middle.block275, label %vec.epilog.vector.body271, !llvm.loop !67

vec.epilog.middle.block275:                       ; preds = %vec.epilog.vector.body271
  %cmp.n276 = icmp eq i64 %wide.trip.count54.i.i, %n.vec270
  br i1 %cmp.n276, label %._crit_edge49.i.i, label %.lr.ph48.i.i.preheader

.lr.ph48.i.i.preheader:                           ; preds = %iter.check265, %vec.epilog.iter.check267, %vec.epilog.middle.block275
  %indvars.iv51.i.i.ph = phi i64 [ 0, %iter.check265 ], [ %n.vec256, %vec.epilog.iter.check267 ], [ %n.vec270, %vec.epilog.middle.block275 ] ; 3 uses
  %xtraiter588 = and i64 %i.dk, 3                 ; 2 uses
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %.lr.ph48.i.i.prol.loopexit, label %.lr.ph48.i.i.prol

.lr.ph48.i.i.prol:                                ; preds = %.lr.ph48.i.i.preheader, %.lr.ph48.i.i.prol
  %indvars.iv51.i.i.prol = phi i64 [ %indvars.iv.next52.i.i.prol, %.lr.ph48.i.i.prol ], [ %indvars.iv51.i.i.ph, %.lr.ph48.i.i.preheader ] ; 2 uses
  %prol.iter590 = phi i64 [ %prol.iter590.next, %.lr.ph48.i.i.prol ], [ 0, %.lr.ph48.i.i.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv51.i.i.prol
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !38
  %indvars.iv.next52.i.i.prol = add nuw nsw i64 %indvars.iv51.i.i.prol, 1 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i.i.prol
  store i8 %i.el, ptr %i.em, align 1, !tbaa !38
  %prol.iter590.next = add i64 %prol.iter590, 1   ; 2 uses
end_hunk_0
begin_hunk_1_@Io_WriteVerilogInt:bb.a

bb.aj:                                            ; preds = %.lr.ph.i325.i
  %i.lc = add i8 %i.kz, -48
  %or.cond40.i328.i = icmp ult i8 %i.lc, 10
  %i.ld = icmp eq i8 %i.kz, 95
  %or.cond41.i329.i = or i1 %i.ld, %or.cond40.i328.i
  br i1 %or.cond41.i329.i, label %bb.ak, label %._crit_edge.loopexit.i330.i

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i325.i
  %indvars.iv.next.i331.i = add nuw nsw i64 %indvars.iv.i326.i, 1 ; 2 uses
  %exitcond.not.i332.i = icmp eq i64 %indvars.iv.next.i331.i, %wide.trip.count.i324.i
  br i1 %exitcond.not.i332.i, label %Io_WriteVerilogGetName.exit333.i, label %.lr.ph.i325.i, !llvm.loop !0

._crit_edge.loopexit.i330.i:                      ; preds = %bb.aj
  %i.le = trunc nuw nsw i64 %indvars.iv.i326.i to i32
  br label %._crit_edge.i321.i

._crit_edge.i321.i:                               ; preds = %._crit_edge.loopexit.i330.i, %.preheader.i320.i
  %.0.lcssa.i322.i = phi i32 [ 0, %.preheader.i320.i ], [ %i.le, %._crit_edge.loopexit.i330.i ]
  %i.lf = icmp eq i32 %.0.lcssa.i322.i, %i.ku
  br i1 %i.lf, label %Io_WriteVerilogGetName.exit333.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i321.i, %Io_WriteVerilogGetName.exit308.i
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.lg = icmp sgt i32 %i.ku, 0
  br i1 %i.lg, label %iter.check181, label %._crit_edge49.i310.i

iter.check181:                                    ; preds = %bb.al
  %wide.trip.count54.i315.i = and i64 %i.kt, 2147483647 ; 6 uses
  %min.iters.check168 = icmp samesign ult i64 %wide.trip.count54.i315.i, 8
  %i.lh = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.ks
  %diff.check167 = icmp ult i64 %i.lh, 31
  %or.cond561 = or i1 %min.iters.check168, %diff.check167
  br i1 %or.cond561, label %.lr.ph48.i316.i.preheader, label %vector.main.loop.iter.check169

vector.main.loop.iter.check169:                   ; preds = %iter.check181
  %min.iters.check170 = icmp samesign ult i64 %wide.trip.count54.i315.i, 32
  br i1 %min.iters.check170, label %vec.epilog.ph185, label %vector.ph171

vector.ph171:                                     ; preds = %vector.main.loop.iter.check169
  %i.li = and i64 %i.kt, 24
  %n.vec172 = and i64 %i.kt, 2147483616           ; 4 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next177, %vector.body173 ] ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kr, i64 %index174 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %wide.load175 = load <16 x i8>, ptr %i.lj, align 1, !tbaa !38
  %wide.load176 = load <16 x i8>, ptr %i.lk, align 1, !tbaa !38
  %i.ll = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index174 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 17
  store <16 x i8> %wide.load175, ptr %i.lm, align 1, !tbaa !38
  store <16 x i8> %wide.load176, ptr %i.ln, align 1, !tbaa !38
  %index.next177 = add nuw i64 %index174, 32      ; 2 uses
  %i.lo = icmp eq i64 %index.next177, %n.vec172
  br i1 %i.lo, label %middle.block178, label %vector.body173, !llvm.loop !79

middle.block178:                                  ; preds = %vector.body173
  %cmp.n179 = icmp eq i64 %wide.trip.count54.i315.i, %n.vec172
  br i1 %cmp.n179, label %._crit_edge49.i310.i, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block178
  %min.epilog.iters.check184 = icmp eq i64 %i.li, 0
  br i1 %min.epilog.iters.check184, label %.lr.ph48.i316.i.preheader, label %vec.epilog.ph185, !prof !41

vec.epilog.ph185:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check183
  %vec.epilog.resume.val180 = phi i64 [ %n.vec172, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec186 = and i64 %i.kt, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body187

vec.epilog.vector.body187:                        ; preds = %vec.epilog.vector.body187, %vec.epilog.ph185
  %index188 = phi i64 [ %vec.epilog.resume.val180, %vec.epilog.ph185 ], [ %index.next190, %vec.epilog.vector.body187 ] ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kr, i64 %index188
  %wide.load189 = load <8 x i8>, ptr %i.lp, align 1, !tbaa !38
  %i.lq = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index188
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 1
  store <8 x i8> %wide.load189, ptr %i.lr, align 1, !tbaa !38
  %index.next190 = add nuw i64 %index188, 8       ; 2 uses
  %i.ls = icmp eq i64 %index.next190, %n.vec186
  br i1 %i.ls, label %vec.epilog.middle.block191, label %vec.epilog.vector.body187, !llvm.loop !80

vec.epilog.middle.block191:                       ; preds = %vec.epilog.vector.body187
  %cmp.n192 = icmp eq i64 %wide.trip.count54.i315.i, %n.vec186
  br i1 %cmp.n192, label %._crit_edge49.i310.i, label %.lr.ph48.i316.i.preheader

.lr.ph48.i316.i.preheader:                        ; preds = %iter.check181, %vec.epilog.iter.check183, %vec.epilog.middle.block191
  %indvars.iv51.i317.i.ph = phi i64 [ 0, %iter.check181 ], [ %n.vec172, %vec.epilog.iter.check183 ], [ %n.vec186, %vec.epilog.middle.block191 ] ; 3 uses
  %xtraiter597 = and i64 %i.kt, 3                 ; 2 uses
  %lcmp.mod598.not = icmp eq i64 %xtraiter597, 0
  br i1 %lcmp.mod598.not, label %.lr.ph48.i316.i.prol.loopexit, label %.lr.ph48.i316.i.prol

.lr.ph48.i316.i.prol:                             ; preds = %.lr.ph48.i316.i.preheader, %.lr.ph48.i316.i.prol
  %indvars.iv51.i317.i.prol = phi i64 [ %indvars.iv.next52.i318.i.prol, %.lr.ph48.i316.i.prol ], [ %indvars.iv51.i317.i.ph, %.lr.ph48.i316.i.preheader ] ; 2 uses
  %prol.iter599 = phi i64 [ %prol.iter599.next, %.lr.ph48.i316.i.prol ], [ 0, %.lr.ph48.i316.i.preheader ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv51.i317.i.prol
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !38
  %indvars.iv.next52.i318.i.prol = add nuw nsw i64 %indvars.iv51.i317.i.prol, 1 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i318.i.prol
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !38
  %prol.iter599.next = add i64 %prol.iter599, 1   ; 2 uses
  %prol.iter599.cmp.not = icmp eq i64 %prol.iter599.next, %xtraiter597
  br i1 %prol.iter599.cmp.not, label %.lr.ph48.i316.i.prol.loopexit, label %.lr.ph48.i316.i.prol, !llvm.loop !81

.lr.ph48.i316.i.prol.loopexit:                    ; preds = %.lr.ph48.i316.i.prol, %.lr.ph48.i316.i.preheader
  %indvars.iv51.i317.i.unr = phi i64 [ %indvars.iv51.i317.i.ph, %.lr.ph48.i316.i.preheader ], [ %indvars.iv.next52.i318.i.prol, %.lr.ph48.i316.i.prol ]
  %i.lw = sub nsw i64 %indvars.iv51.i317.i.ph, %wide.trip.count54.i315.i
  %i.lx = icmp ugt i64 %i.lw, -4
  br i1 %i.lx, label %._crit_edge49.i310.i, label %.lr.ph48.i316.i

.lr.ph48.i316.i:                                  ; preds = %.lr.ph48.i316.i.prol.loopexit, %.lr.ph48.i316.i
  %indvars.iv51.i317.i = phi i64 [ %indvars.iv.next52.i318.i.3, %.lr.ph48.i316.i ], [ %indvars.iv51.i317.i.unr, %.lr.ph48.i316.i.prol.loopexit ] ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv51.i317.i
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !38
  %indvars.iv.next52.i318.i = add nuw nsw i64 %indvars.iv51.i317.i, 1 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i318.i
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !38
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next52.i318.i
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !38
  %indvars.iv.next52.i318.i.1 = add nuw nsw i64 %indvars.iv51.i317.i, 2 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i318.i.1
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !38
  %i.me = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next52.i318.i.1
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !38
  %indvars.iv.next52.i318.i.2 = add nuw nsw i64 %indvars.iv51.i317.i, 3 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i318.i.2
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !38
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.next52.i318.i.2
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !38
  %indvars.iv.next52.i318.i.3 = add nuw nsw i64 %indvars.iv51.i317.i, 4 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i318.i.3
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !38
  %exitcond55.not.i319.i.3 = icmp eq i64 %indvars.iv.next52.i318.i.3, %wide.trip.count54.i315.i
  br i1 %exitcond55.not.i319.i.3, label %._crit_edge49.i310.i, label %.lr.ph48.i316.i, !llvm.loop !82

._crit_edge49.i310.i:                             ; preds = %.lr.ph48.i316.i.prol.loopexit, %.lr.ph48.i316.i, %middle.block178, %vec.epilog.middle.block191, %bb.al
  %i.mk = shl i64 %i.kt, 32                       ; 2 uses
  %sext.i311.i = add i64 %i.mk, 4294967296
  %i.ml = ashr exact i64 %sext.i311.i, 32
  %i.mm = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.ml
  store i8 32, ptr %i.mm, align 1, !tbaa !38
  %sext37.i312.i = add i64 %i.mk, 8589934592
  %i.mn = ashr exact i64 %sext37.i312.i, 32
  %i.mo = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.mn
  store i8 0, ptr %i.mo, align 1, !tbaa !38
  br label %Io_WriteVerilogGetName.exit333.i

Io_WriteVerilogGetName.exit333.i:                 ; preds = %bb.ak, %._crit_edge49.i310.i, %._crit_edge.i321.i
  %.031.i313.i = phi ptr [ @Io_WriteVerilogGetName.Buffer, %._crit_edge49.i310.i ], [ %i.kr, %._crit_edge.i321.i ], [ %i.kr, %bb.ak ]
  %.val217.i = load ptr, ptr %i.cv, align 8, !tbaa !46
  %i.mp = getelementptr i8, ptr %.val217.i, i64 4
  %.val217.val.i = load i32, ptr %i.mp, align 4, !tbaa !34
  %i.mq = add nsw i32 %.val217.val.i, -1
  %i.mr = zext i32 %i.mq to i64
  %i.ms = icmp eq i64 %indvars.iv677.i, %i.mr
  %i.mt = select i1 %i.ms, ptr @.str.27, ptr @.str.28
  %i.mu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %.031.i313.i, ptr noundef nonnull %i.mt) #11 ; 0 uses
  %indvars.iv.next678.i = add nuw nsw i64 %indvars.iv677.i, 1 ; 2 uses
  %.val218.i = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 2 uses
  %i.mv = getelementptr i8, ptr %.val218.i, i64 4
  %.val218.val.i = load i32, ptr %i.mv, align 4, !tbaa !34
  %i.mw = sext i32 %.val218.val.i to i64
  %i.mx = icmp slt i64 %indvars.iv.next678.i, %i.mw
  br i1 %i.mx, label %bb.af, label %.critedge4.i, !llvm.loop !83

.critedge4.i:                                     ; preds = %Io_WriteVerilogGetName.exit333.i, %.critedge2.preheader.i
  %fwrite198.i = tail call i64 @fwrite(ptr nonnull @.str.16, i64 3, i64 1, ptr nonnull %0) ; 0 uses
  %.pre.i = load ptr, ptr %i.bx, align 8, !tbaa !47
  br label %bb.am

bb.am:                                            ; preds = %.critedge4.i, %.lr.ph643.i
  %i.my = phi ptr [ %i.cf, %.lr.ph643.i ], [ %.pre.i, %.critedge4.i ] ; 2 uses
  %.1162.i = phi i32 [ %.0161642.i, %.lr.ph643.i ], [ %i.cp, %.critedge4.i ]
  %indvars.iv.next681.i = add nuw nsw i64 %indvars.iv680.i, 1 ; 2 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 4
  %.val201.i = load i32, ptr %i.mz, align 4, !tbaa !34
  %i.na = sext i32 %.val201.i to i64
  %i.nb = icmp slt i64 %indvars.iv.next681.i, %i.na
  br i1 %i.nb, label %.lr.ph643.i, label %.critedge.i, !llvm.loop !84

.critedge.i:                                      ; preds = %bb.am, %Abc_Base10Log.exit.i
  %.val255.i = load i32, ptr %i.bt, align 4, !tbaa !28
  %.not.i = icmp eq i32 %.val255.i, 4
  br i1 %.not.i, label %bb.an, label %bb.cd

bb.an:                                            ; preds = %.critedge.i
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !132
  %i.ne = tail call i32 @Mio_LibraryReadGateNameMax(ptr noundef %i.nd) #11 ; 2 uses
  %i.nf = getelementptr i8, ptr %1, i64 124
  %.val256.i = load i32, ptr %i.nf, align 4, !tbaa !43 ; 3 uses
  %i.ng = icmp ult i32 %.val256.i, 2
  br i1 %i.ng, label %Abc_Base10Log.exit340.i, label %.lr.ph.preheader.i334.i

.lr.ph.preheader.i334.i:                          ; preds = %bb.an
  %i.nh = add i32 %.val256.i, -1
  br label %.lr.ph.i335.i

.lr.ph.i335.i:                                    ; preds = %.lr.ph.i335.i, %.lr.ph.preheader.i334.i
  %.013.i336.i = phi i32 [ %i.nj, %.lr.ph.i335.i ], [ 0, %.lr.ph.preheader.i334.i ]
  %.0812.i337.i = phi i32 [ %i.ni, %.lr.ph.i335.i ], [ %i.nh, %.lr.ph.preheader.i334.i ] ; 2 uses
  %i.ni = udiv i32 %.0812.i337.i, 10
  %i.nj = add nuw nsw i32 %.013.i336.i, 1         ; 2 uses
  %.not.i338.i = icmp ult i32 %.0812.i337.i, 10
  br i1 %.not.i338.i, label %Abc_Base10Log.exit340.i, label %.lr.ph.i335.i, !llvm.loop !1

Abc_Base10Log.exit340.i:                          ; preds = %.lr.ph.i335.i, %bb.an
  %.09.i339.i = phi i32 [ %.val256.i, %bb.an ], [ %i.nj, %.lr.ph.i335.i ]
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !52 ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 4
  %.val200657.i = load i32, ptr %i.nm, align 4, !tbaa !34
  %i.nn = icmp sgt i32 %.val200657.i, 0
  br i1 %i.nn, label %.lr.ph660.i, label %Io_WriteVerilogObjects.exit

.lr.ph660.i:                                      ; preds = %Abc_Base10Log.exit340.i, %Io_WriteVerilogIsPrevTwinNode.exit.i
  %indvars.iv692.i = phi i64 [ %indvars.iv.next693.i, %Io_WriteVerilogIsPrevTwinNode.exit.i ], [ 0, %Abc_Base10Log.exit340.i ] ; 2 uses
  %i.no = phi ptr [ %i.afk, %Io_WriteVerilogIsPrevTwinNode.exit.i ], [ %i.nl, %Abc_Base10Log.exit340.i ]
  %.2659.i = phi i32 [ %.5.i, %Io_WriteVerilogIsPrevTwinNode.exit.i ], [ 0, %Abc_Base10Log.exit340.i ] ; 7 uses
  %i.np = getelementptr i8, ptr %i.no, i64 8
  %.val231.val.i = load ptr, ptr %i.np, align 8, !tbaa !35
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.val231.val.i, i64 %indvars.iv692.i
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !36 ; 18 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %Io_WriteVerilogIsPrevTwinNode.exit.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph660.i
  %i.nt = getelementptr i8, ptr %i.nr, i64 20
  %.val235.i = load i32, ptr %i.nt, align 4
  %i.nu = and i32 %.val235.i, 15
  %.not612.i = icmp eq i32 %i.nu, 7
  br i1 %.not612.i, label %bb.ap, label %Io_WriteVerilogIsPrevTwinNode.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 64
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !38 ; 9 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ny = tail call ptr @Mio_GateReadTwin(ptr noundef nonnull %i.nw) #11
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %.loopexit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.oa = getelementptr i8, ptr %i.nr, i64 16
  %.val17.i.i = load i32, ptr %i.oa, align 8, !tbaa !133 ; 2 uses
  %i.ob = icmp eq i32 %.val17.i.i, 0
  br i1 %i.ob, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.oc = load ptr, ptr %i.nr, align 8, !tbaa !50
  %i.od = add i32 %.val17.i.i, -1
  %i.oe = getelementptr i8, ptr %i.oc, i64 32
  %.val.i.i = load ptr, ptr %i.oe, align 8, !tbaa !52
  %i.of = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.val.i.i = load ptr, ptr %i.of, align 8, !tbaa !35
  %i.og = sext i32 %i.od to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %.val.val.i.i, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !36 ; 6 uses
  %i.oj = icmp eq ptr %i.oi, null
  br i1 %i.oj, label %.loopexit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ok = getelementptr i8, ptr %i.oi, i64 20
  %.val15.i.i = load i32, ptr %i.ok, align 4
  %i.ol = and i32 %.val15.i.i, 15
  %.not.i341.i = icmp eq i32 %i.ol, 7
  br i1 %.not.i341.i, label %bb.au, label %.loopexit.i

bb.au:                                            ; preds = %bb.at
  %i.om = tail call ptr @Mio_GateReadTwin(ptr noundef nonnull %i.nw) #11
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !38
  %.not14.i.i = icmp eq ptr %i.om, %i.oo
  br i1 %.not14.i.i, label %bb.av, label %.loopexit.i

bb.av:                                            ; preds = %bb.au
  %i.op = getelementptr i8, ptr %i.oi, i64 28
  %.val13.i.i.i = load i32, ptr %i.op, align 4, !tbaa !54 ; 3 uses
  %i.oq = getelementptr i8, ptr %i.nr, i64 28
  %.val12.i.i.i = load i32, ptr %i.oq, align 4, !tbaa !54
  %.not.i.i.i = icmp eq i32 %.val13.i.i.i, %.val12.i.i.i
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.loopexit.i

.preheader.i.i.i:                                 ; preds = %bb.av
  %i.or = icmp sgt i32 %.val13.i.i.i, 0
  br i1 %i.or, label %.lr.ph.i.i.i, label %Io_WriteVerilogIsPrevTwinNode.exit.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.val16.i.i.i = load ptr, ptr %i.oi, align 8, !tbaa !50
  %i.os = getelementptr i8, ptr %i.oi, i64 32
  %.val17.i.i.i = load ptr, ptr %i.os, align 8, !tbaa !53
  %i.ot = getelementptr i8, ptr %.val16.i.i.i, i64 32
  %.val16.val.i.i.i = load ptr, ptr %i.ot, align 8, !tbaa !52
  %i.ou = getelementptr i8, ptr %.val16.val.i.i.i, i64 8
  %.val16.val.val.i.i.i = load ptr, ptr %i.ou, align 8, !tbaa !35
  %.val14.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !50
  %i.ov = getelementptr i8, ptr %i.nr, i64 32
  %.val15.i.i.i = load ptr, ptr %i.ov, align 8, !tbaa !53
  %i.ow = getelementptr i8, ptr %.val14.i.i.i, i64 32
  %.val14.val.i.i.i = load ptr, ptr %i.ow, align 8, !tbaa !52
  %i.ox = getelementptr i8, ptr %.val14.val.i.i.i, i64 8
  %.val14.val.val.i.i.i = load ptr, ptr %i.ox, align 8, !tbaa !35
  %wide.trip.count.i.i.i = zext nneg i32 %.val13.i.i.i to i64
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ax
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %Io_WriteVerilogIsPrevTwinNode.exit.i, label %bb.ax, !llvm.loop !85

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aw ] ; 3 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i, i64 %indvars.iv.i.i.i
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !43
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %.val16.val.val.i.i.i, i64 %i.pa
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !36
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.val15.i.i.i, i64 %indvars.iv.i.i.i
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !43
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [8 x i8], ptr %.val14.val.val.i.i.i, i64 %i.pf
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !36
  %.not11.i.i.i = icmp eq ptr %i.pc, %i.ph
  br i1 %.not11.i.i.i, label %bb.aw, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ax, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.pi = getelementptr i8, ptr %i.nr, i64 28     ; 2 uses
  %.val239.i = load i32, ptr %i.pi, align 4, !tbaa !54
  %i.pj = icmp eq i32 %.val239.i, 0
  br i1 %i.pj, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %.loopexit.i
  %i.pk = tail call ptr @Mio_GateReadName(ptr noundef %i.nw) #11
  %i.pl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pk, ptr noundef nonnull dereferenceable(9) @.str.61) #12
  %.not185.i = icmp eq i32 %i.pl, 0
  br i1 %.not185.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pm = tail call ptr @Mio_GateReadName(ptr noundef %i.nw) #11
  %i.pn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pm, ptr noundef nonnull dereferenceable(9) @.str.62) #12
  %.not186.i = icmp eq i32 %i.pn, 0
  br i1 %.not186.i, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.val211.i = load ptr, ptr %i.nr, align 8, !tbaa !50
  %i.po = getelementptr i8, ptr %i.nr, i64 48
  %.val212.i = load ptr, ptr %i.po, align 8, !tbaa !51
  %i.pp = getelementptr i8, ptr %.val211.i, i64 32
  %.val211.val.i = load ptr, ptr %i.pp, align 8, !tbaa !52
  %.val212.val.i = load i32, ptr %.val212.i, align 4, !tbaa !43
  %i.pq = getelementptr i8, ptr %.val211.val.i, i64 8
  %.val211.val.val.i = load ptr, ptr %i.pq, align 8, !tbaa !35
  %i.pr = sext i32 %.val212.val.i to i64
  %i.ps = getelementptr inbounds [8 x i8], ptr %.val211.val.val.i, i64 %i.pr
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !36
  %i.pu = tail call ptr @Abc_ObjName(ptr noundef %i.pt) #11 ; 13 uses
  %i.pv = ptrtoaddr ptr %i.pu to i64
  %i.pw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.pu) #12 ; 8 uses
  %i.px = trunc i64 %i.pw to i32                  ; 3 uses
  %i.py = load i8, ptr %i.pu, align 1, !tbaa !38
  %i.pz = add i8 %i.py, -58
  %or.cond.i342.i = icmp ult i8 %i.pz, -10
  br i1 %or.cond.i342.i, label %.preheader.i353.i, label %bb.bd

.preheader.i353.i:                                ; preds = %bb.ba
  %i.qa = icmp sgt i32 %i.px, 0
  br i1 %i.qa, label %.lr.ph.preheader.i356.i, label %._crit_edge.i354.i

.lr.ph.preheader.i356.i:                          ; preds = %.preheader.i353.i
  %wide.trip.count.i357.i = and i64 %i.pw, 2147483647
  br label %.lr.ph.i358.i

.lr.ph.i358.i:                                    ; preds = %bb.bc, %.lr.ph.preheader.i356.i
  %indvars.iv.i359.i = phi i64 [ 0, %.lr.ph.preheader.i356.i ], [ %indvars.iv.next.i364.i, %bb.bc ] ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pu, i64 %indvars.iv.i359.i
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !38  ; 3 uses
  %i.qd = and i8 %i.qc, -33
  %i.qe = add i8 %i.qd, -65
  %or.cond42.i360.i = icmp ult i8 %i.qe, 26
  br i1 %or.cond42.i360.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i358.i
  %i.qf = add i8 %i.qc, -48
  %or.cond40.i361.i = icmp ult i8 %i.qf, 10
  %i.qg = icmp eq i8 %i.qc, 95
  %or.cond41.i362.i = or i1 %i.qg, %or.cond40.i361.i
  br i1 %or.cond41.i362.i, label %bb.bc, label %._crit_edge.loopexit.i363.i

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i358.i
  %indvars.iv.next.i364.i = add nuw nsw i64 %indvars.iv.i359.i, 1 ; 2 uses
  %exitcond.not.i365.i = icmp eq i64 %indvars.iv.next.i364.i, %wide.trip.count.i357.i
  br i1 %exitcond.not.i365.i, label %Io_WriteVerilogGetName.exit366.i, label %.lr.ph.i358.i, !llvm.loop !0

._crit_edge.loopexit.i363.i:                      ; preds = %bb.bb
  %i.qh = trunc nuw nsw i64 %indvars.iv.i359.i to i32
  br label %._crit_edge.i354.i

._crit_edge.i354.i:                               ; preds = %._crit_edge.loopexit.i363.i, %.preheader.i353.i
  %.0.lcssa.i355.i = phi i32 [ 0, %.preheader.i353.i ], [ %i.qh, %._crit_edge.loopexit.i363.i ]
end_hunk_1
begin_hunk_2_@Io_WriteVerilogInt:bb.a
  %i.apc = load ptr, ptr %i.afs, align 8, !tbaa !52 ; 2 uses
  %i.apd = getelementptr i8, ptr %i.apc, i64 4
  %.val199.i = load i32, ptr %i.apd, align 4, !tbaa !34
  %i.ape = sext i32 %.val199.i to i64
  %i.apf = icmp slt i64 %indvars.iv.next687.i, %i.ape
  br i1 %i.apf, label %bb.ce, label %.critedge8.i, !llvm.loop !130

.critedge8.i:                                     ; preds = %.critedge12.i
  %.val11.i.pre.i = load i32, ptr %i.afp, align 4, !tbaa !135 ; 2 uses
  %i.apg = icmp sgt i32 %.val11.i.pre.i, 0
  br i1 %i.apg, label %.lr.ph.i601.i, label %.critedge.i.i

.lr.ph.i601.i:                                    ; preds = %.critedge8.i, %bb.dd
  %.val14.i602.i = phi i32 [ %.val.i606.i, %bb.dd ], [ %.val11.i.pre.i, %.critedge8.i ]
  %indvars.iv.i603.i = phi i64 [ %indvars.iv.next.i607.i, %bb.dd ], [ 0, %.critedge8.i ] ; 2 uses
  %.val8.i.i = load ptr, ptr %i.afr, align 8, !tbaa !137
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %.val8.i.i, i64 %indvars.iv.i603.i
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !36 ; 3 uses
  %.not.i604.i = icmp eq ptr %i.api, null
  br i1 %.not.i604.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i601.i
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !35 ; 2 uses
  %.not.i.i605.i = icmp eq ptr %i.apk, null
  br i1 %.not.i.i605.i, label %Vec_PtrFree.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call void @free(ptr noundef nonnull %i.apk) #11
  br label %Vec_PtrFree.exit.i.i

Vec_PtrFree.exit.i.i:                             ; preds = %bb.dc, %bb.db
  tail call void @free(ptr noundef nonnull %i.api) #11
  %.val.pre.i.i = load i32, ptr %i.afp, align 4, !tbaa !135
  br label %bb.dd

bb.dd:                                            ; preds = %Vec_PtrFree.exit.i.i, %.lr.ph.i601.i
  %.val.i606.i = phi i32 [ %.val14.i602.i, %.lr.ph.i601.i ], [ %.val.pre.i.i, %Vec_PtrFree.exit.i.i ] ; 2 uses
  %indvars.iv.next.i607.i = add nuw nsw i64 %indvars.iv.i603.i, 1 ; 2 uses
  %i.apl = sext i32 %.val.i606.i to i64
  %i.apm = icmp slt i64 %indvars.iv.next.i607.i, %i.apl
  br i1 %i.apm, label %.lr.ph.i601.i, label %.critedge.i.i, !llvm.loop !131

.critedge.i.i:                                    ; preds = %bb.dd, %.critedge8.i, %bb.cd
  %i.apn = load ptr, ptr %i.afr, align 8, !tbaa !35 ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.apn, null
  br i1 %.not.i9.i.i, label %Vec_VecFree.exit.i, label %bb.de

bb.de:                                            ; preds = %.critedge.i.i
  tail call void @free(ptr noundef nonnull %i.apn) #11
  br label %Vec_VecFree.exit.i

Vec_VecFree.exit.i:                               ; preds = %bb.de, %.critedge.i.i
  tail call void @free(ptr noundef nonnull %i.afo) #11
  br label %Io_WriteVerilogObjects.exit

Io_WriteVerilogObjects.exit:                      ; preds = %Io_WriteVerilogIsPrevTwinNode.exit.i, %Abc_Base10Log.exit340.i, %Vec_VecFree.exit.i
  %.val63 = load i32, ptr %i.ay, align 8, !tbaa !43
  %i.apo = icmp sgt i32 %.val63, 0
  br i1 %i.apo, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %Io_WriteVerilogObjects.exit
  tail call fastcc void @Io_WriteVerilogLatches(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.dg

bb.dg:                                            ; preds = %Io_WriteVerilogObjects.exit, %bb.df, %bb.r
  %.not61 = icmp eq i32 %3, 0
  br i1 %.not61, label %Io_WriteVerilogAssigns.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.val16.i = load ptr, ptr %i.bh, align 8, !tbaa !46 ; 2 uses
  %i.app = getelementptr i8, ptr %.val16.i, i64 4
  %.val.val17.i = load i32, ptr %i.app, align 4, !tbaa !34
  %i.apq = icmp sgt i32 %.val.val17.i, 0
  br i1 %i.apq, label %.lr.ph.i78, label %Io_WriteVerilogAssigns.exit

.lr.ph.i78:                                       ; preds = %bb.dh, %bb.dj
  %.val21.i = phi ptr [ %.val.i81, %bb.dj ], [ %.val16.i, %bb.dh ] ; 2 uses
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i82, %bb.dj ], [ 0, %bb.dh ] ; 3 uses
  %i.apr = getelementptr i8, ptr %.val21.i, i64 8
  %.val10.val.i = load ptr, ptr %i.apr, align 8, !tbaa !35
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr %.val10.val.i, i64 %indvars.iv.i79
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !36 ; 2 uses
  %.val13.i = load ptr, ptr %i.apt, align 8, !tbaa !50
  %i.apu = getelementptr i8, ptr %i.apt, i64 32
  %.val14.i = load ptr, ptr %i.apu, align 8, !tbaa !53
  %i.apv = getelementptr i8, ptr %.val13.i, i64 32
  %.val13.val.i = load ptr, ptr %i.apv, align 8, !tbaa !52
  %.val14.val.i = load i32, ptr %.val14.i, align 4, !tbaa !43
  %i.apw = getelementptr i8, ptr %.val13.val.i, i64 8
  %.val13.val.val.i = load ptr, ptr %i.apw, align 8, !tbaa !35
  %i.apx = sext i32 %.val14.val.i to i64
  %i.apy = getelementptr inbounds [8 x i8], ptr %.val13.val.val.i, i64 %i.apx
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !36 ; 3 uses
  %.val11.i = load ptr, ptr %i.apz, align 8, !tbaa !50
  %i.aqa = getelementptr i8, ptr %i.apz, i64 32
  %.val12.i = load ptr, ptr %i.aqa, align 8, !tbaa !53
  %i.aqb = getelementptr i8, ptr %.val11.i, i64 32
  %.val11.val.i = load ptr, ptr %i.aqb, align 8, !tbaa !52
  %.val12.val.i = load i32, ptr %.val12.i, align 4, !tbaa !43
  %i.aqc = getelementptr i8, ptr %.val11.val.i, i64 8
  %.val11.val.val.i = load ptr, ptr %i.aqc, align 8, !tbaa !35
  %i.aqd = sext i32 %.val12.val.i to i64
  %i.aqe = getelementptr inbounds [8 x i8], ptr %.val11.val.val.i, i64 %i.aqd
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !36
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 20
  %.val15.i = load i32, ptr %i.aqg, align 4
  %i.aqh = and i32 %.val15.i, 15
  %.not.i80 = icmp eq i32 %i.aqh, 2
  br i1 %.not.i80, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i78
  %i.aqi = tail call ptr @Abc_ObjName(ptr noundef nonnull %i.apz) #11
  %i.aqj = trunc nuw nsw i64 %indvars.iv.i79 to i32
  %i.aqk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.85, i32 noundef %i.aqj, ptr noundef %i.aqi) #11 ; 0 uses
  %.val.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !46
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.lr.ph.i78
  %.val.i81 = phi ptr [ %.val21.i, %.lr.ph.i78 ], [ %.val.pre.i, %bb.di ] ; 2 uses
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %i.aql = getelementptr i8, ptr %.val.i81, i64 4
  %.val.val.i = load i32, ptr %i.aql, align 4, !tbaa !34
  %i.aqm = sext i32 %.val.val.i to i64
  %i.aqn = icmp slt i64 %indvars.iv.next.i82, %i.aqm
  br i1 %i.aqn, label %.lr.ph.i78, label %Io_WriteVerilogAssigns.exit, !llvm.loop !2

Io_WriteVerilogAssigns.exit:                      ; preds = %bb.dj, %bb.dh, %bb.dg
  %fwrite62 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr nonnull %0) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define void @Io_WriteLutModule(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = shl nuw i32 1, %1
  %i.b = add nsw i32 %1, -1
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %i.a, i32 noundef %i.b) #11 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 25, i64 1, ptr %0) ; 0 uses
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Io_WriteFixedModules(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.8, i64 57, i64 1, ptr %0) ; 0 uses
  %fwrite27 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite28 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite29 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite30 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite31 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite32 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite33 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 13, i64 1, ptr %0) ; 0 uses
  %fwrite34 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 3, i64 1, ptr %0) ; 0 uses
  %fwrite35 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 49, i64 1, ptr %0) ; 0 uses
  %fwrite36 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr %0) ; 0 uses
  %fwrite37 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr %0) ; 0 uses
  %fwrite38 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite39 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite40 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite41 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 12, i64 1, ptr %0) ; 0 uses
  %fwrite42 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 3, i64 1, ptr %0) ; 0 uses
  %fwrite43 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 28, i64 1, ptr %0) ; 0 uses
  %fwrite44 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr %0) ; 0 uses
  %fwrite45 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 15, i64 1, ptr %0) ; 0 uses
  %fwrite46 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite47 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite48 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite49 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 12, i64 1, ptr %0) ; 0 uses
  %fwrite50 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 3, i64 1, ptr %0) ; 0 uses
  %fwrite51 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 28, i64 1, ptr %0) ; 0 uses
  %fwrite52 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Io_WriteVerilogObjectsLut(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %.val244 = load ptr, ptr %i.a, align 8, !tbaa !47 ; 2 uses
  %i.b = getelementptr i8, ptr %.val244, i64 4
  %.val244.val = load i32, ptr %i.b, align 4, !tbaa !34 ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 128
  %.val = load i32, ptr %i.c, align 8, !tbaa !43
  %i.d = sub nsw i32 %.val244.val, %.val          ; 3 uses
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %bb.a
  %i.f = add i32 %i.d, -1
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.preheader.i.a
  %.013.i = phi i32 [ %i.h, %.lr.ph.i.a ], [ 0, %.lr.ph.preheader.i.a ]
  %.0812.i = phi i32 [ %i.g, %.lr.ph.i.a ], [ %i.f, %.lr.ph.preheader.i.a ] ; 2 uses
  %i.g = udiv i32 %.0812.i, 10
  %i.h = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i.a, !llvm.loop !1

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i.a, %bb.a
  %.09.i = phi i32 [ %i.d, %bb.a ], [ %i.h, %.lr.ph.i.a ]
  %i.i = icmp sgt i32 %.val244.val, 0
  br i1 %i.i, label %.lr.ph564.a, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.q, %Abc_Base10Log.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val186569 = load i32, ptr %i.l, align 4, !tbaa !34
  %i.m = icmp sgt i32 %.val186569, 0
  br i1 %i.m, label %.lr.ph572, label %.critedge6

.lr.ph564.a:                                      ; preds = %Abc_Base10Log.exit, %bb.q
  %i.n = phi ptr [ %i.kg, %bb.q ], [ %.val244, %Abc_Base10Log.exit ] ; 2 uses
  %indvars.iv621 = phi i64 [ %indvars.iv.next622, %bb.q ], [ 0, %Abc_Base10Log.exit ] ; 2 uses
  %.0156563 = phi i32 [ %.1157, %bb.q ], [ 0, %Abc_Base10Log.exit ] ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val213.val = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val213.val, i64 %indvars.iv621
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 20
  %.val214 = load i32, ptr %i.r, align 4
  %i.s = and i32 %.val214, 15
  %.not533 = icmp eq i32 %i.s, 8
  br i1 %.not533, label %bb.q, label %bb.b

bb.b:                                             ; preds = %.lr.ph564.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = add nsw i32 %.0156563, 1
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %i.w, i32 noundef %.09.i, i32 noundef %.0156563) #11 ; 0 uses
  %fputc = tail call i32 @fputc(i32 40, ptr %0)   ; 0 uses
  %i.z = getelementptr i8, ptr %i.u, i64 40       ; 2 uses
  %.val188552 = load ptr, ptr %i.z, align 8, !tbaa !45 ; 2 uses
  %i.aa = getelementptr i8, ptr %.val188552, i64 4
  %.val188.val553 = load i32, ptr %i.aa, align 4, !tbaa !34
  %i.ab = icmp sgt i32 %.val188.val553, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge2.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.ac = getelementptr i8, ptr %i.q, i64 32
  br label %bb.c

.critedge2.preheader:                             ; preds = %Io_WriteVerilogGetName.exit272, %bb.b
  %i.ad = getelementptr i8, ptr %i.u, i64 48      ; 3 uses
  %.val203556 = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val203556, i64 4
  %.val203.val557 = load i32, ptr %i.ae, align 4, !tbaa !34
  %i.af = icmp sgt i32 %.val203.val557, 0
  br i1 %i.af, label %.lr.ph560, label %.critedge4

.lr.ph560:                                        ; preds = %.critedge2.preheader
  %i.ag = getelementptr i8, ptr %i.q, i64 48
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %Io_WriteVerilogGetName.exit272
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Io_WriteVerilogGetName.exit272 ] ; 3 uses
  %.val188555 = phi ptr [ %.val188552, %.lr.ph ], [ %.val188, %Io_WriteVerilogGetName.exit272 ]
  %i.ah = getelementptr i8, ptr %.val188555, i64 8
  %.val189.val = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val189.val, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %.val200 = load ptr, ptr %i.aj, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.aj, i64 48
  %.val201 = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.al = getelementptr i8, ptr %.val200, i64 32
  %.val200.val = load ptr, ptr %i.al, align 8, !tbaa !52
  %.val201.val = load i32, ptr %.val201, align 4, !tbaa !43
  %i.am = getelementptr i8, ptr %.val200.val, i64 8
  %.val200.val.val = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.an = sext i32 %.val201.val to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val200.val.val, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.aq = tail call ptr @Abc_ObjName(ptr noundef %i.ap) #11 ; 13 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aq) #12 ; 8 uses
  %i.at = trunc i64 %i.as to i32                  ; 3 uses
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !38
  %i.av = add i8 %i.au, -58
  %or.cond.i = icmp ult i8 %i.av, -10
  br i1 %or.cond.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.c
  %i.aw = icmp sgt i32 %i.at, 0
  br i1 %i.aw, label %.lr.ph.preheader.i246, label %._crit_edge.i

.lr.ph.preheader.i246:                            ; preds = %.preheader.i
  %wide.trip.count.i = and i64 %i.as, 2147483647
  br label %.lr.ph.i247

.lr.ph.i247:                                      ; preds = %bb.e, %.lr.ph.preheader.i246
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i246 ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !38  ; 3 uses
  %i.az = and i8 %i.ay, -33
  %i.ba = add i8 %i.az, -65
  %or.cond42.i = icmp ult i8 %i.ba, 26
  br i1 %or.cond42.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i247
  %i.bb = add i8 %i.ay, -48
  %or.cond40.i = icmp ult i8 %i.bb, 10
  %i.bc = icmp eq i8 %i.ay, 95
  %or.cond41.i = or i1 %i.bc, %or.cond40.i
  br i1 %or.cond41.i, label %bb.e, label %._crit_edge.loopexit.i

bb.e:                                             ; preds = %bb.d, %.lr.ph.i247
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Io_WriteVerilogGetName.exit, label %.lr.ph.i247, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %i.bd = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bd, %._crit_edge.loopexit.i ]
  %i.be = icmp eq i32 %.0.lcssa.i, %i.at
  br i1 %i.be, label %Io_WriteVerilogGetName.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.c
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.bf = icmp sgt i32 %i.at, 0
  br i1 %i.bf, label %iter.check766, label %._crit_edge49.i

iter.check766:                                    ; preds = %bb.f
  %wide.trip.count54.i = and i64 %i.as, 2147483647 ; 6 uses
  %min.iters.check753 = icmp samesign ult i64 %wide.trip.count54.i, 8
  %i.bg = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.ar
  %diff.check752 = icmp ult i64 %i.bg, 31
  %or.cond = or i1 %min.iters.check753, %diff.check752
  br i1 %or.cond, label %.lr.ph48.i.preheader, label %vector.main.loop.iter.check754

vector.main.loop.iter.check754:                   ; preds = %iter.check766
  %min.iters.check755 = icmp samesign ult i64 %wide.trip.count54.i, 32
  br i1 %min.iters.check755, label %vec.epilog.ph770, label %vector.ph756

vector.ph756:                                     ; preds = %vector.main.loop.iter.check754
  %i.bh = and i64 %i.as, 24
  %n.vec757 = and i64 %i.as, 2147483616           ; 4 uses
  br label %vector.body758

vector.body758:                                   ; preds = %vector.body758, %vector.ph756
  %index759 = phi i64 [ 0, %vector.ph756 ], [ %index.next762, %vector.body758 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index759 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load760 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !38
  %wide.load761 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index759 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 17
  store <16 x i8> %wide.load760, ptr %i.bl, align 1, !tbaa !38
  store <16 x i8> %wide.load761, ptr %i.bm, align 1, !tbaa !38
  %index.next762 = add nuw i64 %index759, 32      ; 2 uses
  %i.bn = icmp eq i64 %index.next762, %n.vec757
  br i1 %i.bn, label %middle.block763, label %vector.body758, !llvm.loop !138

middle.block763:                                  ; preds = %vector.body758
  %cmp.n764 = icmp eq i64 %wide.trip.count54.i, %n.vec757
  br i1 %cmp.n764, label %._crit_edge49.i, label %vec.epilog.iter.check768

vec.epilog.iter.check768:                         ; preds = %middle.block763
  %min.epilog.iters.check769 = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check769, label %.lr.ph48.i.preheader, label %vec.epilog.ph770, !prof !41

vec.epilog.ph770:                                 ; preds = %vector.main.loop.iter.check754, %vec.epilog.iter.check768
  %vec.epilog.resume.val765 = phi i64 [ %n.vec757, %vec.epilog.iter.check768 ], [ 0, %vector.main.loop.iter.check754 ]
  %n.vec771 = and i64 %i.as, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body772

vec.epilog.vector.body772:                        ; preds = %vec.epilog.vector.body772, %vec.epilog.ph770
  %index773 = phi i64 [ %vec.epilog.resume.val765, %vec.epilog.ph770 ], [ %index.next775, %vec.epilog.vector.body772 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index773
  %wide.load774 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index773
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store <8 x i8> %wide.load774, ptr %i.bq, align 1, !tbaa !38
  %index.next775 = add nuw i64 %index773, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next775, %n.vec771
  br i1 %i.br, label %vec.epilog.middle.block776, label %vec.epilog.vector.body772, !llvm.loop !139

vec.epilog.middle.block776:                       ; preds = %vec.epilog.vector.body772
  %cmp.n777 = icmp eq i64 %wide.trip.count54.i, %n.vec771
  br i1 %cmp.n777, label %._crit_edge49.i, label %.lr.ph48.i.preheader

.lr.ph48.i.preheader:                             ; preds = %iter.check766, %vec.epilog.iter.check768, %vec.epilog.middle.block776
  %indvars.iv51.i.ph = phi i64 [ 0, %iter.check766 ], [ %n.vec757, %vec.epilog.iter.check768 ], [ %n.vec771, %vec.epilog.middle.block776 ] ; 3 uses
  %xtraiter = and i64 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.i.preheader, %.lr.ph48.i.prol
end_hunk_2
begin_hunk_3_@Io_WriteVerilogObjectsLut:bb.a

.lr.ph.preheader.i362:                            ; preds = %.preheader.i359
  %wide.trip.count.i363 = and i64 %i.nk, 2147483647
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %bb.y, %.lr.ph.preheader.i362
  %indvars.iv.i365 = phi i64 [ 0, %.lr.ph.preheader.i362 ], [ %indvars.iv.next.i370, %bb.y ] ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv.i365
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !38  ; 3 uses
  %i.nr = and i8 %i.nq, -33
  %i.ns = add i8 %i.nr, -65
  %or.cond42.i366 = icmp ult i8 %i.ns, 26
  br i1 %or.cond42.i366, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i364
  %i.nt = add i8 %i.nq, -48
  %or.cond40.i367 = icmp ult i8 %i.nt, 10
  %i.nu = icmp eq i8 %i.nq, 95
  %or.cond41.i368 = or i1 %i.nu, %or.cond40.i367
  br i1 %or.cond41.i368, label %bb.y, label %._crit_edge.loopexit.i369

bb.y:                                             ; preds = %bb.x, %.lr.ph.i364
  %indvars.iv.next.i370 = add nuw nsw i64 %indvars.iv.i365, 1 ; 2 uses
  %exitcond.not.i371 = icmp eq i64 %indvars.iv.next.i370, %wide.trip.count.i363
  br i1 %exitcond.not.i371, label %Io_WriteVerilogGetName.exit372, label %.lr.ph.i364, !llvm.loop !0

._crit_edge.loopexit.i369:                        ; preds = %bb.x
  %i.nv = trunc nuw nsw i64 %indvars.iv.i365 to i32
  br label %._crit_edge.i360

._crit_edge.i360:                                 ; preds = %._crit_edge.loopexit.i369, %.preheader.i359
  %.0.lcssa.i361 = phi i32 [ 0, %.preheader.i359 ], [ %i.nv, %._crit_edge.loopexit.i369 ]
  %i.nw = icmp eq i32 %.0.lcssa.i361, %i.nl
  br i1 %i.nw, label %Io_WriteVerilogGetName.exit372, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i360, %bb.w
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.nx = icmp sgt i32 %i.nl, 0
  br i1 %i.nx, label %iter.check794, label %._crit_edge49.i349

iter.check794:                                    ; preds = %bb.z
  %wide.trip.count54.i354 = and i64 %i.nk, 2147483647 ; 6 uses
  %min.iters.check781 = icmp samesign ult i64 %wide.trip.count54.i354, 8
  %i.ny = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.nj
  %diff.check780 = icmp ult i64 %i.ny, 31
  %or.cond1007.a = or i1 %min.iters.check781, %diff.check780
  br i1 %or.cond1007.a, label %.lr.ph48.i355.preheader, label %vector.main.loop.iter.check782

vector.main.loop.iter.check782:                   ; preds = %iter.check794
  %min.iters.check783 = icmp samesign ult i64 %wide.trip.count54.i354, 32
  br i1 %min.iters.check783, label %vec.epilog.ph798, label %vector.ph784

vector.ph784:                                     ; preds = %vector.main.loop.iter.check782
  %i.nz = and i64 %i.nk, 24
  %n.vec785 = and i64 %i.nk, 2147483616           ; 4 uses
  br label %vector.body786

vector.body786:                                   ; preds = %vector.body786, %vector.ph784
  %index787 = phi i64 [ 0, %vector.ph784 ], [ %index.next790, %vector.body786 ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ni, i64 %index787 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %wide.load788 = load <16 x i8>, ptr %i.oa, align 1, !tbaa !38
  %wide.load789 = load <16 x i8>, ptr %i.ob, align 1, !tbaa !38
  %i.oc = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index787 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 17
  store <16 x i8> %wide.load788, ptr %i.od, align 1, !tbaa !38
  store <16 x i8> %wide.load789, ptr %i.oe, align 1, !tbaa !38
  %index.next790 = add nuw i64 %index787, 32      ; 2 uses
  %i.of = icmp eq i64 %index.next790, %n.vec785
  br i1 %i.of, label %middle.block791, label %vector.body786, !llvm.loop !161

middle.block791:                                  ; preds = %vector.body786
  %cmp.n792 = icmp eq i64 %wide.trip.count54.i354, %n.vec785
  br i1 %cmp.n792, label %._crit_edge49.i349, label %vec.epilog.iter.check796

vec.epilog.iter.check796:                         ; preds = %middle.block791
  %min.epilog.iters.check797 = icmp eq i64 %i.nz, 0
  br i1 %min.epilog.iters.check797, label %.lr.ph48.i355.preheader, label %vec.epilog.ph798, !prof !41

vec.epilog.ph798:                                 ; preds = %vector.main.loop.iter.check782, %vec.epilog.iter.check796
  %vec.epilog.resume.val793 = phi i64 [ %n.vec785, %vec.epilog.iter.check796 ], [ 0, %vector.main.loop.iter.check782 ]
  %n.vec799 = and i64 %i.nk, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body800

vec.epilog.vector.body800:                        ; preds = %vec.epilog.vector.body800, %vec.epilog.ph798
  %index801 = phi i64 [ %vec.epilog.resume.val793, %vec.epilog.ph798 ], [ %index.next803, %vec.epilog.vector.body800 ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ni, i64 %index801
  %wide.load802 = load <8 x i8>, ptr %i.og, align 1, !tbaa !38
  %i.oh = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index801
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  store <8 x i8> %wide.load802, ptr %i.oi, align 1, !tbaa !38
  %index.next803 = add nuw i64 %index801, 8       ; 2 uses
  %i.oj = icmp eq i64 %index.next803, %n.vec799
  br i1 %i.oj, label %vec.epilog.middle.block804, label %vec.epilog.vector.body800, !llvm.loop !162

vec.epilog.middle.block804:                       ; preds = %vec.epilog.vector.body800
  %cmp.n805 = icmp eq i64 %wide.trip.count54.i354, %n.vec799
  br i1 %cmp.n805, label %._crit_edge49.i349, label %.lr.ph48.i355.preheader

.lr.ph48.i355.preheader:                          ; preds = %iter.check794, %vec.epilog.iter.check796, %vec.epilog.middle.block804
  %indvars.iv51.i356.ph = phi i64 [ 0, %iter.check794 ], [ %n.vec785, %vec.epilog.iter.check796 ], [ %n.vec799, %vec.epilog.middle.block804 ] ; 3 uses
  %xtraiter1044 = and i64 %i.nk, 3                ; 2 uses
  %lcmp.mod1045.not = icmp eq i64 %xtraiter1044, 0
  br i1 %lcmp.mod1045.not, label %.lr.ph48.i355.prol.loopexit, label %.lr.ph48.i355.prol

.lr.ph48.i355.prol:                               ; preds = %.lr.ph48.i355.preheader, %.lr.ph48.i355.prol
  %indvars.iv51.i356.prol = phi i64 [ %indvars.iv.next52.i357.prol, %.lr.ph48.i355.prol ], [ %indvars.iv51.i356.ph, %.lr.ph48.i355.preheader ] ; 2 uses
  %prol.iter1046 = phi i64 [ %prol.iter1046.next, %.lr.ph48.i355.prol ], [ 0, %.lr.ph48.i355.preheader ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv51.i356.prol
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !38
  %indvars.iv.next52.i357.prol = add nuw nsw i64 %indvars.iv51.i356.prol, 1 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357.prol
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !38
  %prol.iter1046.next = add i64 %prol.iter1046, 1 ; 2 uses
  %prol.iter1046.cmp.not = icmp eq i64 %prol.iter1046.next, %xtraiter1044
  br i1 %prol.iter1046.cmp.not, label %.lr.ph48.i355.prol.loopexit, label %.lr.ph48.i355.prol, !llvm.loop !163

.lr.ph48.i355.prol.loopexit:                      ; preds = %.lr.ph48.i355.prol, %.lr.ph48.i355.preheader
  %indvars.iv51.i356.unr = phi i64 [ %indvars.iv51.i356.ph, %.lr.ph48.i355.preheader ], [ %indvars.iv.next52.i357.prol, %.lr.ph48.i355.prol ]
  %i.on = sub nsw i64 %indvars.iv51.i356.ph, %wide.trip.count54.i354
  %i.oo = icmp ugt i64 %i.on, -4
  br i1 %i.oo, label %._crit_edge49.i349, label %.lr.ph48.i355

.lr.ph48.i355:                                    ; preds = %.lr.ph48.i355.prol.loopexit, %.lr.ph48.i355
  %indvars.iv51.i356 = phi i64 [ %indvars.iv.next52.i357.3, %.lr.ph48.i355 ], [ %indvars.iv51.i356.unr, %.lr.ph48.i355.prol.loopexit ] ; 5 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv51.i356
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !38
  %indvars.iv.next52.i357 = add nuw nsw i64 %indvars.iv51.i356, 1 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !38
  %i.os = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv.next52.i357
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !38
  %indvars.iv.next52.i357.1 = add nuw nsw i64 %indvars.iv51.i356, 2 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357.1
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !38
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv.next52.i357.1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !38
  %indvars.iv.next52.i357.2 = add nuw nsw i64 %indvars.iv51.i356, 3 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357.2
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !38
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ni, i64 %indvars.iv.next52.i357.2
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !38
  %indvars.iv.next52.i357.3 = add nuw nsw i64 %indvars.iv51.i356, 4 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %indvars.iv.next52.i357.3
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !38
  %exitcond55.not.i358.3 = icmp eq i64 %indvars.iv.next52.i357.3, %wide.trip.count54.i354
  br i1 %exitcond55.not.i358.3, label %._crit_edge49.i349, label %.lr.ph48.i355, !llvm.loop !164

._crit_edge49.i349:                               ; preds = %.lr.ph48.i355.prol.loopexit, %.lr.ph48.i355, %middle.block791, %vec.epilog.middle.block804, %bb.z
  %i.pb = shl i64 %i.nk, 32                       ; 2 uses
  %sext.i350 = add i64 %i.pb, 4294967296
  %i.pc = ashr exact i64 %sext.i350, 32
  %i.pd = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.pc
  store i8 32, ptr %i.pd, align 1, !tbaa !38
  %sext37.i351 = add i64 %i.pb, 8589934592
  %i.pe = ashr exact i64 %sext37.i351, 32
  %i.pf = getelementptr inbounds i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %i.pe
  store i8 0, ptr %i.pf, align 1, !tbaa !38
  br label %Io_WriteVerilogGetName.exit372

Io_WriteVerilogGetName.exit372:                   ; preds = %bb.y, %._crit_edge.i360, %._crit_edge49.i349
  %.031.i352 = phi ptr [ @Io_WriteVerilogGetName.Buffer, %._crit_edge49.i349 ], [ %i.ni, %._crit_edge.i360 ], [ %i.ni, %bb.y ]
  %i.pg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.031.i352) #12
  %i.ph = trunc i64 %i.pg to i32
  %i.pi = tail call noundef i32 @llvm.smax.i32(i32 %.1567, i32 %i.ph) ; 2 uses
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1 ; 2 uses
  %.val227 = load i32, ptr %i.my, align 4, !tbaa !54
  %i.pj = sext i32 %.val227 to i64
  %i.pk = icmp slt i64 %indvars.iv.next625, %i.pj
  br i1 %i.pk, label %bb.w, label %.critedge8, !llvm.loop !165

.critedge8:                                       ; preds = %Io_WriteVerilogGetName.exit372, %Io_WriteVerilogGetName.exit347, %bb.r, %.lr.ph572
  %.2 = phi i32 [ %.0571, %.lr.ph572 ], [ %.0571, %bb.r ], [ %i.mx, %Io_WriteVerilogGetName.exit347 ], [ %i.pi, %Io_WriteVerilogGetName.exit372 ] ; 2 uses
  %indvars.iv.next628 = add nuw nsw i64 %indvars.iv627, 1 ; 2 uses
  %i.pl = load ptr, ptr %i.j, align 8, !tbaa !52  ; 3 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 4
  %.val186 = load i32, ptr %i.pm, align 4, !tbaa !34 ; 2 uses
  %i.pn = sext i32 %.val186 to i64
  %i.po = icmp slt i64 %indvars.iv.next628, %i.pn
  br i1 %i.po, label %.lr.ph572, label %.critedge6.loopexit, !llvm.loop !166

.critedge6.loopexit:                              ; preds = %.critedge8
  %i.pp = icmp sgt i32 %.val186, 0
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge.preheader
  %.val184596 = phi i1 [ false, %.critedge.preheader ], [ %i.pp, %.critedge6.loopexit ] ; 2 uses
  %i.pq = phi ptr [ %i.k, %.critedge.preheader ], [ %i.pl, %.critedge6.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.critedge.preheader ], [ %.2, %.critedge6.loopexit ] ; 8 uses
  %i.pr = getelementptr i8, ptr %1, i64 124
  %.val245 = load i32, ptr %i.pr, align 4, !tbaa !43 ; 3 uses
  %i.ps = icmp ult i32 %.val245, 2
  br i1 %i.ps, label %Abc_Base10Log.exit379, label %.lr.ph.preheader.i373

.lr.ph.preheader.i373:                            ; preds = %.critedge6
  %i.pt = add i32 %.val245, -1
  br label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %.lr.ph.i374, %.lr.ph.preheader.i373
  %.013.i375 = phi i32 [ %i.pv, %.lr.ph.i374 ], [ 0, %.lr.ph.preheader.i373 ]
  %.0812.i376 = phi i32 [ %i.pu, %.lr.ph.i374 ], [ %i.pt, %.lr.ph.preheader.i373 ] ; 2 uses
  %i.pu = udiv i32 %.0812.i376, 10
  %i.pv = add nuw nsw i32 %.013.i375, 1           ; 2 uses
  %.not.i377 = icmp ult i32 %.0812.i376, 10
  br i1 %.not.i377, label %Abc_Base10Log.exit379, label %.lr.ph.i374, !llvm.loop !1

Abc_Base10Log.exit379:                            ; preds = %.lr.ph.i374, %.critedge6
  %.09.i378 = phi i32 [ %.val245, %.critedge6 ], [ %i.pv, %.lr.ph.i374 ] ; 3 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.preheader534, label %.preheader536

.preheader536:                                    ; preds = %Abc_Base10Log.exit379
  br i1 %.val184596, label %.lr.ph586, label %.critedge10

.preheader534:                                    ; preds = %Abc_Base10Log.exit379
  br i1 %.val184596, label %.lr.ph599, label %.critedge10

.lr.ph599:                                        ; preds = %.preheader534
  %i.pw = shl nuw i32 1, %2                       ; 2 uses
  %i.px = icmp eq i32 %2, 6
  %i.py = add nsw i32 %2, -2
  %i.pz = shl nuw i32 1, %i.py
  %i.qa = sub nsw i32 32, %i.pw
  %i.qb = lshr i32 -1, %i.qa
  br label %bb.au

.lr.ph586:                                        ; preds = %.preheader536, %bb.at
  %indvars.iv636 = phi i64 [ %indvars.iv.next637, %bb.at ], [ 0, %.preheader536 ] ; 2 uses
  %i.qc = phi ptr [ %i.abk, %bb.at ], [ %i.pq, %.preheader536 ]
  %.2158585 = phi i32 [ %.3, %bb.at ], [ 0, %.preheader536 ] ; 5 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 8
  %.val216.val = load ptr, ptr %i.qd, align 8, !tbaa !35
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.val216.val, i64 %indvars.iv636
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !36 ; 14 uses
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %bb.at, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph586
  %i.qh = getelementptr i8, ptr %i.qf, i64 20
  %.val219 = load i32, ptr %i.qh, align 4         ; 2 uses
  %i.qi = and i32 %.val219, 15
  %.not530 = icmp eq i32 %i.qi, 7
  br i1 %.not530, label %bb.ab, label %bb.at

bb.ab:                                            ; preds = %bb.aa
  %i.qj = and i32 %.val219, 512
  %.not176 = icmp eq i32 %i.qj, 0
  br i1 %.not176, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val238 = load ptr, ptr %i.qf, align 8, !tbaa !50
  %i.qk = getelementptr i8, ptr %i.qf, i64 32     ; 2 uses
  %.val239 = load ptr, ptr %i.qk, align 8, !tbaa !53 ; 2 uses
  %i.ql = getelementptr i8, ptr %.val238, i64 32
  %.val238.val = load ptr, ptr %i.ql, align 8, !tbaa !52
  %i.qm = getelementptr i8, ptr %.val238.val, i64 8
  %.val238.val.val = load ptr, ptr %i.qm, align 8, !tbaa !35 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.val239, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !43
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %.val238.val.val, i64 %i.qp
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !36 ; 2 uses
  %.val207 = load ptr, ptr %i.qr, align 8, !tbaa !50
  %i.qs = getelementptr i8, ptr %i.qr, i64 32
  %.val208 = load ptr, ptr %i.qs, align 8, !tbaa !53
  %i.qt = getelementptr i8, ptr %.val207, i64 32
  %.val207.val = load ptr, ptr %i.qt, align 8, !tbaa !52
  %.val208.val = load i32, ptr %.val208, align 4, !tbaa !43
  %i.qu = getelementptr i8, ptr %.val207.val, i64 8
  %.val207.val.val = load ptr, ptr %i.qu, align 8, !tbaa !35
  %i.qv = sext i32 %.val208.val to i64
  %i.qw = getelementptr inbounds [8 x i8], ptr %.val207.val.val, i64 %i.qv
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !36
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 20
  %i.qz = load i32, ptr %i.qy, align 4
  %i.ra = and i32 %i.qz, 512
  %.not178 = icmp eq i32 %i.ra, 0
  br i1 %.not178, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rb = getelementptr inbounds nuw i8, ptr %.val239, i64 8
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !43
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %.val238.val.val, i64 %i.rd
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !36 ; 2 uses
  %.val205 = load ptr, ptr %i.rf, align 8, !tbaa !50
  %i.rg = getelementptr i8, ptr %i.rf, i64 32
  %.val206 = load ptr, ptr %i.rg, align 8, !tbaa !53
  %i.rh = getelementptr i8, ptr %.val205, i64 32
  %.val205.val = load ptr, ptr %i.rh, align 8, !tbaa !52
  %.val206.val = load i32, ptr %.val206, align 4, !tbaa !43
  %i.ri = getelementptr i8, ptr %.val205.val, i64 8
  %.val205.val.val = load ptr, ptr %i.ri, align 8, !tbaa !35
  %i.rj = sext i32 %.val206.val to i64
  %i.rk = getelementptr inbounds [8 x i8], ptr %.val205.val.val, i64 %i.rj
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !36
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 20
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = lshr i32 %i.rn, 9
  %.lobit = and i32 %i.ro, 1
  %i.rp = add nuw nsw i32 %.lobit, 7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.rq = phi i32 [ 7, %bb.ac ], [ %i.rp, %bb.ad ]
  %i.rr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %i.rq) #11 ; 0 uses
  %i.rs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %.09.i378, i32 noundef %.2158585) #11 ; 0 uses
  %.val194 = load ptr, ptr %i.qf, align 8, !tbaa !50
  %i.rt = getelementptr i8, ptr %i.qf, i64 48
  %.val195 = load ptr, ptr %i.rt, align 8, !tbaa !51
  %i.ru = getelementptr i8, ptr %.val194, i64 32
  %.val194.val = load ptr, ptr %i.ru, align 8, !tbaa !52
  %.val195.val = load i32, ptr %.val195, align 4, !tbaa !43
  %i.rv = getelementptr i8, ptr %.val194.val, i64 8
  %.val194.val.val = load ptr, ptr %i.rv, align 8, !tbaa !35
  %i.rw = sext i32 %.val195.val to i64
  %i.rx = getelementptr inbounds [8 x i8], ptr %.val194.val.val, i64 %i.rw
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !36
  %i.rz = tail call ptr @Abc_ObjName(ptr noundef %i.ry) #11 ; 13 uses
  %i.sa = ptrtoaddr ptr %i.rz to i64
  %i.sb = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.rz) #12 ; 8 uses
  %i.sc = trunc i64 %i.sb to i32                  ; 3 uses
  %i.sd = load i8, ptr %i.rz, align 1, !tbaa !38
  %i.se = add i8 %i.sd, -58
  %or.cond.i380 = icmp ult i8 %i.se, -10
  br i1 %or.cond.i380, label %.preheader.i391, label %bb.ah

.preheader.i391:                                  ; preds = %bb.ae
  %i.sf = icmp sgt i32 %i.sc, 0
  br i1 %i.sf, label %.lr.ph.preheader.i394, label %._crit_edge.i392

.lr.ph.preheader.i394:                            ; preds = %.preheader.i391
  %wide.trip.count.i395 = and i64 %i.sb, 2147483647
  br label %.lr.ph.i396

.lr.ph.i396:                                      ; preds = %bb.ag, %.lr.ph.preheader.i394
  %indvars.iv.i397 = phi i64 [ 0, %.lr.ph.preheader.i394 ], [ %indvars.iv.next.i402, %bb.ag ] ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 %indvars.iv.i397
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !38  ; 3 uses
  %i.si = and i8 %i.sh, -33
  %i.sj = add i8 %i.si, -65
  %or.cond42.i398 = icmp ult i8 %i.sj, 26
  br i1 %or.cond42.i398, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i396
  %i.sk = add i8 %i.sh, -48
  %or.cond40.i399 = icmp ult i8 %i.sk, 10
  %i.sl = icmp eq i8 %i.sh, 95
  %or.cond41.i400 = or i1 %i.sl, %or.cond40.i399
  br i1 %or.cond41.i400, label %bb.ag, label %._crit_edge.loopexit.i401

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i396
  %indvars.iv.next.i402 = add nuw nsw i64 %indvars.iv.i397, 1 ; 2 uses
  %exitcond.not.i403 = icmp eq i64 %indvars.iv.next.i402, %wide.trip.count.i395
  br i1 %exitcond.not.i403, label %Io_WriteVerilogGetName.exit404, label %.lr.ph.i396, !llvm.loop !0

._crit_edge.loopexit.i401:                        ; preds = %bb.af
  %i.sm = trunc nuw nsw i64 %indvars.iv.i397 to i32
  br label %._crit_edge.i392

._crit_edge.i392:                                 ; preds = %._crit_edge.loopexit.i401, %.preheader.i391
  %.0.lcssa.i393 = phi i32 [ 0, %.preheader.i391 ], [ %i.sm, %._crit_edge.loopexit.i401 ]
  %i.sn = icmp eq i32 %.0.lcssa.i393, %i.sc
  br i1 %i.sn, label %Io_WriteVerilogGetName.exit404, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i392, %bb.ae
  store i8 92, ptr @Io_WriteVerilogGetName.Buffer, align 16, !tbaa !38
  %i.so = icmp sgt i32 %i.sc, 0
  br i1 %i.so, label %iter.check934, label %._crit_edge49.i381

iter.check934:                                    ; preds = %bb.ah
  %wide.trip.count54.i386 = and i64 %i.sb, 2147483647 ; 6 uses
  %min.iters.check921 = icmp samesign ult i64 %wide.trip.count54.i386, 8
  %i.sp = sub i64 ptrtoaddr (ptr @Io_WriteVerilogGetName.Buffer to i64), %i.sa
  %diff.check920 = icmp ult i64 %i.sp, 31
  %or.cond1008.a = or i1 %min.iters.check921, %diff.check920
  br i1 %or.cond1008.a, label %.lr.ph48.i387.preheader, label %vector.main.loop.iter.check922

vector.main.loop.iter.check922:                   ; preds = %iter.check934
  %min.iters.check923 = icmp samesign ult i64 %wide.trip.count54.i386, 32
  br i1 %min.iters.check923, label %vec.epilog.ph938, label %vector.ph924

vector.ph924:                                     ; preds = %vector.main.loop.iter.check922
  %i.sq = and i64 %i.sb, 24
  %n.vec925 = and i64 %i.sb, 2147483616           ; 4 uses
  br label %vector.body926

vector.body926:                                   ; preds = %vector.body926, %vector.ph924
  %index927 = phi i64 [ 0, %vector.ph924 ], [ %index.next930, %vector.body926 ] ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rz, i64 %index927 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %wide.load928 = load <16 x i8>, ptr %i.sr, align 1, !tbaa !38
  %wide.load929 = load <16 x i8>, ptr %i.ss, align 1, !tbaa !38
  %i.st = getelementptr inbounds nuw i8, ptr @Io_WriteVerilogGetName.Buffer, i64 %index927 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 17
  store <16 x i8> %wide.load928, ptr %i.su, align 1, !tbaa !38
  store <16 x i8> %wide.load929, ptr %i.sv, align 1, !tbaa !38
  %index.next930 = add nuw i64 %index927, 32      ; 2 uses
  %i.sw = icmp eq i64 %index.next930, %n.vec925
  br i1 %i.sw, label %middle.block931, label %vector.body926, !llvm.loop !167
end_hunk_3
