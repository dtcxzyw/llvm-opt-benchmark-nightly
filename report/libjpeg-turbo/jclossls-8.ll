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
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %4 = add i32 %3, -1
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %6     ; 2 uses
  %scevgep5 = getelementptr i8, ptr %1, i64 %6
  %scevgep6 = getelementptr i8, ptr %0, i64 428
  %bound0 = icmp ult ptr %2, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound07 = icmp ult ptr %2, %scevgep6
  %bound18 = icmp ult ptr %i.a, %scevgep
  %found.conflict9 = and i1 %bound07, %bound18
  %conflict.rdx = or i1 %found.conflict, %found.conflict9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 8589934584               ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 %n.vec
  %i.f = getelementptr i8, ptr %2, i64 %n.vec
  %i.g = trunc i64 %n.vec to i32
  %i.h = sub i32 %3, %i.g
  %i.i = load i32, ptr %i.a, align 8, !tbaa !37, !alias.scope !60
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep10 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !32, !alias.scope !61
  %wide.load11 = load <4 x i8>, ptr %i.j, align 1, !tbaa !32, !alias.scope !61
  %i.k = zext <4 x i8> %wide.load to <4 x i32>
  %i.l = zext <4 x i8> %wide.load11 to <4 x i32>
  %i.m = lshr <4 x i32> %i.k, %broadcast.splat
  %i.n = lshr <4 x i32> %i.l, %broadcast.splat
  %i.o = trunc nuw <4 x i32> %i.m to <4 x i8>
  %i.p = trunc nuw <4 x i32> %i.n to <4 x i8>
  %i.q = getelementptr i8, ptr %next.gep10, i64 4
  store <4 x i8> %i.o, ptr %next.gep10, align 1, !tbaa !32, !alias.scope !62, !noalias !63
  store <4 x i8> %i.p, ptr %i.q, align 1, !tbaa !32, !alias.scope !62, !noalias !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.04.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.a ], [ %i.e, %middle.block ] ; 2 uses
  %.03.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.a ], [ %i.f, %middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %3, %vector.memcheck ], [ %3, %bb.a ], [ %i.h, %middle.block ] ; 4 uses
  %i.s = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.04.prol = phi ptr [ %i.t, %scalar.ph.prol ], [ %.04.ph, %scalar.ph.preheader ] ; 2 uses
  %.03.prol = phi ptr [ %i.z, %scalar.ph.prol ], [ %.03.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.aa, %scalar.ph.prol ], [ %.0.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.04.prol, i64 1 ; 2 uses
  %i.u = load i8, ptr %.04.prol, align 1, !tbaa !32
  %i.v = zext i8 %i.u to i32
  %i.w = load i32, ptr %i.a, align 8, !tbaa !37
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.03.prol, i64 1 ; 2 uses
  store i8 %i.y, ptr %.03.prol, align 1, !tbaa !32
  %i.aa = add i32 %.0.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !58

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.04.unr = phi ptr [ %.04.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %.03.unr = phi ptr [ %.03.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = icmp ult i32 %i.s, 3
  br i1 %i.ab, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04 = phi ptr [ %i.ax, %scalar.ph ], [ %.04.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03 = phi ptr [ %i.bd, %scalar.ph ], [ %.03.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %i.be, %scalar.ph ], [ %.0.unr, %scalar.ph.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.04, i64 1
  %i.ad = load i8, ptr %.04, align 1, !tbaa !32
  %i.ae = zext i8 %i.ad to i32
  %i.af = load i32, ptr %i.a, align 8, !tbaa !37
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc nuw i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.03, i64 1
  store i8 %i.ah, ptr %.03, align 1, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %.04, i64 2
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !32
  %i.al = zext i8 %i.ak to i32
  %i.am = load i32, ptr %i.a, align 8, !tbaa !37
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.03, i64 2
  store i8 %i.ao, ptr %i.ai, align 1, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %.04, i64 3
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !32
  %i.as = zext i8 %i.ar to i32
  %i.at = load i32, ptr %i.a, align 8, !tbaa !37
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.03, i64 3
  store i8 %i.av, ptr %i.ap, align 1, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %.04, i64 4
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !32
  %i.az = zext i8 %i.ay to i32
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !37
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.03, i64 4
  store i8 %i.bc, ptr %i.aw, align 1, !tbaa !32
  %i.be = add i32 %.0, -4                         ; 2 uses
  %.not.3 = icmp eq i32 %i.be, 0
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
  %scevgep = getelementptr i8, ptr %4, i64 4
  %i.n = add i32 %5, -2
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = getelementptr i8, ptr %4, i64 %i.p
  %scevgep55 = getelementptr i8, ptr %i.q, i64 8
  %scevgep56 = getelementptr i8, ptr %2, i64 1
  %i.r = getelementptr i8, ptr %2, i64 %i.o
  %scevgep57 = getelementptr i8, ptr %i.r, i64 2
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep56, %scevgep55
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4294967288               ; 5 uses
  %i.s = trunc nuw i64 %n.vec to i32
  %i.t = sub i32 %i.l, %i.s
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
  %next.gep58 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep58, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep58, i64 5
  %wide.load = load <4 x i8>, ptr %i.z, align 1, !tbaa !32, !alias.scope !70
  %wide.load59 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !32, !alias.scope !70
  %i.ab = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.ac = zext <4 x i8> %wide.load59 to <4 x i32> ; 4 uses
  %i.ad = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ab, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ae = shufflevector <4 x i32> %i.ab, <4 x i32> %i.ac, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.af = sub nsw <4 x i32> %i.ab, %i.ad
end_hunk_0
