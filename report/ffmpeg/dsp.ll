Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsp?download=true
inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 173
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 304
begin_hunk_0_@pred_dc_12:bb.a
  %i.aq = and i32 %i.ap, 65535
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = mul nuw i64 %i.ar, 281479271743489      ; 2 uses
  %or.cond37 = and i1 %i.r, %i.e
  br i1 %or.cond37, label %.preheader.preheader, label %._crit_edge35.split

.preheader.preheader:                             ; preds = %pred_dc_val_12.exit
  %i.at = add nsw i32 %3, -1
  %i.au = lshr i32 %i.at, 2
  %narrow = add nuw nsw i32 %i.au, 1
  %i.av = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check70 = icmp ult i32 %3, 13
  %n.vec72 = and i64 %i.av, 2147483644            ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec72, 3
  %i.ax = trunc nuw nsw i64 %n.vec72 to i32
  %i.ay = shl i32 %i.ax, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n77 = icmp eq i64 %n.vec72, %i.av
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01934 = phi ptr [ %i.bg, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02033 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.preheader
  %i.az = getelementptr i8, ptr %.01934, i64 %i.aw
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next75, %vector.body73 ] ; 2 uses
  %i.ba = shl i64 %index74, 3
  %next.gep = getelementptr i8, ptr %.01934, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 1, !tbaa !40
  store <2 x i64> %broadcast.splat, ptr %i.bb, align 1, !tbaa !40
  %index.next75 = add nuw i64 %index74, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.bc, label %middle.block76, label %vector.body73, !llvm.loop !756

middle.block76:                                   ; preds = %vector.body73
  br i1 %cmp.n77, label %._crit_edge, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.preheader, %middle.block76
  %.031.ph = phi ptr [ %.01934, %.preheader ], [ %i.az, %middle.block76 ]
  %.02130.ph = phi i32 [ 0, %.preheader ], [ %i.ay, %middle.block76 ]
  br label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %.031 = phi ptr [ %i.bd, %scalar.ph69 ], [ %.031.ph, %scalar.ph69.preheader ] ; 2 uses
  %.02130 = phi i32 [ %i.be, %scalar.ph69 ], [ %.02130.ph, %scalar.ph69.preheader ]
  store i64 %i.as, ptr %.031, align 1, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.be = add nuw nsw i32 %.02130, 4              ; 2 uses
  %i.bf = icmp slt i32 %i.be, %3
  br i1 %i.bf, label %scalar.ph69, label %._crit_edge, !llvm.loop !757

._crit_edge:                                      ; preds = %scalar.ph69, %middle.block76
  %i.bg = getelementptr inbounds [2 x i8], ptr %.01934, i64 %5
  %i.bh = add nuw nsw i32 %.02033, 1              ; 2 uses
  %exitcond45.not = icmp eq i32 %i.bh, %4
  br i1 %exitcond45.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !758

._crit_edge35.split:                              ; preds = %._crit_edge, %pred_dc_val_12.exit
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_v_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #6 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.d = icmp ult i32 %3, 4
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %3, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0910.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.0910.epil = phi ptr [ %.0910.epil.init, %.epil.preheader ], [ %i.e, %bb.b ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0910.epil, ptr align 2 %1, i64 %i.c, i1 false)
  %i.e = getelementptr inbounds [2 x i8], ptr %.0910.epil, i64 %4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !759

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.0910 = phi ptr [ %0, %.lr.ph.new ], [ %i.i, %bb.c ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0910, ptr align 2 %1, i64 %i.c, i1 false)
  %i.f = getelementptr inbounds [2 x i8], ptr %.0910, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.f, ptr align 2 %1, i64 %i.c, i1 false)
  %i.g = getelementptr inbounds [2 x i8], ptr %i.f, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.g, ptr align 2 %1, i64 %i.c, i1 false)
  %i.h = getelementptr inbounds [2 x i8], ptr %i.g, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.h, ptr align 2 %1, i64 %i.c, i1 false)
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %4 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !760
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_h_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge19.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = lshr i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 13
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %i.g = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.lr.ph

._crit_edge19.split:                              ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv21 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next22, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv21
  %i.i = load i16, ptr %i.h, align 2, !tbaa !34
  %i.j = zext i16 %i.i to i64
  %i.k = mul nuw i64 %i.j, 281479271743489        ; 2 uses
  %i.l = mul nsw i64 %4, %indvars.iv21
  %i.m = getelementptr [2 x i8], ptr %0, i64 %i.l ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl i64 %index, 3
  %i.n = getelementptr i8, ptr %i.m, i64 %.idx    ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.n, align 1, !tbaa !40
  store <2 x i64> %broadcast.splat, ptr %i.o, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !761

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %i.g, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge19.split, label %.lr.ph, !llvm.loop !762

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.q = getelementptr [2 x i8], ptr %i.m, i64 %indvars.iv
  store i64 %i.k, ptr %i.q, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.r, label %scalar.ph, label %._crit_edge, !llvm.loop !763
}

; Function Attrs: nounwind uwtable
define internal void @pred_angular_v_12(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = add nsw i32 %8, 1
  %narrow = xor i32 %8, -1
  %i.d = sext i32 %narrow to i64                  ; 5 uses
  %i.e = getelementptr inbounds [2 x i8], ptr %1, i64 %i.d ; 3 uses
  %i.f = tail call i32 @ff_vvc_intra_pred_angle_derive(i32 noundef %7) #14 ; 3 uses
  %i.g = mul nsw i32 %i.f, %i.c
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %.not107 = icmp eq i32 %10, 0                   ; 2 uses
  br i1 %.not107, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @ff_vvc_intra_inv_angle_derive(i32 noundef %i.f) #14
  %i.i = tail call i32 @ff_vvc_nscale_derive(i32 noundef %3, i32 noundef %4, i32 noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0106 = phi i32 [ %i.i, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.0105 = phi i32 [ %i.h, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.j = icmp sgt i32 %4, 0
  br i1 %i.j, label %.lr.ph133, label %._crit_edge

.lr.ph133:                                        ; preds = %bb.c
  %i.k = icmp ne i32 %9, 0
  %or.cond = and i1 %.not, %i.k
  %i.l = icmp sgt i32 %3, 0                       ; 3 uses
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [128 x i8], ptr @ff_vvc_intra_luma_filter, i64 %i.m
  %i.o = add nsw i32 %.0105, 256
  %i.p = shl i32 3, %.0106
  %i.q = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.p) ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  %wide.trip.count157 = zext nneg i32 %4 to i64   ; 3 uses
  %wide.trip.count = zext i32 %3 to i64           ; 18 uses
  %wide.trip.count142 = zext nneg i32 %3 to i64
  %wide.trip.count147 = zext nneg i32 %3 to i64
  %brmerge = select i1 %.not107, i1 true, i1 %i.r
  %wide.trip.count152 = zext nneg i32 %i.q to i64
  %11 = add nsw i64 %i.d, %wide.trip.count
  %i.s = add nuw i64 %wide.trip.count157, 9223372036854775807
  %i.t = mul i64 %5, %i.s
  %i.u = add i64 %i.t, %wide.trip.count
  %i.v = shl i64 %i.u, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.v
  %12 = shl nsw i64 %i.d, 1
  %13 = add nsw i64 %i.d, %wide.trip.count
  %14 = shl nsw i64 %13, 1
  %i.w = add nuw i64 %wide.trip.count157, 9223372036854775807
  %i.x = mul i64 %5, %i.w
  %i.y = add i64 %i.x, %wide.trip.count
  %i.z = shl i64 %i.y, 1
  %scevgep186 = getelementptr i8, ptr %0, i64 %i.z
  %i.aa = shl i64 %5, 1
  %i.ab = add i64 %i.b, -2
  %min.iters.check210 = icmp ult i32 %3, 4
  %min.iters.check212 = icmp ult i32 %3, 16
  %i.ac = and i64 %wide.trip.count, 12
  %n.vec214 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n221 = icmp eq i64 %n.vec214, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  %n.vec222 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n226 = icmp eq i64 %n.vec222, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check188 = icmp ult i32 %3, 8
  %15 = getelementptr i8, ptr %1, i64 %12
  %16 = getelementptr i8, ptr %15, i64 2
  %17 = getelementptr i8, ptr %1, i64 %14
  %18 = getelementptr i8, ptr %17, i64 4
  %.mask = and i64 %5, 4611686018427387904
  %stride.check193 = icmp ne i64 %.mask, 0
  %n.vec195 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n206 = icmp eq i64 %n.vec195, %wide.trip.count
  %xtraiter231 = and i64 %wide.trip.count, 1
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  %i.ad = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %3, 8
  %.mask228 = and i64 %5, 4611686018427387904
  %stride.check = icmp ne i64 %.mask228, 0
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph133, %.loopexit
  %indvars.iv154 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next155, %.loopexit ] ; 7 uses
  %.0100132 = phi i32 [ %i.g, %.lr.ph133 ], [ %i.go, %.loopexit ] ; 3 uses
  %i.ae = ashr i32 %.0100132, 5
  %i.af = add nsw i32 %i.ae, %8                   ; 3 uses
  %i.ag = and i32 %.0100132, 31                   ; 7 uses
  %.not108 = icmp ne i32 %i.ag, 0
  %or.cond109 = or i1 %or.cond, %.not108
  br i1 %or.cond109, label %bb.e, label %.preheader115

.preheader115:                                    ; preds = %bb.d
  br i1 %i.l, label %iter.check, label %.loopexit113

iter.check:                                       ; preds = %.preheader115
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.e, i64 %i.ah ; 7 uses
  %i.ai = mul nsw i64 %5, %indvars.iv154
  %i.aj = getelementptr [2 x i8], ptr %0, i64 %i.ai ; 7 uses
  br i1 %min.iters.check210, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check
  %i.ak = mul i64 %indvars.iv154, %i.aa
  %i.al = add i64 %i.ab, %i.ak
  %i.am = add nsw i64 %i.d, %i.ah
  %i.an = shl nsw i64 %i.am, 1
  %i.ao = add i64 %i.an, %i.a
  %i.ap = sub i64 %i.ao, %i.al
  %diff.check = icmp ugt i64 %i.ap, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck211
  br i1 %min.iters.check212, label %vec.epilog.ph, label %vector.body215

vector.body215:                                   ; preds = %vector.main.loop.iter.check, %vector.body215
  %index216 = phi i64 [ %index.next219, %vector.body215 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.aq = getelementptr [2 x i8], ptr %invariant.gep, i64 %index216 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  %wide.load217 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !34
  %wide.load218 = load <8 x i16>, ptr %i.as, align 2, !tbaa !34
  %i.at = getelementptr [2 x i8], ptr %i.aj, i64 %index216 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store <8 x i16> %wide.load217, ptr %i.at, align 2, !tbaa !34
  store <8 x i16> %wide.load218, ptr %i.au, align 2, !tbaa !34
  %index.next219 = add nuw i64 %index216, 16      ; 2 uses
  %i.av = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.av, label %middle.block220, label %vector.body215, !llvm.loop !764

middle.block220:                                  ; preds = %vector.body215
  br i1 %cmp.n221, label %.loopexit113, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block220
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec214, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next225, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep, i64 %index223
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %wide.load224 = load <4 x i16>, ptr %i.ax, align 2, !tbaa !34
  %i.ay = getelementptr [2 x i8], ptr %i.aj, i64 %index223
  store <4 x i16> %wide.load224, ptr %i.ay, align 2, !tbaa !34
  %index.next225 = add nuw i64 %index223, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next225, %n.vec222
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !765

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n226, label %.loopexit113, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck211, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck211 ], [ %n.vec214, %vec.epilog.iter.check ], [ %n.vec222, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ba = getelementptr inbounds nuw i8, ptr %gep.prol, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !34
  %i.bc = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv.prol
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !766

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit113, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !34
  %i.bh = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bi = getelementptr inbounds nuw i8, ptr %gep.1, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !34
  %i.bk = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv.next
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bl = getelementptr inbounds nuw i8, ptr %gep.2, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !34
  %i.bn = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv.next.1
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !34
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bo = getelementptr inbounds nuw i8, ptr %gep.3, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !34
  %i.bq = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv.next.2
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !34
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit113, label %vec.epilog.scalar.ph, !llvm.loop !767

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  br i1 %i.l, label %.lr.ph119, label %.loopexit113

.lr.ph119:                                        ; preds = %.preheader
  %i.br = sext i32 %i.af to i64                   ; 2 uses
  %invariant.gep120 = getelementptr [2 x i8], ptr %i.e, i64 %i.br ; 4 uses
  %i.bs = sub nuw nsw i32 32, %i.ag               ; 4 uses
  %i.bt = mul nsw i64 %5, %indvars.iv154
  %i.bu = getelementptr [2 x i8], ptr %0, i64 %i.bt ; 4 uses
  br i1 %min.iters.check188, label %scalar.ph187.preheader, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph119
  %i.bv = shl nsw i64 %i.br, 1                    ; 2 uses
  %i.bw = getelementptr i8, ptr %16, i64 %i.bv
  %i.bx = getelementptr i8, ptr %18, i64 %i.bv
  %bound0190 = icmp ult ptr %0, %i.bx
  %bound1191 = icmp ult ptr %i.bw, %scevgep186
  %found.conflict192 = and i1 %bound0190, %bound1191
  %i.by = or i1 %found.conflict192, %stride.check193
  br i1 %i.by, label %scalar.ph187.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck189
  %broadcast.splatinsert196 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat197 = shufflevector <8 x i32> %broadcast.splatinsert196, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert198 = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat199 = shufflevector <8 x i32> %broadcast.splatinsert198, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph194
  %index201 = phi i64 [ 0, %vector.ph194 ], [ %index.next204, %vector.body200 ] ; 3 uses
  %i.bz = getelementptr [2 x i8], ptr %invariant.gep120, i64 %index201 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %wide.load202 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !34, !alias.scope !780
  %i.cb = zext <8 x i16> %wide.load202 to <8 x i32>
  %i.cc = mul nuw nsw <8 x i32> %broadcast.splat197, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %wide.load203 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !34, !alias.scope !780
  %i.ce = zext <8 x i16> %wide.load203 to <8 x i32>
  %i.cf = mul nuw nsw <8 x i32> %broadcast.splat199, %i.ce
  %i.cg = add nuw nsw <8 x i32> %i.cc, splat (i32 16)
  %i.ch = add nuw nsw <8 x i32> %i.cg, %i.cf
  %i.ci = lshr <8 x i32> %i.ch, splat (i32 5)
  %i.cj = trunc <8 x i32> %i.ci to <8 x i16>
  %i.ck = getelementptr [2 x i8], ptr %i.bu, i64 %index201
  store <8 x i16> %i.cj, ptr %i.ck, align 2, !tbaa !34, !alias.scope !781, !noalias !780
  %index.next204 = add nuw i64 %index201, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.cl, label %middle.block205, label %vector.body200, !llvm.loop !771

middle.block205:                                  ; preds = %vector.body200
  br i1 %cmp.n206, label %.loopexit113, label %scalar.ph187.preheader

scalar.ph187.preheader:                           ; preds = %vector.memcheck189, %.lr.ph119, %middle.block205
  %indvars.iv139.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph119 ], [ %n.vec195, %middle.block205 ] ; 5 uses
  br i1 %lcmp.mod232.not, label %scalar.ph187.prol.loopexit, label %scalar.ph187.prol

scalar.ph187.prol:                                ; preds = %scalar.ph187.preheader
  %gep121.prol = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv139.ph ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %gep121.prol, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !34
  %i.co = zext i16 %i.cn to i32
  %i.cp = mul nuw nsw i32 %i.bs, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %gep121.prol, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !34
  %i.cs = zext i16 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.ag, %i.cs
  %i.cu = add nuw nsw i32 %i.cp, 16
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = lshr i32 %i.cv, 5
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv139.ph
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !34
  %indvars.iv.next140.prol = or disjoint i64 %indvars.iv139.ph, 1
  br label %scalar.ph187.prol.loopexit

scalar.ph187.prol.loopexit:                       ; preds = %scalar.ph187.prol, %scalar.ph187.preheader
  %indvars.iv139.unr = phi i64 [ %indvars.iv139.ph, %scalar.ph187.preheader ], [ %indvars.iv.next140.prol, %scalar.ph187.prol ]
  %i.cz = icmp eq i64 %indvars.iv139.ph, %i.ad
  br i1 %i.cz, label %.loopexit113, label %scalar.ph187

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %.lr.ph123, label %.loopexit113

.lr.ph123:                                        ; preds = %bb.f
  %i.da = zext nneg i32 %i.ag to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.da
  %i.dc = sext i32 %i.af to i64                   ; 2 uses
  %invariant.gep124 = getelementptr [2 x i8], ptr %i.e, i64 %i.dc ; 3 uses
  %i.dd = load <4 x i8>, ptr %i.db, align 4, !tbaa !40
  %i.de = sext <4 x i8> %i.dd to <4 x i32>        ; 5 uses
  %i.df = mul nsw i64 %5, %indvars.iv154
  %i.dg = getelementptr [2 x i8], ptr %0, i64 %i.df ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %.reass = add nsw i64 %11, %i.dc
  %i.dh = shl nsw i64 %.reass, 1
  %i.di = getelementptr i8, ptr %1, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 6
  %bound0 = icmp ult ptr %0, %i.dj
  %bound1 = icmp ult ptr %invariant.gep124, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dk = or i1 %found.conflict, %stride.check
  br i1 %i.dk, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat168 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat170 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat172 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr [2 x i8], ptr %invariant.gep124, i64 %index ; 4 uses
  %wide.load = load <8 x i16>, ptr %i.dl, align 2, !tbaa !34, !alias.scope !782
  %i.dm = zext <8 x i16> %wide.load to <8 x i32>
  %i.dn = mul nsw <8 x i32> %broadcast.splat, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %wide.load173 = load <8 x i16>, ptr %i.do, align 2, !tbaa !34, !alias.scope !782
  %i.dp = zext <8 x i16> %wide.load173 to <8 x i32>
  %i.dq = mul nsw <8 x i32> %broadcast.splat168, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %wide.load174 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !34, !alias.scope !782
  %i.ds = zext <8 x i16> %wide.load174 to <8 x i32>
  %i.dt = mul nsw <8 x i32> %broadcast.splat170, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 6
  %wide.load175 = load <8 x i16>, ptr %i.du, align 2, !tbaa !34, !alias.scope !782
  %i.dv = zext <8 x i16> %wide.load175 to <8 x i32>
  %i.dw = mul nsw <8 x i32> %broadcast.splat172, %i.dv
  %i.dx = add nsw <8 x i32> %i.dn, splat (i32 32)
  %i.dy = add nsw <8 x i32> %i.dx, %i.dq
  %i.dz = add nsw <8 x i32> %i.dy, %i.dt
  %i.ea = add nsw <8 x i32> %i.dz, %i.dw
  %i.eb = ashr <8 x i32> %i.ea, splat (i32 6)
  %i.ec = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eb, <8 x i32> zeroinitializer)
  %i.ed = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ec, <8 x i32> splat (i32 4095))
  %i.ee = trunc nuw nsw <8 x i32> %i.ed to <8 x i16>
  %i.ef = getelementptr [2 x i8], ptr %i.dg, i64 %index
  store <8 x i16> %i.ee, ptr %i.ef, align 2, !tbaa !34, !alias.scope !783, !noalias !782
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !775

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit113, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph123 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %scalar.ph ], [ %indvars.iv144.ph, %scalar.ph.preheader ] ; 3 uses
  %gep125 = getelementptr [2 x i8], ptr %invariant.gep124, i64 %indvars.iv144
  %i.eh = load <4 x i16>, ptr %gep125, align 2, !tbaa !34
  %i.ei = zext <4 x i16> %i.eh to <4 x i32>
  %i.ej = mul nsw <4 x i32> %i.de, %i.ei
  %i.ek = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ej)
  %op.rdx = add i32 %i.ek, 32
  %i.el = ashr i32 %op.rdx, 6
  %i.em = tail call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 4095)
  %i.eo = trunc nuw nsw i32 %i.en to i16
  %i.ep = getelementptr [2 x i8], ptr %i.dg, i64 %indvars.iv144
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !34
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.loopexit113, label %scalar.ph, !llvm.loop !776

scalar.ph187:                                     ; preds = %scalar.ph187.prol.loopexit, %scalar.ph187
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %scalar.ph187 ], [ %indvars.iv139.unr, %scalar.ph187.prol.loopexit ] ; 4 uses
  %gep121 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv139 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %gep121, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !34
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw nsw i32 %i.bs, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %gep121, i64 4
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !34
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul nuw nsw i32 %i.ag, %i.ew
  %i.ey = add nuw nsw i32 %i.et, 16
  %i.ez = add nuw nsw i32 %i.ey, %i.ex
  %i.fa = lshr i32 %i.ez, 5
  %i.fb = trunc i32 %i.fa to i16
  %i.fc = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv139
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !34
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %gep121.1 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv.next140 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep121.1, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !34
  %i.ff = zext i16 %i.fe to i32
  %i.fg = mul nuw nsw i32 %i.bs, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %gep121.1, i64 4
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !34
  %i.fj = zext i16 %i.fi to i32
  %i.fk = mul nuw nsw i32 %i.ag, %i.fj
  %i.fl = add nuw nsw i32 %i.fg, 16
  %i.fm = add nuw nsw i32 %i.fl, %i.fk
  %i.fn = lshr i32 %i.fm, 5
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.next140
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !34
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.not.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.not.1, label %.loopexit113, label %scalar.ph187, !llvm.loop !777

.loopexit113:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %scalar.ph187.prol.loopexit, %scalar.ph187, %scalar.ph, %middle.block220, %vec.epilog.middle.block, %middle.block205, %middle.block, %.preheader115, %.preheader, %bb.f
  br i1 %brmerge, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.loopexit113
  %i.fq = mul nsw i64 %5, %indvars.iv154
  %i.fr = getelementptr [2 x i8], ptr %0, i64 %i.fq
  %i.fs = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph128, %bb.g
  %indvars.iv149 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next150, %bb.g ] ; 3 uses
  %.099126 = phi i32 [ %i.o, %.lr.ph128 ], [ %i.gn, %bb.g ] ; 2 uses
  %i.ft = ashr i32 %.099126, 9
  %i.fu = add nsw i32 %i.ft, %i.fs
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !34
  %i.fy = getelementptr [2 x i8], ptr %i.fr, i64 %indvars.iv149 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !34
  %indvars.iv149.tr = trunc nuw i64 %indvars.iv149 to i32
  %i.ga = shl nuw i32 %indvars.iv149.tr, 1
  %i.gb = ashr i32 %i.ga, %.0106
  %i.gc = lshr i32 32, %i.gb
  %i.gd = zext i16 %i.fz to i32                   ; 2 uses
  %i.ge = zext i16 %i.fx to i32
  %i.gf = sub nsw i32 %i.ge, %i.gd
  %i.gg = mul nsw i32 %i.gf, %i.gc
  %i.gh = add nsw i32 %i.gg, 32
  %i.gi = ashr i32 %i.gh, 6
  %i.gj = add nsw i32 %i.gi, %i.gd
  %i.gk = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 0)
  %i.gl = tail call i32 @llvm.umin.i32(i32 %i.gk, i32 4095)
  %i.gm = trunc nuw nsw i32 %i.gl to i16
  store i16 %i.gm, ptr %i.fy, align 2, !tbaa !34
  %i.gn = add nsw i32 %.099126, %.0105
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.loopexit, label %bb.g, !llvm.loop !778

.loopexit:                                        ; preds = %bb.g, %.loopexit113
  %i.go = add nsw i32 %.0100132, %i.f
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge, label %bb.d, !llvm.loop !779
}

; Function Attrs: nounwind uwtable
define internal void @pred_angular_h_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #5 {
bb.a:
  %i.a = add nsw i32 %8, 1
  %narrow = xor i32 %8, -1
  %i.b = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %2, i64 %i.b ; 3 uses
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.d = tail call i32 @ff_vvc_intra_pred_angle_derive(i32 noundef %7) #14 ; 5 uses
  %.not79 = icmp ne i32 %10, 0                    ; 4 uses
  br i1 %.not79, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ff_vvc_intra_inv_angle_derive(i32 noundef %i.d) #14 ; 2 uses
  %i.f = add nsw i32 %i.e, 256
  %i.g = tail call i32 @ff_vvc_nscale_derive(i32 noundef %3, i32 noundef %4, i32 noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.078 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.075 = phi i32 [ %i.f, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.c
  %i.j = mul nsw i32 %i.d, %i.a                   ; 3 uses
  %i.k = icmp sgt i32 %3, 0
  %i.l = icmp ne i32 %9, 0
  %or.cond = and i1 %.not, %i.l                   ; 3 uses
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [128 x i8], ptr @ff_vvc_intra_luma_filter, i64 %i.m ; 2 uses
  br i1 %i.k, label %.lr.ph92.split.us, label %._crit_edge93

.lr.ph92.split.us:                                ; preds = %.lr.ph92
  %i.o = shl i32 3, %.078
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %wide.trip.count125 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count115 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %.not, label %.lr.ph92.split.us.split.us.preheader, label %.lr.ph92.split.us.split

.lr.ph92.split.us.split.us.preheader:             ; preds = %.lr.ph92.split.us
  %wide.trip.count120 = zext nneg i32 %3 to i64
  br label %.lr.ph92.split.us.split.us
end_hunk_0
begin_hunk_1_@pred_dc_10:bb.a
  %i.aq = and i32 %i.ap, 65535
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = mul nuw i64 %i.ar, 281479271743489      ; 2 uses
  %or.cond37 = and i1 %i.r, %i.e
  br i1 %or.cond37, label %.preheader.preheader, label %._crit_edge35.split

.preheader.preheader:                             ; preds = %pred_dc_val_10.exit
  %i.at = add nsw i32 %3, -1
  %i.au = lshr i32 %i.at, 2
  %narrow = add nuw nsw i32 %i.au, 1
  %i.av = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check70 = icmp ult i32 %3, 13
  %n.vec72 = and i64 %i.av, 2147483644            ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec72, 3
  %i.ax = trunc nuw nsw i64 %n.vec72 to i32
  %i.ay = shl i32 %i.ax, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n77 = icmp eq i64 %n.vec72, %i.av
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01934 = phi ptr [ %i.bg, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02033 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.preheader
  %i.az = getelementptr i8, ptr %.01934, i64 %i.aw
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next75, %vector.body73 ] ; 2 uses
  %i.ba = shl i64 %index74, 3
  %next.gep = getelementptr i8, ptr %.01934, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 1, !tbaa !40
  store <2 x i64> %broadcast.splat, ptr %i.bb, align 1, !tbaa !40
  %index.next75 = add nuw i64 %index74, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.bc, label %middle.block76, label %vector.body73, !llvm.loop !1458

middle.block76:                                   ; preds = %vector.body73
  br i1 %cmp.n77, label %._crit_edge, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.preheader, %middle.block76
  %.031.ph = phi ptr [ %.01934, %.preheader ], [ %i.az, %middle.block76 ]
  %.02130.ph = phi i32 [ 0, %.preheader ], [ %i.ay, %middle.block76 ]
  br label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %.031 = phi ptr [ %i.bd, %scalar.ph69 ], [ %.031.ph, %scalar.ph69.preheader ] ; 2 uses
  %.02130 = phi i32 [ %i.be, %scalar.ph69 ], [ %.02130.ph, %scalar.ph69.preheader ]
  store i64 %i.as, ptr %.031, align 1, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.be = add nuw nsw i32 %.02130, 4              ; 2 uses
  %i.bf = icmp slt i32 %i.be, %3
  br i1 %i.bf, label %scalar.ph69, label %._crit_edge, !llvm.loop !1459

._crit_edge:                                      ; preds = %scalar.ph69, %middle.block76
  %i.bg = getelementptr inbounds [2 x i8], ptr %.01934, i64 %5
  %i.bh = add nuw nsw i32 %.02033, 1              ; 2 uses
  %exitcond45.not = icmp eq i32 %i.bh, %4
  br i1 %exitcond45.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !1460

._crit_edge35.split:                              ; preds = %._crit_edge, %pred_dc_val_10.exit
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_v_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #6 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = shl nsw i64 %i.b, 1                      ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.d = icmp ult i32 %3, 4
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %3, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0910.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.0910.epil = phi ptr [ %.0910.epil.init, %.epil.preheader ], [ %i.e, %bb.b ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0910.epil, ptr align 2 %1, i64 %i.c, i1 false)
  %i.e = getelementptr inbounds [2 x i8], ptr %.0910.epil, i64 %4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !1461

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.0910 = phi ptr [ %0, %.lr.ph.new ], [ %i.i, %bb.c ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0910, ptr align 2 %1, i64 %i.c, i1 false)
  %i.f = getelementptr inbounds [2 x i8], ptr %.0910, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.f, ptr align 2 %1, i64 %i.c, i1 false)
  %i.g = getelementptr inbounds [2 x i8], ptr %i.f, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.g, ptr align 2 %1, i64 %i.c, i1 false)
  %i.h = getelementptr inbounds [2 x i8], ptr %i.g, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.h, ptr align 2 %1, i64 %i.c, i1 false)
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %4 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1462
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_h_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge19.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = lshr i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 13
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %i.g = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.lr.ph

._crit_edge19.split:                              ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv21 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next22, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv21
  %i.i = load i16, ptr %i.h, align 2, !tbaa !34
  %i.j = zext i16 %i.i to i64
  %i.k = mul nuw i64 %i.j, 281479271743489        ; 2 uses
  %i.l = mul nsw i64 %4, %indvars.iv21
  %i.m = getelementptr [2 x i8], ptr %0, i64 %i.l ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl i64 %index, 3
  %i.n = getelementptr i8, ptr %i.m, i64 %.idx    ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.n, align 1, !tbaa !40
  store <2 x i64> %broadcast.splat, ptr %i.o, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1463

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %i.g, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge19.split, label %.lr.ph, !llvm.loop !1464

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.q = getelementptr [2 x i8], ptr %i.m, i64 %indvars.iv
  store i64 %i.k, ptr %i.q, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.r, label %scalar.ph, label %._crit_edge, !llvm.loop !1465
}

; Function Attrs: nounwind uwtable
define internal void @pred_angular_v_10(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = add nsw i32 %8, 1
  %narrow = xor i32 %8, -1
  %i.d = sext i32 %narrow to i64                  ; 5 uses
  %i.e = getelementptr inbounds [2 x i8], ptr %1, i64 %i.d ; 3 uses
  %i.f = tail call i32 @ff_vvc_intra_pred_angle_derive(i32 noundef %7) #14 ; 3 uses
  %i.g = mul nsw i32 %i.f, %i.c
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %.not107 = icmp eq i32 %10, 0                   ; 2 uses
  br i1 %.not107, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @ff_vvc_intra_inv_angle_derive(i32 noundef %i.f) #14
  %i.i = tail call i32 @ff_vvc_nscale_derive(i32 noundef %3, i32 noundef %4, i32 noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0106 = phi i32 [ %i.i, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.0105 = phi i32 [ %i.h, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.j = icmp sgt i32 %4, 0
  br i1 %i.j, label %.lr.ph133, label %._crit_edge

.lr.ph133:                                        ; preds = %bb.c
  %i.k = icmp ne i32 %9, 0
  %or.cond = and i1 %.not, %i.k
  %i.l = icmp sgt i32 %3, 0                       ; 3 uses
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [128 x i8], ptr @ff_vvc_intra_luma_filter, i64 %i.m
  %i.o = add nsw i32 %.0105, 256
  %i.p = shl i32 3, %.0106
  %i.q = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.p) ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  %wide.trip.count157 = zext nneg i32 %4 to i64   ; 3 uses
  %wide.trip.count = zext i32 %3 to i64           ; 18 uses
  %wide.trip.count142 = zext nneg i32 %3 to i64
  %wide.trip.count147 = zext nneg i32 %3 to i64
  %brmerge = select i1 %.not107, i1 true, i1 %i.r
  %wide.trip.count152 = zext nneg i32 %i.q to i64
  %11 = add nsw i64 %i.d, %wide.trip.count
  %i.s = add nuw i64 %wide.trip.count157, 9223372036854775807
  %i.t = mul i64 %5, %i.s
  %i.u = add i64 %i.t, %wide.trip.count
  %i.v = shl i64 %i.u, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.v
  %12 = shl nsw i64 %i.d, 1
  %13 = add nsw i64 %i.d, %wide.trip.count
  %14 = shl nsw i64 %13, 1
  %i.w = add nuw i64 %wide.trip.count157, 9223372036854775807
  %i.x = mul i64 %5, %i.w
  %i.y = add i64 %i.x, %wide.trip.count
  %i.z = shl i64 %i.y, 1
  %scevgep186 = getelementptr i8, ptr %0, i64 %i.z
  %i.aa = shl i64 %5, 1
  %i.ab = add i64 %i.b, -2
  %min.iters.check210 = icmp ult i32 %3, 4
  %min.iters.check212 = icmp ult i32 %3, 16
  %i.ac = and i64 %wide.trip.count, 12
  %n.vec214 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n221 = icmp eq i64 %n.vec214, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  %n.vec222 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n226 = icmp eq i64 %n.vec222, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check188 = icmp ult i32 %3, 8
  %15 = getelementptr i8, ptr %1, i64 %12
  %16 = getelementptr i8, ptr %15, i64 2
  %17 = getelementptr i8, ptr %1, i64 %14
  %18 = getelementptr i8, ptr %17, i64 4
  %.mask = and i64 %5, 4611686018427387904
  %stride.check193 = icmp ne i64 %.mask, 0
  %n.vec195 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n206 = icmp eq i64 %n.vec195, %wide.trip.count
  %xtraiter231 = and i64 %wide.trip.count, 1
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  %i.ad = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %3, 8
  %.mask228 = and i64 %5, 4611686018427387904
  %stride.check = icmp ne i64 %.mask228, 0
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph133, %.loopexit
  %indvars.iv154 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next155, %.loopexit ] ; 7 uses
  %.0100132 = phi i32 [ %i.g, %.lr.ph133 ], [ %i.go, %.loopexit ] ; 3 uses
  %i.ae = ashr i32 %.0100132, 5
  %i.af = add nsw i32 %i.ae, %8                   ; 3 uses
  %i.ag = and i32 %.0100132, 31                   ; 7 uses
  %.not108 = icmp ne i32 %i.ag, 0
  %or.cond109 = or i1 %or.cond, %.not108
  br i1 %or.cond109, label %bb.e, label %.preheader115

.preheader115:                                    ; preds = %bb.d
  br i1 %i.l, label %iter.check, label %.loopexit113

iter.check:                                       ; preds = %.preheader115
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.e, i64 %i.ah ; 7 uses
  %i.ai = mul nsw i64 %5, %indvars.iv154
  %i.aj = getelementptr [2 x i8], ptr %0, i64 %i.ai ; 7 uses
  br i1 %min.iters.check210, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check
  %i.ak = mul i64 %indvars.iv154, %i.aa
  %i.al = add i64 %i.ab, %i.ak
  %i.am = add nsw i64 %i.d, %i.ah
  %i.an = shl nsw i64 %i.am, 1
  %i.ao = add i64 %i.an, %i.a
  %i.ap = sub i64 %i.ao, %i.al
  %diff.check = icmp ugt i64 %i.ap, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck211
  br i1 %min.iters.check212, label %vec.epilog.ph, label %vector.body215

vector.body215:                                   ; preds = %vector.main.loop.iter.check, %vector.body215
  %index216 = phi i64 [ %index.next219, %vector.body215 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.aq = getelementptr [2 x i8], ptr %invariant.gep, i64 %index216 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  %wide.load217 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !34
  %wide.load218 = load <8 x i16>, ptr %i.as, align 2, !tbaa !34
  %i.at = getelementptr [2 x i8], ptr %i.aj, i64 %index216 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store <8 x i16> %wide.load217, ptr %i.at, align 2, !tbaa !34
  store <8 x i16> %wide.load218, ptr %i.au, align 2, !tbaa !34
  %index.next219 = add nuw i64 %index216, 16      ; 2 uses
  %i.av = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.av, label %middle.block220, label %vector.body215, !llvm.loop !1466

middle.block220:                                  ; preds = %vector.body215
  br i1 %cmp.n221, label %.loopexit113, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block220
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec214, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next225, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep, i64 %index223
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %wide.load224 = load <4 x i16>, ptr %i.ax, align 2, !tbaa !34
  %i.ay = getelementptr [2 x i8], ptr %i.aj, i64 %index223
  store <4 x i16> %wide.load224, ptr %i.ay, align 2, !tbaa !34
  %index.next225 = add nuw i64 %index223, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next225, %n.vec222
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1467

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n226, label %.loopexit113, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck211, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck211 ], [ %n.vec214, %vec.epilog.iter.check ], [ %n.vec222, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ba = getelementptr inbounds nuw i8, ptr %gep.prol, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !34
  %i.bc = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv.prol
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1468

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit113, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !34
  %i.bh = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bi = getelementptr inbounds nuw i8, ptr %gep.1, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !34
  %i.bk = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv.next
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bl = getelementptr inbounds nuw i8, ptr %gep.2, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !34
  %i.bn = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv.next.1
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !34
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bo = getelementptr inbounds nuw i8, ptr %gep.3, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !34
  %i.bq = getelementptr [2 x i8], ptr %i.aj, i64 %indvars.iv.next.2
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !34
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit113, label %vec.epilog.scalar.ph, !llvm.loop !1469

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  br i1 %i.l, label %.lr.ph119, label %.loopexit113

.lr.ph119:                                        ; preds = %.preheader
  %i.br = sext i32 %i.af to i64                   ; 2 uses
  %invariant.gep120 = getelementptr [2 x i8], ptr %i.e, i64 %i.br ; 4 uses
  %i.bs = sub nuw nsw i32 32, %i.ag               ; 4 uses
  %i.bt = mul nsw i64 %5, %indvars.iv154
  %i.bu = getelementptr [2 x i8], ptr %0, i64 %i.bt ; 4 uses
  br i1 %min.iters.check188, label %scalar.ph187.preheader, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph119
  %i.bv = shl nsw i64 %i.br, 1                    ; 2 uses
  %i.bw = getelementptr i8, ptr %16, i64 %i.bv
  %i.bx = getelementptr i8, ptr %18, i64 %i.bv
  %bound0190 = icmp ult ptr %0, %i.bx
  %bound1191 = icmp ult ptr %i.bw, %scevgep186
  %found.conflict192 = and i1 %bound0190, %bound1191
  %i.by = or i1 %found.conflict192, %stride.check193
  br i1 %i.by, label %scalar.ph187.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck189
  %broadcast.splatinsert196 = insertelement <8 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat197 = shufflevector <8 x i32> %broadcast.splatinsert196, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert198 = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat199 = shufflevector <8 x i32> %broadcast.splatinsert198, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph194
  %index201 = phi i64 [ 0, %vector.ph194 ], [ %index.next204, %vector.body200 ] ; 3 uses
  %i.bz = getelementptr [2 x i8], ptr %invariant.gep120, i64 %index201 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %wide.load202 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !34, !alias.scope !1482
  %i.cb = zext <8 x i16> %wide.load202 to <8 x i32>
  %i.cc = mul nuw nsw <8 x i32> %broadcast.splat197, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %wide.load203 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !34, !alias.scope !1482
  %i.ce = zext <8 x i16> %wide.load203 to <8 x i32>
  %i.cf = mul nuw nsw <8 x i32> %broadcast.splat199, %i.ce
  %i.cg = add nuw nsw <8 x i32> %i.cc, splat (i32 16)
  %i.ch = add nuw nsw <8 x i32> %i.cg, %i.cf
  %i.ci = lshr <8 x i32> %i.ch, splat (i32 5)
  %i.cj = trunc <8 x i32> %i.ci to <8 x i16>
  %i.ck = getelementptr [2 x i8], ptr %i.bu, i64 %index201
  store <8 x i16> %i.cj, ptr %i.ck, align 2, !tbaa !34, !alias.scope !1483, !noalias !1482
  %index.next204 = add nuw i64 %index201, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.cl, label %middle.block205, label %vector.body200, !llvm.loop !1473

middle.block205:                                  ; preds = %vector.body200
  br i1 %cmp.n206, label %.loopexit113, label %scalar.ph187.preheader

scalar.ph187.preheader:                           ; preds = %vector.memcheck189, %.lr.ph119, %middle.block205
  %indvars.iv139.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph119 ], [ %n.vec195, %middle.block205 ] ; 5 uses
  br i1 %lcmp.mod232.not, label %scalar.ph187.prol.loopexit, label %scalar.ph187.prol

scalar.ph187.prol:                                ; preds = %scalar.ph187.preheader
  %gep121.prol = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv139.ph ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %gep121.prol, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !34
  %i.co = zext i16 %i.cn to i32
  %i.cp = mul nuw nsw i32 %i.bs, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %gep121.prol, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !34
  %i.cs = zext i16 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.ag, %i.cs
  %i.cu = add nuw nsw i32 %i.cp, 16
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = lshr i32 %i.cv, 5
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv139.ph
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !34
  %indvars.iv.next140.prol = or disjoint i64 %indvars.iv139.ph, 1
  br label %scalar.ph187.prol.loopexit

scalar.ph187.prol.loopexit:                       ; preds = %scalar.ph187.prol, %scalar.ph187.preheader
  %indvars.iv139.unr = phi i64 [ %indvars.iv139.ph, %scalar.ph187.preheader ], [ %indvars.iv.next140.prol, %scalar.ph187.prol ]
  %i.cz = icmp eq i64 %indvars.iv139.ph, %i.ad
  br i1 %i.cz, label %.loopexit113, label %scalar.ph187

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %.lr.ph123, label %.loopexit113

.lr.ph123:                                        ; preds = %bb.f
  %i.da = zext nneg i32 %i.ag to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.da
  %i.dc = sext i32 %i.af to i64                   ; 2 uses
  %invariant.gep124 = getelementptr [2 x i8], ptr %i.e, i64 %i.dc ; 3 uses
  %i.dd = load <4 x i8>, ptr %i.db, align 4, !tbaa !40
  %i.de = sext <4 x i8> %i.dd to <4 x i32>        ; 5 uses
  %i.df = mul nsw i64 %5, %indvars.iv154
  %i.dg = getelementptr [2 x i8], ptr %0, i64 %i.df ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %.reass = add nsw i64 %11, %i.dc
  %i.dh = shl nsw i64 %.reass, 1
  %i.di = getelementptr i8, ptr %1, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 6
  %bound0 = icmp ult ptr %0, %i.dj
  %bound1 = icmp ult ptr %invariant.gep124, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dk = or i1 %found.conflict, %stride.check
  br i1 %i.dk, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat168 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat170 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat172 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr [2 x i8], ptr %invariant.gep124, i64 %index ; 4 uses
  %wide.load = load <8 x i16>, ptr %i.dl, align 2, !tbaa !34, !alias.scope !1484
  %i.dm = zext <8 x i16> %wide.load to <8 x i32>
  %i.dn = mul nsw <8 x i32> %broadcast.splat, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %wide.load173 = load <8 x i16>, ptr %i.do, align 2, !tbaa !34, !alias.scope !1484
  %i.dp = zext <8 x i16> %wide.load173 to <8 x i32>
  %i.dq = mul nsw <8 x i32> %broadcast.splat168, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %wide.load174 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !34, !alias.scope !1484
  %i.ds = zext <8 x i16> %wide.load174 to <8 x i32>
  %i.dt = mul nsw <8 x i32> %broadcast.splat170, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 6
  %wide.load175 = load <8 x i16>, ptr %i.du, align 2, !tbaa !34, !alias.scope !1484
  %i.dv = zext <8 x i16> %wide.load175 to <8 x i32>
  %i.dw = mul nsw <8 x i32> %broadcast.splat172, %i.dv
  %i.dx = add nsw <8 x i32> %i.dn, splat (i32 32)
  %i.dy = add nsw <8 x i32> %i.dx, %i.dq
  %i.dz = add nsw <8 x i32> %i.dy, %i.dt
  %i.ea = add nsw <8 x i32> %i.dz, %i.dw
  %i.eb = ashr <8 x i32> %i.ea, splat (i32 6)
  %i.ec = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eb, <8 x i32> zeroinitializer)
  %i.ed = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ec, <8 x i32> splat (i32 1023))
  %i.ee = trunc nuw nsw <8 x i32> %i.ed to <8 x i16>
  %i.ef = getelementptr [2 x i8], ptr %i.dg, i64 %index
  store <8 x i16> %i.ee, ptr %i.ef, align 2, !tbaa !34, !alias.scope !1485, !noalias !1484
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !1477

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit113, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph123 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %scalar.ph ], [ %indvars.iv144.ph, %scalar.ph.preheader ] ; 3 uses
  %gep125 = getelementptr [2 x i8], ptr %invariant.gep124, i64 %indvars.iv144
  %i.eh = load <4 x i16>, ptr %gep125, align 2, !tbaa !34
  %i.ei = zext <4 x i16> %i.eh to <4 x i32>
  %i.ej = mul nsw <4 x i32> %i.de, %i.ei
  %i.ek = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ej)
  %op.rdx = add i32 %i.ek, 32
  %i.el = ashr i32 %op.rdx, 6
  %i.em = tail call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 1023)
  %i.eo = trunc nuw nsw i32 %i.en to i16
  %i.ep = getelementptr [2 x i8], ptr %i.dg, i64 %indvars.iv144
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !34
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.loopexit113, label %scalar.ph, !llvm.loop !1478

scalar.ph187:                                     ; preds = %scalar.ph187.prol.loopexit, %scalar.ph187
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %scalar.ph187 ], [ %indvars.iv139.unr, %scalar.ph187.prol.loopexit ] ; 4 uses
  %gep121 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv139 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %gep121, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !34
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw nsw i32 %i.bs, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %gep121, i64 4
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !34
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul nuw nsw i32 %i.ag, %i.ew
  %i.ey = add nuw nsw i32 %i.et, 16
  %i.ez = add nuw nsw i32 %i.ey, %i.ex
  %i.fa = lshr i32 %i.ez, 5
  %i.fb = trunc i32 %i.fa to i16
  %i.fc = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv139
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !34
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %gep121.1 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv.next140 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep121.1, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !34
  %i.ff = zext i16 %i.fe to i32
  %i.fg = mul nuw nsw i32 %i.bs, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %gep121.1, i64 4
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !34
  %i.fj = zext i16 %i.fi to i32
  %i.fk = mul nuw nsw i32 %i.ag, %i.fj
  %i.fl = add nuw nsw i32 %i.fg, 16
  %i.fm = add nuw nsw i32 %i.fl, %i.fk
  %i.fn = lshr i32 %i.fm, 5
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.next140
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !34
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.not.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.not.1, label %.loopexit113, label %scalar.ph187, !llvm.loop !1479

.loopexit113:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %scalar.ph187.prol.loopexit, %scalar.ph187, %scalar.ph, %middle.block220, %vec.epilog.middle.block, %middle.block205, %middle.block, %.preheader115, %.preheader, %bb.f
  br i1 %brmerge, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.loopexit113
  %i.fq = mul nsw i64 %5, %indvars.iv154
  %i.fr = getelementptr [2 x i8], ptr %0, i64 %i.fq
  %i.fs = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph128, %bb.g
  %indvars.iv149 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next150, %bb.g ] ; 3 uses
  %.099126 = phi i32 [ %i.o, %.lr.ph128 ], [ %i.gn, %bb.g ] ; 2 uses
  %i.ft = ashr i32 %.099126, 9
  %i.fu = add nsw i32 %i.ft, %i.fs
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !34
  %i.fy = getelementptr [2 x i8], ptr %i.fr, i64 %indvars.iv149 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !34
  %indvars.iv149.tr = trunc nuw i64 %indvars.iv149 to i32
  %i.ga = shl nuw i32 %indvars.iv149.tr, 1
  %i.gb = ashr i32 %i.ga, %.0106
  %i.gc = lshr i32 32, %i.gb
  %i.gd = zext i16 %i.fz to i32                   ; 2 uses
  %i.ge = zext i16 %i.fx to i32
  %i.gf = sub nsw i32 %i.ge, %i.gd
  %i.gg = mul nsw i32 %i.gf, %i.gc
  %i.gh = add nsw i32 %i.gg, 32
  %i.gi = ashr i32 %i.gh, 6
  %i.gj = add nsw i32 %i.gi, %i.gd
  %i.gk = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 0)
  %i.gl = tail call i32 @llvm.umin.i32(i32 %i.gk, i32 1023)
  %i.gm = trunc nuw nsw i32 %i.gl to i16
  store i16 %i.gm, ptr %i.fy, align 2, !tbaa !34
  %i.gn = add nsw i32 %.099126, %.0105
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.loopexit, label %bb.g, !llvm.loop !1480

.loopexit:                                        ; preds = %bb.g, %.loopexit113
  %i.go = add nsw i32 %.0100132, %i.f
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge, label %bb.d, !llvm.loop !1481
}

; Function Attrs: nounwind uwtable
define internal void @pred_angular_h_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #5 {
bb.a:
  %i.a = add nsw i32 %8, 1
  %narrow = xor i32 %8, -1
  %i.b = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %2, i64 %i.b ; 3 uses
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.d = tail call i32 @ff_vvc_intra_pred_angle_derive(i32 noundef %7) #14 ; 5 uses
  %.not79 = icmp ne i32 %10, 0                    ; 4 uses
  br i1 %.not79, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ff_vvc_intra_inv_angle_derive(i32 noundef %i.d) #14 ; 2 uses
  %i.f = add nsw i32 %i.e, 256
  %i.g = tail call i32 @ff_vvc_nscale_derive(i32 noundef %3, i32 noundef %4, i32 noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.078 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.075 = phi i32 [ %i.f, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.c
  %i.j = mul nsw i32 %i.d, %i.a                   ; 3 uses
  %i.k = icmp sgt i32 %3, 0
  %i.l = icmp ne i32 %9, 0
  %or.cond = and i1 %.not, %i.l                   ; 3 uses
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [128 x i8], ptr @ff_vvc_intra_luma_filter, i64 %i.m ; 2 uses
  br i1 %i.k, label %.lr.ph92.split.us, label %._crit_edge93

.lr.ph92.split.us:                                ; preds = %.lr.ph92
  %i.o = shl i32 3, %.078
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %wide.trip.count125 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count115 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %.not, label %.lr.ph92.split.us.split.us.preheader, label %.lr.ph92.split.us.split

.lr.ph92.split.us.split.us.preheader:             ; preds = %.lr.ph92.split.us
  %wide.trip.count120 = zext nneg i32 %3 to i64
  br label %.lr.ph92.split.us.split.us
end_hunk_1
begin_hunk_2_@pred_dc_8:bb.a

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next75, %vector.body73 ] ; 2 uses
  %i.az = shl i64 %index74, 2
  %next.gep = getelementptr i8, ptr %.01934, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 1, !tbaa !40
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 1, !tbaa !40
  %index.next75 = add nuw i64 %index74, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.bb, label %middle.block76, label %vector.body73, !llvm.loop !2188

middle.block76:                                   ; preds = %vector.body73
  br i1 %cmp.n77, label %._crit_edge, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.preheader, %middle.block76
  %.031.ph = phi ptr [ %.01934, %.preheader ], [ %i.ay, %middle.block76 ]
  %.02130.ph = phi i32 [ 0, %.preheader ], [ %i.ax, %middle.block76 ]
  br label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %.031 = phi ptr [ %i.bc, %scalar.ph69 ], [ %.031.ph, %scalar.ph69.preheader ] ; 2 uses
  %.02130 = phi i32 [ %i.bd, %scalar.ph69 ], [ %.02130.ph, %scalar.ph69.preheader ]
  store i32 %i.ar, ptr %.031, align 1, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.bd = add nuw nsw i32 %.02130, 4              ; 2 uses
  %i.be = icmp slt i32 %i.bd, %3
  br i1 %i.be, label %scalar.ph69, label %._crit_edge, !llvm.loop !2189

._crit_edge:                                      ; preds = %scalar.ph69, %middle.block76
  %i.bf = getelementptr inbounds i8, ptr %.01934, i64 %5
  %i.bg = add nuw nsw i32 %.02033, 1              ; 2 uses
  %exitcond45.not = icmp eq i32 %i.bg, %4
  br i1 %exitcond45.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !2190

._crit_edge35.split:                              ; preds = %._crit_edge, %pred_dc_val_8.exit
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_v_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #6 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.c = icmp ult i32 %3, 4
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %3, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0910.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.0910.epil = phi ptr [ %.0910.epil.init, %.epil.preheader ], [ %i.d, %bb.b ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0910.epil, ptr align 1 %1, i64 %i.b, i1 false)
  %i.d = getelementptr inbounds i8, ptr %.0910.epil, i64 %4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !2191

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.0910 = phi ptr [ %0, %.lr.ph.new ], [ %i.h, %bb.c ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0910, ptr align 1 %1, i64 %i.b, i1 false)
  %i.e = getelementptr inbounds i8, ptr %.0910, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %1, i64 %i.b, i1 false)
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %1, i64 %i.b, i1 false)
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %i.b, i1 false)
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %4 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !2192
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_h_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge19.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = lshr i64 %i.d, 2
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 29
  %n.vec = and i64 %i.f, 9223372036854775800      ; 3 uses
  %i.g = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.lr.ph

._crit_edge19.split:                              ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv21 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next22, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv21
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = zext i8 %i.i to i32
  %i.k = mul nuw i32 %i.j, 16843009               ; 2 uses
  %i.l = mul nsw i64 %4, %indvars.iv21
  %i.m = getelementptr i8, ptr %0, i64 %i.l       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl nuw i64 %index, 2
  %i.o = getelementptr i8, ptr %i.m, i64 %i.n     ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.o, align 1, !tbaa !40
  store <4 x i32> %broadcast.splat, ptr %i.p, align 1, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !2193

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %i.g, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge19.split, label %.lr.ph, !llvm.loop !2194

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.m, i64 %indvars.iv
  store i32 %i.k, ptr %i.r, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.s, label %scalar.ph, label %._crit_edge, !llvm.loop !2195
}

; Function Attrs: nounwind uwtable
define internal void @pred_angular_v_8(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = add nsw i32 %8, 1
  %narrow = xor i32 %8, -1
  %i.d = sext i32 %narrow to i64                  ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 3 uses
  %i.f = tail call i32 @ff_vvc_intra_pred_angle_derive(i32 noundef %7) #14 ; 3 uses
  %i.g = mul nsw i32 %i.f, %i.c
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %.not107 = icmp eq i32 %10, 0                   ; 2 uses
  br i1 %.not107, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @ff_vvc_intra_inv_angle_derive(i32 noundef %i.f) #14
  %i.i = tail call i32 @ff_vvc_nscale_derive(i32 noundef %3, i32 noundef %4, i32 noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0106 = phi i32 [ %i.i, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.0105 = phi i32 [ %i.h, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %i.j = icmp sgt i32 %4, 0
  br i1 %i.j, label %.lr.ph135, label %._crit_edge

.lr.ph135:                                        ; preds = %bb.c
  %i.k = icmp ne i32 %9, 0
  %or.cond = and i1 %.not, %i.k
  %i.l = icmp sgt i32 %3, 0                       ; 3 uses
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [128 x i8], ptr @ff_vvc_intra_luma_filter, i64 %i.m
  %i.o = add nsw i32 %.0105, 256
  %i.p = shl i32 3, %.0106
  %i.q = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.p) ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  %wide.trip.count159 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count = zext i32 %3 to i64           ; 22 uses
  %wide.trip.count144 = zext nneg i32 %3 to i64
  %wide.trip.count149 = zext nneg i32 %3 to i64
  %brmerge = select i1 %.not107, i1 true, i1 %i.r
  %wide.trip.count154 = zext nneg i32 %i.q to i64
  %11 = add nsw i64 %i.d, %wide.trip.count        ; 2 uses
  %i.s = add nsw i64 %wide.trip.count159, -1
  %i.t = mul i64 %5, %i.s
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 %wide.trip.count ; 2 uses
  %min.iters.check245 = icmp ult i32 %3, 4
  %min.iters.check248 = icmp ult i32 %3, 32
  %i.v = and i64 %wide.trip.count, 28
  %n.vec250 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n257 = icmp eq i64 %n.vec250, %wide.trip.count
  %min.epilog.iters.check261 = icmp eq i64 %i.v, 0
  %n.vec264 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n270 = icmp eq i64 %n.vec264, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check204 = icmp ult i32 %3, 4
  %12 = getelementptr i8, ptr %1, i64 %i.d
  %13 = getelementptr i8, ptr %12, i64 1
  %14 = getelementptr i8, ptr %1, i64 %11
  %invariant.gep277 = getelementptr i8, ptr %14, i64 2
  %stride.check209 = icmp slt i64 %5, 0
  %min.iters.check211 = icmp ult i32 %3, 16
  %i.w = and i64 %wide.trip.count, 12
  %n.vec213 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n224 = icmp eq i64 %n.vec213, %wide.trip.count
  %min.epilog.iters.check228 = icmp eq i64 %i.w, 0
  %n.vec231 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n242 = icmp eq i64 %n.vec231, %wide.trip.count
  %xtraiter274 = and i64 %wide.trip.count, 1
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  %i.x = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %3, 4
  %invariant.gep279 = getelementptr i8, ptr %1, i64 %11
  %invariant.gep281 = getelementptr i8, ptr %invariant.gep279, i64 3
  %stride.check = icmp slt i64 %5, 0
  %min.iters.check169 = icmp ult i32 %3, 16
  %i.y = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  %n.vec179 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n194 = icmp eq i64 %n.vec179, %wide.trip.count
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph135, %.loopexit
  %indvars.iv156 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next157, %.loopexit ] ; 6 uses
  %.0100134 = phi i32 [ %i.g, %.lr.ph135 ], [ %i.hi, %.loopexit ] ; 3 uses
  %i.z = ashr i32 %.0100134, 5
  %i.aa = add nsw i32 %i.z, %8                    ; 3 uses
  %i.ab = and i32 %.0100134, 31                   ; 8 uses
  %.not108 = icmp ne i32 %i.ab, 0
  %or.cond109 = or i1 %or.cond, %.not108
  br i1 %or.cond109, label %bb.e, label %.preheader117

.preheader117:                                    ; preds = %bb.d
  br i1 %i.l, label %iter.check258, label %.loopexit115

iter.check258:                                    ; preds = %.preheader117
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.e, i64 %i.ac ; 7 uses
  %i.ad = mul nsw i64 %5, %indvars.iv156          ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad     ; 7 uses
  br i1 %min.iters.check245, label %vec.epilog.scalar.ph260.preheader, label %vector.memcheck246

vector.memcheck246:                               ; preds = %iter.check258
  %i.af = add nsw i64 %i.d, %i.ac
  %i.ag = add i64 %i.ad, %i.b
  %i.ah = sub i64 %i.a, %i.ag
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = add i64 %i.ai, 32
  %diff.check = icmp ult i64 %i.aj, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph260.preheader, label %vector.main.loop.iter.check247

vector.main.loop.iter.check247:                   ; preds = %vector.memcheck246
  br i1 %min.iters.check248, label %vec.epilog.ph262, label %vector.body251

vector.body251:                                   ; preds = %vector.main.loop.iter.check247, %vector.body251
  %index252 = phi i64 [ %index.next255, %vector.body251 ], [ 0, %vector.main.loop.iter.check247 ] ; 3 uses
  %i.ak = getelementptr i8, ptr %invariant.gep, i64 %index252 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 17
  %wide.load253 = load <16 x i8>, ptr %i.al, align 1, !tbaa !40
  %wide.load254 = load <16 x i8>, ptr %i.am, align 1, !tbaa !40
  %i.an = getelementptr i8, ptr %i.ae, i64 %index252 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store <16 x i8> %wide.load253, ptr %i.an, align 1, !tbaa !40
  store <16 x i8> %wide.load254, ptr %i.ao, align 1, !tbaa !40
  %index.next255 = add nuw i64 %index252, 32      ; 2 uses
  %i.ap = icmp eq i64 %index.next255, %n.vec250
  br i1 %i.ap, label %middle.block256, label %vector.body251, !llvm.loop !2196

middle.block256:                                  ; preds = %vector.body251
  br i1 %cmp.n257, label %.loopexit115, label %vec.epilog.iter.check259

vec.epilog.iter.check259:                         ; preds = %middle.block256
  br i1 %min.epilog.iters.check261, label %vec.epilog.scalar.ph260.preheader, label %vec.epilog.ph262, !prof !156

vec.epilog.ph262:                                 ; preds = %vector.main.loop.iter.check247, %vec.epilog.iter.check259
  %vec.epilog.resume.val263 = phi i64 [ %n.vec250, %vec.epilog.iter.check259 ], [ 0, %vector.main.loop.iter.check247 ]
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph262
  %index266 = phi i64 [ %vec.epilog.resume.val263, %vec.epilog.ph262 ], [ %index.next268, %vec.epilog.vector.body265 ] ; 3 uses
  %i.aq = getelementptr i8, ptr %invariant.gep, i64 %index266
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %wide.load267 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !40
  %i.as = getelementptr i8, ptr %i.ae, i64 %index266
  store <4 x i8> %wide.load267, ptr %i.as, align 1, !tbaa !40
  %index.next268 = add nuw i64 %index266, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next268, %n.vec264
  br i1 %i.at, label %vec.epilog.middle.block269, label %vec.epilog.vector.body265, !llvm.loop !2197

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body265
  br i1 %cmp.n270, label %.loopexit115, label %vec.epilog.scalar.ph260.preheader

vec.epilog.scalar.ph260.preheader:                ; preds = %iter.check258, %vector.memcheck246, %vec.epilog.iter.check259, %vec.epilog.middle.block269
  %indvars.iv.ph = phi i64 [ 0, %iter.check258 ], [ 0, %vector.memcheck246 ], [ %n.vec250, %vec.epilog.iter.check259 ], [ %n.vec264, %vec.epilog.middle.block269 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph260.prol.loopexit, label %vec.epilog.scalar.ph260.prol

vec.epilog.scalar.ph260.prol:                     ; preds = %vec.epilog.scalar.ph260.preheader, %vec.epilog.scalar.ph260.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph260.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph260.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph260.prol ], [ 0, %vec.epilog.scalar.ph260.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.au = getelementptr inbounds nuw i8, ptr %gep.prol, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !40
  %i.aw = getelementptr i8, ptr %i.ae, i64 %indvars.iv.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !40
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph260.prol.loopexit, label %vec.epilog.scalar.ph260.prol, !llvm.loop !2198

vec.epilog.scalar.ph260.prol.loopexit:            ; preds = %vec.epilog.scalar.ph260.prol, %vec.epilog.scalar.ph260.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph260.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph260.prol ]
  %i.ax = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.loopexit115, label %vec.epilog.scalar.ph260

vec.epilog.scalar.ph260:                          ; preds = %vec.epilog.scalar.ph260.prol.loopexit, %vec.epilog.scalar.ph260
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph260 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph260.prol.loopexit ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !40
  %i.bb = getelementptr i8, ptr %i.ae, i64 %indvars.iv
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.bc = getelementptr inbounds nuw i8, ptr %gep.1, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !40
  %i.be = getelementptr i8, ptr %i.ae, i64 %indvars.iv.next
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bf = getelementptr inbounds nuw i8, ptr %gep.2, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !40
  %i.bh = getelementptr i8, ptr %i.ae, i64 %indvars.iv.next.1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !40
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bi = getelementptr inbounds nuw i8, ptr %gep.3, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !40
  %i.bk = getelementptr i8, ptr %i.ae, i64 %indvars.iv.next.2
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !40
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit115, label %vec.epilog.scalar.ph260, !llvm.loop !2199

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  br i1 %i.l, label %iter.check225, label %.loopexit115

iter.check225:                                    ; preds = %.preheader
  %i.bl = sext i32 %i.aa to i64                   ; 3 uses
  %invariant.gep122 = getelementptr i8, ptr %i.e, i64 %i.bl ; 5 uses
  %i.bm = sub nuw nsw i32 32, %i.ab               ; 5 uses
  %i.bn = mul nsw i64 %5, %indvars.iv156
  %i.bo = getelementptr i8, ptr %0, i64 %i.bn     ; 5 uses
  br i1 %min.iters.check204, label %vec.epilog.scalar.ph227.preheader, label %vector.memcheck205

vector.memcheck205:                               ; preds = %iter.check225
  %gep278 = getelementptr i8, ptr %13, i64 %i.bl
  %i.bp = getelementptr i8, ptr %invariant.gep277, i64 %i.bl
  %bound0206 = icmp ult ptr %0, %i.bp
  %bound1207 = icmp ult ptr %gep278, %scevgep
  %found.conflict208 = and i1 %bound0206, %bound1207
  %i.bq = or i1 %found.conflict208, %stride.check209
  br i1 %i.bq, label %vec.epilog.scalar.ph227.preheader, label %vector.main.loop.iter.check210

vector.main.loop.iter.check210:                   ; preds = %vector.memcheck205
  br i1 %min.iters.check211, label %vec.epilog.ph229, label %vector.ph212

vector.ph212:                                     ; preds = %vector.main.loop.iter.check210
  %broadcast.splatinsert214 = insertelement <16 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat215 = shufflevector <16 x i32> %broadcast.splatinsert214, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert216 = insertelement <16 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat217 = shufflevector <16 x i32> %broadcast.splatinsert216, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body218

vector.body218:                                   ; preds = %vector.ph212, %vector.body218
  %index219 = phi i64 [ 0, %vector.ph212 ], [ %index.next222, %vector.body218 ] ; 3 uses
  %i.br = getelementptr i8, ptr %invariant.gep122, i64 %index219 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %wide.load220 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !40, !alias.scope !2214
  %i.bt = zext <16 x i8> %wide.load220 to <16 x i32>
  %i.bu = mul nuw nsw <16 x i32> %broadcast.splat215, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %wide.load221 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !40, !alias.scope !2214
  %i.bw = zext <16 x i8> %wide.load221 to <16 x i32>
  %i.bx = mul nuw nsw <16 x i32> %broadcast.splat217, %i.bw
  %i.by = add nuw nsw <16 x i32> %i.bu, splat (i32 16)
  %i.bz = add nuw nsw <16 x i32> %i.by, %i.bx
  %i.ca = lshr <16 x i32> %i.bz, splat (i32 5)
  %i.cb = trunc <16 x i32> %i.ca to <16 x i8>
  %i.cc = getelementptr i8, ptr %i.bo, i64 %index219
  store <16 x i8> %i.cb, ptr %i.cc, align 1, !tbaa !40, !alias.scope !2215, !noalias !2214
  %index.next222 = add nuw i64 %index219, 16      ; 2 uses
  %i.cd = icmp eq i64 %index.next222, %n.vec213
  br i1 %i.cd, label %middle.block223, label %vector.body218, !llvm.loop !2203

middle.block223:                                  ; preds = %vector.body218
  br i1 %cmp.n224, label %.loopexit115, label %vec.epilog.iter.check226

vec.epilog.iter.check226:                         ; preds = %middle.block223
  br i1 %min.epilog.iters.check228, label %vec.epilog.scalar.ph227.preheader, label %vec.epilog.ph229, !prof !38

vec.epilog.ph229:                                 ; preds = %vector.main.loop.iter.check210, %vec.epilog.iter.check226
  %vec.epilog.resume.val230 = phi i64 [ %n.vec213, %vec.epilog.iter.check226 ], [ 0, %vector.main.loop.iter.check210 ]
  %broadcast.splatinsert232 = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat233 = shufflevector <4 x i32> %broadcast.splatinsert232, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert234 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat235 = shufflevector <4 x i32> %broadcast.splatinsert234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body236

vec.epilog.vector.body236:                        ; preds = %vec.epilog.vector.body236, %vec.epilog.ph229
  %index237 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph229 ], [ %index.next240, %vec.epilog.vector.body236 ] ; 3 uses
  %i.ce = getelementptr i8, ptr %invariant.gep122, i64 %index237 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %wide.load238 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !40, !alias.scope !2214
  %i.cg = zext <4 x i8> %wide.load238 to <4 x i32>
  %i.ch = mul nuw nsw <4 x i32> %broadcast.splat233, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %wide.load239 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !40, !alias.scope !2214
  %i.cj = zext <4 x i8> %wide.load239 to <4 x i32>
  %i.ck = mul nuw nsw <4 x i32> %broadcast.splat235, %i.cj
  %i.cl = add nuw nsw <4 x i32> %i.ch, splat (i32 16)
  %i.cm = add nuw nsw <4 x i32> %i.cl, %i.ck
  %i.cn = lshr <4 x i32> %i.cm, splat (i32 5)
  %i.co = trunc <4 x i32> %i.cn to <4 x i8>
  %i.cp = getelementptr i8, ptr %i.bo, i64 %index237
  store <4 x i8> %i.co, ptr %i.cp, align 1, !tbaa !40, !alias.scope !2215, !noalias !2214
  %index.next240 = add nuw i64 %index237, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next240, %n.vec231
  br i1 %i.cq, label %vec.epilog.middle.block241, label %vec.epilog.vector.body236, !llvm.loop !2204

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body236
  br i1 %cmp.n242, label %.loopexit115, label %vec.epilog.scalar.ph227.preheader

vec.epilog.scalar.ph227.preheader:                ; preds = %iter.check225, %vector.memcheck205, %vec.epilog.iter.check226, %vec.epilog.middle.block241
  %indvars.iv141.ph = phi i64 [ 0, %iter.check225 ], [ 0, %vector.memcheck205 ], [ %n.vec213, %vec.epilog.iter.check226 ], [ %n.vec231, %vec.epilog.middle.block241 ] ; 5 uses
  br i1 %lcmp.mod275.not, label %vec.epilog.scalar.ph227.prol.loopexit, label %vec.epilog.scalar.ph227.prol

vec.epilog.scalar.ph227.prol:                     ; preds = %vec.epilog.scalar.ph227.preheader
  %gep123.prol = getelementptr i8, ptr %invariant.gep122, i64 %indvars.iv141.ph ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %gep123.prol, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !40
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.bm, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %gep123.prol, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !40
  %i.cx = zext i8 %i.cw to i32
  %i.cy = mul nuw nsw i32 %i.ab, %i.cx
  %i.cz = add nuw nsw i32 %i.cu, 16
  %i.da = add nuw nsw i32 %i.cz, %i.cy
  %i.db = lshr i32 %i.da, 5
  %i.dc = trunc i32 %i.db to i8
  %i.dd = getelementptr i8, ptr %i.bo, i64 %indvars.iv141.ph
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !40
  %indvars.iv.next142.prol = or disjoint i64 %indvars.iv141.ph, 1
  br label %vec.epilog.scalar.ph227.prol.loopexit

vec.epilog.scalar.ph227.prol.loopexit:            ; preds = %vec.epilog.scalar.ph227.prol, %vec.epilog.scalar.ph227.preheader
  %indvars.iv141.unr = phi i64 [ %indvars.iv141.ph, %vec.epilog.scalar.ph227.preheader ], [ %indvars.iv.next142.prol, %vec.epilog.scalar.ph227.prol ]
  %i.de = icmp eq i64 %indvars.iv141.ph, %i.x
  br i1 %i.de, label %.loopexit115, label %vec.epilog.scalar.ph227

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %iter.check, label %.loopexit115

iter.check:                                       ; preds = %bb.f
  %i.df = zext nneg i32 %i.ab to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.df
  %i.dh = sext i32 %i.aa to i64                   ; 2 uses
  %invariant.gep126 = getelementptr i8, ptr %i.e, i64 %i.dh ; 4 uses
  %i.di = load <4 x i8>, ptr %i.dg, align 4, !tbaa !40
  %i.dj = sext <4 x i8> %i.di to <4 x i32>        ; 9 uses
  %i.dk = mul nsw i64 %5, %indvars.iv156
  %i.dl = getelementptr i8, ptr %0, i64 %i.dk     ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %gep282 = getelementptr i8, ptr %invariant.gep281, i64 %i.dh
  %bound0 = icmp ult ptr %0, %gep282
  %bound1 = icmp ult ptr %invariant.gep126, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dm = or i1 %found.conflict, %stride.check
  br i1 %i.dm, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check169, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splat = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat171 = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat173 = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat175 = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dn = getelementptr i8, ptr %invariant.gep126, i64 %index ; 4 uses
  %wide.load = load <16 x i8>, ptr %i.dn, align 1, !tbaa !40, !alias.scope !2216
  %i.do = zext <16 x i8> %wide.load to <16 x i32>
  %i.dp = mul nsw <16 x i32> %broadcast.splat, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %wide.load176 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !40, !alias.scope !2216
  %i.dr = zext <16 x i8> %wide.load176 to <16 x i32>
  %i.ds = mul nsw <16 x i32> %broadcast.splat171, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %wide.load177 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !40, !alias.scope !2216
  %i.du = zext <16 x i8> %wide.load177 to <16 x i32>
  %i.dv = mul nsw <16 x i32> %broadcast.splat173, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %wide.load178 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !40, !alias.scope !2216
  %i.dx = zext <16 x i8> %wide.load178 to <16 x i32>
  %i.dy = mul nsw <16 x i32> %broadcast.splat175, %i.dx
  %i.dz = add nsw <16 x i32> %i.dp, splat (i32 32)
  %i.ea = add nsw <16 x i32> %i.dz, %i.ds
  %i.eb = add nsw <16 x i32> %i.ea, %i.dv
  %i.ec = add nsw <16 x i32> %i.eb, %i.dy
  %i.ed = ashr <16 x i32> %i.ec, splat (i32 6)
  %i.ee = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ed, <16 x i32> zeroinitializer)
  %i.ef = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ee, <16 x i32> splat (i32 255))
  %i.eg = trunc nuw <16 x i32> %i.ef to <16 x i8>
  %i.eh = getelementptr i8, ptr %i.dl, i64 %index
  store <16 x i8> %i.eg, ptr %i.eh, align 1, !tbaa !40, !alias.scope !2217, !noalias !2216
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !2208

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit115, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splat181 = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat185 = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat187 = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index188 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 3 uses
  %i.ej = getelementptr i8, ptr %invariant.gep126, i64 %index188 ; 4 uses
  %wide.load189 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !40, !alias.scope !2216
  %i.ek = zext <4 x i8> %wide.load189 to <4 x i32>
  %i.el = mul nsw <4 x i32> %broadcast.splat181, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %wide.load190 = load <4 x i8>, ptr %i.em, align 1, !tbaa !40, !alias.scope !2216
  %i.en = zext <4 x i8> %wide.load190 to <4 x i32>
  %i.eo = mul nsw <4 x i32> %broadcast.splat183, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %wide.load191 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !40, !alias.scope !2216
  %i.eq = zext <4 x i8> %wide.load191 to <4 x i32>
  %i.er = mul nsw <4 x i32> %broadcast.splat185, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  %wide.load192 = load <4 x i8>, ptr %i.es, align 1, !tbaa !40, !alias.scope !2216
  %i.et = zext <4 x i8> %wide.load192 to <4 x i32>
  %i.eu = mul nsw <4 x i32> %broadcast.splat187, %i.et
  %i.ev = add nsw <4 x i32> %i.el, splat (i32 32)
  %i.ew = add nsw <4 x i32> %i.ev, %i.eo
  %i.ex = add nsw <4 x i32> %i.ew, %i.er
  %i.ey = add nsw <4 x i32> %i.ex, %i.eu
  %i.ez = ashr <4 x i32> %i.ey, splat (i32 6)
  %i.fa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ez, <4 x i32> zeroinitializer)
  %i.fb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fa, <4 x i32> splat (i32 255))
  %i.fc = trunc nuw <4 x i32> %i.fb to <4 x i8>
  %i.fd = getelementptr i8, ptr %i.dl, i64 %index188
  store <4 x i8> %i.fc, ptr %i.fd, align 1, !tbaa !40, !alias.scope !2217, !noalias !2216
  %index.next193 = add nuw i64 %index188, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next193, %n.vec179
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2209

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n194, label %.loopexit115, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv146.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec179, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %vec.epilog.scalar.ph ], [ %indvars.iv146.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %gep127 = getelementptr i8, ptr %invariant.gep126, i64 %indvars.iv146
  %i.ff = load <4 x i8>, ptr %gep127, align 1, !tbaa !40
  %i.fg = zext <4 x i8> %i.ff to <4 x i32>
  %i.fh = mul nsw <4 x i32> %i.dj, %i.fg
  %i.fi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fh)
  %op.rdx = add i32 %i.fi, 32
  %i.fj = ashr i32 %op.rdx, 6
  %i.fk = tail call i32 @llvm.smax.i32(i32 %i.fj, i32 0)
  %.0.i112114 = tail call i32 @llvm.umin.i32(i32 %i.fk, i32 255)
  %.0.i112 = trunc nuw i32 %.0.i112114 to i8
  %i.fl = getelementptr i8, ptr %i.dl, i64 %indvars.iv146
  store i8 %.0.i112, ptr %i.fl, align 1, !tbaa !40
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %.loopexit115, label %vec.epilog.scalar.ph, !llvm.loop !2210

vec.epilog.scalar.ph227:                          ; preds = %vec.epilog.scalar.ph227.prol.loopexit, %vec.epilog.scalar.ph227
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.1, %vec.epilog.scalar.ph227 ], [ %indvars.iv141.unr, %vec.epilog.scalar.ph227.prol.loopexit ] ; 4 uses
  %gep123 = getelementptr i8, ptr %invariant.gep122, i64 %indvars.iv141 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %gep123, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !40
  %i.fo = zext i8 %i.fn to i32
  %i.fp = mul nuw nsw i32 %i.bm, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %gep123, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !40
  %i.fs = zext i8 %i.fr to i32
  %i.ft = mul nuw nsw i32 %i.ab, %i.fs
  %i.fu = add nuw nsw i32 %i.fp, 16
  %i.fv = add nuw nsw i32 %i.fu, %i.ft
  %i.fw = lshr i32 %i.fv, 5
  %i.fx = trunc i32 %i.fw to i8
  %i.fy = getelementptr i8, ptr %i.bo, i64 %indvars.iv141
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !40
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %gep123.1 = getelementptr i8, ptr %invariant.gep122, i64 %indvars.iv.next142 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %gep123.1, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !40
  %i.gb = zext i8 %i.ga to i32
  %i.gc = mul nuw nsw i32 %i.bm, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %gep123.1, i64 2
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !40
  %i.gf = zext i8 %i.ge to i32
  %i.gg = mul nuw nsw i32 %i.ab, %i.gf
  %i.gh = add nuw nsw i32 %i.gc, 16
  %i.gi = add nuw nsw i32 %i.gh, %i.gg
  %i.gj = lshr i32 %i.gi, 5
  %i.gk = trunc i32 %i.gj to i8
  %i.gl = getelementptr i8, ptr %i.bo, i64 %indvars.iv.next142
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !40
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %exitcond145.not.1 = icmp eq i64 %indvars.iv.next142.1, %wide.trip.count144
  br i1 %exitcond145.not.1, label %.loopexit115, label %vec.epilog.scalar.ph227, !llvm.loop !2211

.loopexit115:                                     ; preds = %vec.epilog.scalar.ph260.prol.loopexit, %vec.epilog.scalar.ph260, %vec.epilog.scalar.ph227.prol.loopexit, %vec.epilog.scalar.ph227, %vec.epilog.scalar.ph, %middle.block256, %vec.epilog.middle.block269, %middle.block223, %vec.epilog.middle.block241, %middle.block, %vec.epilog.middle.block, %.preheader117, %.preheader, %bb.f
  br i1 %brmerge, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.loopexit115
  %i.gm = mul nsw i64 %5, %indvars.iv156
  %i.gn = getelementptr i8, ptr %0, i64 %i.gm
  %i.go = trunc nuw nsw i64 %indvars.iv156 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph130, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %.099128 = phi i32 [ %i.o, %.lr.ph130 ], [ %i.hh, %bb.g ] ; 2 uses
  %i.gp = ashr i32 %.099128, 9
  %i.gq = add nsw i32 %i.gp, %i.go
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %2, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !40
  %i.gu = getelementptr i8, ptr %i.gn, i64 %indvars.iv151 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !40
  %indvars.iv151.tr = trunc nuw i64 %indvars.iv151 to i32
  %i.gw = shl nuw i32 %indvars.iv151.tr, 1
  %i.gx = ashr i32 %i.gw, %.0106
  %i.gy = lshr i32 32, %i.gx
  %i.gz = zext i8 %i.gv to i32                    ; 2 uses
  %i.ha = zext i8 %i.gt to i32
  %i.hb = sub nsw i32 %i.ha, %i.gz
  %i.hc = mul nsw i32 %i.hb, %i.gy
  %i.hd = add nsw i32 %i.hc, 32
  %i.he = ashr i32 %i.hd, 6
  %i.hf = add nsw i32 %i.he, %i.gz
  %i.hg = tail call i32 @llvm.smax.i32(i32 %i.hf, i32 0)
  %.0.i113 = tail call i32 @llvm.umin.i32(i32 %i.hg, i32 255)
  %.0.i = trunc nuw i32 %.0.i113 to i8
  store i8 %.0.i, ptr %i.gu, align 1, !tbaa !40
  %i.hh = add nsw i32 %.099128, %.0105
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %bb.g, !llvm.loop !2212

.loopexit:                                        ; preds = %bb.g, %.loopexit115
  %i.hi = add nsw i32 %.0100134, %i.f
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge, label %bb.d, !llvm.loop !2213
}
end_hunk_2
