Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec75?download=true
inline.NumInlined: 24
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@If_CutPerformCheck75__.Counter = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"44\00", align 1
@s_Truths6Neg = internal unnamed_addr constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16
@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@s_PMasks = internal unnamed_addr constant [5 x [3 x i64]] [[3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]], align 16

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Dau_DsdCheckDecExist_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  %i.e = icmp eq i8 %i.d, 33
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !8
  %.pre = load i8, ptr %i.f, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i8 [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %.promoted = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = add i8 %i.g, -65
  %or.cond79 = icmp ult i8 %i.h, 6
  %i.i = add i8 %i.g, -48
  %or.cond7580 = icmp ult i8 %i.i, 10
  %or.cond7781 = or i1 %or.cond79, %or.cond7580
  br i1 %or.cond7781, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %bb.c, %.critedge
  %i.j = phi ptr [ %i.k, %.critedge ], [ %.promoted, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !8
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11    ; 3 uses
  %i.m = add i8 %i.l, -65
  %or.cond = icmp ult i8 %i.m, 6
  %i.n = add i8 %i.l, -48
  %or.cond75 = icmp ult i8 %i.n, 10
  %or.cond77 = or i1 %or.cond, %or.cond75
  br i1 %or.cond77, label %.critedge, label %.critedge2, !llvm.loop !12

.critedge2:                                       ; preds = %.critedge, %bb.c
  %.lcssa78 = phi ptr [ %.promoted, %bb.c ], [ %i.k, %.critedge ] ; 4 uses
  %.lcssa = phi i8 [ %i.g, %bb.c ], [ %i.l, %.critedge ] ; 2 uses
  %i.o = add i8 %.lcssa, -97
  %or.cond76 = icmp ult i8 %i.o, 26
  br i1 %or.cond76, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge2
  %i.p = load i32, ptr %3, align 4, !tbaa !14
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %3, align 4, !tbaa !14
  br label %bb.m

bb.e:                                             ; preds = %.critedge2
  switch i8 %.lcssa, label %bb.m [
    i8 40, label %bb.f
    i8 91, label %bb.f
    i8 60, label %bb.l
    i8 123, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.r = ptrtoint ptr %.lcssa78 to i64
  %i.s = ptrtoint ptr %0 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 2 uses
  %storemerge7386 = getelementptr inbounds nuw i8, ptr %.lcssa78, i64 1 ; 2 uses
  store ptr %storemerge7386, ptr %1, align 8, !tbaa !8
  %i.y = icmp ult ptr %storemerge7386, %i.x
  br i1 %i.y, label %.lr.ph90, label %._crit_edge101

.lr.ph90:                                         ; preds = %bb.f, %.lr.ph90
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph90 ], [ 0, %bb.f ] ; 5 uses
  %.06687 = phi i32 [ %i.ab, %.lr.ph90 ], [ 0, %bb.f ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.aa = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.z)
  %i.ab = or i32 %i.aa, %.06687                   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ad = load i32, ptr %3, align 4, !tbaa !14
  %i.ae = add nsw i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %3, align 4, !tbaa !14
  %i.af = load ptr, ptr %1, align 8, !tbaa !8
  %storemerge73 = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  store ptr %storemerge73, ptr %1, align 8, !tbaa !8
  %i.ag = icmp ult ptr %storemerge73, %i.x
  br i1 %i.ag, label %.lr.ph90, label %._crit_edge91, !llvm.loop !15

._crit_edge91:                                    ; preds = %.lr.ph90
  %i.ah = trunc nuw i64 %indvars.iv.next to i32
  %i.ai = shl nuw i32 1, %i.ah                    ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %.preheader.us.preheader, label %._crit_edge101

.preheader.us.preheader:                          ; preds = %._crit_edge91
  %4 = add nuw i64 %indvars.iv, 1                 ; 2 uses
  %i.ak = icmp eq i64 %indvars.iv, 0
  %unroll_iter = and i64 %4, -2
  %i.al = and i64 %indvars.iv, 1
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  %lcmp.mod144 = trunc i64 %4 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge97.us
  %.065100.us = phi i32 [ %i.bh, %._crit_edge97.us ], [ 1, %.preheader.us.preheader ] ; 4 uses
  %.16799.us = phi i32 [ %.2.us, %._crit_edge97.us ], [ %i.ab, %.preheader.us.preheader ]
  br i1 %i.ak, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.j
  %indvars.iv110 = phi i64 [ %indvars.iv.next111.1, %bb.j ], [ 0, %.preheader.us ] ; 4 uses
  %.06295.us = phi i32 [ %.1.us.1, %bb.j ], [ 0, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.j ], [ 0, %.preheader.us ]
  %i.am = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.an, %.065100.us
  %.not.us = icmp eq i32 %i.ao, 0
  br i1 %.not.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.us.new
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv110
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !14
  %i.ar = add nsw i32 %i.aq, %.06295.us
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.us.new
  %.1.us = phi i32 [ %i.ar, %bb.g ], [ %.06295.us, %.preheader.us.new ] ; 2 uses
  %indvars.iv.next111 = or disjoint i64 %indvars.iv110, 1 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next111 to i32
  %i.at = shl nuw i32 1, %i.as
  %i.au = and i32 %i.at, %.065100.us
  %.not.us.1 = icmp eq i32 %i.au, 0
  br i1 %.not.us.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next111
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %i.ax = add nsw i32 %i.aw, %.1.us
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.us.1 = phi i32 [ %i.ax, %bb.i ], [ %.1.us, %bb.h ] ; 3 uses
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge97.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !16

._crit_edge97.us.unr-lcssa:                       ; preds = %bb.j
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge97.us

.epil.preheader:                                  ; preds = %._crit_edge97.us.unr-lcssa, %.preheader.us
  %indvars.iv110.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next111.1, %._crit_edge97.us.unr-lcssa ] ; 2 uses
  %.06295.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %.1.us.1, %._crit_edge97.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.ay = trunc nuw nsw i64 %indvars.iv110.epil.init to i32
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = and i32 %i.az, %.065100.us
  %.not.us.epil = icmp eq i32 %i.ba, 0
  br i1 %.not.us.epil, label %._crit_edge97.us, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv110.epil.init
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bd = add nsw i32 %i.bc, %.06295.us.epil.init
  br label %._crit_edge97.us

._crit_edge97.us:                                 ; preds = %.epil.preheader, %bb.k, %._crit_edge97.us.unr-lcssa
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge97.us.unr-lcssa ], [ %i.bd, %bb.k ], [ %.06295.us.epil.init, %.epil.preheader ] ; 2 uses
  %i.be = icmp sgt i32 %.1.us.lcssa, 1
  %i.bf = shl nuw i32 1, %.1.us.lcssa
  %i.bg = select i1 %i.be, i32 %i.bf, i32 0
  %.2.us = or i32 %i.bg, %.16799.us               ; 2 uses
  %i.bh = add nuw nsw i32 %.065100.us, 1          ; 2 uses
  %exitcond113.not = icmp eq i32 %i.bh, %i.ai
  br i1 %exitcond113.not, label %._crit_edge101, label %.preheader.us, !llvm.loop !17

._crit_edge101:                                   ; preds = %._crit_edge97.us, %bb.f, %._crit_edge91
  %.167.lcssa = phi i32 [ %i.ab, %._crit_edge91 ], [ 0, %bb.f ], [ %.2.us, %._crit_edge97.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.m

bb.l:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bi = ptrtoint ptr %.lcssa78 to i64
  %i.bj = ptrtoint ptr %0 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn ; 2 uses
  %storemerge83 = getelementptr inbounds nuw i8, ptr %.lcssa78, i64 1 ; 2 uses
  store ptr %storemerge83, ptr %1, align 8, !tbaa !8
  %i.bp = icmp ult ptr %storemerge83, %i.bo
  br i1 %i.bp, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.l
  %.pre115 = load i32, ptr %3, align 4, !tbaa !14
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.084 = phi i32 [ %i.br, %.lr.ph ], [ 0, %bb.l ]
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.bq = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.b)
  %i.br = or i32 %i.bq, %.084                     ; 2 uses
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !14
  %i.bt = load i32, ptr %3, align 4, !tbaa !14
  %i.bu = add nsw i32 %i.bt, %i.bs                ; 2 uses
  store i32 %i.bu, ptr %3, align 4, !tbaa !14
  %i.bv = load ptr, ptr %1, align 8, !tbaa !8
  %storemerge = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  store ptr %storemerge, ptr %1, align 8, !tbaa !8
  %i.bw = icmp ult ptr %storemerge, %i.bo
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %i.bx = phi i32 [ %.pre115, %.._crit_edge_crit_edge ], [ %i.bu, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.._crit_edge_crit_edge ], [ %i.br, %.lr.ph ]
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = or i32 %i.by, %.0.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %._crit_edge, %._crit_edge101, %bb.d
  %.068 = phi i32 [ 0, %bb.d ], [ %.167.lcssa, %._crit_edge101 ], [ %i.bz, %._crit_edge ], [ 0, %bb.e ]
  ret i32 %.068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @Dau_DsdCheckDecExist(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %0) #7
  %i.g = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.0
}

declare ptr @Dau_DsdComputeMatches(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Dau_DsdCheckDecAndExist_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  %i.e = icmp eq i8 %i.d, 33
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !8
  %.pre = load i8, ptr %i.f, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i8 [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %.promoted = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = add i8 %i.g, -65
  %or.cond98 = icmp ult i8 %i.h, 6
  %i.i = add i8 %i.g, -48
  %or.cond9199 = icmp ult i8 %i.i, 10
  %or.cond93100 = or i1 %or.cond98, %or.cond9199
  br i1 %or.cond93100, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %bb.c, %.critedge
  %i.j = phi ptr [ %i.k, %.critedge ], [ %.promoted, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !8
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11    ; 3 uses
  %i.m = add i8 %i.l, -65
  %or.cond = icmp ult i8 %i.m, 6
  %i.n = add i8 %i.l, -48
  %or.cond91 = icmp ult i8 %i.n, 10
  %or.cond93 = or i1 %or.cond, %or.cond91
  br i1 %or.cond93, label %.critedge, label %.critedge2, !llvm.loop !19

.critedge2:                                       ; preds = %.critedge, %bb.c
  %.lcssa97 = phi ptr [ %.promoted, %bb.c ], [ %i.k, %.critedge ] ; 4 uses
  %.lcssa = phi i8 [ %i.g, %bb.c ], [ %i.l, %.critedge ] ; 2 uses
  %i.o = add i8 %.lcssa, -97
  %or.cond92 = icmp ult i8 %i.o, 26
  br i1 %or.cond92, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge2
  %i.p = load i32, ptr %3, align 4, !tbaa !14
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %3, align 4, !tbaa !14
  br label %bb.n

bb.e:                                             ; preds = %.critedge2
  switch i8 %.lcssa, label %bb.n [
    i8 40, label %bb.f
    i8 60, label %bb.m
    i8 123, label %bb.m
    i8 91, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.r = ptrtoint ptr %.lcssa97 to i64
  %i.s = ptrtoint ptr %0 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 2 uses
  %storemerge88105 = getelementptr inbounds nuw i8, ptr %.lcssa97, i64 1 ; 2 uses
  store ptr %storemerge88105, ptr %1, align 8, !tbaa !8
  %i.y = icmp ult ptr %storemerge88105, %i.x
  br i1 %i.y, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %bb.f, %.lr.ph110
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph110 ], [ 0, %bb.f ] ; 5 uses
  %.074108 = phi i32 [ %i.af, %.lr.ph110 ], [ 0, %bb.f ] ; 4 uses
  %.079106 = phi i32 [ %i.ab, %.lr.ph110 ], [ 0, %bb.f ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.aa = call i32 @Dau_DsdCheckDecAndExist_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.z)
  %i.ab = or i32 %i.aa, %.079106                  ; 4 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !14  ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1                    ; 3 uses
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nuw nsw i32 %.074108, %i.ae         ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !14
  %i.ah = add nsw i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %3, align 4, !tbaa !14
  %i.ai = load ptr, ptr %1, align 8, !tbaa !8
  %storemerge88 = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %storemerge88, ptr %1, align 8, !tbaa !8
  %i.aj = icmp ult ptr %storemerge88, %i.x
  br i1 %i.aj, label %.lr.ph110, label %._crit_edge111, !llvm.loop !20

._crit_edge111:                                   ; preds = %.lr.ph110
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge111
  %i.ak = trunc nuw i64 %indvars.iv.next to i32
  %i.al = shl nuw i32 1, %i.ak                    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %.preheader96.us.preheader, label %.preheader

.preheader96.us.preheader:                        ; preds = %bb.g
  %4 = add nuw i64 %indvars.iv, 1                 ; 2 uses
  %i.an = add nsw i32 %.074108, -1
  %i.ao = zext i1 %i.ad to i32
  %i.ap = add nsw i32 %i.an, %i.ao
  %i.aq = icmp eq i64 %indvars.iv, 0
  %unroll_iter = and i64 %4, -2
  %i.ar = and i64 %indvars.iv, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ar, 0
  %lcmp.mod178 = trunc i64 %4 to i1
  %xtraiter180 = and i32 %i.af, 3                 ; 3 uses
  %i.as = icmp ult i32 %i.ap, 3
  %unroll_iter184 = and i32 %i.af, 2147483644
  %lcmp.mod181.not = icmp eq i32 %xtraiter180, 0
  %lcmp.mod183 = icmp ne i32 %xtraiter180, 0
  br label %.preheader96.us

.preheader96.us:                                  ; preds = %.preheader96.us.preheader, %.loopexit95.us
  %.078123.us = phi i32 [ %i.cb, %.loopexit95.us ], [ 1, %.preheader96.us.preheader ] ; 4 uses
  %.180122.us = phi i32 [ %.3.us, %.loopexit95.us ], [ %i.ab, %.preheader96.us.preheader ] ; 3 uses
  br i1 %i.aq, label %.epil.preheader, label %.preheader96.us.new

.preheader96.us.new:                              ; preds = %.preheader96.us, %bb.k
  %indvars.iv140 = phi i64 [ %indvars.iv.next141.1, %bb.k ], [ 0, %.preheader96.us ] ; 4 uses
  %.073116.us = phi i32 [ %.1.us.1, %bb.k ], [ 0, %.preheader96.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.k ], [ 0, %.preheader96.us ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140
  %i.au = load i32, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader96.us.new
  %i.aw = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = and i32 %i.ax, %.078123.us
  %.not89.us = icmp eq i32 %i.ay, 0
  %i.az = select i1 %.not89.us, i32 0, i32 %i.au
  %spec.select.us = add nuw nsw i32 %i.az, %.073116.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader96.us.new
  %.1.us = phi i32 [ %.073116.us, %.preheader96.us.new ], [ %spec.select.us, %bb.h ] ; 2 uses
  %indvars.iv.next141 = or disjoint i64 %indvars.iv140, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next141
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !14 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = trunc nuw nsw i64 %indvars.iv.next141 to i32
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = and i32 %i.be, %.078123.us
  %.not89.us.1 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not89.us.1, i32 0, i32 %i.bb
  %spec.select.us.1 = add nuw nsw i32 %i.bg, %.1.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.us.1 = phi i32 [ %.1.us, %bb.i ], [ %spec.select.us.1, %bb.j ] ; 3 uses
  %indvars.iv.next141.1 = add nuw nsw i64 %indvars.iv140, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge118.us.unr-lcssa, label %.preheader96.us.new, !llvm.loop !21

.preheader94.us:                                  ; preds = %.preheader94.us.preheader, %.preheader94.us
  %.177121.us = phi i32 [ %i.bw, %.preheader94.us ], [ 0, %.preheader94.us.preheader ] ; 5 uses
  %.281120.us = phi i32 [ %i.bv, %.preheader94.us ], [ %.180122.us, %.preheader94.us.preheader ]
  %niter185 = phi i32 [ %niter185.next.3, %.preheader94.us ], [ 0, %.preheader94.us.preheader ]
  %i.bh = add nuw nsw i32 %.177121.us, %.1.us.lcssa
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = or i32 %i.bi, %.281120.us
  %i.bk = or disjoint i32 %.177121.us, 1
  %i.bl = add nuw nsw i32 %i.bk, %.1.us.lcssa
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = or i32 %i.bm, %i.bj
  %i.bo = or disjoint i32 %.177121.us, 2
  %i.bp = add nuw nsw i32 %i.bo, %.1.us.lcssa
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = or i32 %i.bq, %i.bn
  %i.bs = or disjoint i32 %.177121.us, 3
  %i.bt = add nuw nsw i32 %i.bs, %.1.us.lcssa
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = or i32 %i.bu, %i.br                     ; 3 uses
  %i.bw = add nuw nsw i32 %.177121.us, 4          ; 2 uses
  %niter185.next.3 = add i32 %niter185, 4         ; 2 uses
  %niter185.ncmp.3 = icmp eq i32 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %.loopexit95.us.loopexit.unr-lcssa, label %.preheader94.us, !llvm.loop !22

.loopexit95.us.loopexit.unr-lcssa:                ; preds = %.preheader94.us
  br i1 %lcmp.mod181.not, label %.loopexit95.us, label %.preheader94.us.epil.preheader

.preheader94.us.epil.preheader:                   ; preds = %.loopexit95.us.loopexit.unr-lcssa, %.preheader94.us.preheader
  %.177121.us.epil.init = phi i32 [ 0, %.preheader94.us.preheader ], [ %i.bw, %.loopexit95.us.loopexit.unr-lcssa ]
  %.281120.us.epil.init = phi i32 [ %.180122.us, %.preheader94.us.preheader ], [ %i.bv, %.loopexit95.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.preheader94.us.epil

.preheader94.us.epil:                             ; preds = %.preheader94.us.epil, %.preheader94.us.epil.preheader
  %.177121.us.epil = phi i32 [ %i.ca, %.preheader94.us.epil ], [ %.177121.us.epil.init, %.preheader94.us.epil.preheader ] ; 2 uses
  %.281120.us.epil = phi i32 [ %i.bz, %.preheader94.us.epil ], [ %.281120.us.epil.init, %.preheader94.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader94.us.epil ], [ 0, %.preheader94.us.epil.preheader ]
  %i.bx = add nuw nsw i32 %.177121.us.epil, %.1.us.lcssa
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = or i32 %i.by, %.281120.us.epil          ; 2 uses
  %i.ca = add nuw nsw i32 %.177121.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter180
  br i1 %epil.iter.cmp.not, label %.loopexit95.us, label %.preheader94.us.epil, !llvm.loop !23

.loopexit95.us:                                   ; preds = %.loopexit95.us.loopexit.unr-lcssa, %.preheader94.us.epil, %._crit_edge118.us
  %.3.us = phi i32 [ %.180122.us, %._crit_edge118.us ], [ %i.bv, %.loopexit95.us.loopexit.unr-lcssa ], [ %i.bz, %.preheader94.us.epil ] ; 2 uses
  %i.cb = add nuw nsw i32 %.078123.us, 1          ; 2 uses
  %exitcond144.not = icmp eq i32 %i.cb, %i.al
  br i1 %exitcond144.not, label %.preheader, label %.preheader96.us, !llvm.loop !25

._crit_edge118.us.unr-lcssa:                      ; preds = %bb.k
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge118.us

.epil.preheader:                                  ; preds = %._crit_edge118.us.unr-lcssa, %.preheader96.us
  %indvars.iv140.epil.init = phi i64 [ 0, %.preheader96.us ], [ %indvars.iv.next141.1, %._crit_edge118.us.unr-lcssa ] ; 2 uses
  %.073116.us.epil.init = phi i32 [ 0, %.preheader96.us ], [ %.1.us.1, %._crit_edge118.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140.epil.init
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.l, label %._crit_edge118.us

bb.l:                                             ; preds = %.epil.preheader
  %i.cf = trunc nuw nsw i64 %indvars.iv140.epil.init to i32
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = and i32 %i.cg, %.078123.us
  %.not89.us.epil = icmp eq i32 %i.ch, 0
  %i.ci = select i1 %.not89.us.epil, i32 0, i32 %i.cd
  %spec.select.us.epil = add nuw nsw i32 %i.ci, %.073116.us.epil.init
  br label %._crit_edge118.us

._crit_edge118.us:                                ; preds = %.epil.preheader, %bb.l, %._crit_edge118.us.unr-lcssa
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge118.us.unr-lcssa ], [ %.073116.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.l ] ; 6 uses
  %i.cj = icmp sgt i32 %.1.us.lcssa, 1
  br i1 %i.cj, label %.preheader94.us.preheader, label %.loopexit95.us

.preheader94.us.preheader:                        ; preds = %._crit_edge118.us
  br i1 %i.as, label %.preheader94.us.epil.preheader, label %.preheader94.us

.preheader:                                       ; preds = %.loopexit95.us, %bb.g
  %.180.lcssa = phi i32 [ %i.ab, %bb.g ], [ %.3.us, %.loopexit95.us ] ; 3 uses
  %i.ck = icmp samesign ugt i32 %i.af, 2
  br i1 %i.ck, label %.lr.ph127.preheader, label %.loopexit

.lr.ph127.preheader:                              ; preds = %.preheader
  %i.cl = add nsw i32 %.074108, -2
  %i.cm = zext i1 %i.ad to i32                    ; 2 uses
  %i.cn = add nsw i32 %i.cl, %i.cm                ; 2 uses
  %i.co = add nsw i32 %.074108, -3
  %i.cp = add nsw i32 %i.co, %i.cm
  %xtraiter188 = and i32 %i.cn, 7                 ; 3 uses
  %i.cq = icmp ult i32 %i.cp, 7
  br i1 %i.cq, label %.lr.ph127.epil.preheader, label %.lr.ph127.preheader.new

.lr.ph127.preheader.new:                          ; preds = %.lr.ph127.preheader
  %unroll_iter193 = and i32 %i.cn, -8
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127, %.lr.ph127.preheader.new
  %.2126 = phi i32 [ 2, %.lr.ph127.preheader.new ], [ %i.ct, %.lr.ph127 ] ; 2 uses
  %.4125 = phi i32 [ %.180.lcssa, %.lr.ph127.preheader.new ], [ %i.cs, %.lr.ph127 ]
  %niter194 = phi i32 [ 0, %.lr.ph127.preheader.new ], [ %niter194.next.7, %.lr.ph127 ]
  %i.cr = shl i32 255, %.2126
  %i.cs = or i32 %i.cr, %.4125                    ; 3 uses
  %i.ct = add nuw nsw i32 %.2126, 8               ; 2 uses
  %niter194.next.7 = add i32 %niter194, 8         ; 2 uses
  %niter194.ncmp.7 = icmp eq i32 %niter194.next.7, %unroll_iter193
  br i1 %niter194.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph127, !llvm.loop !26

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph127
  %lcmp.mod190.not = icmp eq i32 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %.loopexit, label %.lr.ph127.epil.preheader

.lr.ph127.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph127.preheader
  %.2126.epil.init = phi i32 [ 2, %.lr.ph127.preheader ], [ %i.ct, %.loopexit.loopexit.unr-lcssa ]
  %.4125.epil.init = phi i32 [ %.180.lcssa, %.lr.ph127.preheader ], [ %i.cs, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod192 = icmp ne i32 %xtraiter188, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph127.epil

.lr.ph127.epil:                                   ; preds = %.lr.ph127.epil, %.lr.ph127.epil.preheader
  %.2126.epil = phi i32 [ %i.cw, %.lr.ph127.epil ], [ %.2126.epil.init, %.lr.ph127.epil.preheader ] ; 2 uses
  %.4125.epil = phi i32 [ %i.cv, %.lr.ph127.epil ], [ %.4125.epil.init, %.lr.ph127.epil.preheader ]
  %epil.iter189 = phi i32 [ %epil.iter189.next, %.lr.ph127.epil ], [ 0, %.lr.ph127.epil.preheader ]
  %i.cu = shl nuw i32 1, %.2126.epil
  %i.cv = or i32 %i.cu, %.4125.epil               ; 2 uses
  %i.cw = add nuw nsw i32 %.2126.epil, 1
  %epil.iter189.next = add i32 %epil.iter189, 1   ; 2 uses
  %epil.iter189.cmp.not = icmp eq i32 %epil.iter189.next, %xtraiter188
  br i1 %epil.iter189.cmp.not, label %.loopexit, label %.lr.ph127.epil, !llvm.loop !27

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph127.epil, %bb.f, %.preheader, %._crit_edge111
  %.5 = phi i32 [ %i.ab, %._crit_edge111 ], [ %.180.lcssa, %.preheader ], [ 0, %bb.f ], [ %i.cs, %.loopexit.loopexit.unr-lcssa ], [ %i.cv, %.lr.ph127.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.n

bb.m:                                             ; preds = %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.cx = ptrtoint ptr %.lcssa97 to i64
  %i.cy = ptrtoint ptr %0 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !14
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %0, i64 %i.dc ; 2 uses
end_hunk_0
