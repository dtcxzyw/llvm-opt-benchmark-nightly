Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSimBase?download=true
inline.NumInlined: 1796
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 133
begin_hunk_0_@Gia_ManSimPatSim2:bb.a
  %n.vec = and i64 %wide.trip.count24.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i.i
  %xtraiter141 = and i64 %wide.trip.count24.i.i, 3 ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %Abc_TtCopy.exit27.loopexit.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next.i, %Abc_TtCopy.exit27.loopexit.us.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val21.val.i, i64 %indvars.iv.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62 ; 2 uses
  %.not.us.i = icmp eq i32 %i.ab, 0
  br i1 %.not.us.i, label %Gia_ManSimPatAssignInputs2.exit, label %.lr.ph18.preheader.i.us.i

.lr.ph18.preheader.i.us.i:                        ; preds = %.lr.ph.split.us.i
  %i.ac = mul i32 %i.h, %i.ab
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.o, i64 %i.ad ; 7 uses
  %i.af = mul nuw nsw i64 %indvars.iv.i, %wide.trip.count24.i.i
  %.val25.us.i = load ptr, ptr %i.w, align 8, !tbaa !65 ; 2 uses
  %.val25.us.i75 = ptrtoaddr ptr %.val25.us.i to i64 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val25.us.i, i64 %i.af ; 12 uses
  br i1 %min.iters.check80, label %.lr.ph18.i.us.i.preheader, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph18.preheader.i.us.i
  %i.ah = mul i64 %indvars.iv.i, %i.y
  %i.ai = add i64 %i.ah, %i.p
  %i.aj = shl nsw i64 %i.ad, 3
  %i.ak = add i64 %i.ai, %i.aj
  %i.al = sub i64 %.val25.us.i75, %i.ak
  %diff.check82 = icmp ugt i64 %i.al, -32
  br i1 %diff.check82, label %.lr.ph18.i.us.i.preheader, label %vector.body85

vector.body85:                                    ; preds = %vector.memcheck81, %vector.body85
  %index86 = phi i64 [ %index.next89, %vector.body85 ], [ 0, %vector.memcheck81 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index86 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load87 = load <2 x i64>, ptr %i.am, align 8, !tbaa !72
  %wide.load88 = load <2 x i64>, ptr %i.an, align 8, !tbaa !72
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index86 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %wide.load87, ptr %i.ao, align 8, !tbaa !72
  store <2 x i64> %wide.load88, ptr %i.ap, align 8, !tbaa !72
  %index.next89 = add nuw i64 %index86, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.aq, label %middle.block90, label %vector.body85, !llvm.loop !281

middle.block90:                                   ; preds = %vector.body85
  br i1 %cmp.n91, label %.lr.ph.preheader.i.us.i, label %.lr.ph18.i.us.i.preheader

.lr.ph18.i.us.i.preheader:                        ; preds = %vector.memcheck81, %.lr.ph18.preheader.i.us.i, %middle.block90
  %indvars.iv21.i.us.i.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.lr.ph18.preheader.i.us.i ], [ %n.vec84, %middle.block90 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph18.i.us.i.prol.loopexit, label %.lr.ph18.i.us.i.prol

.lr.ph18.i.us.i.prol:                             ; preds = %.lr.ph18.i.us.i.preheader, %.lr.ph18.i.us.i.prol
  %indvars.iv21.i.us.i.prol = phi i64 [ %indvars.iv.next22.i.us.i.prol, %.lr.ph18.i.us.i.prol ], [ %indvars.iv21.i.us.i.ph, %.lr.ph18.i.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.us.i.prol ], [ 0, %.lr.ph18.i.us.i.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv21.i.us.i.prol
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv21.i.us.i.prol
  store i64 %i.as, ptr %i.at, align 8, !tbaa !72
  %indvars.iv.next22.i.us.i.prol = add nuw nsw i64 %indvars.iv21.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.us.i.prol.loopexit, label %.lr.ph18.i.us.i.prol, !llvm.loop !282

.lr.ph18.i.us.i.prol.loopexit:                    ; preds = %.lr.ph18.i.us.i.prol, %.lr.ph18.i.us.i.preheader
  %indvars.iv21.i.us.i.unr = phi i64 [ %indvars.iv21.i.us.i.ph, %.lr.ph18.i.us.i.preheader ], [ %indvars.iv.next22.i.us.i.prol, %.lr.ph18.i.us.i.prol ]
  %i.au = sub nsw i64 %indvars.iv21.i.us.i.ph, %wide.trip.count24.i.i
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %.lr.ph.preheader.i.us.i, label %.lr.ph18.i.us.i

.lr.ph18.i.us.i:                                  ; preds = %.lr.ph18.i.us.i.prol.loopexit, %.lr.ph18.i.us.i
  %indvars.iv21.i.us.i = phi i64 [ %indvars.iv.next22.i.us.i.3, %.lr.ph18.i.us.i ], [ %indvars.iv21.i.us.i.unr, %.lr.ph18.i.us.i.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv21.i.us.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !72
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv21.i.us.i
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !72
  %indvars.iv.next22.i.us.i = add nuw nsw i64 %indvars.iv21.i.us.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next22.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !72
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next22.i.us.i
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !72
  %indvars.iv.next22.i.us.i.1 = add nuw nsw i64 %indvars.iv21.i.us.i, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next22.i.us.i.1
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !72
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next22.i.us.i.1
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !72
  %indvars.iv.next22.i.us.i.2 = add nuw nsw i64 %indvars.iv21.i.us.i, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next22.i.us.i.2
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next22.i.us.i.2
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !72
  %indvars.iv.next22.i.us.i.3 = add nuw nsw i64 %indvars.iv21.i.us.i, 4 ; 2 uses
  %exitcond25.not.i.us.i.3 = icmp eq i64 %indvars.iv.next22.i.us.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.us.i.3, label %.lr.ph.preheader.i.us.i, label %.lr.ph18.i.us.i, !llvm.loop !283

.lr.ph.preheader.i.us.i:                          ; preds = %.lr.ph18.i.us.i.prol.loopexit, %.lr.ph18.i.us.i, %middle.block90
  %i.bi = getelementptr i8, ptr %i.ae, i64 8      ; 6 uses
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.us.i
  %i.bj = mul i64 %indvars.iv.i, %i.y
  %i.bk = add i64 %i.z, %i.bj
  %i.bl = shl nsw i64 %i.ad, 3
  %i.bm = add i64 %i.bk, %i.bl
  %i.bn = sub i64 %.val25.us.i75, %i.bm
  %diff.check = icmp ugt i64 %i.bn, -32
  br i1 %diff.check, label %.lr.ph.i.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <2 x i64>, ptr %i.bo, align 8, !tbaa !72
  %wide.load76 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !72
  %i.bq = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.br = xor <2 x i64> %wide.load76, splat (i64 -1)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x i64> %i.bq, ptr %i.bs, align 8, !tbaa !72
  store <2 x i64> %i.br, ptr %i.bt, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtCopy.exit27.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.us.i, %middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod142.not, label %.lr.ph.i.us.i.prol.loopexit, label %.lr.ph.i.us.i.prol

.lr.ph.i.us.i.prol:                               ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i.prol
  %indvars.iv.i.us.i.prol = phi i64 [ %indvars.iv.next.i.us.i.prol, %.lr.ph.i.us.i.prol ], [ %indvars.iv.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %prol.iter143 = phi i64 [ %prol.iter143.next, %.lr.ph.i.us.i.prol ], [ 0, %.lr.ph.i.us.i.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.us.i.prol
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !72
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i.us.i.prol
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !72
  %indvars.iv.next.i.us.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.prol, 1 ; 2 uses
  %prol.iter143.next = add i64 %prol.iter143, 1   ; 2 uses
  %prol.iter143.cmp.not = icmp eq i64 %prol.iter143.next, %xtraiter141
  br i1 %prol.iter143.cmp.not, label %.lr.ph.i.us.i.prol.loopexit, label %.lr.ph.i.us.i.prol, !llvm.loop !285

.lr.ph.i.us.i.prol.loopexit:                      ; preds = %.lr.ph.i.us.i.prol, %.lr.ph.i.us.i.preheader
  %indvars.iv.i.us.i.unr = phi i64 [ %indvars.iv.i.us.i.ph, %.lr.ph.i.us.i.preheader ], [ %indvars.iv.next.i.us.i.prol, %.lr.ph.i.us.i.prol ]
  %i.bz = sub nsw i64 %indvars.iv.i.us.i.ph, %wide.trip.count24.i.i
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %Abc_TtCopy.exit27.loopexit.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.prol.loopexit, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i.3, %.lr.ph.i.us.i ], [ %indvars.iv.i.us.i.unr, %.lr.ph.i.us.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.us.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !72
  %i.cd = xor i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i.us.i
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !72
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.us.i
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !72
  %i.ch = xor i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.us.i
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !72
  %indvars.iv.next.i.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.i, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.us.i.1
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !72
  %i.cl = xor i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.us.i.1
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !72
  %indvars.iv.next.i.us.i.2 = add nuw nsw i64 %indvars.iv.i.us.i, 3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.us.i.2
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !72
  %i.cp = xor i64 %i.co, -1
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.us.i.2
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !72
  %indvars.iv.next.i.us.i.3 = add nuw nsw i64 %indvars.iv.i.us.i, 4 ; 2 uses
  %exitcond.not.i.us.i.3 = icmp eq i64 %indvars.iv.next.i.us.i.3, %wide.trip.count24.i.i
  br i1 %exitcond.not.i.us.i.3, label %Abc_TtCopy.exit27.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !286

Abc_TtCopy.exit27.loopexit.us.i:                  ; preds = %.lr.ph.i.us.i.prol.loopexit, %.lr.ph.i.us.i, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManSimPatAssignInputs2.exit, label %.lr.ph.split.us.i, !llvm.loop !9

Gia_ManSimPatAssignInputs2.exit:                  ; preds = %.lr.ph.split.us.i, %Abc_TtCopy.exit27.loopexit.us.i, %Vec_WrdStart.exit, %.lr.ph.i
  %i.cr = icmp sgt i32 %.val40, 0
  br i1 %i.cr, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Gia_ManSimPatAssignInputs2.exit
  %i.cs = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.cs, align 8, !tbaa !71 ; 2 uses
  %.not = icmp ne ptr %.val36, null
  %wide.trip.count.i48 = zext i32 %.fr66 to i64   ; 9 uses
  %i.ct = icmp sgt i32 %.fr66, 0
  %or.cond = and i1 %.not, %i.ct
  br i1 %or.cond, label %.lr.ph.split.split.us.preheader, label %.critedge

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val40 to i64
  %i.cu = shl nuw nsw i64 %wide.trip.count.i48, 4
  %i.cv = shl nuw nsw i64 %wide.trip.count.i48, 3
  %min.iters.check103 = icmp ult i32 %.fr66, 14
  %n.vec114 = and i64 %wide.trip.count.i48, 2147483644 ; 3 uses
  %cmp.n123 = icmp eq i64 %n.vec114, %wide.trip.count.i48
  %xtraiter144 = and i64 %wide.trip.count.i48, 1
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  %i.cw = add nsw i64 %wide.trip.count.i48, -1
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %Gia_ManSimPatSimAnd2.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next, %Gia_ManSimPatSimAnd2.exit.us ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %.val36, i64 %indvars.iv
  %.val41.us = load i64, ptr %i.cx, align 4       ; 5 uses
  %i.cy = and i64 %.val41.us, 2147483648
  %.not.i.us = icmp ne i64 %i.cy, 0
  %i.cz = and i64 %.val41.us, 536870911
  %i.da = icmp eq i64 %i.cz, 536870911
  %narrow.i.not.us = or i1 %.not.i.us, %i.da
  br i1 %narrow.i.not.us, label %Gia_ManSimPatSimAnd2.exit.us, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.split.split.us
  %i.db = trunc i64 %.val41.us to i32             ; 2 uses
  %i.dc = and i32 %i.db, 536870911
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.de = sub nsw i32 %i.dd, %i.dc
  %i.df = lshr i32 %i.db, 29
  %i.dg = and i32 %i.df, 1
  %i.dh = shl nsw i32 %i.de, 1
  %i.di = or disjoint i32 %i.dh, %i.dg
  %i.dj = mul nsw i32 %i.di, %.fr66
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dk ; 4 uses
  %i.dm = lshr i64 %.val41.us, 32
  %i.dn = trunc nuw i64 %i.dm to i32
  %i.do = and i32 %i.dn, 536870911
  %i.dp = sub nsw i32 %i.dd, %i.do
  %i.dq = lshr i64 %.val41.us, 61
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 1
  %i.dt = shl nsw i32 %i.dp, 1
  %i.du = or disjoint i32 %i.dt, %i.ds
  %i.dv = mul nsw i32 %i.du, %.fr66
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dw ; 4 uses
  %i.dy = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.dz = mul nuw nsw i64 %i.dy, %wide.trip.count.i48
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dz ; 4 uses
  %i.eb = or disjoint i64 %i.dy, 1
  %i.ec = mul nuw nsw i64 %i.eb, %wide.trip.count.i48
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ec ; 4 uses
  br i1 %min.iters.check103, label %.lr.ph.i49.us.preheader, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph.preheader.i.us
  %i.ee = mul i64 %indvars.iv, %i.cu              ; 3 uses
  %i.ef = shl nsw i64 %i.dk, 3                    ; 2 uses
  %i.eg = sub i64 %i.ef, %i.ee
  %diff.check106 = icmp ugt i64 %i.eg, -32
  %i.eh = shl nsw i64 %i.dw, 3                    ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ee
  %diff.check107.a = icmp ugt i64 %i.ei, -32
  %conflict.rdx108.a = or i1 %diff.check106, %diff.check107.a
  %i.ej = add i64 %i.cv, %i.ee                    ; 2 uses
  %i.ek = sub i64 %i.ef, %i.ej
  %diff.check109 = icmp ugt i64 %i.ek, -32
  %conflict.rdx110 = or i1 %conflict.rdx108.a, %diff.check109
  %i.el = sub i64 %i.eh, %i.ej
  %diff.check111 = icmp ugt i64 %i.el, -32
  %conflict.rdx112 = or i1 %conflict.rdx110, %diff.check111
  br i1 %conflict.rdx112, label %.lr.ph.i49.us.preheader, label %vector.body115

vector.body115:                                   ; preds = %vector.memcheck104, %vector.body115
  %index116 = phi i64 [ %index.next121, %vector.body115 ], [ 0, %vector.memcheck104 ] ; 5 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index116 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load117 = load <2 x i64>, ptr %i.em, align 8, !tbaa !72
  %wide.load118 = load <2 x i64>, ptr %i.en, align 8, !tbaa !72
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index116 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load119 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !72
  %wide.load120 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !72
  %i.eq = and <2 x i64> %wide.load119, %wide.load117 ; 2 uses
  %i.er = and <2 x i64> %wide.load120, %wide.load118 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index116 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x i64> %i.eq, ptr %i.es, align 8, !tbaa !72
  store <2 x i64> %i.er, ptr %i.et, align 8, !tbaa !72
  %i.eu = xor <2 x i64> %i.eq, splat (i64 -1)
  %i.ev = xor <2 x i64> %i.er, splat (i64 -1)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index116 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x i64> %i.eu, ptr %i.ew, align 8, !tbaa !72
  store <2 x i64> %i.ev, ptr %i.ex, align 8, !tbaa !72
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ey, label %middle.block122, label %vector.body115, !llvm.loop !287

middle.block122:                                  ; preds = %vector.body115
  br i1 %cmp.n123, label %Gia_ManSimPatSimAnd2.exit.us, label %.lr.ph.i49.us.preheader

.lr.ph.i49.us.preheader:                          ; preds = %vector.memcheck104, %.lr.ph.preheader.i.us, %middle.block122
  %indvars.iv.i50.us.ph = phi i64 [ 0, %vector.memcheck104 ], [ 0, %.lr.ph.preheader.i.us ], [ %n.vec114, %middle.block122 ] ; 7 uses
  br i1 %lcmp.mod145.not, label %.lr.ph.i49.us.prol.loopexit, label %.lr.ph.i49.us.prol

.lr.ph.i49.us.prol:                               ; preds = %.lr.ph.i49.us.preheader
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i50.us.ph
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !72
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i50.us.ph
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !72
  %i.fd = and i64 %i.fc, %i.fa                    ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i50.us.ph
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !72
  %i.ff = xor i64 %i.fd, -1
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i50.us.ph
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !72
  %indvars.iv.next.i51.us.prol = or disjoint i64 %indvars.iv.i50.us.ph, 1
  br label %.lr.ph.i49.us.prol.loopexit

.lr.ph.i49.us.prol.loopexit:                      ; preds = %.lr.ph.i49.us.prol, %.lr.ph.i49.us.preheader
  %indvars.iv.i50.us.unr = phi i64 [ %indvars.iv.i50.us.ph, %.lr.ph.i49.us.preheader ], [ %indvars.iv.next.i51.us.prol, %.lr.ph.i49.us.prol ]
  %i.fh = icmp eq i64 %indvars.iv.i50.us.ph, %i.cw
  br i1 %i.fh, label %Gia_ManSimPatSimAnd2.exit.us, label %.lr.ph.i49.us

.lr.ph.i49.us:                                    ; preds = %.lr.ph.i49.us.prol.loopexit, %.lr.ph.i49.us
  %indvars.iv.i50.us = phi i64 [ %indvars.iv.next.i51.us.1, %.lr.ph.i49.us ], [ %indvars.iv.i50.us.unr, %.lr.ph.i49.us.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i50.us
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !72
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i50.us
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !72
  %i.fm = and i64 %i.fl, %i.fj                    ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i50.us
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !72
  %i.fo = xor i64 %i.fm, -1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i50.us
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !72
  %indvars.iv.next.i51.us = add nuw nsw i64 %indvars.iv.i50.us, 1 ; 4 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next.i51.us
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !72
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next.i51.us
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !72
  %i.fu = and i64 %i.ft, %i.fr                    ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i51.us
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !72
  %i.fw = xor i64 %i.fu, -1
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i51.us
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !72
  %indvars.iv.next.i51.us.1 = add nuw nsw i64 %indvars.iv.i50.us, 2 ; 2 uses
  %exitcond.not.i52.us.1 = icmp eq i64 %indvars.iv.next.i51.us.1, %wide.trip.count.i48
  br i1 %exitcond.not.i52.us.1, label %Gia_ManSimPatSimAnd2.exit.us, label %.lr.ph.i49.us, !llvm.loop !288

Gia_ManSimPatSimAnd2.exit.us:                     ; preds = %.lr.ph.i49.us.prol.loopexit, %.lr.ph.i49.us, %middle.block122, %.lr.ph.split.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !289

.critedge:                                        ; preds = %Gia_ManSimPatSimAnd2.exit.us, %.lr.ph, %Gia_ManSimPatAssignInputs2.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !75 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  %.val = load i32, ptr %i.ga, align 4, !tbaa !60 ; 2 uses
  %i.gb = icmp sgt i32 %.val, 0
  br i1 %i.gb, label %.lr.ph63, label %.critedge2

.lr.ph63:                                         ; preds = %.critedge
  %i.gc = getelementptr i8, ptr %0, i64 32
  %.val42 = load ptr, ptr %i.gc, align 8, !tbaa !71 ; 2 uses
  %.not34 = icmp eq ptr %.val42, null
  %i.gd = icmp slt i32 %.fr66, 1
  %wide.trip.count.i54 = zext i32 %.fr66 to i64   ; 5 uses
  %brmerge = or i1 %.not34, %i.gd
  br i1 %brmerge, label %.critedge2, label %.lr.ph63.split.split

.lr.ph63.split.split:                             ; preds = %.lr.ph63
  %i.ge = getelementptr i8, ptr %i.fz, i64 8
  %.val43.val = load ptr, ptr %i.ge, align 8, !tbaa !61
  %wide.trip.count72 = zext nneg i32 %.val to i64
  %min.iters.check128 = icmp ult i32 %.fr66, 6
  %n.vec132 = and i64 %wide.trip.count.i54, 2147483644 ; 3 uses
  %cmp.n139 = icmp eq i64 %n.vec132, %wide.trip.count.i54
  %xtraiter147 = and i64 %wide.trip.count.i54, 3  ; 2 uses
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br label %.lr.ph.preheader.i53

.lr.ph.preheader.i53:                             ; preds = %.lr.ph63.split.split, %Gia_ManSimPatSimPo2.exit.loopexit
  %indvars.iv69 = phi i64 [ 0, %.lr.ph63.split.split ], [ %indvars.iv.next70, %Gia_ManSimPatSimPo2.exit.loopexit ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.val43.val, i64 %indvars.iv69
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !62 ; 3 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [12 x i8], ptr %.val42, i64 %i.gh
  %.val46 = load i64, ptr %i.gi, align 4
  %i.gj = trunc i64 %.val46 to i32                ; 2 uses
  %i.gk = and i32 %i.gj, 536870911
  %i.gl = sub nsw i32 %i.gg, %i.gk
  %i.gm = lshr i32 %i.gj, 29
  %i.gn = and i32 %i.gm, 1
  %i.go = shl nsw i32 %i.gl, 1
  %i.gp = or disjoint i32 %i.go, %i.gn
  %i.gq = mul nsw i32 %i.gp, %.fr66
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gr ; 6 uses
  %i.gt = mul nsw i32 %i.gg, %.fr66
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gu ; 6 uses
  br i1 %min.iters.check128, label %.lr.ph.i55.preheader, label %vector.memcheck129

vector.memcheck129:                               ; preds = %.lr.ph.preheader.i53
  %i.gw = sub nsw i64 %i.gu, %i.gr
  %i.gx = shl nsw i64 %i.gw, 3
  %i.gy = add nsw i64 %i.gx, -1
  %diff.check130 = icmp ult i64 %i.gy, 31
  br i1 %diff.check130, label %.lr.ph.i55.preheader, label %vector.body133

vector.body133:                                   ; preds = %vector.memcheck129, %vector.body133
  %index134 = phi i64 [ %index.next137, %vector.body133 ], [ 0, %vector.memcheck129 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %index134 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load135 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !72
  %wide.load136 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !72
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index134 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <2 x i64> %wide.load135, ptr %i.hb, align 8, !tbaa !72
  store <2 x i64> %wide.load136, ptr %i.hc, align 8, !tbaa !72
  %index.next137 = add nuw i64 %index134, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.hd, label %middle.block138, label %vector.body133, !llvm.loop !290

middle.block138:                                  ; preds = %vector.body133
  br i1 %cmp.n139, label %Gia_ManSimPatSimPo2.exit.loopexit, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %vector.memcheck129, %.lr.ph.preheader.i53, %middle.block138
  %indvars.iv.i56.ph = phi i64 [ 0, %vector.memcheck129 ], [ 0, %.lr.ph.preheader.i53 ], [ %n.vec132, %middle.block138 ] ; 3 uses
  br i1 %lcmp.mod148.not, label %.lr.ph.i55.prol.loopexit, label %.lr.ph.i55.prol

.lr.ph.i55.prol:                                  ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55.prol
  %indvars.iv.i56.prol = phi i64 [ %indvars.iv.next.i57.prol, %.lr.ph.i55.prol ], [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader ] ; 3 uses
  %prol.iter149 = phi i64 [ %prol.iter149.next, %.lr.ph.i55.prol ], [ 0, %.lr.ph.i55.preheader ]
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.i56.prol
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !72
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i56.prol
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !72
  %indvars.iv.next.i57.prol = add nuw nsw i64 %indvars.iv.i56.prol, 1 ; 2 uses
  %prol.iter149.next = add i64 %prol.iter149, 1   ; 2 uses
  %prol.iter149.cmp.not = icmp eq i64 %prol.iter149.next, %xtraiter147
  br i1 %prol.iter149.cmp.not, label %.lr.ph.i55.prol.loopexit, label %.lr.ph.i55.prol, !llvm.loop !291

.lr.ph.i55.prol.loopexit:                         ; preds = %.lr.ph.i55.prol, %.lr.ph.i55.preheader
  %indvars.iv.i56.unr = phi i64 [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader ], [ %indvars.iv.next.i57.prol, %.lr.ph.i55.prol ]
  %i.hh = sub nsw i64 %indvars.iv.i56.ph, %wide.trip.count.i54
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %Gia_ManSimPatSimPo2.exit.loopexit, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.prol.loopexit, %.lr.ph.i55
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i57.3, %.lr.ph.i55 ], [ %indvars.iv.i56.unr, %.lr.ph.i55.prol.loopexit ] ; 6 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.i56
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !72
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i56
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !72
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next.i57
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !72
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next.i57
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !72
  %indvars.iv.next.i57.1 = add nuw nsw i64 %indvars.iv.i56, 2 ; 2 uses
end_hunk_0
