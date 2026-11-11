Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rgb2rgb?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ff_rgb24toyv12_c:bb.a
  %i.eg = xor i8 %i.ef, -128
  %i.eh = getelementptr inbounds nuw i8, ptr %.0144, i64 %indvars.iv
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !12
  %i.ei = trunc i32 %i.dq to i8
  %i.ej = xor i8 %i.ei, -128
  %i.ek = getelementptr inbounds nuw i8, ptr %.0127143, i64 %indvars.iv
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.b
  %i.el = getelementptr inbounds i8, ptr %.0129141, i64 %i.v
  %i.em = getelementptr inbounds i8, ptr %spec.select136, i64 %i.v
  %i.en = getelementptr inbounds i8, ptr %.0131139, i64 %i.x
  %i.eo = getelementptr inbounds i8, ptr %spec.select, i64 %i.x
  %i.ep = getelementptr inbounds i8, ptr %.0144, i64 %i.y
  %i.eq = getelementptr inbounds i8, ptr %.0127143, i64 %i.y
  %i.er = add nuw nsw i32 %.0128142, 2            ; 2 uses
  %i.es = icmp slt i32 %i.er, %5
  br i1 %i.es, label %.lr.ph, label %._crit_edge147.split, !llvm.loop !21

._crit_edge147.split:                             ; preds = %._crit_edge, %.lr.ph146, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_sws_rgb2rgb_init() local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @rgb2rgb_init_c() #6
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @rgb2rgb_init_c() unnamed_addr #2 {
bb.a:
  store ptr @rgb15to16_c, ptr @rgb15to16, align 8, !tbaa !23
  store ptr @rgb15tobgr24_c, ptr @rgb15tobgr24, align 8, !tbaa !23
  store ptr @rgb15to32_c, ptr @rgb15to32, align 8, !tbaa !23
  store ptr @rgb16tobgr24_c, ptr @rgb16tobgr24, align 8, !tbaa !23
  store ptr @rgb16to32_c, ptr @rgb16to32, align 8, !tbaa !23
  store ptr @rgb16to15_c, ptr @rgb16to15, align 8, !tbaa !23
  store ptr @rgb24tobgr16_c, ptr @rgb24tobgr16, align 8, !tbaa !23
  store ptr @rgb24tobgr15_c, ptr @rgb24tobgr15, align 8, !tbaa !23
  store ptr @rgb24tobgr32_c, ptr @rgb24tobgr32, align 8, !tbaa !23
  store ptr @rgb32to16_c, ptr @rgb32to16, align 8, !tbaa !23
  store ptr @rgb32to15_c, ptr @rgb32to15, align 8, !tbaa !23
  store ptr @rgb32tobgr24_c, ptr @rgb32tobgr24, align 8, !tbaa !23
  store ptr @rgb24to15_c, ptr @rgb24to15, align 8, !tbaa !23
  store ptr @rgb24to16_c, ptr @rgb24to16, align 8, !tbaa !23
  store ptr @rgb24tobgr24_c, ptr @rgb24tobgr24, align 8, !tbaa !23
  store ptr @shuffle_bytes_0321_c, ptr @shuffle_bytes_0321, align 8, !tbaa !23
  store ptr @shuffle_bytes_2103_c, ptr @shuffle_bytes_2103, align 8, !tbaa !23
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
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %i.w, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01617 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01617, i64 2 ; 2 uses
  %i.d = load i16, ptr %.01617, align 2, !tbaa !15 ; 4 uses
  %i.e = lshr i16 %i.d, 8
  %i.f = and i16 %i.e, 248
  %i.g = lshr i16 %i.d, 13
  %i.h = or disjoint i16 %i.f, %i.g
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.i, ptr %.018, align 1, !tbaa !12
  %i.k = and i16 %i.d, 2016                       ; 2 uses
  %i.l = lshr exact i16 %i.k, 3
  %i.m = lshr i16 %i.k, 9
  %i.n = or disjoint i16 %i.l, %i.m
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %i.o, ptr %i.j, align 1, !tbaa !12
  %i.q = trunc i16 %i.d to i8                     ; 2 uses
  %i.r = shl i8 %i.q, 3
  %i.s = lshr i8 %i.q, 2
  %i.t = and i8 %i.s, 7
  %i.u = or disjoint i8 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %i.u, ptr %i.p, align 1, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 -1, ptr %i.v, align 1, !tbaa !12
  %i.x = icmp ult ptr %i.c, %i.a
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb12to15(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1                       ; 2 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.e = add i64 %.idx, %i.d
  %i.f = add i64 %i.d, 2
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.h = xor i64 %i.d, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = add nuw i64 %i.j, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 14
  %i.l = sub i64 %i.d, %i.c
  %diff.check = icmp ugt i64 %i.l, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  %i.m = shl i64 %n.vec, 1                        ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %i.o = getelementptr i8, ptr %1, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.p
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.p
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !15 ; 5 uses
  %i.q = and <8 x i16> %wide.load, splat (i16 15) ; 2 uses
  %i.r = shl <8 x i16> %wide.load, splat (i16 3)
  %i.s = and <8 x i16> %i.r, splat (i16 30720)
  %i.t = lshr <8 x i16> %wide.load, splat (i16 1)
  %i.u = and <8 x i16> %i.t, splat (i16 1024)
  %i.v = shl <8 x i16> %wide.load, splat (i16 2)
  %i.w = and <8 x i16> %i.v, splat (i16 960)
  %i.x = lshr <8 x i16> %wide.load, splat (i16 2)
  %i.y = and <8 x i16> %i.x, splat (i16 32)
  %i.z = shl nuw nsw <8 x i16> %i.q, splat (i16 1)
  %i.aa = lshr <8 x i16> %i.q, splat (i16 3)
  %i.ab = or disjoint <8 x i16> %i.z, %i.aa
  %i.ac = or disjoint <8 x i16> %i.ab, %i.y
  %i.ad = or disjoint <8 x i16> %i.ac, %i.w
  %i.ae = or disjoint <8 x i16> %i.ad, %i.u
  %i.af = or disjoint <8 x i16> %i.ae, %i.s
  store <8 x i16> %i.af, ptr %next.gep22, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader24

.lr.ph.preheader24:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.01920.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader24, %.lr.ph
  %.021 = phi ptr [ %i.ah, %.lr.ph ], [ %.021.ph, %.lr.ph.preheader24 ] ; 2 uses
  %.01920 = phi ptr [ %i.az, %.lr.ph ], [ %.01920.ph, %.lr.ph.preheader24 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.021, i64 2 ; 2 uses
  %i.ai = load i16, ptr %.021, align 2, !tbaa !15 ; 5 uses
  %i.aj = and i16 %i.ai, 15                       ; 2 uses
  %i.ak = shl i16 %i.ai, 3
  %i.al = and i16 %i.ak, 30720
  %i.am = lshr i16 %i.ai, 1
  %i.an = and i16 %i.am, 1024
  %i.ao = shl i16 %i.ai, 2
  %i.ap = and i16 %i.ao, 960
  %i.aq = lshr i16 %i.ai, 2
  %i.ar = and i16 %i.aq, 32
  %i.as = shl nuw nsw i16 %i.aj, 1
  %i.at = lshr i16 %i.aj, 3
  %i.au = or disjoint i16 %i.as, %i.at
  %i.av = or disjoint i16 %i.au, %i.ar
  %i.aw = or disjoint i16 %i.av, %i.ap
  %i.ax = or disjoint i16 %i.aw, %i.an
  %i.ay = or disjoint i16 %i.ax, %i.al
  %i.az = getelementptr inbounds nuw i8, ptr %.01920, i64 2
  store i16 %i.ay, ptr %.01920, align 2, !tbaa !15
  %i.ba = icmp ult ptr %i.ah, %i.a
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb16to24(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1                       ; 2 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.d = add i64 %.idx, %i.c
  %i.e = add i64 %i.c, 2
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.e)
  %i.g = xor i64 %i.c, -1
  %i.h = add i64 %i.f, %i.g                       ; 4 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 30
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = lshr i64 %i.h, 1
  %i.l = mul i64 %i.k, 3
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 3
  %i.o = and i64 %i.h, -2
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 2
  %bound0 = icmp ult ptr %1, %i.q
  %bound1 = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 4 uses
  %i.r = mul i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.v
  %i.w = shl i64 %index, 1
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.w
  %wide.load = load <8 x i16>, ptr %next.gep19, align 2, !tbaa !15, !alias.scope !34 ; 4 uses
  %i.x = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.y = and <8 x i16> %i.x, splat (i16 248)
  %i.z = and <8 x i16> %wide.load, splat (i16 2016) ; 2 uses
  %i.aa = lshr exact <8 x i16> %i.z, splat (i16 3)
  %i.ab = trunc <8 x i16> %wide.load to <8 x i8>  ; 2 uses
  %i.ac = shl <8 x i8> %i.ab, splat (i8 3)
  %i.ad = lshr <8 x i8> %i.ab, splat (i8 2)
  %i.ae = and <8 x i8> %i.ad, splat (i8 7)
  %i.af = or disjoint <8 x i8> %i.ae, %i.ac
  %i.ag = shufflevector <8 x i16> %i.y, <8 x i16> %i.aa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = shufflevector <8 x i16> %wide.load, <8 x i16> %i.z, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ai = lshr <16 x i16> %i.ah, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>
  %i.aj = or disjoint <16 x i16> %i.ag, %i.ai
  %i.ak = trunc nuw <16 x i16> %i.aj to <16 x i8>
  %i.al = shufflevector <8 x i8> %i.af, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i8> %i.ak, <16 x i8> %i.al, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !12, !alias.scope !35, !noalias !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %.01516.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %.017 = phi ptr [ %i.bg, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader21 ] ; 4 uses
  %.01516 = phi ptr [ %i.an, %.lr.ph ], [ %.01516.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01516, i64 2 ; 2 uses
  %i.ao = load i16, ptr %.01516, align 2, !tbaa !15 ; 4 uses
  %i.ap = lshr i16 %i.ao, 8
  %i.aq = and i16 %i.ap, 248
  %i.ar = lshr i16 %i.ao, 13
  %i.as = or disjoint i16 %i.aq, %i.ar
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store i8 %i.at, ptr %.017, align 1, !tbaa !12
  %i.av = and i16 %i.ao, 2016                     ; 2 uses
  %i.aw = lshr exact i16 %i.av, 3
  %i.ax = lshr i16 %i.av, 9
  %i.ay = or disjoint i16 %i.aw, %i.ax
  %i.az = trunc nuw i16 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.017, i64 2
  store i8 %i.az, ptr %i.au, align 1, !tbaa !12
  %i.bb = trunc i16 %i.ao to i8                   ; 2 uses
  %i.bc = shl i8 %i.bb, 3
  %i.bd = lshr i8 %i.bb, 2
  %i.be = and i8 %i.bd, 7
  %i.bf = or disjoint i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.017, i64 3
  store i8 %i.bf, ptr %i.ba, align 1, !tbaa !12
  %i.bh = icmp ult ptr %i.an, %i.a
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !33

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
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  %i.e = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i32 %i.a, 16
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !15 ; 3 uses
  %wide.load13 = load <8 x i16>, ptr %i.h, align 2, !tbaa !15 ; 3 uses
  %i.i = lshr <8 x i16> %wide.load, splat (i16 11)
  %i.j = lshr <8 x i16> %wide.load13, splat (i16 11)
  %i.k = and <8 x i16> %wide.load, splat (i16 2016)
  %i.l = and <8 x i16> %wide.load13, splat (i16 2016)
  %i.m = or disjoint <8 x i16> %i.i, %i.k
  %i.n = or disjoint <8 x i16> %i.j, %i.l
  %i.o = shl <8 x i16> %wide.load, splat (i16 11)
  %i.p = shl <8 x i16> %wide.load13, splat (i16 11)
  %i.q = or disjoint <8 x i16> %i.m, %i.o
  %i.r = or disjoint <8 x i16> %i.n, %i.p
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <8 x i16> %i.q, ptr %i.s, align 2, !tbaa !15
  store <8 x i16> %i.r, ptr %i.t, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index15
  %wide.load16 = load <4 x i16>, ptr %i.v, align 2, !tbaa !15 ; 3 uses
  %i.w = lshr <4 x i16> %wide.load16, splat (i16 11)
  %i.x = and <4 x i16> %wide.load16, splat (i16 2016)
  %i.y = or disjoint <4 x i16> %i.w, %i.x
  %i.z = shl <4 x i16> %wide.load16, splat (i16 11)
  %i.aa = or disjoint <4 x i16> %i.y, %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index15
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !tbaa !15
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count
  br i1 %cmp.n18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !15 ; 3 uses
  %i.af = lshr i16 %i.ae, 11
  %i.ag = and i16 %i.ae, 2016
  %i.ah = or disjoint i16 %i.af, %i.ag
  %i.ai = shl i16 %i.ae, 11
  %i.aj = or disjoint i16 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !15
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.al = add nsw i64 %wide.trip.count, -1
  %i.am = icmp eq i64 %indvars.iv.ph, %i.al
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !15 ; 3 uses
  %i.ap = lshr i16 %i.ao, 11
  %i.aq = and i16 %i.ao, 2016
  %i.ar = or disjoint i16 %i.ap, %i.aq
  %i.as = shl i16 %i.ao, 11
  %i.at = or disjoint i16 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.at, ptr %i.au, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !15 ; 3 uses
  %i.ax = lshr i16 %i.aw, 11
  %i.ay = and i16 %i.aw, 2016
  %i.az = or disjoint i16 %i.ax, %i.ay
  %i.ba = shl i16 %i.aw, 11
  %i.bb = or disjoint i16 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb16tobgr15(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 1                           ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  %i.e = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i32 %i.a, 16
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !15 ; 3 uses
  %wide.load13 = load <8 x i16>, ptr %i.h, align 2, !tbaa !15 ; 3 uses
  %i.i = lshr <8 x i16> %wide.load, splat (i16 11)
  %i.j = lshr <8 x i16> %wide.load13, splat (i16 11)
  %i.k = lshr <8 x i16> %wide.load, splat (i16 1)
  %i.l = lshr <8 x i16> %wide.load13, splat (i16 1)
  %i.m = and <8 x i16> %i.k, splat (i16 992)
  %i.n = and <8 x i16> %i.l, splat (i16 992)
  %i.o = or disjoint <8 x i16> %i.m, %i.i
  %i.p = or disjoint <8 x i16> %i.n, %i.j
  %i.q = shl <8 x i16> %wide.load, splat (i16 10)
  %i.r = shl <8 x i16> %wide.load13, splat (i16 10)
  %i.s = and <8 x i16> %i.q, splat (i16 31744)
  %i.t = and <8 x i16> %i.r, splat (i16 31744)
  %i.u = or disjoint <8 x i16> %i.o, %i.s
  %i.v = or disjoint <8 x i16> %i.p, %i.t
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <8 x i16> %i.u, ptr %i.w, align 2, !tbaa !15
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index15
  %wide.load16 = load <4 x i16>, ptr %i.z, align 2, !tbaa !15 ; 3 uses
  %i.aa = lshr <4 x i16> %wide.load16, splat (i16 11)
  %i.ab = lshr <4 x i16> %wide.load16, splat (i16 1)
  %i.ac = and <4 x i16> %i.ab, splat (i16 992)
  %i.ad = or disjoint <4 x i16> %i.ac, %i.aa
  %i.ae = shl <4 x i16> %wide.load16, splat (i16 10)
  %i.af = and <4 x i16> %i.ae, splat (i16 31744)
  %i.ag = or disjoint <4 x i16> %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index15
  store <4 x i16> %i.ag, ptr %i.ah, align 2, !tbaa !15
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count
  br i1 %cmp.n18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !15 ; 3 uses
  %i.al = lshr i16 %i.ak, 11
  %i.am = lshr i16 %i.ak, 1
  %i.an = and i16 %i.am, 992
  %i.ao = or disjoint i16 %i.an, %i.al
  %i.ap = shl i16 %i.ak, 10
  %i.aq = and i16 %i.ap, 31744
  %i.ar = or disjoint i16 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !15
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.at = add nsw i64 %wide.trip.count, -1
  %i.au = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !15 ; 3 uses
  %i.ax = lshr i16 %i.aw, 11
  %i.ay = lshr i16 %i.aw, 1
  %i.az = and i16 %i.ay, 992
  %i.ba = or disjoint i16 %i.az, %i.ax
  %i.bb = shl i16 %i.aw, 10
  %i.bc = and i16 %i.bb, 31744
  %i.bd = or disjoint i16 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !15 ; 3 uses
  %i.bh = lshr i16 %i.bg, 11
  %i.bi = lshr i16 %i.bg, 1
  %i.bj = and i16 %i.bi, 992
  %i.bk = or disjoint i16 %i.bj, %i.bh
  %i.bl = shl i16 %i.bg, 10
  %i.bm = and i16 %i.bl, 31744
  %i.bn = or disjoint i16 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb15tobgr32(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %i.w, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01617 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01617, i64 2 ; 2 uses
  %i.d = load i16, ptr %.01617, align 2, !tbaa !15 ; 3 uses
  %i.e = and i16 %i.d, 31744                      ; 2 uses
  %i.f = lshr exact i16 %i.e, 7
  %i.g = lshr i16 %i.e, 12
  %i.h = or disjoint i16 %i.f, %i.g
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.i, ptr %.018, align 1, !tbaa !12
  %i.k = and i16 %i.d, 992                        ; 2 uses
  %i.l = lshr exact i16 %i.k, 2
  %i.m = lshr i16 %i.k, 7
  %i.n = or disjoint i16 %i.l, %i.m
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %i.o, ptr %i.j, align 1, !tbaa !12
  %i.q = trunc i16 %i.d to i8                     ; 2 uses
  %i.r = shl i8 %i.q, 3
  %i.s = lshr i8 %i.q, 2
  %i.t = and i8 %i.s, 7
  %i.u = or disjoint i8 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %i.u, ptr %i.p, align 1, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 -1, ptr %i.v, align 1, !tbaa !12
  %i.x = icmp ult ptr %i.c, %i.a
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb15to24(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1                       ; 2 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.d = add i64 %.idx, %i.c
  %i.e = add i64 %i.c, 2
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.e)
  %i.g = xor i64 %i.c, -1
  %i.h = add i64 %i.f, %i.g                       ; 4 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 30
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = lshr i64 %i.h, 1
  %i.l = mul i64 %i.k, 3
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 3
  %i.o = and i64 %i.h, -2
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 2
  %bound0 = icmp ult ptr %1, %i.q
  %bound1 = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 4 uses
  %i.r = mul i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.v
  %i.w = shl i64 %index, 1
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.w
  %wide.load = load <8 x i16>, ptr %next.gep19, align 2, !tbaa !15, !alias.scope !48 ; 3 uses
  %i.x = and <8 x i16> %wide.load, splat (i16 31744) ; 2 uses
  %i.y = and <8 x i16> %wide.load, splat (i16 992) ; 2 uses
  %i.z = trunc <8 x i16> %wide.load to <8 x i8>   ; 2 uses
  %i.aa = shl <8 x i8> %i.z, splat (i8 3)
  %i.ab = lshr <8 x i8> %i.z, splat (i8 2)
  %i.ac = and <8 x i8> %i.ab, splat (i8 7)
  %i.ad = or disjoint <8 x i8> %i.ac, %i.aa
  %i.ae = shufflevector <8 x i16> %i.x, <8 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.af = lshr exact <16 x i16> %i.ae, <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  %i.ag = shufflevector <8 x i16> %i.x, <8 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = lshr <16 x i16> %i.ag, <i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.ai = or disjoint <16 x i16> %i.af, %i.ah
  %i.aj = trunc nuw <16 x i16> %i.ai to <16 x i8>
  %i.ak = shufflevector <8 x i8> %i.ad, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !12, !alias.scope !49, !noalias !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %.01516.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %.017 = phi ptr [ %i.bf, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader21 ] ; 4 uses
  %.01516 = phi ptr [ %i.am, %.lr.ph ], [ %.01516.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01516, i64 2 ; 2 uses
  %i.an = load i16, ptr %.01516, align 2, !tbaa !15 ; 3 uses
  %i.ao = and i16 %i.an, 31744                    ; 2 uses
  %i.ap = lshr exact i16 %i.ao, 7
  %i.aq = lshr i16 %i.ao, 12
  %i.ar = or disjoint i16 %i.ap, %i.aq
  %i.as = trunc nuw i16 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store i8 %i.as, ptr %.017, align 1, !tbaa !12
  %i.au = and i16 %i.an, 992                      ; 2 uses
  %i.av = lshr exact i16 %i.au, 2
  %i.aw = lshr i16 %i.au, 7
  %i.ax = or disjoint i16 %i.av, %i.aw
  %i.ay = trunc nuw i16 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.017, i64 2
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !12
  %i.ba = trunc i16 %i.an to i8                   ; 2 uses
  %i.bb = shl i8 %i.ba, 3
  %i.bc = lshr i8 %i.ba, 2
  %i.bd = and i8 %i.bc, 7
  %i.be = or disjoint i8 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %.017, i64 3
  store i8 %i.be, ptr %i.az, align 1, !tbaa !12
  %i.bg = icmp ult ptr %i.am, %i.a
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rgb15tobgr16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 1                           ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  %i.e = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i32 %i.a, 16
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !15 ; 3 uses
  %wide.load13 = load <8 x i16>, ptr %i.h, align 2, !tbaa !15 ; 3 uses
  %i.i = lshr <8 x i16> %wide.load, splat (i16 10)
  %i.j = lshr <8 x i16> %wide.load13, splat (i16 10)
  %i.k = and <8 x i16> %i.i, splat (i16 31)
  %i.l = and <8 x i16> %i.j, splat (i16 31)
  %i.m = shl <8 x i16> %wide.load, splat (i16 1)
  %i.n = shl <8 x i16> %wide.load13, splat (i16 1)
  %i.o = and <8 x i16> %i.m, splat (i16 1984)
  %i.p = and <8 x i16> %i.n, splat (i16 1984)
  %i.q = or disjoint <8 x i16> %i.k, %i.o
  %i.r = or disjoint <8 x i16> %i.l, %i.p
  %i.s = shl <8 x i16> %wide.load, splat (i16 11)
  %i.t = shl <8 x i16> %wide.load13, splat (i16 11)
  %i.u = or disjoint <8 x i16> %i.q, %i.s
  %i.v = or disjoint <8 x i16> %i.r, %i.t
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <8 x i16> %i.u, ptr %i.w, align 2, !tbaa !15
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index15
  %wide.load16 = load <4 x i16>, ptr %i.z, align 2, !tbaa !15 ; 3 uses
  %i.aa = lshr <4 x i16> %wide.load16, splat (i16 10)
  %i.ab = and <4 x i16> %i.aa, splat (i16 31)
  %i.ac = shl <4 x i16> %wide.load16, splat (i16 1)
  %i.ad = and <4 x i16> %i.ac, splat (i16 1984)
  %i.ae = or disjoint <4 x i16> %i.ab, %i.ad
  %i.af = shl <4 x i16> %wide.load16, splat (i16 11)
  %i.ag = or disjoint <4 x i16> %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index15
  store <4 x i16> %i.ag, ptr %i.ah, align 2, !tbaa !15
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %n.vec14, %wide.trip.count
  br i1 %cmp.n18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !15 ; 3 uses
  %i.al = lshr i16 %i.ak, 10
  %i.am = and i16 %i.al, 31
  %i.an = shl i16 %i.ak, 1
  %i.ao = and i16 %i.an, 1984
end_hunk_0
begin_hunk_1_@x2rgb10tobgr64_bswap:bb.a
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
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1                       ; 2 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.d = add i64 %.idx, %i.c
  %i.e = add i64 %i.c, 2
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.e)
  %i.g = xor i64 %i.c, -1
  %i.h = add i64 %i.f, %i.g                       ; 4 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 30
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = lshr i64 %i.h, 1
  %i.l = mul i64 %i.k, 3
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 3
  %i.o = and i64 %i.h, -2
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 2
  %bound0 = icmp ult ptr %1, %i.q
  %bound1 = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 4 uses
  %i.r = mul i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.v
  %i.w = shl i64 %index, 1
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.w
  %wide.load = load <8 x i16>, ptr %next.gep19, align 2, !tbaa !15, !alias.scope !132 ; 3 uses
  %i.x = and <8 x i16> %wide.load, splat (i16 31) ; 2 uses
  %i.y = shl nuw nsw <8 x i16> %i.x, splat (i16 3)
  %i.z = and <8 x i16> %wide.load, splat (i16 992) ; 2 uses
  %i.aa = lshr exact <8 x i16> %i.z, splat (i16 2)
  %i.ab = and <8 x i16> %wide.load, splat (i16 31744) ; 2 uses
  %i.ac = lshr exact <8 x i16> %i.ab, splat (i16 7)
  %i.ad = lshr <8 x i16> %i.ab, splat (i16 12)
  %i.ae = or disjoint <8 x i16> %i.ac, %i.ad
  %i.af = shufflevector <8 x i16> %i.y, <8 x i16> %i.aa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = shufflevector <8 x i16> %i.x, <8 x i16> %i.z, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = lshr <16 x i16> %i.ag, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.ai = or disjoint <16 x i16> %i.af, %i.ah
  %i.aj = trunc nuw <16 x i16> %i.ai to <16 x i8>
  %i.ak = shufflevector <8 x i16> %i.ae, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = trunc nuw <16 x i16> %i.ak to <16 x i8>
  %interleaved.vec = shufflevector <16 x i8> %i.aj, <16 x i8> %i.al, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !12, !alias.scope !133, !noalias !132
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %.01516.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %.017 = phi ptr [ %i.bg, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader21 ] ; 4 uses
  %.01516 = phi ptr [ %i.an, %.lr.ph ], [ %.01516.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01516, i64 2 ; 2 uses
  %i.ao = load i16, ptr %.01516, align 2, !tbaa !15 ; 3 uses
  %i.ap = and i16 %i.ao, 31                       ; 2 uses
  %i.aq = shl nuw nsw i16 %i.ap, 3
  %i.ar = lshr i16 %i.ap, 2
  %i.as = or disjoint i16 %i.aq, %i.ar
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store i8 %i.at, ptr %.017, align 1, !tbaa !12
  %i.av = and i16 %i.ao, 992                      ; 2 uses
  %i.aw = lshr exact i16 %i.av, 2
  %i.ax = lshr i16 %i.av, 7
  %i.ay = or disjoint i16 %i.aw, %i.ax
  %i.az = trunc nuw i16 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.017, i64 2
  store i8 %i.az, ptr %i.au, align 1, !tbaa !12
  %i.bb = and i16 %i.ao, 31744                    ; 2 uses
  %i.bc = lshr exact i16 %i.bb, 7
  %i.bd = lshr i16 %i.bb, 12
  %i.be = or disjoint i16 %i.bc, %i.bd
  %i.bf = trunc nuw i16 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.017, i64 3
  store i8 %i.bf, ptr %i.ba, align 1, !tbaa !12
  %i.bh = icmp ult ptr %i.an, %i.a
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb15to32_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %i.w, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01617 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01617, i64 2 ; 2 uses
  %i.d = load i16, ptr %.01617, align 2, !tbaa !15 ; 3 uses
  %i.e = and i16 %i.d, 31                         ; 2 uses
  %i.f = shl nuw nsw i16 %i.e, 3
  %i.g = lshr i16 %i.e, 2
  %i.h = or disjoint i16 %i.f, %i.g
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.i, ptr %.018, align 1, !tbaa !12
  %i.k = and i16 %i.d, 992                        ; 2 uses
  %i.l = lshr exact i16 %i.k, 2
  %i.m = lshr i16 %i.k, 7
  %i.n = or disjoint i16 %i.l, %i.m
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %i.o, ptr %i.j, align 1, !tbaa !12
  %i.q = and i16 %i.d, 31744                      ; 2 uses
  %i.r = lshr exact i16 %i.q, 7
  %i.s = lshr i16 %i.q, 12
  %i.t = or disjoint i16 %i.r, %i.s
  %i.u = trunc nuw i16 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %i.u, ptr %i.p, align 1, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 -1, ptr %i.v, align 1, !tbaa !12
  %i.x = icmp ult ptr %i.c, %i.a
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !134

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb16tobgr24_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1                       ; 2 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.d = add i64 %.idx, %i.c
  %i.e = add i64 %i.c, 2
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.e)
  %i.g = xor i64 %i.c, -1
  %i.h = add i64 %i.f, %i.g                       ; 4 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 30
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = lshr i64 %i.h, 1
  %i.l = mul i64 %i.k, 3
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 3
  %i.o = and i64 %i.h, -2
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 2
  %bound0 = icmp ult ptr %1, %i.q
  %bound1 = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -8                       ; 4 uses
  %i.r = mul i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.v
  %i.w = shl i64 %index, 1
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.w
  %wide.load = load <8 x i16>, ptr %next.gep19, align 2, !tbaa !15, !alias.scope !140 ; 4 uses
  %i.x = and <8 x i16> %wide.load, splat (i16 31) ; 2 uses
  %i.y = shl nuw nsw <8 x i16> %i.x, splat (i16 3)
  %i.z = and <8 x i16> %wide.load, splat (i16 2016) ; 2 uses
  %i.aa = lshr exact <8 x i16> %i.z, splat (i16 3)
  %i.ab = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.ac = and <8 x i16> %i.ab, splat (i16 248)
  %i.ad = lshr <8 x i16> %wide.load, splat (i16 13)
  %i.ae = or disjoint <8 x i16> %i.ac, %i.ad
  %i.af = shufflevector <8 x i16> %i.y, <8 x i16> %i.aa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = shufflevector <8 x i16> %i.x, <8 x i16> %i.z, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = lshr <16 x i16> %i.ag, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>
  %i.ai = or disjoint <16 x i16> %i.af, %i.ah
  %i.aj = trunc nuw <16 x i16> %i.ai to <16 x i8>
  %i.ak = shufflevector <8 x i16> %i.ae, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = trunc nuw <16 x i16> %i.ak to <16 x i8>
  %interleaved.vec = shufflevector <16 x i8> %i.aj, <16 x i8> %i.al, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !12, !alias.scope !141, !noalias !140
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %.01516.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %.017 = phi ptr [ %i.bg, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader21 ] ; 4 uses
  %.01516 = phi ptr [ %i.an, %.lr.ph ], [ %.01516.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01516, i64 2 ; 2 uses
  %i.ao = load i16, ptr %.01516, align 2, !tbaa !15 ; 4 uses
  %i.ap = and i16 %i.ao, 31                       ; 2 uses
  %i.aq = shl nuw nsw i16 %i.ap, 3
  %i.ar = lshr i16 %i.ap, 2
  %i.as = or disjoint i16 %i.aq, %i.ar
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store i8 %i.at, ptr %.017, align 1, !tbaa !12
  %i.av = and i16 %i.ao, 2016                     ; 2 uses
  %i.aw = lshr exact i16 %i.av, 3
  %i.ax = lshr i16 %i.av, 9
  %i.ay = or disjoint i16 %i.aw, %i.ax
  %i.az = trunc nuw i16 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.017, i64 2
  store i8 %i.az, ptr %i.au, align 1, !tbaa !12
  %i.bb = lshr i16 %i.ao, 8
  %i.bc = and i16 %i.bb, 248
  %i.bd = lshr i16 %i.ao, 13
  %i.be = or disjoint i16 %i.bc, %i.bd
  %i.bf = trunc nuw i16 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.017, i64 3
  store i8 %i.bf, ptr %i.ba, align 1, !tbaa !12
  %i.bh = icmp ult ptr %i.an, %i.a
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb16to32_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %.idx = shl nsw i64 %4, 1
  %i.a = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %i.w, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01617 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01617, i64 2 ; 2 uses
  %i.d = load i16, ptr %.01617, align 2, !tbaa !15 ; 4 uses
  %i.e = and i16 %i.d, 31                         ; 2 uses
  %i.f = shl nuw nsw i16 %i.e, 3
  %i.g = lshr i16 %i.e, 2
  %i.h = or disjoint i16 %i.f, %i.g
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.i, ptr %.018, align 1, !tbaa !12
  %i.k = and i16 %i.d, 2016                       ; 2 uses
  %i.l = lshr exact i16 %i.k, 3
  %i.m = lshr i16 %i.k, 9
  %i.n = or disjoint i16 %i.l, %i.m
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %i.o, ptr %i.j, align 1, !tbaa !12
  %i.q = lshr i16 %i.d, 8
  %i.r = and i16 %i.q, 248
  %i.s = lshr i16 %i.d, 13
  %i.t = or disjoint i16 %i.r, %i.s
  %i.u = trunc nuw i16 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %i.u, ptr %i.p, align 1, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 -1, ptr %i.v, align 1, !tbaa !12
  %i.x = icmp ult ptr %i.c, %i.a
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !142

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
end_hunk_1
begin_hunk_2_@interleaveBytes_c:bb.a
  %wide.load48 = load <8 x i8>, ptr %i.v, align 1, !tbaa !12, !alias.scope !273
  %i.w = shl nuw nsw i64 %index, 1
  %i.x = shl i64 %index, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.02224, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.02224, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.02125, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load49 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !12, !alias.scope !274
  %wide.load50 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !12, !alias.scope !274
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load49, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.y, align 1, !tbaa !12, !alias.scope !275, !noalias !276
  %interleaved.vec51 = shufflevector <8 x i8> %wide.load48, <8 x i8> %wide.load50, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec51, ptr %i.aa, align 1, !tbaa !12, !alias.scope !275, !noalias !276
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02026, i64 %index53
  %wide.load54 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !12, !alias.scope !273
  %i.af = shl nuw nsw i64 %index53, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.02224, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.02125, i64 %index53
  %wide.load55 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !12, !alias.scope !274
  %interleaved.vec56 = shufflevector <4 x i8> %wide.load54, <4 x i8> %wide.load55, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec56, ptr %i.ag, align 1, !tbaa !12, !alias.scope !275, !noalias !276
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !270

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n58, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec52, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %.02026, i64 %indvars.iv.ph
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = shl nuw nsw i64 %indvars.iv.ph, 1
  %i.am = getelementptr inbounds nuw i8, ptr %.02224, i64 %i.al ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.02125, i64 %indvars.iv.ph
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.aq = icmp eq i64 %indvars.iv.ph, %i.t
  br i1 %i.aq, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02026, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = shl nuw nsw i64 %indvars.iv, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.02224, i64 %i.at ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.02125, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02026, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !12
  %i.ba = shl nuw nsw i64 %indvars.iv.next, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.02224, i64 %i.ba ; 2 uses
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.02125, i64 %indvars.iv.next
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !271

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bf = getelementptr inbounds i8, ptr %.02224, i64 %i.c
  %i.bg = getelementptr inbounds i8, ptr %.02026, i64 %i.d
  %i.bh = getelementptr inbounds i8, ptr %.02125, i64 %i.e
  %i.bi = add nuw nsw i32 %.01927, 1              ; 2 uses
  %exitcond30.not = icmp eq i32 %i.bi, %4
  br i1 %exitcond30.not, label %._crit_edge28.split, label %iter.check, !llvm.loop !272

._crit_edge28.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @deinterleaveBytes_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge28.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = sext i32 %5 to i64
  %i.d = sext i32 %6 to i64
  %i.e = sext i32 %7 to i64
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge28.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod33 = trunc i32 %3 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01927 = phi i32 [ %i.ae, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02026 = phi ptr [ %i.ab, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.02125 = phi ptr [ %i.ac, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.02224 = phi ptr [ %i.ad, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  br i1 %i.f, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.g = shl nuw nsw i64 %indvars.iv, 1
  %i.h = getelementptr inbounds nuw i8, ptr %.02026, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.02125, i64 %indvars.iv
  store i8 %i.i, ptr %i.j, align 1, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.02224, i64 %indvars.iv
  store i8 %i.l, ptr %i.m, align 1, !tbaa !12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.n = shl nuw nsw i64 %indvars.iv.next, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.02026, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.02125, i64 %indvars.iv.next
  store i8 %i.p, ptr %i.q, align 1, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.02224, i64 %indvars.iv.next
  store i8 %i.s, ptr %i.t, align 1, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !277

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.u = shl nuw nsw i64 %indvars.iv.epil.init, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.02026, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.02125, i64 %indvars.iv.epil.init
  store i8 %i.w, ptr %i.x, align 1, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.02224, i64 %indvars.iv.epil.init
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.ab = getelementptr inbounds i8, ptr %.02026, i64 %i.c
  %i.ac = getelementptr inbounds i8, ptr %.02125, i64 %i.d
  %i.ad = getelementptr inbounds i8, ptr %.02224, i64 %i.e
  %i.ae = add nuw nsw i32 %.01927, 1              ; 2 uses
  %exitcond30.not = icmp eq i32 %i.ae, %4
  br i1 %exitcond30.not, label %._crit_edge28.split, label %.preheader, !llvm.loop !278

._crit_edge28.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @uyvytoyuv420_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i32 %4, 1
  %i.c = ashr i32 %i.b, 1                         ; 4 uses
  %i.d = zext i32 %4 to i64                       ; 14 uses
  %i.e = shl i32 %4, 1
  %9 = sext i32 %i.e to i64                       ; 6 uses
  %i.f = icmp sgt i32 %4, 0                       ; 2 uses
  %i.g = sub nsw i32 0, %4
  %i.h = sext i32 %i.g to i64                     ; 10 uses
  %i.i = sext i32 %8 to i64                       ; 6 uses
  %i.j = sub nsw i64 0, %i.i                      ; 2 uses
  %i.k = sext i32 %i.c to i64                     ; 4 uses
  %i.l = shl nsw i32 %i.c, 2
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = icmp sgt i32 %i.c, 0
  %i.o = sub nsw i32 0, %i.c
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = sext i32 %7 to i64                       ; 4 uses
  %i.r = sext i32 %6 to i64                       ; 4 uses
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.f, label %.lr.ph.preheader.i.us.us.preheader, label %extract_even_c.exit.us

.lr.ph.preheader.i.us.us.preheader:               ; preds = %.lr.ph.split.us
  %i.s = add nsw i32 %5, -1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = mul nsw i64 %i.i, %i.t
  %i.v = add nsw i32 %4, -1
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = add i64 %i.u, %i.x
  %i.z = add i64 %i.y, %9
  %i.aa = add i64 %i.z, 2
  %i.ab = zext nneg i32 %4 to i64                 ; 3 uses
  %i.ac = shl nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ad = sub i64 %i.aa, %i.ac
  %scevgep87 = getelementptr i8, ptr %3, i64 %i.ad
  %i.ae = or disjoint i64 %9, 1
  %i.af = sub nsw i64 %i.ae, %i.ac
  %scevgep88 = getelementptr i8, ptr %3, i64 %i.af
  %i.ag = mul nsw i64 %i.r, %i.t
  %i.ah = add i64 %i.ag, %i.d
  %i.ai = add i64 %i.ah, %i.w
  %i.aj = add i64 %i.ai, 1
  %i.ak = sub i64 %i.aj, %i.ab
  %scevgep89 = getelementptr i8, ptr %0, i64 %i.ak
  %i.al = sub nsw i64 %i.d, %i.ab
  %scevgep90 = getelementptr i8, ptr %0, i64 %i.al
  %min.iters.check91 = icmp ult i32 %4, 5
  %bound093 = icmp ult ptr %scevgep90, %scevgep87
  %bound194 = icmp ult ptr %scevgep88, %scevgep89
  %found.conflict95 = and i1 %bound093, %bound194
  %i.am = or i32 %8, %6
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = or i1 %found.conflict95, %i.an
  %min.iters.check99 = icmp ult i32 %4, 17
  %i.ap = and i64 %i.d, 15                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 16, i64 %i.ap      ; 2 uses
  %n.vec101 = sub nsw i64 %i.d, %i.ar             ; 3 uses
  %i.as = add nsw i64 %n.vec101, %i.h
  %min.epilog.iters.check109 = icmp samesign ult i64 %i.ar, 5
  %i.at = and i64 %i.d, 3                         ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 4, i64 %i.at
  %n.vec112 = sub nsw i64 %i.d, %i.av             ; 2 uses
  %i.aw = add nsw i64 %n.vec112, %i.h
  br label %iter.check106

iter.check106:                                    ; preds = %.lr.ph.preheader.i.us.us.preheader, %bb.b
  %.035.us.us = phi i32 [ %i.he, %bb.b ], [ 0, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.02134.us.us = phi ptr [ %i.hd, %bb.b ], [ %0, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.02233.us.us = phi ptr [ %.1.us.us, %bb.b ], [ %1, %.lr.ph.preheader.i.us.us.preheader ] ; 3 uses
  %.02332.us.us = phi ptr [ %.124.us.us, %bb.b ], [ %2, %.lr.ph.preheader.i.us.us.preheader ] ; 3 uses
  %.02531.us.us = phi ptr [ %i.hc, %bb.b ], [ %3, %.lr.ph.preheader.i.us.us.preheader ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02531.us.us, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.02134.us.us, i64 %i.d ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %9 ; 25 uses
  %brmerge = select i1 %min.iters.check91, i1 true, i1 %i.ao
  br i1 %brmerge, label %.lr.ph.i.us.us.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %iter.check106
  br i1 %min.iters.check99, label %vec.epilog.ph110, label %vector.body102

vector.body102:                                   ; preds = %vector.main.loop.iter.check98, %vector.body102
  %index103 = phi i64 [ %index.next104, %vector.body102 ], [ 0, %vector.main.loop.iter.check98 ] ; 2 uses
  %i.ba = add i64 %index103, %i.h                 ; 17 uses
  %i.bb = shl nsw i64 %i.ba, 1
  %i.bc = shl i64 %i.ba, 1
  %i.bd = shl i64 %i.ba, 1
  %i.be = shl i64 %i.ba, 1
  %i.bf = shl i64 %i.ba, 1
  %i.bg = shl i64 %i.ba, 1
  %i.bh = shl i64 %i.ba, 1
  %i.bi = shl i64 %i.ba, 1
  %i.bj = shl i64 %i.ba, 1
  %i.bk = shl i64 %i.ba, 1
  %i.bl = shl i64 %i.ba, 1
  %i.bm = shl i64 %i.ba, 1
  %i.bn = shl i64 %i.ba, 1
  %i.bo = shl i64 %i.ba, 1
  %i.bp = shl i64 %i.ba, 1
  %i.bq = shl i64 %i.ba, 1
  %i.br = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  %i.bs = getelementptr i8, ptr %i.az, i64 %i.bc
  %i.bt = getelementptr i8, ptr %i.bs, i64 2
  %i.bu = getelementptr i8, ptr %i.az, i64 %i.bd
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %i.bw = getelementptr i8, ptr %i.az, i64 %i.be
  %i.bx = getelementptr i8, ptr %i.bw, i64 6
  %i.by = getelementptr i8, ptr %i.az, i64 %i.bf
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.cb = getelementptr i8, ptr %i.ca, i64 10
  %i.cc = getelementptr i8, ptr %i.az, i64 %i.bh
  %i.cd = getelementptr i8, ptr %i.cc, i64 12
  %i.ce = getelementptr i8, ptr %i.az, i64 %i.bi
  %i.cf = getelementptr i8, ptr %i.ce, i64 14
  %i.cg = getelementptr i8, ptr %i.az, i64 %i.bj
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = getelementptr i8, ptr %i.az, i64 %i.bk
  %i.cj = getelementptr i8, ptr %i.ci, i64 18
  %i.ck = getelementptr i8, ptr %i.az, i64 %i.bl
  %i.cl = getelementptr i8, ptr %i.ck, i64 20
  %i.cm = getelementptr i8, ptr %i.az, i64 %i.bm
  %i.cn = getelementptr i8, ptr %i.cm, i64 22
  %i.co = getelementptr i8, ptr %i.az, i64 %i.bn
  %i.cp = getelementptr i8, ptr %i.co, i64 24
  %i.cq = getelementptr i8, ptr %i.az, i64 %i.bo
  %i.cr = getelementptr i8, ptr %i.cq, i64 26
  %i.cs = getelementptr i8, ptr %i.az, i64 %i.bp
  %i.ct = getelementptr i8, ptr %i.cs, i64 28
  %i.cu = getelementptr i8, ptr %i.az, i64 %i.bq
  %i.cv = getelementptr i8, ptr %i.cu, i64 30
  %i.cw = load i8, ptr %i.br, align 1, !tbaa !12, !alias.scope !295
  %i.cx = load i8, ptr %i.bt, align 1, !tbaa !12, !alias.scope !295
  %i.cy = load i8, ptr %i.bv, align 1, !tbaa !12, !alias.scope !295
  %i.cz = load i8, ptr %i.bx, align 1, !tbaa !12, !alias.scope !295
  %i.da = load i8, ptr %i.bz, align 1, !tbaa !12, !alias.scope !295
  %i.db = load i8, ptr %i.cb, align 1, !tbaa !12, !alias.scope !295
  %i.dc = load i8, ptr %i.cd, align 1, !tbaa !12, !alias.scope !295
  %i.dd = load i8, ptr %i.cf, align 1, !tbaa !12, !alias.scope !295
  %i.de = load i8, ptr %i.ch, align 1, !tbaa !12, !alias.scope !295
  %i.df = load i8, ptr %i.cj, align 1, !tbaa !12, !alias.scope !295
  %i.dg = load i8, ptr %i.cl, align 1, !tbaa !12, !alias.scope !295
  %i.dh = load i8, ptr %i.cn, align 1, !tbaa !12, !alias.scope !295
  %i.di = load i8, ptr %i.cp, align 1, !tbaa !12, !alias.scope !295
  %i.dj = load i8, ptr %i.cr, align 1, !tbaa !12, !alias.scope !295
  %i.dk = load i8, ptr %i.ct, align 1, !tbaa !12, !alias.scope !295
  %i.dl = load i8, ptr %i.cv, align 1, !tbaa !12, !alias.scope !295
  %i.dm = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 1
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 2
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 3
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 4
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 5
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 6
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 7
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 8
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 9
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 10
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 11
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 12
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 13
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 14
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 15
  %i.ec = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba
  store <16 x i8> %i.eb, ptr %i.ec, align 1, !tbaa !12, !alias.scope !296, !noalias !295
  %index.next104 = add nuw i64 %index103, 16      ; 2 uses
  %i.ed = icmp eq i64 %index.next104, %n.vec101
  br i1 %i.ed, label %vec.epilog.iter.check107, label %vector.body102, !llvm.loop !282

vec.epilog.iter.check107:                         ; preds = %vector.body102
  br i1 %min.epilog.iters.check109, label %.lr.ph.i.us.us.preheader, label %vec.epilog.ph110, !prof !18

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check107
  %vec.epilog.resume.val111 = phi i64 [ %n.vec101, %vec.epilog.iter.check107 ], [ 0, %vector.main.loop.iter.check98 ]
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph110 ], [ %index.next115, %vec.epilog.vector.body113 ] ; 2 uses
  %i.ee = add i64 %index114, %i.h                 ; 5 uses
  %i.ef = shl nsw i64 %i.ee, 1
  %i.eg = shl i64 %i.ee, 1
  %i.eh = shl i64 %i.ee, 1
  %i.ei = shl i64 %i.ee, 1
  %i.ej = getelementptr inbounds i8, ptr %i.az, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.az, i64 %i.eg
  %i.el = getelementptr i8, ptr %i.ek, i64 2
  %i.em = getelementptr i8, ptr %i.az, i64 %i.eh
  %i.en = getelementptr i8, ptr %i.em, i64 4
  %i.eo = getelementptr i8, ptr %i.az, i64 %i.ei
  %i.ep = getelementptr i8, ptr %i.eo, i64 6
  %i.eq = load i8, ptr %i.ej, align 1, !tbaa !12, !alias.scope !295
  %i.er = load i8, ptr %i.el, align 1, !tbaa !12, !alias.scope !295
  %i.es = load i8, ptr %i.en, align 1, !tbaa !12, !alias.scope !295
  %i.et = load i8, ptr %i.ep, align 1, !tbaa !12, !alias.scope !295
  %i.eu = insertelement <4 x i8> poison, i8 %i.eq, i64 0
  %i.ev = insertelement <4 x i8> %i.eu, i8 %i.er, i64 1
  %i.ew = insertelement <4 x i8> %i.ev, i8 %i.es, i64 2
  %i.ex = insertelement <4 x i8> %i.ew, i8 %i.et, i64 3
  %i.ey = getelementptr inbounds i8, ptr %i.ay, i64 %i.ee
  store <4 x i8> %i.ex, ptr %i.ey, align 1, !tbaa !12, !alias.scope !296, !noalias !295
  %index.next115 = add nuw i64 %index114, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next115, %n.vec112
end_hunk_2
begin_hunk_3_@uyvytoyuv420_c:bb.a
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.jt = add i64 %index, %i.h                    ; 17 uses
  %i.ju = shl nsw i64 %i.jt, 1
  %i.jv = shl i64 %i.jt, 1
  %i.jw = shl i64 %i.jt, 1
  %i.jx = shl i64 %i.jt, 1
  %i.jy = shl i64 %i.jt, 1
  %i.jz = shl i64 %i.jt, 1
  %i.ka = shl i64 %i.jt, 1
  %i.kb = shl i64 %i.jt, 1
  %i.kc = shl i64 %i.jt, 1
  %i.kd = shl i64 %i.jt, 1
  %i.ke = shl i64 %i.jt, 1
  %i.kf = shl i64 %i.jt, 1
  %i.kg = shl i64 %i.jt, 1
  %i.kh = shl i64 %i.jt, 1
  %i.ki = shl i64 %i.jt, 1
  %i.kj = shl i64 %i.jt, 1
  %i.kk = getelementptr inbounds i8, ptr %i.js, i64 %i.ju
  %i.kl = getelementptr i8, ptr %i.js, i64 %i.jv
  %i.km = getelementptr i8, ptr %i.kl, i64 2
  %i.kn = getelementptr i8, ptr %i.js, i64 %i.jw
  %i.ko = getelementptr i8, ptr %i.kn, i64 4
  %i.kp = getelementptr i8, ptr %i.js, i64 %i.jx
  %i.kq = getelementptr i8, ptr %i.kp, i64 6
  %i.kr = getelementptr i8, ptr %i.js, i64 %i.jy
  %i.ks = getelementptr i8, ptr %i.kr, i64 8
  %i.kt = getelementptr i8, ptr %i.js, i64 %i.jz
  %i.ku = getelementptr i8, ptr %i.kt, i64 10
  %i.kv = getelementptr i8, ptr %i.js, i64 %i.ka
  %i.kw = getelementptr i8, ptr %i.kv, i64 12
  %i.kx = getelementptr i8, ptr %i.js, i64 %i.kb
  %i.ky = getelementptr i8, ptr %i.kx, i64 14
  %i.kz = getelementptr i8, ptr %i.js, i64 %i.kc
  %i.la = getelementptr i8, ptr %i.kz, i64 16
  %i.lb = getelementptr i8, ptr %i.js, i64 %i.kd
  %i.lc = getelementptr i8, ptr %i.lb, i64 18
  %i.ld = getelementptr i8, ptr %i.js, i64 %i.ke
  %i.le = getelementptr i8, ptr %i.ld, i64 20
  %i.lf = getelementptr i8, ptr %i.js, i64 %i.kf
  %i.lg = getelementptr i8, ptr %i.lf, i64 22
  %i.lh = getelementptr i8, ptr %i.js, i64 %i.kg
  %i.li = getelementptr i8, ptr %i.lh, i64 24
  %i.lj = getelementptr i8, ptr %i.js, i64 %i.kh
  %i.lk = getelementptr i8, ptr %i.lj, i64 26
  %i.ll = getelementptr i8, ptr %i.js, i64 %i.ki
  %i.lm = getelementptr i8, ptr %i.ll, i64 28
  %i.ln = getelementptr i8, ptr %i.js, i64 %i.kj
  %i.lo = getelementptr i8, ptr %i.ln, i64 30
  %i.lp = load i8, ptr %i.kk, align 1, !tbaa !12, !alias.scope !297
  %i.lq = load i8, ptr %i.km, align 1, !tbaa !12, !alias.scope !297
  %i.lr = load i8, ptr %i.ko, align 1, !tbaa !12, !alias.scope !297
  %i.ls = load i8, ptr %i.kq, align 1, !tbaa !12, !alias.scope !297
  %i.lt = load i8, ptr %i.ks, align 1, !tbaa !12, !alias.scope !297
  %i.lu = load i8, ptr %i.ku, align 1, !tbaa !12, !alias.scope !297
  %i.lv = load i8, ptr %i.kw, align 1, !tbaa !12, !alias.scope !297
  %i.lw = load i8, ptr %i.ky, align 1, !tbaa !12, !alias.scope !297
  %i.lx = load i8, ptr %i.la, align 1, !tbaa !12, !alias.scope !297
  %i.ly = load i8, ptr %i.lc, align 1, !tbaa !12, !alias.scope !297
  %i.lz = load i8, ptr %i.le, align 1, !tbaa !12, !alias.scope !297
  %i.ma = load i8, ptr %i.lg, align 1, !tbaa !12, !alias.scope !297
  %i.mb = load i8, ptr %i.li, align 1, !tbaa !12, !alias.scope !297
  %i.mc = load i8, ptr %i.lk, align 1, !tbaa !12, !alias.scope !297
  %i.md = load i8, ptr %i.lm, align 1, !tbaa !12, !alias.scope !297
  %i.me = load i8, ptr %i.lo, align 1, !tbaa !12, !alias.scope !297
  %i.mf = insertelement <16 x i8> poison, i8 %i.lp, i64 0
  %i.mg = insertelement <16 x i8> %i.mf, i8 %i.lq, i64 1
  %i.mh = insertelement <16 x i8> %i.mg, i8 %i.lr, i64 2
  %i.mi = insertelement <16 x i8> %i.mh, i8 %i.ls, i64 3
  %i.mj = insertelement <16 x i8> %i.mi, i8 %i.lt, i64 4
  %i.mk = insertelement <16 x i8> %i.mj, i8 %i.lu, i64 5
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 6
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 7
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 8
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 9
  %i.mp = insertelement <16 x i8> %i.mo, i8 %i.lz, i64 10
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 11
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 12
  %i.ms = insertelement <16 x i8> %i.mr, i8 %i.mc, i64 13
  %i.mt = insertelement <16 x i8> %i.ms, i8 %i.md, i64 14
  %i.mu = insertelement <16 x i8> %i.mt, i8 %i.me, i64 15
  %i.mv = getelementptr inbounds i8, ptr %i.jr, i64 %i.jt
  store <16 x i8> %i.mu, ptr %i.mv, align 1, !tbaa !12, !alias.scope !298, !noalias !297
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mw = icmp eq i64 %index.next, %n.vec
  br i1 %i.mw, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !291

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.us42.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 2 uses
  %i.mx = add i64 %index75, %i.h                  ; 5 uses
  %i.my = shl nsw i64 %i.mx, 1
  %i.mz = shl i64 %i.mx, 1
  %i.na = shl i64 %i.mx, 1
  %i.nb = shl i64 %i.mx, 1
  %i.nc = getelementptr inbounds i8, ptr %i.js, i64 %i.my
  %i.nd = getelementptr i8, ptr %i.js, i64 %i.mz
  %i.ne = getelementptr i8, ptr %i.nd, i64 2
  %i.nf = getelementptr i8, ptr %i.js, i64 %i.na
  %i.ng = getelementptr i8, ptr %i.nf, i64 4
  %i.nh = getelementptr i8, ptr %i.js, i64 %i.nb
  %i.ni = getelementptr i8, ptr %i.nh, i64 6
  %i.nj = load i8, ptr %i.nc, align 1, !tbaa !12, !alias.scope !297
  %i.nk = load i8, ptr %i.ne, align 1, !tbaa !12, !alias.scope !297
  %i.nl = load i8, ptr %i.ng, align 1, !tbaa !12, !alias.scope !297
  %i.nm = load i8, ptr %i.ni, align 1, !tbaa !12, !alias.scope !297
  %i.nn = insertelement <4 x i8> poison, i8 %i.nj, i64 0
  %i.no = insertelement <4 x i8> %i.nn, i8 %i.nk, i64 1
  %i.np = insertelement <4 x i8> %i.no, i8 %i.nl, i64 2
  %i.nq = insertelement <4 x i8> %i.np, i8 %i.nm, i64 3
  %i.nr = getelementptr inbounds i8, ptr %i.jr, i64 %i.mx
  store <4 x i8> %i.nq, ptr %i.nr, align 1, !tbaa !12, !alias.scope !298, !noalias !297
  %index.next76 = add nuw i64 %index75, 4         ; 2 uses
  %i.ns = icmp eq i64 %index.next76, %n.vec74
  br i1 %i.ns, label %.lr.ph.i.us42.preheader, label %vec.epilog.vector.body, !llvm.loop !292

.lr.ph.i.us42.preheader:                          ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.us43.ph = phi i64 [ %i.h, %iter.check ], [ %i.jl, %vec.epilog.iter.check ], [ %i.jp, %vec.epilog.vector.body ] ; 3 uses
  %i.nt = trunc i64 %indvars.iv.i.us43.ph to i32  ; 2 uses
  %i.nu = sub i32 0, %i.nt
  %xtraiter = and i32 %i.nu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.us42.prol.loopexit, label %.lr.ph.i.us42.prol

.lr.ph.i.us42.prol:                               ; preds = %.lr.ph.i.us42.preheader, %.lr.ph.i.us42.prol
  %indvars.iv.i.us43.prol = phi i64 [ %indvars.iv.next.i.us44.prol, %.lr.ph.i.us42.prol ], [ %indvars.iv.i.us43.ph, %.lr.ph.i.us42.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.us42.prol ], [ 0, %.lr.ph.i.us42.preheader ]
  %i.nv = shl nsw i64 %indvars.iv.i.us43.prol, 1
  %i.nw = getelementptr inbounds i8, ptr %i.js, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !12
  %i.ny = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.i.us43.prol
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !12
  %indvars.iv.next.i.us44.prol = add nsw i64 %indvars.iv.i.us43.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.us42.prol.loopexit, label %.lr.ph.i.us42.prol, !llvm.loop !293

.lr.ph.i.us42.prol.loopexit:                      ; preds = %.lr.ph.i.us42.prol, %.lr.ph.i.us42.preheader
  %indvars.iv.i.us43.unr = phi i64 [ %indvars.iv.i.us43.ph, %.lr.ph.i.us42.preheader ], [ %indvars.iv.next.i.us44.prol, %.lr.ph.i.us42.prol ]
  %i.nz = icmp ugt i32 %i.nt, -4
  br i1 %i.nz, label %extract_even_c.exit.loopexit.us46, label %.lr.ph.i.us42

.lr.ph.i.us42:                                    ; preds = %.lr.ph.i.us42.prol.loopexit, %.lr.ph.i.us42
  %indvars.iv.i.us43 = phi i64 [ %indvars.iv.next.i.us44.3, %.lr.ph.i.us42 ], [ %indvars.iv.i.us43.unr, %.lr.ph.i.us42.prol.loopexit ] ; 6 uses
  %i.oa = shl nsw i64 %indvars.iv.i.us43, 1
  %i.ob = getelementptr inbounds i8, ptr %i.js, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !12
  %i.od = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.i.us43
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !12
  %indvars.iv.next.i.us44 = add nsw i64 %indvars.iv.i.us43, 1 ; 2 uses
  %i.oe = shl nsw i64 %indvars.iv.next.i.us44, 1
  %i.of = getelementptr inbounds i8, ptr %i.js, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !12
  %i.oh = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.next.i.us44
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !12
  %indvars.iv.next.i.us44.1 = add nsw i64 %indvars.iv.i.us43, 2 ; 2 uses
  %i.oi = shl nsw i64 %indvars.iv.next.i.us44.1, 1
  %i.oj = getelementptr inbounds i8, ptr %i.js, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !12
  %i.ol = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.next.i.us44.1
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !12
  %indvars.iv.next.i.us44.2 = add nsw i64 %indvars.iv.i.us43, 3 ; 2 uses
  %i.om = shl nsw i64 %indvars.iv.next.i.us44.2, 1
  %i.on = getelementptr inbounds i8, ptr %i.js, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !12
  %i.op = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.next.i.us44.2
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !12
  %indvars.iv.next.i.us44.3 = add nsw i64 %indvars.iv.i.us43, 4 ; 2 uses
  %i.oq = and i64 %indvars.iv.next.i.us44.3, 4294967295
  %exitcond.not.i.us45.3 = icmp eq i64 %i.oq, 0
  br i1 %exitcond.not.i.us45.3, label %extract_even_c.exit.loopexit.us46, label %.lr.ph.i.us42, !llvm.loop !294

extract_even_c.exit.loopexit.us46:                ; preds = %.lr.ph.i.us42, %.lr.ph.i.us42.prol.loopexit
  %i.or = getelementptr inbounds i8, ptr %.02531.us40, i64 %i.i
  %i.os = getelementptr inbounds i8, ptr %.02134.us37, i64 %i.r
  %i.ot = add nuw nsw i32 %.035.us36, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ot, %5
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !287

._crit_edge:                                      ; preds = %extract_even_c.exit.loopexit.us46, %bb.c, %bb.b, %.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @uyvytoyuv422_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %4, 1                        ; 3 uses
  %i.c = ashr i32 %i.b, 1                         ; 6 uses
  %i.d = zext i32 %4 to i64                       ; 14 uses
  %i.e = shl i32 %4, 1
  %9 = sext i32 %i.e to i64                       ; 6 uses
  %i.f = icmp sgt i32 %4, 0                       ; 2 uses
  %i.g = sub nsw i32 0, %4
  %i.h = sext i32 %i.g to i64                     ; 10 uses
  %i.i = sext i32 %i.c to i64                     ; 4 uses
  %i.j = shl nsw i32 %i.c, 2
  %10 = sext i32 %i.j to i64                      ; 2 uses
  %i.k = icmp sgt i32 %i.c, 0
  %i.l = sub nsw i32 0, %i.c
  %i.m = sext i32 %i.l to i64                     ; 10 uses
  %i.n = sext i32 %8 to i64                       ; 5 uses
  %i.o = sext i32 %6 to i64                       ; 4 uses
  %i.p = sext i32 %7 to i64                       ; 4 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.f, label %.lr.ph.preheader.i.us.us.preheader, label %extract_even_c.exit.us.preheader

extract_even_c.exit.us.preheader:                 ; preds = %.lr.ph.split.us
  %i.q = and i32 %i.b, 2
  %lcmp.mod99.not = icmp eq i32 %i.q, 0
  %i.r = shl nsw i64 %i.m, 2
  %indvars.iv.next.i25.us.prol = add nsw i64 %i.m, 1
  %i.s = icmp eq i32 %i.c, 1
  br label %extract_even_c.exit.us

.lr.ph.preheader.i.us.us.preheader:               ; preds = %.lr.ph.split.us
  %i.t = add nsw i32 %5, -1
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = mul nsw i64 %i.n, %i.u
  %i.w = add nsw i32 %4, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = add i64 %i.v, %i.y
  %i.aa = add i64 %i.z, %9
  %i.ab = add i64 %i.aa, 2
  %i.ac = zext nneg i32 %4 to i64                 ; 3 uses
  %i.ad = shl nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %scevgep65 = getelementptr i8, ptr %3, i64 %i.ae
  %i.af = or disjoint i64 %9, 1
  %i.ag = sub nsw i64 %i.af, %i.ad
  %scevgep66 = getelementptr i8, ptr %3, i64 %i.ag
  %i.ah = mul nsw i64 %i.o, %i.u
  %i.ai = add i64 %i.ah, %i.d
  %i.aj = add i64 %i.ai, %i.x
  %i.ak = add i64 %i.aj, 1
  %i.al = sub i64 %i.ak, %i.ac
  %scevgep67 = getelementptr i8, ptr %0, i64 %i.al
  %i.am = sub nsw i64 %i.d, %i.ac
  %scevgep68 = getelementptr i8, ptr %0, i64 %i.am
  %min.iters.check69 = icmp ult i32 %4, 5
  %bound071 = icmp ult ptr %scevgep68, %scevgep65
  %bound172 = icmp ult ptr %scevgep66, %scevgep67
  %found.conflict73 = and i1 %bound071, %bound172
  %i.an = or i32 %8, %6
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = or i1 %found.conflict73, %i.ao
  %min.iters.check77 = icmp ult i32 %4, 17
  %i.aq = and i64 %i.d, 15                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = select i1 %i.ar, i64 16, i64 %i.aq      ; 2 uses
  %n.vec79 = sub nsw i64 %i.d, %i.as              ; 3 uses
  %i.at = add nsw i64 %n.vec79, %i.h
  %min.epilog.iters.check87 = icmp samesign ult i64 %i.as, 5
  %i.au = and i64 %i.d, 3                         ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 4, i64 %i.au
  %n.vec90 = sub nsw i64 %i.d, %i.aw              ; 2 uses
  %i.ax = add nsw i64 %n.vec90, %i.h
  %i.ay = and i32 %i.b, 2
  %lcmp.mod105.not = icmp eq i32 %i.ay, 0
  %i.az = shl nsw i64 %i.m, 2
  %indvars.iv.next.i25.us.us.prol = add nsw i64 %i.m, 1
  %i.ba = icmp eq i32 %i.c, 1
  br label %iter.check84

iter.check84:                                     ; preds = %.lr.ph.preheader.i.us.us.preheader, %extract_even2_c.exit.loopexit.us.us
  %.031.us.us = phi i32 [ %i.hd, %extract_even2_c.exit.loopexit.us.us ], [ 0, %.lr.ph.preheader.i.us.us.preheader ]
  %.01830.us.us = phi ptr [ %i.ha, %extract_even2_c.exit.loopexit.us.us ], [ %0, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.01929.us.us = phi ptr [ %i.hb, %extract_even2_c.exit.loopexit.us.us ], [ %1, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.02028.us.us = phi ptr [ %i.hc, %extract_even2_c.exit.loopexit.us.us ], [ %2, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.02127.us.us = phi ptr [ %i.gz, %extract_even2_c.exit.loopexit.us.us ], [ %3, %.lr.ph.preheader.i.us.us.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02127.us.us, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01830.us.us, i64 %i.d ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %9 ; 25 uses
  %brmerge = select i1 %min.iters.check69, i1 true, i1 %i.ap
  br i1 %brmerge, label %.lr.ph.i.us.us.preheader, label %vector.main.loop.iter.check76

vector.main.loop.iter.check76:                    ; preds = %iter.check84
  br i1 %min.iters.check77, label %vec.epilog.ph88, label %vector.body80

vector.body80:                                    ; preds = %vector.main.loop.iter.check76, %vector.body80
  %index81 = phi i64 [ %index.next82, %vector.body80 ], [ 0, %vector.main.loop.iter.check76 ] ; 2 uses
  %i.be = add i64 %index81, %i.h                  ; 17 uses
  %i.bf = shl nsw i64 %i.be, 1
  %i.bg = shl i64 %i.be, 1
  %i.bh = shl i64 %i.be, 1
  %i.bi = shl i64 %i.be, 1
  %i.bj = shl i64 %i.be, 1
  %i.bk = shl i64 %i.be, 1
  %i.bl = shl i64 %i.be, 1
  %i.bm = shl i64 %i.be, 1
  %i.bn = shl i64 %i.be, 1
  %i.bo = shl i64 %i.be, 1
  %i.bp = shl i64 %i.be, 1
  %i.bq = shl i64 %i.be, 1
  %i.br = shl i64 %i.be, 1
  %i.bs = shl i64 %i.be, 1
  %i.bt = shl i64 %i.be, 1
  %i.bu = shl i64 %i.be, 1
  %i.bv = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf
  %i.bw = getelementptr i8, ptr %i.bd, i64 %i.bg
  %i.bx = getelementptr i8, ptr %i.bw, i64 2
  %i.by = getelementptr i8, ptr %i.bd, i64 %i.bh
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %i.ca = getelementptr i8, ptr %i.bd, i64 %i.bi
  %i.cb = getelementptr i8, ptr %i.ca, i64 6
  %i.cc = getelementptr i8, ptr %i.bd, i64 %i.bj
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = getelementptr i8, ptr %i.bd, i64 %i.bk
  %i.cf = getelementptr i8, ptr %i.ce, i64 10
  %i.cg = getelementptr i8, ptr %i.bd, i64 %i.bl
  %i.ch = getelementptr i8, ptr %i.cg, i64 12
  %i.ci = getelementptr i8, ptr %i.bd, i64 %i.bm
  %i.cj = getelementptr i8, ptr %i.ci, i64 14
  %i.ck = getelementptr i8, ptr %i.bd, i64 %i.bn
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = getelementptr i8, ptr %i.bd, i64 %i.bo
  %i.cn = getelementptr i8, ptr %i.cm, i64 18
  %i.co = getelementptr i8, ptr %i.bd, i64 %i.bp
  %i.cp = getelementptr i8, ptr %i.co, i64 20
  %i.cq = getelementptr i8, ptr %i.bd, i64 %i.bq
  %i.cr = getelementptr i8, ptr %i.cq, i64 22
  %i.cs = getelementptr i8, ptr %i.bd, i64 %i.br
  %i.ct = getelementptr i8, ptr %i.cs, i64 24
  %i.cu = getelementptr i8, ptr %i.bd, i64 %i.bs
  %i.cv = getelementptr i8, ptr %i.cu, i64 26
  %i.cw = getelementptr i8, ptr %i.bd, i64 %i.bt
  %i.cx = getelementptr i8, ptr %i.cw, i64 28
  %i.cy = getelementptr i8, ptr %i.bd, i64 %i.bu
  %i.cz = getelementptr i8, ptr %i.cy, i64 30
  %i.da = load i8, ptr %i.bv, align 1, !tbaa !12, !alias.scope !315
  %i.db = load i8, ptr %i.bx, align 1, !tbaa !12, !alias.scope !315
  %i.dc = load i8, ptr %i.bz, align 1, !tbaa !12, !alias.scope !315
  %i.dd = load i8, ptr %i.cb, align 1, !tbaa !12, !alias.scope !315
  %i.de = load i8, ptr %i.cd, align 1, !tbaa !12, !alias.scope !315
  %i.df = load i8, ptr %i.cf, align 1, !tbaa !12, !alias.scope !315
  %i.dg = load i8, ptr %i.ch, align 1, !tbaa !12, !alias.scope !315
  %i.dh = load i8, ptr %i.cj, align 1, !tbaa !12, !alias.scope !315
  %i.di = load i8, ptr %i.cl, align 1, !tbaa !12, !alias.scope !315
  %i.dj = load i8, ptr %i.cn, align 1, !tbaa !12, !alias.scope !315
  %i.dk = load i8, ptr %i.cp, align 1, !tbaa !12, !alias.scope !315
  %i.dl = load i8, ptr %i.cr, align 1, !tbaa !12, !alias.scope !315
  %i.dm = load i8, ptr %i.ct, align 1, !tbaa !12, !alias.scope !315
  %i.dn = load i8, ptr %i.cv, align 1, !tbaa !12, !alias.scope !315
  %i.do = load i8, ptr %i.cx, align 1, !tbaa !12, !alias.scope !315
  %i.dp = load i8, ptr %i.cz, align 1, !tbaa !12, !alias.scope !315
  %i.dq = insertelement <16 x i8> poison, i8 %i.da, i64 0
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 1
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 2
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 3
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 4
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 5
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 6
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 7
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 8
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 9
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 10
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 11
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 12
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 13
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 14
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 15
  %i.eg = getelementptr inbounds i8, ptr %i.bc, i64 %i.be
  store <16 x i8> %i.ef, ptr %i.eg, align 1, !tbaa !12, !alias.scope !316, !noalias !315
  %index.next82 = add nuw i64 %index81, 16        ; 2 uses
  %i.eh = icmp eq i64 %index.next82, %n.vec79
  br i1 %i.eh, label %vec.epilog.iter.check85, label %vector.body80, !llvm.loop !302

vec.epilog.iter.check85:                          ; preds = %vector.body80
  br i1 %min.epilog.iters.check87, label %.lr.ph.i.us.us.preheader, label %vec.epilog.ph88, !prof !18

vec.epilog.ph88:                                  ; preds = %vector.main.loop.iter.check76, %vec.epilog.iter.check85
  %vec.epilog.resume.val89 = phi i64 [ %n.vec79, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check76 ]
  br label %vec.epilog.vector.body91

vec.epilog.vector.body91:                         ; preds = %vec.epilog.vector.body91, %vec.epilog.ph88
  %index92 = phi i64 [ %vec.epilog.resume.val89, %vec.epilog.ph88 ], [ %index.next93, %vec.epilog.vector.body91 ] ; 2 uses
  %i.ei = add i64 %index92, %i.h                  ; 5 uses
  %i.ej = shl nsw i64 %i.ei, 1
  %i.ek = shl i64 %i.ei, 1
  %i.el = shl i64 %i.ei, 1
  %i.em = shl i64 %i.ei, 1
  %i.en = getelementptr inbounds i8, ptr %i.bd, i64 %i.ej
  %i.eo = getelementptr i8, ptr %i.bd, i64 %i.ek
  %i.ep = getelementptr i8, ptr %i.eo, i64 2
  %i.eq = getelementptr i8, ptr %i.bd, i64 %i.el
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %i.es = getelementptr i8, ptr %i.bd, i64 %i.em
  %i.et = getelementptr i8, ptr %i.es, i64 6
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !12, !alias.scope !315
  %i.ev = load i8, ptr %i.ep, align 1, !tbaa !12, !alias.scope !315
  %i.ew = load i8, ptr %i.er, align 1, !tbaa !12, !alias.scope !315
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !12, !alias.scope !315
  %i.ey = insertelement <4 x i8> poison, i8 %i.eu, i64 0
  %i.ez = insertelement <4 x i8> %i.ey, i8 %i.ev, i64 1
end_hunk_3
begin_hunk_4_@uyvytoyuv422_c:bb.a
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.jn = add i64 %index, %i.h                    ; 17 uses
  %i.jo = shl nsw i64 %i.jn, 1
  %i.jp = shl i64 %i.jn, 1
  %i.jq = shl i64 %i.jn, 1
  %i.jr = shl i64 %i.jn, 1
  %i.js = shl i64 %i.jn, 1
  %i.jt = shl i64 %i.jn, 1
  %i.ju = shl i64 %i.jn, 1
  %i.jv = shl i64 %i.jn, 1
  %i.jw = shl i64 %i.jn, 1
  %i.jx = shl i64 %i.jn, 1
  %i.jy = shl i64 %i.jn, 1
  %i.jz = shl i64 %i.jn, 1
  %i.ka = shl i64 %i.jn, 1
  %i.kb = shl i64 %i.jn, 1
  %i.kc = shl i64 %i.jn, 1
  %i.kd = shl i64 %i.jn, 1
  %i.ke = getelementptr inbounds i8, ptr %i.jm, i64 %i.jo
  %i.kf = getelementptr i8, ptr %i.jm, i64 %i.jp
  %i.kg = getelementptr i8, ptr %i.kf, i64 2
  %i.kh = getelementptr i8, ptr %i.jm, i64 %i.jq
  %i.ki = getelementptr i8, ptr %i.kh, i64 4
  %i.kj = getelementptr i8, ptr %i.jm, i64 %i.jr
  %i.kk = getelementptr i8, ptr %i.kj, i64 6
  %i.kl = getelementptr i8, ptr %i.jm, i64 %i.js
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  %i.kn = getelementptr i8, ptr %i.jm, i64 %i.jt
  %i.ko = getelementptr i8, ptr %i.kn, i64 10
  %i.kp = getelementptr i8, ptr %i.jm, i64 %i.ju
  %i.kq = getelementptr i8, ptr %i.kp, i64 12
  %i.kr = getelementptr i8, ptr %i.jm, i64 %i.jv
  %i.ks = getelementptr i8, ptr %i.kr, i64 14
  %i.kt = getelementptr i8, ptr %i.jm, i64 %i.jw
  %i.ku = getelementptr i8, ptr %i.kt, i64 16
  %i.kv = getelementptr i8, ptr %i.jm, i64 %i.jx
  %i.kw = getelementptr i8, ptr %i.kv, i64 18
  %i.kx = getelementptr i8, ptr %i.jm, i64 %i.jy
  %i.ky = getelementptr i8, ptr %i.kx, i64 20
  %i.kz = getelementptr i8, ptr %i.jm, i64 %i.jz
  %i.la = getelementptr i8, ptr %i.kz, i64 22
  %i.lb = getelementptr i8, ptr %i.jm, i64 %i.ka
  %i.lc = getelementptr i8, ptr %i.lb, i64 24
  %i.ld = getelementptr i8, ptr %i.jm, i64 %i.kb
  %i.le = getelementptr i8, ptr %i.ld, i64 26
  %i.lf = getelementptr i8, ptr %i.jm, i64 %i.kc
  %i.lg = getelementptr i8, ptr %i.lf, i64 28
  %i.lh = getelementptr i8, ptr %i.jm, i64 %i.kd
  %i.li = getelementptr i8, ptr %i.lh, i64 30
  %i.lj = load i8, ptr %i.ke, align 1, !tbaa !12, !alias.scope !317
  %i.lk = load i8, ptr %i.kg, align 1, !tbaa !12, !alias.scope !317
  %i.ll = load i8, ptr %i.ki, align 1, !tbaa !12, !alias.scope !317
  %i.lm = load i8, ptr %i.kk, align 1, !tbaa !12, !alias.scope !317
  %i.ln = load i8, ptr %i.km, align 1, !tbaa !12, !alias.scope !317
  %i.lo = load i8, ptr %i.ko, align 1, !tbaa !12, !alias.scope !317
  %i.lp = load i8, ptr %i.kq, align 1, !tbaa !12, !alias.scope !317
  %i.lq = load i8, ptr %i.ks, align 1, !tbaa !12, !alias.scope !317
  %i.lr = load i8, ptr %i.ku, align 1, !tbaa !12, !alias.scope !317
  %i.ls = load i8, ptr %i.kw, align 1, !tbaa !12, !alias.scope !317
  %i.lt = load i8, ptr %i.ky, align 1, !tbaa !12, !alias.scope !317
  %i.lu = load i8, ptr %i.la, align 1, !tbaa !12, !alias.scope !317
  %i.lv = load i8, ptr %i.lc, align 1, !tbaa !12, !alias.scope !317
  %i.lw = load i8, ptr %i.le, align 1, !tbaa !12, !alias.scope !317
  %i.lx = load i8, ptr %i.lg, align 1, !tbaa !12, !alias.scope !317
  %i.ly = load i8, ptr %i.li, align 1, !tbaa !12, !alias.scope !317
  %i.lz = insertelement <16 x i8> poison, i8 %i.lj, i64 0
  %i.ma = insertelement <16 x i8> %i.lz, i8 %i.lk, i64 1
  %i.mb = insertelement <16 x i8> %i.ma, i8 %i.ll, i64 2
  %i.mc = insertelement <16 x i8> %i.mb, i8 %i.lm, i64 3
  %i.md = insertelement <16 x i8> %i.mc, i8 %i.ln, i64 4
  %i.me = insertelement <16 x i8> %i.md, i8 %i.lo, i64 5
  %i.mf = insertelement <16 x i8> %i.me, i8 %i.lp, i64 6
  %i.mg = insertelement <16 x i8> %i.mf, i8 %i.lq, i64 7
  %i.mh = insertelement <16 x i8> %i.mg, i8 %i.lr, i64 8
  %i.mi = insertelement <16 x i8> %i.mh, i8 %i.ls, i64 9
  %i.mj = insertelement <16 x i8> %i.mi, i8 %i.lt, i64 10
  %i.mk = insertelement <16 x i8> %i.mj, i8 %i.lu, i64 11
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 12
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 13
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 14
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 15
  %i.mp = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  store <16 x i8> %i.mo, ptr %i.mp, align 1, !tbaa !12, !alias.scope !318, !noalias !317
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mq = icmp eq i64 %index.next, %n.vec
  br i1 %i.mq, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !311

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %i.mr = add i64 %index53, %i.h                  ; 5 uses
  %i.ms = shl nsw i64 %i.mr, 1
  %i.mt = shl i64 %i.mr, 1
  %i.mu = shl i64 %i.mr, 1
  %i.mv = shl i64 %i.mr, 1
  %i.mw = getelementptr inbounds i8, ptr %i.jm, i64 %i.ms
  %i.mx = getelementptr i8, ptr %i.jm, i64 %i.mt
  %i.my = getelementptr i8, ptr %i.mx, i64 2
  %i.mz = getelementptr i8, ptr %i.jm, i64 %i.mu
  %i.na = getelementptr i8, ptr %i.mz, i64 4
  %i.nb = getelementptr i8, ptr %i.jm, i64 %i.mv
  %i.nc = getelementptr i8, ptr %i.nb, i64 6
  %i.nd = load i8, ptr %i.mw, align 1, !tbaa !12, !alias.scope !317
  %i.ne = load i8, ptr %i.my, align 1, !tbaa !12, !alias.scope !317
  %i.nf = load i8, ptr %i.na, align 1, !tbaa !12, !alias.scope !317
  %i.ng = load i8, ptr %i.nc, align 1, !tbaa !12, !alias.scope !317
  %i.nh = insertelement <4 x i8> poison, i8 %i.nd, i64 0
  %i.ni = insertelement <4 x i8> %i.nh, i8 %i.ne, i64 1
  %i.nj = insertelement <4 x i8> %i.ni, i8 %i.nf, i64 2
  %i.nk = insertelement <4 x i8> %i.nj, i8 %i.ng, i64 3
  %i.nl = getelementptr inbounds i8, ptr %i.jl, i64 %i.mr
  store <4 x i8> %i.nk, ptr %i.nl, align 1, !tbaa !12, !alias.scope !318, !noalias !317
  %index.next54 = add nuw i64 %index53, 4         ; 2 uses
  %i.nm = icmp eq i64 %index.next54, %n.vec52
  br i1 %i.nm, label %.lr.ph.i.preheader, label %vec.epilog.vector.body, !llvm.loop !312

.lr.ph.i.preheader:                               ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ %i.h, %iter.check ], [ %i.jf, %vec.epilog.iter.check ], [ %i.jj, %vec.epilog.vector.body ] ; 3 uses
  %i.nn = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.no = sub i32 0, %i.nn
  %xtraiter = and i32 %i.no, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.np = shl nsw i64 %indvars.iv.i.prol, 1
  %i.nq = getelementptr inbounds i8, ptr %i.jm, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !12
  %i.ns = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.i.prol
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !12
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !313

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.nt = icmp ugt i32 %i.nn, -4
  br i1 %i.nt, label %extract_even_c.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.nu = shl nsw i64 %indvars.iv.i, 1
  %i.nv = getelementptr inbounds i8, ptr %i.jm, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !12
  %i.nx = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.i
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ny = shl nsw i64 %indvars.iv.next.i, 1
  %i.nz = getelementptr inbounds i8, ptr %i.jm, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !12
  %i.ob = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.next.i
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !12
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.oc = shl nsw i64 %indvars.iv.next.i.1, 1
  %i.od = getelementptr inbounds i8, ptr %i.jm, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !12
  %i.of = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.next.i.1
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !12
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.og = shl nsw i64 %indvars.iv.next.i.2, 1
  %i.oh = getelementptr inbounds i8, ptr %i.jm, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !12
  %i.oj = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.next.i.2
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !12
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ok = and i64 %indvars.iv.next.i.3, 4294967295
  %exitcond.not.i.3 = icmp eq i64 %i.ok, 0
  br i1 %exitcond.not.i.3, label %extract_even_c.exit.loopexit, label %.lr.ph.i, !llvm.loop !314

extract_even_c.exit.loopexit:                     ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ol = getelementptr inbounds i8, ptr %.02127, i64 %i.n
  %i.om = getelementptr inbounds i8, ptr %.01830, i64 %i.o
  %i.on = add nuw nsw i32 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.on, %5
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !307

._crit_edge:                                      ; preds = %extract_even_c.exit.loopexit, %extract_even2_c.exit.loopexit.us, %extract_even2_c.exit.loopexit.us.us, %.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuyvtoyuv420_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i32 %4, 1
  %i.c = ashr i32 %i.b, 1                         ; 4 uses
  %i.d = zext i32 %4 to i64                       ; 14 uses
  %i.e = shl i32 %4, 1
  %9 = sext i32 %i.e to i64                       ; 6 uses
  %i.f = icmp sgt i32 %4, 0                       ; 2 uses
  %i.g = sub nsw i32 0, %4
  %i.h = sext i32 %i.g to i64                     ; 10 uses
  %i.i = sext i32 %8 to i64                       ; 6 uses
  %i.j = sub nsw i64 0, %i.i                      ; 2 uses
  %i.k = sext i32 %i.c to i64                     ; 4 uses
  %i.l = shl nsw i32 %i.c, 2
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = icmp sgt i32 %i.c, 0
  %i.o = sub nsw i32 0, %i.c
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = sext i32 %7 to i64                       ; 4 uses
  %i.r = sext i32 %6 to i64                       ; 4 uses
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.f, label %.lr.ph.preheader.i.us.us.preheader, label %extract_even_c.exit.us

.lr.ph.preheader.i.us.us.preheader:               ; preds = %.lr.ph.split.us
  %i.s = add nsw i32 %5, -1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = mul nsw i64 %i.i, %i.t
  %i.v = add nsw i32 %4, -1
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = add i64 %i.u, %i.x
  %i.z = add i64 %i.y, %9
  %i.aa = add i64 %i.z, 1
  %i.ab = zext nneg i32 %4 to i64                 ; 3 uses
  %i.ac = shl nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ad = sub i64 %i.aa, %i.ac
  %scevgep87 = getelementptr i8, ptr %3, i64 %i.ad
  %i.ae = sub nsw i64 %9, %i.ac
  %scevgep88 = getelementptr i8, ptr %3, i64 %i.ae
  %i.af = mul nsw i64 %i.r, %i.t
  %i.ag = add i64 %i.af, %i.d
  %i.ah = add i64 %i.ag, %i.w
  %i.ai = add i64 %i.ah, 1
  %i.aj = sub i64 %i.ai, %i.ab
  %scevgep89 = getelementptr i8, ptr %0, i64 %i.aj
  %i.ak = sub nsw i64 %i.d, %i.ab
  %scevgep90 = getelementptr i8, ptr %0, i64 %i.ak
  %min.iters.check91 = icmp ult i32 %4, 5
  %bound093 = icmp ult ptr %scevgep90, %scevgep87
  %bound194 = icmp ult ptr %scevgep88, %scevgep89
  %found.conflict95 = and i1 %bound093, %bound194
  %i.al = or i32 %8, %6
  %i.am = icmp slt i32 %i.al, 0
  %i.an = or i1 %found.conflict95, %i.am
  %min.iters.check99 = icmp ult i32 %4, 17
  %i.ao = and i64 %i.d, 15                        ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = select i1 %i.ap, i64 16, i64 %i.ao      ; 2 uses
  %n.vec101 = sub nsw i64 %i.d, %i.aq             ; 3 uses
  %i.ar = add nsw i64 %n.vec101, %i.h
  %min.epilog.iters.check109 = icmp samesign ult i64 %i.aq, 5
  %i.as = and i64 %i.d, 3                         ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec112 = sub nsw i64 %i.d, %i.au             ; 2 uses
  %i.av = add nsw i64 %n.vec112, %i.h
  br label %iter.check106

iter.check106:                                    ; preds = %.lr.ph.preheader.i.us.us.preheader, %bb.b
  %.035.us.us = phi i32 [ %i.he, %bb.b ], [ 0, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.02134.us.us = phi ptr [ %i.hd, %bb.b ], [ %0, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.02233.us.us = phi ptr [ %.1.us.us, %bb.b ], [ %1, %.lr.ph.preheader.i.us.us.preheader ] ; 3 uses
  %.02332.us.us = phi ptr [ %.124.us.us, %bb.b ], [ %2, %.lr.ph.preheader.i.us.us.preheader ] ; 3 uses
  %.02531.us.us = phi ptr [ %i.hc, %bb.b ], [ %3, %.lr.ph.preheader.i.us.us.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02134.us.us, i64 %i.d ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02531.us.us, i64 %9 ; 25 uses
  %brmerge = select i1 %min.iters.check91, i1 true, i1 %i.an
  br i1 %brmerge, label %.lr.ph.i.us.us.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %iter.check106
  br i1 %min.iters.check99, label %vec.epilog.ph110, label %vector.body102

vector.body102:                                   ; preds = %vector.main.loop.iter.check98, %vector.body102
  %index103 = phi i64 [ %index.next104, %vector.body102 ], [ 0, %vector.main.loop.iter.check98 ] ; 2 uses
  %i.ay = add i64 %index103, %i.h                 ; 17 uses
  %i.az = shl nsw i64 %i.ay, 1
  %i.ba = shl i64 %i.ay, 1
  %i.bb = shl i64 %i.ay, 1
  %i.bc = shl i64 %i.ay, 1
  %i.bd = shl i64 %i.ay, 1
  %i.be = shl i64 %i.ay, 1
  %i.bf = shl i64 %i.ay, 1
  %i.bg = shl i64 %i.ay, 1
  %i.bh = shl i64 %i.ay, 1
  %i.bi = shl i64 %i.ay, 1
  %i.bj = shl i64 %i.ay, 1
  %i.bk = shl i64 %i.ay, 1
  %i.bl = shl i64 %i.ay, 1
  %i.bm = shl i64 %i.ay, 1
  %i.bn = shl i64 %i.ay, 1
  %i.bo = shl i64 %i.ay, 1
  %i.bp = getelementptr inbounds i8, ptr %i.ax, i64 %i.az
  %i.bq = getelementptr i8, ptr %i.ax, i64 %i.ba
  %i.br = getelementptr i8, ptr %i.bq, i64 2
  %i.bs = getelementptr i8, ptr %i.ax, i64 %i.bb
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %i.bu = getelementptr i8, ptr %i.ax, i64 %i.bc
  %i.bv = getelementptr i8, ptr %i.bu, i64 6
  %i.bw = getelementptr i8, ptr %i.ax, i64 %i.bd
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = getelementptr i8, ptr %i.ax, i64 %i.be
  %i.bz = getelementptr i8, ptr %i.by, i64 10
  %i.ca = getelementptr i8, ptr %i.ax, i64 %i.bf
  %i.cb = getelementptr i8, ptr %i.ca, i64 12
  %i.cc = getelementptr i8, ptr %i.ax, i64 %i.bg
  %i.cd = getelementptr i8, ptr %i.cc, i64 14
  %i.ce = getelementptr i8, ptr %i.ax, i64 %i.bh
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %i.cg = getelementptr i8, ptr %i.ax, i64 %i.bi
  %i.ch = getelementptr i8, ptr %i.cg, i64 18
  %i.ci = getelementptr i8, ptr %i.ax, i64 %i.bj
  %i.cj = getelementptr i8, ptr %i.ci, i64 20
  %i.ck = getelementptr i8, ptr %i.ax, i64 %i.bk
  %i.cl = getelementptr i8, ptr %i.ck, i64 22
  %i.cm = getelementptr i8, ptr %i.ax, i64 %i.bl
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  %i.co = getelementptr i8, ptr %i.ax, i64 %i.bm
  %i.cp = getelementptr i8, ptr %i.co, i64 26
  %i.cq = getelementptr i8, ptr %i.ax, i64 %i.bn
  %i.cr = getelementptr i8, ptr %i.cq, i64 28
  %i.cs = getelementptr i8, ptr %i.ax, i64 %i.bo
  %i.ct = getelementptr i8, ptr %i.cs, i64 30
  %i.cu = load i8, ptr %i.bp, align 1, !tbaa !12, !alias.scope !335
  %i.cv = load i8, ptr %i.br, align 1, !tbaa !12, !alias.scope !335
  %i.cw = load i8, ptr %i.bt, align 1, !tbaa !12, !alias.scope !335
  %i.cx = load i8, ptr %i.bv, align 1, !tbaa !12, !alias.scope !335
  %i.cy = load i8, ptr %i.bx, align 1, !tbaa !12, !alias.scope !335
  %i.cz = load i8, ptr %i.bz, align 1, !tbaa !12, !alias.scope !335
  %i.da = load i8, ptr %i.cb, align 1, !tbaa !12, !alias.scope !335
  %i.db = load i8, ptr %i.cd, align 1, !tbaa !12, !alias.scope !335
  %i.dc = load i8, ptr %i.cf, align 1, !tbaa !12, !alias.scope !335
  %i.dd = load i8, ptr %i.ch, align 1, !tbaa !12, !alias.scope !335
  %i.de = load i8, ptr %i.cj, align 1, !tbaa !12, !alias.scope !335
  %i.df = load i8, ptr %i.cl, align 1, !tbaa !12, !alias.scope !335
  %i.dg = load i8, ptr %i.cn, align 1, !tbaa !12, !alias.scope !335
  %i.dh = load i8, ptr %i.cp, align 1, !tbaa !12, !alias.scope !335
  %i.di = load i8, ptr %i.cr, align 1, !tbaa !12, !alias.scope !335
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !12, !alias.scope !335
  %i.dk = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 1
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 2
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 3
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 4
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 5
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 6
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 7
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 8
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 9
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 10
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 11
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 12
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 13
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 14
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 15
  %i.ea = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  store <16 x i8> %i.dz, ptr %i.ea, align 1, !tbaa !12, !alias.scope !336, !noalias !335
  %index.next104 = add nuw i64 %index103, 16      ; 2 uses
  %i.eb = icmp eq i64 %index.next104, %n.vec101
  br i1 %i.eb, label %vec.epilog.iter.check107, label %vector.body102, !llvm.loop !322

vec.epilog.iter.check107:                         ; preds = %vector.body102
  br i1 %min.epilog.iters.check109, label %.lr.ph.i.us.us.preheader, label %vec.epilog.ph110, !prof !18

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check107
  %vec.epilog.resume.val111 = phi i64 [ %n.vec101, %vec.epilog.iter.check107 ], [ 0, %vector.main.loop.iter.check98 ]
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph110 ], [ %index.next115, %vec.epilog.vector.body113 ] ; 2 uses
  %i.ec = add i64 %index114, %i.h                 ; 5 uses
  %i.ed = shl nsw i64 %i.ec, 1
  %i.ee = shl i64 %i.ec, 1
  %i.ef = shl i64 %i.ec, 1
  %i.eg = shl i64 %i.ec, 1
  %i.eh = getelementptr inbounds i8, ptr %i.ax, i64 %i.ed
  %i.ei = getelementptr i8, ptr %i.ax, i64 %i.ee
  %i.ej = getelementptr i8, ptr %i.ei, i64 2
  %i.ek = getelementptr i8, ptr %i.ax, i64 %i.ef
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %i.em = getelementptr i8, ptr %i.ax, i64 %i.eg
  %i.en = getelementptr i8, ptr %i.em, i64 6
  %i.eo = load i8, ptr %i.eh, align 1, !tbaa !12, !alias.scope !335
  %i.ep = load i8, ptr %i.ej, align 1, !tbaa !12, !alias.scope !335
  %i.eq = load i8, ptr %i.el, align 1, !tbaa !12, !alias.scope !335
  %i.er = load i8, ptr %i.en, align 1, !tbaa !12, !alias.scope !335
  %i.es = insertelement <4 x i8> poison, i8 %i.eo, i64 0
  %i.et = insertelement <4 x i8> %i.es, i8 %i.ep, i64 1
  %i.eu = insertelement <4 x i8> %i.et, i8 %i.eq, i64 2
  %i.ev = insertelement <4 x i8> %i.eu, i8 %i.er, i64 3
  %i.ew = getelementptr inbounds i8, ptr %i.aw, i64 %i.ec
  store <4 x i8> %i.ev, ptr %i.ew, align 1, !tbaa !12, !alias.scope !336, !noalias !335
  %index.next115 = add nuw i64 %index114, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next115, %n.vec112
  br i1 %i.ex, label %.lr.ph.i.us.us.preheader, label %vec.epilog.vector.body113, !llvm.loop !323

end_hunk_4
begin_hunk_5_@yuyvtoyuv420_c:bb.a
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.jt = add i64 %index, %i.h                    ; 17 uses
  %i.ju = shl nsw i64 %i.jt, 1
  %i.jv = shl i64 %i.jt, 1
  %i.jw = shl i64 %i.jt, 1
  %i.jx = shl i64 %i.jt, 1
  %i.jy = shl i64 %i.jt, 1
  %i.jz = shl i64 %i.jt, 1
  %i.ka = shl i64 %i.jt, 1
  %i.kb = shl i64 %i.jt, 1
  %i.kc = shl i64 %i.jt, 1
  %i.kd = shl i64 %i.jt, 1
  %i.ke = shl i64 %i.jt, 1
  %i.kf = shl i64 %i.jt, 1
  %i.kg = shl i64 %i.jt, 1
  %i.kh = shl i64 %i.jt, 1
  %i.ki = shl i64 %i.jt, 1
  %i.kj = shl i64 %i.jt, 1
  %i.kk = getelementptr inbounds i8, ptr %i.js, i64 %i.ju
  %i.kl = getelementptr i8, ptr %i.js, i64 %i.jv
  %i.km = getelementptr i8, ptr %i.kl, i64 2
  %i.kn = getelementptr i8, ptr %i.js, i64 %i.jw
  %i.ko = getelementptr i8, ptr %i.kn, i64 4
  %i.kp = getelementptr i8, ptr %i.js, i64 %i.jx
  %i.kq = getelementptr i8, ptr %i.kp, i64 6
  %i.kr = getelementptr i8, ptr %i.js, i64 %i.jy
  %i.ks = getelementptr i8, ptr %i.kr, i64 8
  %i.kt = getelementptr i8, ptr %i.js, i64 %i.jz
  %i.ku = getelementptr i8, ptr %i.kt, i64 10
  %i.kv = getelementptr i8, ptr %i.js, i64 %i.ka
  %i.kw = getelementptr i8, ptr %i.kv, i64 12
  %i.kx = getelementptr i8, ptr %i.js, i64 %i.kb
  %i.ky = getelementptr i8, ptr %i.kx, i64 14
  %i.kz = getelementptr i8, ptr %i.js, i64 %i.kc
  %i.la = getelementptr i8, ptr %i.kz, i64 16
  %i.lb = getelementptr i8, ptr %i.js, i64 %i.kd
  %i.lc = getelementptr i8, ptr %i.lb, i64 18
  %i.ld = getelementptr i8, ptr %i.js, i64 %i.ke
  %i.le = getelementptr i8, ptr %i.ld, i64 20
  %i.lf = getelementptr i8, ptr %i.js, i64 %i.kf
  %i.lg = getelementptr i8, ptr %i.lf, i64 22
  %i.lh = getelementptr i8, ptr %i.js, i64 %i.kg
  %i.li = getelementptr i8, ptr %i.lh, i64 24
  %i.lj = getelementptr i8, ptr %i.js, i64 %i.kh
  %i.lk = getelementptr i8, ptr %i.lj, i64 26
  %i.ll = getelementptr i8, ptr %i.js, i64 %i.ki
  %i.lm = getelementptr i8, ptr %i.ll, i64 28
  %i.ln = getelementptr i8, ptr %i.js, i64 %i.kj
  %i.lo = getelementptr i8, ptr %i.ln, i64 30
  %i.lp = load i8, ptr %i.kk, align 1, !tbaa !12, !alias.scope !337
  %i.lq = load i8, ptr %i.km, align 1, !tbaa !12, !alias.scope !337
  %i.lr = load i8, ptr %i.ko, align 1, !tbaa !12, !alias.scope !337
  %i.ls = load i8, ptr %i.kq, align 1, !tbaa !12, !alias.scope !337
  %i.lt = load i8, ptr %i.ks, align 1, !tbaa !12, !alias.scope !337
  %i.lu = load i8, ptr %i.ku, align 1, !tbaa !12, !alias.scope !337
  %i.lv = load i8, ptr %i.kw, align 1, !tbaa !12, !alias.scope !337
  %i.lw = load i8, ptr %i.ky, align 1, !tbaa !12, !alias.scope !337
  %i.lx = load i8, ptr %i.la, align 1, !tbaa !12, !alias.scope !337
  %i.ly = load i8, ptr %i.lc, align 1, !tbaa !12, !alias.scope !337
  %i.lz = load i8, ptr %i.le, align 1, !tbaa !12, !alias.scope !337
  %i.ma = load i8, ptr %i.lg, align 1, !tbaa !12, !alias.scope !337
  %i.mb = load i8, ptr %i.li, align 1, !tbaa !12, !alias.scope !337
  %i.mc = load i8, ptr %i.lk, align 1, !tbaa !12, !alias.scope !337
  %i.md = load i8, ptr %i.lm, align 1, !tbaa !12, !alias.scope !337
  %i.me = load i8, ptr %i.lo, align 1, !tbaa !12, !alias.scope !337
  %i.mf = insertelement <16 x i8> poison, i8 %i.lp, i64 0
  %i.mg = insertelement <16 x i8> %i.mf, i8 %i.lq, i64 1
  %i.mh = insertelement <16 x i8> %i.mg, i8 %i.lr, i64 2
  %i.mi = insertelement <16 x i8> %i.mh, i8 %i.ls, i64 3
  %i.mj = insertelement <16 x i8> %i.mi, i8 %i.lt, i64 4
  %i.mk = insertelement <16 x i8> %i.mj, i8 %i.lu, i64 5
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 6
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 7
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 8
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 9
  %i.mp = insertelement <16 x i8> %i.mo, i8 %i.lz, i64 10
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 11
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 12
  %i.ms = insertelement <16 x i8> %i.mr, i8 %i.mc, i64 13
  %i.mt = insertelement <16 x i8> %i.ms, i8 %i.md, i64 14
  %i.mu = insertelement <16 x i8> %i.mt, i8 %i.me, i64 15
  %i.mv = getelementptr inbounds i8, ptr %i.jr, i64 %i.jt
  store <16 x i8> %i.mu, ptr %i.mv, align 1, !tbaa !12, !alias.scope !338, !noalias !337
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mw = icmp eq i64 %index.next, %n.vec
  br i1 %i.mw, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !331

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.us42.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 2 uses
  %i.mx = add i64 %index75, %i.h                  ; 5 uses
  %i.my = shl nsw i64 %i.mx, 1
  %i.mz = shl i64 %i.mx, 1
  %i.na = shl i64 %i.mx, 1
  %i.nb = shl i64 %i.mx, 1
  %i.nc = getelementptr inbounds i8, ptr %i.js, i64 %i.my
  %i.nd = getelementptr i8, ptr %i.js, i64 %i.mz
  %i.ne = getelementptr i8, ptr %i.nd, i64 2
  %i.nf = getelementptr i8, ptr %i.js, i64 %i.na
  %i.ng = getelementptr i8, ptr %i.nf, i64 4
  %i.nh = getelementptr i8, ptr %i.js, i64 %i.nb
  %i.ni = getelementptr i8, ptr %i.nh, i64 6
  %i.nj = load i8, ptr %i.nc, align 1, !tbaa !12, !alias.scope !337
  %i.nk = load i8, ptr %i.ne, align 1, !tbaa !12, !alias.scope !337
  %i.nl = load i8, ptr %i.ng, align 1, !tbaa !12, !alias.scope !337
  %i.nm = load i8, ptr %i.ni, align 1, !tbaa !12, !alias.scope !337
  %i.nn = insertelement <4 x i8> poison, i8 %i.nj, i64 0
  %i.no = insertelement <4 x i8> %i.nn, i8 %i.nk, i64 1
  %i.np = insertelement <4 x i8> %i.no, i8 %i.nl, i64 2
  %i.nq = insertelement <4 x i8> %i.np, i8 %i.nm, i64 3
  %i.nr = getelementptr inbounds i8, ptr %i.jr, i64 %i.mx
  store <4 x i8> %i.nq, ptr %i.nr, align 1, !tbaa !12, !alias.scope !338, !noalias !337
  %index.next76 = add nuw i64 %index75, 4         ; 2 uses
  %i.ns = icmp eq i64 %index.next76, %n.vec74
  br i1 %i.ns, label %.lr.ph.i.us42.preheader, label %vec.epilog.vector.body, !llvm.loop !332

.lr.ph.i.us42.preheader:                          ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.us43.ph = phi i64 [ %i.h, %iter.check ], [ %i.jm, %vec.epilog.iter.check ], [ %i.jq, %vec.epilog.vector.body ] ; 3 uses
  %i.nt = trunc i64 %indvars.iv.i.us43.ph to i32  ; 2 uses
  %i.nu = sub i32 0, %i.nt
  %xtraiter = and i32 %i.nu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.us42.prol.loopexit, label %.lr.ph.i.us42.prol

.lr.ph.i.us42.prol:                               ; preds = %.lr.ph.i.us42.preheader, %.lr.ph.i.us42.prol
  %indvars.iv.i.us43.prol = phi i64 [ %indvars.iv.next.i.us44.prol, %.lr.ph.i.us42.prol ], [ %indvars.iv.i.us43.ph, %.lr.ph.i.us42.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.us42.prol ], [ 0, %.lr.ph.i.us42.preheader ]
  %i.nv = shl nsw i64 %indvars.iv.i.us43.prol, 1
  %i.nw = getelementptr inbounds i8, ptr %i.js, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !12
  %i.ny = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.i.us43.prol
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !12
  %indvars.iv.next.i.us44.prol = add nsw i64 %indvars.iv.i.us43.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.us42.prol.loopexit, label %.lr.ph.i.us42.prol, !llvm.loop !333

.lr.ph.i.us42.prol.loopexit:                      ; preds = %.lr.ph.i.us42.prol, %.lr.ph.i.us42.preheader
  %indvars.iv.i.us43.unr = phi i64 [ %indvars.iv.i.us43.ph, %.lr.ph.i.us42.preheader ], [ %indvars.iv.next.i.us44.prol, %.lr.ph.i.us42.prol ]
  %i.nz = icmp ugt i32 %i.nt, -4
  br i1 %i.nz, label %extract_even_c.exit.loopexit.us46, label %.lr.ph.i.us42

.lr.ph.i.us42:                                    ; preds = %.lr.ph.i.us42.prol.loopexit, %.lr.ph.i.us42
  %indvars.iv.i.us43 = phi i64 [ %indvars.iv.next.i.us44.3, %.lr.ph.i.us42 ], [ %indvars.iv.i.us43.unr, %.lr.ph.i.us42.prol.loopexit ] ; 6 uses
  %i.oa = shl nsw i64 %indvars.iv.i.us43, 1
  %i.ob = getelementptr inbounds i8, ptr %i.js, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !12
  %i.od = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.i.us43
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !12
  %indvars.iv.next.i.us44 = add nsw i64 %indvars.iv.i.us43, 1 ; 2 uses
  %i.oe = shl nsw i64 %indvars.iv.next.i.us44, 1
  %i.of = getelementptr inbounds i8, ptr %i.js, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !12
  %i.oh = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.next.i.us44
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !12
  %indvars.iv.next.i.us44.1 = add nsw i64 %indvars.iv.i.us43, 2 ; 2 uses
  %i.oi = shl nsw i64 %indvars.iv.next.i.us44.1, 1
  %i.oj = getelementptr inbounds i8, ptr %i.js, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !12
  %i.ol = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.next.i.us44.1
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !12
  %indvars.iv.next.i.us44.2 = add nsw i64 %indvars.iv.i.us43, 3 ; 2 uses
  %i.om = shl nsw i64 %indvars.iv.next.i.us44.2, 1
  %i.on = getelementptr inbounds i8, ptr %i.js, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !12
  %i.op = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv.next.i.us44.2
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !12
  %indvars.iv.next.i.us44.3 = add nsw i64 %indvars.iv.i.us43, 4 ; 2 uses
  %i.oq = and i64 %indvars.iv.next.i.us44.3, 4294967295
  %exitcond.not.i.us45.3 = icmp eq i64 %i.oq, 0
  br i1 %exitcond.not.i.us45.3, label %extract_even_c.exit.loopexit.us46, label %.lr.ph.i.us42, !llvm.loop !334

extract_even_c.exit.loopexit.us46:                ; preds = %.lr.ph.i.us42, %.lr.ph.i.us42.prol.loopexit
  %i.or = getelementptr inbounds i8, ptr %.02531.us40, i64 %i.i
  %i.os = getelementptr inbounds i8, ptr %.02134.us37, i64 %i.r
  %i.ot = add nuw nsw i32 %.035.us36, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ot, %5
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !327

._crit_edge:                                      ; preds = %extract_even_c.exit.loopexit.us46, %bb.c, %bb.b, %.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuyvtoyuv422_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %4, 1                        ; 3 uses
  %i.c = ashr i32 %i.b, 1                         ; 6 uses
  %i.d = zext i32 %4 to i64                       ; 14 uses
  %i.e = shl i32 %4, 1
  %9 = sext i32 %i.e to i64                       ; 6 uses
  %i.f = icmp sgt i32 %4, 0                       ; 2 uses
  %i.g = sub nsw i32 0, %4
  %i.h = sext i32 %i.g to i64                     ; 10 uses
  %i.i = sext i32 %i.c to i64                     ; 4 uses
  %i.j = shl nsw i32 %i.c, 2
  %10 = sext i32 %i.j to i64                      ; 2 uses
  %i.k = icmp sgt i32 %i.c, 0
  %i.l = sub nsw i32 0, %i.c
  %i.m = sext i32 %i.l to i64                     ; 10 uses
  %i.n = sext i32 %8 to i64                       ; 5 uses
  %i.o = sext i32 %6 to i64                       ; 4 uses
  %i.p = sext i32 %7 to i64                       ; 4 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.f, label %.lr.ph.preheader.i.us.us.preheader, label %extract_even_c.exit.us.preheader

extract_even_c.exit.us.preheader:                 ; preds = %.lr.ph.split.us
  %i.q = and i32 %i.b, 2
  %lcmp.mod99.not = icmp eq i32 %i.q, 0
  %i.r = shl nsw i64 %i.m, 2
  %indvars.iv.next.i25.us.prol = add nsw i64 %i.m, 1
  %i.s = icmp eq i32 %i.c, 1
  br label %extract_even_c.exit.us

.lr.ph.preheader.i.us.us.preheader:               ; preds = %.lr.ph.split.us
  %i.t = add nsw i32 %5, -1
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = mul nsw i64 %i.n, %i.u
  %i.w = add nsw i32 %4, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = add i64 %i.v, %i.y
  %i.aa = add i64 %i.z, %9
  %i.ab = add i64 %i.aa, 1
  %i.ac = zext nneg i32 %4 to i64                 ; 3 uses
  %i.ad = shl nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %scevgep65 = getelementptr i8, ptr %3, i64 %i.ae
  %i.af = sub nsw i64 %9, %i.ad
  %scevgep66 = getelementptr i8, ptr %3, i64 %i.af
  %i.ag = mul nsw i64 %i.o, %i.u
  %i.ah = add i64 %i.ag, %i.d
  %i.ai = add i64 %i.ah, %i.x
  %i.aj = add i64 %i.ai, 1
  %i.ak = sub i64 %i.aj, %i.ac
  %scevgep67 = getelementptr i8, ptr %0, i64 %i.ak
  %i.al = sub nsw i64 %i.d, %i.ac
  %scevgep68 = getelementptr i8, ptr %0, i64 %i.al
  %min.iters.check69 = icmp ult i32 %4, 5
  %bound071 = icmp ult ptr %scevgep68, %scevgep65
  %bound172 = icmp ult ptr %scevgep66, %scevgep67
  %found.conflict73 = and i1 %bound071, %bound172
  %i.am = or i32 %8, %6
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = or i1 %found.conflict73, %i.an
  %min.iters.check77 = icmp ult i32 %4, 17
  %i.ap = and i64 %i.d, 15                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 16, i64 %i.ap      ; 2 uses
  %n.vec79 = sub nsw i64 %i.d, %i.ar              ; 3 uses
  %i.as = add nsw i64 %n.vec79, %i.h
  %min.epilog.iters.check87 = icmp samesign ult i64 %i.ar, 5
  %i.at = and i64 %i.d, 3                         ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 4, i64 %i.at
  %n.vec90 = sub nsw i64 %i.d, %i.av              ; 2 uses
  %i.aw = add nsw i64 %n.vec90, %i.h
  %i.ax = and i32 %i.b, 2
  %lcmp.mod105.not = icmp eq i32 %i.ax, 0
  %i.ay = shl nsw i64 %i.m, 2
  %indvars.iv.next.i25.us.us.prol = add nsw i64 %i.m, 1
  %i.az = icmp eq i32 %i.c, 1
  br label %iter.check84

iter.check84:                                     ; preds = %.lr.ph.preheader.i.us.us.preheader, %extract_odd2_c.exit.loopexit.us.us
  %.031.us.us = phi i32 [ %i.hc, %extract_odd2_c.exit.loopexit.us.us ], [ 0, %.lr.ph.preheader.i.us.us.preheader ]
  %.01830.us.us = phi ptr [ %i.gz, %extract_odd2_c.exit.loopexit.us.us ], [ %0, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.01929.us.us = phi ptr [ %i.ha, %extract_odd2_c.exit.loopexit.us.us ], [ %1, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.02028.us.us = phi ptr [ %i.hb, %extract_odd2_c.exit.loopexit.us.us ], [ %2, %.lr.ph.preheader.i.us.us.preheader ] ; 2 uses
  %.02127.us.us = phi ptr [ %i.gy, %extract_odd2_c.exit.loopexit.us.us ], [ %3, %.lr.ph.preheader.i.us.us.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01830.us.us, i64 %i.d ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02127.us.us, i64 %9 ; 25 uses
  %brmerge = select i1 %min.iters.check69, i1 true, i1 %i.ao
  br i1 %brmerge, label %.lr.ph.i.us.us.preheader, label %vector.main.loop.iter.check76

vector.main.loop.iter.check76:                    ; preds = %iter.check84
  br i1 %min.iters.check77, label %vec.epilog.ph88, label %vector.body80

vector.body80:                                    ; preds = %vector.main.loop.iter.check76, %vector.body80
  %index81 = phi i64 [ %index.next82, %vector.body80 ], [ 0, %vector.main.loop.iter.check76 ] ; 2 uses
  %i.bc = add i64 %index81, %i.h                  ; 17 uses
  %i.bd = shl nsw i64 %i.bc, 1
  %i.be = shl i64 %i.bc, 1
  %i.bf = shl i64 %i.bc, 1
  %i.bg = shl i64 %i.bc, 1
  %i.bh = shl i64 %i.bc, 1
  %i.bi = shl i64 %i.bc, 1
  %i.bj = shl i64 %i.bc, 1
  %i.bk = shl i64 %i.bc, 1
  %i.bl = shl i64 %i.bc, 1
  %i.bm = shl i64 %i.bc, 1
  %i.bn = shl i64 %i.bc, 1
  %i.bo = shl i64 %i.bc, 1
  %i.bp = shl i64 %i.bc, 1
  %i.bq = shl i64 %i.bc, 1
  %i.br = shl i64 %i.bc, 1
  %i.bs = shl i64 %i.bc, 1
  %i.bt = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  %i.bu = getelementptr i8, ptr %i.bb, i64 %i.be
  %i.bv = getelementptr i8, ptr %i.bu, i64 2
  %i.bw = getelementptr i8, ptr %i.bb, i64 %i.bf
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %i.by = getelementptr i8, ptr %i.bb, i64 %i.bg
  %i.bz = getelementptr i8, ptr %i.by, i64 6
  %i.ca = getelementptr i8, ptr %i.bb, i64 %i.bh
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = getelementptr i8, ptr %i.bb, i64 %i.bi
  %i.cd = getelementptr i8, ptr %i.cc, i64 10
  %i.ce = getelementptr i8, ptr %i.bb, i64 %i.bj
  %i.cf = getelementptr i8, ptr %i.ce, i64 12
  %i.cg = getelementptr i8, ptr %i.bb, i64 %i.bk
  %i.ch = getelementptr i8, ptr %i.cg, i64 14
  %i.ci = getelementptr i8, ptr %i.bb, i64 %i.bl
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  %i.ck = getelementptr i8, ptr %i.bb, i64 %i.bm
  %i.cl = getelementptr i8, ptr %i.ck, i64 18
  %i.cm = getelementptr i8, ptr %i.bb, i64 %i.bn
  %i.cn = getelementptr i8, ptr %i.cm, i64 20
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.bo
  %i.cp = getelementptr i8, ptr %i.co, i64 22
  %i.cq = getelementptr i8, ptr %i.bb, i64 %i.bp
  %i.cr = getelementptr i8, ptr %i.cq, i64 24
  %i.cs = getelementptr i8, ptr %i.bb, i64 %i.bq
  %i.ct = getelementptr i8, ptr %i.cs, i64 26
  %i.cu = getelementptr i8, ptr %i.bb, i64 %i.br
  %i.cv = getelementptr i8, ptr %i.cu, i64 28
  %i.cw = getelementptr i8, ptr %i.bb, i64 %i.bs
  %i.cx = getelementptr i8, ptr %i.cw, i64 30
  %i.cy = load i8, ptr %i.bt, align 1, !tbaa !12, !alias.scope !355
  %i.cz = load i8, ptr %i.bv, align 1, !tbaa !12, !alias.scope !355
  %i.da = load i8, ptr %i.bx, align 1, !tbaa !12, !alias.scope !355
  %i.db = load i8, ptr %i.bz, align 1, !tbaa !12, !alias.scope !355
  %i.dc = load i8, ptr %i.cb, align 1, !tbaa !12, !alias.scope !355
  %i.dd = load i8, ptr %i.cd, align 1, !tbaa !12, !alias.scope !355
  %i.de = load i8, ptr %i.cf, align 1, !tbaa !12, !alias.scope !355
  %i.df = load i8, ptr %i.ch, align 1, !tbaa !12, !alias.scope !355
  %i.dg = load i8, ptr %i.cj, align 1, !tbaa !12, !alias.scope !355
  %i.dh = load i8, ptr %i.cl, align 1, !tbaa !12, !alias.scope !355
  %i.di = load i8, ptr %i.cn, align 1, !tbaa !12, !alias.scope !355
  %i.dj = load i8, ptr %i.cp, align 1, !tbaa !12, !alias.scope !355
  %i.dk = load i8, ptr %i.cr, align 1, !tbaa !12, !alias.scope !355
  %i.dl = load i8, ptr %i.ct, align 1, !tbaa !12, !alias.scope !355
  %i.dm = load i8, ptr %i.cv, align 1, !tbaa !12, !alias.scope !355
  %i.dn = load i8, ptr %i.cx, align 1, !tbaa !12, !alias.scope !355
  %i.do = insertelement <16 x i8> poison, i8 %i.cy, i64 0
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 1
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 2
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 3
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 4
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 5
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 6
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 7
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 8
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 9
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 10
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 11
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 12
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 13
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 14
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 15
  %i.ee = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  store <16 x i8> %i.ed, ptr %i.ee, align 1, !tbaa !12, !alias.scope !356, !noalias !355
  %index.next82 = add nuw i64 %index81, 16        ; 2 uses
  %i.ef = icmp eq i64 %index.next82, %n.vec79
  br i1 %i.ef, label %vec.epilog.iter.check85, label %vector.body80, !llvm.loop !342

vec.epilog.iter.check85:                          ; preds = %vector.body80
  br i1 %min.epilog.iters.check87, label %.lr.ph.i.us.us.preheader, label %vec.epilog.ph88, !prof !18

vec.epilog.ph88:                                  ; preds = %vector.main.loop.iter.check76, %vec.epilog.iter.check85
  %vec.epilog.resume.val89 = phi i64 [ %n.vec79, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check76 ]
  br label %vec.epilog.vector.body91

vec.epilog.vector.body91:                         ; preds = %vec.epilog.vector.body91, %vec.epilog.ph88
  %index92 = phi i64 [ %vec.epilog.resume.val89, %vec.epilog.ph88 ], [ %index.next93, %vec.epilog.vector.body91 ] ; 2 uses
  %i.eg = add i64 %index92, %i.h                  ; 5 uses
  %i.eh = shl nsw i64 %i.eg, 1
  %i.ei = shl i64 %i.eg, 1
  %i.ej = shl i64 %i.eg, 1
  %i.ek = shl i64 %i.eg, 1
  %i.el = getelementptr inbounds i8, ptr %i.bb, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.bb, i64 %i.ei
  %i.en = getelementptr i8, ptr %i.em, i64 2
  %i.eo = getelementptr i8, ptr %i.bb, i64 %i.ej
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %i.eq = getelementptr i8, ptr %i.bb, i64 %i.ek
  %i.er = getelementptr i8, ptr %i.eq, i64 6
  %i.es = load i8, ptr %i.el, align 1, !tbaa !12, !alias.scope !355
  %i.et = load i8, ptr %i.en, align 1, !tbaa !12, !alias.scope !355
  %i.eu = load i8, ptr %i.ep, align 1, !tbaa !12, !alias.scope !355
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !12, !alias.scope !355
  %i.ew = insertelement <4 x i8> poison, i8 %i.es, i64 0
  %i.ex = insertelement <4 x i8> %i.ew, i8 %i.et, i64 1
  %i.ey = insertelement <4 x i8> %i.ex, i8 %i.eu, i64 2
  %i.ez = insertelement <4 x i8> %i.ey, i8 %i.ev, i64 3
end_hunk_5
