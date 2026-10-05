Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_l8?download=true
inline.NumInlined: 110
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_color_to_l8(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.f = load i8, ptr %i.e, align 1, !tbaa !41    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !44   ; 4 uses
  %i.m = icmp eq ptr %i.h, null                   ; 3 uses
  %i.n = zext i8 %i.f to i16                      ; 2 uses
  %i.o = icmp ugt i8 %i.f, -4                     ; 2 uses
  %or.cond = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload39 = load i24, ptr %i.p, align 4
  %i.q = tail call zeroext i8 @lv_color_luminance(i24 %.0.copyload39) #6 ; 19 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !45     ; 5 uses
  %i.s = icmp sgt i32 %i.d, 0
  br i1 %i.s, label %.preheader156.lr.ph, label %.loopexit

.preheader156.lr.ph:                              ; preds = %bb.b
  %i.t = icmp sgt i32 %i.b, 16
  %i.u = zext i32 %i.l to i64                     ; 19 uses
  br i1 %i.t, label %.preheader156.us.preheader, label %.preheader156.lr.ph.split

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.v = add nsw i32 %i.b, -17                    ; 3 uses
  %i.w = and i32 %i.v, 2147483632
  %narrow = add nuw nsw i32 %i.w, 16              ; 2 uses
  %i.x = zext nneg i32 %narrow to i64             ; 5 uses
  %i.y = and i32 %i.v, -16
  %i.z = and i32 %i.v, 15
  %narrow223 = add nuw nsw i32 %i.z, 1
  %i.aa = zext nneg i32 %narrow223 to i64         ; 5 uses
  %wide.trip.count212 = zext nneg i32 %i.d to i64 ; 2 uses
  %i.ab = icmp slt i32 %narrow, %i.b              ; 5 uses
  %i.ac = sext i32 %i.y to i64
  %invariant.gep = getelementptr i8, ptr %i.r, i64 %i.ac ; 5 uses
  %xtraiter250 = and i64 %wide.trip.count212, 3   ; 3 uses
  %i.ad = icmp ult i32 %i.d, 4
  br i1 %i.ad, label %.preheader156.us.epil.preheader, label %.preheader156.us.preheader.new

.preheader156.us.preheader.new:                   ; preds = %.preheader156.us.preheader
  %unroll_iter254 = and i64 %wide.trip.count212, 2147483644
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %._crit_edge180.us.3, %.preheader156.us.preheader.new
  %indvar = phi i64 [ 0, %.preheader156.us.preheader.new ], [ %indvar.next.3, %._crit_edge180.us.3 ] ; 5 uses
  %.0141182.us = phi ptr [ %i.r, %.preheader156.us.preheader.new ], [ %i.ak, %._crit_edge180.us.3 ] ; 2 uses
  %niter255 = phi i64 [ 0, %.preheader156.us.preheader.new ], [ %niter255.next.3, %._crit_edge180.us.3 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0141182.us, i8 %i.q, i64 %i.x, i1 false), !tbaa !11
  br i1 %i.ab, label %.lr.ph179.us.preheader, label %._crit_edge180.us

._crit_edge180.us:                                ; preds = %.lr.ph179.us.preheader, %.preheader156.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0141182.us, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 %i.q, i64 %i.x, i1 false), !tbaa !11
  br i1 %i.ab, label %.lr.ph179.us.preheader.1, label %._crit_edge180.us.1

.lr.ph179.us.preheader.1:                         ; preds = %._crit_edge180.us
  %indvar.next = or disjoint i64 %indvar, 1
  %i.af = mul nuw nsw i64 %indvar.next, %i.u
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.af
  %scevgep.1 = getelementptr i8, ptr %gep.1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.1, i8 %i.q, i64 %i.aa, i1 false), !tbaa !11
  br label %._crit_edge180.us.1

._crit_edge180.us.1:                              ; preds = %.lr.ph179.us.preheader.1, %._crit_edge180.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i8 %i.q, i64 %i.x, i1 false), !tbaa !11
  br i1 %i.ab, label %.lr.ph179.us.preheader.2, label %._crit_edge180.us.2

.lr.ph179.us.preheader.2:                         ; preds = %._crit_edge180.us.1
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.ah = mul nuw nsw i64 %indvar.next.1, %i.u
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ah
  %scevgep.2 = getelementptr i8, ptr %gep.2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.2, i8 %i.q, i64 %i.aa, i1 false), !tbaa !11
  br label %._crit_edge180.us.2

._crit_edge180.us.2:                              ; preds = %.lr.ph179.us.preheader.2, %._crit_edge180.us.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i8 %i.q, i64 %i.x, i1 false), !tbaa !11
  br i1 %i.ab, label %.lr.ph179.us.preheader.3, label %._crit_edge180.us.3

.lr.ph179.us.preheader.3:                         ; preds = %._crit_edge180.us.2
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.aj = mul nuw nsw i64 %indvar.next.2, %i.u
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.aj
  %scevgep.3 = getelementptr i8, ptr %gep.3, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.3, i8 %i.q, i64 %i.aa, i1 false), !tbaa !11
  br label %._crit_edge180.us.3

._crit_edge180.us.3:                              ; preds = %.lr.ph179.us.preheader.3, %._crit_edge180.us.2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.u ; 2 uses
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter255.next.3 = add i64 %niter255, 4         ; 2 uses
  %niter255.ncmp.3 = icmp eq i64 %niter255.next.3, %unroll_iter254
  br i1 %niter255.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader156.us, !llvm.loop !26

.lr.ph179.us.preheader:                           ; preds = %.preheader156.us
  %i.al = mul nuw nsw i64 %indvar, %i.u
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.al
  %scevgep = getelementptr i8, ptr %gep, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.q, i64 %i.aa, i1 false), !tbaa !11
  br label %._crit_edge180.us

.preheader156.lr.ph.split:                        ; preds = %.preheader156.lr.ph
  %i.am = icmp sgt i32 %i.b, 0
  br i1 %i.am, label %.preheader156.preheader, label %.loopexit

.preheader156.preheader:                          ; preds = %.preheader156.lr.ph.split
  %i.an = zext nneg i32 %i.b to i64               ; 9 uses
  %xtraiter = and i32 %i.d, 7                     ; 3 uses
  %i.ao = icmp ult i32 %i.d, 8
  br i1 %i.ao, label %.preheader156.epil.preheader, label %.preheader156.preheader.new

.preheader156.preheader.new:                      ; preds = %.preheader156.preheader
  %unroll_iter = and i32 %i.d, 2147483640
  br label %.preheader156

.preheader156:                                    ; preds = %.preheader156, %.preheader156.preheader.new
  %.0141182 = phi ptr [ %i.r, %.preheader156.preheader.new ], [ %i.aw, %.preheader156 ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader156.preheader.new ], [ %niter.next.7, %.preheader156 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0141182, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.0141182, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.at, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.u ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.u ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit245.unr-lcssa, label %.preheader156, !llvm.loop !26

bb.c:                                             ; preds = %bb.a
  %i.ax = icmp ult i8 %i.f, -3
  %or.cond5 = select i1 %i.m, i1 %i.ax, i1 false
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload18 = load i24, ptr %i.ay, align 4
  %i.az = tail call zeroext i8 @lv_color_luminance(i24 %.0.copyload18) #6
  %i.ba = icmp sgt i32 %i.d, 0
  br i1 %i.ba, label %.preheader157.lr.ph, label %.loopexit

.preheader157.lr.ph:                              ; preds = %bb.d
  %i.bb = icmp slt i32 %i.b, 1
  %i.bc = icmp eq i8 %i.f, 0
  %i.bd = xor i8 %i.f, -1
  %i.be = zext i8 %i.az to i16
  %i.bf = mul nuw i16 %i.be, %i.n                 ; 3 uses
  %i.bg = zext i8 %i.bd to i16                    ; 3 uses
  %i.bh = zext i32 %i.l to i64
  %brmerge = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %brmerge, label %.loopexit, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %.preheader157.lr.ph
  %i.bi = load ptr, ptr %0, align 8, !tbaa !45
  %wide.trip.count198 = zext nneg i32 %i.b to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  %min.iters.check232 = icmp ult i32 %i.b, 32
  %i.bj = and i64 %wide.trip.count198, 24
  %n.vec = and i64 %wide.trip.count198, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.bg, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert233 = insertelement <16 x i16> poison, i16 %i.bf, i64 0
  %broadcast.splat234 = shufflevector <16 x i16> %broadcast.splatinsert233, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count198
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  %n.vec236 = and i64 %wide.trip.count198, 2147483640 ; 3 uses
  %broadcast.splatinsert237 = insertelement <8 x i16> poison, i16 %i.bg, i64 0
  %broadcast.splat238 = shufflevector <8 x i16> %broadcast.splatinsert237, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert239 = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %broadcast.splat240 = shufflevector <8 x i16> %broadcast.splatinsert239, <8 x i16> poison, <8 x i32> zeroinitializer
  %cmp.n244 = icmp eq i64 %n.vec236, %wide.trip.count198
  br label %iter.check

iter.check:                                       ; preds = %.preheader157.preheader, %._crit_edge173
  %.0140175 = phi ptr [ %i.cl, %._crit_edge173 ], [ %i.bi, %.preheader157.preheader ] ; 4 uses
  %.1144174 = phi i32 [ %i.cm, %._crit_edge173 ], [ 0, %.preheader157.preheader ]
  br i1 %min.iters.check, label %.sink.split.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check232, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0140175, i64 %index ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bk, align 1, !tbaa !11
  %wide.load235 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !11
  %i.bm = zext <16 x i8> %wide.load to <16 x i16>
  %i.bn = zext <16 x i8> %wide.load235 to <16 x i16>
  %i.bo = mul nuw <16 x i16> %broadcast.splat, %i.bm
  %i.bp = mul nuw <16 x i16> %broadcast.splat, %i.bn
  %i.bq = add <16 x i16> %i.bo, %broadcast.splat234
  %i.br = add <16 x i16> %i.bp, %broadcast.splat234
  %i.bs = lshr <16 x i16> %i.bq, splat (i16 8)
  %i.bt = lshr <16 x i16> %i.br, splat (i16 8)
  %i.bu = trunc nuw <16 x i16> %i.bs to <16 x i8>
  %i.bv = trunc nuw <16 x i16> %i.bt to <16 x i8>
  store <16 x i8> %i.bu, ptr %i.bk, align 1, !tbaa !11
  store <16 x i8> %i.bv, ptr %i.bl, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge173, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.sink.split.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0140175, i64 %index241 ; 2 uses
  %wide.load242 = load <8 x i8>, ptr %i.bx, align 1, !tbaa !11
  %i.by = zext <8 x i8> %wide.load242 to <8 x i16>
  %i.bz = mul nuw <8 x i16> %broadcast.splat238, %i.by
  %i.ca = add <8 x i16> %i.bz, %broadcast.splat240
  %i.cb = lshr <8 x i16> %i.ca, splat (i16 8)
  %i.cc = trunc nuw <8 x i16> %i.cb to <8 x i8>
  store <8 x i8> %i.cc, ptr %i.bx, align 1, !tbaa !11
  %index.next243 = add nuw i64 %index241, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n244, label %._crit_edge173, label %.sink.split.i.preheader

.sink.split.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv195.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec236, %vec.epilog.middle.block ]
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.i.preheader, %.sink.split.i
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %.sink.split.i ], [ %indvars.iv195.ph, %.sink.split.i.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0140175, i64 %indvars.iv195 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i16
  %i.ch = mul nuw i16 %i.cg, %i.bg
  %i.ci = add i16 %i.ch, %i.bf
  %i.cj = lshr i16 %i.ci, 8
  %i.ck = trunc nuw i16 %i.cj to i8
  store i8 %i.ck, ptr %i.ce, align 1, !tbaa !11
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge173, label %.sink.split.i, !llvm.loop !29

._crit_edge173:                                   ; preds = %.sink.split.i, %vec.epilog.middle.block, %middle.block
  %i.cl = getelementptr inbounds nuw i8, ptr %.0140175, i64 %i.bh
  %i.cm = add nuw nsw i32 %.1144174, 1            ; 2 uses
  %exitcond200.not = icmp eq i32 %i.cm, %i.d
  br i1 %exitcond200.not, label %.loopexit, label %iter.check, !llvm.loop !30

bb.e:                                             ; preds = %bb.c
  %.not = xor i1 %i.m, true
  %or.cond8 = select i1 %.not, i1 %i.o, i1 false
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload13 = load i24, ptr %i.cn, align 4
  %i.co = tail call zeroext i8 @lv_color_luminance(i24 %.0.copyload13) #6 ; 4 uses
  %i.cp = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %or.cond8, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.cp, label %.preheader159.lr.ph, label %.loopexit

.preheader159.lr.ph:                              ; preds = %bb.f
  %i.cq = icmp sgt i32 %i.b, 0
  %i.cr = zext i8 %i.co to i16
  %i.cs = zext i32 %i.l to i64
  %i.ct = sext i32 %i.j to i64
  br i1 %i.cq, label %.preheader159.preheader, label %.loopexit

.preheader159.preheader:                          ; preds = %.preheader159.lr.ph
  %i.cu = load ptr, ptr %0, align 8, !tbaa !45
  %wide.trip.count192 = zext nneg i32 %i.b to i64
  br label %.preheader159

.preheader159:                                    ; preds = %.preheader159.preheader, %._crit_edge168
  %.0139171 = phi ptr [ %i.dk, %._crit_edge168 ], [ %i.cu, %.preheader159.preheader ] ; 2 uses
  %.0142170 = phi ptr [ %i.dl, %._crit_edge168 ], [ %i.h, %.preheader159.preheader ] ; 2 uses
  %.2169 = phi i32 [ %i.dm, %._crit_edge168 ], [ 0, %.preheader159.preheader ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader159, %lv_color_8_8_mix.exit152
  %indvars.iv189 = phi i64 [ 0, %.preheader159 ], [ %indvars.iv.next190, %lv_color_8_8_mix.exit152 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0139171, i64 %indvars.iv189 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0142170, i64 %indvars.iv189
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11  ; 4 uses
  %i.cy = zext i8 %i.cx to i16
  %i.cz = icmp eq i8 %i.cx, 0
  br i1 %i.cz, label %lv_color_8_8_mix.exit152, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = icmp ugt i8 %i.cx, -4
  br i1 %i.da, label %.sink.split.i150, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.db = xor i8 %i.cx, -1
  %i.dc = mul nuw i16 %i.cy, %i.cr
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.de = zext i8 %i.dd to i16
  %i.df = zext i8 %i.db to i16
  %i.dg = mul nuw i16 %i.de, %i.df
  %i.dh = add i16 %i.dg, %i.dc
  %i.di = lshr i16 %i.dh, 8
  %i.dj = trunc nuw i16 %i.di to i8
  br label %.sink.split.i150

.sink.split.i150:                                 ; preds = %bb.i, %bb.h
  %.sink.i151 = phi i8 [ %i.dj, %bb.i ], [ %i.co, %bb.h ]
  store i8 %.sink.i151, ptr %i.cv, align 1, !tbaa !11
  br label %lv_color_8_8_mix.exit152

lv_color_8_8_mix.exit152:                         ; preds = %bb.g, %.sink.split.i150
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %bb.g, !llvm.loop !31

._crit_edge168:                                   ; preds = %lv_color_8_8_mix.exit152
  %i.dk = getelementptr inbounds nuw i8, ptr %.0139171, i64 %i.cs
  %i.dl = getelementptr inbounds i8, ptr %.0142170, i64 %i.ct
  %i.dm = add nuw nsw i32 %.2169, 1               ; 2 uses
  %exitcond194.not = icmp eq i32 %i.dm, %i.d
  br i1 %exitcond194.not, label %.loopexit, label %.preheader159, !llvm.loop !32

bb.j:                                             ; preds = %bb.e
  br i1 %i.cp, label %.preheader161.lr.ph, label %.loopexit

.preheader161.lr.ph:                              ; preds = %bb.j
  %i.dn = icmp sgt i32 %i.b, 0
  %i.do = zext i8 %i.co to i16
  %i.dp = zext i32 %i.l to i64
  %i.dq = sext i32 %i.j to i64
  br i1 %i.dn, label %.preheader161.preheader, label %.loopexit

.preheader161.preheader:                          ; preds = %.preheader161.lr.ph
  %i.dr = load ptr, ptr %0, align 8, !tbaa !45
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader161.preheader, %._crit_edge
  %.0166 = phi ptr [ %i.ei, %._crit_edge ], [ %i.dr, %.preheader161.preheader ] ; 2 uses
  %.1165 = phi ptr [ %i.ej, %._crit_edge ], [ %i.h, %.preheader161.preheader ] ; 2 uses
  %.3164 = phi i32 [ %i.ek, %._crit_edge ], [ 0, %.preheader161.preheader ]
  br label %bb.k

bb.k:                                             ; preds = %.preheader161, %lv_color_8_8_mix.exit155
  %indvars.iv = phi i64 [ 0, %.preheader161 ], [ %indvars.iv.next, %lv_color_8_8_mix.exit155 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0166, i64 %indvars.iv ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1165, i64 %indvars.iv
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !11
  %i.dv = zext i8 %i.du to i16
  %i.dw = mul nuw i16 %i.dv, %i.n                 ; 2 uses
  %i.dx = lshr i16 %i.dw, 8                       ; 3 uses
  %i.dy = icmp eq i16 %i.dx, 0
  br i1 %i.dy, label %lv_color_8_8_mix.exit155, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dz = icmp ugt i16 %i.dw, -769
  br i1 %i.dz, label %.sink.split.i153, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = xor i16 %i.dx, 255
  %i.eb = mul nuw i16 %i.dx, %i.do
  %i.ec = load i8, ptr %i.ds, align 1, !tbaa !11
  %i.ed = zext i8 %i.ec to i16
  %i.ee = mul nuw i16 %i.ea, %i.ed
  %i.ef = add i16 %i.ee, %i.eb
  %i.eg = lshr i16 %i.ef, 8
  %i.eh = trunc nuw i16 %i.eg to i8
  br label %.sink.split.i153

.sink.split.i153:                                 ; preds = %bb.m, %bb.l
  %.sink.i154 = phi i8 [ %i.eh, %bb.m ], [ %i.co, %bb.l ]
  store i8 %.sink.i154, ptr %i.ds, align 1, !tbaa !11
  br label %lv_color_8_8_mix.exit155

lv_color_8_8_mix.exit155:                         ; preds = %bb.k, %.sink.split.i153
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !33

._crit_edge:                                      ; preds = %lv_color_8_8_mix.exit155
  %i.ei = getelementptr inbounds nuw i8, ptr %.0166, i64 %i.dp
  %i.ej = getelementptr inbounds i8, ptr %.1165, i64 %i.dq
  %i.ek = add nuw nsw i32 %.3164, 1               ; 2 uses
  %exitcond188.not = icmp eq i32 %i.ek, %i.d
  br i1 %exitcond188.not, label %.loopexit, label %.preheader161, !llvm.loop !34

.loopexit.loopexit.unr-lcssa:                     ; preds = %._crit_edge180.us.3
  %lcmp.mod252.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod252.not, label %.loopexit, label %.preheader156.us.epil.preheader

.preheader156.us.epil.preheader:                  ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader156.us.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader156.us.preheader ], [ %indvar.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.0141182.us.epil.init = phi ptr [ %i.r, %.preheader156.us.preheader ], [ %i.ak, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod253 = icmp ne i64 %xtraiter250, 0
  tail call void @llvm.assume(i1 %lcmp.mod253)
  br label %.preheader156.us.epil

.preheader156.us.epil:                            ; preds = %._crit_edge180.us.epil, %.preheader156.us.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader156.us.epil.preheader ], [ %indvar.next.epil, %._crit_edge180.us.epil ] ; 2 uses
  %.0141182.us.epil = phi ptr [ %.0141182.us.epil.init, %.preheader156.us.epil.preheader ], [ %i.em, %._crit_edge180.us.epil ] ; 2 uses
  %epil.iter251 = phi i64 [ 0, %.preheader156.us.epil.preheader ], [ %epil.iter251.next, %._crit_edge180.us.epil ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0141182.us.epil, i8 %i.q, i64 %i.x, i1 false), !tbaa !11
  br i1 %i.ab, label %.lr.ph179.us.preheader.epil, label %._crit_edge180.us.epil

.lr.ph179.us.preheader.epil:                      ; preds = %.preheader156.us.epil
  %i.el = mul nuw nsw i64 %indvar.epil, %i.u
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.el
  %scevgep.epil = getelementptr i8, ptr %gep.epil, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.epil, i8 %i.q, i64 %i.aa, i1 false), !tbaa !11
  br label %._crit_edge180.us.epil

._crit_edge180.us.epil:                           ; preds = %.lr.ph179.us.preheader.epil, %.preheader156.us.epil
  %i.em = getelementptr inbounds nuw i8, ptr %.0141182.us.epil, i64 %i.u
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter251.next = add i64 %epil.iter251, 1   ; 2 uses
  %epil.iter251.cmp.not = icmp eq i64 %epil.iter251.next, %xtraiter250
  br i1 %epil.iter251.cmp.not, label %.loopexit, label %.preheader156.us.epil, !llvm.loop !35

.loopexit.loopexit245.unr-lcssa:                  ; preds = %.preheader156
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader156.epil.preheader

.preheader156.epil.preheader:                     ; preds = %.loopexit.loopexit245.unr-lcssa, %.preheader156.preheader
  %.0141182.epil.init = phi ptr [ %i.r, %.preheader156.preheader ], [ %i.aw, %.loopexit.loopexit245.unr-lcssa ]
  %lcmp.mod249 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod249)
  br label %.preheader156.epil

.preheader156.epil:                               ; preds = %.preheader156.epil, %.preheader156.epil.preheader
  %.0141182.epil = phi ptr [ %i.en, %.preheader156.epil ], [ %.0141182.epil.init, %.preheader156.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader156.epil ], [ 0, %.preheader156.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0141182.epil, i8 %i.q, i64 %i.an, i1 false), !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %.0141182.epil, i64 %i.u
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader156.epil, !llvm.loop !36

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge168, %._crit_edge173, %.loopexit.loopexit245.unr-lcssa, %.preheader156.epil, %.loopexit.loopexit.unr-lcssa, %._crit_edge180.us.epil, %.preheader157.lr.ph, %bb.j, %.preheader161.lr.ph, %bb.f, %.preheader159.lr.ph, %bb.d, %bb.b, %.preheader156.lr.ph.split
  ret void
}

declare zeroext i8 @lv_color_luminance(i24) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_image_to_l8(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !120
  switch i32 %i.b, label %rgb565_image_blend.exit [
    i32 18, label %bb.b
    i32 27, label %bb.w
    i32 15, label %rgb565_image_blend.exit.sink.split
    i32 17, label %bb.ar
    i32 16, label %bb.as
    i32 6, label %bb.bu
    i32 21, label %bb.cq
    i32 7, label %bb.dr
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !18
  %.fr202.i = freeze i8 %i.h                      ; 7 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !24   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %.preheader165.i

.preheader165.i:                                  ; preds = %bb.b
  %i.w = icmp sgt i32 %i.f, 0
  br i1 %i.w, label %.preheader164.lr.ph.i, label %rgb565_image_blend.exit

.preheader164.lr.ph.i:                            ; preds = %.preheader165.i
  %i.x = icmp sgt i32 %i.d, 0
  %i.y = zext i8 %.fr202.i to i16                 ; 2 uses
  %i.z = sext i32 %i.s to i64
  %i.aa = sext i32 %i.k to i64
  %i.ab = zext i32 %i.o to i64
  br i1 %i.x, label %.preheader164.preheader.i, label %rgb565_image_blend.exit

.preheader164.preheader.i:                        ; preds = %.preheader164.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %.preheader164.i

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp eq ptr %i.q, null                  ; 3 uses
  %i.ad = zext i8 %.fr202.i to i16                ; 2 uses
  %i.ae = icmp ugt i8 %.fr202.i, -4               ; 2 uses
  %or.cond.i = and i1 %i.ae, %i.ac
  br i1 %or.cond.i, label %.preheader154.i, label %bb.e

.preheader154.i:                                  ; preds = %bb.c
  %i.af = icmp sgt i32 %i.f, 0
  br i1 %i.af, label %.preheader.lr.ph.i, label %rgb565_image_blend.exit

.preheader.lr.ph.i:                               ; preds = %.preheader154.i
  %i.ag = icmp sgt i32 %i.d, 0
  %i.ah = sext i32 %i.k to i64
  %i.ai = zext i32 %i.o to i64
  br i1 %i.ag, label %.preheader.preheader.i, label %rgb565_image_blend.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count247.i = zext nneg i32 %i.d to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge198.i, %.preheader.preheader.i
  %.0201.i = phi i32 [ %i.ap, %._crit_edge198.i ], [ 0, %.preheader.preheader.i ]
  %.0135200.i = phi ptr [ %i.ao, %._crit_edge198.i ], [ %i.m, %.preheader.preheader.i ] ; 2 uses
  %.0140199.i = phi ptr [ %i.an, %._crit_edge198.i ], [ %i.i, %.preheader.preheader.i ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %indvars.iv242.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next243.i, %bb.d ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.0135200.i, i64 %indvars.iv242.i
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = tail call zeroext i8 @lv_color16_luminance(i16 %i.ak) #6
  %i.am = getelementptr inbounds nuw i8, ptr %.0140199.i, i64 %indvars.iv242.i
  store i8 %i.al, ptr %i.am, align 1, !tbaa !11
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next243.i, %wide.trip.count247.i
  br i1 %exitcond248.not.i, label %._crit_edge198.i, label %bb.d, !llvm.loop !48

._crit_edge198.i:                                 ; preds = %bb.d
  %i.an = getelementptr inbounds i8, ptr %.0140199.i, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %.0135200.i, i64 %i.ai
  %i.ap = add nuw nsw i32 %.0201.i, 1             ; 2 uses
  %exitcond249.not.i = icmp eq i32 %i.ap, %i.f
  br i1 %exitcond249.not.i, label %rgb565_image_blend.exit, label %.preheader.i, !llvm.loop !49

bb.e:                                             ; preds = %bb.c
  %i.aq = icmp ult i8 %.fr202.i, -3
  %or.cond5.i = and i1 %i.aq, %i.ac
  br i1 %or.cond5.i, label %.preheader156.i, label %bb.f

.preheader156.i:                                  ; preds = %bb.e
  %i.ar = icmp sgt i32 %i.f, 0
  br i1 %i.ar, label %.preheader155.lr.ph.i, label %rgb565_image_blend.exit

.preheader155.lr.ph.i:                            ; preds = %.preheader156.i
  %i.as = icmp sgt i32 %i.d, 0
  %i.at = xor i8 %.fr202.i, -1
  %i.au = zext i8 %i.at to i16
  %i.av = sext i32 %i.k to i64
  %i.aw = zext i32 %i.o to i64                    ; 2 uses
  br i1 %i.as, label %.preheader155.lr.ph.split.i, label %rgb565_image_blend.exit

.preheader155.lr.ph.split.i:                      ; preds = %.preheader155.lr.ph.i
  %i.ax = icmp eq i8 %.fr202.i, 0
  %wide.trip.count239.i = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %i.ax, label %.preheader155.us.i, label %.preheader155.i

.preheader155.us.i:                               ; preds = %.preheader155.lr.ph.split.i, %._crit_edge189.split.us.us.i
  %.1193.us.i = phi i32 [ %i.bc, %._crit_edge189.split.us.us.i ], [ 0, %.preheader155.lr.ph.split.i ]
  %.1136191.us.i = phi ptr [ %i.bb, %._crit_edge189.split.us.us.i ], [ %i.m, %.preheader155.lr.ph.split.i ] ; 2 uses
  br label %lv_color_8_8_mix.exit.us.us.i

lv_color_8_8_mix.exit.us.us.i:                    ; preds = %lv_color_8_8_mix.exit.us.us.i, %.preheader155.us.i
  %indvars.iv236.i = phi i64 [ %indvars.iv.next237.i, %lv_color_8_8_mix.exit.us.us.i ], [ 0, %.preheader155.us.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.1136191.us.i, i64 %indvars.iv236.i
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = tail call zeroext i8 @lv_color16_luminance(i16 %i.az) #6 ; 0 uses
  %indvars.iv.next237.i = add nuw nsw i64 %indvars.iv236.i, 1 ; 2 uses
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next237.i, %wide.trip.count239.i
  br i1 %exitcond240.not.i, label %._crit_edge189.split.us.us.i, label %lv_color_8_8_mix.exit.us.us.i, !llvm.loop !50

._crit_edge189.split.us.us.i:                     ; preds = %lv_color_8_8_mix.exit.us.us.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.1136191.us.i, i64 %i.aw
  %i.bc = add nuw nsw i32 %.1193.us.i, 1          ; 2 uses
  %exitcond241.not.i = icmp eq i32 %i.bc, %i.f
  br i1 %exitcond241.not.i, label %rgb565_image_blend.exit, label %.preheader155.us.i, !llvm.loop !51

.preheader155.i:                                  ; preds = %.preheader155.lr.ph.split.i, %._crit_edge189.split.i
  %.1193.i = phi i32 [ %i.br, %._crit_edge189.split.i ], [ 0, %.preheader155.lr.ph.split.i ]
  %.1136191.i = phi ptr [ %i.bq, %._crit_edge189.split.i ], [ %i.m, %.preheader155.lr.ph.split.i ] ; 2 uses
  %.1141190.i = phi ptr [ %i.bp, %._crit_edge189.split.i ], [ %i.i, %.preheader155.lr.ph.split.i ] ; 2 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.sink.split.i.i, %.preheader155.i
  %indvars.iv228.i = phi i64 [ 0, %.preheader155.i ], [ %indvars.iv.next229.i, %.sink.split.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.1136191.i, i64 %indvars.iv228.i
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = tail call zeroext i8 @lv_color16_luminance(i16 %i.be) #6
  %i.bg = getelementptr inbounds nuw i8, ptr %.1141190.i, i64 %indvars.iv228.i ; 2 uses
  %i.bh = zext i8 %i.bf to i16
  %i.bi = mul nuw i16 %i.bh, %i.ad
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bk = zext i8 %i.bj to i16
  %i.bl = mul nuw i16 %i.bk, %i.au
  %i.bm = add i16 %i.bl, %i.bi
  %i.bn = lshr i16 %i.bm, 8
  %i.bo = trunc nuw i16 %i.bn to i8
  store i8 %i.bo, ptr %i.bg, align 1, !tbaa !11
  %indvars.iv.next229.i = add nuw nsw i64 %indvars.iv228.i, 1 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next229.i, %wide.trip.count239.i
  br i1 %exitcond234.not.i, label %._crit_edge189.split.i, label %.sink.split.i.i, !llvm.loop !50

._crit_edge189.split.i:                           ; preds = %.sink.split.i.i
  %i.bp = getelementptr inbounds i8, ptr %.1141190.i, i64 %i.av
  %i.bq = getelementptr inbounds nuw i8, ptr %.1136191.i, i64 %i.aw
  %i.br = add nuw nsw i32 %.1193.i, 1             ; 2 uses
  %exitcond235.not.i = icmp eq i32 %i.br, %i.f
  br i1 %exitcond235.not.i, label %rgb565_image_blend.exit, label %.preheader155.i, !llvm.loop !51

bb.f:                                             ; preds = %bb.e
  %.not.i = xor i1 %i.ac, true
  %or.cond8.i = and i1 %i.ae, %.not.i
  %i.bs = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %or.cond8.i, label %.preheader159.i, label %.preheader162.i

.preheader162.i:                                  ; preds = %bb.f
  br i1 %i.bs, label %.preheader161.lr.ph.i, label %rgb565_image_blend.exit

.preheader161.lr.ph.i:                            ; preds = %.preheader162.i
  %i.bt = icmp sgt i32 %i.d, 0
  %i.bu = sext i32 %i.k to i64
  %i.bv = zext i32 %i.o to i64
  %i.bw = sext i32 %i.s to i64
end_hunk_0
