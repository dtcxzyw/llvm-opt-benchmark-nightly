Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jclossls-8?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @jinit_lossless_compressor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, -9
  %or.cond = icmp ult i32 %i.c, -7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 15, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.b, ptr %i.f, align 4, !tbaa !32
  %i.g = load ptr, ptr %0, align 8, !tbaa !26
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  tail call void %i.h(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = tail call ptr %i.k(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 152) #5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.l, ptr %i.m, align 8, !tbaa !34
  store ptr @start_pass_lossless, ptr %i.l, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_lossless(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq i32 %i.d, 0
  %spec.select = select i1 %.not, ptr @noscale, ptr @simple_downscale
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %spec.select, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = urem i32 %i.g, %i.i
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 129, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 %i.g, ptr %i.m, align 4, !tbaa !32
  %i.n = load i32, ptr %i.h, align 8, !tbaa !39
  %i.o = load ptr, ptr %0, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 %i.n, ptr %i.p, align 4, !tbaa !32
  %i.q = load ptr, ptr %0, align 8, !tbaa !26
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  tail call void %i.r(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.w = load i32, ptr %i.f, align 8, !tbaa !38
  %i.x = load i32, ptr %i.h, align 8, !tbaa !39
  %i.y = udiv i32 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store ptr @jpeg_difference_first_row, ptr %i.ac, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.s, align 4, !tbaa !52
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @simple_downscale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.b = add i32 %3, -1                           ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1                  ; 4 uses
  %min.iters.check = icmp ult i32 %i.b, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 %i.d       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %bound0 = icmp ult ptr %2, %i.f
  %bound0.a = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %0, i64 428
  %bound010 = icmp ult ptr %2, %4
  %bound111 = icmp ult ptr %i.a, %i.e
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 8589934584               ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 %n.vec
  %i.h = getelementptr i8, ptr %2, i64 %n.vec
  %i.i = trunc i64 %n.vec to i32
  %i.j = sub i32 %3, %i.i
  %i.k = load i32, ptr %i.a, align 8, !tbaa !37, !alias.scope !60
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !32, !alias.scope !61
  %wide.load14 = load <4 x i8>, ptr %i.l, align 1, !tbaa !32, !alias.scope !61
  %i.m = zext <4 x i8> %wide.load to <4 x i32>
  %i.n = zext <4 x i8> %wide.load14 to <4 x i32>
  %i.o = lshr <4 x i32> %i.m, %broadcast.splat
  %i.p = lshr <4 x i32> %i.n, %broadcast.splat
  %i.q = trunc nuw <4 x i32> %i.o to <4 x i8>
  %i.r = trunc nuw <4 x i32> %i.p to <4 x i8>
  %i.s = getelementptr i8, ptr %next.gep13, i64 4
  store <4 x i8> %i.q, ptr %next.gep13, align 1, !tbaa !32, !alias.scope !62, !noalias !63
  store <4 x i8> %i.r, ptr %i.s, align 1, !tbaa !32, !alias.scope !62, !noalias !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.04.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.a ], [ %i.g, %middle.block ] ; 2 uses
  %.03.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.a ], [ %i.h, %middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %3, %vector.memcheck ], [ %3, %bb.a ], [ %i.j, %middle.block ] ; 4 uses
  %i.u = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.04.prol = phi ptr [ %i.v, %scalar.ph.prol ], [ %.04.ph, %scalar.ph.preheader ] ; 2 uses
  %.03.prol = phi ptr [ %i.ab, %scalar.ph.prol ], [ %.03.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.ac, %scalar.ph.prol ], [ %.0.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %.04.prol, i64 1 ; 2 uses
  %i.w = load i8, ptr %.04.prol, align 1, !tbaa !32
  %i.x = zext i8 %i.w to i32
  %i.y = load i32, ptr %i.a, align 8, !tbaa !37
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.03.prol, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.03.prol, align 1, !tbaa !32
  %i.ac = add i32 %.0.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !58

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.04.unr = phi ptr [ %.04.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.03.unr = phi ptr [ %.03.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = icmp ult i32 %i.u, 3
  br i1 %i.ad, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04 = phi ptr [ %i.az, %scalar.ph ], [ %.04.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03 = phi ptr [ %i.bf, %scalar.ph ], [ %.03.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %i.bg, %scalar.ph ], [ %.0.unr, %scalar.ph.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.04, i64 1
  %i.af = load i8, ptr %.04, align 1, !tbaa !32
  %i.ag = zext i8 %i.af to i32
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !37
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc nuw i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %.03, i64 1
  store i8 %i.aj, ptr %.03, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.04, i64 2
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !32
  %i.an = zext i8 %i.am to i32
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !37
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.03, i64 2
  store i8 %i.aq, ptr %i.ak, align 1, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %.04, i64 3
  %i.at = load i8, ptr %i.al, align 1, !tbaa !32
  %i.au = zext i8 %i.at to i32
  %i.av = load i32, ptr %i.a, align 8, !tbaa !37
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc nuw i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.03, i64 3
  store i8 %i.ax, ptr %i.ar, align 1, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %.04, i64 4
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !32
  %i.bb = zext i8 %i.ba to i32
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !37
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc nuw i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.03, i64 4
  store i8 %i.be, ptr %i.ay, align 1, !tbaa !32
  %i.bg = add i32 %.0, -4                         ; 2 uses
  %.not.3 = icmp eq i32 %i.bg, 0
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !59

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @noscale(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %1, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @jpeg_difference_first_row(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 9 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !32
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = xor i32 %i.h, -1
  %i.j = add i32 %i.f, %i.i
  %.neg = shl nsw i32 -1, %i.j
  %i.k = add nsw i32 %.neg, %i.d
  store i32 %i.k, ptr %4, align 4, !tbaa !40
  %i.l = add i32 %5, -1                           ; 6 uses
  %.not51 = icmp eq i32 %i.l, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 16
  br i1 %min.iters.check, label %.lr.ph.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.n = getelementptr i8, ptr %4, i64 4
  %i.o = add i32 %5, -2
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = getelementptr i8, ptr %4, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %2, i64 1
  %i.u = getelementptr i8, ptr %2, i64 %i.p
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %bound0 = icmp ult ptr %i.n, %i.v
  %bound1 = icmp ult ptr %i.t, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4294967288               ; 5 uses
  %i.w = trunc nuw i64 %n.vec to i32
  %i.x = sub i32 %i.l, %i.w
  %i.y = shl nuw nsw i64 %n.vec, 2
  %i.z = getelementptr i8, ptr %4, i64 %i.y
  %i.aa = getelementptr i8, ptr %2, i64 %n.vec
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ag, %vector.body ]
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.ab ; 2 uses
  %next.gep58 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep58, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep58, i64 5
  %wide.load = load <4 x i8>, ptr %i.ad, align 1, !tbaa !32, !alias.scope !70
  %wide.load59 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !32, !alias.scope !70
  %i.af = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.ag = zext <4 x i8> %wide.load59 to <4 x i32> ; 4 uses
  %i.ah = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ai = shufflevector <4 x i32> %i.af, <4 x i32> %i.ag, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aj = sub nsw <4 x i32> %i.af, %i.ah
  %i.ak = sub nsw <4 x i32> %i.ag, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.aj, ptr %i.ac, align 4, !tbaa !40, !alias.scope !71, !noalias !70
  store <4 x i32> %i.ak, ptr %i.al, align 4, !tbaa !40, !alias.scope !71, !noalias !70
end_hunk_0
begin_hunk_1_@jpeg_difference1:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !32
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = load i8, ptr %3, align 1, !tbaa !32
  %i.f = zext i8 %i.e to i32
  %i.g = sub nsw i32 %i.d, %i.f
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 6 uses
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 16
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = getelementptr i8, ptr %4, i64 4
  %i.k = add i32 %5, -2
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %4, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr i8, ptr %2, i64 1
  %i.q = getelementptr i8, ptr %2, i64 %i.l
  %i.r = getelementptr i8, ptr %i.q, i64 2
  %bound0 = icmp ult ptr %i.j, %i.r
  %bound1 = icmp ult ptr %i.p, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 5 uses
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  %i.u = shl nuw nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %4, i64 %i.u
  %i.w = getelementptr i8, ptr %2, i64 %n.vec
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ac, %vector.body ]
  %i.x = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.x  ; 2 uses
  %next.gep28 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep28, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep28, i64 5
  %wide.load = load <4 x i8>, ptr %i.z, align 1, !tbaa !32, !alias.scope !81
  %wide.load29 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !32, !alias.scope !81
  %i.ab = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.ac = zext <4 x i8> %wide.load29 to <4 x i32> ; 4 uses
  %i.ad = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ab, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ae = shufflevector <4 x i32> %i.ab, <4 x i32> %i.ac, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.af = sub nsw <4 x i32> %i.ab, %i.ad
  %i.ag = sub nsw <4 x i32> %i.ac, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.af, ptr %i.y, align 4, !tbaa !40, !alias.scope !82, !noalias !81
  store <4 x i32> %i.ag, ptr %i.ah, align 4, !tbaa !40, !alias.scope !82, !noalias !81
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ac, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %.024.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.pn2023.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %.pn22.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %i.aj = add i32 %.ph, -1
  %xtraiter = and i32 %.ph, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader32, %.lr.ph.prol
  %i.ak = phi i32 [ %i.ao, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader32 ]
  %.024.prol = phi i32 [ %i.am, %.lr.ph.prol ], [ %.024.ph, %.lr.ph.preheader32 ]
  %.pn2023.prol = phi ptr [ %.016.prol, %.lr.ph.prol ], [ %.pn2023.ph, %.lr.ph.preheader32 ]
  %.pn22.prol = phi ptr [ %.017.prol, %.lr.ph.prol ], [ %.pn22.ph, %.lr.ph.preheader32 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader32 ]
  %.016.prol = getelementptr inbounds nuw i8, ptr %.pn2023.prol, i64 4 ; 3 uses
  %.017.prol = getelementptr inbounds nuw i8, ptr %.pn22.prol, i64 1 ; 3 uses
  %i.al = load i8, ptr %.017.prol, align 1, !tbaa !32
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %i.an = sub nsw i32 %i.am, %.024.prol
  store i32 %i.an, ptr %.016.prol, align 4, !tbaa !40
  %i.ao = add i32 %i.ak, -1                       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !79

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader32
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader32 ], [ %i.ao, %.lr.ph.prol ]
  %.024.unr = phi i32 [ %.024.ph, %.lr.ph.preheader32 ], [ %i.am, %.lr.ph.prol ]
  %.pn2023.unr = phi ptr [ %.pn2023.ph, %.lr.ph.preheader32 ], [ %.016.prol, %.lr.ph.prol ]
  %.pn22.unr = phi ptr [ %.pn22.ph, %.lr.ph.preheader32 ], [ %.017.prol, %.lr.ph.prol ]
  %i.ap = icmp ult i32 %i.aj, 3
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.aq = phi i32 [ %i.bd, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.024 = phi i32 [ %i.bb, %.lr.ph ], [ %.024.unr, %.lr.ph.prol.loopexit ]
  %.pn2023 = phi ptr [ %.016.3, %.lr.ph ], [ %.pn2023.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn22 = phi ptr [ %.017.3, %.lr.ph ], [ %.pn22.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.016 = getelementptr inbounds nuw i8, ptr %.pn2023, i64 4
  %.017 = getelementptr inbounds nuw i8, ptr %.pn22, i64 1
  %i.ar = load i8, ptr %.017, align 1, !tbaa !32
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = sub nsw i32 %i.as, %.024
  store i32 %i.at, ptr %.016, align 4, !tbaa !40
  %.016.1 = getelementptr inbounds nuw i8, ptr %.pn2023, i64 8
  %.017.1 = getelementptr inbounds nuw i8, ptr %.pn22, i64 2
  %i.au = load i8, ptr %.017.1, align 1, !tbaa !32
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = sub nsw i32 %i.av, %i.as
  store i32 %i.aw, ptr %.016.1, align 4, !tbaa !40
  %.016.2 = getelementptr inbounds nuw i8, ptr %.pn2023, i64 12
  %.017.2 = getelementptr inbounds nuw i8, ptr %.pn22, i64 3
  %i.ax = load i8, ptr %.017.2, align 1, !tbaa !32
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = sub nsw i32 %i.ay, %i.av
  store i32 %i.az, ptr %.016.2, align 4, !tbaa !40
  %.016.3 = getelementptr inbounds nuw i8, ptr %.pn2023, i64 16 ; 2 uses
  %.017.3 = getelementptr inbounds nuw i8, ptr %.pn22, i64 4 ; 2 uses
  %i.ba = load i8, ptr %.017.3, align 1, !tbaa !32
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = sub nsw i32 %i.bb, %i.ay
  store i32 %i.bc, ptr %.016.3, align 4, !tbaa !40
  %i.bd = add i32 %i.aq, -4                       ; 2 uses
  %.not.3 = icmp eq i32 %i.bd, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !38
  %.not19 = icmp eq i32 %i.bf, 0
  br i1 %.not19, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bh = sext i32 %1 to i64                      ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !40
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !40
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bm = load i32, ptr %i.be, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !39
  %i.bp = udiv i32 %i.bm, %i.bo
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bh
  store ptr @jpeg_difference_first_row, ptr %i.br, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i8, ptr %3, align 1, !tbaa !32
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %2, align 1, !tbaa !32
  %i.f = zext i8 %i.e to i32
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 6 uses
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 20
  br i1 %min.iters.check, label %.lr.ph.preheader49, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %i.k = add i32 %5, -2
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %4, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 1
  %i.q = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %bound0 = icmp ult ptr %i.j, %i.r
  %bound1 = icmp ult ptr %i.p, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %6 = getelementptr i8, ptr %2, i64 1
  %7 = getelementptr i8, ptr %2, i64 %i.q
  %bound038 = icmp ult ptr %i.j, %7
  %bound139 = icmp ult ptr %6, %i.o
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  br i1 %conflict.rdx, label %.lr.ph.preheader49, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 6 uses
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  %i.u = shl nuw nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %4, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 %n.vec
  %i.x = getelementptr i8, ptr %2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.y  ; 2 uses
  %next.gep41 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %next.gep42 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep42, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep41, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep41, i64 5
  %wide.load = load <4 x i8>, ptr %i.ab, align 1, !tbaa !32, !alias.scope !90
  %wide.load43 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !32, !alias.scope !90
  %i.ad = zext <4 x i8> %wide.load to <4 x i32>
  %i.ae = zext <4 x i8> %wide.load43 to <4 x i32>
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep42, i64 5
  %wide.load44 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !32, !alias.scope !91
  %wide.load45 = load <4 x i8>, ptr %i.af, align 1, !tbaa !32, !alias.scope !91
  %i.ag = zext <4 x i8> %wide.load44 to <4 x i32>
  %i.ah = zext <4 x i8> %wide.load45 to <4 x i32>
  %i.ai = sub nsw <4 x i32> %i.ag, %i.ad
  %i.aj = sub nsw <4 x i32> %i.ah, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.ai, ptr %i.z, align 4, !tbaa !40, !alias.scope !92, !noalias !93
  store <4 x i32> %i.aj, ptr %i.ak, align 4, !tbaa !40, !alias.scope !92, !noalias !93
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader49

.lr.ph.preheader49:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %.pn2529.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %.pn28.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.pn2427.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %i.am = add i32 %.ph, -1
  %xtraiter = and i32 %.ph, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader49, %.lr.ph.prol
  %i.an = phi i32 [ %i.at, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader49 ]
  %.pn2529.prol = phi ptr [ %.020.prol, %.lr.ph.prol ], [ %.pn2529.ph, %.lr.ph.preheader49 ]
  %.pn28.prol = phi ptr [ %.021.prol, %.lr.ph.prol ], [ %.pn28.ph, %.lr.ph.preheader49 ]
  %.pn2427.prol = phi ptr [ %.022.prol, %.lr.ph.prol ], [ %.pn2427.ph, %.lr.ph.preheader49 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader49 ]
  %.020.prol = getelementptr inbounds nuw i8, ptr %.pn2529.prol, i64 4 ; 3 uses
  %.022.prol = getelementptr inbounds nuw i8, ptr %.pn2427.prol, i64 1 ; 3 uses
  %.021.prol = getelementptr inbounds nuw i8, ptr %.pn28.prol, i64 1 ; 3 uses
  %i.ao = load i8, ptr %.021.prol, align 1, !tbaa !32
  %i.ap = zext i8 %i.ao to i32
  %i.aq = load i8, ptr %.022.prol, align 1, !tbaa !32
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub nsw i32 %i.ar, %i.ap
  store i32 %i.as, ptr %.020.prol, align 4, !tbaa !40
  %i.at = add i32 %i.an, -1                       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !88

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader49
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader49 ], [ %i.at, %.lr.ph.prol ]
  %.pn2529.unr = phi ptr [ %.pn2529.ph, %.lr.ph.preheader49 ], [ %.020.prol, %.lr.ph.prol ]
  %.pn28.unr = phi ptr [ %.pn28.ph, %.lr.ph.preheader49 ], [ %.021.prol, %.lr.ph.prol ]
  %.pn2427.unr = phi ptr [ %.pn2427.ph, %.lr.ph.preheader49 ], [ %.022.prol, %.lr.ph.prol ]
  %i.au = icmp ult i32 %i.am, 3
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.av = phi i32 [ %i.bq, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.pn2529 = phi ptr [ %.020.3, %.lr.ph ], [ %.pn2529.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn28 = phi ptr [ %.021.3, %.lr.ph ], [ %.pn28.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn2427 = phi ptr [ %.022.3, %.lr.ph ], [ %.pn2427.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.020 = getelementptr inbounds nuw i8, ptr %.pn2529, i64 4
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2427, i64 1
  %.021 = getelementptr inbounds nuw i8, ptr %.pn28, i64 1
  %i.aw = load i8, ptr %.021, align 1, !tbaa !32
  %i.ax = zext i8 %i.aw to i32
  %i.ay = load i8, ptr %.022, align 1, !tbaa !32
  %i.az = zext i8 %i.ay to i32
  %i.ba = sub nsw i32 %i.az, %i.ax
  store i32 %i.ba, ptr %.020, align 4, !tbaa !40
  %.020.1 = getelementptr inbounds nuw i8, ptr %.pn2529, i64 8
  %.022.1 = getelementptr inbounds nuw i8, ptr %.pn2427, i64 2
  %.021.1 = getelementptr inbounds nuw i8, ptr %.pn28, i64 2
  %i.bb = load i8, ptr %.021.1, align 1, !tbaa !32
  %i.bc = zext i8 %i.bb to i32
  %i.bd = load i8, ptr %.022.1, align 1, !tbaa !32
  %i.be = zext i8 %i.bd to i32
  %i.bf = sub nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %.020.1, align 4, !tbaa !40
  %.020.2 = getelementptr inbounds nuw i8, ptr %.pn2529, i64 12
  %.022.2 = getelementptr inbounds nuw i8, ptr %.pn2427, i64 3
  %.021.2 = getelementptr inbounds nuw i8, ptr %.pn28, i64 3
  %i.bg = load i8, ptr %.021.2, align 1, !tbaa !32
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i8, ptr %.022.2, align 1, !tbaa !32
  %i.bj = zext i8 %i.bi to i32
  %i.bk = sub nsw i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %.020.2, align 4, !tbaa !40
  %.020.3 = getelementptr inbounds nuw i8, ptr %.pn2529, i64 16 ; 2 uses
  %.022.3 = getelementptr inbounds nuw i8, ptr %.pn2427, i64 4 ; 2 uses
  %.021.3 = getelementptr inbounds nuw i8, ptr %.pn28, i64 4 ; 2 uses
  %i.bl = load i8, ptr %.021.3, align 1, !tbaa !32
  %i.bm = zext i8 %i.bl to i32
  %i.bn = load i8, ptr %.022.3, align 1, !tbaa !32
  %i.bo = zext i8 %i.bn to i32
  %i.bp = sub nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %.020.3, align 4, !tbaa !40
  %i.bq = add i32 %i.av, -4                       ; 2 uses
  %.not.3 = icmp eq i32 %i.bq, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !38
  %.not23 = icmp eq i32 %i.bs, 0
  br i1 %.not23, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bu = sext i32 %1 to i64                      ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !40
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !40
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bz = load i32, ptr %i.br, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !39
  %i.cc = udiv i32 %i.bz, %i.cb
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bu
  store ptr @jpeg_difference_first_row, ptr %i.ce, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference3(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i8, ptr %3, align 1, !tbaa !32
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !32
  %i.f = zext i8 %i.e to i32
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 6 uses
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 20
  br i1 %min.iters.check, label %.lr.ph.preheader51, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %i.k = add i32 %5, -2
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %4, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 1
  %i.q = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %bound0 = icmp ult ptr %i.j, %i.r
  %bound1 = icmp ult ptr %i.p, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %6 = getelementptr i8, ptr %2, i64 1
  %7 = getelementptr i8, ptr %2, i64 %i.q
  %bound040 = icmp ult ptr %i.j, %7
  %bound141 = icmp ult ptr %6, %i.o
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict, %found.conflict42
  br i1 %conflict.rdx, label %.lr.ph.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 6 uses
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  %i.u = shl nuw nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %4, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 %n.vec
  %i.x = getelementptr i8, ptr %2, i64 %n.vec
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ae, %vector.body ]
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.y  ; 2 uses
  %next.gep43 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %next.gep44 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep44, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep43, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep43, i64 5
  %wide.load = load <4 x i8>, ptr %i.ab, align 1, !tbaa !32, !alias.scope !101
  %wide.load45 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !32, !alias.scope !101
  %i.ad = zext <4 x i8> %wide.load to <4 x i32>   ; 2 uses
  %i.ae = zext <4 x i8> %wide.load45 to <4 x i32> ; 3 uses
  %i.af = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ad, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ag = shufflevector <4 x i32> %i.ad, <4 x i32> %i.ae, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep44, i64 5
  %wide.load46 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !32, !alias.scope !102
  %wide.load47 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !32, !alias.scope !102
  %i.ai = zext <4 x i8> %wide.load46 to <4 x i32>
  %i.aj = zext <4 x i8> %wide.load47 to <4 x i32>
  %i.ak = sub nsw <4 x i32> %i.ai, %i.af
  %i.al = sub nsw <4 x i32> %i.aj, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.ak, ptr %i.z, align 4, !tbaa !40, !alias.scope !103, !noalias !104
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !40, !alias.scope !103, !noalias !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ae, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader51

.lr.ph.preheader51:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %.031.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.pn2630.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %.pn29.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.pn2528.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %i.ao = add i32 %.ph, -1
  %xtraiter = and i32 %.ph, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader51, %.lr.ph.prol
  %i.ap = phi i32 [ %i.av, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader51 ]
  %.031.prol = phi i32 [ %i.ar, %.lr.ph.prol ], [ %.031.ph, %.lr.ph.preheader51 ]
  %.pn2630.prol = phi ptr [ %.020.prol, %.lr.ph.prol ], [ %.pn2630.ph, %.lr.ph.preheader51 ]
  %.pn29.prol = phi ptr [ %.021.prol, %.lr.ph.prol ], [ %.pn29.ph, %.lr.ph.preheader51 ]
  %.pn2528.prol = phi ptr [ %.022.prol, %.lr.ph.prol ], [ %.pn2528.ph, %.lr.ph.preheader51 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader51 ]
  %.020.prol = getelementptr inbounds nuw i8, ptr %.pn2630.prol, i64 4 ; 3 uses
  %.022.prol = getelementptr inbounds nuw i8, ptr %.pn2528.prol, i64 1 ; 3 uses
  %.021.prol = getelementptr inbounds nuw i8, ptr %.pn29.prol, i64 1 ; 3 uses
  %i.aq = load i8, ptr %.021.prol, align 1, !tbaa !32
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = load i8, ptr %.022.prol, align 1, !tbaa !32
  %i.at = zext i8 %i.as to i32
  %i.au = sub nsw i32 %i.at, %.031.prol
  store i32 %i.au, ptr %.020.prol, align 4, !tbaa !40
  %i.av = add i32 %i.ap, -1                       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !99

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader51
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader51 ], [ %i.av, %.lr.ph.prol ]
  %.031.unr = phi i32 [ %.031.ph, %.lr.ph.preheader51 ], [ %i.ar, %.lr.ph.prol ]
  %.pn2630.unr = phi ptr [ %.pn2630.ph, %.lr.ph.preheader51 ], [ %.020.prol, %.lr.ph.prol ]
  %.pn29.unr = phi ptr [ %.pn29.ph, %.lr.ph.preheader51 ], [ %.021.prol, %.lr.ph.prol ]
  %.pn2528.unr = phi ptr [ %.pn2528.ph, %.lr.ph.preheader51 ], [ %.022.prol, %.lr.ph.prol ]
  %i.aw = icmp ult i32 %i.ao, 3
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.ax = phi i32 [ %i.bs, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.031 = phi i32 [ %i.bo, %.lr.ph ], [ %.031.unr, %.lr.ph.prol.loopexit ]
  %.pn2630 = phi ptr [ %.020.3, %.lr.ph ], [ %.pn2630.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn29 = phi ptr [ %.021.3, %.lr.ph ], [ %.pn29.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn2528 = phi ptr [ %.022.3, %.lr.ph ], [ %.pn2528.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.020 = getelementptr inbounds nuw i8, ptr %.pn2630, i64 4
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2528, i64 1
  %.021 = getelementptr inbounds nuw i8, ptr %.pn29, i64 1
  %i.ay = load i8, ptr %.021, align 1, !tbaa !32
  %i.az = zext i8 %i.ay to i32
  %i.ba = load i8, ptr %.022, align 1, !tbaa !32
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub nsw i32 %i.bb, %.031
  store i32 %i.bc, ptr %.020, align 4, !tbaa !40
  %.020.1 = getelementptr inbounds nuw i8, ptr %.pn2630, i64 8
  %.022.1 = getelementptr inbounds nuw i8, ptr %.pn2528, i64 2
  %.021.1 = getelementptr inbounds nuw i8, ptr %.pn29, i64 2
  %i.bd = load i8, ptr %.021.1, align 1, !tbaa !32
  %i.be = zext i8 %i.bd to i32
  %i.bf = load i8, ptr %.022.1, align 1, !tbaa !32
  %i.bg = zext i8 %i.bf to i32
  %i.bh = sub nsw i32 %i.bg, %i.az
  store i32 %i.bh, ptr %.020.1, align 4, !tbaa !40
  %.020.2 = getelementptr inbounds nuw i8, ptr %.pn2630, i64 12
  %.022.2 = getelementptr inbounds nuw i8, ptr %.pn2528, i64 3
  %.021.2 = getelementptr inbounds nuw i8, ptr %.pn29, i64 3
  %i.bi = load i8, ptr %.021.2, align 1, !tbaa !32
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i8, ptr %.022.2, align 1, !tbaa !32
  %i.bl = zext i8 %i.bk to i32
  %i.bm = sub nsw i32 %i.bl, %i.be
  store i32 %i.bm, ptr %.020.2, align 4, !tbaa !40
  %.020.3 = getelementptr inbounds nuw i8, ptr %.pn2630, i64 16 ; 2 uses
  %.022.3 = getelementptr inbounds nuw i8, ptr %.pn2528, i64 4 ; 2 uses
  %.021.3 = getelementptr inbounds nuw i8, ptr %.pn29, i64 4 ; 2 uses
  %i.bn = load i8, ptr %.021.3, align 1, !tbaa !32
  %i.bo = zext i8 %i.bn to i32
  %i.bp = load i8, ptr %.022.3, align 1, !tbaa !32
  %i.bq = zext i8 %i.bp to i32
  %i.br = sub nsw i32 %i.bq, %i.bj
  store i32 %i.br, ptr %.020.3, align 4, !tbaa !40
  %i.bs = add i32 %i.ax, -4                       ; 2 uses
  %.not.3 = icmp eq i32 %i.bs, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !38
  %.not24 = icmp eq i32 %i.bu, 0
  br i1 %.not24, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bw = sext i32 %1 to i64                      ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !40
  %i.bz = add i32 %i.by, -1                       ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !40
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cb = load i32, ptr %i.bt, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !39
  %i.ce = udiv i32 %i.cb, %i.cd
  store i32 %i.ce, ptr %i.bx, align 4, !tbaa !40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.bw
  store ptr @jpeg_difference_first_row, ptr %i.cg, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i8, ptr %3, align 1, !tbaa !32
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !32
  %i.f = zext i8 %i.e to i32                      ; 4 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 6 uses
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 16
  br i1 %min.iters.check, label %.lr.ph.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %i.k = add i32 %5, -2
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %4, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 1
  %i.q = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %bound0 = icmp ult ptr %i.j, %i.r
  %bound1 = icmp ult ptr %i.p, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %6 = getelementptr i8, ptr %2, i64 1
  %7 = getelementptr i8, ptr %2, i64 %i.q
  %bound045 = icmp ult ptr %i.j, %7
  %bound146 = icmp ult ptr %6, %i.o
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx = or i1 %found.conflict, %found.conflict47
  br i1 %conflict.rdx, label %.lr.ph.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 6 uses
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  %i.u = shl nuw nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %4, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 %n.vec
  %i.x = getelementptr i8, ptr %2, i64 %n.vec
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init48 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ae, %vector.body ]
  %vector.recur49 = phi <4 x i32> [ %vector.recur.init48, %vector.ph ], [ %i.aj, %vector.body ]
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.y  ; 2 uses
  %next.gep50 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep51, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep50, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep50, i64 5
  %wide.load = load <4 x i8>, ptr %i.ab, align 1, !tbaa !32, !alias.scope !111
  %wide.load52 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !32, !alias.scope !111
  %i.ad = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.ae = zext <4 x i8> %wide.load52 to <4 x i32> ; 4 uses
  %i.af = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ad, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ag = shufflevector <4 x i32> %i.ad, <4 x i32> %i.ae, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep51, i64 5
  %wide.load53 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !32, !alias.scope !112
  %wide.load54 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !32, !alias.scope !112
  %i.ai = zext <4 x i8> %wide.load53 to <4 x i32> ; 3 uses
  %i.aj = zext <4 x i8> %wide.load54 to <4 x i32> ; 4 uses
  %i.ak = shufflevector <4 x i32> %vector.recur49, <4 x i32> %i.ai, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.al = shufflevector <4 x i32> %i.ai, <4 x i32> %i.aj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.am = add nuw nsw <4 x i32> %i.ak, %i.ad
  %i.an = add nuw nsw <4 x i32> %i.al, %i.ae
  %i.ao = sub nsw <4 x i32> %i.af, %i.am
  %i.ap = sub nsw <4 x i32> %i.ag, %i.an
  %i.aq = add nsw <4 x i32> %i.ao, %i.ai
  %i.ar = add nsw <4 x i32> %i.ap, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.aq, ptr %i.z, align 4, !tbaa !40, !alias.scope !113, !noalias !114
  store <4 x i32> %i.ar, ptr %i.as, align 4, !tbaa !40, !alias.scope !113, !noalias !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ae, i64 3
  %vector.recur.extract55 = extractelement <4 x i32> %i.aj, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader60

.lr.ph.preheader60:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %.036.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.02035.ph = phi i32 [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract55, %middle.block ] ; 2 uses
  %.pn2834.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %.pn33.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.pn2732.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %xtraiter = and i32 %.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader60
  %.022.prol = getelementptr inbounds nuw i8, ptr %.pn2834.ph, i64 4 ; 2 uses
  %.024.prol = getelementptr inbounds nuw i8, ptr %.pn2732.ph, i64 1 ; 2 uses
  %.023.prol = getelementptr inbounds nuw i8, ptr %.pn33.ph, i64 1 ; 2 uses
  %i.au = load i8, ptr %.023.prol, align 1, !tbaa !32
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = load i8, ptr %.024.prol, align 1, !tbaa !32
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = add nuw nsw i32 %.02035.ph, %i.av
  %.neg.prol = sub nsw i32 %.036.ph, %i.ay
  %i.az = add nsw i32 %.neg.prol, %i.ax
  store i32 %i.az, ptr %.022.prol, align 4, !tbaa !40
  %i.ba = add nsw i32 %.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader60
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader60 ], [ %i.ba, %.lr.ph.prol ]
  %.036.unr = phi i32 [ %.036.ph, %.lr.ph.preheader60 ], [ %i.av, %.lr.ph.prol ]
  %.02035.unr = phi i32 [ %.02035.ph, %.lr.ph.preheader60 ], [ %i.ax, %.lr.ph.prol ]
  %.pn2834.unr = phi ptr [ %.pn2834.ph, %.lr.ph.preheader60 ], [ %.022.prol, %.lr.ph.prol ]
  %.pn33.unr = phi ptr [ %.pn33.ph, %.lr.ph.preheader60 ], [ %.023.prol, %.lr.ph.prol ]
  %.pn2732.unr = phi ptr [ %.pn2732.ph, %.lr.ph.preheader60 ], [ %.024.prol, %.lr.ph.prol ]
  %i.bb = icmp eq i32 %.ph, 1
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bc = phi i32 [ %i.bp, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.036 = phi i32 [ %i.bk, %.lr.ph ], [ %.036.unr, %.lr.ph.prol.loopexit ]
  %.02035 = phi i32 [ %i.bm, %.lr.ph ], [ %.02035.unr, %.lr.ph.prol.loopexit ]
  %.pn2834 = phi ptr [ %.022.1, %.lr.ph ], [ %.pn2834.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn33 = phi ptr [ %.023.1, %.lr.ph ], [ %.pn33.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn2732 = phi ptr [ %.024.1, %.lr.ph ], [ %.pn2732.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2834, i64 4
  %.024 = getelementptr inbounds nuw i8, ptr %.pn2732, i64 1
  %.023 = getelementptr inbounds nuw i8, ptr %.pn33, i64 1
  %i.bd = load i8, ptr %.023, align 1, !tbaa !32
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = load i8, ptr %.024, align 1, !tbaa !32
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = add nuw nsw i32 %.02035, %i.be
  %.neg = sub nsw i32 %.036, %i.bh
  %i.bi = add nsw i32 %.neg, %i.bg
  store i32 %i.bi, ptr %.022, align 4, !tbaa !40
  %.022.1 = getelementptr inbounds nuw i8, ptr %.pn2834, i64 8 ; 2 uses
  %.024.1 = getelementptr inbounds nuw i8, ptr %.pn2732, i64 2 ; 2 uses
  %.023.1 = getelementptr inbounds nuw i8, ptr %.pn33, i64 2 ; 2 uses
  %i.bj = load i8, ptr %.023.1, align 1, !tbaa !32
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = load i8, ptr %.024.1, align 1, !tbaa !32
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = add nuw nsw i32 %i.bg, %i.bk
  %.neg.1 = sub nsw i32 %i.be, %i.bn
  %i.bo = add nsw i32 %.neg.1, %i.bm
  store i32 %i.bo, ptr %.022.1, align 4, !tbaa !40
  %i.bp = add i32 %i.bc, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bp, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !38
  %.not26 = icmp eq i32 %i.br, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bt = sext i32 %1 to i64                      ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !40
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.by = load i32, ptr %i.bq, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !39
  %i.cb = udiv i32 %i.by, %i.ca
  store i32 %i.cb, ptr %i.bu, align 4, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.bt
  store ptr @jpeg_difference_first_row, ptr %i.cd, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i8, ptr %3, align 1, !tbaa !32
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !32
  %i.f = zext i8 %i.e to i32                      ; 4 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 6 uses
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 16
  br i1 %min.iters.check, label %.lr.ph.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %i.k = add i32 %5, -2
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %4, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 1
  %i.q = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %bound0 = icmp ult ptr %i.j, %i.r
  %bound1 = icmp ult ptr %i.p, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %6 = getelementptr i8, ptr %2, i64 1
  %7 = getelementptr i8, ptr %2, i64 %i.q
  %bound044 = icmp ult ptr %i.j, %7
  %bound145 = icmp ult ptr %6, %i.o
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 6 uses
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  %i.u = shl nuw nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %4, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 %n.vec
  %i.x = getelementptr i8, ptr %2, i64 %n.vec
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init47 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ae, %vector.body ]
  %vector.recur48 = phi <4 x i32> [ %vector.recur.init47, %vector.ph ], [ %i.aj, %vector.body ]
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.y  ; 2 uses
  %next.gep49 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %next.gep50 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep50, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep49, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep49, i64 5
  %wide.load = load <4 x i8>, ptr %i.ab, align 1, !tbaa !32, !alias.scope !121
  %wide.load51 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !32, !alias.scope !121
  %i.ad = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.ae = zext <4 x i8> %wide.load51 to <4 x i32> ; 4 uses
  %i.af = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ad, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ag = shufflevector <4 x i32> %i.ad, <4 x i32> %i.ae, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep50, i64 5
  %wide.load52 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !32, !alias.scope !122
  %wide.load53 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !32, !alias.scope !122
  %i.ai = zext <4 x i8> %wide.load52 to <4 x i32> ; 3 uses
  %i.aj = zext <4 x i8> %wide.load53 to <4 x i32> ; 4 uses
  %i.ak = shufflevector <4 x i32> %vector.recur48, <4 x i32> %i.ai, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.al = shufflevector <4 x i32> %i.ai, <4 x i32> %i.aj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.am = sub nsw <4 x i32> %i.ad, %i.af
  %i.an = sub nsw <4 x i32> %i.ae, %i.ag
  %i.ao = ashr <4 x i32> %i.am, splat (i32 1)
  %i.ap = ashr <4 x i32> %i.an, splat (i32 1)
  %i.aq = add nsw <4 x i32> %i.ak, %i.ao
  %i.ar = add nsw <4 x i32> %i.al, %i.ap
  %i.as = sub nsw <4 x i32> %i.ai, %i.aq
  %i.at = sub nsw <4 x i32> %i.aj, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.as, ptr %i.z, align 4, !tbaa !40, !alias.scope !123, !noalias !124
  store <4 x i32> %i.at, ptr %i.au, align 4, !tbaa !40, !alias.scope !123, !noalias !124
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ae, i64 3
  %vector.recur.extract54 = extractelement <4 x i32> %i.aj, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader59

.lr.ph.preheader59:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %.035.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.02034.ph = phi i32 [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract54, %middle.block ] ; 2 uses
  %.pn2833.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %.pn32.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.pn2731.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %xtraiter = and i32 %.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader59
  %.022.prol = getelementptr inbounds nuw i8, ptr %.pn2833.ph, i64 4 ; 2 uses
  %.024.prol = getelementptr inbounds nuw i8, ptr %.pn2731.ph, i64 1 ; 2 uses
  %.023.prol = getelementptr inbounds nuw i8, ptr %.pn32.ph, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.023.prol, align 1, !tbaa !32
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = load i8, ptr %.024.prol, align 1, !tbaa !32
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = sub nsw i32 %i.ax, %.035.ph
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = add nsw i32 %.02034.ph, %i.bb
  %i.bd = sub nsw i32 %i.az, %i.bc
  store i32 %i.bd, ptr %.022.prol, align 4, !tbaa !40
  %i.be = add nsw i32 %.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader59
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader59 ], [ %i.be, %.lr.ph.prol ]
  %.035.unr = phi i32 [ %.035.ph, %.lr.ph.preheader59 ], [ %i.ax, %.lr.ph.prol ]
  %.02034.unr = phi i32 [ %.02034.ph, %.lr.ph.preheader59 ], [ %i.az, %.lr.ph.prol ]
  %.pn2833.unr = phi ptr [ %.pn2833.ph, %.lr.ph.preheader59 ], [ %.022.prol, %.lr.ph.prol ]
  %.pn32.unr = phi ptr [ %.pn32.ph, %.lr.ph.preheader59 ], [ %.023.prol, %.lr.ph.prol ]
  %.pn2731.unr = phi ptr [ %.pn2731.ph, %.lr.ph.preheader59 ], [ %.024.prol, %.lr.ph.prol ]
  %i.bf = icmp eq i32 %.ph, 1
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bg = phi i32 [ %i.bx, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.035 = phi i32 [ %i.bq, %.lr.ph ], [ %.035.unr, %.lr.ph.prol.loopexit ]
  %.02034 = phi i32 [ %i.bs, %.lr.ph ], [ %.02034.unr, %.lr.ph.prol.loopexit ]
  %.pn2833 = phi ptr [ %.022.1, %.lr.ph ], [ %.pn2833.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn32 = phi ptr [ %.023.1, %.lr.ph ], [ %.pn32.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn2731 = phi ptr [ %.024.1, %.lr.ph ], [ %.pn2731.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2833, i64 4
  %.024 = getelementptr inbounds nuw i8, ptr %.pn2731, i64 1
  %.023 = getelementptr inbounds nuw i8, ptr %.pn32, i64 1
  %i.bh = load i8, ptr %.023, align 1, !tbaa !32
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = load i8, ptr %.024, align 1, !tbaa !32
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = sub nsw i32 %i.bi, %.035
  %i.bm = ashr i32 %i.bl, 1
  %i.bn = add nsw i32 %.02034, %i.bm
  %i.bo = sub nsw i32 %i.bk, %i.bn
  store i32 %i.bo, ptr %.022, align 4, !tbaa !40
  %.022.1 = getelementptr inbounds nuw i8, ptr %.pn2833, i64 8 ; 2 uses
  %.024.1 = getelementptr inbounds nuw i8, ptr %.pn2731, i64 2 ; 2 uses
  %.023.1 = getelementptr inbounds nuw i8, ptr %.pn32, i64 2 ; 2 uses
  %i.bp = load i8, ptr %.023.1, align 1, !tbaa !32
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = load i8, ptr %.024.1, align 1, !tbaa !32
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = sub nsw i32 %i.bq, %i.bi
  %i.bu = ashr i32 %i.bt, 1
  %i.bv = add nsw i32 %i.bu, %i.bk
  %i.bw = sub nsw i32 %i.bs, %i.bv
  store i32 %i.bw, ptr %.022.1, align 4, !tbaa !40
  %i.bx = add i32 %i.bg, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bx, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !38
  %.not26 = icmp eq i32 %i.bz, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cb = sext i32 %1 to i64                      ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !40
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cg = load i32, ptr %i.by, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !39
  %i.cj = udiv i32 %i.cg, %i.ci
  store i32 %i.cj, ptr %i.cc, align 4, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cb
  store ptr @jpeg_difference_first_row, ptr %i.cl, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference6(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i8, ptr %3, align 1, !tbaa !32
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !32
  %i.f = zext i8 %i.e to i32                      ; 4 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 6 uses
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 16
  br i1 %min.iters.check, label %.lr.ph.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %i.k = add i32 %5, -2
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %4, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 1
  %i.q = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %bound0 = icmp ult ptr %i.j, %i.r
  %bound1 = icmp ult ptr %i.p, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %6 = getelementptr i8, ptr %2, i64 1
  %7 = getelementptr i8, ptr %2, i64 %i.q
  %bound045 = icmp ult ptr %i.j, %7
  %bound146 = icmp ult ptr %6, %i.o
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx = or i1 %found.conflict, %found.conflict47
  br i1 %conflict.rdx, label %.lr.ph.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 6 uses
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  %i.u = shl nuw nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %4, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 %n.vec
  %i.x = getelementptr i8, ptr %2, i64 %n.vec
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  %vector.recur.init48 = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ae, %vector.body ]
  %vector.recur49 = phi <4 x i32> [ %vector.recur.init48, %vector.ph ], [ %i.aj, %vector.body ]
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.y  ; 2 uses
  %next.gep50 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep51, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep50, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep50, i64 5
  %wide.load = load <4 x i8>, ptr %i.ab, align 1, !tbaa !32, !alias.scope !131
  %wide.load52 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !32, !alias.scope !131
  %i.ad = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.ae = zext <4 x i8> %wide.load52 to <4 x i32> ; 4 uses
  %i.af = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ad, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ag = shufflevector <4 x i32> %i.ad, <4 x i32> %i.ae, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep51, i64 5
  %wide.load53 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !32, !alias.scope !132
  %wide.load54 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !32, !alias.scope !132
  %i.ai = zext <4 x i8> %wide.load53 to <4 x i32> ; 3 uses
  %i.aj = zext <4 x i8> %wide.load54 to <4 x i32> ; 4 uses
  %i.ak = shufflevector <4 x i32> %vector.recur49, <4 x i32> %i.ai, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.al = shufflevector <4 x i32> %i.ai, <4 x i32> %i.aj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.am = sub nsw <4 x i32> %i.ak, %i.af
  %i.an = sub nsw <4 x i32> %i.al, %i.ag
  %i.ao = ashr <4 x i32> %i.am, splat (i32 1)
  %i.ap = ashr <4 x i32> %i.an, splat (i32 1)
  %i.aq = add nsw <4 x i32> %i.ao, %i.ad
  %i.ar = add nsw <4 x i32> %i.ap, %i.ae
  %i.as = sub nsw <4 x i32> %i.ai, %i.aq
  %i.at = sub nsw <4 x i32> %i.aj, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.as, ptr %i.z, align 4, !tbaa !40, !alias.scope !133, !noalias !134
  store <4 x i32> %i.at, ptr %i.au, align 4, !tbaa !40, !alias.scope !133, !noalias !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ae, i64 3
  %vector.recur.extract55 = extractelement <4 x i32> %i.aj, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader60

.lr.ph.preheader60:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %.036.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.02035.ph = phi i32 [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract55, %middle.block ] ; 2 uses
  %.pn2834.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %.pn33.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.pn2732.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %xtraiter = and i32 %.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader60
  %.022.prol = getelementptr inbounds nuw i8, ptr %.pn2834.ph, i64 4 ; 2 uses
  %.024.prol = getelementptr inbounds nuw i8, ptr %.pn2732.ph, i64 1 ; 2 uses
  %.023.prol = getelementptr inbounds nuw i8, ptr %.pn33.ph, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.023.prol, align 1, !tbaa !32
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = load i8, ptr %.024.prol, align 1, !tbaa !32
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = sub nsw i32 %.02035.ph, %.036.ph
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = add nsw i32 %i.bb, %i.ax
  %i.bd = sub nsw i32 %i.az, %i.bc
  store i32 %i.bd, ptr %.022.prol, align 4, !tbaa !40
  %i.be = add nsw i32 %.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader60
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader60 ], [ %i.be, %.lr.ph.prol ]
  %.036.unr = phi i32 [ %.036.ph, %.lr.ph.preheader60 ], [ %i.ax, %.lr.ph.prol ]
  %.02035.unr = phi i32 [ %.02035.ph, %.lr.ph.preheader60 ], [ %i.az, %.lr.ph.prol ]
  %.pn2834.unr = phi ptr [ %.pn2834.ph, %.lr.ph.preheader60 ], [ %.022.prol, %.lr.ph.prol ]
  %.pn33.unr = phi ptr [ %.pn33.ph, %.lr.ph.preheader60 ], [ %.023.prol, %.lr.ph.prol ]
  %.pn2732.unr = phi ptr [ %.pn2732.ph, %.lr.ph.preheader60 ], [ %.024.prol, %.lr.ph.prol ]
  %i.bf = icmp eq i32 %.ph, 1
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bg = phi i32 [ %i.bx, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.036 = phi i32 [ %i.bq, %.lr.ph ], [ %.036.unr, %.lr.ph.prol.loopexit ]
  %.02035 = phi i32 [ %i.bs, %.lr.ph ], [ %.02035.unr, %.lr.ph.prol.loopexit ]
  %.pn2834 = phi ptr [ %.022.1, %.lr.ph ], [ %.pn2834.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn33 = phi ptr [ %.023.1, %.lr.ph ], [ %.pn33.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn2732 = phi ptr [ %.024.1, %.lr.ph ], [ %.pn2732.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.022 = getelementptr inbounds nuw i8, ptr %.pn2834, i64 4
  %.024 = getelementptr inbounds nuw i8, ptr %.pn2732, i64 1
  %.023 = getelementptr inbounds nuw i8, ptr %.pn33, i64 1
  %i.bh = load i8, ptr %.023, align 1, !tbaa !32
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = load i8, ptr %.024, align 1, !tbaa !32
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = sub nsw i32 %.02035, %.036
  %i.bm = ashr i32 %i.bl, 1
  %i.bn = add nsw i32 %i.bm, %i.bi
  %i.bo = sub nsw i32 %i.bk, %i.bn
  store i32 %i.bo, ptr %.022, align 4, !tbaa !40
  %.022.1 = getelementptr inbounds nuw i8, ptr %.pn2834, i64 8 ; 2 uses
  %.024.1 = getelementptr inbounds nuw i8, ptr %.pn2732, i64 2 ; 2 uses
  %.023.1 = getelementptr inbounds nuw i8, ptr %.pn33, i64 2 ; 2 uses
  %i.bp = load i8, ptr %.023.1, align 1, !tbaa !32
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = load i8, ptr %.024.1, align 1, !tbaa !32
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = sub nsw i32 %i.bk, %i.bi
  %i.bu = ashr i32 %i.bt, 1
  %i.bv = add nsw i32 %i.bu, %i.bq
  %i.bw = sub nsw i32 %i.bs, %i.bv
  store i32 %i.bw, ptr %.022.1, align 4, !tbaa !40
  %i.bx = add i32 %i.bg, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bx, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !38
  %.not26 = icmp eq i32 %i.bz, 0
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cb = sext i32 %1 to i64                      ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !40
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cg = load i32, ptr %i.by, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !39
  %i.cj = udiv i32 %i.cg, %i.ci
  store i32 %i.cj, ptr %i.cc, align 4, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cb
  store ptr @jpeg_difference_first_row, ptr %i.cl, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @jpeg_difference7(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load i8, ptr %3, align 1, !tbaa !32
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %2, align 1, !tbaa !32
  %i.f = zext i8 %i.e to i32                      ; 4 uses
  %i.g = sub nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %4, align 4, !tbaa !40
  %i.h = add i32 %5, -1                           ; 6 uses
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 16
  br i1 %min.iters.check, label %.lr.ph.preheader51, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %i.k = add i32 %5, -2
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr i8, ptr %4, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 1
  %i.q = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %bound0 = icmp ult ptr %i.j, %i.r
  %bound1 = icmp ult ptr %i.p, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %6 = getelementptr i8, ptr %2, i64 1
  %7 = getelementptr i8, ptr %2, i64 %i.q
  %bound040 = icmp ult ptr %i.j, %7
  %bound141 = icmp ult ptr %6, %i.o
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict, %found.conflict42
  br i1 %conflict.rdx, label %.lr.ph.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 6 uses
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.h, %i.s
  %i.u = shl nuw nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %4, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 %n.vec
  %i.x = getelementptr i8, ptr %2, i64 %n.vec
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.f, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.af, %vector.body ]
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %i.y  ; 2 uses
  %next.gep43 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %next.gep44 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep44, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep43, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep43, i64 5
  %wide.load = load <4 x i8>, ptr %i.ab, align 1, !tbaa !32, !alias.scope !141
  %wide.load45 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !32, !alias.scope !141
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep44, i64 5
  %wide.load46 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !32, !alias.scope !142
  %wide.load47 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !32, !alias.scope !142
  %i.ae = zext <4 x i8> %wide.load46 to <4 x i32> ; 3 uses
  %i.af = zext <4 x i8> %wide.load47 to <4 x i32> ; 4 uses
  %i.ag = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ae, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ah = shufflevector <4 x i32> %i.ae, <4 x i32> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ai = zext <4 x i8> %wide.load to <4 x i32>
  %i.aj = zext <4 x i8> %wide.load45 to <4 x i32>
  %i.ak = add nuw nsw <4 x i32> %i.ag, %i.ai
  %i.al = add nuw nsw <4 x i32> %i.ah, %i.aj
  %i.am = lshr <4 x i32> %i.ak, splat (i32 1)
  %i.an = lshr <4 x i32> %i.al, splat (i32 1)
  %i.ao = sub nsw <4 x i32> %i.ae, %i.am
  %i.ap = sub nsw <4 x i32> %i.af, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %i.ao, ptr %i.z, align 4, !tbaa !40, !alias.scope !143, !noalias !144
  store <4 x i32> %i.ap, ptr %i.aq, align 4, !tbaa !40, !alias.scope !143, !noalias !144
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.af, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader51

.lr.ph.preheader51:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %.01931.ph = phi i32 [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.pn2630.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %.pn29.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.pn2528.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %xtraiter = and i32 %.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader51
  %.021.prol = getelementptr inbounds nuw i8, ptr %.pn2630.ph, i64 4 ; 2 uses
  %.023.prol = getelementptr inbounds nuw i8, ptr %.pn2528.ph, i64 1 ; 2 uses
  %.022.prol = getelementptr inbounds nuw i8, ptr %.pn29.ph, i64 1 ; 2 uses
  %i.as = load i8, ptr %.022.prol, align 1, !tbaa !32
  %i.at = load i8, ptr %.023.prol, align 1, !tbaa !32
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = zext i8 %i.as to i32
  %i.aw = add nuw nsw i32 %.01931.ph, %i.av
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = sub nsw i32 %i.au, %i.ax
  store i32 %i.ay, ptr %.021.prol, align 4, !tbaa !40
  %i.az = add nsw i32 %.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader51
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader51 ], [ %i.az, %.lr.ph.prol ]
  %.01931.unr = phi i32 [ %.01931.ph, %.lr.ph.preheader51 ], [ %i.au, %.lr.ph.prol ]
  %.pn2630.unr = phi ptr [ %.pn2630.ph, %.lr.ph.preheader51 ], [ %.021.prol, %.lr.ph.prol ]
  %.pn29.unr = phi ptr [ %.pn29.ph, %.lr.ph.preheader51 ], [ %.022.prol, %.lr.ph.prol ]
  %.pn2528.unr = phi ptr [ %.pn2528.ph, %.lr.ph.preheader51 ], [ %.023.prol, %.lr.ph.prol ]
  %i.ba = icmp eq i32 %.ph, 1
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bb = phi i32 [ %i.bq, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.01931 = phi i32 [ %i.bl, %.lr.ph ], [ %.01931.unr, %.lr.ph.prol.loopexit ]
  %.pn2630 = phi ptr [ %.021.1, %.lr.ph ], [ %.pn2630.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn29 = phi ptr [ %.022.1, %.lr.ph ], [ %.pn29.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.pn2528 = phi ptr [ %.023.1, %.lr.ph ], [ %.pn2528.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.021 = getelementptr inbounds nuw i8, ptr %.pn2630, i64 4
  %.023 = getelementptr inbounds nuw i8, ptr %.pn2528, i64 1
  %.022 = getelementptr inbounds nuw i8, ptr %.pn29, i64 1
  %i.bc = load i8, ptr %.022, align 1, !tbaa !32
  %i.bd = load i8, ptr %.023, align 1, !tbaa !32
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = zext i8 %i.bc to i32
  %i.bg = add nuw nsw i32 %.01931, %i.bf
  %i.bh = lshr i32 %i.bg, 1
  %i.bi = sub nsw i32 %i.be, %i.bh
  store i32 %i.bi, ptr %.021, align 4, !tbaa !40
  %.021.1 = getelementptr inbounds nuw i8, ptr %.pn2630, i64 8 ; 2 uses
  %.023.1 = getelementptr inbounds nuw i8, ptr %.pn2528, i64 2 ; 2 uses
  %.022.1 = getelementptr inbounds nuw i8, ptr %.pn29, i64 2 ; 2 uses
  %i.bj = load i8, ptr %.022.1, align 1, !tbaa !32
  %i.bk = load i8, ptr %.023.1, align 1, !tbaa !32
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = zext i8 %i.bj to i32
  %i.bn = add nuw nsw i32 %i.be, %i.bm
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = sub nsw i32 %i.bl, %i.bo
  store i32 %i.bp, ptr %.021.1, align 4, !tbaa !40
  %i.bq = add i32 %i.bb, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bq, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !38
  %.not24 = icmp eq i32 %i.bs, 0
  br i1 %.not24, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bu = sext i32 %1 to i64                      ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !40
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !40
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bz = load i32, ptr %i.br, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !39
  %i.cc = udiv i32 %i.bz, %i.cb
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bu
  store ptr @jpeg_difference_first_row, ptr %i.ce, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS20jpeg_destination_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"p1 _ZTS16jpeg_comp_master", !8, i64 0}
!16 = !{!"p1 _ZTS22jpeg_c_main_controller", !8, i64 0}
!17 = !{!"p1 _ZTS22jpeg_c_prep_controller", !8, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_coef_controller", !8, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_writer", !8, i64 0}
!20 = !{!"p1 _ZTS20jpeg_color_converter", !8, i64 0}
!21 = !{!"p1 _ZTS16jpeg_downsampler", !8, i64 0}
!22 = !{!"p1 _ZTS16jpeg_forward_dct", !8, i64 0}
!23 = !{!"p1 _ZTS20jpeg_entropy_encoder", !8, i64 0}
!24 = !{!"jpeg_compress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !13, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !8, i64 88, !4, i64 96, !4, i64 128, !4, i64 160, !4, i64 192, !4, i64 208, !4, i64 224, !5, i64 240, !8, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !4, i64 292, !4, i64 293, !4, i64 294, !14, i64 296, !14, i64 298, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !4, i64 328, !5, i64 360, !5, i64 364, !5, i64 368, !4, i64 372, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !15, i64 432, !16, i64 440, !17, i64 448, !18, i64 456, !19, i64 464, !20, i64 472, !21, i64 480, !22, i64 488, !23, i64 496, !8, i64 504, !5, i64 512}
!25 = !{!24, !5, i64 72}
!26 = !{!24, !9, i64 0}
!27 = !{!"long", !4, i64 0}
!28 = !{!"any p2 pointer", !8, i64 0}
!29 = !{!"p2 omnipotent char", !28, i64 0}
!30 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !27, i64 128, !29, i64 136, !5, i64 144, !29, i64 152, !5, i64 160, !5, i64 164}
!31 = !{!30, !5, i64 40}
!32 = !{!4, !4, i64 0}
!33 = !{!30, !8, i64 0}
!34 = !{!24, !22, i64 488}
end_hunk_1
