Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rwrExp?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@s_pManRwrExp4 = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Number of cuts considered       = %8d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Classes occurring at least once = %8d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Occurence = %6d.  Num classes = %4d.  \0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Occurence = %6d.  Num classes = %4d.  Repr = \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"npnclass_stats4.txt\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" %10d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%d classes written into file \22%s\22.\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Number of cuts considered        = %8d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Classes occurring at least once  = %8d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"The largest number of occurrence = %8d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"nnclass_stats5.txt\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"The numbe of NPN classes = %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Computing NPN classes\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"npnclass_stats5.txt\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@s_pManRwrExp5.body = internal unnamed_addr global [16 x i8] undef

; Function Attrs: nounwind uwtable
define void @Rwt_Man4ExploreStart() local_unnamed_addr #0 {
bb.a:
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 5 uses
  store i32 65536, ptr %calloc, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  tail call void @Extra_Truth4VarNPN(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null) #19
  %i.b = load i32, ptr %calloc, align 8, !tbaa !12
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %calloc8 = tail call ptr @calloc(i64 1, i64 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store ptr %calloc8, ptr %i.e, align 8, !tbaa !13
  store ptr %calloc, ptr @s_pManRwrExp4, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @Extra_Truth4VarNPN(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Rwt_Man4ExploreCount(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = zext i32 %0 to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !27
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @Rwt_Man4ExplorePrint() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = zext nneg i32 %i.c to i64                ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi78 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <4 x i32>, ptr %i.h, align 4, !tbaa !16 ; 3 uses
  %wide.load82 = load <4 x i32>, ptr %i.i, align 4, !tbaa !16 ; 3 uses
  %i.j = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi80, <4 x i32> %wide.load) ; 2 uses
  %i.k = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi81, <4 x i32> %wide.load82) ; 2 uses
  %i.l = add <4 x i32> %wide.load, %vec.phi78     ; 2 uses
  %i.m = add <4 x i32> %wide.load82, %vec.phi79   ; 2 uses
  %i.n = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.o = icmp sgt <4 x i32> %wide.load82, zeroinitializer
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = zext <4 x i1> %i.o to <4 x i32>
  %i.r = add <4 x i32> %vec.phi, %i.p             ; 2 uses
  %i.s = add <4 x i32> %vec.phi77, %i.q           ; 2 uses
  %i.t = bitcast <4 x i64> %vec.ind to <8 x i32>
  %i.u = extractelement <8 x i32> %i.t, i64 6
  %i.v = add i32 %i.u, 5
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  store i32 %i.v, ptr %i.a, align 4, !tbaa !16
  %bin.rdx = add <4 x i32> %i.s, %i.r
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx83 = add <4 x i32> %i.m, %i.l
  %i.y = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx83) ; 2 uses
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.j, <4 x i32> %i.k)
  %i.z = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.045.ph = phi i32 [ 0, %.lr.ph ], [ %i.x, %middle.block ]
  %.02444.ph = phi i32 [ 0, %.lr.ph ], [ %i.y, %middle.block ]
  %.02743.ph = phi i32 [ 0, %.lr.ph ], [ %i.z, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.045 = phi i32 [ %.1, %scalar.ph ], [ %.045.ph, %scalar.ph.preheader ]
  %.02444 = phi i32 [ %i.ac, %scalar.ph ], [ %.02444.ph, %scalar.ph.preheader ]
  %.02743 = phi i32 [ %spec.select, %scalar.ph ], [ %.02743.ph, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16 ; 3 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.02743, i32 %i.ab) ; 2 uses
  %i.ac = add nsw i32 %i.ab, %.02444              ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, 0
  %i.ae = zext i1 %i.ad to i32
  %.1 = add nuw nsw i32 %.045, %i.ae              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.af, ptr %i.a, align 4, !tbaa !16
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.ag, label %scalar.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.027.lcssa = phi i32 [ 0, %bb.a ], [ %i.z, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %middle.block ], [ %i.ac, %scalar.ph ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.x, %middle.block ], [ %.1, %scalar.ph ] ; 2 uses
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.024.lcssa) ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.0.lcssa) ; 0 uses
  %i.aj = add nuw i32 %.027.lcssa, 1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %calloc = tail call ptr @calloc(i64 1, i64 %i.al) ; 5 uses
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #20 ; 6 uses
  %i.an = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !12 ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 3 uses
  %i.as = zext nneg i32 %i.ao to i64              ; 2 uses
  %xtraiter = and i64 %i.as, 1
  %i.at = icmp eq i32 %i.ao, 1
  br i1 %i.at, label %.epil.preheader, label %.lr.ph50.new

.lr.ph50.new:                                     ; preds = %.lr.ph50
  %unroll_iter = and i64 %i.as, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph50.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph50.new ], [ %indvars.iv.next67.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph50.new ], [ %niter.next.1, %bb.b ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv66
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !16
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !16
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.aw
  %i.bb = trunc nuw nsw i64 %indvars.iv66 to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !16
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next67
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !16
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.be
  %i.bj = trunc nuw nsw i64 %indvars.iv.next67 to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !16
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge51.loopexit.unr-lcssa, label %bb.b, !llvm.loop !30

._crit_edge51.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge51, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge51.loopexit.unr-lcssa, %.lr.ph50
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next67.1, %._crit_edge51.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i32 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv66.epil.init
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !16
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bm
  %i.br = trunc nuw nsw i64 %indvars.iv66.epil.init to i32
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !16
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %.epil.preheader, %._crit_edge51.loopexit.unr-lcssa, %._crit_edge
  %i.bs = sub nsw i32 2288, %.0.lcssa
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 0, i32 noundef %i.bs) ; 0 uses
  %.not52 = icmp slt i32 %.027.lcssa, 1
  br i1 %.not52, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge51, %bb.d
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.d ], [ 1, %._crit_edge51 ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv69
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !16 ; 2 uses
  %.not41 = icmp eq i32 %i.bv, 0
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph55
  %i.bw = trunc nuw nsw i64 %indvars.iv69 to i32
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bw, i32 noundef %i.bv) ; 0 uses
  %i.by = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv69
  tail call void @Extra_PrintBinary(ptr noundef %i.by, ptr noundef nonnull %i.bz, i32 noundef 16) #19
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph55, %bb.c
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %i.ak
  br i1 %exitcond.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !31

._crit_edge56:                                    ; preds = %bb.d, %._crit_edge51
  tail call void @free(ptr noundef %calloc) #19
  %.not39 = icmp eq ptr %i.am, null
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge56
  tail call void @free(ptr noundef nonnull %i.am) #19
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge56, %bb.e
  %i.ca = tail call noalias ptr @fopen(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.cb = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !12
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %bb.f, %bb.h
  %i.ce = phi ptr [ %i.cu, %bb.h ], [ %i.cb, %bb.f ] ; 2 uses
  %.02559 = phi i32 [ %.126, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %storemerge4058 = phi i32 [ %i.cw, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !13
  %i.ch = sext i32 %storemerge4058 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !16
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph61
  call void @Extra_PrintHex(ptr noundef %i.ca, ptr noundef nonnull %i.a, i32 noundef 4) #19
  %i.cl = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !13
  %i.co = load i32, ptr %i.a, align 4, !tbaa !16
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !16
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ca, ptr noundef nonnull @.str.7, i32 noundef %i.cr) #19 ; 0 uses
  %i.ct = add nsw i32 %.02559, 1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16
  %.pre72 = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph61, %bb.g
  %i.cu = phi ptr [ %.pre72, %bb.g ], [ %i.ce, %.lr.ph61 ] ; 2 uses
  %i.cv = phi i32 [ %.pre, %bb.g ], [ %storemerge4058, %.lr.ph61 ]
  %.126 = phi i32 [ %i.ct, %bb.g ], [ %.02559, %.lr.ph61 ] ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 3 uses
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !16
  %i.cx = load i32, ptr %i.cu, align 8, !tbaa !12
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph61, label %._crit_edge62, !llvm.loop !32

._crit_edge62:                                    ; preds = %bb.h, %bb.f
  %.025.lcssa = phi i32 [ 0, %bb.f ], [ %.126, %bb.h ]
  %i.cz = call i32 @fclose(ptr noundef %i.ca)     ; 0 uses
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.025.lcssa, ptr noundef nonnull @.str.5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

declare void @Extra_PrintHex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Rwt_Man5ExploreStart() local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) @s_pManRwrExp5.body, i8 0, i64 16, i1 false)
  %i.a = tail call ptr @stmm_init_table(ptr noundef nonnull @st__numcmp, ptr noundef nonnull @st__numhash) #19
  store ptr %i.a, ptr @s_pManRwrExp5.body, align 8, !tbaa !22
  %i.b = tail call ptr @stmm_init_table(ptr noundef nonnull @st__numcmp, ptr noundef nonnull @st__numhash) #19
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @s_pManRwrExp5.body, i64 8), align 8, !tbaa !23
  ret void
}

declare ptr @stmm_init_table(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @st__numcmp(ptr noundef, ptr noundef) #3

declare i32 @st__numhash(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define void @Rwt_Man5ExploreCount(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr @s_pManRwrExp5.body, align 8, !tbaa !22
  %i.c = zext i32 %0 to i64
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = call i32 @stmm_find_or_add(ptr noundef %i.b, ptr noundef %i.d, ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.e, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre1 = load i32, ptr %.pre, align 4, !tbaa !16
  %i.f = add nsw i32 %.pre1, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.g = phi i32 [ %i.f, %._crit_edge ], [ 1, %bb.a ]
  store i32 %i.g, ptr %.pre, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @stmm_find_or_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Rwt_Man5ExplorePrint() local_unnamed_addr #0 {
Abc_Clock.exit:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 3 uses
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.e = load ptr, ptr @s_pManRwrExp5.body, align 8, !tbaa !22
  %i.f = call ptr @stmm_init_gen(ptr noundef %i.e) #19 ; 3 uses
  %i.g = call i32 @stmm_gen(ptr noundef %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #19
  %.not114 = icmp eq i32 %i.g, 0
  br i1 %.not114, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %.critedge, %Abc_Clock.exit
  %.072.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %spec.select, %.critedge ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %i.v, %.critedge ]
  call void @stmm_free_gen(ptr noundef %i.f) #19
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.0.lcssa) ; 0 uses
  %i.i = load ptr, ptr @s_pManRwrExp5.body, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.k) ; 0 uses
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.072.lcssa) ; 0 uses
  %i.n = add nuw i32 %.072.lcssa, 1
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %calloc = call ptr @calloc(i64 1, i64 %i.p)     ; 3 uses
  %i.q = call noalias ptr @malloc(i64 noundef %i.p) #20 ; 4 uses
  %i.r = load ptr, ptr @s_pManRwrExp5.body, align 8, !tbaa !22
  %i.s = call ptr @stmm_init_gen(ptr noundef %i.r) #19 ; 3 uses
  %i.t = call i32 @stmm_gen(ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #19
  %.not79118 = icmp eq i32 %i.t, 0
  br i1 %.not79118, label %._crit_edge119, label %.critedge2

.critedge:                                        ; preds = %Abc_Clock.exit, %.critedge
  %.0116 = phi i32 [ %i.v, %.critedge ], [ 0, %Abc_Clock.exit ]
  %.072115 = phi i32 [ %spec.select, %.critedge ], [ 0, %Abc_Clock.exit ]
  %i.u = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.v = add nsw i32 %i.u, %.0116                 ; 2 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %.072115, i32 %i.u) ; 2 uses
  %i.w = call i32 @stmm_gen(ptr noundef %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %._crit_edge, label %.critedge, !llvm.loop !35

._crit_edge119:                                   ; preds = %.critedge2, %._crit_edge
  call void @stmm_free_gen(ptr noundef %i.s) #19
  %.not80120 = icmp slt i32 %.072.lcssa, 1
  br i1 %.not80120, label %._crit_edge123, label %.lr.ph

.critedge2:                                       ; preds = %._crit_edge, %.critedge2
  %i.x = load i32, ptr %i.a, align 4, !tbaa !16
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !16
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !16
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.y
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !16
  %i.ae = call i32 @stmm_gen(ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #19
  %.not79 = icmp eq i32 %i.ae, 0
  br i1 %.not79, label %._crit_edge119, label %.critedge2, !llvm.loop !36

.lr.ph:                                           ; preds = %._crit_edge119, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 1, %._crit_edge119 ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %.not85 = icmp eq i32 %i.ag, 0
  br i1 %.not85, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ah, i32 noundef %i.ag) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  call void @Extra_PrintBinary(ptr noundef %i.aj, ptr noundef nonnull %i.ak, i32 noundef 32) #19
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge123, label %.lr.ph, !llvm.loop !37

._crit_edge123:                                   ; preds = %bb.b, %._crit_edge119
  call void @free(ptr noundef %calloc) #19
  %.not81 = icmp eq ptr %i.q, null
  br i1 %.not81, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge123
  call void @free(ptr noundef nonnull %i.q) #19
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge123, %bb.c
  %i.al = load ptr, ptr @s_pManRwrExp5.body, align 8, !tbaa !22 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47 ; 2 uses
  %i.ao = add i32 %i.an, -1
  %or.cond.i = icmp ult i32 %i.ao, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.an ; 3 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = sext i32 %spec.store.select.i to i64
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = call noalias ptr @malloc(i64 noundef %i.aq) #20
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.d, %bb.e
  %.promoted129 = phi ptr [ %i.ar, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.as = call ptr @stmm_init_gen(ptr noundef nonnull %i.al) #19 ; 3 uses
  %i.at = call i32 @stmm_gen(ptr noundef %i.as, ptr noundef nonnull %i.b, ptr noundef null) #19
  %.not82124 = icmp eq i32 %i.at, 0
  br i1 %.not82124, label %bb.f, label %.critedge4

._crit_edge125:                                   ; preds = %Vec_IntPush.exit
  %i.au = trunc nsw i64 %indvars.iv.next154 to i32
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge125, %Vec_IntAlloc.exit
  %.val88 = phi ptr [ %storemerge131, %._crit_edge125 ], [ %.promoted129, %Vec_IntAlloc.exit ] ; 3 uses
  %.val87 = phi i32 [ %i.au, %._crit_edge125 ], [ 0, %Vec_IntAlloc.exit ] ; 5 uses
  call void @stmm_free_gen(ptr noundef %i.as) #19
  %i.av = sext i32 %.val87 to i64
  call void @qsort(ptr noundef %.val88, i64 noundef %i.av, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompareUnsigned) #19
  %i.aw = call noalias ptr @fopen(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6) ; 3 uses
  %i.ax = icmp sgt i32 %.val87, 0                 ; 2 uses
  br i1 %i.ax, label %.lr.ph134.preheader, label %.critedge6

.lr.ph134.preheader:                              ; preds = %bb.f
  %wide.trip.count159 = zext nneg i32 %.val87 to i64
  br label %.lr.ph134

.critedge4:                                       ; preds = %Vec_IntAlloc.exit, %Vec_IntPush.exit
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 7 uses
  %storemerge130 = phi ptr [ %storemerge131, %Vec_IntPush.exit ], [ %.promoted129, %Vec_IntAlloc.exit ] ; 6 uses
  %spec.select.sink.i128 = phi i32 [ %spec.select.sink.i127, %Vec_IntPush.exit ], [ %spec.store.select.i, %Vec_IntAlloc.exit ] ; 3 uses
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !16
  %i.az = trunc nsw i64 %indvars.iv153 to i32
  %i.ba = icmp eq i32 %spec.select.sink.i128, %i.az
  br i1 %i.ba, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %.critedge4
  %i.bb = icmp samesign ult i64 %indvars.iv153, 16
  br i1 %i.bb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %storemerge130, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge130, i64 noundef 64) #21
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i64 %indvars.iv153, 1073741823
  %indvars.iv153.tr = trunc nsw i64 %indvars.iv153 to i32
  %i.bf = shl nsw i32 %indvars.iv153.tr, 1
  %spec.select.i = select i1 %i.be, i32 %i.bf, i32 2147483647 ; 4 uses
  %i.bg = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv153, %i.bg
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %storemerge130, null
  %i.bh = zext nneg i32 %spec.select.i to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = call ptr @realloc(ptr noundef nonnull %storemerge130, i64 noundef %i.bi) #21
  br label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.l
  %i.bk = call noalias ptr @malloc(i64 noundef %i.bi) #20
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.j, %bb.i, %bb.n, %bb.m, %.critedge4, %bb.k
  %storemerge131 = phi ptr [ %storemerge130, %.critedge4 ], [ %storemerge130, %bb.k ], [ %i.bd, %bb.j ], [ %i.bc, %bb.i ], [ %i.bj, %bb.m ], [ %i.bk, %bb.n ] ; 3 uses
  %spec.select.sink.i127 = phi i32 [ %spec.select.sink.i128, %.critedge4 ], [ %spec.select.sink.i128, %bb.k ], [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %storemerge131, i64 %indvars.iv153
  store i32 %i.ay, ptr %i.bl, align 4, !tbaa !16
  %i.bm = call i32 @stmm_gen(ptr noundef %i.as, ptr noundef nonnull %i.b, ptr noundef null) #19
  %.not82 = icmp eq i32 %i.bm, 0
  br i1 %.not82, label %._crit_edge125, label %.critedge4, !llvm.loop !38

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %.lr.ph134
  %indvars.iv156 = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next157, %.lr.ph134 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv156
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16 ; 2 uses
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !16
  %i.bp = load ptr, ptr @s_pManRwrExp5.body, align 8, !tbaa !22
  %i.bq = zext i32 %i.bo to i64
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = call i32 @stmm_lookup(ptr noundef %i.bp, ptr noundef %i.br, ptr noundef nonnull %i.a) #19 ; 0 uses
  call void @Extra_PrintHex(ptr noundef %i.aw, ptr noundef nonnull %i.b, i32 noundef 5) #19
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !16
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.7, i32 noundef %i.bt) #19 ; 0 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %.critedge6, label %.lr.ph134, !llvm.loop !39

.critedge6:                                       ; preds = %.lr.ph134, %bb.f
  %i.bv = call i32 @fclose(ptr noundef %i.aw)     ; 0 uses
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.val87, ptr noundef nonnull @.str.12) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.bx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #19
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %Abc_Clock.exit96, label %bb.o

bb.o:                                             ; preds = %.critedge6
  %i.bz = load i64, ptr %1, align 8, !tbaa !50
  %.neg111 = mul i64 %i.bz, -1000000
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !51
  %.neg = sdiv i64 %i.cb, -1000
  %.neg112 = add i64 %.neg, %.neg111
  br label %Abc_Clock.exit96

Abc_Clock.exit96:                                 ; preds = %.critedge6, %bb.o
  %.0.i95.neg = phi i64 [ %.neg112, %bb.o ], [ 1, %.critedge6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %i.ax, label %.lr.ph136.preheader, label %.critedge8

.lr.ph136.preheader:                              ; preds = %Abc_Clock.exit96
  %wide.trip.count164 = zext nneg i32 %.val87 to i64
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %bb.q
  %indvars.iv161 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next162, %bb.q ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv161
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16 ; 2 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ce = call i32 @Extra_TruthCanonNPN(i32 noundef %i.cd, i32 noundef 5) #19
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @s_pManRwrExp5.body, i64 8), align 8, !tbaa !23
  %i.cg = zext i32 %i.ce to i64
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = call i32 @stmm_find_or_add(ptr noundef %i.cf, ptr noundef %i.ch, ptr noundef nonnull %i.c) #19
  %.not84 = icmp eq i32 %i.ci, 0
  br i1 %.not84, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph136
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !24
  store i32 0, ptr %i.cj, align 4, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph136
  %i.ck = load ptr, ptr @s_pManRwrExp5.body, align 8, !tbaa !22
  %i.cl = load i32, ptr %i.b, align 4, !tbaa !16
  %i.cm = zext i32 %i.cl to i64
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = call i32 @stmm_lookup(ptr noundef %i.ck, ptr noundef %i.cn, ptr noundef nonnull %i.a) #19 ; 0 uses
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !16
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !16
  %i.cs = add nsw i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.critedge8, label %.lr.ph136, !llvm.loop !40

.critedge8:                                       ; preds = %bb.q, %Abc_Clock.exit96
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @s_pManRwrExp5.body, i64 8), align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !47
  %i.cw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.cv) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.cx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #19
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %Abc_Clock.exit98, label %bb.r

bb.r:                                             ; preds = %.critedge8
  %i.cz = load i64, ptr %0, align 8, !tbaa !50
  %i.da = mul nsw i64 %i.cz, 1000000
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !51
  %i.dd = sdiv i64 %i.dc, 1000
  %i.de = add nsw i64 %i.dd, %i.da
  br label %Abc_Clock.exit98

Abc_Clock.exit98:                                 ; preds = %.critedge8, %bb.r
  %.0.i97 = phi i64 [ %i.de, %bb.r ], [ -1, %.critedge8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.df = add i64 %.0.i97, %.0.i95.neg
  %i.dg = sitofp i64 %i.df to double
  %i.dh = fdiv double %i.dg, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.dh)
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @s_pManRwrExp5.body, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !47 ; 2 uses
  %i.dl = add i32 %i.dk, -1
  %or.cond.i99 = icmp ult i32 %i.dl, 15
  %spec.store.select.i100 = select i1 %or.cond.i99, i32 16, i32 %i.dk ; 3 uses
  %.not.i101 = icmp eq i32 %spec.store.select.i100, 0
  br i1 %.not.i101, label %Vec_IntAlloc.exit102, label %bb.s

bb.s:                                             ; preds = %Abc_Clock.exit98
  %i.dm = sext i32 %spec.store.select.i100 to i64
  %i.dn = shl nsw i64 %i.dm, 2
  %i.do = call noalias ptr @malloc(i64 noundef %i.dn) #20
  br label %Vec_IntAlloc.exit102

Vec_IntAlloc.exit102:                             ; preds = %Abc_Clock.exit98, %bb.s
  %.promoted144 = phi ptr [ %i.do, %bb.s ], [ null, %Abc_Clock.exit98 ] ; 2 uses
  %i.dp = call ptr @stmm_init_gen(ptr noundef nonnull %i.di) #19 ; 3 uses
  %i.dq = call i32 @stmm_gen(ptr noundef %i.dp, ptr noundef nonnull %i.b, ptr noundef null) #19
  %.not83137 = icmp eq i32 %i.dq, 0
  br i1 %.not83137, label %bb.t, label %.critedge10

._crit_edge138:                                   ; preds = %Vec_IntPush.exit110
  %i.dr = trunc nsw i64 %indvars.iv.next167 to i32
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge138, %Vec_IntAlloc.exit102
  %.val86 = phi ptr [ %storemerge113146, %._crit_edge138 ], [ %.promoted144, %Vec_IntAlloc.exit102 ] ; 2 uses
  %.val = phi i32 [ %i.dr, %._crit_edge138 ], [ 0, %Vec_IntAlloc.exit102 ] ; 4 uses
  call void @stmm_free_gen(ptr noundef %i.dp) #19
  %i.ds = sext i32 %.val to i64
  call void @qsort(ptr noundef %.val86, i64 noundef %i.ds, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompareUnsigned) #19
  %i.dt = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6) ; 3 uses
  %i.du = icmp sgt i32 %.val, 0
  br i1 %i.du, label %.lr.ph149.preheader, label %.critedge12

.lr.ph149.preheader:                              ; preds = %bb.t
  %wide.trip.count172 = zext nneg i32 %.val to i64
  br label %.lr.ph149

.critedge10:                                      ; preds = %Vec_IntAlloc.exit102, %Vec_IntPush.exit110
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %Vec_IntPush.exit110 ], [ 0, %Vec_IntAlloc.exit102 ] ; 7 uses
  %storemerge113145 = phi ptr [ %storemerge113146, %Vec_IntPush.exit110 ], [ %.promoted144, %Vec_IntAlloc.exit102 ] ; 6 uses
  %spec.select.sink.i107143 = phi i32 [ %spec.select.sink.i107142, %Vec_IntPush.exit110 ], [ %spec.store.select.i100, %Vec_IntAlloc.exit102 ] ; 3 uses
  %i.dv = load i32, ptr %i.b, align 4, !tbaa !16
  %i.dw = trunc nsw i64 %indvars.iv166 to i32
  %i.dx = icmp eq i32 %spec.select.sink.i107143, %i.dw
  br i1 %i.dx, label %bb.u, label %Vec_IntPush.exit110

bb.u:                                             ; preds = %.critedge10
  %i.dy = icmp samesign ult i64 %indvars.iv166, 16
  br i1 %i.dy, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not9.i.i108 = icmp eq ptr %storemerge113145, null
  br i1 %.not9.i.i108, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge113145, i64 noundef 64) #21
  br label %Vec_IntPush.exit110

bb.x:                                             ; preds = %bb.v
  %i.ea = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntPush.exit110

bb.y:                                             ; preds = %bb.u
  %i.eb = icmp samesign ult i64 %indvars.iv166, 1073741823
  %indvars.iv166.tr = trunc nsw i64 %indvars.iv166 to i32
  %i.ec = shl nsw i32 %indvars.iv166.tr, 1
  %spec.select.i103 = select i1 %i.eb, i32 %i.ec, i32 2147483647 ; 4 uses
  %i.ed = sext i32 %spec.select.i103 to i64
  %.not.i9.i104 = icmp samesign ult i64 %indvars.iv166, %i.ed
  br i1 %.not.i9.i104, label %bb.z, label %Vec_IntPush.exit110

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i105 = icmp eq ptr %storemerge113145, null
  %i.ee = zext nneg i32 %spec.select.i103 to i64
  %i.ef = shl nuw nsw i64 %i.ee, 2                ; 2 uses
  br i1 %.not9.i10.i105, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = call ptr @realloc(ptr noundef nonnull %storemerge113145, i64 noundef %i.ef) #21
  br label %Vec_IntPush.exit110

bb.ab:                                            ; preds = %bb.z
  %i.eh = call noalias ptr @malloc(i64 noundef %i.ef) #20
  br label %Vec_IntPush.exit110

Vec_IntPush.exit110:                              ; preds = %bb.x, %bb.w, %bb.ab, %bb.aa, %.critedge10, %bb.y
  %storemerge113146 = phi ptr [ %storemerge113145, %.critedge10 ], [ %storemerge113145, %bb.y ], [ %i.ea, %bb.x ], [ %i.dz, %bb.w ], [ %i.eg, %bb.aa ], [ %i.eh, %bb.ab ] ; 3 uses
  %spec.select.sink.i107142 = phi i32 [ %spec.select.sink.i107143, %.critedge10 ], [ %spec.select.sink.i107143, %bb.y ], [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i103, %bb.aa ], [ %spec.select.i103, %bb.ab ]
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %storemerge113146, i64 %indvars.iv166
  store i32 %i.dv, ptr %i.ei, align 4, !tbaa !16
  %i.ej = call i32 @stmm_gen(ptr noundef %i.dp, ptr noundef nonnull %i.b, ptr noundef null) #19
  %.not83 = icmp eq i32 %i.ej, 0
  br i1 %.not83, label %._crit_edge138, label %.critedge10, !llvm.loop !41

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.lr.ph149
  %indvars.iv169 = phi i64 [ 0, %.lr.ph149.preheader ], [ %indvars.iv.next170, %.lr.ph149 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %indvars.iv169
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !16 ; 2 uses
  store i32 %i.el, ptr %i.b, align 4, !tbaa !16
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @s_pManRwrExp5.body, i64 8), align 8, !tbaa !23
  %i.en = zext i32 %i.el to i64
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = call i32 @stmm_lookup(ptr noundef %i.em, ptr noundef %i.eo, ptr noundef nonnull %i.a) #19 ; 0 uses
  call void @Extra_PrintHex(ptr noundef %i.dt, ptr noundef nonnull %i.b, i32 noundef 5) #19
  %i.eq = load i32, ptr %i.a, align 4, !tbaa !16
  %i.er = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.7, i32 noundef %i.eq) #19 ; 0 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.critedge12, label %.lr.ph149, !llvm.loop !42

.critedge12:                                      ; preds = %.lr.ph149, %bb.t
  %i.es = call i32 @fclose(ptr noundef %i.dt)     ; 0 uses
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.val, ptr noundef nonnull @.str.17) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare ptr @stmm_init_gen(ptr noundef) local_unnamed_addr #3

declare i32 @stmm_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @stmm_free_gen(ptr noundef) local_unnamed_addr #3

declare i32 @stmm_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @Extra_TruthCanonNPN(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #7 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #19 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #19
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #19 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #22
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #19 ; 0 uses
  call void @free(ptr noundef %i.d) #19
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !19, !noalias !55
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #19, !inline_history !54 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompareUnsigned(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16
  %i.b = load i32, ptr %1, align 4, !tbaa !16
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #3

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 short", !8, i64 0}
!10 = !{!"p1 int", !8, i64 0}
!11 = !{!"Rwr_Man4_t_", !5, i64 0, !9, i64 8, !10, i64 16, !5, i64 24, !5, i64 28}
!12 = !{!11, !5, i64 0}
!13 = !{!11, !10, i64 16}
!14 = !{!"p1 _ZTS11Rwr_Man4_t_", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTS10stmm_table", !8, i64 0}
!21 = !{!"Rwr_Man5_t_", !20, i64 0, !20, i64 8}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !20, i64 8}
!24 = !{!10, !10, i64 0}
!25 = !{!11, !9, i64 8}
!26 = !{!"short", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = distinct !{!28, !17, !33, !34}
!29 = distinct !{!29, !17, !34, !33}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = !{!"double", !4, i64 0}
!44 = !{!"any p2 pointer", !8, i64 0}
!45 = !{!"p2 _ZTS16stmm_table_entry", !44, i64 0}
!46 = !{!"stmm_table", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !43, i64 32, !45, i64 40, !8, i64 48}
!47 = !{!46, !5, i64 20}
!48 = !{!"long", !4, i64 0}
!49 = !{!"timespec", !48, i64 0, !48, i64 8}
!50 = !{!49, !48, i64 0}
!51 = !{!49, !48, i64 8}
!52 = distinct !{!52, i1 false, !"vprintf"}
!53 = distinct !{!53, !52, !"vprintf: argument 0"}
!54 = distinct !{null}
!55 = !{!53}
end_hunk_0
