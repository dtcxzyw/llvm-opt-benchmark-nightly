Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ricecomp?download=true
inline.NumInlined: 21
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@fits_rdecomp:bb.a
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !9
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph203.preheader282

.lr.ph203.preheader282:                           ; preds = %.lr.ph203.preheader, %middle.block
  %indvars.iv232.ph = phi i64 [ %i.ab, %.lr.ph203.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader282, %.lr.ph203
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.lr.ph203 ], [ %indvars.iv232.ph, %.lr.ph203.preheader282 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv232
  store i32 %.0, ptr %i.ag, align 4, !tbaa !9
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.loopexit, label %.lr.ph203, !llvm.loop !76

bb.e:                                             ; preds = %._crit_edge
  %i.ah = icmp eq i32 %i.v, 25
  %i.ai = icmp slt i32 %.0127, %spec.select       ; 2 uses
  br i1 %i.ah, label %.preheader148, label %.preheader150

.preheader150:                                    ; preds = %bb.e
  br i1 %i.ai, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader150
  %i.aj = zext nneg i32 %.0127 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader

.preheader148:                                    ; preds = %bb.e
  br i1 %i.ai, label %.lr.ph197, label %.loopexit

.lr.ph197:                                        ; preds = %.preheader148
  %i.ak = sub nsw i32 32, %.1120.lcssa
  %i.al = sub nsw i32 24, %.1120.lcssa            ; 2 uses
  %i.am = icmp samesign ult i32 %.1120.lcssa, 25
  %.not = icmp eq i32 %.1120.lcssa, 0
  %i.an = zext nneg i32 %.0127 to i64
  %wide.trip.count230 = zext nneg i32 %spec.select to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph197, %bb.g
  %indvars.iv227 = phi i64 [ %i.an, %.lr.ph197 ], [ %indvars.iv.next228, %bb.g ] ; 2 uses
  %.1196 = phi i32 [ %.0, %.lr.ph197 ], [ %i.bf, %bb.g ]
  %.2117195 = phi i32 [ %i.x, %.lr.ph197 ], [ %.3118, %bb.g ]
  %.2135193 = phi ptr [ %.1134.lcssa, %.lr.ph197 ], [ %.4137, %bb.g ] ; 2 uses
  %i.ao = shl i32 %.2117195, %i.ak                ; 2 uses
  br i1 %i.am, label %.lr.ph188, label %._crit_edge189.thread

.lr.ph188:                                        ; preds = %bb.f, %.lr.ph188
  %.0111186 = phi i32 [ %i.at, %.lr.ph188 ], [ %i.ao, %bb.f ]
  %.0126185 = phi i32 [ %i.au, %.lr.ph188 ], [ %i.al, %bb.f ] ; 3 uses
  %.3136184 = phi ptr [ %i.ap, %.lr.ph188 ], [ %.2135193, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3136184, i64 1 ; 3 uses
  %i.aq = load i8, ptr %.3136184, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl i32 %i.ar, %.0126185
  %i.at = or i32 %i.as, %.0111186                 ; 3 uses
  %i.au = add nsw i32 %.0126185, -8               ; 2 uses
  %i.av = icmp sgt i32 %.0126185, 7
  br i1 %i.av, label %.lr.ph188, label %._crit_edge189, !llvm.loop !77

._crit_edge189:                                   ; preds = %.lr.ph188
  br i1 %.not, label %bb.g, label %._crit_edge189.thread

._crit_edge189.thread:                            ; preds = %bb.f, %._crit_edge189
  %.0111.lcssa247 = phi i32 [ %i.at, %._crit_edge189 ], [ %i.ao, %bb.f ]
  %.0126.lcssa246 = phi i32 [ %i.au, %._crit_edge189 ], [ %i.al, %bb.f ]
  %.3136.lcssa245 = phi ptr [ %i.ap, %._crit_edge189 ], [ %.2135193, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.3136.lcssa245, i64 1
  %i.ax = load i8, ptr %.3136.lcssa245, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = sub nsw i32 0, %.0126.lcssa246
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = or i32 %i.ba, %.0111.lcssa247
  %i.bc = and i32 %i.ay, %i.w
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge189, %._crit_edge189.thread
  %.4137 = phi ptr [ %i.aw, %._crit_edge189.thread ], [ %i.ap, %._crit_edge189 ] ; 2 uses
  %.3118 = phi i32 [ %i.bc, %._crit_edge189.thread ], [ 0, %._crit_edge189 ] ; 2 uses
  %.1112 = phi i32 [ %i.bb, %._crit_edge189.thread ], [ %i.at, %._crit_edge189 ] ; 2 uses
  %i.bd = lshr i32 %.1112, 1
  %i.be = and i32 %.1112, 1
  %sext146 = sub nsw i32 0, %i.be
  %.2113 = xor i32 %i.bd, %sext146
  %i.bf = add i32 %.2113, %.1196                  ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv227
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !9
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.loopexit, label %bb.f, !llvm.loop !78

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge170
  %indvars.iv = phi i64 [ %i.aj, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge170 ] ; 2 uses
  %.2178 = phi i32 [ %.0, %.preheader.preheader ], [ %i.ck, %._crit_edge170 ]
  %.4177 = phi i32 [ %i.x, %.preheader.preheader ], [ %i.ch, %._crit_edge170 ] ; 2 uses
  %.2121176 = phi i32 [ %.1120.lcssa, %.preheader.preheader ], [ %.4123.lcssa, %._crit_edge170 ] ; 2 uses
  %.5138174 = phi ptr [ %.1134.lcssa, %.preheader.preheader ], [ %.7140.lcssa, %._crit_edge170 ] ; 2 uses
  %i.bh = icmp eq i32 %.4177, 0
  br i1 %i.bh, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %.preheader, %.lr.ph160
  %.3122159 = phi i32 [ %i.bi, %.lr.ph160 ], [ %.2121176, %.preheader ]
  %.6139158 = phi ptr [ %i.bj, %.lr.ph160 ], [ %.5138174, %.preheader ] ; 2 uses
  %i.bi = add nuw nsw i32 %.3122159, 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.6139158, i64 1 ; 2 uses
  %i.bk = load i8, ptr %.6139158, align 1, !tbaa !10 ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %.lr.ph160, label %._crit_edge161.loopexit, !llvm.loop !79

._crit_edge161.loopexit:                          ; preds = %.lr.ph160
  %i.bm = zext i8 %i.bk to i32
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.loopexit, %.preheader
  %.6139.lcssa = phi ptr [ %.5138174, %.preheader ], [ %i.bj, %._crit_edge161.loopexit ] ; 2 uses
  %.3122.lcssa = phi i32 [ %.2121176, %.preheader ], [ %i.bi, %._crit_edge161.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4177, %.preheader ], [ %i.bm, %._crit_edge161.loopexit ] ; 2 uses
  %i.bn = zext nneg i32 %.5.lcssa to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @nonzero_count, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.bq = sub nsw i32 %.3122.lcssa, %i.bp         ; 2 uses
  %.neg = xor i32 %i.bq, -1
  %i.br = add i32 %.3122.lcssa, %.neg             ; 2 uses
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = xor i32 %i.bs, %.5.lcssa                ; 2 uses
  %i.bu = sub nsw i32 %i.br, %i.v                 ; 3 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph169, label %._crit_edge170

.lr.ph169:                                        ; preds = %._crit_edge161, %.lr.ph169
  %.6167 = phi i32 [ %i.ca, %.lr.ph169 ], [ %i.bt, %._crit_edge161 ]
  %.4123166 = phi i32 [ %i.cb, %.lr.ph169 ], [ %i.bu, %._crit_edge161 ] ; 2 uses
  %.7140165 = phi ptr [ %i.bx, %.lr.ph169 ], [ %.6139.lcssa, %._crit_edge161 ] ; 2 uses
  %i.bw = shl i32 %.6167, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.7140165, i64 1 ; 2 uses
  %i.by = load i8, ptr %.7140165, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 2 uses
  %i.cb = add nsw i32 %.4123166, 8                ; 2 uses
  %i.cc = icmp samesign ult i32 %.4123166, -8
  br i1 %i.cc, label %.lr.ph169, label %._crit_edge170, !llvm.loop !80

._crit_edge170:                                   ; preds = %.lr.ph169, %._crit_edge161
  %.7140.lcssa = phi ptr [ %.6139.lcssa, %._crit_edge161 ], [ %i.bx, %.lr.ph169 ] ; 2 uses
  %.4123.lcssa = phi i32 [ %i.bu, %._crit_edge161 ], [ %i.cb, %.lr.ph169 ] ; 4 uses
  %.6.lcssa = phi i32 [ %i.bt, %._crit_edge161 ], [ %i.ca, %.lr.ph169 ] ; 2 uses
  %i.cd = shl i32 %i.bq, %i.v
  %i.ce = lshr i32 %.6.lcssa, %.4123.lcssa
  %i.cf = or i32 %i.ce, %i.cd                     ; 2 uses
  %notmask145 = shl nsw i32 -1, %.4123.lcssa
  %i.cg = xor i32 %notmask145, -1
  %i.ch = and i32 %.6.lcssa, %i.cg                ; 2 uses
  %i.ci = lshr i32 %i.cf, 1
  %i.cj = and i32 %i.cf, 1
  %sext = sub nsw i32 0, %i.cj
  %.3114 = xor i32 %i.ci, %sext
  %i.ck = add i32 %.3114, %.2178                  ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !81

.loopexit:                                        ; preds = %._crit_edge170, %bb.g, %.lr.ph203, %middle.block, %.preheader150, %.preheader148, %.preheader147
  %.8 = phi ptr [ %.1134.lcssa, %.preheader147 ], [ %.4137, %bb.g ], [ %.1134.lcssa, %middle.block ], [ %.1134.lcssa, %.preheader148 ], [ %.1134.lcssa, %.preheader150 ], [ %.1134.lcssa, %.lr.ph203 ], [ %.7140.lcssa, %._crit_edge170 ] ; 2 uses
  %.4131 = phi i32 [ %.0127, %.preheader147 ], [ %spec.select, %bb.g ], [ %spec.select, %middle.block ], [ %.0127, %.preheader148 ], [ %.0127, %.preheader150 ], [ %spec.select, %.lr.ph203 ], [ %spec.select, %._crit_edge170 ]
  %.5124 = phi i32 [ %.1120.lcssa, %.preheader147 ], [ %.1120.lcssa, %bb.g ], [ %.1120.lcssa, %middle.block ], [ %.1120.lcssa, %.preheader148 ], [ %.1120.lcssa, %.preheader150 ], [ %.1120.lcssa, %.lr.ph203 ], [ %.4123.lcssa, %._crit_edge170 ]
  %.7 = phi i32 [ %i.x, %.preheader147 ], [ %.3118, %bb.g ], [ %i.x, %middle.block ], [ %i.x, %.preheader148 ], [ %i.x, %.preheader150 ], [ %i.x, %.lr.ph203 ], [ %i.ch, %._crit_edge170 ]
  %.3 = phi i32 [ %.0, %.preheader147 ], [ %i.bf, %bb.g ], [ %.0, %middle.block ], [ %.0, %.preheader148 ], [ %.0, %.preheader150 ], [ %.0, %.lr.ph203 ], [ %i.ck, %._crit_edge170 ]
  %i.cm = icmp ugt ptr %.8, %i.g
  br i1 %i.cm, label %.sink.split, label %bb.c, !llvm.loop !82

bb.h:                                             ; preds = %bb.c
  %i.cn = icmp ult ptr %.0133, %i.g
  br i1 %i.cn, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %.loopexit, %bb.h, %bb.a
  %.str.4.sink = phi ptr [ @.str.4, %bb.h ], [ @.str.2, %bb.a ], [ @.str.3, %.loopexit ]
  %.0132.ph = phi i32 [ 0, %bb.h ], [ 1, %bb.a ], [ 1, %.loopexit ]
  tail call void @ffpmsg(ptr noundef nonnull %.str.4.sink) #9
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.0132 = phi i32 [ 0, %bb.h ], [ %.0132.ph, %.sink.split ]
  ret i32 %.0132
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fits_rdecomp_short(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = load i8, ptr %0, align 1, !tbaa !10
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %i.a = zext i8 %9 to i32
  %10 = or disjoint i32 %7, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = load i8, ptr %i.b, align 1, !tbaa !10
  %i.h = zext i8 %i.g to i32
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0126 = phi ptr [ %i.f, %bb.a ], [ %.8, %.loopexit ] ; 3 uses
  %.0120 = phi i32 [ 0, %bb.a ], [ %.4124, %.loopexit ] ; 10 uses
  %.0112 = phi i32 [ 8, %bb.a ], [ %.5117, %.loopexit ] ; 2 uses
  %.0108 = phi i32 [ %i.h, %bb.a ], [ %.7, %.loopexit ] ; 2 uses
  %.0 = phi i32 [ %10, %bb.a ], [ %.3, %.loopexit ] ; 9 uses
  %i.i = icmp slt i32 %.0120, %3
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.0112, -4                   ; 2 uses
  %i.k = icmp slt i32 %.0112, 4
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.1109147 = phi i32 [ %i.p, %.lr.ph ], [ %.0108, %bb.c ]
  %.1113146 = phi i32 [ %i.q, %.lr.ph ], [ %i.j, %bb.c ] ; 2 uses
  %.1127145 = phi ptr [ %i.m, %.lr.ph ], [ %.0126, %bb.c ] ; 2 uses
  %i.l = shl i32 %.1109147, 8
  %i.m = getelementptr inbounds nuw i8, ptr %.1127145, i64 1 ; 2 uses
  %i.n = load i8, ptr %.1127145, align 1, !tbaa !10
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o               ; 2 uses
  %i.q = add nsw i32 %.1113146, 8                 ; 2 uses
  %i.r = icmp samesign ult i32 %.1113146, -8
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.1127.lcssa = phi ptr [ %.0126, %bb.c ], [ %i.m, %.lr.ph ] ; 8 uses
  %.1113.lcssa = phi i32 [ %i.j, %bb.c ], [ %i.q, %.lr.ph ] ; 14 uses
  %.1109.lcssa = phi i32 [ %.0108, %bb.c ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.s = lshr i32 %.1109.lcssa, %.1113.lcssa
  %i.t = add i32 %i.s, -1                         ; 4 uses
  %notmask = shl nsw i32 -1, %.1113.lcssa
  %i.u = xor i32 %notmask, -1                     ; 2 uses
  %i.v = and i32 %.1109.lcssa, %i.u               ; 8 uses
  %i.w = add i32 %.0120, %4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %3) ; 10 uses
  %i.x = icmp slt i32 %i.t, 0
  br i1 %i.x, label %.preheader139, label %bb.d

.preheader139:                                    ; preds = %._crit_edge
  %i.y = icmp slt i32 %.0120, %spec.select
  br i1 %i.y, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader139
  %i.z = trunc i32 %.0 to i16                     ; 3 uses
  %i.aa = zext i32 %.0120 to i64                  ; 6 uses
  %wide.trip.count227 = zext nneg i32 %spec.select to i64 ; 2 uses
  %i.ab = sub nsw i64 %wide.trip.count227, %i.aa  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i64 %i.ab, 16
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, -16                     ; 4 uses
  %i.ad = add nsw i64 %n.vec, %i.aa
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !16
  store <8 x i16> %broadcast.splat, ptr %i.ae, align 2, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec274 = and i64 %i.ab, -4                   ; 3 uses
  %i.ag = add nsw i64 %n.vec274, %i.aa
  %broadcast.splatinsert275 = insertelement <4 x i16> poison, i16 %i.z, i64 0
  %broadcast.splat276 = shufflevector <4 x i16> %broadcast.splatinsert275, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep313 = getelementptr [2 x i8], ptr %2, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index277 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next278, %vec.epilog.vector.body ] ; 2 uses
  %gep314 = getelementptr [2 x i8], ptr %invariant.gep313, i64 %index277
  store <4 x i16> %broadcast.splat276, ptr %gep314, align 2, !tbaa !16
  %index.next278 = add nuw i64 %index277, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next278, %n.vec274
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n279 = icmp eq i64 %i.ab, %n.vec274
  br i1 %cmp.n279, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv224.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %vec.epilog.scalar.ph ], [ %indvars.iv224.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv224
  store i16 %i.z, ptr %i.ai, align 2, !tbaa !16
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !86

bb.d:                                             ; preds = %._crit_edge
  %i.aj = icmp eq i32 %i.t, 14
  %i.ak = icmp slt i32 %.0120, %spec.select       ; 2 uses
  br i1 %i.aj, label %.preheader140, label %.preheader142

.preheader142:                                    ; preds = %bb.d
  br i1 %i.ak, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader142
  %i.al = zext nneg i32 %.0120 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader

.preheader140:                                    ; preds = %bb.d
  br i1 %i.ak, label %.lr.ph189, label %.loopexit

.lr.ph189:                                        ; preds = %.preheader140
  %i.am = sub nsw i32 16, %.1113.lcssa
  %i.an = sub nsw i32 8, %.1113.lcssa             ; 2 uses
  %i.ao = icmp samesign ult i32 %.1113.lcssa, 9
  %.not = icmp eq i32 %.1113.lcssa, 0
  %i.ap = zext nneg i32 %.0120 to i64
  %wide.trip.count222 = zext nneg i32 %spec.select to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph189, %bb.f
  %indvars.iv219 = phi i64 [ %i.ap, %.lr.ph189 ], [ %indvars.iv.next220, %bb.f ] ; 2 uses
  %.1188 = phi i32 [ %.0, %.lr.ph189 ], [ %i.bh, %bb.f ]
  %.2110187 = phi i32 [ %i.v, %.lr.ph189 ], [ %.3111, %bb.f ]
  %.2128185 = phi ptr [ %.1127.lcssa, %.lr.ph189 ], [ %.4130, %bb.f ] ; 2 uses
  %i.aq = shl i32 %.2110187, %i.am                ; 2 uses
  br i1 %i.ao, label %.lr.ph180, label %._crit_edge181.thread

.lr.ph180:                                        ; preds = %bb.e, %.lr.ph180
  %.0104178 = phi i32 [ %i.av, %.lr.ph180 ], [ %i.aq, %bb.e ]
  %.0118177 = phi i32 [ %i.aw, %.lr.ph180 ], [ %i.an, %bb.e ] ; 3 uses
  %.3129176 = phi ptr [ %i.ar, %.lr.ph180 ], [ %.2128185, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.3129176, i64 1 ; 3 uses
  %i.as = load i8, ptr %.3129176, align 1, !tbaa !10
  %i.at = zext i8 %i.as to i32
  %i.au = shl i32 %i.at, %.0118177
  %i.av = or i32 %i.au, %.0104178                 ; 3 uses
  %i.aw = add nsw i32 %.0118177, -8               ; 2 uses
  %i.ax = icmp sgt i32 %.0118177, 7
  br i1 %i.ax, label %.lr.ph180, label %._crit_edge181, !llvm.loop !87

._crit_edge181:                                   ; preds = %.lr.ph180
  br i1 %.not, label %bb.f, label %._crit_edge181.thread

._crit_edge181.thread:                            ; preds = %bb.e, %._crit_edge181
  %.0104.lcssa238 = phi i32 [ %i.av, %._crit_edge181 ], [ %i.aq, %bb.e ]
  %.0118.lcssa237 = phi i32 [ %i.aw, %._crit_edge181 ], [ %i.an, %bb.e ]
  %.3129.lcssa236 = phi ptr [ %i.ar, %._crit_edge181 ], [ %.2128185, %bb.e ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3129.lcssa236, i64 1
  %i.az = load i8, ptr %.3129.lcssa236, align 1, !tbaa !10
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = sub nsw i32 0, %.0118.lcssa237
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = or i32 %i.bc, %.0104.lcssa238
  %i.be = and i32 %i.ba, %i.u
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge181, %._crit_edge181.thread
  %.4130 = phi ptr [ %i.ay, %._crit_edge181.thread ], [ %i.ar, %._crit_edge181 ] ; 2 uses
  %.3111 = phi i32 [ %i.be, %._crit_edge181.thread ], [ 0, %._crit_edge181 ] ; 2 uses
  %.1105 = phi i32 [ %i.bd, %._crit_edge181.thread ], [ %i.av, %._crit_edge181 ] ; 2 uses
  %i.bf = lshr i32 %.1105, 1
  %i.bg = and i32 %.1105, 1
  %sext138 = sub nsw i32 0, %i.bg
  %.2106 = xor i32 %i.bf, %sext138
  %i.bh = add i32 %.2106, %.1188                  ; 3 uses
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv219
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !16
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %.loopexit, label %bb.e, !llvm.loop !88

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge162
  %indvars.iv = phi i64 [ %i.al, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge162 ] ; 2 uses
  %.2170 = phi i32 [ %.0, %.preheader.preheader ], [ %i.cn, %._crit_edge162 ]
  %.4169 = phi i32 [ %i.v, %.preheader.preheader ], [ %i.ck, %._crit_edge162 ] ; 2 uses
  %.2114168 = phi i32 [ %.1113.lcssa, %.preheader.preheader ], [ %.4116.lcssa, %._crit_edge162 ] ; 2 uses
  %.5131166 = phi ptr [ %.1127.lcssa, %.preheader.preheader ], [ %.7133.lcssa, %._crit_edge162 ] ; 2 uses
  %i.bk = icmp eq i32 %.4169, 0
  br i1 %i.bk, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.3115151 = phi i32 [ %i.bl, %.lr.ph152 ], [ %.2114168, %.preheader ]
end_hunk_0
begin_hunk_1_@fits_rdecomp_byte:.split
  %.1122140 = phi ptr [ %i.n, %.lr.ph ], [ %.0121, %bb.b ] ; 2 uses
  %i.m = shl i32 %.1104142, 8
  %i.n = getelementptr inbounds nuw i8, ptr %.1122140, i64 1 ; 2 uses
  %i.o = load i8, ptr %.1122140, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  %i.r = add nsw i32 %.1108141, 8                 ; 2 uses
  %i.s = icmp samesign ult i32 %.1108141, -8
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.1122.lcssa = phi ptr [ %.0121, %bb.b ], [ %i.n, %.lr.ph ] ; 6 uses
  %.1108.lcssa = phi i32 [ %i.k, %bb.b ], [ %i.r, %.lr.ph ] ; 11 uses
  %.1104.lcssa = phi i32 [ %.0103, %bb.b ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.t = lshr i32 %.1104.lcssa, %.1108.lcssa
  %i.u = add i32 %i.t, -1                         ; 4 uses
  %notmask = shl nsw i32 -1, %.1108.lcssa
  %i.v = xor i32 %notmask, -1                     ; 2 uses
  %i.w = and i32 %.1104.lcssa, %i.v               ; 6 uses
  %i.x = add i32 %.0115, %4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %3) ; 8 uses
  %i.y = icmp slt i32 %i.u, 0
  br i1 %i.y, label %.preheader134, label %bb.c

.preheader134:                                    ; preds = %._crit_edge
  %i.z = icmp slt i32 %.0115, %spec.select
  br i1 %i.z, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.preheader134
  %i.aa = trunc i32 %.0 to i8
  %i.ab = zext nneg i32 %.0115 to i64
  %scevgep = getelementptr i8, ptr %2, i64 %i.ab
  %i.ac = xor i32 %.0115, -1
  %i.ad = add i32 %spec.select, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.aa, i64 %i.af, i1 false), !tbaa !10
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %i.ag = icmp eq i32 %i.u, 6
  %i.ah = icmp slt i32 %.0115, %spec.select       ; 2 uses
  br i1 %i.ag, label %.preheader135, label %.preheader137

.preheader137:                                    ; preds = %bb.c
  br i1 %i.ah, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader137
  %i.ai = zext nneg i32 %.0115 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader

.preheader135:                                    ; preds = %bb.c
  br i1 %i.ah, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %.preheader135
  %i.aj = sub nsw i32 8, %.1108.lcssa
  %i.ak = icmp eq i32 %.1108.lcssa, 0
  %i.al = zext nneg i32 %.0115 to i64
  %wide.trip.count214 = zext nneg i32 %spec.select to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph185, %bb.d
  %indvars.iv211 = phi i64 [ %i.al, %.lr.ph185 ], [ %indvars.iv.next212, %bb.d ] ; 2 uses
  %.1184 = phi i32 [ %.0, %.lr.ph185 ], [ %i.au, %bb.d ]
  %.2105183 = phi i32 [ %i.w, %.lr.ph185 ], [ %.3106, %bb.d ]
  %.2123181 = phi ptr [ %.1122.lcssa, %.lr.ph185 ], [ %i.an, %bb.d ] ; 2 uses
  %i.am = shl i32 %.2105183, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.2123181, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.2123181, align 1, !tbaa !10
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = lshr i32 %i.ap, %.1108.lcssa
  %i.ar = and i32 %i.ap, %i.v
  %.3106 = select i1 %i.ak, i32 0, i32 %i.ar      ; 2 uses
  %.1100 = or i32 %i.am, %i.aq                    ; 2 uses
  %i.as = lshr i32 %.1100, 1
  %i.at = and i32 %.1100, 1
  %sext133 = sub nsw i32 0, %i.at
  %.2101 = xor i32 %i.as, %sext133
  %i.au = add i32 %.2101, %.1184                  ; 3 uses
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv211
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !10
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %.loopexit, label %bb.d, !llvm.loop !95

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge157
  %indvars.iv = phi i64 [ %i.ai, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge157 ] ; 2 uses
  %.2165 = phi i32 [ %.0, %.preheader.preheader ], [ %i.ca, %._crit_edge157 ]
  %.4164 = phi i32 [ %i.w, %.preheader.preheader ], [ %i.bx, %._crit_edge157 ] ; 2 uses
  %.2109163 = phi i32 [ %.1108.lcssa, %.preheader.preheader ], [ %.4111.lcssa, %._crit_edge157 ] ; 2 uses
  %.5126161 = phi ptr [ %.1122.lcssa, %.preheader.preheader ], [ %.7128.lcssa, %._crit_edge157 ] ; 2 uses
  %i.ax = icmp eq i32 %.4164, 0
  br i1 %i.ax, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %.preheader, %.lr.ph147
  %.3110146 = phi i32 [ %i.ay, %.lr.ph147 ], [ %.2109163, %.preheader ]
  %.6127145 = phi ptr [ %i.az, %.lr.ph147 ], [ %.5126161, %.preheader ] ; 2 uses
  %i.ay = add nuw nsw i32 %.3110146, 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.6127145, i64 1 ; 2 uses
  %i.ba = load i8, ptr %.6127145, align 1, !tbaa !10 ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %.lr.ph147, label %._crit_edge148.loopexit, !llvm.loop !96

._crit_edge148.loopexit:                          ; preds = %.lr.ph147
  %i.bc = zext i8 %i.ba to i32
  br label %._crit_edge148

._crit_edge148:                                   ; preds = %._crit_edge148.loopexit, %.preheader
  %.6127.lcssa = phi ptr [ %.5126161, %.preheader ], [ %i.az, %._crit_edge148.loopexit ] ; 2 uses
  %.3110.lcssa = phi i32 [ %.2109163, %.preheader ], [ %i.ay, %._crit_edge148.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4164, %.preheader ], [ %i.bc, %._crit_edge148.loopexit ] ; 2 uses
  %i.bd = zext nneg i32 %.5.lcssa to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @nonzero_count, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9
  %i.bg = sub nsw i32 %.3110.lcssa, %i.bf         ; 2 uses
  %.neg = xor i32 %i.bg, -1
  %i.bh = add i32 %.3110.lcssa, %.neg             ; 2 uses
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = xor i32 %i.bi, %.5.lcssa                ; 2 uses
  %i.bk = sub nsw i32 %i.bh, %i.u                 ; 3 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %._crit_edge148, %.lr.ph156
  %.6154 = phi i32 [ %i.bq, %.lr.ph156 ], [ %i.bj, %._crit_edge148 ]
  %.4111153 = phi i32 [ %i.br, %.lr.ph156 ], [ %i.bk, %._crit_edge148 ] ; 2 uses
  %.7128152 = phi ptr [ %i.bn, %.lr.ph156 ], [ %.6127.lcssa, %._crit_edge148 ] ; 2 uses
  %i.bm = shl i32 %.6154, 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.7128152, i64 1 ; 2 uses
  %i.bo = load i8, ptr %.7128152, align 1, !tbaa !10
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bm, %i.bp            ; 2 uses
  %i.br = add nsw i32 %.4111153, 8                ; 2 uses
  %i.bs = icmp samesign ult i32 %.4111153, -8
  br i1 %i.bs, label %.lr.ph156, label %._crit_edge157, !llvm.loop !97

._crit_edge157:                                   ; preds = %.lr.ph156, %._crit_edge148
  %.7128.lcssa = phi ptr [ %.6127.lcssa, %._crit_edge148 ], [ %i.bn, %.lr.ph156 ] ; 2 uses
  %.4111.lcssa = phi i32 [ %i.bk, %._crit_edge148 ], [ %i.br, %.lr.ph156 ] ; 4 uses
  %.6.lcssa = phi i32 [ %i.bj, %._crit_edge148 ], [ %i.bq, %.lr.ph156 ] ; 2 uses
  %i.bt = shl i32 %i.bg, %i.u
  %i.bu = lshr i32 %.6.lcssa, %.4111.lcssa
  %i.bv = or i32 %i.bu, %i.bt                     ; 2 uses
  %notmask132 = shl nsw i32 -1, %.4111.lcssa
  %i.bw = xor i32 %notmask132, -1
  %i.bx = and i32 %.6.lcssa, %i.bw                ; 2 uses
  %i.by = lshr i32 %i.bv, 1
  %i.bz = and i32 %i.bv, 1
  %sext = sub nsw i32 0, %i.bz
  %.3102 = xor i32 %i.by, %sext
  %i.ca = add i32 %.3102, %.2165                  ; 3 uses
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !98

.loopexit:                                        ; preds = %._crit_edge157, %bb.d, %.lr.ph191, %.preheader137, %.preheader135, %.preheader134
  %.8 = phi ptr [ %.1122.lcssa, %.preheader134 ], [ %.1122.lcssa, %.lr.ph191 ], [ %i.an, %bb.d ], [ %.1122.lcssa, %.preheader135 ], [ %.1122.lcssa, %.preheader137 ], [ %.7128.lcssa, %._crit_edge157 ] ; 2 uses
  %.4119 = phi i32 [ %.0115, %.preheader134 ], [ %spec.select, %.lr.ph191 ], [ %spec.select, %bb.d ], [ %.0115, %.preheader135 ], [ %.0115, %.preheader137 ], [ %spec.select, %._crit_edge157 ]
  %.5112 = phi i32 [ %.1108.lcssa, %.preheader134 ], [ %.1108.lcssa, %.lr.ph191 ], [ %.1108.lcssa, %bb.d ], [ %.1108.lcssa, %.preheader135 ], [ %.1108.lcssa, %.preheader137 ], [ %.4111.lcssa, %._crit_edge157 ]
  %.7 = phi i32 [ %i.w, %.preheader134 ], [ %i.w, %.lr.ph191 ], [ %.3106, %bb.d ], [ %i.w, %.preheader135 ], [ %i.w, %.preheader137 ], [ %i.bx, %._crit_edge157 ]
  %.3 = phi i32 [ %.0, %.preheader134 ], [ %.0, %.lr.ph191 ], [ %i.au, %bb.d ], [ %.0, %.preheader135 ], [ %.0, %.preheader137 ], [ %i.ca, %._crit_edge157 ]
  %i.cd = icmp ugt ptr %.8, %i.f
  br i1 %i.cd, label %.sink.split, label %bb.a, !llvm.loop !99

bb.e:                                             ; preds = %bb.a
  %i.ce = icmp ult ptr %.0121, %i.f
  br i1 %i.ce, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %.loopexit, %bb.e
  %.str.4.sink = phi ptr [ @.str.4, %bb.e ], [ @.str.3, %.loopexit ]
  %.0120.ph = phi i32 [ 0, %bb.e ], [ 1, %.loopexit ]
  tail call void @ffpmsg(ptr noundef nonnull %.str.4.sink) #9
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0120 = phi i32 [ 0, %bb.e ], [ %.0120.ph, %.sink.split ]
  ret i32 %.0120
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 8, i32 8}
!15 = !{!"short", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11, !13, !12}
!21 = distinct !{!21, !11, !12, !13}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !13, !12}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !11, !12, !13}
!27 = distinct !{!27, !11, !13, !12}
!28 = distinct !{!28, !11, !12, !13}
!29 = distinct !{!29, !11, !12, !13}
!30 = distinct !{!30, !11, !13, !12}
!31 = distinct !{!31, !11, !12, !13}
!32 = distinct !{!32, !11, !12, !13}
!33 = distinct !{!33, !11, !13, !12}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11, !12, !13}
!38 = distinct !{!38, !11, !12, !13}
!39 = distinct !{!39, !11, !13, !12}
!40 = distinct !{!40, !11, !12, !13}
!41 = distinct !{!41, !11, !12, !13}
!42 = distinct !{!42, !11, !13, !12}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11, !12, !13}
!45 = distinct !{!45, !11, !12, !13}
!46 = distinct !{!46, !11, !13, !12}
!47 = distinct !{!47, !11, !12, !13}
!48 = distinct !{!48, !11, !12, !13}
!49 = distinct !{!49, !11, !13, !12}
!50 = distinct !{!50, !11, !12, !13}
!51 = distinct !{!51, !11, !12, !13}
!52 = distinct !{!52, !11, !13, !12}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11, !12, !13}
!57 = distinct !{!57, !11, !12, !13}
!58 = distinct !{!58, !11, !13, !12}
!59 = distinct !{!59, !11, !12, !13}
!60 = distinct !{!60, !11, !12, !13}
!61 = distinct !{!61, !11, !13, !12}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11, !12, !13}
!64 = distinct !{!64, !11, !12, !13}
!65 = distinct !{!65, !11, !13, !12}
!66 = distinct !{!66, !11, !12, !13}
!67 = distinct !{!67, !11, !12, !13}
!68 = distinct !{!68, !11, !13, !12}
!69 = distinct !{!69, !11, !12, !13}
!70 = distinct !{!70, !11, !12, !13}
!71 = distinct !{!71, !11, !13, !12}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11, !12, !13}
!76 = distinct !{!76, !11, !13, !12}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11, !12, !13}
!85 = distinct !{!85, !11, !12, !13}
!86 = distinct !{!86, !11, !13, !12}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = !{!"branch_weights", i32 4, i32 12}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
end_hunk_1
