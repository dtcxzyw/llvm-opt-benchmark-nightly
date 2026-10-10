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
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 4 uses
  %i.g = zext nneg i32 %i.c to i64                ; 4 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %bound0 = icmp ult ptr %i.a, %i.j
  %bound1 = icmp ult ptr %i.f, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = phi i64 [ 3, %vector.ph ], [ %i.x, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi78 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !16, !alias.scope !36 ; 3 uses
  %wide.load83 = load <4 x i32>, ptr %i.m, align 4, !tbaa !16, !alias.scope !36 ; 3 uses
  %i.n = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi81, <4 x i32> %wide.load) ; 2 uses
  %i.o = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi82, <4 x i32> %wide.load83) ; 2 uses
  %i.p = add <4 x i32> %wide.load, %vec.phi79     ; 2 uses
  %i.q = add <4 x i32> %wide.load83, %vec.phi80   ; 2 uses
  %i.r = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.s = icmp sgt <4 x i32> %wide.load83, zeroinitializer
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = add <4 x i32> %vec.phi, %i.t             ; 2 uses
  %i.w = add <4 x i32> %vec.phi78, %i.u           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = add nuw i64 %i.k, 8
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %i.z = trunc i64 %i.k to i32
  %i.aa = add i32 %i.z, 5
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !16, !alias.scope !39, !noalias !36
  %bin.rdx = add <4 x i32> %i.w, %i.v
  %i.ab = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx84 = add <4 x i32> %i.q, %i.p
  %i.ac = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.o)
  %i.ad = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.045.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ab, %middle.block ]
  %.02444.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ac, %middle.block ]
  %.02743.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.045 = phi i32 [ %.1, %scalar.ph ], [ %.045.ph, %scalar.ph.preheader ]
  %.02444 = phi i32 [ %i.ag, %scalar.ph ], [ %.02444.ph, %scalar.ph.preheader ]
  %.02743 = phi i32 [ %spec.select, %scalar.ph ], [ %.02743.ph, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 3 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.02743, i32 %i.af) ; 2 uses
  %i.ag = add nsw i32 %i.af, %.02444              ; 2 uses
  %i.ah = icmp sgt i32 %i.af, 0
  %i.ai = zext i1 %i.ah to i32
  %.1 = add nuw nsw i32 %.045, %i.ai              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !16
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.ak, label %scalar.ph, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.027.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %middle.block ], [ %i.ag, %scalar.ph ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %middle.block ], [ %.1, %scalar.ph ] ; 2 uses
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.024.lcssa) ; 0 uses
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.0.lcssa) ; 0 uses
  %i.an = add nuw i32 %.027.lcssa, 1
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %calloc = call ptr @calloc(i64 1, i64 %i.ap)    ; 5 uses
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #20 ; 6 uses
  %i.ar = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !12 ; 4 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13 ; 3 uses
  %i.aw = zext nneg i32 %i.as to i64              ; 2 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %i.as, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph50.new

.lr.ph50.new:                                     ; preds = %.lr.ph50
  %unroll_iter = and i64 %i.aw, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph50.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph50.new ], [ %indvars.iv.next67.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph50.new ], [ %niter.next.1, %bb.b ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv66
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !16
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ba
  %i.bf = trunc nuw nsw i64 %indvars.iv66 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !16
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next67
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !16
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !16
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bi
  %i.bn = trunc nuw nsw i64 %indvars.iv.next67 to i32
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !16
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge51.loopexit.unr-lcssa, label %bb.b, !llvm.loop !33

._crit_edge51.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge51, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge51.loopexit.unr-lcssa, %.lr.ph50
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next67.1, %._crit_edge51.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i32 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod94)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv66.epil.init
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !16
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bq
  %i.bv = trunc nuw nsw i64 %indvars.iv66.epil.init to i32
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !16
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %.epil.preheader, %._crit_edge51.loopexit.unr-lcssa, %._crit_edge
  %i.bw = sub nsw i32 2288, %.0.lcssa
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 0, i32 noundef %i.bw) ; 0 uses
  %.not52 = icmp slt i32 %.027.lcssa, 1
  br i1 %.not52, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge51, %bb.d
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.d ], [ 1, %._crit_edge51 ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv69
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !16 ; 2 uses
  %.not41 = icmp eq i32 %i.bz, 0
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph55
  %i.ca = trunc nuw nsw i64 %indvars.iv69 to i32
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ca, i32 noundef %i.bz) ; 0 uses
  %i.cc = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv69
  tail call void @Extra_PrintBinary(ptr noundef %i.cc, ptr noundef nonnull %i.cd, i32 noundef 16) #19
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph55, %bb.c
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %i.ao
  br i1 %exitcond.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !34

._crit_edge56:                                    ; preds = %bb.d, %._crit_edge51
  tail call void @free(ptr noundef %calloc) #19
  %.not39 = icmp eq ptr %i.aq, null
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge56
  tail call void @free(ptr noundef nonnull %i.aq) #19
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge56, %bb.e
  %i.ce = tail call noalias ptr @fopen(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.cf = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !12
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %bb.f, %bb.h
  %i.ci = phi ptr [ %i.cy, %bb.h ], [ %i.cf, %bb.f ] ; 2 uses
  %.02559 = phi i32 [ %.126, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %storemerge4058 = phi i32 [ %i.da, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !13
  %i.cl = sext i32 %storemerge4058 to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !16
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph61
  call void @Extra_PrintHex(ptr noundef %i.ce, ptr noundef nonnull %i.a, i32 noundef 4) #19
  %i.cp = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !13
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !16
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !16
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.7, i32 noundef %i.cv) #19 ; 0 uses
  %i.cx = add nsw i32 %.02559, 1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16
  %.pre72 = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph61, %bb.g
  %i.cy = phi ptr [ %.pre72, %bb.g ], [ %i.ci, %.lr.ph61 ] ; 2 uses
  %i.cz = phi i32 [ %.pre, %bb.g ], [ %storemerge4058, %.lr.ph61 ]
  %.126 = phi i32 [ %i.cx, %bb.g ], [ %.02559, %.lr.ph61 ] ; 2 uses
  %i.da = add nsw i32 %i.cz, 1                    ; 3 uses
  store i32 %i.da, ptr %i.a, align 4, !tbaa !16
  %i.db = load i32, ptr %i.cy, align 8, !tbaa !12
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph61, label %._crit_edge62, !llvm.loop !35

._crit_edge62:                                    ; preds = %bb.h, %bb.f
  %.025.lcssa = phi i32 [ 0, %bb.f ], [ %.126, %bb.h ]
  %i.dd = call i32 @fclose(ptr noundef %i.ce)     ; 0 uses
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.025.lcssa, ptr noundef nonnull @.str.5) ; 0 uses
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
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52
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
  br i1 %.not, label %._crit_edge, label %.critedge, !llvm.loop !40

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
  br i1 %.not79, label %._crit_edge119, label %.critedge2, !llvm.loop !41

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
  br i1 %exitcond.not, label %._crit_edge123, label %.lr.ph, !llvm.loop !42

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
  %i.an = load i32, ptr %i.am, align 4, !tbaa !52 ; 2 uses
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
end_hunk_0
