Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mode_decision?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@compute_mode_RD_cost:bb.a

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.y = load i32, ptr %i.x, align 8, !tbaa !276
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !277
  switch i32 %i.ab, label %bb.ag [
    i32 9, label %bb.i
    i32 10, label %bb.i
    i32 13, label %bb.i
    i32 14, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.g, %bb.f
  %i.ac = load double, ptr %2, align 8, !tbaa !204 ; 2 uses
  %i.ad = icmp eq i32 %0, 8                       ; 2 uses
  %i.ae = icmp eq i32 %0, 0                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 2 uses
  %i.ag = add i32 %0, -1
  %or.cond8 = icmp ult i32 %i.ag, 3
  %i.ah = icmp ne i16 %6, 0
  %or.cond11 = and i1 %i.ae, %i.ah                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.aj = load i16, ptr %i.ai, align 4
  %i.ak = icmp ne i16 %i.aj, 0
  %or.cond16 = select i1 %i.ad, i1 %i.ak, i1 false
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %i.al = tail call i32 @RDCost_for_macroblocks(double noundef %i.ac, i32 noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5) #14
  %.not65 = icmp eq i32 %i.al, 0
  %.pre = load ptr, ptr @input, align 8, !tbaa !159 ; 2 uses
  br i1 %.not65, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 5116
  %i.an = load i32, ptr %i.am, align 4, !tbaa !278
  %.not66 = icmp eq i32 %i.an, 0
  br i1 %.not66, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr @img, align 8, !tbaa !159 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !190
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 196
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !188
  br i1 %i.ad, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.r, align 8, !tbaa !215
  %i.au = icmp eq i32 %i.at, 1
  %i.av = select i1 %i.au, ptr getelementptr inbounds nuw (i8, ptr @tr8x8, i64 6680), ptr getelementptr inbounds nuw (i8, ptr @tr4x4, i64 6680)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.m
  %.sink = phi ptr [ %i.av, %bb.m ], [ @pred, %bb.l ]
  tail call void @rc_store_diff(i32 noundef %i.aq, i32 noundef %i.as, ptr noundef nonnull %.sink)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k
  tail call void @store_macroblock_parameters(i32 noundef %0) #14
  %i.aw = load ptr, ptr @input, align 8, !tbaa !159 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4168
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !207
  %i.az = icmp eq i32 %i.ay, 2
  %or.cond6 = and i1 %i.ae, %i.az
  br i1 %or.cond6, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 5744
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !279
  %.not67 = icmp eq i32 %i.bb, 0
  br i1 %.not67, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load i32, ptr %i.af, align 4, !tbaa !280
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i16 1, ptr %7, align 2, !tbaa !157
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.q, %bb.p, %bb.j
  %i.be = phi ptr [ %i.aw, %bb.n ], [ %i.aw, %bb.o ], [ %i.aw, %bb.q ], [ %i.aw, %bb.p ], [ %.pre, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 5100
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !195
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  br i1 %or.cond8, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.r, align 8, !tbaa !215
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.backedge, label %.thread79

.backedge:                                        ; preds = %bb.t, %bb.y, %bb.w
  store i32 1, ptr %i.r, align 8, !tbaa !215
  br label %bb.j

bb.u:                                             ; preds = %bb.s
  br i1 %or.cond11, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bk = load ptr, ptr @active_sps, align 8, !tbaa !159
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1156
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !214
  %.not68 = icmp eq i32 %i.bm, 0
  br i1 %.not68, label %.thread79, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = load i32, ptr %i.r, align 8, !tbaa !215
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.backedge, label %.thread79

bb.x:                                             ; preds = %bb.u
  br i1 %or.cond16, label %bb.y, label %.thread79

bb.y:                                             ; preds = %bb.x
  %i.bp = load i32, ptr %i.r, align 8, !tbaa !215
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.backedge, label %.thread79

.thread79:                                        ; preds = %bb.t, %bb.v, %bb.w, %bb.y, %bb.x
  store i32 0, ptr %i.r, align 8, !tbaa !215
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.thread79
  br i1 %or.cond11, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %.loopexit
  %i.br = load i16, ptr %7, align 2, !tbaa !157
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bu = load i16, ptr %i.bt, align 4
  %.not69 = icmp eq i16 %i.bu, 0
  %or.cond76 = select i1 %i.bs, i1 true, i1 %.not69
  br i1 %or.cond76, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = load i32, ptr %i.af, align 4, !tbaa !280 ; 2 uses
  %.not70 = icmp eq i32 %i.bv, 0
  %i.bw = and i32 %i.bv, 15
  %.not71 = icmp eq i32 %i.bw, 15
  %or.cond77 = or i1 %.not70, %.not71
  br i1 %or.cond77, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 4184
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !281
  %.not72 = icmp eq i32 %i.by, 0
  br i1 %.not72, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr @img, align 8, !tbaa !159
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 15256
  store i32 1, ptr %i.ca, align 8, !tbaa !274
  %i.cb = tail call i32 @RDCost_for_macroblocks(double noundef %i.ac, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %5) #14
  %.not73 = icmp eq i32 %i.cb, 0
  br i1 %.not73, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr @input, align 8, !tbaa !159
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 5116
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !278
  %.not74 = icmp eq i32 %i.ce, 0
  br i1 %.not74, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr @img, align 8, !tbaa !159 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 192
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !190
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 196
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !188
  tail call void @rc_store_diff(i32 noundef %i.ch, i32 noundef %i.cj, ptr noundef nonnull @pred)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  tail call void @store_macroblock_parameters(i32 noundef 0) #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.h, %.loopexit, %bb.z, %bb.aa, %bb.ab, %bb.af, %bb.ac
  ret void
}

declare void @SetModesAndRefframeForBlocks(i32 noundef) local_unnamed_addr #5

declare i32 @RDCost_for_macroblocks(double noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @store_macroblock_parameters(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @submacroblock_mode_decision(ptr nofree noundef readonly byval(%struct.RD_PARAMS) align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i16 noundef signext %5, i32 noundef %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) initializes((0, 4)) %8, ptr nofree noundef captures(none) %9, i32 noundef %10) local_unnamed_addr #2 !guid !290 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [5 x i32], align 16               ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca [3 x i32], align 8                ; 7 uses
  %i.g = alloca i16, align 2                      ; 3 uses
  %i.h = alloca i8, align 1                       ; 9 uses
  %i.i = alloca [2 x i8], align 2                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, ptr noundef nonnull align 16 dereferenceable(20) @__const.submacroblock_mode_decision.bmcost, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %.not = icmp eq i32 %10, 0                      ; 11 uses
  %i.j = select i1 %.not, i64 5, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.k = load ptr, ptr @img, align 8              ; 2 uses
  %.in.v = select i1 %.not, i64 14176, i64 14184
  %.in = getelementptr inbounds nuw i8, ptr %i.k, i64 %.in.v
  %i.l = load ptr, ptr %.in, align 8, !tbaa !209  ; 2 uses
  %i.m = select i1 %.not, i64 2, i64 0
  %i.n = select i1 %.not, i64 3, i64 2
  %.in347.v = select i1 %.not, i64 14192, i64 14200
  %.in347 = getelementptr inbounds nuw i8, ptr %i.k, i64 %.in347.v
  %i.o = load ptr, ptr %.in347, align 8, !tbaa !208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i8 0, ptr %i.h, align 1, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i16 -256, ptr %i.i, align 2
  %i.p = shl i32 %6, 2                            ; 6 uses
  %i.q = and i32 %i.p, -8                         ; 4 uses
  %i.r = and i32 %6, 1                            ; 2 uses
  %i.s = shl nuw nsw i32 %i.r, 3                  ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i32 1, ptr %i.t, align 8, !tbaa !215
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = load ptr, ptr @cs_cm, align 8, !tbaa !159
  tail call void @store_coding_state(ptr noundef %i.u) #14
  %.not348 = icmp eq i16 %5, 0                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.x = load i16, ptr %i.w, align 2
  %i.y = icmp ne i16 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = shl nuw nsw i32 %i.r, 1                 ; 2 uses
  %i.ag = and i32 %6, 2                           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load <2 x i32>, ptr %i.ai, align 8      ; 3 uses
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load i32, ptr %i.am, align 8            ; 4 uses
  %i.ao = sitofp i32 %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = sext i16 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.5366.0.copyload = load i16, ptr %.sroa.5366.0..sroa_idx, align 4
  %i.av = sext i16 %.sroa.5366.0.copyload to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr @listXsize, i64 %i.av
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ax = fmul double %.sroa.3.0.copyload, 2.000000e+00
  %i.ay = sext i32 %6 to i64                      ; 22 uses
  %i.az = load double, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 6148
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.ay ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 6156
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.ay ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 6160
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.ay ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 6164
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 5 uses
  %i.bi = srem i32 %6, 2
  %i.bj = shl nsw i32 %i.bi, 1
  %i.bk = add nsw i32 %i.q, %i.bj
  %i.bl = shl i32 51, %i.bk
  %i.bm = xor i32 %i.bl, -1                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 6168 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 6680 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 7192 ; 3 uses
  %i.bq = zext nneg i32 %i.s to i64               ; 7 uses
  %invariant.gep = getelementptr [4 x i8], ptr @submacroblock_mode_decision.fadjust, i64 %i.bq ; 2 uses
  %i.br = icmp slt i32 %6, 3                      ; 3 uses
  %i.bs = shl i32 %6, 3
  %i.bt = and i32 %i.bs, 8                        ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 11 uses
  %i.bv = sext i32 %i.q to i64                    ; 5 uses
  %i.bw = zext i1 %.not348 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %indvars.iv.next435 = or disjoint i64 %i.bu, 1  ; 5 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv.next435 to i32
  %indvars.iv.next435.1 = or disjoint i64 %i.bu, 2 ; 5 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv.next435.1 to i32
  %indvars.iv.next435.2 = or disjoint i64 %i.bu, 3 ; 5 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv.next435.2 to i32
  %indvars.iv.next435.3 = or disjoint i64 %i.bu, 4 ; 5 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv.next435.3 to i32
  %indvars.iv.next435.4 = or disjoint i64 %i.bu, 5 ; 5 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv.next435.4 to i32
  %indvars.iv.next435.5 = or disjoint i64 %i.bu, 6 ; 5 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv.next435.5 to i32
  %indvars.iv.next435.6 = or disjoint i64 %i.bu, 7 ; 5 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv.next435.6 to i32
  %i.ch = or i32 %i.p, 7
  %i.ci = sext i32 %i.ch to i64
  %i.cj = or i32 %i.p, 7
  %i.ck = sext i32 %i.cj to i64
  %i.cl = extractelement <2 x i32> %i.aj, i64 0
  %i.cm = extractelement <2 x i32> %i.aj, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.bu
  %indvars.iv445 = phi i64 [ %i.bw, %bb.c ], [ %indvars.iv.next446, %bb.bu ] ; 4 uses
  %.0320403 = phi i32 [ 0, %bb.c ], [ %.2, %bb.bu ] ; 4 uses
  %.0323401 = phi i32 [ 2147483647, %bb.c ], [ %.2325, %bb.bu ] ; 5 uses
  %.0336400 = phi double [ 0.000000e+00, %bb.c ], [ %.2338, %bb.bu ] ; 4 uses
  %.0339399 = phi double [ 1.000000e+30, %bb.c ], [ %.2341, %bb.bu ] ; 5 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @b8_mode_table, i64 %indvars.iv445
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10 ; 9 uses
  store i32 0, ptr %8, align 4, !tbaa !10
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !157
  %.not353 = icmp eq i16 %i.cr, 0
  br i1 %.not353, label %bb.bu, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = icmp ne i64 %indvars.iv445, 0
  %or.cond = or i1 %.not, %i.cs
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = load ptr, ptr @active_sps, align 8, !tbaa !159
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1156
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !214
  %.not354 = icmp eq i32 %i.cv, 0
  br i1 %.not354, label %bb.bu, label %.thread

.thread:                                          ; preds = %bb.f
  store i64 0, ptr %i.a, align 8, !tbaa !291
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 0, ptr %i.a, align 8, !tbaa !291
  %i.cw = trunc nuw nsw i64 %indvars.iv445 to i32
  switch i32 %i.cw, label %bb.t [
    i32 5, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %.thread, %bb.g, %bb.g
  %11 = load ptr, ptr @input, align 8, !tbaa !159
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 4168
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !207
  %.not356 = icmp eq i32 %i.cy, 0
  br i1 %.not356, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.cz = call i32 @GetDirectCost8x8(i32 noundef %6, ptr noundef nonnull %i.b) #14 ; 6 uses
  %i.da = icmp eq i32 %i.cz, 2147483647
  br i1 %i.da, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.db = load i32, ptr %7, align 4, !tbaa !10    ; 2 uses
  %i.dc = icmp eq i32 %i.db, 2147483647
  br i1 %i.dc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 2147483647, ptr %7, align 4, !tbaa !10
  br i1 %.not, label %bb.r, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.dd = add nsw i32 %i.db, %i.cz
  store i32 %i.dd, ptr %7, align 4, !tbaa !10
  br i1 %.not, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = load i32, ptr %i.b, align 4, !tbaa !10
  %i.df = load i32, ptr %9, align 4, !tbaa !10
  %i.dg = add nsw i32 %i.df, %i.de
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %storemerge = phi i32 [ %i.dg, %bb.m ], [ 2147483647, %bb.k ]
  store i32 %storemerge, ptr %9, align 4, !tbaa !10
  %i.dh = load i32, ptr %4, align 4, !tbaa !10
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %4, align 4, !tbaa !10
  %i.dj = load ptr, ptr @input, align 8, !tbaa !159
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 5100 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !195
  switch i32 %i.dl, label %bb.q [
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !10  ; 2 uses
  %i.dn = icmp sge i32 %i.dm, %i.cz
  %or.cond6 = select i1 %i.dn, i1 %i.y, i1 false
  %or.cond11 = select i1 %or.cond6, i1 %i.ab, i1 false
  %or.cond16 = select i1 %or.cond11, i1 %i.ae, i1 false
  %. = select i1 %or.cond16, i32 %i.cz, i32 %i.dm
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.do = load i32, ptr %i.b, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.sink = phi i32 [ %., %bb.o ], [ %i.do, %bb.p ], [ %i.cz, %bb.n ]
  store i32 %.sink, ptr %8, align 4, !tbaa !10
  %i.dp = load i32, ptr %i.dk, align 4, !tbaa !195
  %i.dq = icmp eq i32 %i.dp, 2
  br i1 %i.dq, label %.sink.split, label %bb.s

bb.r:                                             ; preds = %bb.l, %bb.k
  %i.dr = load i32, ptr %4, align 4, !tbaa !10
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %4, align 4, !tbaa !10
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.r
  %.sink494 = phi i32 [ %i.cz, %bb.r ], [ 2147483647, %bb.q ]
  store i32 %.sink494, ptr %8, align 4, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.q, %bb.h
  %i.dt = load ptr, ptr @img, align 8, !tbaa !159 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 168
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !292
  %i.dw = add nsw i32 %i.dv, %i.af
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 172
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !293
  %i.dz = add nsw i32 %i.dy, %i.ag
  %i.ea = load ptr, ptr @direct_ref_idx, align 8, !tbaa !294 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !295
  %i.ec = sext i32 %i.dz to i64                   ; 3 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !296
  %i.ef = sext i32 %i.dw to i64                   ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !210 ; 2 uses
  store i8 %i.eh, ptr %i.i, align 2, !tbaa !210
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !295
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ec
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !296
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %i.ef
  %i.en = load i8, ptr %i.em, align 1, !tbaa !210
  store i8 %i.en, ptr %i.ah, align 1, !tbaa !210
  %i.eo = load ptr, ptr @direct_pdir, align 8, !tbaa !295
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ec
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !296
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ef
  %i.es = load i8, ptr %i.er, align 1, !tbaa !210
  store i8 %i.es, ptr %i.h, align 1, !tbaa !210
  br label %.loopexit382

bb.t:                                             ; preds = %bb.g
  %12 = load ptr, ptr @input, align 8, !tbaa !159
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 4172
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !297
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.cl, ptr %i.f, align 8, !tbaa !10
  store i32 %i.cm, ptr %i.al, align 4, !tbaa !10
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ew = load double, ptr @lambda_mf_factor, align 8, !tbaa !203 ; 2 uses
  %i.ex = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.ey, %i.ak
  %i.fa = fptosi <2 x double> %i.ez to <2 x i32>
  store <2 x i32> %i.fa, ptr %i.f, align 8, !tbaa !10
  %i.fb = fmul double %i.ew, %i.ao
  %i.fc = fptosi double %i.fb to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fd = phi i32 [ %i.an, %bb.u ], [ %i.fc, %bb.v ]
  store i32 %i.fd, ptr %i.ap, align 8, !tbaa !10
  call void @PartitionMotionSearch(i32 noundef %i.co, i32 noundef %6, ptr noundef nonnull %i.f) #14
  store i32 2147483647, ptr %i.c, align 16, !tbaa !10
  call void @list_prediction_cost(i32 noundef 0, i32 noundef %6, i32 noundef %i.co, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i)
  %i.fe = load ptr, ptr @img, align 8, !tbaa !159 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 168
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !292
  %i.fh = add i32 %i.fg, %i.af
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 172
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !293
  %i.fk = add i32 %i.fj, %i.ag                    ; 2 uses
  %i.fl = add nsw i32 %i.fk, 2
  %i.fm = load i8, ptr %i.i, align 2, !tbaa !210  ; 6 uses
  %i.fn = sext i8 %i.fm to i64                    ; 4 uses
  %i.fo = sext i32 %i.fh to i64                   ; 9 uses
  %i.fp = sext i32 %i.fk to i64                   ; 7 uses
  %i.fq = sext i32 %i.fl to i64
  %i.fr = load ptr, ptr @enc_picture, align 8, !tbaa !178
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 6488
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !298
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !295
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fp
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !296
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fo
  store i8 %i.fm, ptr %i.fx, align 1, !tbaa !210
  %i.fy = load ptr, ptr @enc_picture, align 8, !tbaa !178 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = getelementptr inbounds [264 x i8], ptr %i.fz, i64 %i.as
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.fn
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !291
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 6496
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !299
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !301
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.fp
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !303
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.fo
  store i64 %i.gc, ptr %i.gi, align 8, !tbaa !291
  %indvars.iv.next = add nsw i64 %i.fo, 1         ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 6488
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !298
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !295
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.fp
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !296
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %indvars.iv.next
  store i8 %i.fm, ptr %i.go, align 1, !tbaa !210
  %i.gp = load ptr, ptr @enc_picture, align 8, !tbaa !178 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = getelementptr inbounds [264 x i8], ptr %i.gq, i64 %i.as
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.fn
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !291
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 6496
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !299
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !301
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.fp
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !303
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv.next
  store i64 %i.gt, ptr %i.gz, align 8, !tbaa !291
  %indvars.iv.next427 = add nsw i64 %i.fp, 1      ; 7 uses
  %i.ha = icmp slt i64 %indvars.iv.next427, %i.fq ; 2 uses
  br i1 %i.ha, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 6488
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !298
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !295
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %indvars.iv.next427
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !296
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 %i.fo
  store i8 %i.fm, ptr %i.hg, align 1, !tbaa !210
  %i.hh = load ptr, ptr @enc_picture, align 8, !tbaa !178 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = getelementptr inbounds [264 x i8], ptr %i.hi, i64 %i.as
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.fn
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !291
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 6496
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !299
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !301
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %indvars.iv.next427
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !303
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.fo
  store i64 %i.hl, ptr %i.hr, align 8, !tbaa !291
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 6488
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !298
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !295
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %indvars.iv.next427
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !296
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %indvars.iv.next
  store i8 %i.fm, ptr %i.hx, align 1, !tbaa !210
  %i.hy = load ptr, ptr @enc_picture, align 8, !tbaa !178 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = getelementptr inbounds [264 x i8], ptr %i.hz, i64 %i.as
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.fn
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !291
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 6496
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !299
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !301
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.if, i64 %indvars.iv.next427
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !303
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %indvars.iv.next
  store i64 %i.ic, ptr %i.ii, align 8, !tbaa !291
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not348, label %bb.an, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 2147483647, ptr %i.at, align 4, !tbaa !10
  store i32 2147483647, ptr %i.au, align 8, !tbaa !10
  %i.ij = load i32, ptr %i.aw, align 4, !tbaa !10 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph.i, label %list_prediction_cost.exit

.lr.ph.i:                                         ; preds = %bb.z
  %i.il = load ptr, ptr @img, align 8, !tbaa !159
  %.pre108.i = load ptr, ptr @input, align 8, !tbaa !159 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.pre108.i, i64 2152
  %i.in = load i32, ptr %i.im, align 8, !tbaa !205
  %.not96.i = icmp eq i32 %i.in, 0                ; 2 uses
  %.promoted386 = load i8, ptr %i.ah, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.pre108.i, i64 2156 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 20
  %i.iq = getelementptr inbounds nuw i8, ptr %.pre108.i, i64 4168
  %i.ir = icmp eq i32 %i.ij, 1
  %i.is = load ptr, ptr @refbits, align 8
  %i.it = load ptr, ptr @motion_cost, align 8
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.cp
  br label %bb.aa

bb.aa:                                            ; preds = %bb.al, %.lr.ph.i
  %i.iv = phi i8 [ %.promoted386, %.lr.ph.i ], [ %i.jz, %bb.al ] ; 4 uses
  %i.iw = phi i32 [ 2147483647, %.lr.ph.i ], [ %i.ka, %bb.al ] ; 5 uses
  %i.ix = phi i32 [ 0, %.lr.ph.i ], [ %i.kc, %bb.al ]
  %.0106.i = phi i16 [ 0, %.lr.ph.i ], [ %i.kb, %bb.al ] ; 5 uses
  %i.iy = icmp eq i16 %.0106.i, 0                 ; 2 uses
  br i1 %.not96.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.iz = load i32, ptr %i.io, align 4, !tbaa !206
  %.not97.i = icmp eq i32 %i.iz, 0
  br i1 %.not97.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ja = load i32, ptr %i.ip, align 4, !tbaa !196 ; 3 uses
  switch i32 %i.ja, label %bb.ag [
    i32 0, label %bb.ad
    i32 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  br i1 %.not96.i, label %.thread105.i, label %.thread105._crit_edge.i

.thread105.i:                                     ; preds = %bb.ad
  %.pre110.i = load i32, ptr %i.io, align 4, !tbaa !206
  %.not103.i = icmp eq i32 %.pre110.i, 0
  br i1 %.not103.i, label %bb.al, label %.thread105._crit_edge.i

.thread105._crit_edge.i:                          ; preds = %.thread105.i, %bb.ad
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread105._crit_edge.i
  %i.jc = icmp eq i32 %i.ja, 3
  %or.cond7.i = and i1 %i.iy, %i.jc
  br i1 %or.cond7.i, label %bb.ag, label %bb.al

bb.af:                                            ; preds = %.thread105._crit_edge.i
  br i1 %i.iy, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %i.jd = load i32, ptr %i.iq, align 8, !tbaa !207
  %.not104.i = icmp eq i32 %i.jd, 0
  br i1 %.not104.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ir, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.je = sext i16 %.0106.i to i64
end_hunk_0
begin_hunk_1_@submacroblock_mode_decision:bb.a
  %i.uv = icmp ne i32 %i.uu, 0
  %or.cond18.4 = select i1 %i.ut, i1 true, i1 %i.uv
  br i1 %or.cond18.4, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.uw = load ptr, ptr %i.rr, align 8, !tbaa !199
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.um
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !10
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv.next435.3
  store i32 %i.uy, ptr %i.uz, align 4, !tbaa !10
  %.pre475 = load i32, ptr %i.rc, align 8, !tbaa !189
  %.pre476 = load i32, ptr %i.rh, align 4, !tbaa !196
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.va = phi i32 [ %.pre476, %bb.bg ], [ %i.uj, %bb.bf ] ; 2 uses
  %i.vb = phi i32 [ %.pre475, %bb.bg ], [ %i.uk, %bb.bf ] ; 2 uses
  %i.vc = add nsw i32 %i.vb, %i.ce
  %i.vd = sext i32 %i.vc to i64                   ; 2 uses
  %i.ve = getelementptr inbounds [2 x i8], ptr %i.rm, i64 %i.vd
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !157
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %indvars.iv.next435.4
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !157
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.ro, i64 %indvars.iv.next435.4
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !157
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %indvars.iv.next435.4
  store i16 %i.vi, ptr %i.vj, align 2, !tbaa !157
  %i.vk = icmp ne i32 %i.va, 3
  %i.vl = load i32, ptr @si_frame_indicator, align 4
  %i.vm = icmp ne i32 %i.vl, 0
  %or.cond18.5 = select i1 %i.vk, i1 true, i1 %i.vm
  br i1 %or.cond18.5, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.vn = load ptr, ptr %i.rr, align 8, !tbaa !199
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %i.vd
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !10
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv.next435.4
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !10
  %.pre477 = load i32, ptr %i.rc, align 8, !tbaa !189
  %.pre478 = load i32, ptr %i.rh, align 4, !tbaa !196
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.vr = phi i32 [ %.pre478, %bb.bi ], [ %i.va, %bb.bh ] ; 2 uses
  %i.vs = phi i32 [ %.pre477, %bb.bi ], [ %i.vb, %bb.bh ] ; 2 uses
  %i.vt = add nsw i32 %i.vs, %i.cf
  %i.vu = sext i32 %i.vt to i64                   ; 2 uses
  %i.vv = getelementptr inbounds [2 x i8], ptr %i.rm, i64 %i.vu
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !157
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %indvars.iv.next435.5
  store i16 %i.vw, ptr %i.vx, align 2, !tbaa !157
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.ro, i64 %indvars.iv.next435.5
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !157
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %indvars.iv.next435.5
  store i16 %i.vz, ptr %i.wa, align 2, !tbaa !157
  %i.wb = icmp ne i32 %i.vr, 3
  %i.wc = load i32, ptr @si_frame_indicator, align 4
  %i.wd = icmp ne i32 %i.wc, 0
  %or.cond18.6 = select i1 %i.wb, i1 true, i1 %i.wd
  br i1 %or.cond18.6, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.we = load ptr, ptr %i.rr, align 8, !tbaa !199
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.vu
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !10
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv.next435.5
  store i32 %i.wg, ptr %i.wh, align 4, !tbaa !10
  %.pre479 = load i32, ptr %i.rc, align 8, !tbaa !189
  %.pre480 = load i32, ptr %i.rh, align 4, !tbaa !196
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.wi = phi i32 [ %.pre480, %bb.bk ], [ %i.vr, %bb.bj ]
  %i.wj = phi i32 [ %.pre479, %bb.bk ], [ %i.vs, %bb.bj ]
  %i.wk = add nsw i32 %i.wj, %i.cg
  %i.wl = sext i32 %i.wk to i64                   ; 2 uses
  %i.wm = getelementptr inbounds [2 x i8], ptr %i.rm, i64 %i.wl
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !157
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %indvars.iv.next435.6
  store i16 %i.wn, ptr %i.wo, align 2, !tbaa !157
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %i.ro, i64 %indvars.iv.next435.6
  %i.wq = load i16, ptr %i.wp, align 2, !tbaa !157
  %i.wr = getelementptr inbounds nuw [2 x i8], ptr %i.rp, i64 %indvars.iv.next435.6
  store i16 %i.wq, ptr %i.wr, align 2, !tbaa !157
  %i.ws = icmp ne i32 %i.wi, 3
  %i.wt = load i32, ptr @si_frame_indicator, align 4
  %i.wu = icmp ne i32 %i.wt, 0
  %or.cond18.7 = select i1 %i.ws, i1 true, i1 %i.wu
  br i1 %or.cond18.7, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wv = load ptr, ptr %i.rr, align 8, !tbaa !199
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.wl
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !10
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv.next435.6
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !10
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %indvars.iv.next437 = add nsw i64 %indvars.iv, 1
  %i.wz = icmp slt i64 %indvars.iv, %i.ci
  br i1 %i.wz, label %bb.ax, label %.loopexit381, !llvm.loop !282

.loopexit381:                                     ; preds = %bb.bn, %bb.aw
  %i.xa = phi ptr [ %i.nb, %bb.aw ], [ %i.ra, %bb.bn ] ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 15260
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !305
  %.not362 = icmp eq i32 %i.xc, 0
  br i1 %.not362, label %.loopexit378, label %.preheader379

.preheader379:                                    ; preds = %.loopexit381
  %i.xd = load ptr, ptr %i.l, align 8, !tbaa !198
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader379, %bb.bo
  %indvars.iv439 = phi i64 [ %i.bv, %.preheader379 ], [ %indvars.iv.next440, %bb.bo ] ; 4 uses
  %gep = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv439
  %i.xe = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %indvars.iv439
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !199
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %gep, ptr noundef nonnull align 4 dereferenceable(32) %i.xg, i64 32, i1 false)
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, 1
  %i.xh = icmp slt i64 %indvars.iv439, %i.ck
  br i1 %i.xh, label %bb.bo, label %bb.bp, !llvm.loop !283

bb.bp:                                            ; preds = %bb.bo
  %i.xi = load ptr, ptr @input, align 8, !tbaa !159
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 5660
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !306
  %.not363 = icmp eq i32 %i.xk, 0
  br i1 %.not363, label %.loopexit378, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xa, i64 15548
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !307 ; 2 uses
  %i.xn = ashr i32 %i.xm, 1                       ; 2 uses
  %i.xo = icmp sgt i32 %i.xn, 0
  br i1 %i.xo, label %.lr.ph, label %.loopexit378

.lr.ph:                                           ; preds = %bb.bq
  %i.xp = mul nsw i32 %i.xm, %i.q
  %i.xq = sdiv i32 %i.xp, 16                      ; 2 uses
  %i.xr = add nsw i32 %i.xq, %i.xn
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xa, i64 15544
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !308 ; 2 uses
  %i.xu = mul nsw i32 %i.xt, %i.s
  %i.xv = sdiv i32 %i.xu, 16
  %i.xw = sext i32 %i.xv to i64                   ; 4 uses
  %invariant.gep395 = getelementptr [4 x i8], ptr @submacroblock_mode_decision.fadjustCr, i64 %i.xw
  %i.xx = load ptr, ptr %i.o, align 8, !tbaa !209 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !198
  %i.xz = ashr i32 %i.xt, 1
  %i.ya = sext i32 %i.xz to i64
  %i.yb = shl nsw i64 %i.ya, 2                    ; 2 uses
  %invariant.gep397 = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @submacroblock_mode_decision.fadjustCr, i64 1024), i64 %i.xw
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !198
  %i.ye = sext i32 %i.xq to i64
  %i.yf = sext i32 %i.xr to i64
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %bb.br
  %indvars.iv442 = phi i64 [ %i.ye, %.lr.ph ], [ %indvars.iv.next443, %bb.br ] ; 5 uses
  %gep396 = getelementptr [64 x i8], ptr %invariant.gep395, i64 %indvars.iv442
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.xy, i64 %indvars.iv442
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !199
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.xw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %gep396, ptr align 4 %i.yi, i64 %i.yb, i1 false)
  %gep398 = getelementptr [64 x i8], ptr %invariant.gep397, i64 %indvars.iv442
  %i.yj = getelementptr inbounds [8 x i8], ptr %i.yd, i64 %indvars.iv442
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !199
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.xw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %gep398, ptr align 4 %i.yl, i64 %i.yb, i1 false)
  %indvars.iv.next443 = add nsw i64 %indvars.iv442, 1 ; 2 uses
  %i.ym = icmp slt i64 %indvars.iv.next443, %i.yf
  br i1 %i.ym, label %bb.br, label %.loopexit378, !llvm.loop !284

.loopexit378:                                     ; preds = %bb.br, %bb.bq, %bb.bp, %.loopexit381
  br i1 %i.br, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.loopexit378
  %i.yn = load ptr, ptr @cs_b8, align 8, !tbaa !159
  call void @store_coding_state(ptr noundef %i.yn) #14
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit378, %bb.bs, %bb.av, %bb.au
  %.1340 = phi double [ %.1337, %bb.bs ], [ %.1337, %.loopexit378 ], [ %.0339399, %bb.au ], [ %.0339399, %bb.av ]
  %.1324 = phi i32 [ %i.mx, %bb.bs ], [ %i.mx, %.loopexit378 ], [ %.0323401, %bb.au ], [ %.0323401, %bb.av ]
  %.1 = phi i32 [ %i.nk, %bb.bs ], [ %i.nk, %.loopexit378 ], [ %.0320403, %bb.au ], [ %.0320403, %bb.av ]
  %i.yo = load ptr, ptr @cs_cm, align 8, !tbaa !159
  call void @reset_coding_state(ptr noundef %i.yo) #14
  br label %bb.bu

bb.bu:                                            ; preds = %bb.d, %bb.f, %bb.bt
  %.2341 = phi double [ %.1340, %bb.bt ], [ %.0339399, %bb.f ], [ %.0339399, %bb.d ]
  %.2338 = phi double [ %.1337, %bb.bt ], [ %.0336400, %bb.f ], [ %.0336400, %bb.d ]
  %.2325 = phi i32 [ %.1324, %bb.bt ], [ %.0323401, %bb.f ], [ %.0323401, %bb.d ] ; 3 uses
  %.2 = phi i32 [ %.1, %bb.bt ], [ %.0320403, %bb.f ], [ %.0320403, %bb.d ] ; 3 uses
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next446, %i.j
  br i1 %exitcond.not, label %bb.bv, label %bb.d, !llvm.loop !285

bb.bv:                                            ; preds = %bb.bu
  %i.yp = sext i16 %5 to i32
  br i1 %.not, label %bb.bw, label %.thread368

bb.bw:                                            ; preds = %bb.bv
  %i.yq = load i32, ptr %1, align 4, !tbaa !310
  %i.yr = add nsw i32 %i.yq, %.2325
  store i32 %i.yr, ptr %1, align 4, !tbaa !310
  %i.ys = load ptr, ptr @input, align 8, !tbaa !159
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 4168
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !207
  %.not349 = icmp eq i32 %i.yu, 0
  br i1 %.not349, label %.preheader375, label %.loopexit374

.thread368:                                       ; preds = %bb.bv
  %i.yv = load ptr, ptr @input, align 8, !tbaa !159
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 4168
  %i.yx = load i32, ptr %i.yw, align 8, !tbaa !207
  %.not349369 = icmp eq i32 %i.yx, 0
  br i1 %.not349369, label %.thread370, label %.loopexit374

.thread370:                                       ; preds = %.thread368
  %i.yy = load i32, ptr %1, align 4, !tbaa !310
  %i.yz = add nsw i32 %i.yy, %.2325
  store i32 %i.yz, ptr %1, align 4, !tbaa !310
  br label %.preheader375

.preheader375:                                    ; preds = %bb.bw, %.thread370
  %.0.in = load i8, ptr %i.bd, align 1, !tbaa !210 ; 3 uses
  %.0 = sext i8 %.0.in to i16
  %.0321.in = load i16, ptr %i.bb, align 2, !tbaa !157
  %.0321 = sext i16 %.0321.in to i32              ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !291
  %i.za = and i8 %.0.in, -3
  %or.cond21 = icmp eq i8 %i.za, 0
  %i.zb = select i1 %or.cond21, i32 %.0321, i32 0
  %i.zc = add i8 %.0.in, -1
  %or.cond24 = icmp ult i8 %i.zc, 2
  %i.zd = select i1 %or.cond24, i32 %.0321, i32 0
  %i.ze = load i8, ptr %i.bf, align 1, !tbaa !210
  %i.zf = sext i8 %i.ze to i16
  %i.zg = load i8, ptr %i.bh, align 1, !tbaa !210
  %i.zh = sext i8 %i.zg to i16
  %i.zi = call i32 @LumaResidualCoding8x8(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef %6, i16 noundef signext %.0, i32 noundef %i.zb, i32 noundef %i.zd, i16 noundef signext %i.zf, i16 noundef signext %i.zh) #14
  %i.zj = load i32, ptr @cbp_blk8x8, align 4, !tbaa !10
  %i.zk = and i32 %i.zj, %i.bm
  %i.zl = load i64, ptr %i.a, align 8, !tbaa !291
  %i.zm = trunc i64 %i.zl to i32
  %i.zn = or i32 %i.zk, %i.zm
  store i32 %i.zn, ptr @cbp_blk8x8, align 4, !tbaa !10
  %i.zo = load ptr, ptr %3, align 8, !tbaa !198
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !199
  %i.zq = load ptr, ptr @img, align 8, !tbaa !159
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 14160
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !304
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %i.ay
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !209
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !198
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.zp, ptr noundef nonnull align 4 dereferenceable(260) %i.zw, i64 260, i1 false)
  %i.zx = load ptr, ptr %3, align 8, !tbaa !198
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !199
  %i.aaa = load ptr, ptr @img, align 8, !tbaa !159
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 14160
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !304
  %i.aad = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %i.ay
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !209
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !198
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.zz, ptr noundef nonnull align 4 dereferenceable(260) %i.aah, i64 260, i1 false)
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !198
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !199
  %i.aal = load ptr, ptr @img, align 8, !tbaa !159
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 14160
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !304
  %i.aao = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %i.ay
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !209
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !198
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.aak, ptr noundef nonnull align 4 dereferenceable(260) %i.aas, i64 260, i1 false)
  %i.aat = load ptr, ptr %i.aai, align 8, !tbaa !198
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !199
  %i.aaw = load ptr, ptr @img, align 8, !tbaa !159
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 14160
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !304
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.ay
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !209
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !198
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.aav, ptr noundef nonnull align 4 dereferenceable(260) %i.abe, i64 260, i1 false)
  %i.abf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !198
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !199
  %i.abi = load ptr, ptr @img, align 8, !tbaa !159
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 14160
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !304
  %i.abl = getelementptr inbounds [8 x i8], ptr %i.abk, i64 %i.ay
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !209
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !198
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.abh, ptr noundef nonnull align 4 dereferenceable(260) %i.abp, i64 260, i1 false)
  %i.abq = load ptr, ptr %i.abf, align 8, !tbaa !198
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !199
  %i.abt = load ptr, ptr @img, align 8, !tbaa !159
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 14160
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !304
  %i.abw = getelementptr inbounds [8 x i8], ptr %i.abv, i64 %i.ay
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !209
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !198
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.abs, ptr noundef nonnull align 4 dereferenceable(260) %i.acb, i64 260, i1 false)
  %i.acc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !198
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !199
  %i.acf = load ptr, ptr @img, align 8, !tbaa !159
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 14160
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !304
  %i.aci = getelementptr inbounds [8 x i8], ptr %i.ach, i64 %i.ay
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !209
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !198
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.ace, ptr noundef nonnull align 4 dereferenceable(260) %i.acm, i64 260, i1 false)
  %i.acn = load ptr, ptr %i.acc, align 8, !tbaa !198
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !199
  %i.acq = load ptr, ptr @img, align 8, !tbaa !159
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 14160
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !304
  %i.act = getelementptr inbounds [8 x i8], ptr %i.acs, i64 %i.ay
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !209
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !198
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.acp, ptr noundef nonnull align 4 dereferenceable(260) %i.acy, i64 260, i1 false)
  %invariant.gep406 = getelementptr [2 x i8], ptr %i.bn, i64 %i.bq
  %invariant.gep408 = getelementptr [2 x i8], ptr %i.bo, i64 %i.bq
  %invariant.gep411 = getelementptr [4 x i8], ptr %i.bp, i64 %i.bq
  %.pre482.a = load ptr, ptr @img, align 8, !tbaa !159
  %i.acz = or i32 %i.p, 7
  %i.ada = sext i32 %i.acz to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.preheader375, %bb.bz
  %i.adb = phi ptr [ %.pre482.a, %.preheader375 ], [ %i.aem, %bb.bz ] ; 2 uses
  %indvars.iv454 = phi i64 [ %i.bv, %.preheader375 ], [ %indvars.iv.next455, %bb.bz ] ; 8 uses
  %gep407 = getelementptr [32 x i8], ptr %invariant.gep406, i64 %indvars.iv454
  %i.adc = load ptr, ptr @enc_picture, align 8, !tbaa !178
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 6440
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !186
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adb, i64 180
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !187
  %i.adh = sext i32 %i.adg to i64
  %i.adi = getelementptr [8 x i8], ptr %i.ade, i64 %indvars.iv454
  %i.adj = getelementptr [8 x i8], ptr %i.adi, i64 %i.adh
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !155
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adb, i64 176
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !189
  %i.adn = add nsw i32 %i.adm, %i.s
  %i.ado = sext i32 %i.adn to i64
  %i.adp = getelementptr inbounds [2 x i8], ptr %i.adk, i64 %i.ado
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %gep407, ptr noundef nonnull align 2 dereferenceable(16) %i.adp, i64 16, i1 false)
  %gep409 = getelementptr [32 x i8], ptr %invariant.gep408, i64 %indvars.iv454
  %i.adq = load ptr, ptr @img, align 8, !tbaa !159
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 12624
  %i.ads = getelementptr inbounds [32 x i8], ptr %i.adr, i64 %indvars.iv454
  %i.adt = getelementptr inbounds nuw [2 x i8], ptr %i.ads, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %gep409, ptr noundef nonnull align 2 dereferenceable(16) %i.adt, i64 16, i1 false)
  %i.adu = load ptr, ptr @img, align 8, !tbaa !159 ; 4 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 20
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !196
  %i.adx = icmp ne i32 %i.adw, 3
  %i.ady = load i32, ptr @si_frame_indicator, align 4
  %i.adz = icmp ne i32 %i.ady, 0
  %or.cond26 = select i1 %i.adx, i1 true, i1 %i.adz
  br i1 %or.cond26, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %gep412 = getelementptr [64 x i8], ptr %invariant.gep411, i64 %indvars.iv454
  %i.aea = load ptr, ptr @lrec, align 8, !tbaa !198
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adu, i64 180
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !187
  %i.aed = sext i32 %i.aec to i64
  %i.aee = getelementptr [8 x i8], ptr %i.aea, i64 %indvars.iv454
  %i.aef = getelementptr [8 x i8], ptr %i.aee, i64 %i.aed
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !199
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adu, i64 176
end_hunk_1
