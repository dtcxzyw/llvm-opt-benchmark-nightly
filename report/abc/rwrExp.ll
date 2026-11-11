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
@s_pManRwrExp5 = internal unnamed_addr global ptr null, align 8
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

; Function Attrs: nounwind uwtable
define void @Rwt_Man4ExploreStart() local_unnamed_addr #0 {
bb.a:
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 5 uses
  store i32 65536, ptr %calloc, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  tail call void @Extra_Truth4VarNPN(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null) #18
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = zext i32 %0 to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !29
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
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
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi78 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %0 = trunc i64 %index to i32
  %1 = add i32 %0, 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <4 x i32>, ptr %i.h, align 4, !tbaa !16 ; 3 uses
  %wide.load82 = load <4 x i32>, ptr %i.i, align 4, !tbaa !16 ; 3 uses
  %i.j = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi79, <4 x i32> %wide.load) ; 2 uses
  %i.k = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi80, <4 x i32> %wide.load82) ; 2 uses
  %i.l = add <4 x i32> %wide.load, %vec.phi77     ; 2 uses
  %i.m = add <4 x i32> %wide.load82, %vec.phi78   ; 2 uses
  %i.n = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.o = icmp sgt <4 x i32> %wide.load82, zeroinitializer
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = zext <4 x i1> %i.o to <4 x i32>
  %i.r = add <4 x i32> %vec.phi, %i.p             ; 2 uses
  %i.s = add <4 x i32> %vec.phi.a, %i.q           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  store i32 %1, ptr %i.a, align 4, !tbaa !16
  %bin.rdx = add <4 x i32> %i.s, %i.r
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx83 = add <4 x i32> %i.m, %i.l
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx83) ; 2 uses
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.j, <4 x i32> %i.k)
  %i.w = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.045.ph = phi i32 [ 0, %.lr.ph ], [ %i.u, %middle.block ]
  %.02444.ph = phi i32 [ 0, %.lr.ph ], [ %i.v, %middle.block ]
  %.02743.ph = phi i32 [ 0, %.lr.ph ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.045 = phi i32 [ %.1, %scalar.ph ], [ %.045.ph, %scalar.ph.preheader ]
  %.02444 = phi i32 [ %i.z, %scalar.ph ], [ %.02444.ph, %scalar.ph.preheader ]
  %.02743 = phi i32 [ %spec.select, %scalar.ph ], [ %.02743.ph, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !16   ; 3 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.02743, i32 %i.y) ; 2 uses
  %i.z = add nsw i32 %i.y, %.02444                ; 2 uses
  %i.aa = icmp sgt i32 %i.y, 0
  %i.ab = zext i1 %i.aa to i32
  %.1 = add nuw nsw i32 %.045, %i.ab              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !16
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.ad, label %scalar.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.027.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %middle.block ], [ %i.z, %scalar.ph ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %middle.block ], [ %.1, %scalar.ph ] ; 2 uses
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.024.lcssa) ; 0 uses
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.0.lcssa) ; 0 uses
  %i.ag = add nuw i32 %.027.lcssa, 1
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %calloc = tail call ptr @calloc(i64 1, i64 %i.ai) ; 5 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #19 ; 6 uses
  %i.ak = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !12 ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !13 ; 3 uses
  %i.ap = zext nneg i32 %i.al to i64              ; 2 uses
  %xtraiter = and i64 %i.ap, 1
  %i.aq = icmp eq i32 %i.al, 1
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph50.new

.lr.ph50.new:                                     ; preds = %.lr.ph50
  %unroll_iter = and i64 %i.ap, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph50.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph50.new ], [ %indvars.iv.next67.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph50.new ], [ %niter.next.1, %bb.b ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv66
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !16
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.at
  %i.ay = trunc nuw nsw i64 %indvars.iv66 to i32
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !16
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next67
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.bb
  %i.bg = trunc nuw nsw i64 %indvars.iv.next67 to i32
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !16
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge51.loopexit.unr-lcssa, label %bb.b, !llvm.loop !32

._crit_edge51.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge51, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge51.loopexit.unr-lcssa, %.lr.ph50
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next67.1, %._crit_edge51.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i32 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv66.epil.init
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !16
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.bj
  %i.bo = trunc nuw nsw i64 %indvars.iv66.epil.init to i32
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !16
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %.epil.preheader, %._crit_edge51.loopexit.unr-lcssa, %._crit_edge
  %i.bp = sub nsw i32 2288, %.0.lcssa
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 0, i32 noundef %i.bp) ; 0 uses
  %.not52 = icmp slt i32 %.027.lcssa, 1
  br i1 %.not52, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge51, %bb.d
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.d ], [ 1, %._crit_edge51 ] ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv69
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16 ; 2 uses
  %.not41 = icmp eq i32 %i.bs, 0
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph55
  %i.bt = trunc nuw nsw i64 %indvars.iv69 to i32
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bt, i32 noundef %i.bs) ; 0 uses
  %i.bv = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv69
  tail call void @Extra_PrintBinary(ptr noundef %i.bv, ptr noundef nonnull %i.bw, i32 noundef 16) #18
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph55, %bb.c
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %i.ah
  br i1 %exitcond.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !33

._crit_edge56:                                    ; preds = %bb.d, %._crit_edge51
  tail call void @free(ptr noundef %calloc) #18
  %.not39 = icmp eq ptr %i.aj, null
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge56
  tail call void @free(ptr noundef nonnull %i.aj) #18
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge56, %bb.e
  %i.bx = tail call noalias ptr @fopen(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.by = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !12
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %bb.f, %bb.h
  %i.cb = phi ptr [ %i.cr, %bb.h ], [ %i.by, %bb.f ] ; 2 uses
  %.02559 = phi i32 [ %.126, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %storemerge4058 = phi i32 [ %i.ct, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !13
  %i.ce = sext i32 %storemerge4058 to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !16
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph61
  call void @Extra_PrintHex(ptr noundef %i.bx, ptr noundef nonnull %i.a, i32 noundef 4) #18
  %i.ci = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !13
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !16
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !16
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.7, i32 noundef %i.co) #18 ; 0 uses
  %i.cq = add nsw i32 %.02559, 1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16
  %.pre72 = load ptr, ptr @s_pManRwrExp4, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph61, %bb.g
  %i.cr = phi ptr [ %.pre72, %bb.g ], [ %i.cb, %.lr.ph61 ] ; 2 uses
  %i.cs = phi i32 [ %.pre, %bb.g ], [ %storemerge4058, %.lr.ph61 ]
  %.126 = phi i32 [ %i.cq, %bb.g ], [ %.02559, %.lr.ph61 ] ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1                    ; 3 uses
  store i32 %i.ct, ptr %i.a, align 4, !tbaa !16
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !12
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph61, label %._crit_edge62, !llvm.loop !34

._crit_edge62:                                    ; preds = %bb.h, %bb.f
  %.025.lcssa = phi i32 [ 0, %bb.f ], [ %.126, %bb.h ]
  %i.cw = call i32 @fclose(ptr noundef %i.bx)     ; 0 uses
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.025.lcssa, ptr noundef nonnull @.str.5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

end_hunk_0
