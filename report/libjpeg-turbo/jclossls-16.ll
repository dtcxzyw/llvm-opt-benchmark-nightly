Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jclossls-16?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @j16init_lossless_compressor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, -17
  %or.cond = icmp ult i32 %i.c, -4
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
  store i32 127, ptr %i.l, align 8, !tbaa !31
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
iter.check:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 7 uses
  %i.c = add i32 %3, -1                           ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 3
  %i.f = ptrtoaddr ptr %1 to i64
  %i.g = ptrtoaddr ptr %2 to i64
  %i.h = sub i64 %i.f, %i.g
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i32 %i.c, 15
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 8589934576               ; 5 uses
  %i.j = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %i.m = trunc i64 %n.vec to i32
  %i.n = sub i32 %3, %i.m
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.o  ; 2 uses
  %next.gep6 = getelementptr i8, ptr %2, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !43
  %wide.load7 = load <8 x i16>, ptr %i.p, align 2, !tbaa !43
  %i.q = zext <8 x i16> %wide.load to <8 x i32>
  %i.r = zext <8 x i16> %wide.load7 to <8 x i32>
  %i.s = lshr <8 x i32> %i.q, %broadcast.splat
  %i.t = lshr <8 x i32> %i.r, %broadcast.splat
  %i.u = trunc nuw <8 x i32> %i.s to <8 x i16>
  %i.v = trunc nuw <8 x i32> %i.t to <8 x i16>
  %i.w = getelementptr i8, ptr %next.gep6, i64 16
  store <8 x i16> %i.u, ptr %next.gep6, align 2, !tbaa !43
  store <8 x i16> %i.v, ptr %i.w, align 2, !tbaa !43
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.e, 8589934588             ; 4 uses
  %i.y = shl nuw nsw i64 %n.vec10, 1              ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = getelementptr i8, ptr %2, i64 %i.y
  %i.ab = trunc i64 %n.vec10 to i32
  %i.ac = sub i32 %3, %i.ab
  %broadcast.splatinsert11 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat12 = shufflevector <4 x i32> %broadcast.splatinsert11, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = shl i64 %index13, 1                     ; 2 uses
  %next.gep14 = getelementptr i8, ptr %1, i64 %i.ad
  %next.gep15 = getelementptr i8, ptr %2, i64 %i.ad
  %wide.load16 = load <4 x i16>, ptr %next.gep14, align 2, !tbaa !43
  %i.ae = zext <4 x i16> %wide.load16 to <4 x i32>
  %i.af = lshr <4 x i32> %i.ae, %broadcast.splat12
  %i.ag = trunc nuw <4 x i32> %i.af to <4 x i16>
  store <4 x i16> %i.ag, ptr %next.gep15, align 2, !tbaa !43
  %index.next17 = add nuw i64 %index13, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next17, %n.vec10
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.e, %n.vec10
  br i1 %cmp.n18, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04.ph = phi ptr [ %1, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 2 uses
  %.03.ph = phi ptr [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %3, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ] ; 4 uses
  %i.ai = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.04.prol = phi ptr [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.04.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03.prol = phi ptr [ %i.ao, %vec.epilog.scalar.ph.prol ], [ %.03.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.ap, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.04.prol, i64 2 ; 2 uses
  %i.ak = load i16, ptr %.04.prol, align 2, !tbaa !43
  %i.al = zext i16 %i.ak to i32
  %i.am = lshr i32 %i.al, %i.b
  %i.an = trunc nuw i32 %i.am to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %.03.prol, i64 2 ; 2 uses
  store i16 %i.an, ptr %.03.prol, align 2, !tbaa !43
  %i.ap = add i32 %.0.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !55

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.04.unr = phi ptr [ %.04.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %.03.unr = phi ptr [ %.03.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ap, %vec.epilog.scalar.ph.prol ]
  %i.aq = icmp ult i32 %i.ai, 3
  br i1 %i.aq, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.04 = phi ptr [ %i.bj, %vec.epilog.scalar.ph ], [ %.04.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.03 = phi ptr [ %i.bo, %vec.epilog.scalar.ph ], [ %.03.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %i.bp, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.04, i64 2
  %i.as = load i16, ptr %.04, align 2, !tbaa !43
  %i.at = zext i16 %i.as to i32
  %i.au = lshr i32 %i.at, %i.b
  %i.av = trunc nuw i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %.03, i64 2
  store i16 %i.av, ptr %.03, align 2, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %.04, i64 4
  %i.ay = load i16, ptr %i.ar, align 2, !tbaa !43
  %i.az = zext i16 %i.ay to i32
  %i.ba = lshr i32 %i.az, %i.b
  %i.bb = trunc nuw i32 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %.03, i64 4
  store i16 %i.bb, ptr %i.aw, align 2, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %.04, i64 6
  %i.be = load i16, ptr %i.ax, align 2, !tbaa !43
  %i.bf = zext i16 %i.be to i32
  %i.bg = lshr i32 %i.bf, %i.b
  %i.bh = trunc nuw i32 %i.bg to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %.03, i64 6
  store i16 %i.bh, ptr %i.bc, align 2, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %.04, i64 8
  %i.bk = load i16, ptr %i.bd, align 2, !tbaa !43
  %i.bl = zext i16 %i.bk to i32
  %i.bm = lshr i32 %i.bl, %i.b
  %i.bn = trunc nuw i32 %i.bm to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %.03, i64 8
  store i16 %i.bn, ptr %i.bi, align 2, !tbaa !43
  %i.bp = add i32 %.0, -4                         ; 2 uses
  %.not.3 = icmp eq i32 %i.bp, 0
  br i1 %.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !56

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @noscale(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = shl nuw nsw i64 %i.a, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 2 %1, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @jpeg_difference_first_row(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 9 uses
  %i.c = load i16, ptr %2, align 2, !tbaa !43
  %i.d = zext i16 %i.c to i32                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = xor i32 %i.h, -1
  %i.j = add i32 %i.f, %i.i
  %.neg = shl nsw i32 -1, %i.j
  %i.k = add nsw i32 %.neg, %i.d
  store i32 %i.k, ptr %4, align 4, !tbaa !40
  %i.l = add i32 %5, -1                           ; 5 uses
  %.not51 = icmp eq i32 %i.l, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %.lr.ph.preheader59, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.m, 4294967288               ; 5 uses
  %i.n = trunc nuw i64 %n.vec to i32
  %i.o = sub i32 %i.l, %i.n
  %i.p = shl nuw nsw i64 %n.vec, 2
  %i.q = getelementptr i8, ptr %4, i64 %i.p
  %i.r = shl nuw nsw i64 %n.vec, 1
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.d, i64 3
  br label %vector.body

end_hunk_0
