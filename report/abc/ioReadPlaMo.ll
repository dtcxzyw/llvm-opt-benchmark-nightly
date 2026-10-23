Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadPlaMo?download=true
inline.NumInlined: 265
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Mop_ManMergeDist1Pairs:bb.a
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i133 = icmp eq ptr %i.ja, null
  %i.jb = zext nneg i32 %spec.select.i131 to i64
  %i.jc = shl nuw nsw i64 %i.jb, 2                ; 2 uses
  br i1 %.not9.i10.i133, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jd = tail call ptr @realloc(ptr noundef nonnull %i.ja, i64 noundef %i.jc) #30
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.je = tail call noalias ptr @malloc(i64 noundef %i.jc) #27
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jf = phi ptr [ %i.jd, %bb.bm ], [ %i.je, %bb.bn ]
  store ptr %i.jf, ptr %i.iz, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i134

Vec_IntGrow.exit11.sink.split.i134:               ; preds = %bb.bo, %Vec_IntGrow.exit.i137
  %spec.select.sink.i135 = phi i32 [ %spec.select.i131, %bb.bo ], [ 16, %Vec_IntGrow.exit.i137 ]
  store i32 %spec.select.sink.i135, ptr %i.im, align 8, !tbaa !34
  %.pre179 = load i32, ptr %i.in, align 4, !tbaa !33
  %.val113.pre = load ptr, ptr %i.z, align 8, !tbaa !35
  br label %Vec_IntPush.exit138

Vec_IntPush.exit138:                              ; preds = %bb.bf, %bb.bk, %Vec_IntGrow.exit11.sink.split.i134
  %.val113 = phi ptr [ %.val113180, %bb.bf ], [ %.val113180, %bb.bk ], [ %.val113.pre, %Vec_IntGrow.exit11.sink.split.i134 ] ; 3 uses
  %i.jg = phi i32 [ %i.io, %bb.bf ], [ %i.io, %bb.bk ], [ %.pre179, %Vec_IntGrow.exit11.sink.split.i134 ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !35
  %i.jj = add nsw i32 %i.jg, 1
  store i32 %i.jj, ptr %i.in, align 4, !tbaa !33
  %i.jk = sext i32 %i.jg to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jk
  store i32 %i.ik, ptr %i.jl, align 4, !tbaa !38
  %i.jm = getelementptr inbounds [4 x i8], ptr %.val113, i64 %i.ii
  store i32 -1, ptr %i.jm, align 4, !tbaa !38
  br label %bb.bp

bb.bp:                                            ; preds = %bb.be, %Vec_IntPush.exit138
  %.val113181 = phi ptr [ %.val113180, %bb.be ], [ %.val113, %Vec_IntPush.exit138 ]
  %.val104177 = phi ptr [ %.val104, %bb.be ], [ %.val113, %Vec_IntPush.exit138 ]
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %.critedge2, label %bb.be, !llvm.loop !99

.critedge2:                                       ; preds = %bb.bp, %Vec_IntAlloc.exit, %.preheader
  %i.jn = phi ptr [ %i.l, %Vec_IntAlloc.exit ], [ %i.ia, %.preheader ], [ %i.ia, %bb.bp ] ; 2 uses
  %.not.i139 = icmp eq ptr %i.jn, null
  br i1 %.not.i139, label %Vec_IntFree.exit, label %bb.bq

bb.bq:                                            ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.jn) #28
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.bq
  tail call void @free(ptr noundef nonnull %i.f) #28
  %i.jo = icmp sgt i32 %.val99, 0
  br i1 %i.jo, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %Vec_IntFree.exit
  %.val14.i = load i32, ptr %i.b, align 4, !tbaa !33 ; 2 uses
  %i.jp = icmp sgt i32 %.val14.i, 0
  br i1 %i.jp, label %.lr.ph.i140, label %Map_ManGroupCompact.exit

.lr.ph.i140:                                      ; preds = %bb.br
  %i.jq = getelementptr i8, ptr %1, i64 8
  %.val12.i = load ptr, ptr %i.jq, align 8, !tbaa !35 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %.lr.ph.i140
  %.val18.i = phi i32 [ %.val14.i, %.lr.ph.i140 ], [ %.val.i, %bb.bu ]
  %indvars.iv.i141 = phi i64 [ 0, %.lr.ph.i140 ], [ %indvars.iv.next.i143, %bb.bu ] ; 2 uses
  %.016.i = phi i32 [ 0, %.lr.ph.i140 ], [ %.1.i, %bb.bu ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.val12.i, i64 %indvars.iv.i141
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !38 ; 2 uses
  %.not.i142 = icmp eq i32 %i.js, -1
  br i1 %.not.i142, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jt = add nsw i32 %.016.i, 1
  %i.ju = sext i32 %.016.i to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %.val12.i, i64 %i.ju
  store i32 %i.js, ptr %i.jv, align 4, !tbaa !38
  %.val.pre.i = load i32, ptr %i.b, align 4, !tbaa !33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.val.i = phi i32 [ %.val.pre.i, %bb.bt ], [ %.val18.i, %bb.bs ] ; 2 uses
  %.1.i = phi i32 [ %i.jt, %bb.bt ], [ %.016.i, %bb.bs ] ; 2 uses
  %indvars.iv.next.i143 = add nuw nsw i64 %indvars.iv.i141, 1 ; 2 uses
  %i.jw = sext i32 %.val.i to i64
  %i.jx = icmp slt i64 %indvars.iv.next.i143, %i.jw
  br i1 %i.jx, label %bb.bs, label %Map_ManGroupCompact.exit, !llvm.loop !2

Map_ManGroupCompact.exit:                         ; preds = %bb.bu, %bb.br
  %.0.lcssa.i = phi i32 [ 0, %bb.br ], [ %.1.i, %bb.bu ]
  store i32 %.0.lcssa.i, ptr %i.b, align 4, !tbaa !33
  br label %bb.bv

bb.bv:                                            ; preds = %Map_ManGroupCompact.exit, %Vec_IntFree.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !35 ; 2 uses
  %.not.i144 = icmp eq ptr %i.jz, null
  br i1 %.not.i144, label %Vec_IntFree.exit145, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @free(ptr noundef nonnull %i.jz) #28
  br label %Vec_IntFree.exit145

Vec_IntFree.exit145:                              ; preds = %bb.bv, %bb.bw
  tail call void @free(ptr noundef nonnull %i.a) #28
  %i.ka = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !35 ; 2 uses
  %.not.i146 = icmp eq ptr %i.kb, null
  br i1 %.not.i146, label %Vec_IntFree.exit147, label %bb.bx

bb.bx:                                            ; preds = %Vec_IntFree.exit145
  tail call void @free(ptr noundef nonnull %i.kb) #28
  br label %Vec_IntFree.exit147

Vec_IntFree.exit147:                              ; preds = %Vec_IntFree.exit145, %bb.bx
  tail call void @free(ptr noundef nonnull %i.c) #28
  %.val95 = load i32, ptr %i.b, align 4, !tbaa !33
  %.val94 = load i32, ptr %i.d, align 4, !tbaa !33
  %.neg = add i32 %.val100, %.val101
  %i.kc = add i32 %.val95, %.val94
  %i.kd = sub i32 %.neg, %i.kc
  ret i32 %i.kd
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Mop_ManMergeDist1Pairs2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val93149 = load i32, ptr %i.a, align 4, !tbaa !33 ; 2 uses
  %i.b = icmp sgt i32 %.val93149, 0
  br i1 %i.b, label %.lr.ph153, label %.critedge.thread

.lr.ph153:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 12
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %.val95.pre = load ptr, ptr %i.c, align 8, !tbaa !35 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph153, %.critedge2
  %.val93210 = phi i32 [ %.val93149, %.lr.ph153 ], [ %.val93, %.critedge2 ] ; 3 uses
  %.val97204.a = phi ptr [ %.val95.pre, %.lr.ph153 ], [ %.val97205, %.critedge2 ] ; 3 uses
  %.val96196.a = phi ptr [ %.val95.pre, %.lr.ph153 ], [ %.val96197, %.critedge2 ] ; 3 uses
  %.val94190.a = phi ptr [ %.val95.pre, %.lr.ph153 ], [ %.val94191, %.critedge2 ] ; 3 uses
  %.val95 = phi ptr [ %.val95.pre, %.lr.ph153 ], [ %.val95186, %.critedge2 ] ; 3 uses
  %indvars.iv182 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next183.pre-phi, %.critedge2 ] ; 4 uses
  %indvars.iv177 = phi i64 [ 1, %.lr.ph153 ], [ %indvars.iv.next178, %.critedge2 ] ; 2 uses
  %.0151 = phi i32 [ 0, %.lr.ph153 ], [ %.5, %.critedge2 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %indvars.iv182
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38   ; 4 uses
  %.not80 = icmp eq i32 %i.k, -1
  br i1 %.not80, label %..critedge2_crit_edge, label %bb.c

..critedge2_crit_edge:                            ; preds = %bb.b
  %.pre212 = add nuw nsw i64 %indvars.iv182, 1
  br label %.critedge2

bb.c:                                             ; preds = %bb.b
  %.val86 = load i32, ptr %i.d, align 8, !tbaa !24
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.l = getelementptr i8, ptr %.val87, i64 8
  %.val87.val = load ptr, ptr %i.l, align 8, !tbaa !28 ; 3 uses
  %i.m = mul i32 %.val86, %i.k
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.val87.val, i64 %i.n ; 16 uses
  %i.p = add nuw nsw i64 %indvars.iv182, 1        ; 3 uses
  %i.q = sext i32 %.val93210 to i64
  %i.r = icmp slt i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph148.preheader, label %.critedge2

.lr.ph148.preheader:                              ; preds = %bb.c
  %i.s = shl nsw i64 %i.n, 3                      ; 2 uses
  %scevgep253.a = getelementptr i8, ptr %.val87.val, i64 %i.s
  %scevgep293.a = getelementptr i8, ptr %.val87.val, i64 %i.s
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %Mop_ManCheckDist1.exit.thread
  %.val97207.a = phi ptr [ %.val97208, %Mop_ManCheckDist1.exit.thread ], [ %.val97204.a, %.lr.ph148.preheader ] ; 11 uses
  %.val96198.a = phi ptr [ %.val96199, %Mop_ManCheckDist1.exit.thread ], [ %.val96196.a, %.lr.ph148.preheader ] ; 9 uses
  %.val94 = phi ptr [ %.val94193, %Mop_ManCheckDist1.exit.thread ], [ %.val94190.a, %.lr.ph148.preheader ] ; 8 uses
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %Mop_ManCheckDist1.exit.thread ], [ %indvars.iv177, %.lr.ph148.preheader ] ; 3 uses
  %.1145 = phi i32 [ %.4, %Mop_ManCheckDist1.exit.thread ], [ %.0151, %.lr.ph148.preheader ] ; 9 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %indvars.iv179
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38   ; 4 uses
  %.not81 = icmp eq i32 %i.u, -1
  br i1 %.not81, label %Mop_ManCheckDist1.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph148
  %.val = load i32, ptr %i.d, align 8, !tbaa !24  ; 6 uses
  %.val85 = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.v = getelementptr i8, ptr %.val85, i64 8
  %.val85.val = load ptr, ptr %i.v, align 8, !tbaa !28 ; 3 uses
  %i.w = mul i32 %.val, %i.u
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %.val85.val, i64 %i.x ; 16 uses
  %i.z = icmp sgt i32 %.val, 0
  br i1 %i.z, label %.lr.ph.preheader.i, label %Mop_ManCheckDist1.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %.val to i64 ; 16 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %select.unfold.i ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  %i.ae = icmp eq i64 %i.ab, %i.ad                ; 2 uses
  br i1 %i.ae, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.af = xor i64 %i.ad, %i.ab                    ; 3 uses
  %i.ag = lshr i64 %i.af, 1                       ; 2 uses
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 6148914691236517205
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %Mop_ManCheckDist1.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aj = and i64 %i.af, 6148914691236517205
  %i.ak = and i64 %i.aj, %i.ag
  %i.al = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.ak)
  %or.cond29.i = icmp eq i64 %i.al, 1
  br i1 %or.cond29.i, label %select.unfold.i.thread, label %Mop_ManCheckDist1.exit.thread

select.unfold.i:                                  ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Mop_ManCheckDist1.exit, label %.lr.ph.i, !llvm.loop !3

select.unfold.i.thread:                           ; preds = %bb.f
  %indvars.iv.next.i223 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i224 = icmp eq i64 %indvars.iv.next.i223, %wide.trip.count.i
  br i1 %exitcond.not.i224, label %Mop_ManCheckDist1.exit.thread226, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %select.unfold.i.thread, %select.unfold.i.1
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %select.unfold.i.1 ], [ %indvars.iv.next.i223, %select.unfold.i.thread ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.1
  %i.an = load i64, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.1
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %select.unfold.i.1, label %Mop_ManCheckDist1.exit.thread

select.unfold.i.1:                                ; preds = %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %Mop_ManCheckDist1.exit, label %.lr.ph.i.1, !llvm.loop !3

Mop_ManCheckDist1.exit:                           ; preds = %select.unfold.i.1, %select.unfold.i
  br i1 %i.ae, label %Mop_ManCheckDist1.exit.thread, label %Mop_ManCheckDist1.exit.thread226

Mop_ManCheckDist1.exit.thread226:                 ; preds = %select.unfold.i.thread, %Mop_ManCheckDist1.exit
  %.val90 = load i32, ptr %i.f, align 4, !tbaa !25 ; 8 uses
  %.val91 = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ar = getelementptr i8, ptr %.val91, i64 8
  %.val91.val = load ptr, ptr %i.ar, align 8, !tbaa !28 ; 6 uses
  %i.as = mul i32 %.val90, %i.k
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %.val91.val, i64 %i.at ; 12 uses
  %i.av = mul i32 %.val90, %i.u
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %.val91.val, i64 %i.aw ; 12 uses
  %i.ay = icmp sgt i32 %.val90, 0                 ; 2 uses
  br i1 %i.ay, label %.lr.ph.preheader.i98, label %.lr.ph139.preheader

.lr.ph.preheader.i98:                             ; preds = %Mop_ManCheckDist1.exit.thread226
  %wide.trip.count.i99 = zext nneg i32 %.val90 to i64 ; 8 uses
  br label %.lr.ph.i100

bb.g:                                             ; preds = %.lr.ph.i100
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i103, %wide.trip.count.i99
  br i1 %exitcond.not.i104, label %.lr.ph139.preheader, label %.lr.ph.i100, !llvm.loop !4

.lr.ph.i100:                                      ; preds = %bb.g, %.lr.ph.preheader.i98
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.preheader.i98 ], [ %indvars.iv.next.i103, %bb.g ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i101
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !44 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i101
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !44
  %i.bd = and i64 %i.bc, %i.ba
  %.not.i102 = icmp eq i64 %i.ba, %i.bd
  br i1 %.not.i102, label %bb.g, label %.lr.ph.i108

.lr.ph139.preheader:                              ; preds = %bb.g, %Mop_ManCheckDist1.exit.thread226
  %wide.trip.count170 = zext nneg i32 %.val to i64
  %min.iters.check259 = icmp ult i32 %.val, 6
  br i1 %min.iters.check259, label %.lr.ph139.preheader314, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.lr.ph139.preheader
  %i.be = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.bf = add nsw i64 %i.x, %wide.trip.count.i
  %i.bg = shl nsw i64 %i.bf, 3
  %scevgep252 = getelementptr i8, ptr %.val85.val, i64 %i.bg
  %scevgep254 = getelementptr i8, ptr %scevgep253.a, i64 %i.be
  %bound0255 = icmp ult ptr %i.y, %scevgep254
  %bound1256 = icmp ult ptr %i.o, %scevgep252
  %found.conflict257 = and i1 %bound0255, %bound1256
  br i1 %found.conflict257, label %.lr.ph139.preheader314, label %vector.ph260

vector.ph260:                                     ; preds = %vector.memcheck251
  %n.vec261 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next268, %vector.body262 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index263 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load264.a = load <2 x i64>, ptr %i.bh, align 8, !tbaa !44, !alias.scope !124
  %wide.load265.a = load <2 x i64>, ptr %i.bi, align 8, !tbaa !44, !alias.scope !124
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index263 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load266.a = load <2 x i64>, ptr %i.bj, align 8, !tbaa !44, !alias.scope !125, !noalias !124
  %wide.load267 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !44, !alias.scope !125, !noalias !124
  %i.bl = and <2 x i64> %wide.load266.a, %wide.load264.a
  %i.bm = and <2 x i64> %wide.load267, %wide.load265.a
  store <2 x i64> %i.bl, ptr %i.bj, align 8, !tbaa !44, !alias.scope !125, !noalias !124
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !tbaa !44, !alias.scope !125, !noalias !124
  %index.next268 = add nuw i64 %index263, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.bn, label %middle.block269, label %vector.body262, !llvm.loop !103

middle.block269:                                  ; preds = %vector.body262
  %cmp.n270 = icmp eq i64 %n.vec261, %wide.trip.count.i
  br i1 %cmp.n270, label %.preheader, label %.lr.ph139.preheader314

.lr.ph139.preheader314:                           ; preds = %vector.memcheck251, %.lr.ph139.preheader, %middle.block269
  %indvars.iv166.ph = phi i64 [ 0, %vector.memcheck251 ], [ 0, %.lr.ph139.preheader ], [ %n.vec261, %middle.block269 ] ; 3 uses
  %xtraiter329 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod330.not = icmp eq i64 %xtraiter329, 0
  br i1 %lcmp.mod330.not, label %.lr.ph139.prol.loopexit, label %.lr.ph139.prol

.lr.ph139.prol:                                   ; preds = %.lr.ph139.preheader314, %.lr.ph139.prol
  %indvars.iv166.prol = phi i64 [ %indvars.iv.next167.prol, %.lr.ph139.prol ], [ %indvars.iv166.ph, %.lr.ph139.preheader314 ] ; 3 uses
  %prol.iter331 = phi i64 [ %prol.iter331.next, %.lr.ph139.prol ], [ 0, %.lr.ph139.preheader314 ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv166.prol
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv166.prol ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !44
  %i.bs = and i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !44
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.prol, 1 ; 2 uses
  %prol.iter331.next = add i64 %prol.iter331, 1   ; 2 uses
  %prol.iter331.cmp.not = icmp eq i64 %prol.iter331.next, %xtraiter329
  br i1 %prol.iter331.cmp.not, label %.lr.ph139.prol.loopexit, label %.lr.ph139.prol, !llvm.loop !104

.lr.ph139.prol.loopexit:                          ; preds = %.lr.ph139.prol, %.lr.ph139.preheader314
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %.lr.ph139.preheader314 ], [ %indvars.iv.next167.prol, %.lr.ph139.prol ]
  %i.bt = sub nsw i64 %indvars.iv166.ph, %wide.trip.count.i
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %.preheader, label %.lr.ph139

.preheader:                                       ; preds = %.lr.ph139.prol.loopexit, %.lr.ph139, %middle.block269
  br i1 %i.ay, label %.lr.ph141.preheader, label %._crit_edge142

.lr.ph141.preheader:                              ; preds = %.preheader
  %wide.trip.count175 = zext nneg i32 %.val90 to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %.val90, 6
  br i1 %min.iters.check, label %.lr.ph141.preheader313, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph141.preheader
  %i.bv = add nsw i64 %i.at, %wide.trip.count175
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep = getelementptr i8, ptr %.val91.val, i64 %i.bw
  %i.bx = add nsw i64 %i.aw, %wide.trip.count175
  %i.by = shl nsw i64 %i.bx, 3
  %scevgep247 = getelementptr i8, ptr %.val91.val, i64 %i.by
  %bound0 = icmp ult ptr %i.au, %scevgep247
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph141.preheader313, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count175, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <2 x i64>, ptr %i.bz, align 8, !tbaa !44, !alias.scope !126
  %wide.load248.a = load <2 x i64>, ptr %i.ca, align 8, !tbaa !44, !alias.scope !126
  %i.cb = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.cc = xor <2 x i64> %wide.load248.a, splat (i64 -1)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %wide.load249.a = load <2 x i64>, ptr %i.cd, align 8, !tbaa !44, !alias.scope !127, !noalias !126
  %wide.load250 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !44, !alias.scope !127, !noalias !126
  %i.cf = and <2 x i64> %wide.load249.a, %i.cb
  %i.cg = and <2 x i64> %wide.load250, %i.cc
  store <2 x i64> %i.cf, ptr %i.cd, align 8, !tbaa !44, !alias.scope !127, !noalias !126
  store <2 x i64> %i.cg, ptr %i.ce, align 8, !tbaa !44, !alias.scope !127, !noalias !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count175
  br i1 %cmp.n, label %._crit_edge142, label %.lr.ph141.preheader313

.lr.ph141.preheader313:                           ; preds = %vector.memcheck, %.lr.ph141.preheader, %middle.block
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph141.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter332 = and i64 %wide.trip.count175, 1
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph141.prol.loopexit, label %.lr.ph141.prol

.lr.ph141.prol:                                   ; preds = %.lr.ph141.preheader313
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv172.ph
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !44
  %i.ck = xor i64 %i.cj, -1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv172.ph ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !44
  %i.cn = and i64 %i.cm, %i.ck
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !44
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1
  br label %.lr.ph141.prol.loopexit

.lr.ph141.prol.loopexit:                          ; preds = %.lr.ph141.prol, %.lr.ph141.preheader313
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %.lr.ph141.preheader313 ], [ %indvars.iv.next173.prol, %.lr.ph141.prol ]
  %i.co = add nsw i64 %wide.trip.count175, -1
  %i.cp = icmp eq i64 %indvars.iv172.ph, %i.co
  br i1 %i.cp, label %._crit_edge142, label %.lr.ph141

.lr.ph139:                                        ; preds = %.lr.ph139.prol.loopexit, %.lr.ph139
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.3, %.lr.ph139 ], [ %indvars.iv166.unr, %.lr.ph139.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv166
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv166 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !44
  %i.cu = and i64 %i.ct, %i.cr
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !44
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next167 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !44
  %i.cz = and i64 %i.cy, %i.cw
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !44
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167.1
  %i.db = load i64, ptr %i.da, align 8, !tbaa !44
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next167.1 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !44
  %i.de = and i64 %i.dd, %i.db
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !44
  %indvars.iv.next167.2 = add nuw nsw i64 %indvars.iv166, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next167.2
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !44
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next167.2 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !44
  %i.dj = and i64 %i.di, %i.dg
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !44
  %indvars.iv.next167.3 = add nuw nsw i64 %indvars.iv166, 4 ; 2 uses
  %exitcond171.not.3 = icmp eq i64 %indvars.iv.next167.3, %wide.trip.count170
  br i1 %exitcond171.not.3, label %.preheader, label %.lr.ph139, !llvm.loop !109

.lr.ph141:                                        ; preds = %.lr.ph141.prol.loopexit, %.lr.ph141
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %.lr.ph141 ], [ %indvars.iv172.unr, %.lr.ph141.prol.loopexit ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv172
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !44
  %i.dm = xor i64 %i.dl, -1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv172 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !44
  %i.dp = and i64 %i.do, %i.dm
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !44
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next173
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !44
  %i.ds = xor i64 %i.dr, -1
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next173 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !44
  %i.dv = and i64 %i.du, %i.ds
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !44
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %wide.trip.count175
  br i1 %exitcond176.not.1, label %._crit_edge142, label %.lr.ph141, !llvm.loop !110

._crit_edge142:                                   ; preds = %.lr.ph141.prol.loopexit, %.lr.ph141, %middle.block, %.preheader
  %i.dw = load i32, ptr %i.h, align 4, !tbaa !33  ; 7 uses
  %i.dx = load i32, ptr %2, align 8, !tbaa !34
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.h, label %._crit_edge142.Vec_IntPush.exit_crit_edge

._crit_edge142.Vec_IntPush.exit_crit_edge:        ; preds = %._crit_edge142
  %.pre201.a = load ptr, ptr %i.i, align 8, !tbaa !35
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %._crit_edge142
  %i.dz = icmp slt i32 %i.dw, 16
  br i1 %i.dz, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ea = load ptr, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ea, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ea, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ec = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ed = icmp samesign ult i32 %i.dw, 1073741823
  %i.ee = shl nuw nsw i32 %i.dw, 1
  %spec.select.i = select i1 %i.ed, i32 %i.ee, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.dw, %spec.select.i
  %.pre202.a = load ptr, ptr %i.i, align 8, !tbaa !35 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre202.a, null
  %i.ef = zext nneg i32 %spec.select.i to i64
  %i.eg = shl nuw nsw i64 %i.ef, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eh = tail call ptr @realloc(ptr noundef nonnull %.pre202.a, i64 noundef %i.eg) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.ei = tail call noalias ptr @malloc(i64 noundef %i.eg) #27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %i.ej = phi ptr [ %i.ec, %bb.k ], [ %i.eb, %bb.j ], [ %i.eh, %bb.n ], [ %i.ei, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %i.ej, ptr %i.i, align 8, !tbaa !35
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !34
  %.pre203 = load i32, ptr %i.h, align 4, !tbaa !33
  %.val97.pre = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge142.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %.val97 = phi ptr [ %.val97207.a, %._crit_edge142.Vec_IntPush.exit_crit_edge ], [ %.val97207.a, %bb.l ], [ %.val97.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.ek = phi i32 [ %i.dw, %._crit_edge142.Vec_IntPush.exit_crit_edge ], [ %i.dw, %bb.l ], [ %.pre203, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.el = phi ptr [ %.pre201.a, %._crit_edge142.Vec_IntPush.exit_crit_edge ], [ %.pre202.a, %bb.l ], [ %i.ej, %Vec_IntGrow.exit11.sink.split.i ]
  %i.em = add nsw i32 %i.ek, 1
  store i32 %i.em, ptr %i.h, align 4, !tbaa !33
  %i.en = sext i32 %i.ek to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.en
  store i32 %i.u, ptr %i.eo, align 4, !tbaa !38
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val97, i64 %indvars.iv179
  store i32 -1, ptr %i.ep, align 4, !tbaa !38
  %i.eq = add nsw i32 %.1145, 1
  br label %Mop_ManCheckDist1.exit.thread

bb.p:                                             ; preds = %.lr.ph.i108
  %indvars.iv.next.i111 = add nuw nsw i64 %indvars.iv.i109, 1 ; 2 uses
  %exitcond.not.i112 = icmp eq i64 %indvars.iv.next.i111, %wide.trip.count.i99
  br i1 %exitcond.not.i112, label %Mop_ManCheckContain.exit113.preheader, label %.lr.ph.i108, !llvm.loop !4

Mop_ManCheckContain.exit113.preheader:            ; preds = %bb.p
  %min.iters.check300 = icmp ult i32 %.val, 6
  br i1 %min.iters.check300, label %Mop_ManCheckContain.exit113.preheader316, label %vector.memcheck292

vector.memcheck292:                               ; preds = %Mop_ManCheckContain.exit113.preheader
  %i.er = shl nuw nsw i64 %wide.trip.count.i, 3
  %scevgep294.a = getelementptr i8, ptr %scevgep293.a, i64 %i.er
  %i.es = add nsw i64 %i.x, %wide.trip.count.i
  %i.et = shl nsw i64 %i.es, 3
  %scevgep295 = getelementptr i8, ptr %.val85.val, i64 %i.et
  %bound0296 = icmp ult ptr %i.o, %scevgep295
  %bound1297 = icmp ult ptr %i.y, %scevgep294.a
  %found.conflict298 = and i1 %bound0296, %bound1297
  br i1 %found.conflict298, label %Mop_ManCheckContain.exit113.preheader316, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck292
  %n.vec302 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index304 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load305.a = load <2 x i64>, ptr %i.eu, align 8, !tbaa !44, !alias.scope !128
  %wide.load306.a = load <2 x i64>, ptr %i.ev, align 8, !tbaa !44, !alias.scope !128
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index304 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load307.a = load <2 x i64>, ptr %i.ew, align 8, !tbaa !44, !alias.scope !129, !noalias !128
  %wide.load308 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !44, !alias.scope !129, !noalias !128
  %i.ey = and <2 x i64> %wide.load307.a, %wide.load305.a
  %i.ez = and <2 x i64> %wide.load308, %wide.load306.a
  store <2 x i64> %i.ey, ptr %i.ew, align 8, !tbaa !44, !alias.scope !129, !noalias !128
  store <2 x i64> %i.ez, ptr %i.ex, align 8, !tbaa !44, !alias.scope !129, !noalias !128
  %index.next309 = add nuw i64 %index304, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.fa, label %middle.block310, label %vector.body303, !llvm.loop !114

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %n.vec302, %wide.trip.count.i
  br i1 %cmp.n311, label %.lr.ph137.preheader.a, label %Mop_ManCheckContain.exit113.preheader316

Mop_ManCheckContain.exit113.preheader316:         ; preds = %vector.memcheck292, %Mop_ManCheckContain.exit113.preheader, %middle.block310
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck292 ], [ 0, %Mop_ManCheckContain.exit113.preheader ], [ %n.vec302, %middle.block310 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Mop_ManCheckContain.exit113.prol.loopexit, label %Mop_ManCheckContain.exit113.prol

Mop_ManCheckContain.exit113.prol:                 ; preds = %Mop_ManCheckContain.exit113.preheader316, %Mop_ManCheckContain.exit113.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %Mop_ManCheckContain.exit113.prol ], [ %indvars.iv.ph, %Mop_ManCheckContain.exit113.preheader316 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %Mop_ManCheckContain.exit113.prol ], [ 0, %Mop_ManCheckContain.exit113.preheader316 ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.prol
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.prol ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !44
  %i.ff = and i64 %i.fe, %i.fc
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !44
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %Mop_ManCheckContain.exit113.prol.loopexit, label %Mop_ManCheckContain.exit113.prol, !llvm.loop !115

Mop_ManCheckContain.exit113.prol.loopexit:        ; preds = %Mop_ManCheckContain.exit113.prol, %Mop_ManCheckContain.exit113.preheader316
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %Mop_ManCheckContain.exit113.preheader316 ], [ %indvars.iv.next.prol, %Mop_ManCheckContain.exit113.prol ]
  %i.fg = sub nsw i64 %indvars.iv.ph, %wide.trip.count.i
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %.lr.ph137.preheader.a, label %Mop_ManCheckContain.exit113

.lr.ph.i108:                                      ; preds = %.lr.ph.i100, %bb.p
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i111, %bb.p ], [ 0, %.lr.ph.i100 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i109
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !44 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i109
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !44
  %i.fm = and i64 %i.fl, %i.fj
  %.not.i110 = icmp eq i64 %i.fj, %i.fm
  br i1 %.not.i110, label %bb.p, label %Mop_ManCheckDist1.exit.thread

.lr.ph137.preheader.a:                            ; preds = %Mop_ManCheckContain.exit113.prol.loopexit, %Mop_ManCheckContain.exit113, %middle.block310
  %wide.trip.count164 = zext nneg i32 %.val90 to i64
  %min.iters.check279 = icmp ult i32 %.val90, 6
  br i1 %min.iters.check279, label %.lr.ph137.preheader315, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph137.preheader.a
  %i.fn = add nsw i64 %i.aw, %wide.trip.count.i99
  %i.fo = shl nsw i64 %i.fn, 3
  %scevgep273.a = getelementptr i8, ptr %.val91.val, i64 %i.fo
  %i.fp = add nsw i64 %i.at, %wide.trip.count.i99
  %i.fq = shl nsw i64 %i.fp, 3
  %scevgep274 = getelementptr i8, ptr %.val91.val, i64 %i.fq
  %bound0275 = icmp ult ptr %i.ax, %scevgep274
  %bound1276 = icmp ult ptr %i.au, %scevgep273.a
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %.lr.ph137.preheader315, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck272
  %n.vec281 = and i64 %wide.trip.count.i99, 2147483644 ; 3 uses
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index283 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %wide.load284.a = load <2 x i64>, ptr %i.fr, align 8, !tbaa !44, !alias.scope !130
  %wide.load285.a = load <2 x i64>, ptr %i.fs, align 8, !tbaa !44, !alias.scope !130
  %i.ft = xor <2 x i64> %wide.load284.a, splat (i64 -1)
  %i.fu = xor <2 x i64> %wide.load285.a, splat (i64 -1)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index283 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %wide.load286.a = load <2 x i64>, ptr %i.fv, align 8, !tbaa !44, !alias.scope !131, !noalias !130
  %wide.load287 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !44, !alias.scope !131, !noalias !130
  %i.fx = and <2 x i64> %wide.load286.a, %i.ft
  %i.fy = and <2 x i64> %wide.load287, %i.fu
  store <2 x i64> %i.fx, ptr %i.fv, align 8, !tbaa !44, !alias.scope !131, !noalias !130
  store <2 x i64> %i.fy, ptr %i.fw, align 8, !tbaa !44, !alias.scope !131, !noalias !130
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.fz, label %middle.block289, label %vector.body282, !llvm.loop !119

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %n.vec281, %wide.trip.count.i99
  br i1 %cmp.n290, label %._crit_edge, label %.lr.ph137.preheader315

.lr.ph137.preheader315:                           ; preds = %vector.memcheck272, %.lr.ph137.preheader.a, %middle.block289
  %indvars.iv161.ph = phi i64 [ 0, %vector.memcheck272 ], [ 0, %.lr.ph137.preheader.a ], [ %n.vec281, %middle.block289 ] ; 5 uses
  %xtraiter326 = and i64 %wide.trip.count.i99, 1
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %.lr.ph137.prol.loopexit, label %.lr.ph137.prol

.lr.ph137.prol:                                   ; preds = %.lr.ph137.preheader315
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv161.ph
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !44
  %i.gc = xor i64 %i.gb, -1
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv161.ph ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !44
  %i.gf = and i64 %i.ge, %i.gc
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !44
  %indvars.iv.next162.prol = or disjoint i64 %indvars.iv161.ph, 1
  br label %.lr.ph137.prol.loopexit

.lr.ph137.prol.loopexit:                          ; preds = %.lr.ph137.prol, %.lr.ph137.preheader315
  %indvars.iv161.unr = phi i64 [ %indvars.iv161.ph, %.lr.ph137.preheader315 ], [ %indvars.iv.next162.prol, %.lr.ph137.prol ]
  %3 = add nsw i64 %wide.trip.count.i99, -1
  %4 = icmp eq i64 %indvars.iv161.ph, %3
  br i1 %4, label %._crit_edge, label %.lr.ph137

Mop_ManCheckContain.exit113:                      ; preds = %Mop_ManCheckContain.exit113.prol.loopexit, %Mop_ManCheckContain.exit113
  %indvars.iv.a = phi i64 [ %indvars.iv.next.3.a, %Mop_ManCheckContain.exit113 ], [ %indvars.iv.unr, %Mop_ManCheckContain.exit113.prol.loopexit ] ; 6 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.a
  %6 = load i64, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.a ; 2 uses
  %8 = load i64, ptr %7, align 8, !tbaa !44
  %9 = and i64 %8, %6
  store i64 %9, ptr %7, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next
  %11 = load i64, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next ; 2 uses
  %13 = load i64, ptr %12, align 8, !tbaa !44
  %14 = and i64 %13, %11
  store i64 %14, ptr %12, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.a, 2 ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.1
  %16 = load i64, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.1 ; 2 uses
  %18 = load i64, ptr %17, align 8, !tbaa !44
  %19 = and i64 %18, %16
  store i64 %19, ptr %17, align 8, !tbaa !44
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.a, 3 ; 2 uses
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.2
  %21 = load i64, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.2 ; 2 uses
  %23 = load i64, ptr %22, align 8, !tbaa !44
  %24 = and i64 %23, %21
  store i64 %24, ptr %22, align 8, !tbaa !44
  %indvars.iv.next.3.a = add nuw nsw i64 %indvars.iv.a, 4 ; 2 uses
  %exitcond.not.3.a = icmp eq i64 %indvars.iv.next.3.a, %wide.trip.count.i
  br i1 %exitcond.not.3.a, label %.lr.ph137.preheader.a, label %Mop_ManCheckContain.exit113, !llvm.loop !120

.lr.ph137:                                        ; preds = %.lr.ph137.prol.loopexit, %.lr.ph137
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.1, %.lr.ph137 ], [ %indvars.iv161.unr, %.lr.ph137.prol.loopexit ] ; 4 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv161
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !44
  %i.gi = xor i64 %i.gh, -1
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv161 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !44
  %i.gl = and i64 %i.gk, %i.gi
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !44
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next162
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !44
  %i.go = xor i64 %i.gn, -1
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next162 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !44
  %i.gr = and i64 %i.gq, %i.go
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !44
  %indvars.iv.next162.1 = add nuw nsw i64 %indvars.iv161, 2 ; 2 uses
  %exitcond165.not.1 = icmp eq i64 %indvars.iv.next162.1, %wide.trip.count164
  br i1 %exitcond165.not.1, label %._crit_edge, label %.lr.ph137, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph137.prol.loopexit, %.lr.ph137, %middle.block289
  %i.gs = load i32, ptr %i.h, align 4, !tbaa !33  ; 7 uses
  %i.gt = load i32, ptr %2, align 8, !tbaa !34
  %i.gu = icmp eq i32 %i.gs, %i.gt
  br i1 %i.gu, label %bb.q, label %._crit_edge.Vec_IntPush.exit121_crit_edge

._crit_edge.Vec_IntPush.exit121_crit_edge:        ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !35
  br label %Vec_IntPush.exit121

bb.q:                                             ; preds = %._crit_edge
  %i.gv = icmp slt i32 %i.gs, 16
  br i1 %i.gv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.gw = load ptr, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  %.not9.i.i119 = icmp eq ptr %i.gw, null
  br i1 %.not9.i.i119, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gw, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i117

bb.t:                                             ; preds = %bb.r
  %i.gy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i117

bb.u:                                             ; preds = %bb.q
  %i.gz = icmp samesign ult i32 %i.gs, 1073741823
  %i.ha = shl nuw nsw i32 %i.gs, 1
  %spec.select.i114 = select i1 %i.gz, i32 %i.ha, i32 2147483647 ; 4 uses
  %.not.i9.i115 = icmp samesign ult i32 %i.gs, %spec.select.i114
  %.pre194.a = load ptr, ptr %i.i, align 8, !tbaa !35 ; 3 uses
  br i1 %.not.i9.i115, label %bb.v, label %Vec_IntPush.exit121

bb.v:                                             ; preds = %bb.u
  %.not9.i10.i116 = icmp eq ptr %.pre194.a, null
  %i.hb = zext nneg i32 %spec.select.i114 to i64
  %i.hc = shl nuw nsw i64 %i.hb, 2                ; 2 uses
  br i1 %.not9.i10.i116, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hd = tail call ptr @realloc(ptr noundef nonnull %.pre194.a, i64 noundef %i.hc) #30
  br label %Vec_IntGrow.exit11.sink.split.i117

bb.x:                                             ; preds = %bb.v
  %i.he = tail call noalias ptr @malloc(i64 noundef %i.hc) #27
  br label %Vec_IntGrow.exit11.sink.split.i117

Vec_IntGrow.exit11.sink.split.i117:               ; preds = %bb.w, %bb.x, %bb.s, %bb.t
  %i.hf = phi ptr [ %i.gy, %bb.t ], [ %i.gx, %bb.s ], [ %i.hd, %bb.w ], [ %i.he, %bb.x ] ; 2 uses
  %spec.select.sink.i118 = phi i32 [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i114, %bb.w ], [ %spec.select.i114, %bb.x ]
  store ptr %i.hf, ptr %i.i, align 8, !tbaa !35
  store i32 %spec.select.sink.i118, ptr %2, align 8, !tbaa !34
  %.pre195 = load i32, ptr %i.h, align 4, !tbaa !33
  %.val96.pre = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  br label %Vec_IntPush.exit121

Vec_IntPush.exit121:                              ; preds = %._crit_edge.Vec_IntPush.exit121_crit_edge, %bb.u, %Vec_IntGrow.exit11.sink.split.i117
  %.val97206 = phi ptr [ %.val97207.a, %._crit_edge.Vec_IntPush.exit121_crit_edge ], [ %.val97207.a, %bb.u ], [ %.val96.pre, %Vec_IntGrow.exit11.sink.split.i117 ]
  %.val96 = phi ptr [ %.val96198.a, %._crit_edge.Vec_IntPush.exit121_crit_edge ], [ %.val96198.a, %bb.u ], [ %.val96.pre, %Vec_IntGrow.exit11.sink.split.i117 ] ; 3 uses
  %i.hg = phi i32 [ %i.gs, %._crit_edge.Vec_IntPush.exit121_crit_edge ], [ %i.gs, %bb.u ], [ %.pre195, %Vec_IntGrow.exit11.sink.split.i117 ] ; 2 uses
  %i.hh = phi ptr [ %.pre, %._crit_edge.Vec_IntPush.exit121_crit_edge ], [ %.pre194.a, %bb.u ], [ %i.hf, %Vec_IntGrow.exit11.sink.split.i117 ]
  %i.hi = add nsw i32 %i.hg, 1
  store i32 %i.hi, ptr %i.h, align 4, !tbaa !33
  %i.hj = sext i32 %i.hg to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hj
  store i32 %i.k, ptr %i.hk, align 4, !tbaa !38
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv182
  store i32 -1, ptr %i.hl, align 4, !tbaa !38
  %i.hm = add nsw i32 %.1145, 1
  br label %Mop_ManCheckDist1.exit.thread

Mop_ManCheckDist1.exit.thread:                    ; preds = %.lr.ph.i.1, %bb.f, %bb.e, %.lr.ph.i108, %bb.d, %Mop_ManCheckDist1.exit, %Vec_IntPush.exit121, %Vec_IntPush.exit, %.lr.ph148
  %.val97208 = phi ptr [ %.val97207.a, %.lr.ph148 ], [ %.val97207.a, %Mop_ManCheckDist1.exit ], [ %.val97, %Vec_IntPush.exit ], [ %.val97206, %Vec_IntPush.exit121 ], [ %.val97207.a, %.lr.ph.i108 ], [ %.val97207.a, %bb.d ], [ %.val97207.a, %bb.f ], [ %.val97207.a, %bb.e ], [ %.val97207.a, %.lr.ph.i.1 ] ; 2 uses
  %.val96199 = phi ptr [ %.val96198.a, %.lr.ph148 ], [ %.val96198.a, %Mop_ManCheckDist1.exit ], [ %.val97, %Vec_IntPush.exit ], [ %.val96, %Vec_IntPush.exit121 ], [ %.val96198.a, %.lr.ph.i108 ], [ %.val96198.a, %bb.d ], [ %.val96198.a, %bb.f ], [ %.val96198.a, %bb.e ], [ %.val96198.a, %.lr.ph.i.1 ] ; 2 uses
  %.val94193 = phi ptr [ %.val94, %.lr.ph148 ], [ %.val94, %Mop_ManCheckDist1.exit ], [ %.val97, %Vec_IntPush.exit ], [ %.val96, %Vec_IntPush.exit121 ], [ %.val94, %.lr.ph.i108 ], [ %.val94, %bb.d ], [ %.val94, %bb.f ], [ %.val94, %bb.e ], [ %.val94, %.lr.ph.i.1 ] ; 3 uses
  %.4 = phi i32 [ %.1145, %.lr.ph148 ], [ %.1145, %Mop_ManCheckDist1.exit ], [ %i.eq, %Vec_IntPush.exit ], [ %i.hm, %Vec_IntPush.exit121 ], [ %.1145, %.lr.ph.i108 ], [ %.1145, %bb.d ], [ %.1145, %bb.f ], [ %.1145, %bb.e ], [ %.1145, %.lr.ph.i.1 ] ; 2 uses
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %.val92 = load i32, ptr %i.a, align 4, !tbaa !33 ; 2 uses
  %i.hn = trunc nuw i64 %indvars.iv.next180 to i32
  %i.ho = icmp sgt i32 %.val92, %i.hn
  br i1 %i.ho, label %.lr.ph148, label %.critedge2, !llvm.loop !122

.critedge2:                                       ; preds = %Mop_ManCheckDist1.exit.thread, %..critedge2_crit_edge, %bb.c
  %indvars.iv.next183.pre-phi = phi i64 [ %.pre212, %..critedge2_crit_edge ], [ %i.p, %bb.c ], [ %i.p, %Mop_ManCheckDist1.exit.thread ] ; 2 uses
  %.val93 = phi i32 [ %.val93210, %..critedge2_crit_edge ], [ %.val93210, %bb.c ], [ %.val92, %Mop_ManCheckDist1.exit.thread ] ; 4 uses
  %.val97205 = phi ptr [ %.val97204.a, %..critedge2_crit_edge ], [ %.val97204.a, %bb.c ], [ %.val97208, %Mop_ManCheckDist1.exit.thread ]
  %.val96197 = phi ptr [ %.val96196.a, %..critedge2_crit_edge ], [ %.val96196.a, %bb.c ], [ %.val96199, %Mop_ManCheckDist1.exit.thread ]
  %.val94191 = phi ptr [ %.val94190.a, %..critedge2_crit_edge ], [ %.val94190.a, %bb.c ], [ %.val94193, %Mop_ManCheckDist1.exit.thread ]
  %.val95186 = phi ptr [ %.val95, %..critedge2_crit_edge ], [ %.val95, %bb.c ], [ %.val94193, %Mop_ManCheckDist1.exit.thread ]
  %.5 = phi i32 [ %.0151, %..critedge2_crit_edge ], [ %.0151, %bb.c ], [ %.4, %Mop_ManCheckDist1.exit.thread ] ; 3 uses
  %i.hp = sext i32 %.val93 to i64
  %i.hq = icmp slt i64 %indvars.iv.next183.pre-phi, %i.hp
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  br i1 %i.hq, label %bb.b, label %.critedge, !llvm.loop !123

.critedge:                                        ; preds = %.critedge2
  %.not = icmp eq i32 %.5, 0
  br i1 %.not, label %.critedge.thread, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.hr = icmp sgt i32 %.val93, 0
  br i1 %i.hr, label %.lr.ph.i122, label %Map_ManGroupCompact.exit

.lr.ph.i122:                                      ; preds = %bb.y
  %i.hs = getelementptr i8, ptr %1, i64 8
  %.val12.i = load ptr, ptr %i.hs, align 8, !tbaa !35 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i122
  %.val18.i = phi i32 [ %.val93, %.lr.ph.i122 ], [ %.val.i, %bb.ab ]
  %indvars.iv.i123 = phi i64 [ 0, %.lr.ph.i122 ], [ %indvars.iv.next.i126, %bb.ab ] ; 2 uses
  %.016.i = phi i32 [ 0, %.lr.ph.i122 ], [ %.1.i125, %bb.ab ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.val12.i, i64 %indvars.iv.i123
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !38 ; 2 uses
  %.not.i124 = icmp eq i32 %i.hu, -1
  br i1 %.not.i124, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hv = add nsw i32 %.016.i, 1
  %i.hw = sext i32 %.016.i to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %.val12.i, i64 %i.hw
  store i32 %i.hu, ptr %i.hx, align 4, !tbaa !38
  %.val.pre.i = load i32, ptr %i.a, align 4, !tbaa !33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.val.i = phi i32 [ %.val.pre.i, %bb.aa ], [ %.val18.i, %bb.z ] ; 2 uses
  %.1.i125 = phi i32 [ %i.hv, %bb.aa ], [ %.016.i, %bb.z ] ; 2 uses
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i123, 1 ; 2 uses
  %i.hy = sext i32 %.val.i to i64
  %i.hz = icmp slt i64 %indvars.iv.next.i126, %i.hy
  br i1 %i.hz, label %bb.z, label %Map_ManGroupCompact.exit, !llvm.loop !2

Map_ManGroupCompact.exit:                         ; preds = %bb.ab, %bb.y
  %.0.lcssa.i = phi i32 [ 0, %bb.y ], [ %.1.i125, %bb.ab ]
  store i32 %.0.lcssa.i, ptr %i.a, align 4, !tbaa !33
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %Map_ManGroupCompact.exit, %.critedge
  %.0.lcssa232 = phi i32 [ 0, %.critedge ], [ %.5, %Map_ManGroupCompact.exit ], [ 0, %bb.a ]
  ret i32 %.0.lcssa232
}

; Function Attrs: nounwind uwtable
define i32 @Mop_ManMergeDist1All(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val21 = load i32, ptr %i.a, align 4, !tbaa !50 ; 2 uses
  %i.b = icmp sgt i32 %.val21, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = zext nneg i32 %.val21 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.027 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ]  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %.val23 = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.val23, i64 %indvars.iv.next ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.f, align 4, !tbaa !33
  %i.g = icmp eq i32 %.val, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 @Mop_ManRemoveIdentical(ptr noundef %0, ptr noundef nonnull %i.e)
  %.val22 = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.l = getelementptr [16 x i8], ptr %.val22, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 -32
  %i.n = tail call i32 @Mop_ManMergeDist1Pairs(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.m, ptr noundef %2, i32 noundef %3)
  %i.o = add i32 %i.k, %.027
  %i.p = add i32 %i.o, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %.027, %bb.b ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.q, label %bb.b, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %bb.f, %bb.a, %bb.d
  %.020 = phi i32 [ -1, %bb.d ], [ 0, %bb.a ], [ %.1, %bb.f ]
  ret i32 %.020
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6
end_hunk_0
begin_hunk_1_@vnsprintf

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #21

declare ptr @Abc_NtkCreateObj(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(1) }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = distinct !{!4, !42}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = distinct !{!8, !42}
!9 = distinct !{!9, !42}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTS10Vec_Wrd_t_", !18, i64 0}
!20 = !{!"p1 _ZTS10Vec_Int_t_", !18, i64 0}
!21 = !{!"Mop_Man_t_", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !19, i64 16, !19, i64 24, !20, i64 32, !20, i64 40}
!22 = !{!21, !15, i64 0}
!23 = !{!21, !15, i64 4}
!24 = !{!21, !15, i64 8}
!25 = !{!21, !15, i64 12}
!26 = !{!"p1 long", !18, i64 0}
!27 = !{!"Vec_Wrd_t_", !15, i64 0, !15, i64 4, !26, i64 8}
!28 = !{!27, !26, i64 8}
!29 = !{!21, !19, i64 16}
!30 = !{!21, !19, i64 24}
!31 = !{!"p1 int", !18, i64 0}
!32 = !{!"Vec_Int_t_", !15, i64 0, !15, i64 4, !31, i64 8}
!33 = !{!32, !15, i64 4}
!34 = !{!32, !15, i64 0}
!35 = !{!32, !31, i64 8}
!36 = !{!21, !20, i64 32}
!37 = !{!21, !20, i64 40}
!38 = !{!15, !15, i64 0}
!39 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!14, !14, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"long", !14, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!"llvm.loop.unswitch.partial.disable"}
!49 = !{!"Vec_Wec_t_", !15, i64 0, !15, i64 4, !20, i64 8}
!50 = !{!49, !15, i64 4}
!51 = !{!49, !20, i64 8}
!52 = !{!"timespec", !43, i64 0, !43, i64 8}
!53 = !{!52, !43, i64 0}
!54 = !{!52, !43, i64 8}
!55 = !{!49, !15, i64 0}
!56 = !{!27, !15, i64 0}
!57 = !{!27, !15, i64 4}
!58 = distinct !{!58, i1 true, !"vprintf"}
!59 = distinct !{!59, !58, !"vprintf: argument 0"}
!60 = distinct !{null}
!61 = !{!59}
!62 = distinct !{!62, !42}
!63 = distinct !{!63, !42}
!64 = distinct !{!64, !42}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !42}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !42}
!70 = distinct !{!70, !42, !45, !46}
!71 = distinct !{!71, !42, !46, !45}
!72 = distinct !{!72, !42}
!73 = distinct !{!73, !42}
!74 = distinct !{!74, i1 false, !"LVerDomain"}
!75 = distinct !{!75, !74}
!76 = distinct !{!76, !74}
!77 = distinct !{!77, !42, !45, !46}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !42, !45}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = !{!75}
!83 = !{!76}
!84 = distinct !{!84, !47}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !42}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !42}
!89 = distinct !{!89, !42}
!90 = distinct !{!90, !42, !48}
!91 = distinct !{!91, !42}
!92 = distinct !{!92, !42, !45, !46}
!93 = distinct !{!93, !47}
!94 = distinct !{!94, !42, !45}
!95 = distinct !{!95, !42, !45, !46}
!96 = distinct !{!96, !47}
!97 = distinct !{!97, !42, !45}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, i1 false, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !42, !45, !46}
!104 = distinct !{!104, !47}
!105 = distinct !{!105, i1 false, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !42, !45, !46}
!109 = distinct !{!109, !42, !45}
!110 = distinct !{!110, !42, !45}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !42, !45, !46}
!115 = distinct !{!115, !47}
!116 = distinct !{!116, i1 false, !"LVerDomain"}
!117 = distinct !{!117, !116}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !42, !45, !46}
!120 = distinct !{!120, !42, !45}
!121 = distinct !{!121, !42, !45}
!122 = distinct !{!122, !42}
!123 = distinct !{!123, !42}
!124 = !{!101}
!125 = !{!102}
!126 = !{!106}
!127 = !{!107}
!128 = !{!112}
!129 = !{!113}
!130 = !{!117}
!131 = !{!118}
!132 = distinct !{!132, i1 false, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !42, !45, !46}
!136 = distinct !{!136, !42, !45}
!137 = distinct !{!137, !42}
!138 = distinct !{!138, !42}
!139 = distinct !{!139, !42, !48}
!140 = !{!133}
!141 = !{!134}
!142 = distinct !{!142, !42}
!143 = distinct !{!143, !42, !45, !46}
!144 = distinct !{!144, !42, !46, !45}
!145 = distinct !{!145, !42, !45, !46}
!146 = distinct !{!146, !42, !46, !45}
!147 = distinct !{!147, !42, !45, !46}
!148 = distinct !{!148, !42, !46, !45}
!149 = distinct !{!149, !42}
!150 = distinct !{!150, !42}
!151 = distinct !{!151, !42, !45, !46}
!152 = distinct !{!152, !42, !46, !45}
!153 = distinct !{!153, !42, !45, !46}
!154 = distinct !{!154, !42, !46, !45}
!155 = distinct !{!155, !42}
!156 = distinct !{!156, !42}
!157 = distinct !{!157, !42}
!158 = distinct !{!158, !42, !45, !46}
!159 = distinct !{!159, !42, !46, !45}
!160 = distinct !{!160, !42}
!161 = distinct !{!161, !42}
!162 = distinct !{!162, !42}
!163 = distinct !{!163, !42}
!164 = distinct !{!164, !42}
!165 = distinct !{!165, !42}
!166 = distinct !{!166, !42}
!167 = !{!"p1 omnipotent char", !18, i64 0}
!168 = !{!"Vec_Str_t_", !15, i64 0, !15, i64 4, !167, i64 8}
!169 = !{!168, !15, i64 0}
!170 = !{!168, !167, i64 8}
!171 = !{!"p1 _ZTS9Nm_Man_t_", !18, i64 0}
!172 = !{!"p1 _ZTS10Vec_Ptr_t_", !18, i64 0}
!173 = !{!"p1 _ZTS10Abc_Ntk_t_", !18, i64 0}
!174 = !{!"p1 _ZTS10Abc_Des_t_", !18, i64 0}
!175 = !{!"double", !14, i64 0}
!176 = !{!"p1 _ZTS12Mem_Fixed_t_", !18, i64 0}
!177 = !{!"p1 _ZTS11Mem_Step_t_", !18, i64 0}
!178 = !{!"p1 _ZTS14Abc_ManTime_t_", !18, i64 0}
!179 = !{!"float", !14, i64 0}
!180 = !{!"p1 _ZTS10Abc_Cex_t_", !18, i64 0}
!181 = !{!"p1 float", !18, i64 0}
!182 = !{!"Abc_Ntk_t_", !15, i64 0, !15, i64 4, !167, i64 8, !167, i64 16, !171, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !172, i64 64, !172, i64 72, !172, i64 80, !172, i64 88, !14, i64 96, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !173, i64 160, !15, i64 168, !174, i64 176, !173, i64 184, !15, i64 192, !15, i64 196, !15, i64 200, !175, i64 208, !15, i64 216, !32, i64 224, !176, i64 240, !177, i64 248, !18, i64 256, !178, i64 264, !18, i64 272, !179, i64 280, !15, i64 284, !20, i64 288, !172, i64 296, !31, i64 304, !180, i64 312, !172, i64 320, !173, i64 328, !18, i64 336, !18, i64 344, !173, i64 352, !18, i64 360, !18, i64 368, !20, i64 376, !20, i64 384, !167, i64 392, !181, i64 400, !172, i64 408, !20, i64 416, !20, i64 424, !172, i64 432, !20, i64 440, !20, i64 448, !20, i64 456}
!183 = !{!182, !167, i64 8}
!184 = !{!182, !167, i64 16}
!185 = !{!182, !172, i64 40}
!186 = !{!"any p2 pointer", !18, i64 0}
!187 = !{!"Vec_Ptr_t_", !15, i64 0, !15, i64 4, !186, i64 8}
!188 = !{!187, !186, i64 8}
!189 = !{!18, !18, i64 0}
!190 = !{!168, !15, i64 4}
!191 = !{!182, !18, i64 256}
!192 = distinct !{!192, !42}
!193 = distinct !{!193, !42, !48}
end_hunk_1
