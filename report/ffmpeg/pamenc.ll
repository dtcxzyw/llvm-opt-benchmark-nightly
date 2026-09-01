Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pamenc?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"pam\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PAM (Portable AnyMap) image\00", align 1
@.compoundliteral = internal constant [10 x i32] [i32 2, i32 26, i32 34, i32 104, i32 8, i32 56, i32 29, i32 109, i32 10, i32 -1], align 4
@ff_pam_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 66, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @pam_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"BLACKANDWHITE\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"GRAYSCALE\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"GRAYSCALE_ALPHA\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"RGB_ALPHA\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"P7\0AWIDTH %d\0AHEIGHT %d\0ADEPTH %d\0AMAXVAL %d\0ATUPLTYPE %s\0AENDHDR\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @pam_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9    ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  switch i32 %i.g, label %bb.n [
    i32 10, label %bb.j
    i32 8, label %bb.b
    i32 29, label %bb.c
    i32 56, label %bb.d
    i32 109, label %bb.e
    i32 2, label %bb.f
    i32 26, label %bb.g
    i32 34, label %bb.h
    i32 104, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %i.e, 1
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.i = shl nsw i32 %i.e, 1
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.j = shl nsw i32 %i.e, 2
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = mul nsw i32 %i.e, 3
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.l = shl nsw i32 %i.e, 2
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.m = mul nsw i32 %i.e, 6
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.n = shl nsw i32 %i.e, 3
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.060 = phi i32 [ %i.n, %bb.i ], [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %i.e, %bb.a ] ; 2 uses
  %.059 = phi i32 [ 4, %bb.i ], [ 1, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 3, %bb.h ], [ 1, %bb.a ]
  %.058 = phi i32 [ 65535, %bb.i ], [ 255, %bb.b ], [ 65535, %bb.c ], [ 255, %bb.d ], [ 65535, %bb.e ], [ 255, %bb.f ], [ 255, %bb.g ], [ 65535, %bb.h ], [ 1, %bb.a ]
  %.054 = phi ptr [ @.str.6, %bb.i ], [ @.str.3, %bb.b ], [ @.str.3, %bb.c ], [ @.str.4, %bb.d ], [ @.str.4, %bb.e ], [ @.str.5, %bb.f ], [ @.str.6, %bb.g ], [ @.str.5, %bb.h ], [ @.str.2, %bb.a ]
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.7, i32 noundef %i.e, i32 noundef %i.c, i32 noundef %.059, i32 noundef %.058, ptr noundef nonnull %.054) #5 ; 2 uses
  %i.p = mul nsw i32 %.060, %i.c
  %i.q = add nsw i32 %i.o, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = tail call i32 @ff_get_encode_buffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.r, i32 noundef 0) #5 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %i.w = sext i32 %i.o to i64                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 16 %i.a, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !33     ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !34  ; 3 uses
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !30
  %i.ac = icmp eq i32 %i.ab, 10
  %i.ad = icmp sgt i32 %i.c, 0                    ; 2 uses
  br i1 %i.ac, label %.preheader65, label %.preheader66

.preheader66:                                     ; preds = %bb.k
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader66
  %i.ae = sext i32 %.060 to i64                   ; 10 uses
  %i.af = sext i32 %i.aa to i64                   ; 5 uses
  %xtraiter = and i32 %i.c, 3                     ; 3 uses
  %i.ag = icmp ult i32 %i.c, 4
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.c, 2147483644
  br label %bb.l

.preheader65:                                     ; preds = %bb.k
  br i1 %i.ad, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader65
  %i.ah = icmp sgt i32 %i.e, 0
  %i.ai = sext i32 %i.aa to i64                   ; 2 uses
  br i1 %i.ah, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %4 = add nsw i32 %i.e, -1
  %5 = zext nneg i32 %i.e to i64
  %6 = lshr i32 %4, 3
  %7 = zext nneg i32 %6 to i64
  %8 = add nsw i32 %i.c, -1
  %9 = zext i32 %8 to i64
  %10 = mul nsw i64 %i.ai, %9
  %11 = getelementptr i8, ptr %i.y, i64 %10
  %12 = getelementptr i8, ptr %11, i64 %7
  %scevgep85 = getelementptr i8, ptr %12, i64 1
  %13 = zext nneg i32 %i.e to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  %stride.check = icmp slt i32 %i.aa, 0
  %n.vec = and i64 %13, 2147483640                ; 4 uses
  %14 = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %13
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05576 = phi ptr [ %i.ax, %._crit_edge ], [ %i.y, %.preheader.preheader ] ; 5 uses
  %.05675 = phi ptr [ %.lcssa, %._crit_edge ], [ %i.x, %.preheader.preheader ] ; 6 uses
  %.06174 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.05675, i64 %5
  %bound0 = icmp ult ptr %.05675, %scevgep85
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %15 = or i1 %found.conflict, %stride.check
  br i1 %15, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %16 = getelementptr i8, ptr %.05675, i64 %n.vec ; 2 uses
  br label %.preheader.new

.preheader.new:                                   ; preds = %.preheader.new, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %.preheader.new ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %.preheader.new ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.05675, i64 %index
  %17 = lshr exact i64 %index, 3
  %18 = and i64 %17, 536870911
  %i.ak = getelementptr inbounds nuw i8, ptr %.05576, i64 %18
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35, !alias.scope !36
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %19 = trunc <8 x i32> %vec.ind to <8 x i8>
  %20 = and <8 x i8> %19, splat (i8 7)
  %21 = xor <8 x i8> %20, splat (i8 7)
  %22 = lshr <8 x i8> %broadcast.splat, %21
  %23 = and <8 x i8> %22, splat (i8 1)
  store <8 x i8> %23, ptr %i.aj, align 1, !tbaa !35, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i32> %vec.ind, splat (i32 8)
  %niter94.ncmp.1 = icmp eq i64 %index.next, %n.vec
  br i1 %niter94.ncmp.1, label %middle.block, label %.preheader.new, !llvm.loop !41

middle.block:                                     ; preds = %.preheader.new
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.072.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %14, %middle.block ] ; 6 uses
  %.15771.ph = phi ptr [ %.05675, %vector.memcheck ], [ %.05675, %.preheader ], [ %16, %middle.block ] ; 3 uses
  %24 = sub i32 %i.e, %.072.ph
  %.neg = add i32 %.072.ph, 1
  %xtraiter90 = and i32 %24, 1
  %lcmp.mod91.not = icmp eq i32 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %._crit_edge.unr-lcssa, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %25 = lshr i32 %.072.ph, 3
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %.05576, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !35
  %29 = zext i8 %28 to i32
  %30 = and i32 %.072.ph, 7
  %31 = xor i32 %30, 7
  %32 = lshr i32 %29, %31
  %33 = trunc nuw i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds nuw i8, ptr %.15771.ph, i64 1 ; 2 uses
  store i8 %34, ptr %.15771.ph, align 1, !tbaa !35
  %36 = add nuw nsw i32 %.072.ph, 1
  br label %._crit_edge.unr-lcssa

._crit_edge.unr-lcssa:                            ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa87.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %35, %scalar.ph.prol ]
  %.072.unr = phi i32 [ %.072.ph, %scalar.ph.preheader ], [ %36, %scalar.ph.prol ]
  %.15771.unr = phi ptr [ %.15771.ph, %scalar.ph.preheader ], [ %35, %scalar.ph.prol ]
  %37 = icmp eq i32 %i.e, %.neg
  br i1 %37, label %._crit_edge, label %.epil.preheader87

.epil.preheader87:                                ; preds = %._crit_edge.unr-lcssa, %.epil.preheader87
  %.072.epil.init = phi i32 [ %50, %.epil.preheader87 ], [ %.072.unr, %._crit_edge.unr-lcssa ] ; 4 uses
  %.15771.epil.init = phi ptr [ %i.aw, %.epil.preheader87 ], [ %.15771.unr, %._crit_edge.unr-lcssa ] ; 3 uses
  %38 = lshr i32 %.072.epil.init, 3
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %.05576, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !35
  %42 = zext i8 %41 to i32
  %43 = and i32 %.072.epil.init, 7
  %44 = xor i32 %43, 7
  %45 = lshr i32 %42, %44
  %46 = trunc nuw i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = getelementptr inbounds nuw i8, ptr %.15771.epil.init, i64 1
  store i8 %47, ptr %.15771.epil.init, align 1, !tbaa !35
  %49 = add nuw nsw i32 %.072.epil.init, 1        ; 2 uses
  %i.am = lshr i32 %49, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.05576, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = and i32 %49, 7
  %i.as = xor i32 %i.ar, 7
  %i.at = lshr i32 %i.aq, %i.as
  %i.au = trunc nuw i32 %i.at to i8
  %i.av = and i8 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.15771.epil.init, i64 2 ; 2 uses
  store i8 %i.av, ptr %48, align 1, !tbaa !35
  %50 = add nuw nsw i32 %.072.epil.init, 2        ; 2 uses
  %exitcond78.not.1 = icmp eq i32 %50, %i.e
  br i1 %exitcond78.not.1, label %._crit_edge, label %.epil.preheader87, !llvm.loop !45

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader87, %middle.block
  %.lcssa = phi ptr [ %16, %middle.block ], [ %.lcssa87.unr, %._crit_edge.unr-lcssa ], [ %i.aw, %.epil.preheader87 ]
  %i.ax = getelementptr inbounds i8, ptr %.05576, i64 %i.ai
  %i.ay = add nuw nsw i32 %.06174, 1              ; 2 uses
  %exitcond79.not = icmp eq i32 %i.ay, %i.c
  br i1 %exitcond79.not, label %.loopexit, label %.preheader, !llvm.loop !46

bb.l:                                             ; preds = %bb.l, %.lr.ph.new
  %.170 = phi ptr [ %i.y, %.lr.ph.new ], [ %i.bg, %bb.l ] ; 2 uses
  %.269 = phi ptr [ %i.x, %.lr.ph.new ], [ %i.bf, %bb.l ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.269, ptr align 1 %.170, i64 %i.ae, i1 false)
  %i.az = getelementptr inbounds i8, ptr %.269, i64 %i.ae ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.170, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.ba, i64 %i.ae, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ae ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bc, i64 %i.ae, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.ae ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.be, i64 %i.ae, i1 false)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.ae ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.af ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit85.unr-lcssa, label %bb.l, !llvm.loop !47

.loopexit.loopexit85.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit85.unr-lcssa, %.lr.ph
  %.170.epil.init = phi ptr [ %i.y, %.lr.ph ], [ %i.bg, %.loopexit.loopexit85.unr-lcssa ]
  %.269.epil.init = phi ptr [ %i.x, %.lr.ph ], [ %i.bf, %.loopexit.loopexit85.unr-lcssa ]
  %lcmp.mod86 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.170.epil = phi ptr [ %.170.epil.init, %.epil.preheader ], [ %i.bi, %bb.m ] ; 2 uses
  %.269.epil = phi ptr [ %.269.epil.init, %.epil.preheader ], [ %i.bh, %bb.m ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.269.epil, ptr align 1 %.170.epil, i64 %i.ae, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.269.epil, i64 %i.ae
  %i.bi = getelementptr inbounds i8, ptr %.170.epil, i64 %i.af
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.m, !llvm.loop !48

.loopexit:                                        ; preds = %.loopexit.loopexit85.unr-lcssa, %bb.m, %._crit_edge, %.preheader66, %.preheader65, %.preheader.lr.ph
  store i32 1, ptr %3, align 4, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.a, %.loopexit
  %.063 = phi i32 [ 0, %.loopexit ], [ -1, %bb.a ], [ %i.s, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.063
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 116}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 112}
!30 = !{!10, !6, i64 136}
!31 = !{!32, !16, i64 24}
!32 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!33 = !{!16, !16, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !42, !43, !44}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !42, !43}
!46 = distinct !{!46, !42}
!47 = distinct !{!47, !42}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
