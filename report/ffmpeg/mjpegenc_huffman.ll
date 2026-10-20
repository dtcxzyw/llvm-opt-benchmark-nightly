Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegenc_huffman?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PackageMergerList = type { i32, [515 x i32], [514 x i32], [4112 x i32] }
%struct.PTable = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ff_mjpeg_encode_huffman_init(ptr nofree noundef writeonly captures(none) initializes((0, 1024)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_mjpeg_encode_huffman_close(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.PackageMergerList, align 4  ; 5 uses
  %5 = alloca %struct.PackageMergerList, align 4  ; 5 uses
  %i.a = alloca [257 x i32], align 16             ; 8 uses
  %i.b = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %6 = alloca [257 x %struct.PTable], align 16    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  br label %bb.ai

bb.b:                                             ; preds = %bb.am
  %i.c = sext i32 %.1.1 to i64
  %i.d = getelementptr [8 x i8], ptr %6, i64 %i.c ; 3 uses
  store i32 256, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.a, i8 0, i64 1028, i1 false)
  store i32 0, ptr %4, align 4, !tbaa !26
  store i32 0, ptr %5, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr %6, ptr %i.b, align 16, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %bb.b
  %.0200275.i = phi i32 [ 1, %bb.b ], [ %.1201257.i, %.thread.i ] ; 2 uses
  %i.i = add nsw i32 %.0200275.i, -1              ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !29  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %.lr.ph270.preheader.i, label %.thread.i

.lr.ph270.preheader.i:                            ; preds = %bb.c
  %i.p = sext i32 %.0200275.i to i64
  %i.q = add nsw i64 %i.p, -1
  br label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %bb.v, %.lr.ph270.preheader.i
  %indvars.iv.i = phi i64 [ %i.q, %.lr.ph270.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 6 uses
  %.0194268.i = phi ptr [ %i.n, %.lr.ph270.preheader.i ], [ %.1195.i, %bb.v ] ; 16 uses
  %.0197267.i = phi ptr [ %i.l, %.lr.ph270.preheader.i ], [ %.1198.i, %bb.v ] ; 15 uses
  %i.r = getelementptr inbounds i8, ptr %.0194268.i, i64 -8 ; 5 uses
  %i.s = icmp ult ptr %.0197267.i, %i.r
  br i1 %i.s, label %bb.d, label %bb.w

bb.d:                                             ; preds = %.lr.ph270.i
  %i.t = getelementptr inbounds i8, ptr %.0194268.i, i64 -16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0197267.i, i64 8 ; 3 uses
  %i.v = ptrtoint ptr %.0194268.i to i64          ; 2 uses
  %i.w = ptrtoint ptr %.0197267.i to i64          ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr i64 %i.x, 4
  %i.z = getelementptr inbounds [8 x i8], ptr %.0197267.i, i64 %i.y ; 11 uses
  %i.aa = getelementptr i8, ptr %.0197267.i, i64 4
  %.0197.val238.i = load i32, ptr %i.aa, align 4, !tbaa !27 ; 2 uses
  %i.ab = getelementptr i8, ptr %.0194268.i, i64 4 ; 2 uses
  %.0194.val239.i = load i32, ptr %i.ab, align 4, !tbaa !27 ; 3 uses
  %i.ac = icmp sgt i32 %.0197.val238.i, %.0194.val239.i
  %i.ad = getelementptr i8, ptr %i.z, i64 4       ; 2 uses
  %.val237.i = load i32, ptr %i.ad, align 4, !tbaa !27 ; 3 uses
  br i1 %i.ac, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp sgt i32 %.0194.val239.i, %.val237.i
  %i.af = load i64, ptr %.0197267.i, align 4, !tbaa !27 ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.z, align 4, !tbaa !27
  store i64 %i.af, ptr %i.z, align 4, !tbaa !27
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %.0194268.i, align 4, !tbaa !27
  store i64 %i.af, ptr %.0194268.i, align 4, !tbaa !27
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ai = icmp sgt i32 %.0197.val238.i, %.val237.i
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = load i64, ptr %i.z, align 4, !tbaa !27
  %i.ak = load i64, ptr %.0197267.i, align 4, !tbaa !27
  store i64 %i.ak, ptr %i.z, align 4, !tbaa !27
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.g, %bb.f
  %.sink.i = phi i64 [ %i.aj, %bb.i ], [ %i.ag, %bb.f ], [ %i.ah, %bb.g ]
  store i64 %.sink.i, ptr %.0197267.i, align 4, !tbaa !27
  %.val232.i.pre = load i32, ptr %i.ad, align 4, !tbaa !27
  %.0194.val233.i.pre = load i32, ptr %i.ab, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.h
  %.0194.val233.i = phi i32 [ %.0194.val239.i, %bb.h ], [ %.0194.val233.i.pre, %.sink.split.i ]
  %.val232.i = phi i32 [ %.val237.i, %bb.h ], [ %.val232.i.pre, %.sink.split.i ]
  %.0192.i = phi i32 [ 1, %bb.h ], [ 0, %.sink.split.i ]
  %i.al = icmp sgt i32 %.val232.i, %.0194.val233.i
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %.0194268.i, align 4, !tbaa !27
  %i.an = load i64, ptr %i.z, align 4, !tbaa !27
  store i64 %i.an, ptr %.0194268.i, align 4, !tbaa !27
  store i64 %i.am, ptr %i.z, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1193.i = phi i32 [ 0, %bb.k ], [ %.0192.i, %bb.j ]
  %i.ao = icmp eq ptr %.0197267.i, %i.t
  br i1 %i.ao, label %.thread.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.z, align 4, !tbaa !27  ; 3 uses
  %i.aq = load i64, ptr %i.r, align 4, !tbaa !27
  store i64 %i.aq, ptr %i.z, align 4, !tbaa !27
  store i64 %i.ap, ptr %i.r, align 4, !tbaa !27
  %.not224261.i = icmp ugt ptr %i.u, %i.t
  br i1 %.not224261.i, label %._crit_edge.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.m
  %i.ar = lshr i64 %i.ap, 32
  %i.as = trunc nuw i64 %i.ar to i32              ; 2 uses
  %i.at = getelementptr i8, ptr %.0194268.i, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge228.i, %.preheader.lr.ph.i
  %.val230.i.a = phi i32 [ %i.as, %.preheader.lr.ph.i ], [ %.val230312.i, %.critedge228.i ] ; 4 uses
  %.val231.i = phi i32 [ %i.as, %.preheader.lr.ph.i ], [ %.val231310.i, %.critedge228.i ] ; 2 uses
  %.0188263.i = phi ptr [ %i.u, %.preheader.lr.ph.i ], [ %.2.i, %.critedge228.i ]
  %.0189262.i = phi ptr [ %i.t, %.preheader.lr.ph.i ], [ %.2191.i, %.critedge228.i ] ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.i
  %.1258.i = phi ptr [ %.0188263.i, %.preheader.i ], [ %i.aw, %bb.o ] ; 3 uses
  %i.au = getelementptr i8, ptr %.1258.i, i64 4
  %.1.val.i = load i32, ptr %i.au, align 4, !tbaa !27
  %i.av = icmp slt i32 %.1.val.i, %.val231.i
  br i1 %i.av, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.1258.i, i64 8 ; 3 uses
  %.not226.i.a = icmp ugt ptr %i.aw, %.0189262.i
  br i1 %.not226.i.a, label %.critedge.i, label %bb.n, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.o, %bb.n
  %.1.lcssa.i = phi ptr [ %i.aw, %bb.o ], [ %.1258.i, %bb.n ] ; 7 uses
  %.not227259.i = icmp ugt ptr %.1.lcssa.i, %.0189262.i
  br i1 %.not227259.i, label %.critedge228.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.p
  %.1190260.i = phi ptr [ %i.az, %bb.p ], [ %.0189262.i, %.critedge.i ] ; 5 uses
  %i.ax = getelementptr i8, ptr %.1190260.i, i64 4
  %.1190.val.i = load i32, ptr %i.ax, align 4, !tbaa !27
  %i.ay = icmp sgt i32 %.1190.val.i, %.val230.i.a
  br i1 %i.ay, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds i8, ptr %.1190260.i, i64 -8 ; 3 uses
  %.not227.i = icmp ugt ptr %.1.lcssa.i, %i.az
  br i1 %.not227.i, label %.critedge228.i, label %.lr.ph.i, !llvm.loop !10

.critedge2.i:                                     ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %.1190260.i, align 4, !tbaa !27
  %i.bb = load i64, ptr %.1.lcssa.i, align 4, !tbaa !27
  store i64 %i.bb, ptr %.1190260.i, align 4, !tbaa !27
  store i64 %i.ba, ptr %.1.lcssa.i, align 4, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 8
  %i.bd = getelementptr inbounds i8, ptr %.1190260.i, i64 -8
  %.val231.pre.i = load i32, ptr %i.at, align 4, !tbaa !27 ; 2 uses
  br label %.critedge228.i

.critedge228.i:                                   ; preds = %bb.p, %.critedge2.i, %.critedge.i
  %.val230312.i = phi i32 [ %.val231.pre.i, %.critedge2.i ], [ %.val230.i.a, %.critedge.i ], [ %.val230.i.a, %bb.p ]
  %.val231310.i = phi i32 [ %.val231.pre.i, %.critedge2.i ], [ %.val231.i, %.critedge.i ], [ %.val230.i.a, %bb.p ]
  %.2191.i = phi ptr [ %i.bd, %.critedge2.i ], [ %.0189262.i, %.critedge.i ], [ %i.az, %bb.p ] ; 3 uses
  %.2.i = phi ptr [ %i.bc, %.critedge2.i ], [ %.1.lcssa.i, %.critedge.i ], [ %.1.lcssa.i, %bb.p ] ; 3 uses
  %.not224.i.a = icmp ugt ptr %.2.i, %.2191.i
  br i1 %.not224.i.a, label %._crit_edge.loopexit.i, label %.preheader.i, !llvm.loop !11

._crit_edge.loopexit.i:                           ; preds = %.critedge228.i
  %.pre.i = load i64, ptr %i.r, align 4, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %i.be = phi i64 [ %i.ap, %bb.m ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0189.lcssa.i = phi ptr [ %i.t, %bb.m ], [ %.2191.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0188.lcssa.i = phi ptr [ %i.u, %bb.m ], [ %.2.i, %._crit_edge.loopexit.i ] ; 7 uses
  %i.bf = load i64, ptr %.0188.lcssa.i, align 4, !tbaa !27
  store i64 %i.be, ptr %.0188.lcssa.i, align 4, !tbaa !27
  store i64 %i.bf, ptr %i.r, align 4, !tbaa !27
  %.not225.i = icmp eq i32 %.1193.i, 0
  br i1 %.not225.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.bg = getelementptr inbounds i8, ptr %.0188.lcssa.i, i64 -8
  %i.bh = icmp eq ptr %i.z, %i.bg
  %i.bi = icmp eq ptr %i.z, %.0188.lcssa.i
  %or.cond.i = or i1 %i.bi, %i.bh
  br i1 %or.cond.i, label %.preheader252.i, label %bb.s

.preheader252.i:                                  ; preds = %bb.q, %bb.r
  %.0187.i = phi ptr [ %i.bk, %bb.r ], [ %.0197267.i, %bb.q ] ; 5 uses
  %i.bj = icmp ult ptr %.0187.i, %.0194268.i
  br i1 %i.bj, label %bb.r, label %.critedge4.i

bb.r:                                             ; preds = %.preheader252.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0187.i, i64 8
  %i.bl = getelementptr i8, ptr %.0187.i, i64 4
  %.0187.val.i = load i32, ptr %i.bl, align 4, !tbaa !27
  %i.bm = getelementptr i8, ptr %.0187.i, i64 12
  %.val.i = load i32, ptr %i.bm, align 4, !tbaa !27
  %.not251.i = icmp sgt i32 %.0187.val.i, %.val.i
  br i1 %.not251.i, label %.critedge4.i, label %.preheader252.i, !llvm.loop !12

.critedge4.i:                                     ; preds = %bb.r, %.preheader252.i
  %i.bn = icmp eq ptr %.0187.i, %.0194268.i
  br i1 %i.bn, label %.thread.loopexit.i, label %bb.s

bb.s:                                             ; preds = %.critedge4.i, %bb.q, %._crit_edge.i
  %i.bo = ptrtoint ptr %.0188.lcssa.i to i64      ; 2 uses
  %i.bp = sub i64 %i.v, %i.bo
  %i.bq = sub i64 %i.bo, %i.w
  %i.br = icmp slt i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  store ptr %.0197267.i, ptr %i.bs, align 16, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.0189.lcssa.i, ptr %i.bt, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %.0188.lcssa.i, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.0188.lcssa.i, i64 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 16, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.0194268.i, ptr %i.bx, align 8, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1198.i = phi ptr [ %i.bu, %bb.t ], [ %.0197267.i, %bb.u ] ; 2 uses
  %.1195.i = phi ptr [ %.0194268.i, %bb.t ], [ %.0189.lcssa.i, %bb.u ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.by = icmp ult ptr %.1198.i, %.1195.i
  br i1 %i.by, label %.lr.ph270.i, label %.thread.loopexit.i

bb.w:                                             ; preds = %.lr.ph270.i
  %i.bz = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.ca = getelementptr i8, ptr %.0197267.i, i64 4
  %.0197.val.i = load i32, ptr %i.ca, align 4, !tbaa !27
  %i.cb = getelementptr i8, ptr %.0194268.i, i64 4
  %.0194.val.i = load i32, ptr %i.cb, align 4, !tbaa !27
  %i.cc = icmp sgt i32 %.0197.val.i, %.0194.val.i
  br i1 %i.cc, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.cd = load i64, ptr %.0194268.i, align 4, !tbaa !27
  %i.ce = load i64, ptr %.0197267.i, align 4, !tbaa !27
  store i64 %i.ce, ptr %.0194268.i, align 4, !tbaa !27
  store i64 %i.cd, ptr %.0197267.i, align 4, !tbaa !27
  br label %.thread.i

.thread.loopexit.i:                               ; preds = %bb.v, %.critedge4.i, %bb.l
  %.1201257.ph.in.i = phi i64 [ %indvars.iv.i, %.critedge4.i ], [ %indvars.iv.i, %bb.l ], [ %indvars.iv.next.i, %bb.v ]
  %.1201257.ph.i = trunc i64 %.1201257.ph.in.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.x, %bb.w, %bb.c
  %.1201257.i = phi i32 [ %i.bz, %bb.x ], [ %i.bz, %bb.w ], [ %i.i, %bb.c ], [ %.1201257.ph.i, %.thread.loopexit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.1201257.i, 0
  br i1 %.not.i, label %bb.y, label %bb.c, !llvm.loop !13

bb.y:                                             ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.y
  %.0206284.i = phi i32 [ undef, %bb.y ], [ %.2208.i.ph, %bb.af ]
  %.0211283.i = phi i32 [ 0, %bb.y ], [ %i.gb, %bb.af ] ; 2 uses
  %.0212282.i = phi ptr [ %5, %bb.y ], [ %.0213281.i, %bb.af ] ; 6 uses
  %.0213281.i = phi ptr [ %4, %bb.y ], [ %.0212282.i, %bb.af ] ; 17 uses
  store i32 0, ptr %.0213281.i, align 4, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %.0213281.i, i64 4 ; 10 uses
  store i32 0, ptr %i.cf, align 4, !tbaa !27
  %.not222.i.a = icmp eq i32 %.0211283.i, 16
  %spec.select.i = select i1 %.not222.i.a, i32 %.0206284.i, i32 0
  %i.cg = getelementptr inbounds nuw i8, ptr %.0212282.i, i64 2064 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0212282.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0212282.i, i64 4120 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0213281.i, i64 4120 ; 5 uses
  br label %.outer

.outer:                                           ; preds = %._crit_edge315.i, %bb.z
  %.2208.i.ph = phi i32 [ %i.ee, %._crit_edge315.i ], [ %spec.select.i, %bb.z ] ; 4 uses
  %.0204.i.ph = phi i32 [ %.0204.i, %._crit_edge315.i ], [ 0, %bb.z ]
  %.not22 = icmp sgt i32 %.2208.i.ph, %.1.1
  %i.ck = sext i32 %.2208.i.ph to i64             ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %.outer, %._crit_edge279.i
  %.0204.i = phi i32 [ %i.eh, %._crit_edge279.i ], [ %.0204.i.ph, %.outer ] ; 6 uses
  br i1 %.not22, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cn = add nsw i32 %.0204.i, 1
  %i.co = load i32, ptr %.0212282.i, align 4, !tbaa !26
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %.critedge6.i, label %bb.af

.critedge6.i:                                     ; preds = %bb.ab
  %i.cq = load i32, ptr %.0213281.i, align 4, !tbaa !26 ; 2 uses
  %i.cr = add nsw i32 %i.cq, 1                    ; 2 uses
  store i32 %i.cr, ptr %.0213281.i, align 4, !tbaa !26
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !27
  %i.cv = sext i32 %i.cr to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cv
  store i32 %i.cu, ptr %i.cw, align 4, !tbaa !27
  %.pre314.i = sext i32 %.0204.i to i64
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.cx = load i32, ptr %.0213281.i, align 4, !tbaa !26 ; 2 uses
  %i.cy = add nsw i32 %i.cx, 1                    ; 2 uses
  store i32 %i.cy, ptr %.0213281.i, align 4, !tbaa !26
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !27
  %i.dc = sext i32 %i.cy to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.dc
  store i32 %i.db, ptr %i.dd, align 4, !tbaa !27
  %i.de = add nsw i32 %.0204.i, 1                 ; 2 uses
  %i.df = load i32, ptr %.0212282.i, align 4, !tbaa !26
  %.not223.i = icmp slt i32 %i.de, %i.df
  br i1 %.not223.i, label %bb.ad, label %._crit_edge315.i

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load i32, ptr %i.cm, align 4, !tbaa !24
  %i.dh = sext i32 %.0204.i to i64                ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !27
  %i.dk = sext i32 %i.de to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !27
  %i.dn = add nsw i32 %i.dm, %i.dj
  %i.do = icmp slt i32 %i.dg, %i.dn
  br i1 %i.do, label %._crit_edge315.i, label %bb.ae

._crit_edge315.i:                                 ; preds = %bb.ad, %bb.ac
  %i.dp = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ck ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !23
  %i.dr = load i32, ptr %.0213281.i, align 4, !tbaa !26
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !27 ; 2 uses
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !27
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.dw
  store i32 %i.dq, ptr %i.dx, align 4, !tbaa !27
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !24
  %i.ea = load i32, ptr %.0213281.i, align 4, !tbaa !26
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [4 x i8], ptr %.0213281.i, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 2060
  store i32 %i.dz, ptr %i.ed, align 4, !tbaa !27
  %i.ee = add nsw i32 %.2208.i.ph, 1
  br label %.outer, !llvm.loop !14

bb.ae:                                            ; preds = %bb.ad, %.critedge6.i
  %.pre-phi.i = phi i64 [ %.pre314.i, %.critedge6.i ], [ %i.dh, %bb.ad ] ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %.pre-phi.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !27 ; 2 uses
  %i.eh = add nsw i32 %.0204.i, 2                 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !27 ; 2 uses
  %i.el = icmp slt i32 %i.eg, %i.ek
  br i1 %i.el, label %.lr.ph278.preheader.i, label %._crit_edge279.i

.lr.ph278.preheader.i:                            ; preds = %bb.ae
  %i.em = sext i32 %i.eg to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.ek to i64      ; 3 uses
  %i.en = sub nsw i64 %wide.trip.count.i, %i.em
  %xtraiter = and i64 %i.en, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph278.i.prol.loopexit, label %.lr.ph278.i.prol

.lr.ph278.i.prol:                                 ; preds = %.lr.ph278.preheader.i
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.em
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !27
  %i.eq = load i32, ptr %.0213281.i, align 4, !tbaa !26
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !27 ; 2 uses
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !27
  %i.ev = sext i32 %i.et to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ev
  store i32 %i.ep, ptr %i.ew, align 4, !tbaa !27
  %indvars.iv.next296.i.prol = add nsw i64 %i.em, 1
  br label %.lr.ph278.i.prol.loopexit

.lr.ph278.i.prol.loopexit:                        ; preds = %.lr.ph278.i.prol, %.lr.ph278.preheader.i
  %indvars.iv295.i.unr = phi i64 [ %i.em, %.lr.ph278.preheader.i ], [ %indvars.iv.next296.i.prol, %.lr.ph278.i.prol ]
  %i.ex = add nsw i64 %wide.trip.count.i, -1
  %i.ey = icmp eq i64 %i.ex, %i.em
  br i1 %i.ey, label %._crit_edge279.i, label %.lr.ph278.i

.lr.ph278.i:                                      ; preds = %.lr.ph278.i.prol.loopexit, %.lr.ph278.i
  %indvars.iv295.i = phi i64 [ %indvars.iv.next296.i.1, %.lr.ph278.i ], [ %indvars.iv295.i.unr, %.lr.ph278.i.prol.loopexit ] ; 3 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv295.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !27
  %i.fb = load i32, ptr %.0213281.i, align 4, !tbaa !26
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !27 ; 2 uses
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !27
  %i.fg = sext i32 %i.fe to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.fg
  store i32 %i.fa, ptr %i.fh, align 4, !tbaa !27
  %i.fi = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv295.i
  %i.fj = getelementptr i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !27
  %i.fl = load i32, ptr %.0213281.i, align 4, !tbaa !26
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !27 ; 2 uses
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !27
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.fq
  store i32 %i.fk, ptr %i.fr, align 4, !tbaa !27
  %indvars.iv.next296.i.1 = add nsw i64 %indvars.iv295.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next296.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge279.i, label %.lr.ph278.i, !llvm.loop !15

._crit_edge279.i:                                 ; preds = %.lr.ph278.i.prol.loopexit, %.lr.ph278.i, %bb.ae
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %.pre-phi.i ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !27
  %i.fu = getelementptr i8, ptr %i.fs, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !27
  %i.fw = add nsw i32 %i.fv, %i.ft
  %i.fx = load i32, ptr %.0213281.i, align 4, !tbaa !26
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [4 x i8], ptr %.0213281.i, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 2060
  store i32 %i.fw, ptr %i.ga, align 4, !tbaa !27
  br label %bb.aa, !llvm.loop !14

bb.af:                                            ; preds = %bb.ab
  %i.gb = add nuw nsw i32 %.0211283.i, 1          ; 2 uses
  %exitcond299.not.i = icmp eq i32 %i.gb, 17
  br i1 %exitcond299.not.i, label %bb.ag, label %bb.z, !llvm.loop !16

bb.ag:                                            ; preds = %bb.af
  %i.gc = load i32, ptr %.0213281.i, align 4, !tbaa !26
  %i.gd = call i32 @llvm.smin.i32(i32 %i.gc, i32 %.1.1)
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !27
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph287.i, label %._crit_edge288.i

.lr.ph287.i:                                      ; preds = %bb.ag, %.lr.ph287.i
  %indvars.iv300.i = phi i64 [ %indvars.iv.next301.i, %.lr.ph287.i ], [ 0, %bb.ag ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv300.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !27
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !27
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !27
  %indvars.iv.next301.i = add nuw nsw i64 %indvars.iv300.i, 1 ; 2 uses
  %i.go = load i32, ptr %i.gf, align 4, !tbaa !27
  %i.gp = sext i32 %i.go to i64
  %i.gq = icmp slt i64 %indvars.iv.next301.i, %i.gp
  br i1 %i.gq, label %.lr.ph287.i, label %._crit_edge288.i, !llvm.loop !17

._crit_edge288.i:                                 ; preds = %.lr.ph287.i, %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %1, i8 0, i64 17, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %._crit_edge288.i
  %indvars.iv304.i = phi i64 [ 0, %._crit_edge288.i ], [ %indvars.iv.next305.i.3, %bb.ah ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.i
  %i.gs = load i32, ptr %i.gr, align 16, !tbaa !27
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gt ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !31
  %i.gw = add i8 %i.gv, 1
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !31
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !27
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %1, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !31
  %i.hd = add i8 %i.hc, 1
  store i8 %i.hd, ptr %i.hb, align 1, !tbaa !31
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !27
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %1, i64 %i.hh ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !31
  %i.hk = add i8 %i.hj, 1
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !31
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !27
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %1, i64 %i.ho ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !31
  %i.hr = add i8 %i.hq, 1
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !31
  %indvars.iv.next305.i.3 = add nuw nsw i64 %indvars.iv304.i, 4 ; 2 uses
  %exitcond308.not.i.3 = icmp eq i64 %indvars.iv.next305.i.3, 256
  br i1 %exitcond308.not.i.3, label %mjpegenc_huffman_compute_bits.exit, label %bb.ah, !llvm.loop !18

mjpegenc_huffman_compute_bits.exit:               ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.hs = icmp sgt i32 %.1.1, 0
  br i1 %i.hs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %mjpegenc_huffman_compute_bits.exit
  %i.ht = zext nneg i32 %.1.1 to i64              ; 7 uses
  %xtraiter80 = and i64 %i.ht, 3                  ; 3 uses
  %i.hu = icmp ult i32 %.1.1, 4
  br i1 %i.hu, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ht, 2147483644
  br label %.lr.ph

bb.ai:                                            ; preds = %bb.am, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.am ] ; 4 uses
  %.02129 = phi i32 [ 0, %bb.a ], [ %.1.1, %bb.am ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !27 ; 2 uses
  %.not = icmp eq i32 %i.hw, 0
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hx = sext i32 %.02129 to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %6, i64 %i.hx ; 2 uses
  %i.hz = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hz, ptr %i.hy, align 8, !tbaa !23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i32 %i.hw, ptr %i.ia, align 4, !tbaa !24
  %i.ib = add nsw i32 %.02129, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.1 = phi i32 [ %i.ib, %bb.aj ], [ %.02129, %bb.ai ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !27 ; 2 uses
  %.not.1 = icmp eq i32 %i.id, 0
  br i1 %.not.1, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ie = sext i32 %.1 to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ie ; 2 uses
  %i.ig = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.ig, ptr %i.if, align 8, !tbaa !23
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i32 %i.id, ptr %i.ih, align 4, !tbaa !24
  %i.ii = add nsw i32 %.1, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1.1 = phi i32 [ %i.ii, %bb.al ], [ %.1, %bb.ak ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %bb.b, label %bb.ai, !llvm.loop !19

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next40.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter80, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv39.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next40.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ij = sub nuw nsw i64 %i.ht, %indvars.iv39.epil
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !23
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.epil
  store i8 %i.im, ptr %i.in, align 1, !tbaa !31
  %indvars.iv.next40.epil = add nuw nsw i64 %indvars.iv39.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter80
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !20

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %mjpegenc_huffman_compute_bits.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next40.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.io = sub nuw nsw i64 %i.ht, %indvars.iv39
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !23
  %i.ir = trunc i32 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !31
  %indvars.iv.next40 = or disjoint i64 %indvars.iv39, 1 ; 2 uses
  %i.it = sub nuw nsw i64 %i.ht, %indvars.iv.next40
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !23
  %i.iw = trunc i32 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next40
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !31
  %indvars.iv.next40.1 = or disjoint i64 %indvars.iv39, 2 ; 2 uses
  %i.iy = sub nuw nsw i64 %i.ht, %indvars.iv.next40.1
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !23
  %i.jb = trunc i32 %i.ja to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next40.1
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !31
  %indvars.iv.next40.2 = or disjoint i64 %indvars.iv39, 3 ; 2 uses
  %i.jd = sub nuw nsw i64 %i.ht, %indvars.iv.next40.2
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !23
  %i.jg = trunc i32 %i.jf to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next40.2
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !31
  %indvars.iv.next40.3 = add nuw nsw i64 %indvars.iv39, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
