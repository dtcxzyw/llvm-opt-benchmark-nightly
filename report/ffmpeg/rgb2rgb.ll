Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rgb2rgb?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@rgb2rgb_init_c:bb.a
  store ptr @shuffle_bytes_1230_c, ptr @shuffle_bytes_1230, align 8, !tbaa !23
  store ptr @shuffle_bytes_3012_c, ptr @shuffle_bytes_3012, align 8, !tbaa !23
  store ptr @shuffle_bytes_3210_c, ptr @shuffle_bytes_3210, align 8, !tbaa !23
  store ptr @shuffle_bytes_3102_c, ptr @shuffle_bytes_3102, align 8, !tbaa !23
  store ptr @shuffle_bytes_2013_c, ptr @shuffle_bytes_2013, align 8, !tbaa !23
  store ptr @shuffle_bytes_2130_c, ptr @shuffle_bytes_2130, align 8, !tbaa !23
  store ptr @shuffle_bytes_1203_c, ptr @shuffle_bytes_1203, align 8, !tbaa !23
  store ptr @rgb32tobgr16_c, ptr @rgb32tobgr16, align 8, !tbaa !23
  store ptr @rgb32tobgr15_c, ptr @rgb32tobgr15, align 8, !tbaa !23
  store ptr @yv12toyuy2_c, ptr @yv12toyuy2, align 8, !tbaa !23
  store ptr @yv12touyvy_c, ptr @yv12touyvy, align 8, !tbaa !23
  store ptr @yuv422ptoyuy2_c, ptr @yuv422ptoyuy2, align 8, !tbaa !23
  store ptr @yuv422ptouyvy_c, ptr @yuv422ptouyvy, align 8, !tbaa !23
  store ptr @planar2x_c, ptr @planar2x, align 8, !tbaa !23
  store ptr @ff_rgb24toyv12_c, ptr @ff_rgb24toyv12, align 8, !tbaa !23
  store ptr @interleaveBytes_c, ptr @interleaveBytes, align 8, !tbaa !23
  store ptr @deinterleaveBytes_c, ptr @deinterleaveBytes, align 8, !tbaa !23
  store ptr @uyvytoyuv420_c, ptr @uyvytoyuv420, align 8, !tbaa !23
  store ptr @uyvytoyuv422_c, ptr @uyvytoyuv422, align 8, !tbaa !23
  store ptr @yuyvtoyuv420_c, ptr @yuyvtoyuv420, align 8, !tbaa !23
  store ptr @yuyvtoyuv422_c, ptr @yuyvtoyuv422, align 8, !tbaa !23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb32to24(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 2                           ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.d = shl nuw nsw i64 %indvars.iv, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = mul nuw nsw i64 %indvars.iv, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 3 uses
  store i8 %i.g, ptr %i.i, align 1, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  %i.m = load i8, ptr %i.e, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = shl nuw nsw i64 %indvars.iv.next, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = mul nuw nsw i64 %indvars.iv.next, 3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 3 uses
  store i8 %i.r, ptr %i.t, align 1, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !12
  %i.x = load i8, ptr %i.p, align 1, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.x, ptr %i.y, align 1, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod17 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.z = shl nuw nsw i64 %indvars.iv.epil.init, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12
  %i.ad = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad ; 3 uses
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !12
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb24to32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv18 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next19, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = shl nuw nsw i64 %indvars.iv18, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 4 uses
  store i8 %i.e, ptr %i.g, align 1, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !12
  %i.k = load i8, ptr %i.c, align 1, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 -1, ptr %i.m, align 1, !tbaa !12
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = mul nuw nsw i64 %indvars.iv.next19, 3
  %i.o = icmp samesign ult i64 %i.n, %i.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb16tobgr32(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 1
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %i.y, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01617 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01617, i64 2 ; 2 uses
  %i.f = load i16, ptr %.01617, align 2, !tbaa !15 ; 4 uses
  %i.g = lshr i16 %i.f, 8
  %i.h = and i16 %i.g, 248
  %i.i = lshr i16 %i.f, 13
  %i.j = or disjoint i16 %i.h, %i.i
  %i.k = trunc nuw i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.k, ptr %.018, align 1, !tbaa !12
  %i.m = and i16 %i.f, 2016                       ; 2 uses
  %i.n = lshr exact i16 %i.m, 3
  %i.o = lshr i16 %i.m, 9
  %i.p = or disjoint i16 %i.n, %i.o
  %i.q = trunc nuw i16 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %i.q, ptr %i.l, align 1, !tbaa !12
  %i.s = trunc i16 %i.f to i8                     ; 2 uses
  %i.t = shl i8 %i.s, 3
  %i.u = lshr i8 %i.s, 2
  %i.v = and i8 %i.u, 7
  %i.w = or disjoint i8 %i.v, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %i.w, ptr %i.r, align 1, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 -1, ptr %i.x, align 1, !tbaa !12
  %i.z = icmp ult ptr %i.e, %i.c
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb12to15(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 1                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.g = add i64 %.idx, %i.f
  %i.h = add i64 %i.f, 2
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  %i.j = xor i64 %i.f, -1
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 14
  %i.n = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.n, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.o = shl i64 %n.vec, 1                        ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %1, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.r
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.r
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !15 ; 5 uses
  %i.s = and <8 x i16> %wide.load, splat (i16 15) ; 2 uses
  %i.t = shl <8 x i16> %wide.load, splat (i16 3)
  %i.u = and <8 x i16> %i.t, splat (i16 30720)
  %i.v = lshr <8 x i16> %wide.load, splat (i16 1)
  %i.w = and <8 x i16> %i.v, splat (i16 1024)
  %i.x = shl <8 x i16> %wide.load, splat (i16 2)
  %i.y = and <8 x i16> %i.x, splat (i16 960)
  %i.z = lshr <8 x i16> %wide.load, splat (i16 2)
  %i.aa = and <8 x i16> %i.z, splat (i16 32)
  %i.ab = shl nuw nsw <8 x i16> %i.s, splat (i16 1)
  %i.ac = lshr <8 x i16> %i.s, splat (i16 3)
  %i.ad = or disjoint <8 x i16> %i.ab, %i.ac
  %i.ae = or disjoint <8 x i16> %i.ad, %i.aa
  %i.af = or disjoint <8 x i16> %i.ae, %i.y
  %i.ag = or disjoint <8 x i16> %i.af, %i.w
  %i.ah = or disjoint <8 x i16> %i.ag, %i.u
  store <8 x i16> %i.ah, ptr %next.gep22, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader24

.lr.ph.preheader24:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  %.01920.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader24, %.lr.ph
  %.021 = phi ptr [ %i.aj, %.lr.ph ], [ %.021.ph, %.lr.ph.preheader24 ] ; 2 uses
  %.01920 = phi ptr [ %i.bb, %.lr.ph ], [ %.01920.ph, %.lr.ph.preheader24 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.021, i64 2 ; 2 uses
  %i.ak = load i16, ptr %.021, align 2, !tbaa !15 ; 5 uses
  %i.al = and i16 %i.ak, 15                       ; 2 uses
  %i.am = shl i16 %i.ak, 3
  %i.an = and i16 %i.am, 30720
  %i.ao = lshr i16 %i.ak, 1
  %i.ap = and i16 %i.ao, 1024
  %i.aq = shl i16 %i.ak, 2
  %i.ar = and i16 %i.aq, 960
  %i.as = lshr i16 %i.ak, 2
  %i.at = and i16 %i.as, 32
  %i.au = shl nuw nsw i16 %i.al, 1
  %i.av = lshr i16 %i.al, 3
  %i.aw = or disjoint i16 %i.au, %i.av
  %i.ax = or disjoint i16 %i.aw, %i.at
  %i.ay = or disjoint i16 %i.ax, %i.ar
  %i.az = or disjoint i16 %i.ay, %i.ap
  %i.ba = or disjoint i16 %i.az, %i.an
  %i.bb = getelementptr inbounds nuw i8, ptr %.01920, i64 2
  store i16 %i.ba, ptr %.01920, align 2, !tbaa !15
  %i.bc = icmp ult ptr %i.aj, %i.c
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb16to24(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 1                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.f = add i64 %.idx, %i.e
  %i.g = add i64 %i.e, 2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.i = xor i64 %i.e, -1
  %i.j = add i64 %i.h, %i.i                       ; 4 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 30
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = lshr i64 %i.j, 1
  %i.n = mul i64 %i.m, 3
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 3
  %i.q = and i64 %i.j, -2
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 2
  %bound0 = icmp ult ptr %1, %i.s
  %bound1 = icmp ult ptr %0, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.t = mul i64 %n.vec, 3
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = shl i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.x
  %i.y = shl i64 %index, 1
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.y
  %wide.load = load <8 x i16>, ptr %next.gep19, align 2, !tbaa !15, !alias.scope !34 ; 4 uses
  %i.z = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.aa = and <8 x i16> %i.z, splat (i16 248)
  %i.ab = and <8 x i16> %wide.load, splat (i16 2016) ; 2 uses
  %i.ac = lshr exact <8 x i16> %i.ab, splat (i16 3)
  %i.ad = trunc <8 x i16> %wide.load to <8 x i8>  ; 2 uses
  %i.ae = shl <8 x i8> %i.ad, splat (i8 3)
  %i.af = lshr <8 x i8> %i.ad, splat (i8 2)
  %i.ag = and <8 x i8> %i.af, splat (i8 7)
  %i.ah = or disjoint <8 x i8> %i.ag, %i.ae
  %i.ai = shufflevector <8 x i16> %i.aa, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aj = shufflevector <8 x i16> %wide.load, <8 x i16> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = lshr <16 x i16> %i.aj, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>
  %i.al = or disjoint <16 x i16> %i.ai, %i.ak
  %i.am = trunc nuw <16 x i16> %i.al to <16 x i8>
  %i.an = shufflevector <8 x i8> %i.ah, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i8> %i.am, <16 x i8> %i.an, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !12, !alias.scope !35, !noalias !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.01516.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %.017 = phi ptr [ %i.bi, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader21 ] ; 4 uses
  %.01516 = phi ptr [ %i.ap, %.lr.ph ], [ %.01516.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01516, i64 2 ; 2 uses
  %i.aq = load i16, ptr %.01516, align 2, !tbaa !15 ; 4 uses
  %i.ar = lshr i16 %i.aq, 8
  %i.as = and i16 %i.ar, 248
  %i.at = lshr i16 %i.aq, 13
  %i.au = or disjoint i16 %i.as, %i.at
  %i.av = trunc nuw i16 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store i8 %i.av, ptr %.017, align 1, !tbaa !12
  %i.ax = and i16 %i.aq, 2016                     ; 2 uses
  %i.ay = lshr exact i16 %i.ax, 3
  %i.az = lshr i16 %i.ax, 9
  %i.ba = or disjoint i16 %i.ay, %i.az
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.017, i64 2
  store i8 %i.bb, ptr %i.aw, align 1, !tbaa !12
  %i.bd = trunc i16 %i.aq to i8                   ; 2 uses
  %i.be = shl i8 %i.bd, 3
  %i.bf = lshr i8 %i.bd, 2
  %i.bg = and i8 %i.bf, 7
  %i.bh = or disjoint i8 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %.017, i64 3
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !12
  %i.bj = icmp ult ptr %i.ap, %i.c
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb16tobgr16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 1                           ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = ptrtoaddr ptr %1 to i64
end_hunk_0
begin_hunk_1_@x2rgb10tobgr64_nobswap:bb.a
  %i.e = shl nuw nsw i64 %wide.trip.count, 2
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %bound0 = icmp ult ptr %1, %i.f
  %bound1 = icmp ult ptr %0, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.g, align 1, !tbaa !12, !alias.scope !116 ; 4 uses
  %i.h = and <4 x i32> %wide.load, splat (i32 1023) ; 2 uses
  %i.i = shl nuw nsw <4 x i32> %i.h, splat (i32 6)
  %i.j = lshr <4 x i32> %i.h, splat (i32 4)
  %i.k = shl nuw nsw i64 %index, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.n = and <4 x i32> %i.m, splat (i32 65472)
  %i.o = lshr <4 x i32> %wide.load, splat (i32 14) ; 2 uses
  %i.p = and <4 x i32> %i.o, splat (i32 63)
  %i.q = and <4 x i32> %i.o, splat (i32 65472)
  %i.r = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.s = and <4 x i32> %i.r, splat (i32 63)
  %i.t = or disjoint <4 x i32> %i.q, %i.s
  %i.u = trunc nuw <4 x i32> %i.t to <4 x i16>
  %i.v = shufflevector <4 x i32> %i.i, <4 x i32> %i.n, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.w = shufflevector <4 x i32> %i.j, <4 x i32> %i.p, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.x = or disjoint <8 x i32> %i.v, %i.w
  %i.y = trunc nuw <8 x i32> %i.x to <8 x i16>
  %i.z = shufflevector <4 x i16> %i.u, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i16> %i.y, <8 x i16> %i.z, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i16> %interleaved.vec, ptr %i.l, align 2, !tbaa !15, !alias.scope !117, !noalias !116
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader27 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !12 ; 4 uses
  %i.ad = and i32 %i.ac, 1023                     ; 2 uses
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = lshr i32 %i.ad, 4
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = trunc nuw i32 %i.ag to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !15
  %i.aj = lshr i32 %i.ac, 4
  %i.ak = and i32 %i.aj, 65472
  %i.al = lshr i32 %i.ac, 14                      ; 2 uses
  %i.am = and i32 %i.al, 63
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = trunc nuw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !15
  %i.aq = and i32 %i.al, 65472
  %i.ar = lshr i32 %i.ac, 24
  %i.as = and i32 %i.ar, 63
  %i.at = or disjoint i32 %i.aq, %i.as
  %i.au = trunc nuw i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i16 %i.au, ptr %i.av, align 2, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  store i16 -1, ptr %i.aw, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @x2rgb10tobgr64_bswap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 2                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl nuw nsw i64 %wide.trip.count, 3
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = shl nuw nsw i64 %wide.trip.count, 2
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %bound0 = icmp ult ptr %1, %i.f
  %bound1 = icmp ult ptr %0, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.g, align 1, !tbaa !12, !alias.scope !123 ; 4 uses
  %i.h = and <4 x i32> %wide.load, splat (i32 1023) ; 2 uses
  %i.i = shl nuw nsw <4 x i32> %i.h, splat (i32 6)
  %i.j = lshr <4 x i32> %i.h, splat (i32 4)
  %i.k = shl nuw nsw i64 %index, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.n = and <4 x i32> %i.m, splat (i32 65472)
  %i.o = lshr <4 x i32> %wide.load, splat (i32 14) ; 2 uses
  %i.p = and <4 x i32> %i.o, splat (i32 63)
  %i.q = and <4 x i32> %i.o, splat (i32 65472)
  %i.r = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.s = and <4 x i32> %i.r, splat (i32 63)
  %i.t = or disjoint <4 x i32> %i.q, %i.s
  %i.u = trunc nuw <4 x i32> %i.t to <4 x i16>
  %i.v = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.u)
  %i.w = shufflevector <4 x i32> %i.i, <4 x i32> %i.n, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.x = shufflevector <4 x i32> %i.j, <4 x i32> %i.p, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.y = or disjoint <8 x i32> %i.w, %i.x
  %i.z = trunc nuw <8 x i32> %i.y to <8 x i16>
  %i.aa = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.z)
  %i.ab = shufflevector <4 x i16> %i.v, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i16> %i.aa, <8 x i16> %i.ab, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i16> %interleaved.vec, ptr %i.l, align 2, !tbaa !15, !alias.scope !124, !noalias !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader27 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !12 ; 4 uses
  %i.af = and i32 %i.ae, 1023                     ; 2 uses
  %i.ag = shl nuw nsw i32 %i.af, 6
  %i.ah = lshr i32 %i.af, 4
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = tail call i16 @llvm.bswap.i16(i16 %i.aj)
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !15
  %i.am = lshr i32 %i.ae, 4
  %i.an = and i32 %i.am, 65472
  %i.ao = lshr i32 %i.ae, 14                      ; 2 uses
  %i.ap = and i32 %i.ao, 63
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = trunc nuw i32 %i.aq to i16
  %i.as = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i16 %i.as, ptr %i.at, align 2, !tbaa !15
  %i.au = and i32 %i.ao, 65472
  %i.av = lshr i32 %i.ae, 24
  %i.aw = and i32 %i.av, 63
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = trunc nuw i32 %i.ax to i16
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  store i16 -1, ptr %i.bb, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb15to16_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.d = icmp sgt i32 %2, 3
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.g = add i64 %i.f, %i.a
  %i.h = add i64 %i.g, -3
  %i.i = add i64 %i.f, 4
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.k = xor i64 %i.f, -1
  %i.l = add i64 %i.j, %i.k                       ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  %i.o = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.p = shl i64 %n.vec, 2                        ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p       ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.p       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 2 uses
  %next.gep25 = getelementptr i8, ptr %0, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !11 ; 2 uses
  %wide.load26 = load <4 x i32>, ptr %i.t, align 4, !tbaa !11 ; 2 uses
  %i.u = and <4 x i32> %wide.load, splat (i32 2147450879)
  %i.v = and <4 x i32> %wide.load26, splat (i32 2147450879)
  %i.w = and <4 x i32> %wide.load, splat (i32 2145419232)
  %i.x = and <4 x i32> %wide.load26, splat (i32 2145419232)
  %i.y = add nuw <4 x i32> %i.u, %i.w
  %i.z = add nuw <4 x i32> %i.v, %i.x
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.y, ptr %next.gep, align 4, !tbaa !11
  store <4 x i32> %i.z, ptr %i.aa, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %.lr.ph.preheader, %middle.block
  %.020.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.01819.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.020 = phi ptr [ %i.ag, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader28 ] ; 2 uses
  %.01819 = phi ptr [ %i.ah, %.lr.ph ], [ %.01819.ph, %.lr.ph.preheader28 ] ; 2 uses
  %i.ac = load i32, ptr %.01819, align 4, !tbaa !11 ; 2 uses
  %i.ad = and i32 %i.ac, 2147450879
  %i.ae = and i32 %i.ac, 2145419232
  %i.af = add nuw i32 %i.ad, %i.ae
  store i32 %i.af, ptr %.020, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01819, i64 4 ; 3 uses
  %i.ai = icmp ult ptr %i.ah, %i.c
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.018.lcssa = phi ptr [ %0, %bb.a ], [ %i.r, %middle.block ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %middle.block ], [ %i.ag, %.lr.ph ]
  %i.aj = icmp ult ptr %.018.lcssa, %i.b
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ak = load i16, ptr %.018.lcssa, align 2, !tbaa !15 ; 2 uses
  %i.al = and i16 %i.ak, 32767
  %i.am = and i16 %i.ak, 32736
  %i.an = add nuw i16 %i.al, %i.am
  store i16 %i.an, ptr %.0.lcssa, align 2, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb15tobgr24_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 1                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.f = add i64 %.idx, %i.e
  %i.g = add i64 %i.e, 2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.i = xor i64 %i.e, -1
  %i.j = add i64 %i.h, %i.i                       ; 4 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 30
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = lshr i64 %i.j, 1
  %i.n = mul i64 %i.m, 3
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 3
  %i.q = and i64 %i.j, -2
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 2
  %bound0 = icmp ult ptr %1, %i.s
  %bound1 = icmp ult ptr %0, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.t = mul i64 %n.vec, 3
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = shl i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.x
  %i.y = shl i64 %index, 1
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.y
  %wide.load = load <8 x i16>, ptr %next.gep19, align 2, !tbaa !15, !alias.scope !132 ; 3 uses
  %i.z = and <8 x i16> %wide.load, splat (i16 31) ; 2 uses
  %i.aa = shl nuw nsw <8 x i16> %i.z, splat (i16 3)
  %i.ab = and <8 x i16> %wide.load, splat (i16 992) ; 2 uses
  %i.ac = lshr exact <8 x i16> %i.ab, splat (i16 2)
  %i.ad = and <8 x i16> %wide.load, splat (i16 31744) ; 2 uses
  %i.ae = lshr exact <8 x i16> %i.ad, splat (i16 7)
  %i.af = lshr <8 x i16> %i.ad, splat (i16 12)
  %i.ag = or disjoint <8 x i16> %i.ae, %i.af
  %i.ah = shufflevector <8 x i16> %i.aa, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ai = shufflevector <8 x i16> %i.z, <8 x i16> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aj = lshr <16 x i16> %i.ai, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.ak = or disjoint <16 x i16> %i.ah, %i.aj
  %i.al = trunc nuw <16 x i16> %i.ak to <16 x i8>
  %i.am = shufflevector <8 x i16> %i.ag, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = trunc nuw <16 x i16> %i.am to <16 x i8>
  %interleaved.vec = shufflevector <16 x i8> %i.al, <16 x i8> %i.an, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !12, !alias.scope !133, !noalias !132
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.01516.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %.017 = phi ptr [ %i.bi, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader21 ] ; 4 uses
  %.01516 = phi ptr [ %i.ap, %.lr.ph ], [ %.01516.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01516, i64 2 ; 2 uses
  %i.aq = load i16, ptr %.01516, align 2, !tbaa !15 ; 3 uses
  %i.ar = and i16 %i.aq, 31                       ; 2 uses
  %i.as = shl nuw nsw i16 %i.ar, 3
  %i.at = lshr i16 %i.ar, 2
  %i.au = or disjoint i16 %i.as, %i.at
  %i.av = trunc nuw i16 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store i8 %i.av, ptr %.017, align 1, !tbaa !12
  %i.ax = and i16 %i.aq, 992                      ; 2 uses
  %i.ay = lshr exact i16 %i.ax, 2
  %i.az = lshr i16 %i.ax, 7
  %i.ba = or disjoint i16 %i.ay, %i.az
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.017, i64 2
  store i8 %i.bb, ptr %i.aw, align 1, !tbaa !12
  %i.bd = and i16 %i.aq, 31744                    ; 2 uses
  %i.be = lshr exact i16 %i.bd, 7
  %i.bf = lshr i16 %i.bd, 12
  %i.bg = or disjoint i16 %i.be, %i.bf
  %i.bh = trunc nuw i16 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.017, i64 3
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !12
  %i.bj = icmp ult ptr %i.ap, %i.c
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb15to32_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 1
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %i.y, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01617 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01617, i64 2 ; 2 uses
  %i.f = load i16, ptr %.01617, align 2, !tbaa !15 ; 3 uses
  %i.g = and i16 %i.f, 31                         ; 2 uses
  %i.h = shl nuw nsw i16 %i.g, 3
  %i.i = lshr i16 %i.g, 2
  %i.j = or disjoint i16 %i.h, %i.i
  %i.k = trunc nuw i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.k, ptr %.018, align 1, !tbaa !12
  %i.m = and i16 %i.f, 992                        ; 2 uses
  %i.n = lshr exact i16 %i.m, 2
  %i.o = lshr i16 %i.m, 7
  %i.p = or disjoint i16 %i.n, %i.o
  %i.q = trunc nuw i16 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %i.q, ptr %i.l, align 1, !tbaa !12
  %i.s = and i16 %i.f, 31744                      ; 2 uses
  %i.t = lshr exact i16 %i.s, 7
  %i.u = lshr i16 %i.s, 12
  %i.v = or disjoint i16 %i.t, %i.u
  %i.w = trunc nuw i16 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %i.w, ptr %i.r, align 1, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 -1, ptr %i.x, align 1, !tbaa !12
  %i.z = icmp ult ptr %i.e, %i.c
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !134

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb16tobgr24_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 1                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.f = add i64 %.idx, %i.e
  %i.g = add i64 %i.e, 2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.i = xor i64 %i.e, -1
  %i.j = add i64 %i.h, %i.i                       ; 4 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 30
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = lshr i64 %i.j, 1
  %i.n = mul i64 %i.m, 3
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 3
  %i.q = and i64 %i.j, -2
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 2
  %bound0 = icmp ult ptr %1, %i.s
  %bound1 = icmp ult ptr %0, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.t = mul i64 %n.vec, 3
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = shl i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.x
  %i.y = shl i64 %index, 1
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.y
  %wide.load = load <8 x i16>, ptr %next.gep19, align 2, !tbaa !15, !alias.scope !140 ; 4 uses
  %i.z = and <8 x i16> %wide.load, splat (i16 31) ; 2 uses
  %i.aa = shl nuw nsw <8 x i16> %i.z, splat (i16 3)
  %i.ab = and <8 x i16> %wide.load, splat (i16 2016) ; 2 uses
  %i.ac = lshr exact <8 x i16> %i.ab, splat (i16 3)
  %i.ad = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.ae = and <8 x i16> %i.ad, splat (i16 248)
  %i.af = lshr <8 x i16> %wide.load, splat (i16 13)
  %i.ag = or disjoint <8 x i16> %i.ae, %i.af
  %i.ah = shufflevector <8 x i16> %i.aa, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ai = shufflevector <8 x i16> %i.z, <8 x i16> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aj = lshr <16 x i16> %i.ai, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>
  %i.ak = or disjoint <16 x i16> %i.ah, %i.aj
  %i.al = trunc nuw <16 x i16> %i.ak to <16 x i8>
  %i.am = shufflevector <8 x i16> %i.ag, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = trunc nuw <16 x i16> %i.am to <16 x i8>
  %interleaved.vec = shufflevector <16 x i8> %i.al, <16 x i8> %i.an, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !12, !alias.scope !141, !noalias !140
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.01516.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %.017 = phi ptr [ %i.bi, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader21 ] ; 4 uses
  %.01516 = phi ptr [ %i.ap, %.lr.ph ], [ %.01516.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01516, i64 2 ; 2 uses
  %i.aq = load i16, ptr %.01516, align 2, !tbaa !15 ; 4 uses
  %i.ar = and i16 %i.aq, 31                       ; 2 uses
  %i.as = shl nuw nsw i16 %i.ar, 3
  %i.at = lshr i16 %i.ar, 2
  %i.au = or disjoint i16 %i.as, %i.at
  %i.av = trunc nuw i16 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store i8 %i.av, ptr %.017, align 1, !tbaa !12
  %i.ax = and i16 %i.aq, 2016                     ; 2 uses
  %i.ay = lshr exact i16 %i.ax, 3
  %i.az = lshr i16 %i.ax, 9
  %i.ba = or disjoint i16 %i.ay, %i.az
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.017, i64 2
  store i8 %i.bb, ptr %i.aw, align 1, !tbaa !12
  %i.bd = lshr i16 %i.aq, 8
  %i.be = and i16 %i.bd, 248
  %i.bf = lshr i16 %i.aq, 13
  %i.bg = or disjoint i16 %i.be, %i.bf
  %i.bh = trunc nuw i16 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.017, i64 3
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !12
  %i.bj = icmp ult ptr %i.ap, %i.c
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb16to32_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 1
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %i.y, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01617 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01617, i64 2 ; 2 uses
  %i.f = load i16, ptr %.01617, align 2, !tbaa !15 ; 4 uses
  %i.g = and i16 %i.f, 31                         ; 2 uses
  %i.h = shl nuw nsw i16 %i.g, 3
  %i.i = lshr i16 %i.g, 2
  %i.j = or disjoint i16 %i.h, %i.i
  %i.k = trunc nuw i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.k, ptr %.018, align 1, !tbaa !12
  %i.m = and i16 %i.f, 2016                       ; 2 uses
  %i.n = lshr exact i16 %i.m, 3
  %i.o = lshr i16 %i.m, 9
  %i.p = or disjoint i16 %i.n, %i.o
  %i.q = trunc nuw i16 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %i.q, ptr %i.l, align 1, !tbaa !12
  %i.s = lshr i16 %i.f, 8
  %i.t = and i16 %i.s, 248
  %i.u = lshr i16 %i.f, 13
  %i.v = or disjoint i16 %i.t, %i.u
  %i.w = trunc nuw i16 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %i.w, ptr %i.r, align 1, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 -1, ptr %i.x, align 1, !tbaa !12
  %i.z = icmp ult ptr %i.e, %i.c
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !142

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb16to15_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.d = icmp sgt i32 %2, 3
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.g = add i64 %i.f, %i.a
  %i.h = add i64 %i.g, -3
  %i.i = add i64 %i.f, 4
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.k = xor i64 %i.f, -1
  %i.l = add i64 %i.j, %i.k                       ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  %i.o = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.p = shl i64 %n.vec, 2                        ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p       ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.p       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 2 uses
  %next.gep25 = getelementptr i8, ptr %0, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !11 ; 2 uses
  %wide.load26 = load <4 x i32>, ptr %i.t, align 4, !tbaa !11 ; 2 uses
  %i.u = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.v = lshr <4 x i32> %wide.load26, splat (i32 1)
  %i.w = and <4 x i32> %i.u, splat (i32 2145419232)
  %i.x = and <4 x i32> %i.v, splat (i32 2145419232)
  %i.y = and <4 x i32> %wide.load, splat (i32 2031647)
  %i.z = and <4 x i32> %wide.load26, splat (i32 2031647)
  %i.aa = or disjoint <4 x i32> %i.w, %i.y
  %i.ab = or disjoint <4 x i32> %i.x, %i.z
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.aa, ptr %next.gep, align 4, !tbaa !11
  store <4 x i32> %i.ab, ptr %i.ac, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %.lr.ph.preheader, %middle.block
  %.020.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.01819.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.020 = phi ptr [ %i.ak, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader28 ] ; 2 uses
  %.01819 = phi ptr [ %i.aj, %.lr.ph ], [ %.01819.ph, %.lr.ph.preheader28 ] ; 2 uses
  %i.ae = load i32, ptr %.01819, align 4, !tbaa !11 ; 2 uses
  %i.af = lshr i32 %i.ae, 1
  %i.ag = and i32 %i.af, 2145419232
  %i.ah = and i32 %i.ae, 2031647
  %i.ai = or disjoint i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %.020, align 4, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %.01819, i64 4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.c
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.018.lcssa = phi ptr [ %0, %bb.a ], [ %i.r, %middle.block ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %middle.block ], [ %i.ak, %.lr.ph ]
  %i.am = icmp ult ptr %.018.lcssa, %i.b
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.an = load i16, ptr %.018.lcssa, align 2, !tbaa !15 ; 2 uses
  %i.ao = lshr i16 %i.an, 1
  %i.ap = and i16 %i.ao, 32736
  %i.aq = and i16 %i.an, 31
  %i.ar = or disjoint i16 %i.ap, %i.aq
  store i16 %i.ar, ptr %.0.lcssa, align 2, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb24tobgr16_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.e = add i64 %i.d, %i.a
  %i.f = add i64 %i.d, 3
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.h = add i64 %i.g, -3                         ; 2 uses
  %i.i = icmp ne i64 %i.h, %i.d
  %i.j = zext i1 %i.i to i64                      ; 2 uses
  %i.k = add i64 %i.d, %i.j
  %i.l = sub i64 %i.h, %i.k
  %i.m = udiv i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, %i.j               ; 4 uses
  %i.o = add nuw i64 %i.n, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 15
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.p = shl nuw i64 %i.n, 1
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 2
  %i.s = mul i64 %i.n, 3
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 3
  %bound0 = icmp ult ptr %1, %i.u
  %bound1 = icmp ult ptr %0, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -8                       ; 4 uses
  %i.v = shl i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %i.x = mul i64 %n.vec, 3
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.z
  %i.aa = mul i64 %index, 3                       ; 8 uses
  %next.gep16 = getelementptr i8, ptr %0, i64 %i.aa ; 3 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa     ; 3 uses
  %next.gep17 = getelementptr i8, ptr %i.ab, i64 3
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa     ; 3 uses
  %next.gep18 = getelementptr i8, ptr %i.ac, i64 6
  %i.ad = getelementptr i8, ptr %0, i64 %i.aa     ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.ad, i64 9
  %i.ae = getelementptr i8, ptr %0, i64 %i.aa     ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.ae, i64 12
  %i.af = getelementptr i8, ptr %0, i64 %i.aa     ; 3 uses
  %next.gep21 = getelementptr i8, ptr %i.af, i64 15
  %i.ag = getelementptr i8, ptr %0, i64 %i.aa     ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.ag, i64 18
  %i.ah = getelementptr i8, ptr %0, i64 %i.aa     ; 3 uses
  %next.gep23 = getelementptr i8, ptr %i.ah, i64 21
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep16, i64 1
  %i.aj = getelementptr i8, ptr %i.ab, i64 4
  %i.ak = getelementptr i8, ptr %i.ac, i64 7
  %i.al = getelementptr i8, ptr %i.ad, i64 10
  %i.am = getelementptr i8, ptr %i.ae, i64 13
  %i.an = getelementptr i8, ptr %i.af, i64 16
  %i.ao = getelementptr i8, ptr %i.ag, i64 19
  %i.ap = getelementptr i8, ptr %i.ah, i64 22
  %i.aq = load i8, ptr %next.gep16, align 1, !tbaa !12, !alias.scope !150
  %i.ar = load i8, ptr %next.gep17, align 1, !tbaa !12, !alias.scope !150
  %i.as = load i8, ptr %next.gep18, align 1, !tbaa !12, !alias.scope !150
  %i.at = load i8, ptr %next.gep19, align 1, !tbaa !12, !alias.scope !150
  %i.au = load i8, ptr %next.gep20, align 1, !tbaa !12, !alias.scope !150
  %i.av = load i8, ptr %next.gep21, align 1, !tbaa !12, !alias.scope !150
  %i.aw = load i8, ptr %next.gep22, align 1, !tbaa !12, !alias.scope !150
  %i.ax = load i8, ptr %next.gep23, align 1, !tbaa !12, !alias.scope !150
  %i.ay = insertelement <8 x i8> poison, i8 %i.aq, i64 0
  %i.az = insertelement <8 x i8> %i.ay, i8 %i.ar, i64 1
  %i.ba = insertelement <8 x i8> %i.az, i8 %i.as, i64 2
  %i.bb = insertelement <8 x i8> %i.ba, i8 %i.at, i64 3
  %i.bc = insertelement <8 x i8> %i.bb, i8 %i.au, i64 4
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 5
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 6
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 7
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep16, i64 2
  %i.bh = getelementptr i8, ptr %i.ab, i64 5
  %i.bi = getelementptr i8, ptr %i.ac, i64 8
  %i.bj = getelementptr i8, ptr %i.ad, i64 11
  %i.bk = getelementptr i8, ptr %i.ae, i64 14
  %i.bl = getelementptr i8, ptr %i.af, i64 17
  %i.bm = getelementptr i8, ptr %i.ag, i64 20
  %i.bn = getelementptr i8, ptr %i.ah, i64 23
  %i.bo = load i8, ptr %i.ai, align 1, !tbaa !12, !alias.scope !150
  %i.bp = load i8, ptr %i.aj, align 1, !tbaa !12, !alias.scope !150
  %i.bq = load i8, ptr %i.ak, align 1, !tbaa !12, !alias.scope !150
  %i.br = load i8, ptr %i.al, align 1, !tbaa !12, !alias.scope !150
  %i.bs = load i8, ptr %i.am, align 1, !tbaa !12, !alias.scope !150
  %i.bt = load i8, ptr %i.an, align 1, !tbaa !12, !alias.scope !150
  %i.bu = load i8, ptr %i.ao, align 1, !tbaa !12, !alias.scope !150
  %i.bv = load i8, ptr %i.ap, align 1, !tbaa !12, !alias.scope !150
  %i.bw = insertelement <8 x i8> poison, i8 %i.bo, i64 0
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bp, i64 1
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.bq, i64 2
  %i.bz = insertelement <8 x i8> %i.by, i8 %i.br, i64 3
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 4
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 5
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 6
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 7
  %i.ce = load i8, ptr %i.bg, align 1, !tbaa !12, !alias.scope !150
  %i.cf = load i8, ptr %i.bh, align 1, !tbaa !12, !alias.scope !150
  %i.cg = load i8, ptr %i.bi, align 1, !tbaa !12, !alias.scope !150
  %i.ch = load i8, ptr %i.bj, align 1, !tbaa !12, !alias.scope !150
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !12, !alias.scope !150
  %i.cj = load i8, ptr %i.bl, align 1, !tbaa !12, !alias.scope !150
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !12, !alias.scope !150
  %i.cl = load i8, ptr %i.bn, align 1, !tbaa !12, !alias.scope !150
  %i.cm = insertelement <8 x i8> poison, i8 %i.ce, i64 0
  %i.cn = insertelement <8 x i8> %i.cm, i8 %i.cf, i64 1
  %i.co = insertelement <8 x i8> %i.cn, i8 %i.cg, i64 2
  %i.cp = insertelement <8 x i8> %i.co, i8 %i.ch, i64 3
end_hunk_1
