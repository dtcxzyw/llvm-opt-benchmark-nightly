Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj3?download=true
inline.NumInlined: 296
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 44
begin_hunk_0_@Abc_TtReadHex:bb.a
  %i.ai = add nsw i64 %i.ag, -48
  br label %Abc_TtReadHexDigit.exit

bb.f:                                             ; preds = %.lr.ph57
  %i.aj = add i8 %i.af, -65
  %or.cond5.i = icmp ult i8 %i.aj, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i64 %i.ag, -55
  br label %Abc_TtReadHexDigit.exit

bb.h:                                             ; preds = %bb.f
  %i.al = add i8 %i.af, -97
  %or.cond8.i = icmp ult i8 %i.al, 6
  %i.am = add nsw i64 %i.ag, -87
  %spec.select.i = select i1 %or.cond8.i, i64 %i.am, i64 -1
  br label %Abc_TtReadHexDigit.exit

Abc_TtReadHexDigit.exit:                          ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.ai, %bb.e ], [ %i.ak, %bb.g ], [ %spec.select.i, %bb.h ]
  %i.an = shl i64 %indvars.iv66, 2
  %i.ao = and i64 %i.an, 60
  %i.ap = shl i64 %.0.i, %i.ao
  %i.aq = lshr i64 %indvars.iv66, 4
  %i.ar = and i64 %i.aq, 268435455
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !26
  %i.au = or i64 %i.at, %i.ap
  store i64 %i.au, ptr %i.as, align 8, !tbaa !26
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !239

._crit_edge58:                                    ; preds = %Abc_TtReadHexDigit.exit
  %i.av = icmp samesign ult i32 %.fr, 6
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge58
  %i.aw = load i64, ptr %0, align 8, !tbaa !26    ; 4 uses
  %i.ax = icmp samesign ult i32 %.fr, 3
  %i.ay = and i64 %i.aw, 15
  %i.az = mul nuw nsw i64 %i.ay, 17
  %spec.select86 = select i1 %i.ax, i64 %i.az, i64 %i.aw
  %i.ba = icmp samesign ult i32 %.fr, 4
  %i.bb = and i64 %spec.select86, 255
  %i.bc = mul nuw nsw i64 %i.bb, 257
  %i.bd = select i1 %i.ba, i64 %i.bc, i64 %i.aw
  %.not72 = icmp eq i32 %.fr, 5
  %i.be = and i64 %i.bd, 65535
  %i.bf = mul nuw nsw i64 %i.be, 65537
  %spec.select87 = select i1 %.not72, i64 %i.aw, i64 %i.bf
  %i.bg = and i64 %spec.select87, 4294967295
  %i.bh = mul nuw i64 %i.bg, 4294967297
  br label %.sink.split

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph57.preheader

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bi = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Abc_TtReadHex, i64 %i.bi
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.thread83, %bb.i, %switch.lookup
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 0, %.thread83 ], [ %i.bh, %bb.i ]
  store i64 %.sink, ptr %0, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %._crit_edge58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Zyx_ManPrintSolution(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %.not = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not, ptr @.str.25, ptr @.str.24
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !56   ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !60   ; 2 uses
  %.not37.not49 = icmp sgt i32 %i.m, %i.o
  br i1 %.not37.not49, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8808 ; 2 uses
  %i.r = icmp ne i32 %1, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph53, %._crit_edge
  %indvars.iv.in = phi i32 [ %i.m, %.lr.ph53 ], [ %indvars.iv, %._crit_edge ]
  %.036.in50 = phi i32 [ %i.m, %.lr.ph53 ], [ %.03651, %._crit_edge ] ; 3 uses
  %indvars.iv = add i32 %indvars.iv.in, -1        ; 2 uses
  %.03651 = add nsw i32 %.036.in50, -1            ; 5 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %.03651) ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !55
  %.not39 = icmp eq i32 %i.w, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !64
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !61  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.045 = phi i32 [ %i.aq, %.lr.ph ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !50
  %.val = load ptr, ptr %0, align 8, !tbaa !52
  %.val41 = load i32, ptr %i.p, align 8, !tbaa !61
  %.val.val = load i32, ptr %.val, align 8, !tbaa !60
  %i.af = add nsw i32 %.val41, 1
  %i.ag = sub nsw i32 %.03651, %.val.val
  %i.ah = mul nsw i32 %i.ag, %i.af
  %i.ai = add nsw i32 %i.ah, %.045
  %i.aj = tail call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.ae, i32 noundef %i.ai) #26
  %i.ak = load i32, ptr %i.l, align 8, !tbaa !56
  %i.al = icmp eq i32 %.036.in50, %i.ak
  %i.am = and i1 %i.r, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = xor i32 %i.aj, %i.an
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %i.ao) ; 0 uses
  %i.aq = add nsw i32 %.045, -1
  %.not76 = icmp eq i32 %.045, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph, !llvm.loop !240

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %putchar = tail call i32 @putchar(i32 40)       ; 0 uses
  %i.ar = icmp sgt i32 %.036.in50, 1
  br i1 %i.ar, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.loopexit, %bb.h
  %.146 = phi i32 [ %i.bi, %bb.h ], [ 0, %.loopexit ] ; 5 uses
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.at = load i32, ptr %i.s, align 4, !tbaa !62
  %i.au = load i32, ptr %i.l, align 8, !tbaa !56
  %i.av = load ptr, ptr %0, align 8, !tbaa !52
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !60
  %i.ax = sub nsw i32 %.03651, %i.aw
  %i.ay = mul nsw i32 %i.ax, %i.au
  %i.az = add i32 %i.at, %.146
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = tail call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.as, i32 noundef %i.ba) #26
  %.not40 = icmp eq i32 %i.bb, 0
  br i1 %.not40, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph47
  %i.bc = load ptr, ptr %0, align 8, !tbaa !52
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !60
  %i.be = icmp slt i32 %.146, %i.bd
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = add nuw nsw i32 %.146, 97
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %i.bf) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %.146) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph47, %bb.g, %bb.f
  %i.bi = add nuw nsw i32 %.146, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.h, %.loopexit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %.not37.not = icmp sgt i32 %.03651, %i.bk
  br i1 %.not37.not, label %bb.b, label %._crit_edge54, !llvm.loop !242

._crit_edge54:                                    ; preds = %._crit_edge, %bb.a
  %i.bl = phi i32 [ %i.o, %bb.a ], [ %i.bk, %._crit_edge ] ; 12 uses
  %.lcssa44 = phi ptr [ %i.n, %bb.a ], [ %i.bj, %._crit_edge ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa44, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !55
  %.not38 = icmp eq i32 %i.bn, 0
  br i1 %.not38, label %bb.i, label %bb.u

bb.i:                                             ; preds = %._crit_edge54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bo = icmp ne i32 %1, 0                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !59 ; 18 uses
  br i1 %i.bo, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.br = icmp slt i32 %i.bl, 7
  %i.bs = add nsw i32 %i.bl, -6
  %i.bt = shl nuw i32 1, %i.bs
  %i.bu = select i1 %i.br, i32 1, i32 %i.bt       ; 9 uses
  %i.bv = icmp sgt i32 %i.bu, 0                   ; 2 uses
  br i1 %i.bv, label %.lr.ph.preheader.i.i, label %Abc_TtNot.exit.i.a

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %wide.trip.count.i.i = zext nneg i32 %i.bu to i64 ; 3 uses
  %min.iters.check86 = icmp ult i32 %i.bu, 4
  br i1 %min.iters.check86, label %.lr.ph.i.i, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec87 = and i64 %wide.trip.count.i.i, 2147483644
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next92, %vector.body89 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index90 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !26
  %wide.load91 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !26
  %i.by = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bz = xor <2 x i64> %wide.load91, splat (i64 -1)
  store <2 x i64> %i.by, ptr %i.bw, align 8, !tbaa !26
  store <2 x i64> %i.bz, ptr %i.bx, align 8, !tbaa !26
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.ca, label %Abc_TtNot.exit.i, label %vector.body89, !llvm.loop !243

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i
  %i.cb = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.cc = xor i64 %i.cb, -1
  store i64 %i.cc, ptr %i.bq, align 8, !tbaa !26
  %exitcond.not.i.i = icmp eq i32 %i.bu, 1
  br i1 %exitcond.not.i.i, label %Abc_TtNot.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !26
  %i.cf = xor i64 %i.ce, -1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !26
  %exitcond.not.i.i.1 = icmp eq i32 %i.bu, 2
  br i1 %exitcond.not.i.i.1, label %Abc_TtNot.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.ci = xor i64 %i.ch, -1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !26
  br label %Abc_TtNot.exit.i

Abc_TtNot.exit.i:                                 ; preds = %vector.body89, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2
  %3 = add nsw i32 %i.bl, -2                      ; 3 uses
  %4 = icmp slt i32 %i.bl, 2
  br i1 %4, label %bb.k, label %.lr.ph.i58.i

Abc_TtNot.exit.i.a:                               ; preds = %bb.j
  %i.cj = add nsw i32 %i.bl, -2                   ; 2 uses
  %i.ck = icmp slt i32 %i.bl, 2
  br i1 %i.ck, label %bb.k, label %Abc_TtNot.exit67.i

bb.k:                                             ; preds = %Abc_TtNot.exit.i.a, %Abc_TtNot.exit.i
  %5 = phi i32 [ %i.cj, %Abc_TtNot.exit.i.a ], [ %3, %Abc_TtNot.exit.i ]
  %i.cl = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 15                       ; 2 uses
  %i.co = icmp samesign ult i32 %i.cn, 10
  %i.cp = trunc nuw nsw i32 %i.cn to i8           ; 2 uses
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = add nuw nsw i8 %i.cp, 55
  %.0.i.i.i = select i1 %i.co, i8 %i.cq, i8 %i.cr
  store i8 %.0.i.i.i, ptr %i.a, align 16, !tbaa !74
  br label %Abc_TtWriteHexRev.exit.i

.lr.ph.i58.i:                                     ; preds = %Abc_TtNot.exit.i
  %6 = icmp samesign ugt i32 %i.bl, 5
  %.idx.i.i = shl nuw nsw i64 %wide.trip.count.i.i, 3
  %i.cs = getelementptr i8, ptr %i.bq, i64 %.idx.i.i
  %.01825.i.i = getelementptr i8, ptr %i.cs, i64 -8
  %notmask.i.i = shl nsw i32 -1, %3
  %i.ct = xor i32 %notmask.i.i, -1
  %i.cu = select i1 %6, i32 15, i32 %i.ct         ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 9 uses
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check105 = icmp eq i32 %i.cu, 0
  %n.vec107 = and i64 %i.cw, 4294967294           ; 4 uses
  %i.cx = sub nsw i64 %i.cv, %n.vec107
  %broadcast.splatinsert108 = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %broadcast.splat109 = shufflevector <2 x i64> %broadcast.splatinsert108, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cy = add nsw <2 x i64> %broadcast.splat109, <i64 0, i64 -1>
  %cmp.n119 = icmp eq i64 %i.cw, %n.vec107
  br label %bb.l

.loopexit.i.i:                                    ; preds = %scalar.ph104.prol.loopexit, %scalar.ph104, %middle.block118
  %.lcssa = phi ptr [ %i.dc, %middle.block118 ], [ %.lcssa136.unr, %scalar.ph104.prol.loopexit ], [ %i.fa, %scalar.ph104 ]
  %.018.i.i = getelementptr inbounds i8, ptr %.01828.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %.018.i.i, %i.bq
  %indvar.next99 = add i64 %indvar98, 1
  br i1 %.not.i.i, label %Abc_TtWriteHexRev.exit.i, label %bb.l, !llvm.loop !244

bb.l:                                             ; preds = %.loopexit.i.i, %.lr.ph.i58.i
  %indvar98 = phi i64 [ %indvar.next99, %.loopexit.i.i ], [ 0, %.lr.ph.i58.i ] ; 2 uses
  %.01828.i.i = phi ptr [ %.018.i.i, %.loopexit.i.i ], [ %.01825.i.i, %.lr.ph.i58.i ] ; 6 uses
  %.01927.i.i = phi ptr [ %.lcssa, %.loopexit.i.i ], [ %i.a, %.lr.ph.i58.i ] ; 8 uses
  %.01927.i.i144 = ptrtoaddr ptr %.01927.i.i to i64 ; 2 uses
  %scevgep95.i = getelementptr i8, ptr %.01927.i.i, i64 %i.cv
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %bb.l
  %i.cz = sub i64 %wide.trip.count.i.i, %indvar98
  %i.da = shl i64 %i.cz, 3
  %scevgep100 = getelementptr i8, ptr %i.bq, i64 %i.da
  %i.db = getelementptr i8, ptr %.01927.i.i, i64 %i.cv
  %scevgep97 = getelementptr i8, ptr %i.db, i64 1
  %bound0101 = icmp ult ptr %.01927.i.i, %scevgep100
  %bound1102 = icmp ult ptr %.01828.i.i, %scevgep97
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck96
  %i.dc = getelementptr i8, ptr %.01927.i.i, i64 %n.vec107 ; 2 uses
  %i.dd = load i64, ptr %.01828.i.i, align 8, !tbaa !26, !alias.scope !259
  %broadcast.splatinsert114 = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %broadcast.splat115 = shufflevector <2 x i64> %broadcast.splatinsert114, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph106
  %index111 = phi i64 [ 0, %vector.ph106 ], [ %index.next116, %vector.body110 ] ; 2 uses
  %vec.ind112 = phi <2 x i64> [ %i.cy, %vector.ph106 ], [ %vec.ind.next117, %vector.body110 ] ; 2 uses
  %next.gep113 = getelementptr i8, ptr %.01927.i.i, i64 %index111
  %i.de = shl nsw <2 x i64> %vec.ind112, splat (i64 2)
  %i.df = and <2 x i64> %i.de, splat (i64 4294967292)
  %i.dg = lshr <2 x i64> %broadcast.splat115, %i.df
  %i.dh = trunc <2 x i64> %i.dg to <2 x i32>
  %i.di = and <2 x i32> %i.dh, splat (i32 15)     ; 2 uses
  %i.dj = icmp samesign ult <2 x i32> %i.di, splat (i32 10)
  %i.dk = trunc nuw nsw <2 x i32> %i.di to <2 x i8> ; 2 uses
  %i.dl = or disjoint <2 x i8> %i.dk, splat (i8 48)
  %i.dm = add nuw nsw <2 x i8> %i.dk, splat (i8 55)
  %i.dn = select <2 x i1> %i.dj, <2 x i8> %i.dl, <2 x i8> %i.dm
  store <2 x i8> %i.dn, ptr %next.gep113, align 1, !tbaa !74, !alias.scope !260, !noalias !259
  %index.next116 = add nuw i64 %index111, 2       ; 2 uses
  %vec.ind.next117 = add nsw <2 x i64> %vec.ind112, splat (i64 -2)
  %i.do = icmp eq i64 %index.next116, %n.vec107
  br i1 %i.do, label %middle.block118, label %vector.body110, !llvm.loop !248

middle.block118:                                  ; preds = %vector.body110
  br i1 %cmp.n119, label %.loopexit.i.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %vector.memcheck96, %bb.l, %middle.block118
  %indvars.iv.i59.i.ph = phi i64 [ %i.cv, %vector.memcheck96 ], [ %i.cv, %bb.l ], [ %i.cx, %middle.block118 ] ; 3 uses
  %.123.i.i.ph = phi ptr [ %.01927.i.i, %vector.memcheck96 ], [ %.01927.i.i, %bb.l ], [ %i.dc, %middle.block118 ] ; 4 uses
  %.123.i.i.ph145 = ptrtoaddr ptr %.123.i.i.ph to i64 ; 2 uses
  %i.dp = add i64 %i.cv, %.01927.i.i144
  %i.dq = sub i64 %i.cv, %.01927.i.i144
  %i.dr = add i64 %i.dq, %.123.i.i.ph145
  %i.ds = and i64 %i.dr, 1
  %lcmp.mod147.not.not = icmp eq i64 %i.ds, 0
  br i1 %lcmp.mod147.not.not, label %scalar.ph104.prol, label %scalar.ph104.prol.loopexit

scalar.ph104.prol:                                ; preds = %scalar.ph104.preheader
  %i.dt = load i64, ptr %.01828.i.i, align 8, !tbaa !26
  %i.du = shl nsw i64 %indvars.iv.i59.i.ph, 2
  %i.dv = and i64 %i.du, 4294967292
  %i.dw = lshr i64 %i.dt, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.dx, 15                       ; 2 uses
  %i.dz = icmp samesign ult i32 %i.dy, 10
  %i.ea = trunc nuw nsw i32 %i.dy to i8           ; 2 uses
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = add nuw nsw i8 %i.ea, 55
  %.0.i21.i.i.prol = select i1 %i.dz, i8 %i.eb, i8 %i.ec
  %i.ed = getelementptr inbounds nuw i8, ptr %.123.i.i.ph, i64 1 ; 2 uses
  store i8 %.0.i21.i.i.prol, ptr %.123.i.i.ph, align 1, !tbaa !74
  %indvars.iv.next.i60.i.prol = add nsw i64 %indvars.iv.i59.i.ph, -1
  br label %scalar.ph104.prol.loopexit

scalar.ph104.prol.loopexit:                       ; preds = %scalar.ph104.prol, %scalar.ph104.preheader
  %.lcssa136.unr = phi ptr [ poison, %scalar.ph104.preheader ], [ %i.ed, %scalar.ph104.prol ]
  %indvars.iv.i59.i.unr = phi i64 [ %indvars.iv.i59.i.ph, %scalar.ph104.preheader ], [ %indvars.iv.next.i60.i.prol, %scalar.ph104.prol ]
  %.123.i.i.unr = phi ptr [ %.123.i.i.ph, %scalar.ph104.preheader ], [ %i.ed, %scalar.ph104.prol ]
  %i.ee = icmp eq i64 %i.dp, %.123.i.i.ph145
  br i1 %i.ee, label %.loopexit.i.i, label %scalar.ph104

scalar.ph104:                                     ; preds = %scalar.ph104.prol.loopexit, %scalar.ph104
  %indvars.iv.i59.i = phi i64 [ %indvars.iv.next.i60.i.1, %scalar.ph104 ], [ %indvars.iv.i59.i.unr, %scalar.ph104.prol.loopexit ] ; 3 uses
  %.123.i.i = phi ptr [ %i.fa, %scalar.ph104 ], [ %.123.i.i.unr, %scalar.ph104.prol.loopexit ] ; 3 uses
  %i.ef = load i64, ptr %.01828.i.i, align 8, !tbaa !26
  %i.eg = shl nsw i64 %indvars.iv.i59.i, 2
  %i.eh = and i64 %i.eg, 4294967292
  %i.ei = lshr i64 %i.ef, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = and i32 %i.ej, 15                       ; 2 uses
  %i.el = icmp samesign ult i32 %i.ek, 10
  %i.em = trunc nuw nsw i32 %i.ek to i8           ; 2 uses
  %i.en = or disjoint i8 %i.em, 48
  %i.eo = add nuw nsw i8 %i.em, 55
  %.0.i21.i.i = select i1 %i.el, i8 %i.en, i8 %i.eo
  %i.ep = getelementptr inbounds nuw i8, ptr %.123.i.i, i64 1 ; 2 uses
  store i8 %.0.i21.i.i, ptr %.123.i.i, align 1, !tbaa !74
  %i.eq = load i64, ptr %.01828.i.i, align 8, !tbaa !26
  %indvars.iv.next.i60.i = shl i64 %indvars.iv.i59.i, 2
  %i.er = add i64 %indvars.iv.next.i60.i, 4294967292
  %i.es = and i64 %i.er, 4294967292
  %i.et = lshr i64 %i.eq, %i.es
  %i.eu = trunc i64 %i.et to i32
  %i.ev = and i32 %i.eu, 15                       ; 2 uses
  %i.ew = icmp samesign ult i32 %i.ev, 10
  %i.ex = trunc nuw nsw i32 %i.ev to i8           ; 2 uses
  %i.ey = or disjoint i8 %i.ex, 48
  %i.ez = add nuw nsw i8 %i.ex, 55
  %.0.i21.i.i.1 = select i1 %i.ew, i8 %i.ey, i8 %i.ez
  %i.fa = getelementptr inbounds nuw i8, ptr %.123.i.i, i64 2 ; 2 uses
  store i8 %.0.i21.i.i.1, ptr %i.ep, align 1, !tbaa !74
  %indvars.iv.next.i60.i.1 = add nsw i64 %indvars.iv.i59.i, -2
  %exitcond96.not.i.1 = icmp eq ptr %i.ep, %scevgep95.i
  br i1 %exitcond96.not.i.1, label %.loopexit.i.i, label %scalar.ph104, !llvm.loop !249

Abc_TtWriteHexRev.exit.i:                         ; preds = %.loopexit.i.i, %bb.k
  %7 = phi i32 [ %5, %bb.k ], [ %3, %.loopexit.i.i ] ; 5 uses
  br i1 %i.bv, label %.lr.ph.preheader.i61.i, label %Abc_TtNot.exit67.i

.lr.ph.preheader.i61.i:                           ; preds = %Abc_TtWriteHexRev.exit.i
  %min.iters.check123 = icmp ult i32 %i.bu, 4
  br i1 %min.iters.check123, label %.lr.ph.i63.i, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph.preheader.i61.i
  %i.fb = and i32 %i.bu, 2147483644
  %n.vec125 = zext nneg i32 %i.fb to i64
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next130, %vector.body126 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index127 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load128.a = load <2 x i64>, ptr %i.fc, align 8, !tbaa !26
  %wide.load129 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !26
  %i.fe = xor <2 x i64> %wide.load128.a, splat (i64 -1)
  %i.ff = xor <2 x i64> %wide.load129, splat (i64 -1)
  store <2 x i64> %i.fe, ptr %i.fc, align 8, !tbaa !26
  store <2 x i64> %i.ff, ptr %i.fd, align 8, !tbaa !26
  %index.next130 = add nuw i64 %index127, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.fg, label %Abc_TtNot.exit67.i, label %vector.body126, !llvm.loop !250

.lr.ph.i63.i:                                     ; preds = %.lr.ph.preheader.i61.i
  %i.fh = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.fi = xor i64 %i.fh, -1
  store i64 %i.fi, ptr %i.bq, align 8, !tbaa !26
  %exitcond.not.i66.i = icmp eq i32 %i.bu, 1
  br i1 %exitcond.not.i66.i, label %Abc_TtNot.exit67.i, label %.lr.ph.i63.i.1

.lr.ph.i63.i.1:                                   ; preds = %.lr.ph.i63.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !26
  %i.fl = xor i64 %i.fk, -1
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !26
  %exitcond.not.i66.i.1 = icmp eq i32 %i.bu, 2
  br i1 %exitcond.not.i66.i.1, label %Abc_TtNot.exit67.i, label %.lr.ph.i63.i.2

.lr.ph.i63.i.2:                                   ; preds = %.lr.ph.i63.i.1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !26
  %i.fo = xor i64 %i.fn, -1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !26
  br label %Abc_TtNot.exit67.i

.critedge.i:                                      ; preds = %bb.i
  %i.fp = icmp samesign ugt i32 %i.bl, 5
  %i.fq = add nsw i32 %i.bl, -2                   ; 4 uses
  %i.fr = icmp slt i32 %i.bl, 2
  br i1 %i.fr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge.i
  %i.fs = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = and i32 %i.ft, 15                       ; 2 uses
  %i.fv = icmp samesign ult i32 %i.fu, 10
  %i.fw = trunc nuw nsw i32 %i.fu to i8           ; 2 uses
  %i.fx = or disjoint i8 %i.fw, 48
  %i.fy = add nuw nsw i8 %i.fw, 55
  %.0.i.i83.i = select i1 %i.fv, i8 %i.fx, i8 %i.fy
  store i8 %.0.i.i83.i, ptr %i.a, align 16, !tbaa !74
  br label %Abc_TtNot.exit67.i

bb.n:                                             ; preds = %.critedge.i
  %i.fz = icmp samesign ult i32 %i.bl, 7
  %i.ga = add nsw i32 %i.bl, -6
  %i.gb = shl nuw i32 1, %i.ga
  %i.gc = select i1 %i.fz, i32 1, i32 %i.gb       ; 2 uses
  %.not26.i68.i = icmp slt i32 %i.gc, 1
  br i1 %.not26.i68.i, label %Abc_TtNot.exit67.i, label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %bb.n
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %.idx.i70.i = shl nuw nsw i64 %i.gd, 3
  %i.ge = getelementptr i8, ptr %i.bq, i64 %.idx.i70.i
  %.01825.i71.i = getelementptr i8, ptr %i.ge, i64 -8
  %notmask.i72.i = shl nsw i32 -1, %i.fq
  %i.gf = xor i32 %notmask.i72.i, -1
  %i.gg = select i1 %i.fp, i32 15, i32 %i.gf      ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64              ; 9 uses
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.gg, 0
  %n.vec = and i64 %i.gi, 4294967294              ; 4 uses
  %i.gj = sub nsw i64 %i.gh, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gh, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gk = add nsw <2 x i64> %broadcast.splat, <i64 0, i64 -1>
  %cmp.n = icmp eq i64 %i.gi, %n.vec
  br label %bb.o

.loopexit.i79.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa78 = phi ptr [ %i.go, %middle.block ], [ %.lcssa139.unr, %scalar.ph.prol.loopexit ], [ %i.im, %scalar.ph ]
  %.018.i80.i = getelementptr inbounds i8, ptr %.01828.i73.i, i64 -8 ; 2 uses
  %.not.i81.i = icmp ult ptr %.018.i80.i, %i.bq
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i81.i, label %Abc_TtNot.exit67.i, label %bb.o, !llvm.loop !244

bb.o:                                             ; preds = %.loopexit.i79.i, %.lr.ph.i69.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i79.i ], [ 0, %.lr.ph.i69.i ] ; 2 uses
  %.01828.i73.i = phi ptr [ %.018.i80.i, %.loopexit.i79.i ], [ %.01825.i71.i, %.lr.ph.i69.i ] ; 6 uses
  %.01927.i74.i = phi ptr [ %.lcssa78, %.loopexit.i79.i ], [ %i.a, %.lr.ph.i69.i ] ; 8 uses
  %.01927.i74.i142 = ptrtoaddr ptr %.01927.i74.i to i64 ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.01927.i74.i, i64 %i.gh
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.o
  %i.gl = sub i64 %i.gd, %indvar
  %i.gm = shl i64 %i.gl, 3
  %scevgep81 = getelementptr i8, ptr %i.bq, i64 %i.gm
  %i.gn = getelementptr i8, ptr %.01927.i74.i, i64 %i.gh
  %scevgep = getelementptr i8, ptr %i.gn, i64 1
  %bound0 = icmp ult ptr %.01927.i74.i, %scevgep81
  %bound1 = icmp ult ptr %.01828.i73.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.go = getelementptr i8, ptr %.01927.i74.i, i64 %n.vec ; 2 uses
  %i.gp = load i64, ptr %.01828.i73.i, align 8, !tbaa !26, !alias.scope !261
  %broadcast.splatinsert82 = insertelement <2 x i64> poison, i64 %i.gp, i64 0
  %broadcast.splat83 = shufflevector <2 x i64> %broadcast.splatinsert82, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %i.gk, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.01927.i74.i, i64 %index
  %i.gq = shl nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.gr = and <2 x i64> %i.gq, splat (i64 4294967292)
  %i.gs = lshr <2 x i64> %broadcast.splat83, %i.gr
  %i.gt = trunc <2 x i64> %i.gs to <2 x i32>
  %i.gu = and <2 x i32> %i.gt, splat (i32 15)     ; 2 uses
  %i.gv = icmp samesign ult <2 x i32> %i.gu, splat (i32 10)
  %i.gw = trunc nuw nsw <2 x i32> %i.gu to <2 x i8> ; 2 uses
  %i.gx = or disjoint <2 x i8> %i.gw, splat (i8 48)
  %i.gy = add nuw nsw <2 x i8> %i.gw, splat (i8 55)
  %i.gz = select <2 x i1> %i.gv, <2 x i8> %i.gx, <2 x i8> %i.gy
  store <2 x i8> %i.gz, ptr %next.gep, align 1, !tbaa !74, !alias.scope !262, !noalias !261
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 -2)
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !254

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i79.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.o, %middle.block
  %indvars.iv.i75.i.ph = phi i64 [ %i.gh, %vector.memcheck ], [ %i.gh, %bb.o ], [ %i.gj, %middle.block ] ; 3 uses
  %.123.i76.i.ph = phi ptr [ %.01927.i74.i, %vector.memcheck ], [ %.01927.i74.i, %bb.o ], [ %i.go, %middle.block ] ; 4 uses
  %.123.i76.i.ph143 = ptrtoaddr ptr %.123.i76.i.ph to i64 ; 2 uses
  %i.hb = add i64 %i.gh, %.01927.i74.i142
  %i.hc = sub i64 %i.gh, %.01927.i74.i142
  %i.hd = add i64 %i.hc, %.123.i76.i.ph143
  %i.he = and i64 %i.hd, 1
  %lcmp.mod.not.not = icmp eq i64 %i.he, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hf = load i64, ptr %.01828.i73.i, align 8, !tbaa !26
  %i.hg = shl nsw i64 %indvars.iv.i75.i.ph, 2
  %i.hh = and i64 %i.hg, 4294967292
  %i.hi = lshr i64 %i.hf, %i.hh
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = and i32 %i.hj, 15                       ; 2 uses
  %i.hl = icmp samesign ult i32 %i.hk, 10
  %i.hm = trunc nuw nsw i32 %i.hk to i8           ; 2 uses
  %i.hn = or disjoint i8 %i.hm, 48
  %i.ho = add nuw nsw i8 %i.hm, 55
  %.0.i21.i77.i.prol = select i1 %i.hl, i8 %i.hn, i8 %i.ho
  %i.hp = getelementptr inbounds nuw i8, ptr %.123.i76.i.ph, i64 1 ; 2 uses
  store i8 %.0.i21.i77.i.prol, ptr %.123.i76.i.ph, align 1, !tbaa !74
  %indvars.iv.next.i78.i.prol = add nsw i64 %indvars.iv.i75.i.ph, -1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa139.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.hp, %scalar.ph.prol ]
  %indvars.iv.i75.i.unr = phi i64 [ %indvars.iv.i75.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i78.i.prol, %scalar.ph.prol ]
  %.123.i76.i.unr = phi ptr [ %.123.i76.i.ph, %scalar.ph.preheader ], [ %i.hp, %scalar.ph.prol ]
  %i.hq = icmp eq i64 %i.hb, %.123.i76.i.ph143
  br i1 %i.hq, label %.loopexit.i79.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i75.i = phi i64 [ %indvars.iv.next.i78.i.1, %scalar.ph ], [ %indvars.iv.i75.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.123.i76.i = phi ptr [ %i.im, %scalar.ph ], [ %.123.i76.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.hr = load i64, ptr %.01828.i73.i, align 8, !tbaa !26
  %i.hs = shl nsw i64 %indvars.iv.i75.i, 2
  %i.ht = and i64 %i.hs, 4294967292
  %i.hu = lshr i64 %i.hr, %i.ht
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = and i32 %i.hv, 15                       ; 2 uses
  %i.hx = icmp samesign ult i32 %i.hw, 10
  %i.hy = trunc nuw nsw i32 %i.hw to i8           ; 2 uses
  %i.hz = or disjoint i8 %i.hy, 48
  %i.ia = add nuw nsw i8 %i.hy, 55
  %.0.i21.i77.i = select i1 %i.hx, i8 %i.hz, i8 %i.ia
  %i.ib = getelementptr inbounds nuw i8, ptr %.123.i76.i, i64 1 ; 2 uses
  store i8 %.0.i21.i77.i, ptr %.123.i76.i, align 1, !tbaa !74
  %i.ic = load i64, ptr %.01828.i73.i, align 8, !tbaa !26
  %indvars.iv.next.i78.i = shl i64 %indvars.iv.i75.i, 2
  %i.id = add i64 %indvars.iv.next.i78.i, 4294967292
  %i.ie = and i64 %i.id, 4294967292
  %i.if = lshr i64 %i.ic, %i.ie
  %i.ig = trunc i64 %i.if to i32
  %i.ih = and i32 %i.ig, 15                       ; 2 uses
  %i.ii = icmp samesign ult i32 %i.ih, 10
  %i.ij = trunc nuw nsw i32 %i.ih to i8           ; 2 uses
  %i.ik = or disjoint i8 %i.ij, 48
  %i.il = add nuw nsw i8 %i.ij, 55
  %.0.i21.i77.i.1 = select i1 %i.ii, i8 %i.ik, i8 %i.il
  %i.im = getelementptr inbounds nuw i8, ptr %.123.i76.i, i64 2 ; 2 uses
  store i8 %.0.i21.i77.i.1, ptr %i.ib, align 1, !tbaa !74
  %indvars.iv.next.i78.i.1 = add nsw i64 %indvars.iv.i75.i, -2
  %exitcond.not.i.1 = icmp eq ptr %i.ib, %scevgep.i
  br i1 %exitcond.not.i.1, label %.loopexit.i79.i, label %scalar.ph, !llvm.loop !255

Abc_TtNot.exit67.i:                               ; preds = %.loopexit.i79.i, %vector.body126, %.lr.ph.i63.i, %.lr.ph.i63.i.1, %.lr.ph.i63.i.2, %bb.n, %bb.m, %Abc_TtWriteHexRev.exit.i, %Abc_TtNot.exit.i.a
  %.pre-phi.i = phi i32 [ %i.cj, %Abc_TtNot.exit.i.a ], [ %7, %vector.body126 ], [ %i.fq, %bb.n ], [ %i.fq, %bb.m ], [ %7, %Abc_TtWriteHexRev.exit.i ], [ %7, %.lr.ph.i63.i ], [ %7, %.lr.ph.i63.i.2 ], [ %7, %.lr.ph.i63.i.1 ], [ %i.fq, %.loopexit.i79.i ]
  %i.in = shl nuw i32 1, %.pre-phi.i
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.a, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %.lcssa44, i64 8
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !64
  %i.is = getelementptr inbounds nuw i8, ptr %.lcssa44, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !65
  %i.iu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ip, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.ir, i32 noundef %i.it) #26 ; 0 uses
  %.not.i = icmp eq i32 %2, 0
  %i.iv = select i1 %.not.i, ptr @.str.68, ptr @.str.67
  %i.iw = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull %i.iv) ; 8 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %Zyx_ManPrintSolutionFile.exit, label %bb.p

bb.p:                                             ; preds = %Abc_TtNot.exit67.i
  %i.iy = load ptr, ptr %0, align 8, !tbaa !52
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !60 ; 2 uses
  %i.ja = load i32, ptr %i.l, align 8, !tbaa !56
  %i.jb = icmp slt i32 %i.iz, %i.ja
  br i1 %i.jb, label %.lr.ph92.i, label %._crit_edge.i

.lr.ph92.i:                                       ; preds = %bb.p
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8808 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.i, %.lr.ph92.i
  %.04890.i = phi i32 [ %i.iz, %.lr.ph92.i ], [ %i.kp, %.loopexit.i ] ; 7 uses
  %i.jf = add nsw i32 %.04890.i, 65
  %fputc50.i = call i32 @fputc(i32 %i.jf, ptr nonnull %i.iw) ; 0 uses
  %i.jg = load ptr, ptr %0, align 8, !tbaa !52
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !55
  %.not51.i = icmp eq i32 %i.ji, 0
  br i1 %.not51.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.70, i64 4, i64 1, ptr nonnull %i.iw) ; 0 uses
  br label %.loopexit.i

bb.s:                                             ; preds = %bb.q
  %i.jj = load i32, ptr %i.jc, align 8, !tbaa !61 ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  br i1 %i.jk, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.s
  %i.jl = icmp sgt i32 %.04890.i, 0
  br i1 %i.jl, label %.lr.ph89.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.087.i = phi i32 [ %i.jz, %.lr.ph.i ], [ %i.jj, %bb.s ] ; 3 uses
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !50
  %.val.i = load ptr, ptr %0, align 8, !tbaa !52
  %.val57.i = load i32, ptr %i.jc, align 8, !tbaa !61
  %.val.val.i = load i32, ptr %.val.i, align 8, !tbaa !60
  %i.jn = add nsw i32 %.val57.i, 1
  %i.jo = sub nsw i32 %.04890.i, %.val.val.i
  %i.jp = mul nsw i32 %i.jo, %i.jn
  %i.jq = add nsw i32 %i.jp, %.087.i
  %i.jr = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.jm, i32 noundef %i.jq) #26
  %i.js = load i32, ptr %i.l, align 8, !tbaa !56
  %i.jt = add nsw i32 %i.js, -1
  %i.ju = icmp eq i32 %.04890.i, %i.jt
  %i.jv = and i1 %i.bo, %i.ju
  %i.jw = zext i1 %i.jv to i32
  %i.jx = xor i32 %i.jr, %i.jw
  %i.jy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.iw, ptr noundef nonnull @.str.64, i32 noundef %i.jx) #26 ; 0 uses
  %i.jz = add nsw i32 %.087.i, -1
  %.not111.i = icmp eq i32 %.087.i, 0
  br i1 %.not111.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !256

.lr.ph89.i:                                       ; preds = %.preheader.i, %bb.t
  %.188.i = phi i32 [ %i.ko, %bb.t ], [ 0, %.preheader.i ] ; 4 uses
  %i.ka = load ptr, ptr %i.jd, align 8, !tbaa !50
  %i.kb = load i32, ptr %i.je, align 4, !tbaa !62
  %i.kc = load i32, ptr %i.l, align 8, !tbaa !56
  %i.kd = load ptr, ptr %0, align 8, !tbaa !52
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !60
  %i.kf = sub nsw i32 %.04890.i, %i.ke
  %i.kg = mul nsw i32 %i.kf, %i.kc
  %i.kh = add i32 %i.kb, %.188.i
  %i.ki = add i32 %i.kh, %i.kg
  %i.kj = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.ka, i32 noundef %i.ki) #26
  %.not52.i = icmp eq i32 %i.kj, 0
  br i1 %.not52.i, label %bb.t, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph89.i
  %i.kk = load ptr, ptr %0, align 8, !tbaa !52
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !60
  %i.km = icmp slt i32 %.188.i, %i.kl
  %..i = select i1 %i.km, i32 97, i32 65
  %i.kn = add nuw nsw i32 %..i, %.188.i
  %fputc53.i = call i32 @fputc(i32 %i.kn, ptr nonnull %i.iw) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %.lr.ph89.i
  %i.ko = add nuw nsw i32 %.188.i, 1              ; 2 uses
  %exitcond97.not.i = icmp eq i32 %i.ko, %.04890.i
  br i1 %exitcond97.not.i, label %.loopexit.i, label %.lr.ph89.i, !llvm.loop !257

.loopexit.i:                                      ; preds = %bb.t, %.preheader.i, %bb.r
  %fputc56.i = call i32 @fputc(i32 10, ptr nonnull %i.iw) ; 0 uses
  %i.kp = add nsw i32 %.04890.i, 1                ; 2 uses
  %i.kq = load i32, ptr %i.l, align 8, !tbaa !56
  %i.kr = icmp slt i32 %i.kp, %i.kq
  br i1 %i.kr, label %bb.q, label %._crit_edge.i, !llvm.loop !258

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.p
  %fputc.i = call i32 @fputc(i32 10, ptr nonnull %i.iw) ; 0 uses
  %i.ks = call i32 @fclose(ptr noundef nonnull %i.iw) ; 0 uses
  br label %Zyx_ManPrintSolutionFile.exit

Zyx_ManPrintSolutionFile.exit:                    ; preds = %Abc_TtNot.exit67.i, %._crit_edge.i
  %.str.71.sink.i = phi ptr [ @.str.71, %._crit_edge.i ], [ @.str.35, %Abc_TtNot.exit67.i ]
  %i.kt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.71.sink.i, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.u

bb.u:                                             ; preds = %Zyx_ManPrintSolutionFile.exit, %._crit_edge54
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Zyx_TestGetTruthTablePars(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
Abc_UtilStrsav.exit:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #25 ; 10 uses
  %i.d = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull readonly dereferenceable(1) %0) #26 ; 0 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !74    ; 2 uses
  %.not66 = icmp eq i8 %i.e, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit, %bb.a
  %i.f = phi i8 [ %i.l, %bb.a ], [ %i.e, %Abc_UtilStrsav.exit ] ; 3 uses
  %.067 = phi ptr [ %i.k, %bb.a ], [ %i.c, %Abc_UtilStrsav.exit ] ; 2 uses
  %i.g = add i8 %i.f, -58
  %or.cond.i = icmp ult i8 %i.g, -10
  %i.h = and i8 %i.f, -33
  %i.i = add i8 %i.h, -71
  %i.j = icmp ult i8 %i.i, -6
  %narrow.i.not = and i1 %or.cond.i, %i.j
  br i1 %narrow.i.not, label %._crit_edge, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.067, i64 1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !74    ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !263

._crit_edge:                                      ; preds = %bb.a, %.lr.ph, %Abc_UtilStrsav.exit
  %.0.lcssa = phi ptr [ %i.c, %Abc_UtilStrsav.exit ], [ %.067, %.lr.ph ], [ %i.k, %bb.a ] ; 3 uses
  %.lcssa65 = phi i8 [ 0, %Abc_UtilStrsav.exit ], [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !74
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #29
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.n)
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.split, label %bb.b

.split:                                           ; preds = %._crit_edge
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.n, i1 true) ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 7
  br i1 %i.r, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %.split, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.c) #26
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %bb.g

switch.lookup:                                    ; preds = %.split
  %switch.offset = add nuw nsw i32 %i.q, 2
  store i32 %switch.offset, ptr %2, align 4, !tbaa !30
  tail call fastcc void @Abc_TtReadHex(ptr noundef %1, ptr noundef nonnull %i.c)
  store i8 %.lcssa65, ptr %.0.lcssa, align 1, !tbaa !74
  %.not5672 = icmp eq i8 %.lcssa65, 0
  br i1 %.not5672, label %.critedge.thread, label %.lr.ph75

thread-pre-split:                                 ; preds = %.lr.ph75
  br i1 %i.u, label %.critedge.thread, label %.lr.ph75

.lr.ph75:                                         ; preds = %switch.lookup, %thread-pre-split
  %.173 = phi ptr [ %i.t, %thread-pre-split ], [ %.0.lcssa, %switch.lookup ]
  %i.s = phi i8 [ %.pre, %thread-pre-split ], [ %.lcssa65, %switch.lookup ]
  %i.t = getelementptr inbounds nuw i8, ptr %.173, i64 1 ; 4 uses
  %.not57 = icmp eq i8 %i.s, 45
  %.pre = load i8, ptr %i.t, align 1, !tbaa !74   ; 2 uses
  %i.u = icmp eq i8 %.pre, 0                      ; 2 uses
  br i1 %.not57, label %.critedge, label %thread-pre-split, !llvm.loop !264

.critedge:                                        ; preds = %.lr.ph75
  br i1 %i.u, label %.critedge.thread, label %bb.c

.critedge.thread:                                 ; preds = %thread-pre-split, %switch.lookup, %.critedge
  tail call void @free(ptr noundef %i.c) #26
  %puts61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.g

end_hunk_0
