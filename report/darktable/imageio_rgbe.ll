Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_rgbe?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@RGBE_ReadPixels:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %rgbe2float.exit
  %.in = phi i32 [ %2, %.lr.ph ], [ %i.e, %rgbe2float.exit ] ; 2 uses
  %.068 = phi ptr [ %1, %.lr.ph ], [ %i.y, %rgbe2float.exit ] ; 3 uses
  %i.e = add nsw i32 %.in, -1
  %i.f = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #14
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.j) #13
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.l = load i8, ptr %i.c, align 1, !tbaa !12    ; 2 uses
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %rgbe2float.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -136
  %i.o = tail call reassoc nsz arcp contract afn float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.n) #14 ; 2 uses
  %i.p = load <2 x i8>, ptr %i.a, align 2, !tbaa !12
  %i.q = uitofp <2 x i8> %i.p to <2 x float>
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, %i.q
  %i.u = load i8, ptr %i.d, align 2, !tbaa !12
  %i.v = uitofp i8 %i.u to float
  %i.w = fmul reassoc nsz arcp contract afn float %i.o, %i.v
  br label %rgbe2float.exit

rgbe2float.exit:                                  ; preds = %bb.d, %bb.e
  %.sink10 = phi float [ %i.w, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.x = phi <2 x float> [ %i.t, %bb.e ], [ zeroinitializer, %bb.d ]
  store float %.sink10, ptr %i.k, align 4, !tbaa !13
  store <2 x float> %i.x, ptr %.068, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.068, i64 12
  %i.z = icmp samesign ugt i32 %.in, 1
  br i1 %i.z, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %rgbe2float.exit, %bb.a, %bb.c
  %.07 = phi i32 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %rgbe2float.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.07
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @RGBE_ReadPixels_RLE(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = add i32 %2, -32768
  %or.cond = icmp ult i32 %i.c, -32760
  br i1 %or.cond, label %bb.b, label %.preheader114

.preheader114:                                    ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph174, label %._crit_edge

.lr.ph174:                                        ; preds = %.preheader114
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  %i.h = shl nuw nsw i32 %2, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 8 uses
  %i.k = shl nuw nsw i32 %2, 1
  %i.l = mul nuw nsw i32 %2, 3
  %i.m = zext nneg i32 %2 to i64                  ; 6 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = zext nneg i32 %i.l to i64
  %.not263 = icmp eq i32 %2, 0
  %i.p = shl nuw nsw i64 %i.m, 1
  %i.q = mul nuw nsw i64 %i.m, 3
  %i.r = shl nuw nsw i64 %i.m, 2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %3, %2
  %i.t = tail call i32 @RGBE_ReadPixels(ptr noundef %0, ptr noundef %1, i32 noundef %i.s)
  br label %.critedge109

bb.c:                                             ; preds = %.lr.ph174, %.critedge._crit_edge
  %.086173 = phi ptr [ null, %.lr.ph174 ], [ %.187265, %.critedge._crit_edge ] ; 5 uses
  %.088172 = phi i32 [ %3, %.lr.ph174 ], [ %i.gc, %.critedge._crit_edge ] ; 3 uses
  %.093171 = phi ptr [ %1, %.lr.ph174 ], [ %i.gv, %.critedge._crit_edge ] ; 5 uses
  %i.u = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %.086173) #13
  %i.w = tail call ptr @__errno_location() #14
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = tail call ptr @strerror(i32 noundef %i.x) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.y) #13
  br label %.critedge109

bb.e:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.a, align 1, !tbaa !12    ; 2 uses
  %i.aa = icmp ne i8 %i.z, 2
  %i.ab = load i8, ptr %i.e, align 1
  %i.ac = icmp ne i8 %i.ab, 2
  %or.cond6 = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.f, align 1, !tbaa !12   ; 2 uses
  %.not = icmp sgt i8 %i.ad, -1
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.093171, i64 4
  %i.af = load i8, ptr %i.g, align 1, !tbaa !12   ; 2 uses
  %.not.i = icmp eq i8 %i.af, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -136
  %i.ai = tail call reassoc nsz arcp contract afn float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.ah) #14 ; 2 uses
  %i.aj = uitofp i8 %i.z to float
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ai, %i.aj
  store float %i.ak, ptr %.093171, align 4, !tbaa !13
  %i.al = load <2 x i8>, ptr %i.e, align 1, !tbaa !12
  %i.am = uitofp <2 x i8> %i.al to <2 x float>
  %i.an = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, %i.am
  br label %rgbe2float.exit

bb.i:                                             ; preds = %bb.g
  store float 0.000000e+00, ptr %.093171, align 4, !tbaa !13
  br label %rgbe2float.exit

rgbe2float.exit:                                  ; preds = %bb.h, %bb.i
  %i.aq = phi <2 x float> [ zeroinitializer, %bb.i ], [ %i.ap, %bb.h ]
  store <2 x float> %i.aq, ptr %i.ae, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.093171, i64 12
  tail call void @free(ptr noundef %.086173) #13
  %i.as = mul nuw nsw i32 %.088172, %2
  %i.at = add nsw i32 %i.as, -1
  %i.au = tail call i32 @RGBE_ReadPixels(ptr noundef %0, ptr noundef nonnull %i.ar, i32 noundef %i.at)
  br label %.critedge109

bb.j:                                             ; preds = %bb.f
  %i.av = zext nneg i8 %i.ad to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = load i8, ptr %i.g, align 1, !tbaa !12
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %.not101 = icmp eq i32 %i.az, %2
  br i1 %.not101, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef %.086173) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8) #13
  br label %.critedge109

bb.l:                                             ; preds = %bb.j
  %i.ba = icmp eq ptr %.086173, null
  br i1 %i.ba, label %bb.m, label %.preheader113.preheader

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.i) #16 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.n, label %.preheader113.preheader

.preheader113.preheader:                          ; preds = %bb.l, %bb.m
  %.187265 = phi ptr [ %i.bb, %bb.m ], [ %.086173, %bb.l ] ; 16 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.m ; 2 uses
  br i1 %.not263, label %.loopexit112, label %.lr.ph163

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9) #13
  br label %.critedge109

.loopexit112:                                     ; preds = %.loopexit, %.preheader113.preheader
  %.1.lcssa = phi ptr [ %.187265, %.preheader113.preheader ], [ %.3, %.loopexit ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.p ; 3 uses
  %i.bf = icmp ult ptr %.1.lcssa, %i.be
  br i1 %i.bf, label %.lr.ph163.1, label %.loopexit112.1

.lr.ph163.1:                                      ; preds = %.loopexit112
  %i.bg = ptrtoint ptr %i.be to i64
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.1, %.lr.ph163.1
  %.1162.1 = phi ptr [ %.1.lcssa, %.lr.ph163.1 ], [ %.3.1, %.loopexit.1 ] ; 6 uses
  %i.bh = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.loopexit215, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = icmp ugt i8 %i.bj, -128
  %i.bm = ptrtoint ptr %.1162.1 to i64
  %i.bn = sub i64 %i.bg, %i.bm                    ; 2 uses
  br i1 %i.bl, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp eq i8 %i.bj, 0
  %i.bp = zext i8 %i.bj to i64
  %i.bq = icmp slt i64 %i.bn, %i.bp
  %or.cond107.1 = or i1 %i.bo, %i.bq
  br i1 %or.cond107.1, label %.loopexit216, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %i.j, align 1, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.1162.1, i64 1 ; 3 uses
  store i8 %i.br, ptr %.1162.1, align 1, !tbaa !12
  %.not102.1 = icmp eq i8 %i.bj, 1
  br i1 %.not102.1, label %.loopexit.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = add nsw i32 %i.bk, -1
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = tail call i64 @fread(ptr noundef nonnull %i.bs, i64 noundef %i.bu, i64 noundef 1, ptr noundef %0)
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.loopexit217, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  br label %.loopexit.1

bb.u:                                             ; preds = %bb.p
  %i.by = add nsw i32 %i.bk, -128                 ; 4 uses
  %i.bz = zext nneg i32 %i.by to i64              ; 3 uses
  %i.ca = icmp slt i64 %i.bn, %i.bz
  br i1 %i.ca, label %.loopexit218, label %iter.check556

iter.check556:                                    ; preds = %bb.u
  %.pre247 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check542 = icmp ult i32 %i.by, 8
  br i1 %min.iters.check542, label %.lr.ph.1.preheader, label %vec.epilog.ph560

vec.epilog.ph560:                                 ; preds = %iter.check556
  %n.vec561 = and i64 %i.bz, 120                  ; 4 uses
  %i.cb = getelementptr i8, ptr %.1162.1, i64 %n.vec561 ; 2 uses
  %i.cc = trunc nuw nsw i64 %n.vec561 to i32
  %i.cd = sub nsw i32 %i.by, %i.cc
  %broadcast.splatinsert562 = insertelement <8 x i8> poison, i8 %.pre247, i64 0
  %broadcast.splat563 = shufflevector <8 x i8> %broadcast.splatinsert562, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body564

vec.epilog.vector.body564:                        ; preds = %vec.epilog.vector.body564, %vec.epilog.ph560
  %index565 = phi i64 [ 0, %vec.epilog.ph560 ], [ %index.next567, %vec.epilog.vector.body564 ] ; 2 uses
  %next.gep566 = getelementptr i8, ptr %.1162.1, i64 %index565
  store <8 x i8> %broadcast.splat563, ptr %next.gep566, align 1, !tbaa !12
  %index.next567 = add nuw i64 %index565, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next567, %n.vec561
  br i1 %i.ce, label %vec.epilog.middle.block568, label %vec.epilog.vector.body564, !llvm.loop !26

vec.epilog.middle.block568:                       ; preds = %vec.epilog.vector.body564
  %cmp.n569 = icmp eq i64 %n.vec561, %i.bz
  br i1 %cmp.n569, label %.loopexit.1, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %iter.check556, %vec.epilog.middle.block568
  %.2161.1.ph = phi ptr [ %.1162.1, %iter.check556 ], [ %i.cb, %vec.epilog.middle.block568 ]
  %.085160.1.ph = phi i32 [ %i.by, %iter.check556 ], [ %i.cd, %vec.epilog.middle.block568 ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %.lr.ph.1
  %.2161.1 = phi ptr [ %i.cg, %.lr.ph.1 ], [ %.2161.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %.085160.1 = phi i32 [ %i.cf, %.lr.ph.1 ], [ %.085160.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %i.cf = add nsw i32 %.085160.1, -1
  %i.cg = getelementptr inbounds nuw i8, ptr %.2161.1, i64 1 ; 2 uses
  store i8 %.pre247, ptr %.2161.1, align 1, !tbaa !12
  %i.ch = icmp samesign ugt i32 %.085160.1, 1
  br i1 %i.ch, label %.lr.ph.1, label %.loopexit.1, !llvm.loop !27

.loopexit.1:                                      ; preds = %.lr.ph.1, %vec.epilog.middle.block568, %bb.t, %bb.r
  %.3.1 = phi ptr [ %i.bs, %bb.r ], [ %i.bx, %bb.t ], [ %i.cb, %vec.epilog.middle.block568 ], [ %i.cg, %.lr.ph.1 ] ; 3 uses
  %i.ci = icmp ult ptr %.3.1, %i.be
  br i1 %i.ci, label %bb.o, label %.loopexit112.1

.loopexit112.1:                                   ; preds = %.loopexit.1, %.loopexit112
  %.1.lcssa.1 = phi ptr [ %.1.lcssa, %.loopexit112 ], [ %.3.1, %.loopexit.1 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.q ; 3 uses
  %i.ck = icmp ult ptr %.1.lcssa.1, %i.cj
  br i1 %i.ck, label %.lr.ph163.2, label %.loopexit112.2

.lr.ph163.2:                                      ; preds = %.loopexit112.1
  %i.cl = ptrtoint ptr %i.cj to i64
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.2, %.lr.ph163.2
  %.1162.2 = phi ptr [ %.1.lcssa.1, %.lr.ph163.2 ], [ %.3.2, %.loopexit.2 ] ; 6 uses
  %i.cm = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.loopexit215, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.cp = zext i8 %i.co to i32                    ; 2 uses
  %i.cq = icmp ugt i8 %i.co, -128
  %i.cr = ptrtoint ptr %.1162.2 to i64
  %i.cs = sub i64 %i.cl, %i.cr                    ; 2 uses
  br i1 %i.cq, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = icmp eq i8 %i.co, 0
  %i.cu = zext i8 %i.co to i64
  %i.cv = icmp slt i64 %i.cs, %i.cu
  %or.cond107.2 = or i1 %i.ct, %i.cv
  br i1 %or.cond107.2, label %.loopexit216, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = load i8, ptr %i.j, align 1, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %.1162.2, i64 1 ; 3 uses
  store i8 %i.cw, ptr %.1162.2, align 1, !tbaa !12
  %.not102.2 = icmp eq i8 %i.co, 1
  br i1 %.not102.2, label %.loopexit.2, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = add nsw i32 %i.cp, -1
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = tail call i64 @fread(ptr noundef nonnull %i.cx, i64 noundef %i.cz, i64 noundef 1, ptr noundef %0)
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.loopexit217, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  br label %.loopexit.2

bb.ab:                                            ; preds = %bb.w
  %i.dd = add nsw i32 %i.cp, -128                 ; 4 uses
  %i.de = zext nneg i32 %i.dd to i64              ; 3 uses
  %i.df = icmp slt i64 %i.cs, %i.de
  br i1 %i.df, label %.loopexit218, label %iter.check526

iter.check526:                                    ; preds = %bb.ab
  %.pre248 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check512 = icmp ult i32 %i.dd, 8
  br i1 %min.iters.check512, label %.lr.ph.2.preheader, label %vec.epilog.ph530

vec.epilog.ph530:                                 ; preds = %iter.check526
  %n.vec531 = and i64 %i.de, 120                  ; 4 uses
  %i.dg = getelementptr i8, ptr %.1162.2, i64 %n.vec531 ; 2 uses
  %i.dh = trunc nuw nsw i64 %n.vec531 to i32
  %i.di = sub nsw i32 %i.dd, %i.dh
  %broadcast.splatinsert532 = insertelement <8 x i8> poison, i8 %.pre248, i64 0
  %broadcast.splat533 = shufflevector <8 x i8> %broadcast.splatinsert532, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body534

vec.epilog.vector.body534:                        ; preds = %vec.epilog.vector.body534, %vec.epilog.ph530
  %index535 = phi i64 [ 0, %vec.epilog.ph530 ], [ %index.next537, %vec.epilog.vector.body534 ] ; 2 uses
  %next.gep536 = getelementptr i8, ptr %.1162.2, i64 %index535
  store <8 x i8> %broadcast.splat533, ptr %next.gep536, align 1, !tbaa !12
  %index.next537 = add nuw i64 %index535, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next537, %n.vec531
  br i1 %i.dj, label %vec.epilog.middle.block538, label %vec.epilog.vector.body534, !llvm.loop !28

vec.epilog.middle.block538:                       ; preds = %vec.epilog.vector.body534
  %cmp.n539 = icmp eq i64 %n.vec531, %i.de
  br i1 %cmp.n539, label %.loopexit.2, label %.lr.ph.2.preheader

.lr.ph.2.preheader:                               ; preds = %iter.check526, %vec.epilog.middle.block538
  %.2161.2.ph = phi ptr [ %.1162.2, %iter.check526 ], [ %i.dg, %vec.epilog.middle.block538 ]
  %.085160.2.ph = phi i32 [ %i.dd, %iter.check526 ], [ %i.di, %vec.epilog.middle.block538 ]
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2.preheader, %.lr.ph.2
  %.2161.2 = phi ptr [ %i.dl, %.lr.ph.2 ], [ %.2161.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %.085160.2 = phi i32 [ %i.dk, %.lr.ph.2 ], [ %.085160.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %i.dk = add nsw i32 %.085160.2, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %.2161.2, i64 1 ; 2 uses
  store i8 %.pre248, ptr %.2161.2, align 1, !tbaa !12
  %i.dm = icmp samesign ugt i32 %.085160.2, 1
  br i1 %i.dm, label %.lr.ph.2, label %.loopexit.2, !llvm.loop !29

.loopexit.2:                                      ; preds = %.lr.ph.2, %vec.epilog.middle.block538, %bb.aa, %bb.y
  %.3.2 = phi ptr [ %i.cx, %bb.y ], [ %i.dc, %bb.aa ], [ %i.dg, %vec.epilog.middle.block538 ], [ %i.dl, %.lr.ph.2 ] ; 3 uses
  %i.dn = icmp ult ptr %.3.2, %i.cj
  br i1 %i.dn, label %bb.v, label %.loopexit112.2

.loopexit112.2:                                   ; preds = %.loopexit.2, %.loopexit112.1
  %.1.lcssa.2 = phi ptr [ %.1.lcssa.1, %.loopexit112.1 ], [ %.3.2, %.loopexit.2 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.r ; 3 uses
  %i.dp = icmp ult ptr %.1.lcssa.2, %i.do
  br i1 %i.dp, label %.lr.ph163.3, label %.lr.ph169.preheader

.lr.ph163.3:                                      ; preds = %.loopexit112.2
  %i.dq = ptrtoint ptr %i.do to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.3, %.lr.ph163.3
  %.1162.3 = phi ptr [ %.1.lcssa.2, %.lr.ph163.3 ], [ %.3.3, %.loopexit.3 ] ; 6 uses
  %i.dr = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.loopexit215, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.du = zext i8 %i.dt to i32                    ; 2 uses
  %i.dv = icmp ugt i8 %i.dt, -128
  %i.dw = ptrtoint ptr %.1162.3 to i64
  %i.dx = sub i64 %i.dq, %i.dw                    ; 2 uses
  br i1 %i.dv, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = icmp eq i8 %i.dt, 0
  %i.dz = zext i8 %i.dt to i64
  %i.ea = icmp slt i64 %i.dx, %i.dz
  %or.cond107.3 = or i1 %i.dy, %i.ea
  br i1 %or.cond107.3, label %.loopexit216, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = load i8, ptr %i.j, align 1, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %.1162.3, i64 1 ; 3 uses
  store i8 %i.eb, ptr %.1162.3, align 1, !tbaa !12
  %.not102.3 = icmp eq i8 %i.dt, 1
  br i1 %.not102.3, label %.loopexit.3, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = add nsw i32 %i.du, -1
  %i.ee = zext nneg i32 %i.ed to i64              ; 2 uses
  %i.ef = tail call i64 @fread(ptr noundef nonnull %i.ec, i64 noundef %i.ee, i64 noundef 1, ptr noundef %0)
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.loopexit217, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  br label %.loopexit.3

bb.ai:                                            ; preds = %bb.ad
  %i.ei = add nsw i32 %i.du, -128                 ; 4 uses
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = icmp slt i64 %i.dx, %i.ej
  br i1 %i.ek, label %.loopexit218, label %iter.check

iter.check:                                       ; preds = %bb.ai
  %.pre249 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ei, 8
  br i1 %min.iters.check, label %.lr.ph.3.preheader, label %vec.epilog.ph.a

vec.epilog.ph.a:                                  ; preds = %iter.check
  %n.vec503 = and i64 %i.ej, 120                  ; 4 uses
  %i.el = getelementptr i8, ptr %.1162.3, i64 %n.vec503 ; 2 uses
  %i.em = trunc nuw nsw i64 %n.vec503 to i32
  %i.en = sub nsw i32 %i.ei, %i.em
  %broadcast.splatinsert504 = insertelement <8 x i8> poison, i8 %.pre249, i64 0
  %broadcast.splat505 = shufflevector <8 x i8> %broadcast.splatinsert504, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph.a
  %index506 = phi i64 [ 0, %vec.epilog.ph.a ], [ %index.next508, %vec.epilog.vector.body ] ; 2 uses
  %next.gep507 = getelementptr i8, ptr %.1162.3, i64 %index506
  store <8 x i8> %broadcast.splat505, ptr %next.gep507, align 1, !tbaa !12
  %index.next508 = add nuw i64 %index506, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n509 = icmp eq i64 %n.vec503, %i.ej
  br i1 %cmp.n509, label %.loopexit.3, label %.lr.ph.3.preheader

.lr.ph.3.preheader:                               ; preds = %iter.check, %vec.epilog.middle.block
  %.2161.3.ph = phi ptr [ %.1162.3, %iter.check ], [ %i.el, %vec.epilog.middle.block ]
  %.085160.3.ph = phi i32 [ %i.ei, %iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader, %.lr.ph.3
  %.2161.3 = phi ptr [ %i.eq, %.lr.ph.3 ], [ %.2161.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %.085160.3 = phi i32 [ %i.ep, %.lr.ph.3 ], [ %.085160.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %i.ep = add nsw i32 %.085160.3, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %.2161.3, i64 1 ; 2 uses
  store i8 %.pre249, ptr %.2161.3, align 1, !tbaa !12
  %i.er = icmp samesign ugt i32 %.085160.3, 1
  br i1 %i.er, label %.lr.ph.3, label %.loopexit.3, !llvm.loop !31

.loopexit.3:                                      ; preds = %.lr.ph.3, %vec.epilog.middle.block, %bb.ah, %bb.af
  %.3.3 = phi ptr [ %i.ec, %bb.af ], [ %i.eh, %bb.ah ], [ %i.el, %vec.epilog.middle.block ], [ %i.eq, %.lr.ph.3 ] ; 2 uses
  %i.es = icmp ult ptr %.3.3, %i.do
  br i1 %i.es, label %bb.ac, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %.loopexit.3, %.loopexit112.2
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.m
  %invariant.gep382 = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.n
  %invariant.gep384 = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.o
  br label %.lr.ph169

.lr.ph163:                                        ; preds = %.preheader113.preheader
  %i.et = ptrtoint ptr %i.bd to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph163, %.loopexit
  %.1162 = phi ptr [ %.187265, %.lr.ph163 ], [ %.3, %.loopexit ] ; 6 uses
  %i.eu = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.loopexit215, label %bb.ak

.loopexit215:                                     ; preds = %bb.aj, %bb.o, %bb.v, %bb.ac
  tail call void @free(ptr noundef nonnull %.187265) #13
  %i.ew = tail call ptr @__errno_location() #14
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !14
  %i.ey = tail call ptr @strerror(i32 noundef %i.ex) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.ey) #13
  br label %.critedge109

bb.ak:                                            ; preds = %bb.aj
  %i.ez = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.fa = zext i8 %i.ez to i32                    ; 2 uses
  %i.fb = icmp ugt i8 %i.ez, -128
  %i.fc = ptrtoint ptr %.1162 to i64
  %i.fd = sub i64 %i.et, %i.fc                    ; 2 uses
  br i1 %i.fb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fe = add nsw i32 %i.fa, -128                 ; 4 uses
  %i.ff = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fg = icmp slt i64 %i.fd, %i.ff
  br i1 %i.fg, label %.loopexit218, label %iter.check586

iter.check586:                                    ; preds = %bb.al
  %.pre = load i8, ptr %i.j, align 1, !tbaa !12   ; 2 uses
  %min.iters.check572 = icmp ult i32 %i.fe, 8
  br i1 %min.iters.check572, label %.lr.ph.preheader, label %vec.epilog.ph590

vec.epilog.ph590:                                 ; preds = %iter.check586
  %n.vec591 = and i64 %i.ff, 120                  ; 4 uses
  %i.fh = getelementptr i8, ptr %.1162, i64 %n.vec591 ; 2 uses
  %i.fi = trunc nuw nsw i64 %n.vec591 to i32
  %i.fj = sub nsw i32 %i.fe, %i.fi
  %broadcast.splatinsert592 = insertelement <8 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat593 = shufflevector <8 x i8> %broadcast.splatinsert592, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body594

vec.epilog.vector.body594:                        ; preds = %vec.epilog.vector.body594, %vec.epilog.ph590
  %index595 = phi i64 [ 0, %vec.epilog.ph590 ], [ %index.next597, %vec.epilog.vector.body594 ] ; 2 uses
  %next.gep596 = getelementptr i8, ptr %.1162, i64 %index595
  store <8 x i8> %broadcast.splat593, ptr %next.gep596, align 1, !tbaa !12
  %index.next597 = add nuw i64 %index595, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next597, %n.vec591
  br i1 %i.fk, label %vec.epilog.middle.block598, label %vec.epilog.vector.body594, !llvm.loop !32

vec.epilog.middle.block598:                       ; preds = %vec.epilog.vector.body594
  %cmp.n599 = icmp eq i64 %n.vec591, %i.ff
  br i1 %cmp.n599, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check586, %vec.epilog.middle.block598
  %.2161.ph = phi ptr [ %.1162, %iter.check586 ], [ %i.fh, %vec.epilog.middle.block598 ]
  %.085160.ph = phi i32 [ %i.fe, %iter.check586 ], [ %i.fj, %vec.epilog.middle.block598 ]
  br label %.lr.ph

.loopexit218:                                     ; preds = %bb.al, %bb.u, %bb.ab, %bb.ai
  tail call void @free(ptr noundef nonnull %.187265) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #13
  br label %.critedge109

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.2161 = phi ptr [ %i.fm, %.lr.ph ], [ %.2161.ph, %.lr.ph.preheader ] ; 2 uses
  %.085160 = phi i32 [ %i.fl, %.lr.ph ], [ %.085160.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fl = add nsw i32 %.085160, -1
  %i.fm = getelementptr inbounds nuw i8, ptr %.2161, i64 1 ; 2 uses
  store i8 %.pre, ptr %.2161, align 1, !tbaa !12
  %i.fn = icmp samesign ugt i32 %.085160, 1
  br i1 %i.fn, label %.lr.ph, label %.loopexit, !llvm.loop !33

bb.am:                                            ; preds = %bb.ak
  %i.fo = icmp eq i8 %i.ez, 0
  %i.fp = zext i8 %i.ez to i64
  %i.fq = icmp slt i64 %i.fd, %i.fp
  %or.cond107 = or i1 %i.fo, %i.fq
  br i1 %or.cond107, label %.loopexit216, label %bb.an

.loopexit216:                                     ; preds = %bb.am, %bb.q, %bb.x, %bb.ae
  tail call void @free(ptr noundef nonnull %.187265) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #13
  br label %.critedge109

bb.an:                                            ; preds = %bb.am
  %i.fr = load i8, ptr %i.j, align 1, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.1162, i64 1 ; 3 uses
  store i8 %i.fr, ptr %.1162, align 1, !tbaa !12
  %.not102 = icmp eq i8 %i.ez, 1
  br i1 %.not102, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ft = add nsw i32 %i.fa, -1
  %i.fu = zext nneg i32 %i.ft to i64              ; 2 uses
  %i.fv = tail call i64 @fread(ptr noundef nonnull %i.fs, i64 noundef %i.fu, i64 noundef 1, ptr noundef %0)
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %.loopexit217, label %bb.ap

.loopexit217:                                     ; preds = %bb.ao, %bb.s, %bb.z, %bb.ag
  tail call void @free(ptr noundef nonnull %.187265) #13
  %i.fx = tail call ptr @__errno_location() #14
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !14
  %i.fz = tail call ptr @strerror(i32 noundef %i.fy) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.fz) #13
  br label %.critedge109

bb.ap:                                            ; preds = %bb.ao
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fu
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %vec.epilog.middle.block598, %bb.an, %bb.ap
  %.3 = phi ptr [ %i.fs, %bb.an ], [ %i.ga, %bb.ap ], [ %i.fh, %vec.epilog.middle.block598 ], [ %i.fm, %.lr.ph ] ; 3 uses
  %i.gb = icmp ult ptr %.3, %i.bd
  br i1 %i.gb, label %bb.aj, label %.loopexit112

.critedge._crit_edge:                             ; preds = %rgbe2float.exit111
  %i.gc = add nsw i32 %.088172, -1
  %i.gd = icmp sgt i32 %.088172, 1
  br i1 %i.gd, label %bb.c, label %._crit_edge

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %rgbe2float.exit111
  %indvars.iv = phi i64 [ 0, %.lr.ph169.preheader ], [ %indvars.iv.next, %rgbe2float.exit111 ] ; 5 uses
  %.194167 = phi ptr [ %.093171, %.lr.ph169.preheader ], [ %i.gv, %rgbe2float.exit111 ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.187265, i64 %indvars.iv
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !12  ; 2 uses
  store i8 %i.gf, ptr %i.a, align 1, !tbaa !12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.gg = load i8, ptr %gep, align 1, !tbaa !12
  store i8 %i.gg, ptr %i.e, align 1, !tbaa !12
  %gep383 = getelementptr inbounds nuw i8, ptr %invariant.gep382, i64 %indvars.iv
  %i.gh = load i8, ptr %gep383, align 1, !tbaa !12
  store i8 %i.gh, ptr %i.f, align 1, !tbaa !12
  %gep385 = getelementptr inbounds nuw i8, ptr %invariant.gep384, i64 %indvars.iv
  %i.gi = load i8, ptr %gep385, align 1, !tbaa !12 ; 3 uses
  store i8 %i.gi, ptr %i.g, align 1, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %.194167, i64 4
  %.not.i110 = icmp eq i8 %i.gi, 0
  br i1 %.not.i110, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph169
  %i.gk = zext i8 %i.gi to i32
  %i.gl = add nsw i32 %i.gk, -136
  %i.gm = tail call reassoc nsz arcp contract afn float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.gl) #14 ; 2 uses
  %i.gn = uitofp i8 %i.gf to float
  %i.go = fmul reassoc nsz arcp contract afn float %i.gm, %i.gn
  store float %i.go, ptr %.194167, align 4, !tbaa !13
  %i.gp = load <2 x i8>, ptr %i.e, align 1, !tbaa !12
  %i.gq = uitofp <2 x i8> %i.gp to <2 x float>
  %i.gr = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fmul reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gq
  br label %rgbe2float.exit111

bb.ar:                                            ; preds = %.lr.ph169
  store float 0.000000e+00, ptr %.194167, align 4, !tbaa !13
  br label %rgbe2float.exit111

rgbe2float.exit111:                               ; preds = %bb.aq, %bb.ar
  %i.gu = phi <2 x float> [ zeroinitializer, %bb.ar ], [ %i.gt, %bb.aq ]
  store <2 x float> %i.gu, ptr %i.gj, align 4, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %.194167, i64 12 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.lr.ph169

._crit_edge:                                      ; preds = %.critedge._crit_edge, %.preheader114
  %.086.lcssa = phi ptr [ null, %.preheader114 ], [ %.187265, %.critedge._crit_edge ]
  tail call void @free(ptr noundef %.086.lcssa) #13
  br label %.critedge109

.critedge109:                                     ; preds = %.loopexit215, %.loopexit218, %.loopexit216, %.loopexit217, %._crit_edge, %bb.n, %bb.k, %rgbe2float.exit, %bb.d, %bb.b
  %.292 = phi i32 [ %i.t, %bb.b ], [ -1, %bb.d ], [ %i.au, %rgbe2float.exit ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %.loopexit215 ], [ 0, %._crit_edge ], [ -1, %.loopexit217 ], [ -1, %.loopexit216 ], [ -1, %.loopexit218 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.292
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 9) i32 @dt_imageio_open_rgbe(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.rgbe_header_info, align 4   ; 11 uses
  %i.a = alloca [3 x [3 x float]], align 16       ; 5 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.11) ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  %i.e = call i32 @RGBE_ReadHeader(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %3)
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 4, !tbaa !49
  %i.h = sext i32 %i.g to i64
  %i.i = load i32, ptr %i.d, align 8, !tbaa !50
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, %i.h                   ; 6 uses
  %i.l = mul i64 %i.k, 12
  %i.m = call ptr @dt_alloc_aligned(i64 noundef %i.l) #13 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.c, align 4, !tbaa !49
  %i.p = load i32, ptr %i.d, align 8, !tbaa !50
  %i.q = call i32 @RGBE_ReadPixels_RLE(ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, i32 noundef %i.o, i32 noundef %i.p)
  %.not60 = icmp eq i32 %i.q, 0
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.m) #13
  %i.r = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store i32 4, ptr %i.t, align 16, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store i32 1, ptr %i.u, align 4, !tbaa !52
  %i.v = call ptr @dt_mipmap_cache_alloc(ptr noundef %2, ptr noundef nonnull %0) #13 ; 4 uses
  %.not61 = icmp eq ptr %i.v, null
  br i1 %.not61, label %bb.i, label %.preheader77

.preheader77:                                     ; preds = %bb.h
  %.not82 = icmp eq i64 %i.k, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader77
  %xtraiter = and i64 %i.k, 1
  %i.w = icmp eq i64 %i.k, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.k, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05379.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.du, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod93)
  %.idx62.epil = mul i64 %.05379.epil.init, 12
  %i.x = getelementptr i8, ptr %i.m, i64 %.idx62.epil ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !13
  %i.z = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float 1.000000e+04)
  %i.aa = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.z, float 0.000000e+00)
  %.sroa.087.0.vec.insert.epil = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aa, i64 0
  %i.ab = getelementptr i8, ptr %i.x, i64 4
  %i.ac = load <2 x float>, ptr %i.ab, align 4, !tbaa !13
  %i.ad = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ac, <2 x float> splat (float 1.000000e+04))
  %i.ae = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer)
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.087.8.vec.insert92.epil = shufflevector <4 x float> %.sroa.087.0.vec.insert.epil, <4 x float> %i.af, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %.idx.epil = shl i64 %.05379.epil.init, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.epil
  store <4 x float> %.sroa.087.8.vec.insert92.epil, ptr %i.ag, align 16, !tbaa !12, !alias.scope !53, !nontemporal !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader77
  call void @free(ptr noundef nonnull %i.m) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.val = load float, ptr %i.ah, align 4, !tbaa !13 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val69 = load float, ptr %i.ao, align 4, !tbaa !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.val64 = load float, ptr %i.ai, align 4, !tbaa !13
  %i.ap = load <2 x float>, ptr %i.al, align 4, !tbaa !13 ; 3 uses
  %i.aq = load <4 x float>, ptr %i.am, align 4, !tbaa !13 ; 5 uses
  %.val68 = load float, ptr %i.ak, align 4, !tbaa !13 ; 2 uses
  %.val67 = load float, ptr %i.an, align 4, !tbaa !13
  %.val66 = load float, ptr %i.aj, align 4, !tbaa !13 ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn float %.val68, %.val69
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.aq, <3 x i32> <i32 0, i32 4, i32 6>
  %i.au = shufflevector <4 x float> %i.aq, <4 x float> %i.as, <3 x i32> <i32 2, i32 4, i32 0> ; 4 uses
  %i.av = fsub reassoc nsz arcp contract afn <3 x float> %i.at, %i.au ; 4 uses
  %i.aw = extractelement <3 x float> %i.av, i64 2
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %.val
  %i.ay = extractelement <3 x float> %i.av, i64 1
  %i.az = fmul reassoc nsz arcp contract afn float %.val66, %i.ay
  %i.ba = fadd reassoc nsz arcp contract afn float %i.ax, %i.az
  %i.bb = fdiv reassoc nsz arcp contract afn float %.val68, %.val69 ; 2 uses
  %i.bc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ar
  %i.bd = extractelement <3 x float> %i.av, i64 0
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %.val64
  %i.bf = fdiv reassoc nsz arcp contract afn float %i.bc, %.val69
  %i.bg = fadd reassoc nsz arcp contract afn float %i.ba, %i.be
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, %i.bb
  %i.bi = fadd reassoc nsz arcp contract afn <3 x float> %i.au, splat (float -1.000000e+00)
  %i.bj = insertelement <3 x float> poison, float %i.bh, i64 0
  %i.bk = shufflevector <3 x float> %i.bj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <3 x float> %i.bk, %i.au
  %i.bm = fadd reassoc nsz arcp contract afn <3 x float> %i.bi, %i.bl ; 2 uses
  %i.bn = insertelement <3 x float> poison, float %i.bb, i64 0
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bp = fmul reassoc nsz arcp contract afn <3 x float> %i.bo, %i.av
  %i.bq = insertelement <3 x float> poison, float %.val, i64 0
  %i.br = shufflevector <2 x float> %i.ap, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.bs = shufflevector <3 x float> %i.bq, <3 x float> %i.br, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison> ; 3 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.aq, <3 x i32> <i32 0, i32 1, i32 5> ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn <3 x float> %i.bm, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn <3 x float> %i.bu, %i.bp
  %i.bw = shufflevector <4 x float> %i.bs, <4 x float> %i.aq, <3 x i32> <i32 5, i32 0, i32 1>
  %i.bx = shufflevector <3 x float> %i.bm, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.by = fmul reassoc nsz arcp contract afn <3 x float> %i.bw, %i.bx
  %i.bz = fsub reassoc nsz arcp contract afn <3 x float> %i.bv, %i.by
  %i.ca = insertelement <3 x float> poison, float %i.bg, i64 0
  %i.cb = shufflevector <3 x float> %i.ca, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cc = fdiv reassoc nsz arcp contract afn <3 x float> %i.bz, %i.cb ; 2 uses
  %i.cd = shufflevector <3 x float> %i.cc, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.ce = shufflevector <4 x float> %i.bs, <4 x float> %i.aq, <2 x i32> <i32 0, i32 4>
  %i.cf = fadd reassoc nsz arcp contract afn <2 x float> %i.ap, %i.ce
  %i.cg = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.cf
  %i.ch = shufflevector <3 x float> %i.bt, <3 x float> %i.au, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 3, i32 poison, i32 poison>
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <8 x float> %i.ch, <8 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cj
  %i.cl = fadd reassoc nsz arcp contract afn float %.val66, %.val67
  %i.cm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cl
  %i.cn = extractelement <3 x float> %i.cc, i64 1
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cm
  store <8 x float> %i.ck, ptr %i.a, align 16, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %i.co, ptr %i.cp, align 16, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.cr = call i32 @mat3inv(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 2, ptr %i.cs, align 16, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i32 0, ptr %i.ct, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !57
  %i.cw = and i32 %i.cv, -131297
  %i.cx = or disjoint i32 %i.cw, 128
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 6, ptr %i.cy, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05379 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.du, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.idx62 = mul i64 %.05379, 12
  %i.cz = getelementptr i8, ptr %i.m, i64 %.idx62 ; 2 uses
  %i.da = load float, ptr %i.cz, align 8, !tbaa !13
  %i.db = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.da, float 1.000000e+04)
  %i.dc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.db, float 0.000000e+00)
  %.sroa.087.0.vec.insert = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dc, i64 0
  %i.dd = getelementptr i8, ptr %i.cz, i64 4
  %i.de = load <2 x float>, ptr %i.dd, align 4, !tbaa !13
  %i.df = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.de, <2 x float> splat (float 1.000000e+04))
  %i.dg = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer)
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.087.8.vec.insert92 = shufflevector <4 x float> %.sroa.087.0.vec.insert, <4 x float> %i.dh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %.idx = shl i64 %.05379, 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  store <4 x float> %.sroa.087.8.vec.insert92, ptr %i.di, align 16, !tbaa !12, !alias.scope !53, !nontemporal !54
  %i.dj = or disjoint i64 %.05379, 1              ; 2 uses
  %.idx62.1 = mul i64 %i.dj, 12
  %i.dk = getelementptr i8, ptr %i.m, i64 %.idx62.1 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !13
  %i.dm = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dl, float 1.000000e+04)
  %i.dn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float 0.000000e+00)
  %.sroa.087.0.vec.insert.1 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dn, i64 0
  %i.do = getelementptr i8, ptr %i.dk, i64 4
  %i.dp = load <2 x float>, ptr %i.do, align 8, !tbaa !13
  %i.dq = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dp, <2 x float> splat (float 1.000000e+04))
  %i.dr = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dq, <2 x float> zeroinitializer)
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.087.8.vec.insert92.1 = shufflevector <4 x float> %.sroa.087.0.vec.insert.1, <4 x float> %i.ds, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %.idx.1 = shl i64 %i.dj, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.1
  store <4 x float> %.sroa.087.8.vec.insert92.1, ptr %i.dt, align 16, !tbaa !12, !alias.scope !53, !nontemporal !54
  %i.du = add nuw i64 %.05379, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %._crit_edge, %bb.c
  %.2 = phi i32 [ 2, %bb.c ], [ 6, %bb.g ], [ 2, %bb.e ], [ 0, %._crit_edge ], [ 8, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.3 = phi i32 [ %.2, %bb.i ], [ 1, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @dt_mipmap_cache_alloc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

declare i32 @mat3inv(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #11

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"", !8, i64 0, !7, i64 4, !11, i64 20, !11, i64 24, !7, i64 28}
!19 = !{!18, !8, i64 0}
!20 = !{!"p1 short", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!16, !16, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!18, !11, i64 20}
!25 = !{!18, !11, i64 24}
!26 = distinct !{!26, !34, !35}
!27 = distinct !{!27, !35, !34}
!28 = distinct !{!28, !34, !35}
!29 = distinct !{!29, !35, !34}
!30 = distinct !{!30, !34, !35}
!31 = distinct !{!31, !35, !34}
!32 = distinct !{!32, !34, !35}
!33 = distinct !{!33, !35, !34}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !"copy_pixel_nontemporal"}
!37 = distinct !{!37, !36, !"copy_pixel_nontemporal: argument 0"}
!38 = !{!"long", !7, i64 0}
!39 = !{!"", !16, i64 0, !16, i64 2}
!40 = !{!"", !8, i64 0, !7, i64 16}
!41 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !39, i64 48, !40, i64 64, !7, i64 96, !8, i64 112}
!42 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!43 = !{!"double", !7, i64 0}
!44 = !{!"dt_image_geoloc_t", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!46 = !{!"p1 _ZTS6_GList", !15, i64 0}
!47 = !{!"p1 _ZTS16dt_cache_entry_t", !15, i64 0}
!48 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !38, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !8, i64 1480, !41, i64 1488, !7, i64 1616, !17, i64 1656, !8, i64 1664, !8, i64 1668, !42, i64 1672, !44, i64 1680, !45, i64 1704, !16, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !46, i64 1856, !47, i64 1864, !8, i64 1872, !8, i64 1876}
!49 = !{!48, !8, i64 1380}
!50 = !{!48, !8, i64 1384}
!51 = !{!48, !8, i64 1488}
!52 = !{!48, !8, i64 1492}
!53 = !{!37}
!54 = !{i32 1}
!55 = !{!48, !8, i64 1600}
!56 = !{!48, !8, i64 1496}
!57 = !{!48, !8, i64 1428}
!58 = !{!48, !8, i64 1480}
end_hunk_0
