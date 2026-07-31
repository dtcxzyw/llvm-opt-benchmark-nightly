inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPUnfilters = external local_unnamed_addr global [4 x ptr], align 16
@WebPFilters = external local_unnamed_addr global [4 x ptr], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8FiltersInitSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @HorizontalUnfilter_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUnfilters, i64 8), align 8, !tbaa !7
  store ptr @VerticalUnfilter_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUnfilters, i64 16), align 16, !tbaa !7
  store ptr @GradientUnfilter_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUnfilters, i64 24), align 8, !tbaa !7
  store ptr @HorizontalFilter_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPFilters, i64 8), align 8, !tbaa !7
  store ptr @VerticalFilter_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPFilters, i64 16), align 16, !tbaa !7
  store ptr @GradientFilter_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPFilters, i64 24), align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @HorizontalUnfilter_SSE2(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 1)) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !9
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = add i8 %i.d, %i.a                        ; 2 uses
  store i8 %i.e, ptr %2, align 1, !tbaa !9
  %i.f = icmp slt i32 %3, 2
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not38 = icmp samesign ult i32 %3, 9
  br i1 %.not38, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.g = zext i8 %i.e to i32
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.g, i64 0
  %i.i = bitcast <4 x i32> %i.h to <2 x i64>
  %i.j = zext nneg i32 %3 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.k = add nsw i32 %3, -9
  %i.l = and i32 %i.k, -8
  %i.m = add nuw nsw i32 %i.l, 9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.0.lcssa = phi i32 [ 1, %bb.d ], [ %i.m, %.preheader.loopexit ] ; 4 uses
  %4 = icmp samesign ult i32 %.0.lcssa, %3
  br i1 %4, label %.lr.ph42.preheader, label %.loopexit

.lr.ph42.preheader:                               ; preds = %.preheader
  %i.n = zext i32 %.0.lcssa to i64                ; 3 uses
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1  ; 2 uses
  %i.p = sub nuw i32 %3, %.0.lcssa
  %xtraiter = and i32 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader, %.lr.ph42.prol
  %store_forwarded.prol = phi i8 [ %i.t, %.lr.ph42.prol ], [ %load_initial, %.lr.ph42.preheader ]
  %indvars.iv48.prol = phi i64 [ %indvars.iv.next49.prol, %.lr.ph42.prol ], [ %i.n, %.lr.ph42.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph42.prol ], [ 0, %.lr.ph42.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.prol
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = getelementptr i8, ptr %2, i64 %indvars.iv48.prol
  %i.t = add i8 %store_forwarded.prol, %i.r       ; 3 uses
  store i8 %i.t, ptr %i.s, align 1, !tbaa !9
  %indvars.iv.next49.prol = add nuw nsw i64 %indvars.iv48.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol, !llvm.loop !10

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %store_forwarded.unr = phi i8 [ %load_initial, %.lr.ph42.preheader ], [ %i.t, %.lr.ph42.prol ]
  %indvars.iv48.unr = phi i64 [ %i.n, %.lr.ph42.preheader ], [ %indvars.iv.next49.prol, %.lr.ph42.prol ]
  %i.u = sub i32 %.0.lcssa, %3
  %i.v = icmp ugt i32 %i.u, -4
  br i1 %i.v, label %.loopexit, label %.lr.ph42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv43 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next44, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 9, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.03439 = phi <2 x i64> [ %i.i, %.lr.ph.preheader ], [ %i.al, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv43
  %i.x = load i64, ptr %i.w, align 1, !tbaa !9
  %i.y = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.x, i64 0
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = bitcast <2 x i64> %.03439 to <16 x i8>
  %i.ab = add <16 x i8> %i.z, %i.aa               ; 2 uses
  %i.ac = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.ab, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ad = add <16 x i8> %i.ac, %i.ab              ; 2 uses
  %i.ae = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ad, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.af = add <16 x i8> %i.ae, %i.ad              ; 2 uses
  %i.ag = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.af, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ah = add <16 x i8> %i.ag, %i.af
  %i.ai = bitcast <16 x i8> %i.ah to <2 x i64>    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv43
  %i.ak = extractelement <2 x i64> %i.ai, i64 0
  store i64 %i.ak, ptr %i.aj, align 1, !tbaa !9
  %i.al = lshr <2 x i64> %i.ai, splat (i64 56)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.j
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 8
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !12

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %store_forwarded = phi i8 [ %i.bb, %.lr.ph42 ], [ %store_forwarded.unr, %.lr.ph42.prol.loopexit ]
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.3, %.lr.ph42 ], [ %indvars.iv48.unr, %.lr.ph42.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = getelementptr i8, ptr %2, i64 %indvars.iv48
  %i.ap = add i8 %store_forwarded, %i.an          ; 2 uses
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !9
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = getelementptr i8, ptr %2, i64 %indvars.iv.next49
  %i.at = add i8 %i.ap, %i.ar                     ; 2 uses
  store i8 %i.at, ptr %i.as, align 1, !tbaa !9
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = getelementptr i8, ptr %2, i64 %indvars.iv.next49.1
  %i.ax = add i8 %i.at, %i.av                     ; 2 uses
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !9
  %indvars.iv.next49.2 = add nuw nsw i64 %indvars.iv48, 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = getelementptr i8, ptr %2, i64 %indvars.iv.next49.2
  %i.bb = add i8 %i.ax, %i.az                     ; 2 uses
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !9
  %indvars.iv.next49.3 = add nuw nsw i64 %indvars.iv48, 4 ; 2 uses
  %i.bc = trunc nuw i64 %indvars.iv.next49.3 to i32
  %i.bd = icmp sgt i32 %3, %i.bc
  br i1 %i.bd, label %.lr.ph42, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42, %.preheader, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @VerticalUnfilter_SSE2(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !9       ; 2 uses
  store i8 %i.e, ptr %2, align 1, !tbaa !9
  %i.f = icmp slt i32 %3, 2
  br i1 %i.f, label %HorizontalUnfilter_SSE2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not38.i = icmp samesign ult i32 %3, 9
  br i1 %.not38.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.g = zext i8 %i.e to i32
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.g, i64 0
  %i.i = bitcast <4 x i32> %i.h to <2 x i64>
  %i.j = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.k = add nsw i32 %3, -9
  %i.l = and i32 %i.k, -8
  %i.m = add nuw nsw i32 %i.l, 9
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.c
  %.0.lcssa.i = phi i32 [ 1, %bb.c ], [ %i.m, %.preheader.loopexit.i ] ; 4 uses
  %4 = icmp samesign ult i32 %.0.lcssa.i, %3
  br i1 %4, label %.lr.ph42.preheader.i, label %HorizontalUnfilter_SSE2.exit

.lr.ph42.preheader.i:                             ; preds = %.preheader.i
  %i.n = zext i32 %.0.lcssa.i to i64              ; 3 uses
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1  ; 2 uses
  %i.p = sub nuw i32 %3, %.0.lcssa.i
  %xtraiter65 = and i32 %i.p, 3                   ; 2 uses
  %lcmp.mod66.not = icmp eq i32 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol

.lr.ph42.i.prol:                                  ; preds = %.lr.ph42.preheader.i, %.lr.ph42.i.prol
  %store_forwarded.prol = phi i8 [ %i.t, %.lr.ph42.i.prol ], [ %load_initial, %.lr.ph42.preheader.i ]
  %indvars.iv48.i.prol = phi i64 [ %indvars.iv.next49.i.prol, %.lr.ph42.i.prol ], [ %i.n, %.lr.ph42.preheader.i ] ; 3 uses
  %prol.iter67 = phi i32 [ %prol.iter67.next, %.lr.ph42.i.prol ], [ 0, %.lr.ph42.preheader.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.i.prol
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = getelementptr i8, ptr %2, i64 %indvars.iv48.i.prol
  %i.t = add i8 %store_forwarded.prol, %i.r       ; 3 uses
  store i8 %i.t, ptr %i.s, align 1, !tbaa !9
  %indvars.iv.next49.i.prol = add nuw nsw i64 %indvars.iv48.i.prol, 1 ; 2 uses
  %prol.iter67.next = add i32 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i32 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol, !llvm.loop !15

.lr.ph42.i.prol.loopexit:                         ; preds = %.lr.ph42.i.prol, %.lr.ph42.preheader.i
  %store_forwarded.unr = phi i8 [ %load_initial, %.lr.ph42.preheader.i ], [ %i.t, %.lr.ph42.i.prol ]
  %indvars.iv48.i.unr = phi i64 [ %i.n, %.lr.ph42.preheader.i ], [ %indvars.iv.next49.i.prol, %.lr.ph42.i.prol ]
  %i.u = sub i32 %.0.lcssa.i, %3
  %i.v = icmp ugt i32 %i.u, -4
  br i1 %i.v, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph42.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv43.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next44.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 9, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %.03439.i = phi <2 x i64> [ %i.i, %.lr.ph.preheader.i ], [ %i.al, %.lr.ph.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv43.i
  %i.x = load i64, ptr %i.w, align 1, !tbaa !9
  %i.y = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.x, i64 0
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = bitcast <2 x i64> %.03439.i to <16 x i8>
  %i.ab = add <16 x i8> %i.z, %i.aa               ; 2 uses
  %i.ac = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.ab, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ad = add <16 x i8> %i.ac, %i.ab              ; 2 uses
  %i.ae = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ad, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.af = add <16 x i8> %i.ae, %i.ad              ; 2 uses
  %i.ag = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.af, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ah = add <16 x i8> %i.ag, %i.af
  %i.ai = bitcast <16 x i8> %i.ah to <2 x i64>    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv43.i
  %i.ak = extractelement <2 x i64> %i.ai, i64 0
  store i64 %i.ak, ptr %i.aj, align 1, !tbaa !9
  %i.al = lshr <2 x i64> %i.ai, splat (i64 56)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.j
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 8
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !12

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.prol.loopexit, %.lr.ph42.i
  %store_forwarded = phi i8 [ %i.bb, %.lr.ph42.i ], [ %store_forwarded.unr, %.lr.ph42.i.prol.loopexit ]
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i.3, %.lr.ph42.i ], [ %indvars.iv48.i.unr, %.lr.ph42.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = getelementptr i8, ptr %2, i64 %indvars.iv48.i
  %i.ap = add i8 %store_forwarded, %i.an          ; 2 uses
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !9
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i
  %i.at = add i8 %i.ap, %i.ar                     ; 2 uses
  store i8 %i.at, ptr %i.as, align 1, !tbaa !9
  %indvars.iv.next49.i.1 = add nuw nsw i64 %indvars.iv48.i, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i.1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i.1
  %i.ax = add i8 %i.at, %i.av                     ; 2 uses
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !9
  %indvars.iv.next49.i.2 = add nuw nsw i64 %indvars.iv48.i, 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i.2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i.2
  %i.bb = add i8 %i.ax, %i.az                     ; 2 uses
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !9
  %indvars.iv.next49.i.3 = add nuw nsw i64 %indvars.iv48.i, 4 ; 2 uses
  %i.bc = trunc nuw i64 %indvars.iv.next49.i.3 to i32
  %i.bd = icmp sgt i32 %3, %i.bc
  br i1 %i.bd, label %.lr.ph42.i, label %HorizontalUnfilter_SSE2.exit, !llvm.loop !14

bb.d:                                             ; preds = %bb.a
  %i.be = icmp sgt i32 %3, 31
  br i1 %i.be, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bf = zext nneg i32 %3 to i64
  %i.bg = add nsw i64 %i.bf, -32                  ; 2 uses
  %i.bh = lshr i64 %i.bg, 5                       ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bi, 1152921504606846974
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %i.bk = and i64 %i.bg, 32
  %lcmp.mod.not.not = icmp eq i64 %i.bk, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod62 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.bm = load <16 x i8>, ptr %i.bl, align 1, !tbaa !9
  %i.bn = or disjoint i64 %indvars.iv.epil.init, 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  %i.bp = load <16 x i8>, ptr %i.bo, align 1, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.br = load <16 x i8>, ptr %i.bq, align 1, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %i.bt = load <16 x i8>, ptr %i.bs, align 1, !tbaa !9
  %i.bu = add <16 x i8> %i.br, %i.bm
  %i.bv = add <16 x i8> %i.bt, %i.bp
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil.init
  store <16 x i8> %i.bu, ptr %i.bw, align 1, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn
  store <16 x i8> %i.bv, ptr %i.bx, align 1, !tbaa !9
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 32
  br label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.lr.ph.epil.preheader ]
  %i.by = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %i.by, %.preheader.loopexit ] ; 2 uses
  %i.bz = icmp slt i32 %.0.lcssa, %3
  br i1 %i.bz, label %iter.check, label %HorizontalUnfilter_SSE2.exit

iter.check:                                       ; preds = %.preheader
  %i.ca = zext i32 %.0.lcssa to i64               ; 7 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 4 uses
  %i.cb = sub nsw i64 %wide.trip.count, %i.ca     ; 7 uses
  %min.iters.check = icmp ult i64 %i.cb, 8
  br i1 %min.iters.check, label %.lr.ph38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cc = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.cc, -32
  %i.cd = sub i64 %i.a, %i.c
  %diff.check47 = icmp ugt i64 %i.cd, -32
  %conflict.rdx = or i1 %diff.check, %diff.check47
  br i1 %conflict.rdx, label %.lr.ph38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check48 = icmp ult i64 %i.cb, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cb, 24
  %n.vec = and i64 %i.cb, -32                     ; 4 uses
  %i.ce = add nsw i64 %n.vec, %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = add nuw i64 %index, %i.ca               ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load = load <16 x i8>, ptr %i.cg, align 1, !tbaa !9
  %wide.load49 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load50 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !9
  %wide.load51 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !9
  %i.ck = add <16 x i8> %wide.load50, %wide.load
  %i.cl = add <16 x i8> %wide.load51, %wide.load49
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cf ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <16 x i8> %i.ck, ptr %i.cm, align 1, !tbaa !9
  store <16 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %HorizontalUnfilter_SSE2.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph38.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.cb, -8                    ; 3 uses
  %i.cp = add nsw i64 %n.vec53, %i.ca
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = add nuw i64 %index54, %i.ca             ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %wide.load55 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %wide.load56 = load <8 x i8>, ptr %i.cs, align 1, !tbaa !9
  %i.ct = add <8 x i8> %wide.load56, %wide.load55
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq
  store <8 x i8> %i.ct, ptr %i.cu, align 1, !tbaa !9
  %index.next57 = add nuw i64 %index54, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.cb, %n.vec53
  br i1 %cmp.n58, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv41.ph = phi i64 [ %i.ca, %iter.check ], [ %i.ca, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ] ; 4 uses
  %i.cw = sub nsw i64 %wide.trip.count, %indvars.iv41.ph
  %xtraiter63 = and i64 %i.cw, 3                  ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol

.lr.ph38.prol:                                    ; preds = %.lr.ph38.preheader, %.lr.ph38.prol
  %indvars.iv41.prol = phi i64 [ %indvars.iv.next42.prol, %.lr.ph38.prol ], [ %indvars.iv41.ph, %.lr.ph38.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph38.prol ], [ 0, %.lr.ph38.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv41.prol
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !9
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.prol
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.db = add i8 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv41.prol
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !9
  %indvars.iv.next42.prol = add nuw nsw i64 %indvars.iv41.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter63
  br i1 %prol.iter.cmp.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol, !llvm.loop !21

.lr.ph38.prol.loopexit:                           ; preds = %.lr.ph38.prol, %.lr.ph38.preheader
  %indvars.iv41.unr = phi i64 [ %indvars.iv41.ph, %.lr.ph38.preheader ], [ %indvars.iv.next42.prol, %.lr.ph38.prol ]
  %i.dd = sub nsw i64 %indvars.iv41.ph, %wide.trip.count
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.dg = load <16 x i8>, ptr %i.df, align 1, !tbaa !9
  %i.dh = or disjoint i64 %indvars.iv, 16         ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh
  %i.dj = load <16 x i8>, ptr %i.di, align 1, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.dl = load <16 x i8>, ptr %i.dk, align 1, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh
  %i.dn = load <16 x i8>, ptr %i.dm, align 1, !tbaa !9
  %i.do = add <16 x i8> %i.dl, %i.dg
  %i.dp = add <16 x i8> %i.dn, %i.dj
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store <16 x i8> %i.do, ptr %i.dq, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh
  store <16 x i8> %i.dp, ptr %i.dr, align 1, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 32 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.dt = load <16 x i8>, ptr %i.ds, align 1, !tbaa !9
  %i.du = or disjoint i64 %indvars.iv, 48         ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.du
  %i.dw = load <16 x i8>, ptr %i.dv, align 1, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.dy = load <16 x i8>, ptr %i.dx, align 1, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %i.du
  %i.ea = load <16 x i8>, ptr %i.dz, align 1, !tbaa !9
  %i.eb = add <16 x i8> %i.dy, %i.dt
  %i.ec = add <16 x i8> %i.ea, %i.dw
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  store <16 x i8> %i.eb, ptr %i.ed, align 1, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 %i.du
  store <16 x i8> %i.ec, ptr %i.ee, align 1, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 64 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !22

.lr.ph38:                                         ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38
  %indvars.iv41 = phi i64 [ %indvars.iv.next42.3, %.lr.ph38 ], [ %indvars.iv41.unr, %.lr.ph38.prol.loopexit ] ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv41
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9
  %i.ej = add i8 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv41
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !9
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next42
  %i.em = load i8, ptr %i.el, align 1, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !9
  %i.ep = add i8 %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next42
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !9
  %indvars.iv.next42.1 = add nuw nsw i64 %indvars.iv41, 2 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next42.1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !9
  %i.ev = add i8 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next42.1
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !9
  %indvars.iv.next42.2 = add nuw nsw i64 %indvars.iv41, 3 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next42.2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.2
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !9
  %i.fb = add i8 %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next42.2
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !9
  %indvars.iv.next42.3 = add nuw nsw i64 %indvars.iv41, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next42.3, %wide.trip.count
  br i1 %exitcond.not.3, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph38, !llvm.loop !23

HorizontalUnfilter_SSE2.exit:                     ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38, %.lr.ph42.i.prol.loopexit, %.lr.ph42.i, %middle.block, %vec.epilog.middle.block, %.preheader, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @GradientUnfilter_SSE2(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 1)) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = load i8, ptr %1, align 1, !tbaa !9       ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 %i.b, ptr %2, align 1, !tbaa !9
  %i.c = icmp slt i32 %3, 2
  br i1 %i.c, label %HorizontalUnfilter_SSE2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not38.i = icmp samesign ult i32 %3, 9
  br i1 %.not38.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.d = zext i8 %i.b to i32
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  %i.f = bitcast <4 x i32> %i.e to <2 x i64>
  %i.g = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.h = add nsw i32 %3, -9
  %i.i = and i32 %i.h, -8
  %i.j = add nuw nsw i32 %i.i, 9
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.c
  %.0.lcssa.i = phi i32 [ 1, %bb.c ], [ %i.j, %.preheader.loopexit.i ] ; 4 uses
  %4 = icmp samesign ult i32 %.0.lcssa.i, %3
  br i1 %4, label %.lr.ph42.preheader.i, label %HorizontalUnfilter_SSE2.exit

.lr.ph42.preheader.i:                             ; preds = %.preheader.i
  %i.k = zext i32 %.0.lcssa.i to i64              ; 3 uses
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %scevgep = getelementptr i8, ptr %i.l, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1  ; 2 uses
  %i.m = sub nuw i32 %3, %.0.lcssa.i
  %xtraiter = and i32 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol

.lr.ph42.i.prol:                                  ; preds = %.lr.ph42.preheader.i, %.lr.ph42.i.prol
  %store_forwarded.prol = phi i8 [ %i.q, %.lr.ph42.i.prol ], [ %load_initial, %.lr.ph42.preheader.i ]
  %indvars.iv48.i.prol = phi i64 [ %indvars.iv.next49.i.prol, %.lr.ph42.i.prol ], [ %i.k, %.lr.ph42.preheader.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph42.i.prol ], [ 0, %.lr.ph42.preheader.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.i.prol
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = getelementptr i8, ptr %2, i64 %indvars.iv48.i.prol
  %i.q = add i8 %store_forwarded.prol, %i.o       ; 3 uses
  store i8 %i.q, ptr %i.p, align 1, !tbaa !9
  %indvars.iv.next49.i.prol = add nuw nsw i64 %indvars.iv48.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol, !llvm.loop !24

.lr.ph42.i.prol.loopexit:                         ; preds = %.lr.ph42.i.prol, %.lr.ph42.preheader.i
  %store_forwarded.unr = phi i8 [ %load_initial, %.lr.ph42.preheader.i ], [ %i.q, %.lr.ph42.i.prol ]
  %indvars.iv48.i.unr = phi i64 [ %i.k, %.lr.ph42.preheader.i ], [ %indvars.iv.next49.i.prol, %.lr.ph42.i.prol ]
  %i.r = sub i32 %.0.lcssa.i, %3
  %i.s = icmp ugt i32 %i.r, -4
  br i1 %i.s, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph42.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv43.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next44.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 9, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %.03439.i = phi <2 x i64> [ %i.f, %.lr.ph.preheader.i ], [ %i.ai, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv43.i
  %i.u = load i64, ptr %i.t, align 1, !tbaa !9
  %i.v = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.u, i64 0
  %i.w = bitcast <2 x i64> %i.v to <16 x i8>
  %i.x = bitcast <2 x i64> %.03439.i to <16 x i8>
  %i.y = add <16 x i8> %i.w, %i.x                 ; 2 uses
  %i.z = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.y, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.aa = add <16 x i8> %i.z, %i.y                ; 2 uses
  %i.ab = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aa, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ac = add <16 x i8> %i.ab, %i.aa              ; 2 uses
  %i.ad = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ac, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ae = add <16 x i8> %i.ad, %i.ac
  %i.af = bitcast <16 x i8> %i.ae to <2 x i64>    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv43.i
  %i.ah = extractelement <2 x i64> %i.af, i64 0
  store i64 %i.ah, ptr %i.ag, align 1, !tbaa !9
  %i.ai = lshr <2 x i64> %i.af, splat (i64 56)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.g
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 8
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !12

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.prol.loopexit, %.lr.ph42.i
  %store_forwarded = phi i8 [ %i.ay, %.lr.ph42.i ], [ %store_forwarded.unr, %.lr.ph42.i.prol.loopexit ]
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i.3, %.lr.ph42.i ], [ %indvars.iv48.i.unr, %.lr.ph42.i.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = getelementptr i8, ptr %2, i64 %indvars.iv48.i
  %i.am = add i8 %store_forwarded, %i.ak          ; 2 uses
  store i8 %i.am, ptr %i.al, align 1, !tbaa !9
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i
  %i.aq = add i8 %i.am, %i.ao                     ; 2 uses
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !9
  %indvars.iv.next49.i.1 = add nuw nsw i64 %indvars.iv48.i, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i.1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i.1
  %i.au = add i8 %i.aq, %i.as                     ; 2 uses
  store i8 %i.au, ptr %i.at, align 1, !tbaa !9
  %indvars.iv.next49.i.2 = add nuw nsw i64 %indvars.iv48.i, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i.2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i.2
  %i.ay = add i8 %i.au, %i.aw                     ; 2 uses
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !9
  %indvars.iv.next49.i.3 = add nuw nsw i64 %indvars.iv48.i, 4 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next49.i.3 to i32
  %i.ba = icmp sgt i32 %3, %i.az
  br i1 %i.ba, label %.lr.ph42.i, label %HorizontalUnfilter_SSE2.exit, !llvm.loop !14

bb.d:                                             ; preds = %bb.a
  %i.bb = load i8, ptr %0, align 1, !tbaa !9
  %i.bc = add i8 %i.bb, %i.b                      ; 2 uses
  store i8 %i.bc, ptr %2, align 1, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.bg = add nsw i32 %3, -1                      ; 3 uses
  %i.bh = icmp sgt i32 %3, 1
  br i1 %i.bh, label %bb.e, label %HorizontalUnfilter_SSE2.exit

bb.e:                                             ; preds = %bb.d
  %i.bi = and i32 %i.bg, 2147483640               ; 2 uses
  %.not.i10 = icmp eq i32 %i.bi, 0
  br i1 %.not.i10, label %.preheader.i16, label %.lr.ph.preheader.i11

.lr.ph.preheader.i11:                             ; preds = %bb.e
  %i.bj = zext i8 %i.bc to i32
  %i.bk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bj, i64 0
  %i.bl = bitcast <4 x i32> %i.bk to <2 x i64>
  %i.bm = zext nneg i32 %i.bi to i64
  br label %.lr.ph.i12

.preheader.loopexit.i15:                          ; preds = %.lr.ph.i12
  %i.bn = trunc nuw nsw i64 %indvars.iv.next.i14 to i32
  br label %.preheader.i16

.preheader.i16:                                   ; preds = %.preheader.loopexit.i15, %bb.e
  %.0.lcssa.i17 = phi i32 [ 0, %bb.e ], [ %i.bn, %.preheader.loopexit.i15 ] ; 2 uses
  %i.bo = icmp samesign ult i32 %.0.lcssa.i17, %i.bg
  br i1 %i.bo, label %.lr.ph70.preheader.i, label %HorizontalUnfilter_SSE2.exit

.lr.ph70.preheader.i:                             ; preds = %.preheader.i16
  %i.bp = zext i32 %.0.lcssa.i17 to i64           ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.bg to i64
  %scevgep25 = getelementptr i8, ptr %2, i64 %i.bp
  %load_initial26 = load i8, ptr %scevgep25, align 1
  br label %.lr.ph70.i

.lr.ph.i12:                                       ; preds = %.lr.ph.i12, %.lr.ph.preheader.i11
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.preheader.i11 ], [ %indvars.iv.next.i14, %.lr.ph.i12 ] ; 4 uses
  %.05367.i = phi <2 x i64> [ %i.bl, %.lr.ph.preheader.i11 ], [ %i.eq, %.lr.ph.i12 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.i13 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !9
  %i.bs = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %i.bt = getelementptr i8, ptr %i.bq, i64 -1
  %i.bu = load i64, ptr %i.bt, align 1, !tbaa !9
  %i.bv = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %i.bw = bitcast <2 x i64> %i.bs to <16 x i8>
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.by = bitcast <2 x i64> %i.bv to <16 x i8>
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.i13
  %i.cb = load i64, ptr %i.ca, align 1, !tbaa !9
  %i.cc = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cb, i64 0
  %i.cd = bitcast <16 x i8> %i.bx to <8 x i16>
  %i.ce = bitcast <16 x i8> %i.bz to <8 x i16>
  %i.cf = sub nsw <8 x i16> %i.cd, %i.ce          ; 8 uses
  %i.cg = bitcast <2 x i64> %i.cc to <16 x i8>    ; 8 uses
  %i.ch = bitcast <2 x i64> %.05367.i to <8 x i16>
  %i.ci = add <8 x i16> %i.cf, %i.ch
  %i.cj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ci, <8 x i16> zeroinitializer)
  %i.ck = add <16 x i8> %i.cj, %i.cg
  %.inner = and <16 x i8> %i.ck, <i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.cl = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %.inner, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <16 x i8> %i.cl, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cn = bitcast <16 x i8> %i.cm to <8 x i16>
  %i.co = add nsw <8 x i16> %i.cf, %i.cn
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.co, <8 x i16> zeroinitializer)
  %i.cq = add <16 x i8> %i.cp, %i.cg
  %i.cr = and <16 x i8> %i.cq, <i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.cs = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.cr, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cu = bitcast <16 x i8> %i.ct to <8 x i16>
  %i.cv = add nsw <8 x i16> %i.cf, %i.cu
  %i.cw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cv, <8 x i16> zeroinitializer)
  %i.cx = add <16 x i8> %i.cw, %i.cg
  %i.cy = and <16 x i8> %i.cx, <i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.cz = or <16 x i8> %i.cy, %i.cr
  %i.da = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.cy, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.db = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dc = bitcast <16 x i8> %i.db to <8 x i16>
  %i.dd = add nsw <8 x i16> %i.cf, %i.dc
  %i.de = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dd, <8 x i16> zeroinitializer)
  %i.df = add <16 x i8> %i.de, %i.cg
  %i.dg = and <16 x i8> %i.df, <i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.dh = or <16 x i8> %i.cz, %i.dg
  %i.di = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.dg, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dk = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.dl = add nsw <8 x i16> %i.cf, %i.dk
  %i.dm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dl, <8 x i16> zeroinitializer)
  %i.dn = add <16 x i8> %i.dm, %i.cg
  %i.do = and <16 x i8> %i.dn, <i8 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.dp = or <16 x i8> %i.dh, %i.do
  %i.dq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.do, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <16 x i8> %i.dq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ds = bitcast <16 x i8> %i.dr to <8 x i16>
  %i.dt = add nsw <8 x i16> %i.cf, %i.ds
  %i.du = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dt, <8 x i16> zeroinitializer)
  %i.dv = add <16 x i8> %i.du, %i.cg
  %i.dw = and <16 x i8> %i.dv, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.dx = or <16 x i8> %i.dp, %i.dw
  %i.dy = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.dw, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dz = shufflevector <16 x i8> %i.dy, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ea = bitcast <16 x i8> %i.dz to <8 x i16>
  %i.eb = add nsw <8 x i16> %i.cf, %i.ea
  %i.ec = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eb, <8 x i16> zeroinitializer)
  %i.ed = add <16 x i8> %i.ec, %i.cg
  %i.ee = and <16 x i8> %i.ed, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.ef = or <16 x i8> %i.dx, %i.ee
  %i.eg = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.ee, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <16 x i8> %i.eg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ei = bitcast <16 x i8> %i.eh to <8 x i16>
  %i.ej = add nsw <8 x i16> %i.cf, %i.ei
  %i.ek = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ej, <8 x i16> zeroinitializer)
  %i.el = add <16 x i8> %i.ek, %i.cg
  %i.em = and <16 x i8> %i.el, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
end_hunk_0
