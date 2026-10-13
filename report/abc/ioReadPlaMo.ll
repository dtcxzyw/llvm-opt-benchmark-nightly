Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadPlaMo?download=true
inline.NumInlined: 265
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Mop_ManReduce2:bb.a
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WecStart.exit.i, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.m = sext i32 %spec.store.select.i.i.i to i64
  %i.n = call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 16) #26
  br label %Vec_WecStart.exit.i

Vec_WecStart.exit.i:                              ; preds = %bb.c, %Abc_Clock.exit
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %Abc_Clock.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !51
  store i32 %i.j, ptr %i.p, align 4, !tbaa !50
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val1214.i = load i32, ptr %i.s, align 4, !tbaa !33
  %i.t = icmp sgt i32 %.val1214.i, 0
  br i1 %i.t, label %.lr.ph.i, label %Mop_ManCountOutputLits.exit

.lr.ph.i:                                         ; preds = %Vec_WecStart.exit.i
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = getelementptr i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %Mop_ManCountOnes.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Mop_ManCountOnes.exit.i ] ; 2 uses
  %i.w = phi ptr [ %i.r, %.lr.ph.i ], [ %i.au, %Mop_ManCountOnes.exit.i ]
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val13.i = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !38   ; 2 uses
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !24 ; 4 uses
  %.val11.i = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.aa = getelementptr i8, ptr %.val11.i, i64 8
  %.val11.val.i = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ab = mul nsw i32 %.val.i, %i.z
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val11.val.i, i64 %i.ac ; 2 uses
  %i.ae = icmp sgt i32 %.val.i, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i, label %Mop_ManCountOnes.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %.val.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi209 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !44
  %wide.load210 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !44
  %i.ah = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ai = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load210)
  %i.aj = trunc nuw nsw <2 x i64> %i.ah to <2 x i32>
  %i.ak = trunc nuw nsw <2 x i64> %i.ai to <2 x i32>
  %i.al = add <2 x i32> %vec.phi, %i.aj           ; 2 uses
  %i.am = add <2 x i32> %vec.phi209, %i.ak        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %Mop_ManCountOnes.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.08.i.i = phi i32 [ %i.at, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.ar = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aq)
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = add nuw nsw i32 %.08.i.i, %i.as         ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Mop_ManCountOnes.exit.i, label %.lr.ph.i.i, !llvm.loop !144

Mop_ManCountOnes.exit.i:                          ; preds = %.lr.ph.i.i, %middle.block, %bb.d
  %.0.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.ao, %middle.block ], [ %i.at, %.lr.ph.i.i ]
  call fastcc void @Vec_WecPush(ptr noundef nonnull %i.k, i32 noundef %.0.lcssa.i.i, i32 noundef %i.z)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !36  ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val12.i = load i32, ptr %i.av, align 4, !tbaa !33 ; 3 uses
  %i.aw = sext i32 %.val12.i to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %bb.d, label %Mop_ManCreateGroups.exit, !llvm.loop !7

Mop_ManCreateGroups.exit:                         ; preds = %Mop_ManCountOnes.exit.i
  %i.ay = icmp sgt i32 %.val12.i, 0
  br i1 %i.ay, label %.lr.ph.i34, label %Mop_ManCountOutputLits.exitthread-pre-split

.lr.ph.i34:                                       ; preds = %Mop_ManCreateGroups.exit
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %.val12.i35 = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.ba = getelementptr i8, ptr %0, i64 12
  %.val.i36 = load i32, ptr %i.ba, align 4, !tbaa !25 ; 4 uses
  %i.bb = getelementptr i8, ptr %0, i64 24
  %.val10.i = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bc = getelementptr i8, ptr %.val10.i, i64 8
  %.val10.val.i = load ptr, ptr %i.bc, align 8, !tbaa !28
  %i.bd = icmp sgt i32 %.val.i36, 0
  %wide.trip.count.i.i37 = zext i32 %.val.i36 to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph.preheader.i.us.preheader.i, label %Mop_ManCountOutputLits.exitthread-pre-split

.lr.ph.preheader.i.us.preheader.i:                ; preds = %.lr.ph.i34
  %wide.trip.count.i = zext nneg i32 %.val12.i to i64
  %min.iters.check212 = icmp ult i32 %.val.i36, 4
  %n.vec214 = and i64 %wide.trip.count.i.i37, 2147483644 ; 3 uses
  %cmp.n224 = icmp eq i64 %n.vec214, %wide.trip.count.i.i37
  br label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %Mop_ManCountOnes.exit.loopexit.us.i, %.lr.ph.preheader.i.us.preheader.i
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %indvars.iv.next.i39, %Mop_ManCountOnes.exit.loopexit.us.i ] ; 2 uses
  %.014.us.i = phi i32 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %i.by, %Mop_ManCountOnes.exit.loopexit.us.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val12.i35, i64 %indvars.iv.i38
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !38
  %i.bg = mul nsw i32 %i.bf, %.val.i36
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %.val10.val.i, i64 %i.bh ; 2 uses
  br i1 %min.iters.check212, label %.lr.ph.i.us.i.preheader, label %vector.body215

vector.body215:                                   ; preds = %.lr.ph.preheader.i.us.i, %vector.body215
  %index216 = phi i64 [ %index.next221, %vector.body215 ], [ 0, %.lr.ph.preheader.i.us.i ] ; 2 uses
  %vec.phi217 = phi <2 x i32> [ %i.bp, %vector.body215 ], [ zeroinitializer, %.lr.ph.preheader.i.us.i ]
  %vec.phi218 = phi <2 x i32> [ %i.bq, %vector.body215 ], [ zeroinitializer, %.lr.ph.preheader.i.us.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index216 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load219 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !44
  %wide.load220 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !44
  %i.bl = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load219)
  %i.bm = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load220)
  %i.bn = trunc nuw nsw <2 x i64> %i.bl to <2 x i32>
  %i.bo = trunc nuw nsw <2 x i64> %i.bm to <2 x i32>
  %i.bp = add <2 x i32> %vec.phi217, %i.bn        ; 2 uses
  %i.bq = add <2 x i32> %vec.phi218, %i.bo        ; 2 uses
  %index.next221 = add nuw i64 %index216, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next221, %n.vec214
  br i1 %i.br, label %middle.block222, label %vector.body215, !llvm.loop !145

middle.block222:                                  ; preds = %vector.body215
  %bin.rdx223 = add <2 x i32> %i.bq, %i.bp
  %i.bs = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx223) ; 2 uses
  br i1 %cmp.n224, label %Mop_ManCountOnes.exit.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %.lr.ph.preheader.i.us.i, %middle.block222
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %n.vec214, %middle.block222 ]
  %.08.i.us.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.us.i ], [ %i.bs, %middle.block222 ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %.lr.ph.i.us.i ], [ %indvars.iv.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 2 uses
  %.08.i.us.i = phi i32 [ %i.bx, %.lr.ph.i.us.i ], [ %.08.i.us.i.ph, %.lr.ph.i.us.i.preheader ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i.us.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.bv = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bu)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = add nuw nsw i32 %.08.i.us.i, %i.bw      ; 2 uses
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i37
  br i1 %exitcond.not.i.us.i, label %Mop_ManCountOnes.exit.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !146

Mop_ManCountOnes.exit.loopexit.us.i:              ; preds = %.lr.ph.i.us.i, %middle.block222
  %.lcssa205 = phi i32 [ %i.bs, %middle.block222 ], [ %i.bx, %.lr.ph.i.us.i ]
  %i.by = add nuw nsw i32 %.lcssa205, %.014.us.i  ; 2 uses
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Mop_ManCountOutputLits.exitthread-pre-split, label %.lr.ph.preheader.i.us.i, !llvm.loop !8

Mop_ManCountOutputLits.exitthread-pre-split:      ; preds = %Mop_ManCountOnes.exit.loopexit.us.i, %.lr.ph.i34, %Mop_ManCreateGroups.exit
  %.0.lcssa.i.ph = phi i32 [ 0, %Mop_ManCreateGroups.exit ], [ 0, %.lr.ph.i34 ], [ %i.by, %Mop_ManCountOnes.exit.loopexit.us.i ]
  %.val2228.i.pr = load i32, ptr %i.p, align 4, !tbaa !50
  br label %Mop_ManCountOutputLits.exit

Mop_ManCountOutputLits.exit:                      ; preds = %Mop_ManCountOutputLits.exitthread-pre-split, %Vec_WecStart.exit.i
  %.val2228.i = phi i32 [ %.val2228.i.pr, %Mop_ManCountOutputLits.exitthread-pre-split ], [ %i.j, %Vec_WecStart.exit.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ %.0.lcssa.i.ph, %Mop_ManCountOutputLits.exitthread-pre-split ], [ 0, %Vec_WecStart.exit.i ]
  %i.bz = icmp sgt i32 %.val2228.i, 0
  br i1 %i.bz, label %.lr.ph31.i.preheader, label %Mop_ManMergeContainAll.exit99

.lr.ph31.i.preheader:                             ; preds = %Mop_ManCountOutputLits.exit
  %.val24.i = load ptr, ptr %i.q, align 8, !tbaa !51 ; 16 uses
  %i.ca = call i32 @Mop_ManRemoveIdentical(ptr noundef nonnull readonly %0, ptr noundef %.val24.i) ; 2 uses
  %i.cb = zext nneg i32 %.val2228.i to i64        ; 5 uses
  %.not = icmp eq i32 %.val2228.i, 1              ; 3 uses
  br i1 %.not, label %.lr.ph.i45, label %.lr.ph.i42.preheader

.critedge2.loopexit.i:                            ; preds = %.lr.ph.i42
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv.next37.i160, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.val24.i, i64 %indvars.iv.next37.i160 ; 2 uses
  %i.cd = call i32 @Mop_ManRemoveIdentical(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.cc)
  %i.ce = add nsw i32 %i.cd, %i.cj                ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next37.i, %i.cb
  br i1 %exitcond.not, label %.lr.ph.i45, label %.lr.ph.i42.preheader

.lr.ph.i42.preheader:                             ; preds = %.lr.ph31.i.preheader, %.critedge2.loopexit.i
  %indvars.iv.next37.i160 = phi i64 [ %indvars.iv.next37.i, %.critedge2.loopexit.i ], [ 1, %.lr.ph31.i.preheader ] ; 3 uses
  %i.cf = phi i32 [ %i.ce, %.critedge2.loopexit.i ], [ %i.ca, %.lr.ph31.i.preheader ]
  %i.cg = phi ptr [ %i.cc, %.critedge2.loopexit.i ], [ %.val24.i, %.lr.ph31.i.preheader ]
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.preheader, %.lr.ph.i42
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph.i42 ], [ %indvars.iv.next37.i160, %.lr.ph.i42.preheader ] ; 2 uses
  %.127.i = phi i32 [ %i.cj, %.lr.ph.i42 ], [ %i.cf, %.lr.ph.i42.preheader ]
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.val24.i, i64 %indvars.iv33.i
  %i.ci = call i32 @Mop_ManMergeContainTwo(ptr noundef nonnull readonly %0, ptr noundef %i.cg, ptr noundef nonnull %i.ch)
  %i.cj = add nsw i32 %i.ci, %.127.i              ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next34.i to i32
  %4 = icmp sgt i32 %.val2228.i, %3
  br i1 %4, label %.lr.ph.i42, label %.critedge2.loopexit.i, !llvm.loop !6

.lr.ph.i45:                                       ; preds = %.critedge2.loopexit.i, %.lr.ph31.i.preheader
  %.lcssa155 = phi i32 [ %i.ca, %.lr.ph31.i.preheader ], [ %i.ce, %.critedge2.loopexit.i ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %i.cb, %.lr.ph.i45 ], [ %indvars.iv.next.i47, %bb.i ] ; 3 uses
  %.027.i = phi i32 [ 0, %.lr.ph.i45 ], [ %.1.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i47 = add nsw i64 %indvars.iv.i46, -1 ; 3 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.val24.i, i64 %indvars.iv.next.i47 ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %.val.i49 = load i32, ptr %i.cl, align 4, !tbaa !33
  %i.cm = icmp eq i32 %.val.i49, 0
  br i1 %i.cm, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = icmp eq i64 %indvars.iv.next.i47, 0
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.co = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.cp = call i32 @fflush(ptr noundef %i.co)     ; 0 uses
  br label %Mop_ManMergeDist1All.exit

bb.h:                                             ; preds = %bb.f
  %i.cq = call i32 @Mop_ManRemoveIdentical(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ck)
  %i.cr = getelementptr [16 x i8], ptr %.val24.i, i64 %indvars.iv.i46
  %i.cs = getelementptr i8, ptr %i.cr, i64 -32
  %i.ct = call i32 @Mop_ManMergeDist1Pairs(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ck, ptr noundef %i.cs, ptr noundef readonly %i.i, i32 noundef 1000000000)
  %i.cu = add i32 %i.cq, %.027.i
  %i.cv = add i32 %i.cu, %i.ct
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi i32 [ %.027.i, %bb.e ], [ %i.cv, %bb.h ] ; 2 uses
  %i.cw = icmp samesign ugt i64 %indvars.iv.i46, 1
  br i1 %i.cw, label %bb.e, label %Mop_ManMergeDist1All.exit, !llvm.loop !5

Mop_ManMergeDist1All.exit:                        ; preds = %bb.i, %bb.g
  %.020.i = phi i32 [ -1, %bb.g ], [ %.1.i, %bb.i ] ; 2 uses
  %i.cx = call i32 @Mop_ManRemoveIdentical(ptr noundef nonnull readonly %0, ptr noundef nonnull %.val24.i) ; 2 uses
  br i1 %.not, label %.lr.ph.i71, label %.lr.ph.i59.preheader.preheader

.lr.ph.i59.preheader.preheader:                   ; preds = %Mop_ManMergeDist1All.exit
  %umax = call i64 @llvm.umax.i64(i64 %i.cb, i64 2)
  br label %.lr.ph.i59.preheader

.critedge2.loopexit.i65:                          ; preds = %.lr.ph.i59
  %indvars.iv.next37.i57 = add nuw nsw i64 %indvars.iv.next37.i57162, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.val24.i, i64 %indvars.iv.next37.i57162 ; 2 uses
  %i.cz = call i32 @Mop_ManRemoveIdentical(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.cy)
  %i.da = add nsw i32 %i.cz, %i.df                ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next37.i57, %umax
  br i1 %exitcond179.not, label %.lr.ph.i71, label %.lr.ph.i59.preheader

.lr.ph.i59.preheader:                             ; preds = %.lr.ph.i59.preheader.preheader, %.critedge2.loopexit.i65
  %indvars.iv.next37.i57162 = phi i64 [ %indvars.iv.next37.i57, %.critedge2.loopexit.i65 ], [ 1, %.lr.ph.i59.preheader.preheader ] ; 3 uses
  %i.db = phi i32 [ %i.da, %.critedge2.loopexit.i65 ], [ %i.cx, %.lr.ph.i59.preheader.preheader ]
  %i.dc = phi ptr [ %i.cy, %.critedge2.loopexit.i65 ], [ %.val24.i, %.lr.ph.i59.preheader.preheader ]
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader, %.lr.ph.i59
  %indvars.iv33.i60 = phi i64 [ %indvars.iv.next34.i63, %.lr.ph.i59 ], [ %indvars.iv.next37.i57162, %.lr.ph.i59.preheader ] ; 2 uses
  %.127.i61 = phi i32 [ %i.df, %.lr.ph.i59 ], [ %i.db, %.lr.ph.i59.preheader ]
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.val24.i, i64 %indvars.iv33.i60
  %i.de = call i32 @Mop_ManMergeContainTwo(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dd)
  %i.df = add nsw i32 %i.de, %.127.i61            ; 2 uses
  %indvars.iv.next34.i63 = add nuw nsw i64 %indvars.iv33.i60, 1 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv.next34.i63 to i32
  %i.dh = icmp sgt i32 %.val2228.i, %i.dg
  br i1 %i.dh, label %.lr.ph.i59, label %.critedge2.loopexit.i65, !llvm.loop !6

.lr.ph.i71:                                       ; preds = %.critedge2.loopexit.i65, %Mop_ManMergeDist1All.exit
  %.lcssa153 = phi i32 [ %i.cx, %Mop_ManMergeDist1All.exit ], [ %i.da, %.critedge2.loopexit.i65 ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i71
  %indvars.iv.i72 = phi i64 [ %i.cb, %.lr.ph.i71 ], [ %indvars.iv.next.i74, %bb.n ] ; 3 uses
  %.027.i73 = phi i32 [ 0, %.lr.ph.i71 ], [ %.1.i78, %bb.n ] ; 2 uses
  %indvars.iv.next.i74 = add nsw i64 %indvars.iv.i72, -1 ; 3 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.val24.i, i64 %indvars.iv.next.i74 ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %.val.i76 = load i32, ptr %i.dj, align 4, !tbaa !33
  %i.dk = icmp eq i32 %.val.i76, 0
  br i1 %i.dk, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = icmp eq i64 %indvars.iv.next.i74, 0
  br i1 %i.dl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %puts.i79 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dm = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.dn = call i32 @fflush(ptr noundef %i.dm)     ; 0 uses
  br label %Mop_ManMergeDist1All.exit80

bb.m:                                             ; preds = %bb.k
  %i.do = call i32 @Mop_ManRemoveIdentical(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.di)
  %i.dp = getelementptr [16 x i8], ptr %.val24.i, i64 %indvars.iv.i72
  %i.dq = getelementptr i8, ptr %i.dp, i64 -32
  %i.dr = call i32 @Mop_ManMergeDist1Pairs(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.di, ptr noundef %i.dq, ptr noundef readonly %i.i, i32 noundef 1000000000)
  %i.ds = add i32 %i.do, %.027.i73
  %i.dt = add i32 %i.ds, %i.dr
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.1.i78 = phi i32 [ %.027.i73, %bb.j ], [ %i.dt, %bb.m ] ; 2 uses
  %i.du = icmp samesign ugt i64 %indvars.iv.i72, 1
  br i1 %i.du, label %bb.j, label %Mop_ManMergeDist1All.exit80, !llvm.loop !5

Mop_ManMergeDist1All.exit80:                      ; preds = %bb.n, %bb.l
  %.020.i70 = phi i32 [ -1, %bb.l ], [ %.1.i78, %bb.n ] ; 2 uses
  %i.dv = call i32 @Mop_ManRemoveIdentical(ptr noundef nonnull readonly %0, ptr noundef nonnull %.val24.i) ; 2 uses
  br i1 %.not, label %Mop_ManMergeContainAll.exit99, label %.lr.ph.i90.preheader.preheader

.lr.ph.i90.preheader.preheader:                   ; preds = %Mop_ManMergeDist1All.exit80
  %umax180 = call i64 @llvm.umax.i64(i64 %i.cb, i64 2)
  br label %.lr.ph.i90.preheader

.critedge2.loopexit.i96:                          ; preds = %.lr.ph.i90
  %indvars.iv.next37.i88 = add nuw nsw i64 %indvars.iv.next37.i88165, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.val24.i, i64 %indvars.iv.next37.i88165 ; 2 uses
  %i.dx = call i32 @Mop_ManRemoveIdentical(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.dw)
  %i.dy = add nsw i32 %i.dx, %i.ed                ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next37.i88, %umax180
  br i1 %exitcond181.not, label %Mop_ManMergeContainAll.exit99, label %.lr.ph.i90.preheader

.lr.ph.i90.preheader:                             ; preds = %.lr.ph.i90.preheader.preheader, %.critedge2.loopexit.i96
  %indvars.iv.next37.i88165 = phi i64 [ %indvars.iv.next37.i88, %.critedge2.loopexit.i96 ], [ 1, %.lr.ph.i90.preheader.preheader ] ; 3 uses
  %i.dz = phi i32 [ %i.dy, %.critedge2.loopexit.i96 ], [ %i.dv, %.lr.ph.i90.preheader.preheader ]
  %i.ea = phi ptr [ %i.dw, %.critedge2.loopexit.i96 ], [ %.val24.i, %.lr.ph.i90.preheader.preheader ]
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.preheader, %.lr.ph.i90
  %indvars.iv33.i91 = phi i64 [ %indvars.iv.next34.i94, %.lr.ph.i90 ], [ %indvars.iv.next37.i88165, %.lr.ph.i90.preheader ] ; 2 uses
  %.127.i92 = phi i32 [ %i.ed, %.lr.ph.i90 ], [ %i.dz, %.lr.ph.i90.preheader ]
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.val24.i, i64 %indvars.iv33.i91
  %i.ec = call i32 @Mop_ManMergeContainTwo(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb)
  %i.ed = add nsw i32 %i.ec, %.127.i92            ; 2 uses
  %indvars.iv.next34.i94 = add nuw nsw i64 %indvars.iv33.i91, 1 ; 2 uses
  %i.ee = trunc nuw i64 %indvars.iv.next34.i94 to i32
  %i.ef = icmp sgt i32 %.val2228.i, %i.ee
  br i1 %i.ef, label %.lr.ph.i90, label %.critedge2.loopexit.i96, !llvm.loop !6

Mop_ManMergeContainAll.exit99:                    ; preds = %.critedge2.loopexit.i96, %Mop_ManMergeDist1All.exit80, %Mop_ManCountOutputLits.exit
  %.020.i70146 = phi i32 [ 0, %Mop_ManCountOutputLits.exit ], [ %.020.i70, %Mop_ManMergeDist1All.exit80 ], [ %.020.i70, %.critedge2.loopexit.i96 ]
  %.020.i132136145 = phi i32 [ 0, %Mop_ManCountOutputLits.exit ], [ %.020.i, %Mop_ManMergeDist1All.exit80 ], [ %.020.i, %.critedge2.loopexit.i96 ]
  %.0.lcssa.i40128131137144 = phi i32 [ 0, %Mop_ManCountOutputLits.exit ], [ %.lcssa155, %Mop_ManMergeDist1All.exit80 ], [ %.lcssa155, %.critedge2.loopexit.i96 ]
  %.0.lcssa.i51138143 = phi i32 [ 0, %Mop_ManCountOutputLits.exit ], [ %.lcssa153, %Mop_ManMergeDist1All.exit80 ], [ %.lcssa153, %.critedge2.loopexit.i96 ]
  %.0.lcssa.i82 = phi i32 [ 0, %Mop_ManCountOutputLits.exit ], [ %i.dv, %Mop_ManMergeDist1All.exit80 ], [ %i.dy, %.critedge2.loopexit.i96 ]
  call fastcc void @Mop_ManUnCreateGroups(ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.eg = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %.val11.i100 = load i32, ptr %i.eh, align 4, !tbaa !33 ; 2 uses
  %i.ei = icmp sgt i32 %.val11.i100, 0
  br i1 %i.ei, label %.lr.ph.i102, label %Mop_ManCountOutputLits.exit121

.lr.ph.i102:                                      ; preds = %Mop_ManMergeContainAll.exit99
  %i.ej = getelementptr i8, ptr %i.eg, i64 8
  %.val12.i103 = load ptr, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %0, i64 12
  %.val.i104 = load i32, ptr %i.ek, align 4, !tbaa !25 ; 4 uses
  %i.el = getelementptr i8, ptr %0, i64 24
  %.val10.i105 = load ptr, ptr %i.el, align 8, !tbaa !30
  %i.em = getelementptr i8, ptr %.val10.i105, i64 8
  %.val10.val.i106 = load ptr, ptr %i.em, align 8, !tbaa !28
  %i.en = icmp sgt i32 %.val.i104, 0
  %wide.trip.count.i.i107 = zext i32 %.val.i104 to i64 ; 3 uses
  br i1 %i.en, label %.lr.ph.preheader.i.us.preheader.i108, label %Mop_ManCountOutputLits.exit121

.lr.ph.preheader.i.us.preheader.i108:             ; preds = %.lr.ph.i102
  %wide.trip.count.i109 = zext nneg i32 %.val11.i100 to i64
  %min.iters.check228 = icmp ult i32 %.val.i104, 4
  %n.vec230 = and i64 %wide.trip.count.i.i107, 2147483644 ; 3 uses
  %cmp.n240 = icmp eq i64 %n.vec230, %wide.trip.count.i.i107
  br label %.lr.ph.preheader.i.us.i110

.lr.ph.preheader.i.us.i110:                       ; preds = %Mop_ManCountOnes.exit.loopexit.us.i118, %.lr.ph.preheader.i.us.preheader.i108
  %indvars.iv.i111 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader.i108 ], [ %indvars.iv.next.i119, %Mop_ManCountOnes.exit.loopexit.us.i118 ] ; 2 uses
  %.014.us.i112 = phi i32 [ 0, %.lr.ph.preheader.i.us.preheader.i108 ], [ %i.fi, %Mop_ManCountOnes.exit.loopexit.us.i118 ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val12.i103, i64 %indvars.iv.i111
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !38
  %i.eq = mul nsw i32 %i.ep, %.val.i104
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %.val10.val.i106, i64 %i.er ; 2 uses
  br i1 %min.iters.check228, label %.lr.ph.i.us.i113.preheader, label %vector.body231

vector.body231:                                   ; preds = %.lr.ph.preheader.i.us.i110, %vector.body231
  %index232 = phi i64 [ %index.next237, %vector.body231 ], [ 0, %.lr.ph.preheader.i.us.i110 ] ; 2 uses
  %vec.phi233 = phi <2 x i32> [ %i.ez, %vector.body231 ], [ zeroinitializer, %.lr.ph.preheader.i.us.i110 ]
  %vec.phi234 = phi <2 x i32> [ %i.fa, %vector.body231 ], [ zeroinitializer, %.lr.ph.preheader.i.us.i110 ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index232 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load235 = load <2 x i64>, ptr %i.et, align 8, !tbaa !44
  %wide.load236 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !44
  %i.ev = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load235)
  %i.ew = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load236)
  %i.ex = trunc nuw nsw <2 x i64> %i.ev to <2 x i32>
  %i.ey = trunc nuw nsw <2 x i64> %i.ew to <2 x i32>
end_hunk_0
