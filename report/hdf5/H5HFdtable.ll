inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@H5HF_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [43 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5HFdtable.c\00", align 1
@__func__.H5HF__dtable_init = private unnamed_addr constant [18 x i8] c"H5HF__dtable_init\00", align 1
@H5E_RESOURCE_g = external local_unnamed_addr global i64, align 8
@H5E_NOSPACE_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"can't create doubling table block size table\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"can't create doubling table block offset table\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"can't create doubling table total direct block free space table\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"can't create doubling table max. direct block free space table\00", align 1
@MultiplyDeBruijnBitPosition = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 28, i32 2, i32 29, i32 14, i32 24, i32 3, i32 30, i32 22, i32 20, i32 15, i32 25, i32 17, i32 4, i32 8, i32 31, i32 27, i32 13, i32 23, i32 21, i32 19, i32 16, i32 7, i32 26, i32 12, i32 18, i32 6, i32 11, i32 5, i32 10, i32 9], align 16
@LogTable256 = internal unnamed_addr constant [256 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HF__dtable_init(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 5 uses
  %i.i = mul i64 %i.h, 125613361
  %i.j = lshr i64 %i.i, 27
  %i.k = and i64 %i.j, 31
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @MultiplyDeBruijnBitPosition, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.m, ptr %i.n, align 4, !tbaa !20
  %i.o = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.p = mul i32 %i.o, 125613361
  %i.q = lshr i32 %i.p, 27
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @MultiplyDeBruijnBitPosition, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = add i32 %i.t, %i.m                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.u, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !23
  %i.y = sub i32 %i.x, %i.u
  %i.z = add i32 %i.y, 1                          ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ad = mul i64 %i.ac, 125613361
  %i.ae = lshr i64 %i.ad, 27
  %i.af = and i64 %i.ae, 31
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @MultiplyDeBruijnBitPosition, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !26
  %reass.sub = sub i32 %i.ah, %i.m
  %i.aj = add i32 %reass.sub, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !27
  %i.al = zext i32 %i.o to i64
  %i.am = mul i64 %i.h, %i.al                     ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.am, ptr %i.an, align 8, !tbaa !28
  %i.ao = add i32 %i.ah, 7
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !29
  %i.ar = zext i32 %i.z to i64                    ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 3                ; 4 uses
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #7 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.at, ptr %i.au, align 8, !tbaa !30
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !31
  %i.ax = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !31
  %i.ay = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__dtable_init, i32 noundef 100, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.as) #7 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !32
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !31
  %i.bd = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !31
  %i.be = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__dtable_init, i32 noundef 102, i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.as) #7 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !33
  %i.bh = icmp eq ptr %i.bf, null
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !31
  %i.bj = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !31
  %i.bk = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__dtable_init, i32 noundef 106, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.as) #7 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !34
  %i.bn = icmp eq ptr %i.bl, null
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !31
  %i.bp = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !31
  %i.bq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__dtable_init, i32 noundef 109, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  store i64 %i.h, ptr %i.at, align 8, !tbaa !31
  store i64 0, ptr %i.az, align 8, !tbaa !31
  %i.br = icmp ugt i32 %i.z, 1
  br i1 %i.br, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bs = add nsw i64 %i.ar, -1                   ; 3 uses
  %xtraiter = and i64 %i.bs, 1
  %i.bt = icmp eq i32 %i.z, 2
  br i1 %i.bt, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bs, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04752 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ] ; 4 uses
  %.04851 = phi i64 [ %i.am, %.lr.ph.preheader.new ], [ %i.ca, %.lr.ph ] ; 3 uses
  %.04950 = phi i64 [ %i.h, %.lr.ph.preheader.new ], [ %i.bz, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04752
  store i64 %.04950, ptr %i.bu, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04752
  store i64 %.04851, ptr %i.bv, align 8, !tbaa !31
  %i.bw = shl i64 %.04950, 1
  %i.bx = shl i64 %.04851, 1
  %1 = add nuw nsw i64 %.04752, 1                 ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %1
  store i64 %i.bw, ptr %2, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %1
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !31
  %i.bz = shl i64 %.04950, 2                      ; 2 uses
  %i.ca = shl i64 %.04851, 2                      ; 2 uses
  %i.cb = add nuw nsw i64 %.04752, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !35

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04752.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.cb, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.04851.epil.init = phi i64 [ %i.am, %.lr.ph.preheader ], [ %i.ca, %.loopexit.loopexit.unr-lcssa ]
  %.04950.epil.init = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.bz, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod55 = trunc i64 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04752.epil.init
  store i64 %.04950.epil.init, ptr %i.cc, align 8, !tbaa !31
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04752.epil.init
  store i64 %.04851.epil.init, ptr %i.cd, align 8, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.j, %bb.c, %bb.e, %bb.g, %bb.i, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.i ], [ 0, %bb.a ], [ 0, %bb.j ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph.epil.preheader ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5HF__dtable_lookup(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.s, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = udiv i64 %1, %i.k
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 32                          ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = lshr i64 %1, 48                          ; 2 uses
  %.not26.i = icmp eq i64 %i.n, 0
  br i1 %.not26.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = lshr i64 %1, 56                          ; 2 uses
  %.not28.i = icmp eq i64 %i.o, 0
  br i1 %.not28.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37
  %i.r = zext i8 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, 56
  br label %H5VM_log2_gen.exit

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %i.v, 48
  br label %H5VM_log2_gen.exit

bb.i:                                             ; preds = %bb.e
  %i.x = lshr i64 %1, 40                          ; 2 uses
  %.not27.i = icmp eq i64 %i.x, 0
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, 40
  br label %H5VM_log2_gen.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.m
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ae, 32
  br label %H5VM_log2_gen.exit

bb.l:                                             ; preds = %bb.d
  %i.ag = lshr i64 %1, 16                         ; 2 uses
  %.not23.i = icmp eq i64 %i.ag, 0
  br i1 %.not23.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = lshr i64 %1, 24                         ; 2 uses
  %.not25.i = icmp eq i64 %i.ah, 0
  br i1 %.not25.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ak, 24
  br label %H5VM_log2_gen.exit

bb.o:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.ao, 16
  br label %H5VM_log2_gen.exit

bb.p:                                             ; preds = %bb.l
  %i.aq = lshr i64 %1, 8                          ; 2 uses
  %.not24.i = icmp eq i64 %i.aq, 0
  br i1 %.not24.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, 8
  br label %H5VM_log2_gen.exit

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = zext i8 %i.aw to i32
  br label %H5VM_log2_gen.exit

H5VM_log2_gen.exit:                               ; preds = %bb.g, %bb.h, %bb.j, %bb.k, %bb.n, %bb.o, %bb.q, %bb.r
  %.0.i = phi i32 [ %i.ap, %bb.o ], [ %i.w, %bb.h ], [ %i.af, %bb.k ], [ %i.s, %bb.g ], [ %i.ab, %bb.j ], [ %i.al, %bb.n ], [ %i.au, %bb.q ], [ %i.ax, %bb.r ] ; 2 uses
  %i.ay = zext nneg i32 %.0.i to i64
  %.neg = shl nsw i64 -1, %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !22
  %i.bb = sub i32 %.0.i, %i.ba
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %2, align 4, !tbaa !19
  %i.bd = add i64 %.neg, %1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30
  %i.bg = zext i32 %i.bc to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !31
  %i.bj = udiv i64 %i.bd, %i.bi
  br label %.sink.split

.sink.split:                                      ; preds = %H5VM_log2_gen.exit, %bb.c
  %.sink22 = phi i64 [ %i.l, %bb.c ], [ %i.bj, %H5VM_log2_gen.exit ]
  %i.bk = trunc i64 %.sink22 to i32
  store i32 %i.bk, ptr %3, align 4, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @H5HF__dtable_dest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = tail call ptr @H5MM_xfree(ptr noundef %i.h) #8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = tail call ptr @H5MM_xfree(ptr noundef %i.k) #8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.o = tail call ptr @H5MM_xfree(ptr noundef %i.n) #8 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = tail call ptr @H5MM_xfree(ptr noundef %i.q) #8 ; 0 uses
  br label %bb.c
end_hunk_0
