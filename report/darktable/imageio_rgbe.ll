Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_rgbe?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@RGBE_ReadHeader:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.iz = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.ix, ptr noundef nonnull %i.d) #13
  %i.ja = fptrunc reassoc nsz arcp contract afn double %i.iz to float
  %i.jb = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.jc = icmp eq ptr %i.ix, %i.jb
  br i1 %i.jc, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jd = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.jb, ptr noundef nonnull %i.d) #13
  %i.je = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.jf = icmp eq ptr %i.jb, %i.je
  br i1 %i.jf, label %.loopexit, label %.critedge129

.critedge129:                                     ; preds = %bb.be
  %i.jg = fptrunc reassoc nsz arcp contract afn double %i.jd to float
  store float %i.ic, ptr %i.fo, align 4
  store float %i.ig, ptr %.sroa.4.0..sroa_idx, align 4
  store float %i.ik, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.io, ptr %.sroa.6.0..sroa_idx, align 4
  store float %i.is, ptr %.sroa.7.0..sroa_idx, align 4
  store float %i.iw, ptr %.sroa.8.0..sroa_idx, align 4
  store float %i.ja, ptr %.sroa.9.0..sroa_idx, align 4
  store float %i.jg, ptr %.sroa.10.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %.critedge129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.critedge127

.critedge127:                                     ; preds = %bb.an, %.critedge123, %.critedge125, %bb.am, %bb.ar, %bb.aw, %.loopexit, %bb.av
  %.194 = phi i32 [ 1, %bb.am ], [ %.093, %bb.ar ], [ %.093, %bb.av ], [ %.093, %.loopexit ], [ %.093, %bb.aw ], [ %.093, %.critedge125 ], [ %.093, %.critedge123 ], [ %.093, %bb.an ]
  %i.jh = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef %0)
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %.split140.us, label %.critedge.split

.split140.us:                                     ; preds = %.critedge127.us, %.critedge127
  %i.jj = tail call ptr @__errno_location() #14
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !14
  %i.jl = call ptr @strerror(i32 noundef %i.jk) #13
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.jl) #13
  br label %bb.bk

.split.us:                                        ; preds = %.critedge.split.us, %.critedge.split.us, %.critedge.split, %.critedge.split
  %.us-phi = phi i32 [ %.093, %.critedge.split ], [ %.093, %.critedge.split ], [ %.093.us, %.critedge.split.us ], [ %.093.us, %.critedge.split.us ]
  %.not118 = icmp eq i32 %.us-phi, 0
  br i1 %.not118, label %bb.bf, label %.preheader

bb.bf:                                            ; preds = %.split.us
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4) #13
  br label %bb.bk

.preheader:                                       ; preds = %.split.us, %bb.bg
  %lhsv = load i16, ptr %i.a, align 16
  %.not120 = icmp eq i16 %lhsv, 10
  br i1 %.not120, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.preheader
  %i.jm = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef %0)
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.bh, label %.preheader

bb.bh:                                            ; preds = %bb.bg
  %i.jo = tail call ptr @__errno_location() #14
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !14
  %i.jq = call ptr @strerror(i32 noundef %i.jp) #13
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.jq) #13
  br label %bb.bk

bb.bi:                                            ; preds = %.preheader
  %i.jr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, ptr noundef %2, ptr noundef %1) #13
  %i.js = icmp slt i32 %i.jr, 2
  br i1 %i.js, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7) #13
  br label %bb.bk

bb.bk:                                            ; preds = %bb.al, %.split140.us, %bb.bf, %bb.bh, %bb.bj, %bb.bi, %bb.d
  %.2 = phi i32 [ -1, %bb.d ], [ -1, %bb.al ], [ -1, %bb.bh ], [ -1, %bb.bj ], [ -1, %.split140.us ], [ -1, %bb.bf ], [ 0, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare double @g_ascii_strtod(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @RGBE_ReadPixels(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3
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
  %.088172 = phi i32 [ %3, %.lr.ph174 ], [ %i.gb, %.critedge._crit_edge ] ; 3 uses
  %.093171 = phi ptr [ %1, %.lr.ph174 ], [ %i.gu, %.critedge._crit_edge ] ; 5 uses
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
  %4 = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.m ; 2 uses
  br i1 %.not263, label %.loopexit112, label %.lr.ph163

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9) #13
  br label %.critedge109

.loopexit112:                                     ; preds = %.loopexit, %.preheader113.preheader
  %.1.lcssa = phi ptr [ %.187265, %.preheader113.preheader ], [ %.3, %.loopexit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.p ; 3 uses
  %i.be = icmp ult ptr %.1.lcssa, %i.bd
  br i1 %i.be, label %.lr.ph163.1, label %.loopexit112.1

.lr.ph163.1:                                      ; preds = %.loopexit112
  %i.bf = ptrtoint ptr %i.bd to i64
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.1, %.lr.ph163.1
  %.1162.1 = phi ptr [ %.1.lcssa, %.lr.ph163.1 ], [ %.3.1, %.loopexit.1 ] ; 6 uses
  %i.bg = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.loopexit215, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = icmp ugt i8 %i.bi, -128
  %i.bl = ptrtoint ptr %.1162.1 to i64
  %i.bm = sub i64 %i.bf, %i.bl                    ; 2 uses
  br i1 %i.bk, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = icmp eq i8 %i.bi, 0
  %i.bo = zext i8 %i.bi to i64
  %i.bp = icmp slt i64 %i.bm, %i.bo
  %or.cond107.1 = or i1 %i.bn, %i.bp
  br i1 %or.cond107.1, label %.loopexit216, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load i8, ptr %i.j, align 1, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %.1162.1, i64 1 ; 3 uses
  store i8 %i.bq, ptr %.1162.1, align 1, !tbaa !12
  %.not102.1 = icmp eq i8 %i.bi, 1
  br i1 %.not102.1, label %.loopexit.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = add nsw i32 %i.bj, -1
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = tail call i64 @fread(ptr noundef nonnull %i.br, i64 noundef %i.bt, i64 noundef 1, ptr noundef %0)
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.loopexit217, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  br label %.loopexit.1

bb.u:                                             ; preds = %bb.p
  %i.bx = add nsw i32 %i.bj, -128                 ; 4 uses
  %i.by = zext nneg i32 %i.bx to i64              ; 3 uses
  %i.bz = icmp slt i64 %i.bm, %i.by
  br i1 %i.bz, label %.loopexit218, label %iter.check556

iter.check556:                                    ; preds = %bb.u
  %.pre247 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check542 = icmp ult i32 %i.bx, 8
  br i1 %min.iters.check542, label %.lr.ph.1.preheader, label %vec.epilog.ph560

vec.epilog.ph560:                                 ; preds = %iter.check556
  %n.vec561 = and i64 %i.by, 120                  ; 4 uses
  %i.ca = getelementptr i8, ptr %.1162.1, i64 %n.vec561 ; 2 uses
  %i.cb = trunc nuw nsw i64 %n.vec561 to i32
  %i.cc = sub nsw i32 %i.bx, %i.cb
  %broadcast.splatinsert562 = insertelement <8 x i8> poison, i8 %.pre247, i64 0
  %broadcast.splat563 = shufflevector <8 x i8> %broadcast.splatinsert562, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body564

vec.epilog.vector.body564:                        ; preds = %vec.epilog.vector.body564, %vec.epilog.ph560
  %index565 = phi i64 [ 0, %vec.epilog.ph560 ], [ %index.next567, %vec.epilog.vector.body564 ] ; 2 uses
  %next.gep566 = getelementptr i8, ptr %.1162.1, i64 %index565
  store <8 x i8> %broadcast.splat563, ptr %next.gep566, align 1, !tbaa !12
  %index.next567 = add nuw i64 %index565, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next567, %n.vec561
  br i1 %i.cd, label %vec.epilog.middle.block568, label %vec.epilog.vector.body564, !llvm.loop !26

vec.epilog.middle.block568:                       ; preds = %vec.epilog.vector.body564
  %cmp.n569 = icmp eq i64 %n.vec561, %i.by
  br i1 %cmp.n569, label %.loopexit.1, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %iter.check556, %vec.epilog.middle.block568
  %.2161.1.ph = phi ptr [ %.1162.1, %iter.check556 ], [ %i.ca, %vec.epilog.middle.block568 ]
  %.085160.1.ph = phi i32 [ %i.bx, %iter.check556 ], [ %i.cc, %vec.epilog.middle.block568 ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %.lr.ph.1
  %.2161.1 = phi ptr [ %i.cf, %.lr.ph.1 ], [ %.2161.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %.085160.1 = phi i32 [ %i.ce, %.lr.ph.1 ], [ %.085160.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %i.ce = add nsw i32 %.085160.1, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %.2161.1, i64 1 ; 2 uses
  store i8 %.pre247, ptr %.2161.1, align 1, !tbaa !12
  %i.cg = icmp samesign ugt i32 %.085160.1, 1
  br i1 %i.cg, label %.lr.ph.1, label %.loopexit.1, !llvm.loop !27

.loopexit.1:                                      ; preds = %.lr.ph.1, %vec.epilog.middle.block568, %bb.t, %bb.r
  %.3.1 = phi ptr [ %i.br, %bb.r ], [ %i.bw, %bb.t ], [ %i.ca, %vec.epilog.middle.block568 ], [ %i.cf, %.lr.ph.1 ] ; 3 uses
  %i.ch = icmp ult ptr %.3.1, %i.bd
  br i1 %i.ch, label %bb.o, label %.loopexit112.1

.loopexit112.1:                                   ; preds = %.loopexit.1, %.loopexit112
  %.1.lcssa.1 = phi ptr [ %.1.lcssa, %.loopexit112 ], [ %.3.1, %.loopexit.1 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.q ; 3 uses
  %i.cj = icmp ult ptr %.1.lcssa.1, %i.ci
  br i1 %i.cj, label %.lr.ph163.2, label %.loopexit112.2

.lr.ph163.2:                                      ; preds = %.loopexit112.1
  %i.ck = ptrtoint ptr %i.ci to i64
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.2, %.lr.ph163.2
  %.1162.2 = phi ptr [ %.1.lcssa.1, %.lr.ph163.2 ], [ %.3.2, %.loopexit.2 ] ; 6 uses
  %i.cl = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.loopexit215, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = icmp ugt i8 %i.cn, -128
  %i.cq = ptrtoint ptr %.1162.2 to i64
  %i.cr = sub i64 %i.ck, %i.cq                    ; 2 uses
  br i1 %i.cp, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = icmp eq i8 %i.cn, 0
  %i.ct = zext i8 %i.cn to i64
  %i.cu = icmp slt i64 %i.cr, %i.ct
  %or.cond107.2 = or i1 %i.cs, %i.cu
  br i1 %or.cond107.2, label %.loopexit216, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = load i8, ptr %i.j, align 1, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.1162.2, i64 1 ; 3 uses
  store i8 %i.cv, ptr %.1162.2, align 1, !tbaa !12
  %.not102.2 = icmp eq i8 %i.cn, 1
  br i1 %.not102.2, label %.loopexit.2, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = add nsw i32 %i.co, -1
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = tail call i64 @fread(ptr noundef nonnull %i.cw, i64 noundef %i.cy, i64 noundef 1, ptr noundef %0)
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.loopexit217, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy
  br label %.loopexit.2

bb.ab:                                            ; preds = %bb.w
  %i.dc = add nsw i32 %i.co, -128                 ; 4 uses
  %i.dd = zext nneg i32 %i.dc to i64              ; 3 uses
  %i.de = icmp slt i64 %i.cr, %i.dd
  br i1 %i.de, label %.loopexit218, label %iter.check526

iter.check526:                                    ; preds = %bb.ab
  %.pre248 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check512 = icmp ult i32 %i.dc, 8
  br i1 %min.iters.check512, label %.lr.ph.2.preheader, label %vec.epilog.ph530

vec.epilog.ph530:                                 ; preds = %iter.check526
  %n.vec531 = and i64 %i.dd, 120                  ; 4 uses
  %i.df = getelementptr i8, ptr %.1162.2, i64 %n.vec531 ; 2 uses
  %i.dg = trunc nuw nsw i64 %n.vec531 to i32
  %i.dh = sub nsw i32 %i.dc, %i.dg
  %broadcast.splatinsert532 = insertelement <8 x i8> poison, i8 %.pre248, i64 0
  %broadcast.splat533 = shufflevector <8 x i8> %broadcast.splatinsert532, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body534

vec.epilog.vector.body534:                        ; preds = %vec.epilog.vector.body534, %vec.epilog.ph530
  %index535 = phi i64 [ 0, %vec.epilog.ph530 ], [ %index.next537, %vec.epilog.vector.body534 ] ; 2 uses
  %next.gep536 = getelementptr i8, ptr %.1162.2, i64 %index535
  store <8 x i8> %broadcast.splat533, ptr %next.gep536, align 1, !tbaa !12
  %index.next537 = add nuw i64 %index535, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next537, %n.vec531
  br i1 %i.di, label %vec.epilog.middle.block538, label %vec.epilog.vector.body534, !llvm.loop !28

vec.epilog.middle.block538:                       ; preds = %vec.epilog.vector.body534
  %cmp.n539 = icmp eq i64 %n.vec531, %i.dd
  br i1 %cmp.n539, label %.loopexit.2, label %.lr.ph.2.preheader

.lr.ph.2.preheader:                               ; preds = %iter.check526, %vec.epilog.middle.block538
  %.2161.2.ph = phi ptr [ %.1162.2, %iter.check526 ], [ %i.df, %vec.epilog.middle.block538 ]
  %.085160.2.ph = phi i32 [ %i.dc, %iter.check526 ], [ %i.dh, %vec.epilog.middle.block538 ]
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2.preheader, %.lr.ph.2
  %.2161.2 = phi ptr [ %i.dk, %.lr.ph.2 ], [ %.2161.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %.085160.2 = phi i32 [ %i.dj, %.lr.ph.2 ], [ %.085160.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %i.dj = add nsw i32 %.085160.2, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %.2161.2, i64 1 ; 2 uses
  store i8 %.pre248, ptr %.2161.2, align 1, !tbaa !12
  %i.dl = icmp samesign ugt i32 %.085160.2, 1
  br i1 %i.dl, label %.lr.ph.2, label %.loopexit.2, !llvm.loop !29

.loopexit.2:                                      ; preds = %.lr.ph.2, %vec.epilog.middle.block538, %bb.aa, %bb.y
  %.3.2 = phi ptr [ %i.cw, %bb.y ], [ %i.db, %bb.aa ], [ %i.df, %vec.epilog.middle.block538 ], [ %i.dk, %.lr.ph.2 ] ; 3 uses
  %i.dm = icmp ult ptr %.3.2, %i.ci
  br i1 %i.dm, label %bb.v, label %.loopexit112.2

.loopexit112.2:                                   ; preds = %.loopexit.2, %.loopexit112.1
  %.1.lcssa.2 = phi ptr [ %.1.lcssa.1, %.loopexit112.1 ], [ %.3.2, %.loopexit.2 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.r ; 3 uses
  %i.do = icmp ult ptr %.1.lcssa.2, %i.dn
  br i1 %i.do, label %.lr.ph163.3, label %.lr.ph169.preheader

.lr.ph163.3:                                      ; preds = %.loopexit112.2
  %i.dp = ptrtoint ptr %i.dn to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.3, %.lr.ph163.3
  %.1162.3 = phi ptr [ %.1.lcssa.2, %.lr.ph163.3 ], [ %.3.3, %.loopexit.3 ] ; 6 uses
  %i.dq = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.loopexit215, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.dt = zext i8 %i.ds to i32                    ; 2 uses
  %i.du = icmp ugt i8 %i.ds, -128
  %i.dv = ptrtoint ptr %.1162.3 to i64
  %i.dw = sub i64 %i.dp, %i.dv                    ; 2 uses
  br i1 %i.du, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = icmp eq i8 %i.ds, 0
  %i.dy = zext i8 %i.ds to i64
  %i.dz = icmp slt i64 %i.dw, %i.dy
  %or.cond107.3 = or i1 %i.dx, %i.dz
  br i1 %or.cond107.3, label %.loopexit216, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = load i8, ptr %i.j, align 1, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %.1162.3, i64 1 ; 3 uses
  store i8 %i.ea, ptr %.1162.3, align 1, !tbaa !12
  %.not102.3 = icmp eq i8 %i.ds, 1
  br i1 %.not102.3, label %.loopexit.3, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = add nsw i32 %i.dt, -1
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = tail call i64 @fread(ptr noundef nonnull %i.eb, i64 noundef %i.ed, i64 noundef 1, ptr noundef %0)
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.loopexit217, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  br label %.loopexit.3

bb.ai:                                            ; preds = %bb.ad
  %i.eh = add nsw i32 %i.dt, -128                 ; 4 uses
  %i.ei = zext nneg i32 %i.eh to i64              ; 3 uses
  %i.ej = icmp slt i64 %i.dw, %i.ei
  br i1 %i.ej, label %.loopexit218, label %iter.check

iter.check:                                       ; preds = %bb.ai
  %.pre249 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check = icmp ult i32 %i.eh, 8
  br i1 %min.iters.check, label %.lr.ph.3.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec503 = and i64 %i.ei, 120                  ; 4 uses
  %i.ek = getelementptr i8, ptr %.1162.3, i64 %n.vec503 ; 2 uses
  %i.el = trunc nuw nsw i64 %n.vec503 to i32
  %i.em = sub nsw i32 %i.eh, %i.el
  %broadcast.splatinsert504 = insertelement <8 x i8> poison, i8 %.pre249, i64 0
  %broadcast.splat505 = shufflevector <8 x i8> %broadcast.splatinsert504, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index506 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next508, %vec.epilog.vector.body ] ; 2 uses
  %next.gep507 = getelementptr i8, ptr %.1162.3, i64 %index506
  store <8 x i8> %broadcast.splat505, ptr %next.gep507, align 1, !tbaa !12
  %index.next508 = add nuw i64 %index506, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.en, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n509 = icmp eq i64 %n.vec503, %i.ei
  br i1 %cmp.n509, label %.loopexit.3, label %.lr.ph.3.preheader

.lr.ph.3.preheader:                               ; preds = %iter.check, %vec.epilog.middle.block
  %.2161.3.ph = phi ptr [ %.1162.3, %iter.check ], [ %i.ek, %vec.epilog.middle.block ]
  %.085160.3.ph = phi i32 [ %i.eh, %iter.check ], [ %i.em, %vec.epilog.middle.block ]
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader, %.lr.ph.3
  %.2161.3 = phi ptr [ %i.ep, %.lr.ph.3 ], [ %.2161.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %.085160.3 = phi i32 [ %i.eo, %.lr.ph.3 ], [ %.085160.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %i.eo = add nsw i32 %.085160.3, -1
  %i.ep = getelementptr inbounds nuw i8, ptr %.2161.3, i64 1 ; 2 uses
  store i8 %.pre249, ptr %.2161.3, align 1, !tbaa !12
  %i.eq = icmp samesign ugt i32 %.085160.3, 1
  br i1 %i.eq, label %.lr.ph.3, label %.loopexit.3, !llvm.loop !31

.loopexit.3:                                      ; preds = %.lr.ph.3, %vec.epilog.middle.block, %bb.ah, %bb.af
  %.3.3 = phi ptr [ %i.eb, %bb.af ], [ %i.eg, %bb.ah ], [ %i.ek, %vec.epilog.middle.block ], [ %i.ep, %.lr.ph.3 ] ; 2 uses
  %i.er = icmp ult ptr %.3.3, %i.dn
  br i1 %i.er, label %bb.ac, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %.loopexit.3, %.loopexit112.2
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.m
  %invariant.gep382 = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.n
  %invariant.gep384 = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.o
  br label %.lr.ph169

.lr.ph163:                                        ; preds = %.preheader113.preheader
  %i.es = ptrtoint ptr %4 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph163, %.loopexit
  %.1162 = phi ptr [ %.187265, %.lr.ph163 ], [ %.3, %.loopexit ] ; 6 uses
  %i.et = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %.loopexit215, label %bb.ak

.loopexit215:                                     ; preds = %bb.aj, %bb.o, %bb.v, %bb.ac
  tail call void @free(ptr noundef nonnull %.187265) #13
  %i.ev = tail call ptr @__errno_location() #14
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14
  %i.ex = tail call ptr @strerror(i32 noundef %i.ew) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.ex) #13
  br label %.critedge109

bb.ak:                                            ; preds = %bb.aj
  %i.ey = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = icmp ugt i8 %i.ey, -128
  %i.fb = ptrtoint ptr %.1162 to i64
  %i.fc = sub i64 %i.es, %i.fb                    ; 2 uses
  br i1 %i.fa, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fd = add nsw i32 %i.ez, -128                 ; 4 uses
  %i.fe = zext nneg i32 %i.fd to i64              ; 3 uses
  %i.ff = icmp slt i64 %i.fc, %i.fe
  br i1 %i.ff, label %.loopexit218, label %iter.check586

iter.check586:                                    ; preds = %bb.al
  %.pre = load i8, ptr %i.j, align 1, !tbaa !12   ; 2 uses
  %min.iters.check572 = icmp ult i32 %i.fd, 8
  br i1 %min.iters.check572, label %.lr.ph.preheader, label %vec.epilog.ph590

vec.epilog.ph590:                                 ; preds = %iter.check586
  %n.vec591 = and i64 %i.fe, 120                  ; 4 uses
  %i.fg = getelementptr i8, ptr %.1162, i64 %n.vec591 ; 2 uses
  %i.fh = trunc nuw nsw i64 %n.vec591 to i32
  %i.fi = sub nsw i32 %i.fd, %i.fh
  %broadcast.splatinsert592 = insertelement <8 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat593 = shufflevector <8 x i8> %broadcast.splatinsert592, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body594

vec.epilog.vector.body594:                        ; preds = %vec.epilog.vector.body594, %vec.epilog.ph590
  %index595 = phi i64 [ 0, %vec.epilog.ph590 ], [ %index.next597, %vec.epilog.vector.body594 ] ; 2 uses
  %next.gep596 = getelementptr i8, ptr %.1162, i64 %index595
  store <8 x i8> %broadcast.splat593, ptr %next.gep596, align 1, !tbaa !12
  %index.next597 = add nuw i64 %index595, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next597, %n.vec591
  br i1 %i.fj, label %vec.epilog.middle.block598, label %vec.epilog.vector.body594, !llvm.loop !32

vec.epilog.middle.block598:                       ; preds = %vec.epilog.vector.body594
  %cmp.n599 = icmp eq i64 %n.vec591, %i.fe
  br i1 %cmp.n599, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check586, %vec.epilog.middle.block598
  %.2161.ph = phi ptr [ %.1162, %iter.check586 ], [ %i.fg, %vec.epilog.middle.block598 ]
  %.085160.ph = phi i32 [ %i.fd, %iter.check586 ], [ %i.fi, %vec.epilog.middle.block598 ]
  br label %.lr.ph

.loopexit218:                                     ; preds = %bb.al, %bb.u, %bb.ab, %bb.ai
  tail call void @free(ptr noundef nonnull %.187265) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #13
  br label %.critedge109

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.2161 = phi ptr [ %i.fl, %.lr.ph ], [ %.2161.ph, %.lr.ph.preheader ] ; 2 uses
  %.085160 = phi i32 [ %i.fk, %.lr.ph ], [ %.085160.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fk = add nsw i32 %.085160, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %.2161, i64 1 ; 2 uses
  store i8 %.pre, ptr %.2161, align 1, !tbaa !12
  %i.fm = icmp samesign ugt i32 %.085160, 1
  br i1 %i.fm, label %.lr.ph, label %.loopexit, !llvm.loop !33

bb.am:                                            ; preds = %bb.ak
  %i.fn = icmp eq i8 %i.ey, 0
  %i.fo = zext i8 %i.ey to i64
  %i.fp = icmp slt i64 %i.fc, %i.fo
  %or.cond107 = or i1 %i.fn, %i.fp
  br i1 %or.cond107, label %.loopexit216, label %bb.an

.loopexit216:                                     ; preds = %bb.am, %bb.q, %bb.x, %bb.ae
  tail call void @free(ptr noundef nonnull %.187265) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #13
  br label %.critedge109

bb.an:                                            ; preds = %bb.am
  %i.fq = load i8, ptr %i.j, align 1, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %.1162, i64 1 ; 3 uses
  store i8 %i.fq, ptr %.1162, align 1, !tbaa !12
  %.not102 = icmp eq i8 %i.ey, 1
  br i1 %.not102, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fs = add nsw i32 %i.ez, -1
  %i.ft = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fu = tail call i64 @fread(ptr noundef nonnull %i.fr, i64 noundef %i.ft, i64 noundef 1, ptr noundef %0)
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %.loopexit217, label %bb.ap

.loopexit217:                                     ; preds = %bb.ao, %bb.s, %bb.z, %bb.ag
  tail call void @free(ptr noundef nonnull %.187265) #13
  %i.fw = tail call ptr @__errno_location() #14
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !14
  %i.fy = tail call ptr @strerror(i32 noundef %i.fx) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.fy) #13
  br label %.critedge109

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %vec.epilog.middle.block598, %bb.an, %bb.ap
  %.3 = phi ptr [ %i.fr, %bb.an ], [ %i.fz, %bb.ap ], [ %i.fg, %vec.epilog.middle.block598 ], [ %i.fl, %.lr.ph ] ; 3 uses
  %i.ga = icmp ult ptr %.3, %4
  br i1 %i.ga, label %bb.aj, label %.loopexit112

.critedge._crit_edge:                             ; preds = %rgbe2float.exit111
  %i.gb = add nsw i32 %.088172, -1
  %i.gc = icmp sgt i32 %.088172, 1
  br i1 %i.gc, label %bb.c, label %._crit_edge

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %rgbe2float.exit111
  %indvars.iv = phi i64 [ 0, %.lr.ph169.preheader ], [ %indvars.iv.next, %rgbe2float.exit111 ] ; 5 uses
  %.194167 = phi ptr [ %.093171, %.lr.ph169.preheader ], [ %i.gu, %rgbe2float.exit111 ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.187265, i64 %indvars.iv
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !12  ; 2 uses
  store i8 %i.ge, ptr %i.a, align 1, !tbaa !12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.gf = load i8, ptr %gep, align 1, !tbaa !12
  store i8 %i.gf, ptr %i.e, align 1, !tbaa !12
  %gep383 = getelementptr inbounds nuw i8, ptr %invariant.gep382, i64 %indvars.iv
  %i.gg = load i8, ptr %gep383, align 1, !tbaa !12
  store i8 %i.gg, ptr %i.f, align 1, !tbaa !12
  %gep385 = getelementptr inbounds nuw i8, ptr %invariant.gep384, i64 %indvars.iv
  %i.gh = load i8, ptr %gep385, align 1, !tbaa !12 ; 3 uses
  store i8 %i.gh, ptr %i.g, align 1, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %.194167, i64 4
  %.not.i110 = icmp eq i8 %i.gh, 0
  br i1 %.not.i110, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph169
  %i.gj = zext i8 %i.gh to i32
  %i.gk = add nsw i32 %i.gj, -136
  %i.gl = tail call reassoc nsz arcp contract afn float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.gk) #14 ; 2 uses
  %i.gm = uitofp i8 %i.ge to float
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gl, %i.gm
  store float %i.gn, ptr %.194167, align 4, !tbaa !13
  %i.go = load <2 x i8>, ptr %i.e, align 1, !tbaa !12
  %i.gp = uitofp <2 x i8> %i.go to <2 x float>
  %i.gq = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul reassoc nsz arcp contract afn <2 x float> %i.gr, %i.gp
  br label %rgbe2float.exit111

bb.ar:                                            ; preds = %.lr.ph169
  store float 0.000000e+00, ptr %.194167, align 4, !tbaa !13
  br label %rgbe2float.exit111

rgbe2float.exit111:                               ; preds = %bb.aq, %bb.ar
  %i.gt = phi <2 x float> [ zeroinitializer, %bb.ar ], [ %i.gs, %bb.aq ]
  store <2 x float> %i.gt, ptr %i.gi, align 4, !tbaa !13
  %i.gu = getelementptr inbounds nuw i8, ptr %.194167, i64 12 ; 2 uses
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
  %i.ar = fdiv reassoc nsz arcp contract afn float %.val68, %.val69 ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn float %.val68, %.val69
  %i.at = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.as
  %i.au = fdiv reassoc nsz arcp contract afn float %i.at, %.val69
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.ar
  %i.aw = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.aq, <3 x i32> <i32 0, i32 4, i32 6>
  %i.ay = shufflevector <4 x float> %i.aq, <4 x float> %i.aw, <3 x i32> <i32 2, i32 4, i32 0> ; 4 uses
  %i.az = fsub reassoc nsz arcp contract afn <3 x float> %i.ax, %i.ay ; 4 uses
  %i.ba = extractelement <3 x float> %i.az, i64 2
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %.val
  %i.bc = extractelement <3 x float> %i.az, i64 1
  %i.bd = fmul reassoc nsz arcp contract afn float %.val66, %i.bc
end_hunk_0
