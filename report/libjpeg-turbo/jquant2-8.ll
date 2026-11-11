Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jquant2-8?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@update_box:bb.a

.lr.ph316:                                        ; preds = %.preheader250, %._crit_edge317
  %indvars.iv427 = phi i64 [ %i.bd, %.preheader250 ], [ %indvars.iv.next428, %._crit_edge317 ] ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv427
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !51
  %i.bj = getelementptr inbounds [64 x i8], ptr %i.bi, i64 %indvars.iv432
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bc
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph316, %bb.m
  %.3181314 = phi i32 [ %i.m, %.lr.ph316 ], [ %i.bo, %bb.m ] ; 2 uses
  %.3199313 = phi ptr [ %i.bk, %.lr.ph316 ], [ %i.bn, %bb.m ] ; 2 uses
  %i.bl = load i16, ptr %.3199313, align 2, !tbaa !61
  %.not232 = icmp eq i16 %i.bl, 0
  br i1 %.not232, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = trunc nsw i64 %indvars.iv432 to i32     ; 2 uses
  store i32 %i.bm, ptr %i.j, align 4, !tbaa !69
  br label %.loopexit252

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %.3199313, i64 2
  %i.bo = add i32 %.3181314, 1
  %exitcond426.not = icmp eq i32 %.3181314, %i.o
  br i1 %exitcond426.not, label %._crit_edge317, label %bb.k, !llvm.loop !114

._crit_edge317:                                   ; preds = %bb.m
  %indvars.iv.next428 = add nsw i64 %indvars.iv427, 1 ; 2 uses
  %lftr.wideiv430 = trunc i64 %indvars.iv.next428 to i32
  %exitcond431.not = icmp eq i32 %i.be, %lftr.wideiv430
  br i1 %exitcond431.not, label %._crit_edge321.split, label %.lr.ph316, !llvm.loop !115

._crit_edge321.split:                             ; preds = %._crit_edge317
  %indvars.iv.next433 = add nsw i64 %indvars.iv432, -1
  %.not229.not = icmp sgt i64 %indvars.iv432, %i.bg
  br i1 %.not229.not, label %.preheader250, label %.loopexit252, !llvm.loop !116

.loopexit252:                                     ; preds = %._crit_edge321.split, %.preheader251, %.loopexit255, %bb.l
  %.0174 = phi i32 [ %i.bm, %bb.l ], [ %i.k, %.loopexit255 ], [ %i.k, %.preheader251 ], [ %i.k, %._crit_edge321.split ] ; 7 uses
  %i.bp = icmp sgt i32 %i.o, %i.m
  br i1 %i.bp, label %.preheader248, label %.loopexit249

.preheader248:                                    ; preds = %.loopexit252
  %.not234333 = icmp sgt i32 %.0177, %.0176
  %i.bq = sext i32 %.0175 to i64
  %.not235327 = icmp sgt i32 %.0175, %.0174
  %or.cond502 = select i1 %.not234333, i1 true, i1 %.not235327
  br i1 %or.cond502, label %.loopexit249, label %.preheader247.preheader

.preheader247.preheader:                          ; preds = %.preheader248
  %i.br = sext i32 %.0177 to i64
  %i.bs = add i32 %.0176, 1
  %i.bt = sext i32 %i.m to i64
  %smax444 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %i.m)
  %i.bu = add i32 %smax444, 1
  br label %.preheader247

.preheader247:                                    ; preds = %.preheader247.preheader, %._crit_edge336.split
  %indvars.iv441 = phi i64 [ %i.bt, %.preheader247.preheader ], [ %indvars.iv.next442, %._crit_edge336.split ] ; 3 uses
  br label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader247, %._crit_edge332
  %indvars.iv436 = phi i64 [ %i.br, %.preheader247 ], [ %indvars.iv.next437, %._crit_edge332 ] ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv436
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !51
  %i.bx = getelementptr inbounds [64 x i8], ptr %i.bw, i64 %i.bq
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv441
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph331, %bb.p
  %.4186329 = phi i32 [ %.0175, %.lr.ph331 ], [ %i.cb, %bb.p ] ; 2 uses
  %.4200328 = phi ptr [ %i.by, %.lr.ph331 ], [ %i.cc, %bb.p ] ; 2 uses
  %i.bz = load i16, ptr %.4200328, align 2, !tbaa !61
  %.not236 = icmp eq i16 %i.bz, 0
  br i1 %.not236, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = trunc nsw i64 %indvars.iv441 to i32     ; 2 uses
  store i32 %i.ca, ptr %i.l, align 8, !tbaa !64
  br label %.loopexit249

bb.p:                                             ; preds = %bb.n
  %i.cb = add i32 %.4186329, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.4200328, i64 64
  %exitcond435.not = icmp eq i32 %.4186329, %.0174
  br i1 %exitcond435.not, label %._crit_edge332, label %bb.n, !llvm.loop !117

._crit_edge332:                                   ; preds = %bb.p
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 2 uses
  %lftr.wideiv439 = trunc i64 %indvars.iv.next437 to i32
  %exitcond440.not = icmp eq i32 %i.bs, %lftr.wideiv439
  br i1 %exitcond440.not, label %._crit_edge336.split, label %.lr.ph331, !llvm.loop !118

._crit_edge336.split:                             ; preds = %._crit_edge332
  %indvars.iv.next442 = add nsw i64 %indvars.iv441, 1 ; 2 uses
  %lftr.wideiv445 = trunc i64 %indvars.iv.next442 to i32
  %exitcond446.not = icmp eq i32 %i.bu, %lftr.wideiv445
  br i1 %exitcond446.not, label %.loopexit249, label %.preheader247, !llvm.loop !119

.loopexit249:                                     ; preds = %._crit_edge336.split, %.preheader248, %.loopexit252, %bb.o
  %.0173 = phi i32 [ %i.ca, %bb.o ], [ %i.m, %.loopexit252 ], [ %i.m, %.preheader248 ], [ %i.m, %._crit_edge336.split ] ; 8 uses
  %i.cd = icmp sgt i32 %i.o, %.0173
  br i1 %i.cd, label %.preheader246, label %.loopexit

.preheader246:                                    ; preds = %.loopexit249
  %.not238348 = icmp sgt i32 %.0177, %.0176
  %i.ce = sext i32 %.0175 to i64
  %.not239342 = icmp sgt i32 %.0175, %.0174
  %or.cond503 = select i1 %.not238348, i1 true, i1 %.not239342
  br i1 %or.cond503, label %.loopexit, label %.preheader245.preheader

.preheader245.preheader:                          ; preds = %.preheader246
  %i.cf = sext i32 %.0177 to i64
  %i.cg = add i32 %.0176, 1
  %i.ch = sext i32 %i.o to i64
  %i.ci = sext i32 %.0173 to i64
  br label %.preheader245

.preheader245:                                    ; preds = %.preheader245.preheader, %._crit_edge351.split
  %indvars.iv453 = phi i64 [ %i.ch, %.preheader245.preheader ], [ %indvars.iv.next454, %._crit_edge351.split ] ; 4 uses
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.preheader245, %._crit_edge347
  %indvars.iv448 = phi i64 [ %i.cf, %.preheader245 ], [ %indvars.iv.next449, %._crit_edge347 ] ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv448
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !51
  %i.cl = getelementptr inbounds [64 x i8], ptr %i.ck, i64 %i.ce
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %indvars.iv453
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph346, %bb.s
  %.5187344 = phi i32 [ %.0175, %.lr.ph346 ], [ %i.cp, %bb.s ] ; 2 uses
  %.5201343 = phi ptr [ %i.cm, %.lr.ph346 ], [ %i.cq, %bb.s ] ; 2 uses
  %i.cn = load i16, ptr %.5201343, align 2, !tbaa !61
  %.not240 = icmp eq i16 %i.cn, 0
  br i1 %.not240, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = trunc nsw i64 %indvars.iv453 to i32     ; 2 uses
  store i32 %i.co, ptr %i.n, align 4, !tbaa !65
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.cp = add i32 %.5187344, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.5201343, i64 64
  %exitcond447.not = icmp eq i32 %.5187344, %.0174
  br i1 %exitcond447.not, label %._crit_edge347, label %bb.q, !llvm.loop !120

._crit_edge347:                                   ; preds = %bb.s
  %indvars.iv.next449 = add nsw i64 %indvars.iv448, 1 ; 2 uses
  %lftr.wideiv451 = trunc i64 %indvars.iv.next449 to i32
  %exitcond452.not = icmp eq i32 %i.cg, %lftr.wideiv451
  br i1 %exitcond452.not, label %._crit_edge351.split, label %.lr.ph346, !llvm.loop !121

._crit_edge351.split:                             ; preds = %._crit_edge347
  %indvars.iv.next454 = add nsw i64 %indvars.iv453, -1
  %.not237.not = icmp sgt i64 %indvars.iv453, %i.ci
  br i1 %.not237.not, label %.preheader245, label %.loopexit, !llvm.loop !122

.loopexit:                                        ; preds = %._crit_edge351.split, %.preheader246, %.loopexit249, %bb.r
  %.0172 = phi i32 [ %i.co, %bb.r ], [ %i.o, %.loopexit249 ], [ %i.o, %.preheader246 ], [ %i.o, %._crit_edge351.split ] ; 4 uses
  %i.cr = sub nsw i32 %.0176, %.0177
  %i.cs = shl i32 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !48
  %i.cv = zext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !59
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !59
  %i.db = mul nsw i32 %i.cs, %i.da
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = sub nsw i32 %.0174, %.0175
  %i.de = shl i32 %i.dd, 2
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.cv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !59
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !59
  %i.dk = mul nsw i32 %i.de, %i.dj
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = sub nsw i32 %.0172, %.0173
  %i.dn = shl i32 %i.dm, 3
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.cv
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !59
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !59
  %i.dt = mul nsw i32 %i.dn, %i.ds
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = mul nsw i64 %i.dc, %i.dc
  %i.dw = mul nsw i64 %i.dl, %i.dl
  %i.dx = add nuw nsw i64 %i.dw, %i.dv
  %i.dy = mul nsw i64 %i.du, %i.du
  %i.dz = add nuw nsw i64 %i.dx, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !67
  %.not241372 = icmp sgt i32 %.0177, %.0176
  br i1 %.not241372, label %._crit_edge375, label %.preheader.lr.ph.a

.preheader.lr.ph.a:                               ; preds = %.loopexit
  %.not242364.a = icmp sgt i32 %.0175, %.0174
  %i.eb = sext i32 %.0173 to i64
  %.not243357 = icmp sgt i32 %.0173, %.0172
  br i1 %.not242364.a, label %._crit_edge375, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.a
  %2 = sext i32 %.0175 to i64
  %3 = add i32 %.0174, 1
  %i.ec = sext i32 %.0177 to i64
  %4 = add i32 %.0176, 1
  %i.ed = sub i32 %.0172, %.0173                  ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ed, 3
  %n.vec = and i64 %i.ef, 8589934588              ; 4 uses
  %i.eg = trunc i64 %n.vec to i32
  %i.eh = add i32 %.0173, %i.eg
  %i.ei = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge368
  %indvars.iv462 = phi i64 [ %i.ec, %.preheader.preheader ], [ %indvars.iv.next463, %._crit_edge368 ] ; 2 uses
  %.0374 = phi i64 [ 0, %.preheader.preheader ], [ %.us-phi, %._crit_edge368 ] ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv462
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !51
  %invariant.gep370 = getelementptr [2 x i8], ptr %i.ek, i64 %i.eb
  br i1 %.not243357, label %._crit_edge368, label %.lr.ph362

.lr.ph362:                                        ; preds = %.preheader, %._crit_edge363
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %._crit_edge363 ], [ %2, %.preheader ] ; 2 uses
  %.1366 = phi i64 [ %spec.select.lcssa, %._crit_edge363 ], [ %.0374, %.preheader ] ; 2 uses
  %gep371 = getelementptr [64 x i8], ptr %invariant.gep370, i64 %indvars.iv457 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph362
  %i.el = getelementptr i8, ptr %gep371, i64 %i.ei
  %i.em = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.1366, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.em, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi510 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eu, %vector.body ]
  %i.en = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %gep371, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <2 x i16>, ptr %next.gep, align 2, !tbaa !61
  %wide.load511 = load <2 x i16>, ptr %i.eo, align 2, !tbaa !61
  %i.ep = icmp ne <2 x i16> %wide.load, zeroinitializer
  %i.eq = icmp ne <2 x i16> %wide.load511, zeroinitializer
  %i.er = zext <2 x i1> %i.ep to <2 x i64>
  %i.es = zext <2 x i1> %i.eq to <2 x i64>
  %i.et = add <2 x i64> %vec.phi, %i.er           ; 2 uses
  %i.eu = add <2 x i64> %vec.phi510, %i.es        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eu, %i.et
  %i.ew = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge363, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph362, %middle.block
  %.2360.ph = phi i64 [ %.1366, %.lr.ph362 ], [ %i.ew, %middle.block ]
  %.6359.ph = phi i32 [ %.0173, %.lr.ph362 ], [ %i.eh, %middle.block ]
  %.6202358.ph = phi ptr [ %gep371, %.lr.ph362 ], [ %i.el, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.2360 = phi i64 [ %spec.select, %scalar.ph ], [ %.2360.ph, %scalar.ph.preheader ]
  %.6359 = phi i32 [ %i.ez, %scalar.ph ], [ %.6359.ph, %scalar.ph.preheader ] ; 2 uses
  %.6202358 = phi ptr [ %i.fa, %scalar.ph ], [ %.6202358.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ex = load i16, ptr %.6202358, align 2, !tbaa !61
  %.not244 = icmp ne i16 %i.ex, 0
  %i.ey = zext i1 %.not244 to i64
  %spec.select = add nsw i64 %.2360, %i.ey        ; 2 uses
  %i.ez = add i32 %.6359, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.6202358, i64 2
  %exitcond456.not = icmp eq i32 %.6359, %.0172
  br i1 %exitcond456.not, label %._crit_edge363, label %scalar.ph, !llvm.loop !124

._crit_edge363:                                   ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.ew, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %indvars.iv.next458 = add nsw i64 %indvars.iv457, 1 ; 2 uses
  %lftr.wideiv460 = trunc i64 %indvars.iv.next458 to i32
  %exitcond461.not = icmp eq i32 %3, %lftr.wideiv460
  br i1 %exitcond461.not, label %._crit_edge368, label %.lr.ph362, !llvm.loop !125

._crit_edge368:                                   ; preds = %._crit_edge363, %.preheader
  %.us-phi = phi i64 [ %.0374, %.preheader ], [ %spec.select.lcssa, %._crit_edge363 ] ; 2 uses
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, 1 ; 2 uses
  %lftr.wideiv465 = trunc i64 %indvars.iv.next463 to i32
  %exitcond466.not = icmp eq i32 %4, %lftr.wideiv465
  br i1 %exitcond466.not, label %._crit_edge375, label %.preheader, !llvm.loop !126

._crit_edge375:                                   ; preds = %._crit_edge368, %.preheader.lr.ph.a, %.loopexit
  %.0.lcssa = phi i64 [ 0, %.loopexit ], [ 0, %.preheader.lr.ph.a ], [ %.us-phi, %._crit_edge368 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.0.lcssa, ptr %i.fb, align 8, !tbaa !66
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @fill_inverse_cmap(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 32) %1, i32 noundef range(i32 0, 64) %2, i32 noundef range(i32 0, 32) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %i.c = alloca [128 x i8], align 16              ; 131 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.h = shl nuw nsw i32 %1, 3                    ; 2 uses
  %i.i = and i32 %i.h, 224
  %i.j = or disjoint i32 %i.i, 4                  ; 6 uses
  %i.k = shl nuw nsw i32 %2, 2                    ; 2 uses
  %i.l = and i32 %i.k, 224
  %i.m = or disjoint i32 %i.l, 2                  ; 6 uses
  %i.n = shl nuw nsw i32 %3, 3                    ; 2 uses
  %i.o = and i32 %i.n, 224
  %i.p = or disjoint i32 %i.o, 4                  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.r = load i32, ptr %i.q, align 4, !tbaa !58   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.s = or i32 %i.h, 28                          ; 5 uses
  %i.t = add nuw nsw i32 %i.j, %i.s
  %i.u = lshr exact i32 %i.t, 1
  %i.v = or i32 %i.k, 30                          ; 5 uses
  %i.w = add nuw nsw i32 %i.m, %i.v
  %i.x = lshr exact i32 %i.w, 1
  %i.y = or i32 %i.n, 28                          ; 5 uses
  %i.z = add nuw nsw i32 %i.p, %i.y
  %i.aa = lshr exact i32 %i.z, 1
  %i.ab = icmp sgt i32 %i.r, 0
  br i1 %i.ab, label %.lr.ph.i, label %find_nearby_colors.exit.thread

find_nearby_colors.exit.thread:                   ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %find_best_colors.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60
  %wide.trip.count.i = zext nneg i32 %i.r to i64  ; 3 uses
  %i.ak = load i32, ptr %i.af, align 8, !tbaa !48
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !59
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59 ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.al
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !59
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.al
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !59
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !59 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 5 uses
  %.0155185.i = phi i64 [ 2147483647, %.lr.ph.i ], [ %spec.select.i, %bb.q ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !36
  %i.bd = zext i8 %i.bc to i32                    ; 6 uses
  %i.be = icmp samesign ugt i32 %i.j, %i.bd
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bf = sub nsw i32 %i.bd, %i.j
  %i.bg = mul nsw i32 %i.aq, %i.bf
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.bh
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.bj = icmp samesign ult i32 %i.s, %i.bd
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = sub nuw nsw i32 %i.bd, %i.s
  %i.bl = mul nsw i32 %i.aq, %i.bk
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = mul nsw i64 %i.bm, %i.bm
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.not180.i = icmp samesign ult i32 %i.u, %i.bd
  %..i = select i1 %.not180.i, i32 %i.j, i32 %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink220.i = phi i32 [ %i.j, %bb.e ], [ %i.s, %bb.c ], [ %..i, %bb.f ]
  %.0152.i = phi i64 [ %i.bn, %bb.e ], [ %i.bi, %bb.c ], [ 0, %bb.f ] ; 3 uses
  %i.bo = sub nsw i32 %i.bd, %.sink220.i
  %i.bp = mul nsw i32 %i.bo, %i.aq
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = mul nsw i64 %i.bq, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !36
  %i.bu = zext i8 %i.bt to i32                    ; 6 uses
  %i.bv = icmp samesign ugt i32 %i.m, %i.bu
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = sub nsw i32 %i.bu, %i.m
  %i.bx = mul nsw i32 %i.av, %i.bw
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.by
  %i.ca = add nuw nsw i64 %i.bz, %.0152.i
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cb = icmp samesign ult i32 %i.v, %i.bu
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = sub nuw nsw i32 %i.bu, %i.v
  %i.cd = mul nsw i32 %i.av, %i.cc
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %i.ce
  %i.cg = add nuw nsw i64 %i.cf, %.0152.i
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.not181.i = icmp samesign ult i32 %i.x, %i.bu
  %.233.i = select i1 %.not181.i, i32 %i.m, i32 %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.sink226.i = phi i32 [ %i.m, %bb.j ], [ %i.v, %bb.h ], [ %.233.i, %bb.k ]
  %.1153.i = phi i64 [ %i.cg, %bb.j ], [ %i.ca, %bb.h ], [ %.0152.i, %bb.k ] ; 3 uses
  %i.ch = sub nsw i32 %i.bu, %.sink226.i
  %i.ci = mul nsw i32 %i.ch, %i.av
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = mul nsw i64 %i.cj, %i.cj
  %.1.i = add nuw nsw i64 %i.ck, %i.br
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !36
  %i.cn = zext i8 %i.cm to i32                    ; 6 uses
  %i.co = icmp samesign ugt i32 %i.p, %i.cn
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = sub nsw i32 %i.cn, %i.p
  %i.cq = mul nsw i32 %i.ba, %i.cp
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.cr
  %i.ct = add nsw i64 %i.cs, %.1153.i
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.cu = icmp samesign ult i32 %i.y, %i.cn
  br i1 %i.cu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cv = sub nuw nsw i32 %i.cn, %i.y
  %i.cw = mul nsw i32 %i.ba, %i.cv
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %i.cx
  %i.cz = add nsw i64 %i.cy, %.1153.i
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.not182.i = icmp samesign ult i32 %i.aa, %i.cn
  %.234.i = select i1 %.not182.i, i32 %i.p, i32 %i.y
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.sink232.i = phi i32 [ %i.p, %bb.o ], [ %i.y, %bb.m ], [ %.234.i, %bb.p ]
  %.2154.i = phi i64 [ %i.cz, %bb.o ], [ %i.ct, %bb.m ], [ %.1153.i, %bb.p ]
  %i.da = sub nsw i32 %i.cn, %.sink232.i
  %i.db = mul nsw i32 %i.da, %i.ba
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = mul nsw i64 %i.dc, %i.dc
  %.2.i = add nuw nsw i64 %.1.i, %i.dd
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store i64 %.2154.i, ptr %i.de, align 8, !tbaa !133
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %.2.i, i64 %.0155185.i) ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph188.i.preheader, label %bb.b, !llvm.loop !129

.lr.ph188.i.preheader:                            ; preds = %bb.q
  %xtraiter = and i64 %wide.trip.count.i, 1
end_hunk_0
