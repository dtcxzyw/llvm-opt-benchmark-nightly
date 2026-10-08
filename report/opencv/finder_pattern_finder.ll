Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/finder_pattern_finder?download=true
inline.NumInlined: 2769
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5zxing6qrcode19FinderPatternFinder18crossCheckDiagonalEiiii:bb.a
  %i.bl = icmp sgt i64 %i.bk, -1
  br i1 %i.bl, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %.lr.ph234
  %i.bm = mul nsw i64 %indvars.iv297, %i.bf
  %i.bn = getelementptr i8, ptr %i.w, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !99
  %.not170 = icmp ne i8 %i.bp, 0
  %.not171 = icmp sgt i32 %i.bj, %3
  %or.cond202 = or i1 %.not170, %.not171
  br i1 %or.cond202, label %.critedge3, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = add nuw i32 %i.bj, 1                    ; 2 uses
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1
  %indvars.iv.next298 = add nsw i64 %indvars.iv297, -1
  %exitcond304.not = icmp eq i32 %i.bq, %i.bi
  %indvars.iv.next306 = add nsw i64 %indvars.iv305, -1
  %indvars.iv.next314 = add i32 %indvars.iv313, -1
  br i1 %exitcond304.not, label %.critedge.thread, label %.lr.ph234, !llvm.loop !195

.critedge3:                                       ; preds = %bb.j, %.lr.ph234
  %i.br = trunc nsw i64 %indvars.iv299 to i32     ; 2 uses
  store i32 %i.bj, ptr %i.j, align 4
  %i.bs = icmp slt i32 %2, %i.br
  %i.bt = icmp sgt i32 %i.bj, %3
  %or.cond188 = or i1 %i.bs, %i.bt
  br i1 %or.cond188, label %.critedge.thread, label %.preheader212

.preheader212:                                    ; preds = %.critedge3
  %.not377 = icmp slt i32 %.0142, %i.br
  br i1 %.not377, label %.critedge5, label %.lr.ph239

.lr.ph239:                                        ; preds = %.preheader212, %bb.m
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %bb.m ], [ %indvars.iv299, %.preheader212 ] ; 2 uses
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %bb.m ], [ %indvars.iv305, %.preheader212 ] ; 2 uses
  %i.bu = phi i32 [ %i.cb, %bb.m ], [ 0, %.preheader212 ] ; 4 uses
  %i.bv = sub nsw i64 %i.ao, %indvars.iv311       ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  br i1 %i.bw, label %bb.l, label %.critedge5

bb.l:                                             ; preds = %.lr.ph239
  %i.bx = mul nsw i64 %indvars.iv308, %i.bf
  %i.by = getelementptr i8, ptr %i.w, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !99
  %.not172 = icmp eq i8 %i.ca, 0
  %.not173 = icmp sgt i32 %i.bu, %3
  %or.cond203 = or i1 %.not172, %.not173
  br i1 %or.cond203, label %.critedge5, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = add nuw i32 %i.bu, 1                    ; 2 uses
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1
  %indvars.iv.next309 = add nsw i64 %indvars.iv308, -1
  %exitcond319.not = icmp eq i32 %i.cb, %indvars.iv313
  br i1 %exitcond319.not, label %.critedge5, label %.lr.ph239, !llvm.loop !196

.critedge5:                                       ; preds = %bb.m, %.lr.ph239, %bb.l, %.preheader212
  %.lcssa237 = phi i32 [ 0, %.preheader212 ], [ %i.bu, %bb.l ], [ %i.bu, %.lr.ph239 ], [ %indvars.iv313, %bb.m ] ; 2 uses
  store i32 %.lcssa237, ptr %i.a, align 16
  %.not174.not = icmp sge i32 %.lcssa237, %3      ; 2 uses
  %i.cc = icmp slt i32 %i.bh, %i.d
  br i1 %i.cc, label %.lr.ph252.preheader, label %.critedge.thread

.lr.ph252.preheader:                              ; preds = %.critedge5
  %i.cd = sext i32 %i.bh to i64                   ; 2 uses
  %i.ce = sext i32 %i.f to i64                    ; 4 uses
  %i.cf = sub nsw i32 %i.d, %.0142
  %wide.trip.count327 = zext i32 %i.cf to i64
  %i.cg = xor i32 %.0142, -1
  %i.ch = add i32 %i.d, %i.cg                     ; 2 uses
  %i.ci = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %i.ce
  br i1 %i.cj, label %.lr.ph432, label %.critedge7

.lr.ph252:                                        ; preds = %bb.n
  %i.ck = add nuw nsw i32 %i.cp, 1                ; 3 uses
  %indvars.iv.next321 = add nsw i64 %indvars.iv320431, 1 ; 2 uses
  %indvars.iv.next336 = add i32 %indvars.iv335429, -1 ; 2 uses
  %i.cl = add nuw nsw i64 %indvars.iv.next323, %i.ao ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %i.ce
  br i1 %i.cm, label %.lr.ph432, label %.critedge7, !llvm.loop !197

.lr.ph432:                                        ; preds = %.lr.ph252.preheader, %.lr.ph252
  %i.cn = phi i64 [ %i.cl, %.lr.ph252 ], [ %i.ci, %.lr.ph252.preheader ]
  %i.co = phi i32 [ %i.ck, %.lr.ph252 ], [ %i.ar, %.lr.ph252.preheader ]
  %i.cp = phi i32 [ %i.ck, %.lr.ph252 ], [ %.0134229.lcssa, %.lr.ph252.preheader ]
  %indvars.iv320431 = phi i64 [ %indvars.iv.next321, %.lr.ph252 ], [ %i.cd, %.lr.ph252.preheader ] ; 3 uses
  %indvars.iv322430 = phi i64 [ %indvars.iv.next323, %.lr.ph252 ], [ 1, %.lr.ph252.preheader ] ; 2 uses
  %indvars.iv335429 = phi i32 [ %indvars.iv.next336, %.lr.ph252 ], [ %i.ch, %.lr.ph252.preheader ] ; 2 uses
  %i.cq = mul nsw i64 %indvars.iv320431, %i.bf
  %i.cr = getelementptr i8, ptr %i.w, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cn
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !99
  %.not175 = icmp eq i8 %i.ct, 0
  br i1 %.not175, label %.critedge7, label %bb.n

bb.n:                                             ; preds = %.lr.ph432
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322430, 1 ; 4 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count327
  br i1 %exitcond328.not, label %.critedge.thread, label %.lr.ph252, !llvm.loop !197

.critedge7:                                       ; preds = %.lr.ph432, %.lr.ph252, %.lr.ph252.preheader
  %indvars.iv335.lcssa = phi i32 [ %i.ch, %.lr.ph252.preheader ], [ %indvars.iv335429, %.lr.ph432 ], [ %indvars.iv.next336, %.lr.ph252 ] ; 2 uses
  %indvars.iv322.lcssa = phi i64 [ 1, %.lr.ph252.preheader ], [ %indvars.iv322430, %.lr.ph432 ], [ %indvars.iv.next323, %.lr.ph252 ] ; 2 uses
  %indvars.iv320.lcssa = phi i64 [ %i.cd, %.lr.ph252.preheader ], [ %indvars.iv320431, %.lr.ph432 ], [ %indvars.iv.next321, %.lr.ph252 ]
  %.lcssa414 = phi i32 [ %i.ar, %.lr.ph252.preheader ], [ %i.co, %.lr.ph432 ], [ %i.ck, %.lr.ph252 ]
  %i.cu = trunc nuw nsw i64 %indvars.iv322.lcssa to i32 ; 2 uses
  store i32 %.lcssa414, ptr %i.k, align 8
  %i.cv = add nuw nsw i32 %2, %i.cu
  %.not177 = icmp slt i32 %i.cv, %i.f
  %i.cw = add nuw nsw i32 %.0142, %i.cu
  %i.cx = icmp slt i32 %i.cw, %i.d
  %or.cond = select i1 %.not177, i1 %i.cx, i1 false
  br i1 %or.cond, label %.lr.ph258, label %.critedge.thread

.lr.ph258:                                        ; preds = %.critedge7, %bb.p
  %indvars.iv350 = phi i32 [ %indvars.iv.next351, %bb.p ], [ %indvars.iv335.lcssa, %.critedge7 ] ; 2 uses
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %bb.p ], [ %indvars.iv322.lcssa, %.critedge7 ] ; 4 uses
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %bb.p ], [ %indvars.iv320.lcssa, %.critedge7 ] ; 3 uses
  %i.cy = phi i32 [ %i.dg, %bb.p ], [ 0, %.critedge7 ] ; 4 uses
  %i.cz = add nuw nsw i64 %indvars.iv333, %i.ao   ; 2 uses
  %i.da = icmp slt i64 %i.cz, %i.ce
  br i1 %i.da, label %bb.o, label %.critedge9

bb.o:                                             ; preds = %.lr.ph258
  %i.db = mul nsw i64 %indvars.iv330, %i.bf
  %i.dc = getelementptr i8, ptr %i.w, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cz
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !99
  %.not178 = icmp eq i8 %i.de, 0
  %i.df = icmp slt i32 %i.cy, %3
  %or.cond204 = and i1 %.not178, %i.df
  br i1 %or.cond204, label %bb.p, label %.critedge9

bb.p:                                             ; preds = %bb.o
  %i.dg = add nuw nsw i32 %i.cy, 1                ; 2 uses
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1
  %indvars.iv.next331 = add nsw i64 %indvars.iv330, 1
  %exitcond341.not = icmp eq i32 %i.dg, %indvars.iv335.lcssa
  %indvars.iv.next351 = add i32 %indvars.iv350, -1
  br i1 %exitcond341.not, label %.critedge.thread, label %.lr.ph258, !llvm.loop !198

.critedge9:                                       ; preds = %bb.o, %.lr.ph258
  %i.dh = trunc nuw nsw i64 %indvars.iv333 to i32 ; 2 uses
  store i32 %i.cy, ptr %i.l, align 4
  %i.di = add nuw nsw i32 %2, %i.dh
  %.not180 = icmp slt i32 %i.di, %i.f
  %.not181 = icmp slt i32 %i.cy, %3
  %or.cond191 = and i1 %.not180, %.not181
  br i1 %or.cond191, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %.critedge9
  %i.dj = add nuw nsw i32 %.0142, %i.dh
  %i.dk = icmp slt i32 %i.dj, %i.d
  br i1 %i.dk, label %.lr.ph263.preheader, label %.critedge11

.lr.ph263.preheader:                              ; preds = %.preheader
  %i.dl = zext nneg i32 %i.d to i64
  br label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %bb.r
  %indvars.iv346 = phi i64 [ %indvars.iv333, %.lr.ph263.preheader ], [ %indvars.iv.next347, %bb.r ] ; 2 uses
  %indvars.iv343 = phi i64 [ %indvars.iv330, %.lr.ph263.preheader ], [ %indvars.iv.next344, %bb.r ] ; 2 uses
  %i.dm = phi i32 [ 0, %.lr.ph263.preheader ], [ %i.du, %bb.r ] ; 4 uses
  %i.dn = add nuw nsw i64 %indvars.iv346, %i.ao   ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.ce
  br i1 %i.do, label %bb.q, label %.critedge11

bb.q:                                             ; preds = %.lr.ph263
  %i.dp = mul nsw i64 %indvars.iv343, %i.bf
  %i.dq = getelementptr i8, ptr %i.w, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dn
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !99
  %.not182 = icmp ne i8 %i.ds, 0
  %i.dt = icmp slt i32 %i.dm, %3
  %or.cond205 = select i1 %.not182, i1 %i.dt, i1 false
  br i1 %or.cond205, label %bb.r, label %.critedge11

bb.r:                                             ; preds = %bb.q
  %i.du = add nuw nsw i32 %i.dm, 1
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %i.dv = add nuw nsw i64 %indvars.iv.next347, %i.an
  %i.dw = icmp samesign ult i64 %i.dv, %i.dl
  %indvars.iv.next344 = add nsw i64 %indvars.iv343, 1
  br i1 %i.dw, label %.lr.ph263, label %.critedge11, !llvm.loop !199

.critedge11:                                      ; preds = %bb.r, %.lr.ph263, %bb.q, %.preheader
  %.lcssa261 = phi i32 [ 0, %.preheader ], [ %i.dm, %bb.q ], [ %i.dm, %.lr.ph263 ], [ %indvars.iv350, %bb.r ] ; 2 uses
  store i32 %.lcssa261, ptr %i.m, align 16
  %.not183 = icmp slt i32 %.lcssa261, %3          ; 2 uses
  %i.dx = call noundef zeroext i1 @_ZN5zxing6qrcode19FinderPatternFinder17foundPatternCrossEPi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.a)
  br i1 %i.dx, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %.critedge11
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !54 ; 2 uses
  %i.ea = icmp ne i32 %i.dz, 1
  %5 = or i1 %.not174.not, %i.ea
  %or.cond13.not = or i1 %5, %.not183
  br i1 %or.cond13.not, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %bb.s
  %i.eb = icmp eq i32 %i.dz, 2
  %6 = and i1 %.not174.not, %i.eb
  %or.cond15 = and i1 %6, %.not183
  br i1 %or.cond15, label %.critedge.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = call noundef i32 @_ZN5zxing6qrcode19FinderPatternFinder18getStateCountTotalEPiRKNS1_15CrossCheckStateE(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.dy)
  %i.ed = sub nsw i32 %i.ec, %4
  %i.ee = tail call i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ef = shl nsw i32 %4, 1
  %i.eg = icmp slt i32 %i.ee, %i.ef
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.i, %bb.k, %bb.n, %bb.p, %.preheader213, %.critedge5, %.critedge, %.critedge3, %bb.u, %.critedge11, %bb.s, %bb.t, %.critedge9, %.critedge7, %bb.f, %bb.g
  %.4140 = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ false, %.critedge3 ], [ false, %.critedge ], [ false, %.critedge9 ], [ false, %.critedge7 ], [ false, %.critedge11 ], [ false, %bb.s ], [ %i.eg, %bb.u ], [ false, %bb.t ], [ false, %.preheader213 ], [ false, %.critedge5 ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.b, %.critedge.thread
  %.5141 = phi i1 [ %.4140, %.critedge.thread ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.5141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN5zxing6qrcode19FinderPatternFinder18getStateCountTotalEPiRKNS1_15CrossCheckStateE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 2 uses
  %i.g = add i32 %i.f, %i.b                       ; 2 uses
  %i.h = add i32 %i.g, %i.d                       ; 5 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !200
  switch i32 %i.i, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 4, !tbaa !40
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = add nsw i32 %i.k, %i.m
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.o = add nsw i32 %i.h, %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %i.r = add nsw i32 %i.o, %i.q
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.s = load i32, ptr %1, align 4, !tbaa !40
  %i.t = add i32 %i.h, %i.f
  %i.u = add i32 %i.t, %i.s
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.v = add i32 %i.g, %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ %i.v, %bb.e ], [ %i.h, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN5zxing6qrcode19FinderPatternFinder18crossCheckVerticalEmmiiRf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = tail call noundef i32 @_ZNK5zxing9BitMatrix9getHeightEv(ptr noundef nonnull align 8 dereferenceable(346) %i.c) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !tbaa !40
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.f = trunc i64 %2 to i32                      ; 3 uses
  %i.g = trunc i64 %1 to i32                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = add nsw i32 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !142
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = sext i32 %i.k to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !144  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1, !tbaa !99
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = add nsw i32 %i.g, 1
  %i.t = icmp slt i32 %i.s, %i.d
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = trunc i64 %1 to i32
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %i.w = mul nsw i32 %i.i, %i.v
  %i.x = add nsw i32 %i.w, %i.f
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !99
  %.not127 = icmp eq i8 %i.aa, 0
  br i1 %.not127, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = icmp sgt i32 %i.g, 1
  br i1 %i.ab, label %bb.e, label %.critedge2.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = trunc i64 %1 to i32
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.ae = mul nsw i32 %i.i, %i.ad
  %i.af = add nsw i32 %i.ae, %i.f
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !99
  %.not128 = icmp eq i8 %i.ai, 0
  br i1 %.not128, label %.critedge2.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %.pre-phi = phi i32 [ %i.ad, %bb.e ], [ %i.v, %bb.c ], [ %i.g, %bb.a ] ; 4 uses
  %i.aj = tail call noundef ptr @_ZN5zxing9BitMatrix13getRowBoolPtrEi(ptr noundef nonnull align 8 dereferenceable(346) %i.e, i32 noundef 0) ; 2 uses
  %i.ak = tail call noundef i32 @_ZNK5zxing9BitMatrix8getWidthEv(ptr noundef nonnull align 8 dereferenceable(346) %i.e) ; 3 uses
  %i.al = icmp sgt i32 %.pre-phi, -1
  br i1 %i.al, label %.lr.ph, label %.critedge2.thread

.lr.ph:                                           ; preds = %bb.f
  %i.am = mul nsw i32 %i.ak, %.pre-phi
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ar = sext i32 %i.ak to i64                   ; 5 uses
  %i.as = sub nsw i64 0, %i.ar                    ; 3 uses
  %i.at = add nuw i32 %.pre-phi, 1                ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i32 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.promoted175 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.h ] ; 4 uses
  %.0106152 = phi i32 [ %.pre-phi, %.lr.ph ], [ %i.ay, %bb.h ] ; 3 uses
  %.0108151 = phi ptr [ %i.ap, %.lr.ph ], [ %i.az, %bb.h ] ; 3 uses
  %i.au = load i8, ptr %.0108151, align 1, !tbaa !145, !range !60, !noundef !61
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.g
  store i32 %.promoted175, ptr %i.aq, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = add nuw nsw i32 %.promoted175, 1
  %i.ay = add nsw i32 %.0106152, -1
  %i.az = getelementptr inbounds i8, ptr %.0108151, i64 %i.as
  %i.ba = icmp sgt i32 %.0106152, 0
  %indvars.iv.next = add i32 %indvars.iv, -1
  br i1 %i.ba, label %bb.g, label %.critedge2.thread, !llvm.loop !201

bb.i:                                             ; preds = %.lr.ph156, %.critedge
  %indvars.iv231 = phi i32 [ %indvars.iv, %.lr.ph156 ], [ %indvars.iv.next232, %.critedge ] ; 2 uses
  %i.bb = phi i32 [ 0, %.lr.ph156 ], [ %i.be, %.critedge ] ; 4 uses
  %.1107155 = phi i32 [ %.0106152, %.lr.ph156 ], [ %i.bf, %.critedge ] ; 3 uses
  %.1109154 = phi ptr [ %.0108151, %.lr.ph156 ], [ %i.bg, %.critedge ] ; 3 uses
  %i.bc = load i8, ptr %.1109154, align 1, !tbaa !145, !range !60, !noundef !61
  %i.bd = trunc nuw i8 %i.bc to i1
  %.not129 = icmp sgt i32 %i.bb, %3               ; 2 uses
  %or.cond206 = select i1 %i.bd, i1 true, i1 %.not129
  br i1 %or.cond206, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.i
  %i.be = add nuw nsw i32 %i.bb, 1
  %i.bf = add nsw i32 %.1107155, -1
  %i.bg = getelementptr inbounds i8, ptr %.1109154, i64 %i.as
  %i.bh = icmp sgt i32 %.1107155, 0
  %indvars.iv.next232 = add i32 %indvars.iv231, -1
  br i1 %i.bh, label %bb.i, label %.critedge2.thread, !llvm.loop !202

.critedge2:                                       ; preds = %bb.i
  store i32 %i.bb, ptr %i.aw, align 4
  br i1 %.not129, label %.critedge2.thread, label %.lr.ph164

.lr.ph164:                                        ; preds = %.critedge2, %bb.j
  %.2163 = phi i32 [ %i.bm, %bb.j ], [ %.1107155, %.critedge2 ] ; 2 uses
  %.2110162 = phi ptr [ %i.bn, %bb.j ], [ %.1109154, %.critedge2 ] ; 2 uses
  %i.bi = phi i32 [ %i.bl, %bb.j ], [ 0, %.critedge2 ] ; 2 uses
  %i.bj = load i8, ptr %.2110162, align 1, !tbaa !145, !range !60, !noundef !61
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %.critedge4

bb.j:                                             ; preds = %.lr.ph164
  %i.bl = add nuw nsw i32 %i.bi, 1
  %i.bm = add nsw i32 %.2163, -1
end_hunk_0
