Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilSort?download=true
inline.NumInlined: 27
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str.1 = private unnamed_addr constant [9 x i8] c"Old sort\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Prepare \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Sort new\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Sort old\00", align 1
@Abc_Random.m_z = internal thread_local unnamed_addr global i32 -578006775, align 4
@Abc_Random.m_w = internal thread_local unnamed_addr global i32 -2120863760, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_SortMerge(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp ult ptr %0, %1
  %i.d = icmp ult ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader38

.preheader38:                                     ; preds = %bb.f, %bb.a
  %.032.lcssa = phi ptr [ %2, %bb.a ], [ %.133, %bb.f ] ; 5 uses
  %.029.lcssa = phi ptr [ %0, %bb.a ], [ %.130, %bb.f ] ; 5 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %.1, %bb.f ] ; 5 uses
  %.032.lcssa70 = ptrtoaddr ptr %.032.lcssa to i64 ; 2 uses
  %i.f = icmp ult ptr %.029.lcssa, %1
  br i1 %i.f, label %.lr.ph46.preheader, label %.preheader

.lr.ph46.preheader:                               ; preds = %.preheader38
  %.0.lcssa62 = ptrtoaddr ptr %.029.lcssa to i64  ; 2 uses
  %.029.lcssa61 = ptrtoaddr ptr %.0.lcssa to i64
  %i.g = xor i64 %.0.lcssa62, -1
  %i.h = add i64 %i.g, %i.b                       ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 44
  %i.k = sub i64 %.0.lcssa62, %.029.lcssa61
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph46.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.preheader
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %i.l = shl i64 %n.vec, 2                        ; 2 uses
  %i.m = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %.029.lcssa, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.o ; 2 uses
  %next.gep63 = getelementptr i8, ptr %.029.lcssa, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !16
  %wide.load64 = load <4 x i32>, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load64, ptr %i.q, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph46.preheader91

.lr.ph46.preheader91:                             ; preds = %.lr.ph46.preheader, %middle.block
  %.245.ph = phi ptr [ %.0.lcssa, %.lr.ph46.preheader ], [ %i.m, %middle.block ]
  %.23144.ph = phi ptr [ %.029.lcssa, %.lr.ph46.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph46

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.041 = phi ptr [ %.1, %bb.f ], [ %4, %bb.a ]   ; 5 uses
  %.02940 = phi ptr [ %.130, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %.03239 = phi ptr [ %.133, %bb.f ], [ %2, %bb.a ] ; 5 uses
  %i.s = load i32, ptr %.02940, align 4, !tbaa !16 ; 4 uses
  %i.t = load i32, ptr %.03239, align 4, !tbaa !16 ; 3 uses
  %i.u = icmp eq i32 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.041, i64 4 ; 3 uses
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.02940, i64 4
  store i32 %i.s, ptr %.041, align 4, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.03239, i64 4
  %i.y = load i32, ptr %.03239, align 4, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %.041, i64 8
  store i32 %i.y, ptr %i.v, align 4, !tbaa !16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.aa = icmp slt i32 %i.s, %i.t
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.02940, i64 4
  store i32 %i.s, ptr %.041, align 4, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.03239, i64 4
  store i32 %i.t, ptr %.041, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.133 = phi ptr [ %i.x, %bb.b ], [ %.03239, %bb.d ], [ %i.ac, %bb.e ] ; 3 uses
  %.130 = phi ptr [ %i.w, %bb.b ], [ %i.ab, %bb.d ], [ %.02940, %bb.e ] ; 3 uses
  %.1 = phi ptr [ %i.z, %bb.b ], [ %i.v, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.ad = icmp ult ptr %.130, %1
  %i.ae = icmp ult ptr %.133, %3
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %.lr.ph, label %.preheader38, !llvm.loop !0

.preheader:                                       ; preds = %.lr.ph46, %middle.block, %.preheader38
  %.2.lcssa = phi ptr [ %.0.lcssa, %.preheader38 ], [ %i.m, %middle.block ], [ %i.av, %.lr.ph46 ] ; 4 uses
  %i.ag = icmp ult ptr %.032.lcssa, %3
  br i1 %i.ag, label %.lr.ph50.preheader, label %._crit_edge

.lr.ph50.preheader:                               ; preds = %.preheader
  %.2.lcssa71 = ptrtoaddr ptr %.2.lcssa to i64
  %i.ah = xor i64 %.032.lcssa70, -1
  %i.ai = add i64 %i.ah, %i.a                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.ai, 44
  %i.al = sub i64 %.032.lcssa70, %.2.lcssa71
  %diff.check75 = icmp ugt i64 %i.al, -32
  %or.cond89 = select i1 %min.iters.check73, i1 true, i1 %diff.check75
  br i1 %or.cond89, label %.lr.ph50.preheader90, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph50.preheader
  %n.vec77 = and i64 %i.ak, 9223372036854775800   ; 3 uses
  %i.am = shl i64 %n.vec77, 2                     ; 2 uses
  %i.an = getelementptr i8, ptr %.2.lcssa, i64 %i.am
  %i.ao = getelementptr i8, ptr %.032.lcssa, i64 %i.am
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next84, %vector.body78 ] ; 2 uses
  %i.ap = shl i64 %index79, 2                     ; 2 uses
  %next.gep80 = getelementptr i8, ptr %.2.lcssa, i64 %i.ap ; 2 uses
  %next.gep81 = getelementptr i8, ptr %.032.lcssa, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !16
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !16
  %i.ar = getelementptr i8, ptr %next.gep80, i64 16
  store <4 x i32> %wide.load82, ptr %next.gep80, align 4, !tbaa !16
  store <4 x i32> %wide.load83, ptr %i.ar, align 4, !tbaa !16
  %index.next84 = add nuw i64 %index79, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.as, label %middle.block85, label %vector.body78, !llvm.loop !27

middle.block85:                                   ; preds = %vector.body78
  %cmp.n86 = icmp eq i64 %i.ak, %n.vec77
  br i1 %cmp.n86, label %._crit_edge, label %.lr.ph50.preheader90

.lr.ph50.preheader90:                             ; preds = %.lr.ph50.preheader, %middle.block85
  %.349.ph = phi ptr [ %.2.lcssa, %.lr.ph50.preheader ], [ %i.an, %middle.block85 ]
  %.23448.ph = phi ptr [ %.032.lcssa, %.lr.ph50.preheader ], [ %i.ao, %middle.block85 ]
  br label %.lr.ph50

.lr.ph46:                                         ; preds = %.lr.ph46.preheader91, %.lr.ph46
  %.245 = phi ptr [ %i.av, %.lr.ph46 ], [ %.245.ph, %.lr.ph46.preheader91 ] ; 2 uses
  %.23144 = phi ptr [ %i.at, %.lr.ph46 ], [ %.23144.ph, %.lr.ph46.preheader91 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.23144, i64 4 ; 2 uses
  %i.au = load i32, ptr %.23144, align 4, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %.245, i64 4 ; 2 uses
  store i32 %i.au, ptr %.245, align 4, !tbaa !16
  %i.aw = icmp ult ptr %i.at, %1
  br i1 %i.aw, label %.lr.ph46, label %.preheader, !llvm.loop !28

.lr.ph50:                                         ; preds = %.lr.ph50.preheader90, %.lr.ph50
  %.349 = phi ptr [ %i.az, %.lr.ph50 ], [ %.349.ph, %.lr.ph50.preheader90 ] ; 2 uses
  %.23448 = phi ptr [ %i.ax, %.lr.ph50 ], [ %.23448.ph, %.lr.ph50.preheader90 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.23448, i64 4 ; 2 uses
  %i.ay = load i32, ptr %.23448, align 4, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %.349, i64 4
  store i32 %i.ay, ptr %.349, align 4, !tbaa !16
  %i.ba = icmp ult ptr %i.ax, %3
  br i1 %i.ba, label %.lr.ph50, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph50, %middle.block85, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_Sort_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = lshr exact i64 %i.c, 2                   ; 4 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  switch i32 %i.e, label %bb.d [
    i32 1, label %.loopexit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.g, align 4, !tbaa !16
  store i32 %i.h, ptr %0, align 4, !tbaa !16
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.e, 8
  br i1 %i.j, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.k = icmp sgt i32 %i.e, 1
  br i1 %i.k, label %.lr.ph61.preheader, label %.loopexit

.lr.ph61.preheader:                               ; preds = %.preheader
  %i.l = add nuw nsw i64 %i.d, 4294967295
  %wide.trip.count68 = and i64 %i.l, 4294967295
  %wide.trip.count = and i64 %i.d, 2147483647     ; 2 uses
  %i.m = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge, %.lr.ph61.preheader
  %indvars.iv65 = phi i64 [ 0, %.lr.ph61.preheader ], [ %indvars.iv.next66, %._crit_edge ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph61.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.n = xor i64 %indvars.iv65, -1
  %i.o = add nsw i64 %i.d, %i.n
  %i.p = sub i64 %i.m, %indvars.iv65
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.q = trunc nuw nsw i64 %indvars.iv65 to i32   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv65
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !16 ; 3 uses
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %i.r = phi i32 [ %i.w, %.lr.ph.prol ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %.lr.ph.prol ], [ %indvars.iv, %.lr.ph.preheader ] ; 3 uses
  %.059.prol = phi i32 [ %spec.select.prol, %.lr.ph.prol ], [ %i.q, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv62.prol
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16   ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.r
  %i.v = trunc nuw nsw i64 %indvars.iv62.prol to i32
  %spec.select.prol = select i1 %i.u, i32 %i.v, i32 %.059.prol ; 3 uses
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv62.prol, 1 ; 2 uses
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.r) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !30

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %.unr = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %indvars.iv62.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next63.prol, %.lr.ph.prol ]
  %.059.unr = phi i32 [ %i.q, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.x = icmp ult i64 %i.p, 3
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.y = phi i32 [ %i.as, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.3, %.lr.ph ], [ %indvars.iv62.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.059 = phi i32 [ %spec.select.3, %.lr.ph ], [ %.059.unr, %.lr.ph.prol.loopexit ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv62
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16  ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.y
  %i.ac = trunc nuw nsw i64 %indvars.iv62 to i32
  %spec.select = select i1 %i.ab, i32 %i.ac, i32 %.059
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.y) ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next63
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.ad
  %i.ah = trunc nuw nsw i64 %indvars.iv.next63 to i32
  %spec.select.1 = select i1 %i.ag, i32 %i.ah, i32 %spec.select
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ad) ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next63.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16 ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ai
  %i.am = trunc nuw nsw i64 %indvars.iv.next63.1 to i32
  %spec.select.2 = select i1 %i.al, i32 %i.am, i32 %spec.select.1
  %indvars.iv.next63.2 = add nuw nsw i64 %indvars.iv62, 3 ; 2 uses
  %i.an = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.ai) ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next63.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %i.an
  %i.ar = trunc nuw nsw i64 %indvars.iv.next63.2 to i32
  %spec.select.3 = select i1 %i.aq, i32 %i.ar, i32 %spec.select.2 ; 2 uses
  %indvars.iv.next63.3 = add nuw nsw i64 %indvars.iv62, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next63.3, %wide.trip.count
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.an)
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.3, %.lr.ph ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv65
  %i.au = sext i32 %spec.select.lcssa to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !16
  store i32 %.pre, ptr %i.av, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.preheader, !llvm.loop !32

bb.e:                                             ; preds = %bb.d
  %i.ax = lshr i64 %i.c, 3
  %i.ay = and i64 %i.ax, 2147483647               ; 3 uses
  %.idx = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 8 uses
  tail call void @Abc_Sort_rec(ptr noundef %0, ptr noundef %i.az, ptr noundef %2)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ay
  tail call void @Abc_Sort_rec(ptr noundef %i.az, ptr noundef %1, ptr noundef %i.ba)
  %i.bb = icmp ne i64 %i.ay, 0
  %i.bc = icmp ult ptr %i.az, %1
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph.i, label %.preheader38.i

.preheader38.i:                                   ; preds = %bb.j, %bb.e
  %.032.lcssa.i = phi ptr [ %i.az, %bb.e ], [ %.133.i, %bb.j ] ; 5 uses
  %.029.lcssa.i = phi ptr [ %0, %bb.e ], [ %.130.i, %bb.j ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.e ], [ %.1.i, %bb.j ] ; 5 uses
  %.032.lcssa.i91 = ptrtoaddr ptr %.032.lcssa.i to i64 ; 2 uses
  %i.be = icmp ult ptr %.029.lcssa.i, %i.az
  br i1 %i.be, label %.lr.ph46.i.preheader, label %.preheader.i

.lr.ph46.i.preheader:                             ; preds = %.preheader38.i
  %.0.lcssa.i83 = ptrtoaddr ptr %.029.lcssa.i to i64 ; 2 uses
  %.029.lcssa.i82 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.bf = add i64 %.idx, %i.b
  %i.bg = xor i64 %.0.lcssa.i83, -1
  %i.bh = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 44
  %i.bk = sub i64 %.0.lcssa.i83, %.029.lcssa.i82
  %diff.check = icmp ugt i64 %i.bk, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph46.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.preheader
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bl = shl i64 %n.vec, 2                       ; 2 uses
  %i.bm = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bl ; 2 uses
  %i.bn = getelementptr i8, ptr %.029.lcssa.i, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bo ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.029.lcssa.i, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !16
  %wide.load85 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !16
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load85, ptr %i.bq, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph46.i.preheader112

.lr.ph46.i.preheader112:                          ; preds = %.lr.ph46.i.preheader, %middle.block
  %.245.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph46.i.preheader ], [ %i.bm, %middle.block ]
  %.23144.i.ph = phi ptr [ %.029.lcssa.i, %.lr.ph46.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph46.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.j
  %.041.i = phi ptr [ %.1.i, %bb.j ], [ %2, %bb.e ] ; 5 uses
  %.02940.i = phi ptr [ %.130.i, %bb.j ], [ %0, %bb.e ] ; 4 uses
  %.03239.i = phi ptr [ %.133.i, %bb.j ], [ %i.az, %bb.e ] ; 5 uses
  %i.bs = load i32, ptr %.02940.i, align 4, !tbaa !16 ; 4 uses
  %i.bt = load i32, ptr %.03239.i, align 4, !tbaa !16 ; 3 uses
  %i.bu = icmp eq i32 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.041.i, i64 4 ; 3 uses
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.02940.i, i64 4
  store i32 %i.bs, ptr %.041.i, align 4, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %.03239.i, i64 4
  %i.by = load i32, ptr %.03239.i, align 4, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.041.i, i64 8
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !16
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph.i
  %i.ca = icmp slt i32 %i.bs, %i.bt
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %.02940.i, i64 4
  store i32 %i.bs, ptr %.041.i, align 4, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %.03239.i, i64 4
  store i32 %i.bt, ptr %.041.i, align 4, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.133.i = phi ptr [ %i.bx, %bb.f ], [ %.03239.i, %bb.h ], [ %i.cc, %bb.i ] ; 3 uses
  %.130.i = phi ptr [ %i.bw, %bb.f ], [ %i.cb, %bb.h ], [ %.02940.i, %bb.i ] ; 3 uses
  %.1.i = phi ptr [ %i.bz, %bb.f ], [ %i.bv, %bb.h ], [ %i.bv, %bb.i ] ; 2 uses
  %i.cd = icmp ult ptr %.130.i, %i.az
  %i.ce = icmp ult ptr %.133.i, %1
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %.lr.ph.i, label %.preheader38.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph46.i, %middle.block, %.preheader38.i
  %.2.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader38.i ], [ %i.bm, %middle.block ], [ %i.cv, %.lr.ph46.i ] ; 4 uses
  %i.cg = icmp ult ptr %.032.lcssa.i, %1
  br i1 %i.cg, label %.lr.ph50.i.preheader, label %Abc_SortMerge.exit

.lr.ph50.i.preheader:                             ; preds = %.preheader.i
  %.2.lcssa.i92 = ptrtoaddr ptr %.2.lcssa.i to i64
  %i.ch = xor i64 %.032.lcssa.i91, -1
  %i.ci = add i64 %i.ch, %i.a                     ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check94 = icmp ult i64 %i.ci, 44
  %i.cl = sub i64 %.032.lcssa.i91, %.2.lcssa.i92
  %diff.check96 = icmp ugt i64 %i.cl, -32
  %or.cond110 = select i1 %min.iters.check94, i1 true, i1 %diff.check96
  br i1 %or.cond110, label %.lr.ph50.i.preheader111, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph50.i.preheader
  %n.vec98 = and i64 %i.ck, 9223372036854775800   ; 3 uses
  %i.cm = shl i64 %n.vec98, 2                     ; 2 uses
  %i.cn = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cm
  %i.co = getelementptr i8, ptr %.032.lcssa.i, i64 %i.cm
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body99 ] ; 2 uses
  %i.cp = shl i64 %index100, 2                    ; 2 uses
  %next.gep101 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cp ; 2 uses
  %next.gep102 = getelementptr i8, ptr %.032.lcssa.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load103 = load <4 x i32>, ptr %next.gep102, align 4, !tbaa !16
  %wide.load104 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !16
  %i.cr = getelementptr i8, ptr %next.gep101, i64 16
  store <4 x i32> %wide.load103, ptr %next.gep101, align 4, !tbaa !16
  store <4 x i32> %wide.load104, ptr %i.cr, align 4, !tbaa !16
  %index.next105 = add nuw i64 %index100, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.cs, label %middle.block106, label %vector.body99, !llvm.loop !34

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %i.ck, %n.vec98
  br i1 %cmp.n107, label %Abc_SortMerge.exit, label %.lr.ph50.i.preheader111

.lr.ph50.i.preheader111:                          ; preds = %.lr.ph50.i.preheader, %middle.block106
  %.349.i.ph = phi ptr [ %.2.lcssa.i, %.lr.ph50.i.preheader ], [ %i.cn, %middle.block106 ]
  %.23448.i.ph = phi ptr [ %.032.lcssa.i, %.lr.ph50.i.preheader ], [ %i.co, %middle.block106 ]
  br label %.lr.ph50.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader112, %.lr.ph46.i
  %.245.i = phi ptr [ %i.cv, %.lr.ph46.i ], [ %.245.i.ph, %.lr.ph46.i.preheader112 ] ; 2 uses
  %.23144.i = phi ptr [ %i.ct, %.lr.ph46.i ], [ %.23144.i.ph, %.lr.ph46.i.preheader112 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.23144.i, i64 4 ; 2 uses
  %i.cu = load i32, ptr %.23144.i, align 4, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %.245.i, i64 4 ; 2 uses
  store i32 %i.cu, ptr %.245.i, align 4, !tbaa !16
  %i.cw = icmp ult ptr %i.ct, %i.az
  br i1 %i.cw, label %.lr.ph46.i, label %.preheader.i, !llvm.loop !35

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.preheader111, %.lr.ph50.i
  %.349.i = phi ptr [ %i.cz, %.lr.ph50.i ], [ %.349.i.ph, %.lr.ph50.i.preheader111 ] ; 2 uses
  %.23448.i = phi ptr [ %i.cx, %.lr.ph50.i ], [ %.23448.i.ph, %.lr.ph50.i.preheader111 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.23448.i, i64 4 ; 2 uses
  %i.cy = load i32, ptr %.23448.i, align 4, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %.349.i, i64 4
  store i32 %i.cy, ptr %.349.i, align 4, !tbaa !16
  %i.da = icmp ult ptr %i.cx, %1
  br i1 %i.da, label %.lr.ph50.i, label %Abc_SortMerge.exit, !llvm.loop !36

Abc_SortMerge.exit:                               ; preds = %.lr.ph50.i, %middle.block106, %.preheader.i
  %i.db = and i64 %i.c, 8589934588
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %2, i64 %i.db, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.c, %bb.b, %Abc_SortMerge.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_MergeSort(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #21 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  tail call void @Abc_Sort_rec(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.d)
  tail call void @free(ptr noundef %i.d) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_SortMergeCost2(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp ult ptr %0, %1
  %i.d = icmp ult ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader41

.preheader41:                                     ; preds = %bb.f, %bb.a
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %.137, %bb.f ] ; 5 uses
  %.033.lcssa = phi ptr [ %4, %bb.a ], [ %.134, %bb.f ] ; 5 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.f ] ; 5 uses
  %.036.lcssa72 = ptrtoaddr ptr %.036.lcssa to i64 ; 2 uses
  %i.f = icmp ult ptr %.0.lcssa, %1
  br i1 %i.f, label %.lr.ph49.preheader, label %.preheader

.lr.ph49.preheader:                               ; preds = %.preheader41
  %.033.lcssa64 = ptrtoaddr ptr %.0.lcssa to i64  ; 2 uses
  %.0.lcssa63 = ptrtoaddr ptr %.033.lcssa to i64
  %i.g = xor i64 %.033.lcssa64, -1
  %i.h = add i64 %i.g, %i.b                       ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 44
  %i.k = sub i64 %.033.lcssa64, %.0.lcssa63
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph49.preheader93, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.preheader
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %i.l = shl i64 %n.vec, 2                        ; 2 uses
  %i.m = getelementptr i8, ptr %.0.lcssa, i64 %i.l
  %i.n = getelementptr i8, ptr %.033.lcssa, i64 %i.l ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.o ; 2 uses
  %next.gep65 = getelementptr i8, ptr %.033.lcssa, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !16
  %wide.load66 = load <4 x i32>, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load, ptr %next.gep65, align 4, !tbaa !16
  store <4 x i32> %wide.load66, ptr %i.q, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph49.preheader93

.lr.ph49.preheader93:                             ; preds = %.lr.ph49.preheader, %middle.block
  %.248.ph = phi ptr [ %.0.lcssa, %.lr.ph49.preheader ], [ %i.m, %middle.block ]
  %.23547.ph = phi ptr [ %.033.lcssa, %.lr.ph49.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph49

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.044 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 4 uses
  %.03343 = phi ptr [ %.134, %bb.f ], [ %4, %bb.a ] ; 5 uses
  %.03642 = phi ptr [ %.137, %bb.f ], [ %2, %bb.a ] ; 5 uses
  %i.s = load i32, ptr %.044, align 4, !tbaa !16  ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %5, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16   ; 2 uses
  %i.w = load i32, ptr %.03642, align 4, !tbaa !16 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %5, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16   ; 2 uses
  %i.aa = icmp eq i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.03343, i64 4 ; 3 uses
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.044, i64 4
  store i32 %i.s, ptr %.03343, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.03642, i64 4
  %i.ae = load i32, ptr %.03642, align 4, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %.03343, i64 8
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.ag = icmp slt i32 %i.v, %i.z
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.044, i64 4
  store i32 %i.s, ptr %.03343, align 4, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.03642, i64 4
  store i32 %i.w, ptr %.03343, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.137 = phi ptr [ %i.ad, %bb.b ], [ %.03642, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %.134 = phi ptr [ %i.af, %bb.b ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ac, %bb.b ], [ %i.ah, %bb.d ], [ %.044, %bb.e ] ; 3 uses
  %i.aj = icmp ult ptr %.1, %1
  %i.ak = icmp ult ptr %.137, %3
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph, label %.preheader41, !llvm.loop !1

.preheader:                                       ; preds = %.lr.ph49, %middle.block, %.preheader41
  %.235.lcssa = phi ptr [ %.033.lcssa, %.preheader41 ], [ %i.n, %middle.block ], [ %i.bb, %.lr.ph49 ] ; 4 uses
  %i.am = icmp ult ptr %.036.lcssa, %3
  br i1 %i.am, label %.lr.ph53.preheader, label %._crit_edge

.lr.ph53.preheader:                               ; preds = %.preheader
  %.235.lcssa73 = ptrtoaddr ptr %.235.lcssa to i64
  %i.an = xor i64 %.036.lcssa72, -1
  %i.ao = add i64 %i.an, %i.a                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check75 = icmp ult i64 %i.ao, 44
  %i.ar = sub i64 %.036.lcssa72, %.235.lcssa73
  %diff.check77 = icmp ugt i64 %i.ar, -32
  %or.cond91 = select i1 %min.iters.check75, i1 true, i1 %diff.check77
  br i1 %or.cond91, label %.lr.ph53.preheader92, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph53.preheader
  %n.vec79 = and i64 %i.aq, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec79, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %.235.lcssa, i64 %i.as
  %i.au = getelementptr i8, ptr %.036.lcssa, i64 %i.as
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next86, %vector.body80 ] ; 2 uses
  %i.av = shl i64 %index81, 2                     ; 2 uses
  %next.gep82 = getelementptr i8, ptr %.235.lcssa, i64 %i.av ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.036.lcssa, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load84 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !16
  %wide.load85 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !16
  %i.ax = getelementptr i8, ptr %next.gep82, i64 16
  store <4 x i32> %wide.load84, ptr %next.gep82, align 4, !tbaa !16
  store <4 x i32> %wide.load85, ptr %i.ax, align 4, !tbaa !16
  %index.next86 = add nuw i64 %index81, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.ay, label %middle.block87, label %vector.body80, !llvm.loop !38

middle.block87:                                   ; preds = %vector.body80
  %cmp.n88 = icmp eq i64 %i.aq, %n.vec79
  br i1 %cmp.n88, label %._crit_edge, label %.lr.ph53.preheader92

.lr.ph53.preheader92:                             ; preds = %.lr.ph53.preheader, %middle.block87
  %.352.ph = phi ptr [ %.235.lcssa, %.lr.ph53.preheader ], [ %i.at, %middle.block87 ]
  %.23851.ph = phi ptr [ %.036.lcssa, %.lr.ph53.preheader ], [ %i.au, %middle.block87 ]
  br label %.lr.ph53

.lr.ph49:                                         ; preds = %.lr.ph49.preheader93, %.lr.ph49
  %.248 = phi ptr [ %i.az, %.lr.ph49 ], [ %.248.ph, %.lr.ph49.preheader93 ] ; 2 uses
  %.23547 = phi ptr [ %i.bb, %.lr.ph49 ], [ %.23547.ph, %.lr.ph49.preheader93 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.248, i64 4 ; 2 uses
  %i.ba = load i32, ptr %.248, align 4, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.23547, i64 4 ; 2 uses
  store i32 %i.ba, ptr %.23547, align 4, !tbaa !16
  %i.bc = icmp ult ptr %i.az, %1
  br i1 %i.bc, label %.lr.ph49, label %.preheader, !llvm.loop !39

.lr.ph53:                                         ; preds = %.lr.ph53.preheader92, %.lr.ph53
  %.352 = phi ptr [ %i.bf, %.lr.ph53 ], [ %.352.ph, %.lr.ph53.preheader92 ] ; 2 uses
  %.23851 = phi ptr [ %i.bd, %.lr.ph53 ], [ %.23851.ph, %.lr.ph53.preheader92 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.23851, i64 4 ; 2 uses
  %i.be = load i32, ptr %.23851, align 4, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %.352, i64 4
  store i32 %i.be, ptr %.352, align 4, !tbaa !16
  %i.bg = icmp ult ptr %i.bd, %3
  br i1 %i.bg, label %.lr.ph53, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph53, %middle.block87, %.preheader
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_SortCost2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = lshr exact i64 %i.c, 2                   ; 3 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  switch i32 %i.e, label %bb.d [
    i32 1, label %.loopexit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %3, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = icmp sgt i32 %i.i, %i.n
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.j, align 4, !tbaa !16
  store i32 %i.k, ptr %0, align 4, !tbaa !16
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.p = icmp slt i32 %i.e, 8
  br i1 %i.p, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.q = icmp sgt i32 %i.e, 1
  br i1 %i.q, label %.lr.ph66.preheader, label %.loopexit

.lr.ph66.preheader:                               ; preds = %.preheader
  %i.r = add nuw nsw i64 %i.d, 4294967295
  %wide.trip.count73 = and i64 %i.r, 4294967295   ; 5 uses
  %wide.trip.count = and i64 %i.d, 2147483647     ; 12 uses
  %.pre = load i32, ptr %0, align 4, !tbaa !16    ; 2 uses
  %.phi.trans.insert75 = sext i32 %.pre to i64
end_hunk_0
begin_hunk_1_@Abc_SortCost2_rec:bb.a
  %spec.select.lcssa.unr.3 = phi i32 [ poison, %.lr.ph.preheader.3 ], [ %spec.select.prol.3, %.lr.ph.prol.3 ]
  %.unr.3 = phi i32 [ %.pre77.3, %.lr.ph.preheader.3 ], [ %i.dk, %.lr.ph.prol.3 ]
  %indvars.iv67.unr.3 = phi i64 [ 4, %.lr.ph.preheader.3 ], [ 5, %.lr.ph.prol.3 ]
  %.064.unr.3 = phi i32 [ 3, %.lr.ph.preheader.3 ], [ %spec.select.prol.3, %.lr.ph.prol.3 ]
  %i.dl = icmp eq i64 %wide.trip.count, 5
  br i1 %i.dl, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.prol.loopexit.3, %.lr.ph.3
  %i.dm = phi i32 [ %i.ec, %.lr.ph.3 ], [ %.unr.3, %.lr.ph.prol.loopexit.3 ] ; 2 uses
  %indvars.iv67.3 = phi i64 [ %indvars.iv.next68.1.3, %.lr.ph.3 ], [ %indvars.iv67.unr.3, %.lr.ph.prol.loopexit.3 ] ; 4 uses
  %.064.3 = phi i32 [ %spec.select.1.3, %.lr.ph.3 ], [ %.064.unr.3, %.lr.ph.prol.loopexit.3 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv67.3
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !16
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !16 ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.dm
  %i.dt = trunc nuw nsw i64 %indvars.iv67.3 to i32
  %spec.select.3 = select i1 %i.ds, i32 %i.dt, i32 %.064.3
  %indvars.iv.next68.3 = add nuw nsw i64 %indvars.iv67.3, 1 ; 2 uses
  %i.du = tail call i32 @llvm.smin.i32(i32 %i.dr, i32 %i.dm) ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next68.3
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !16
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, %i.du
  %i.eb = trunc nuw nsw i64 %indvars.iv.next68.3 to i32
  %spec.select.1.3 = select i1 %i.ea, i32 %i.eb, i32 %spec.select.3 ; 2 uses
  %indvars.iv.next68.1.3 = add nuw nsw i64 %indvars.iv67.3, 2 ; 2 uses
  %exitcond.not.1.3 = icmp eq i64 %indvars.iv.next68.1.3, %wide.trip.count
  %i.ec = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 %i.du)
  br i1 %exitcond.not.1.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !41

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.lr.ph.prol.loopexit.3
  %spec.select.lcssa.3 = phi i32 [ %spec.select.lcssa.unr.3, %.lr.ph.prol.loopexit.3 ], [ %spec.select.1.3, %.lr.ph.3 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ee = sext i32 %spec.select.lcssa.3 to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !16
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !16
  store i32 %.pre.3, ptr %i.ef, align 4, !tbaa !16
  %exitcond74.not.3 = icmp eq i64 %wide.trip.count73, 4
  br i1 %exitcond74.not.3, label %.loopexit, label %.lr.ph.preheader.4

.lr.ph.preheader.4:                               ; preds = %._crit_edge.3
  %.phi.trans.insert.4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.4 = load i32, ptr %.phi.trans.insert.4, align 4, !tbaa !16 ; 2 uses
  %.phi.trans.insert75.4 = sext i32 %.pre.4 to i64
  %.phi.trans.insert76.4 = getelementptr inbounds [4 x i8], ptr %3, i64 %.phi.trans.insert75.4
  %.pre77.4 = load i32, ptr %.phi.trans.insert76.4, align 4, !tbaa !16 ; 3 uses
  %i.eh = and i64 %i.c, 4
  %lcmp.mod.4.not.not = icmp eq i64 %i.eh, 0
  br i1 %lcmp.mod.4.not.not, label %.lr.ph.prol.4, label %.lr.ph.prol.loopexit.4

.lr.ph.prol.4:                                    ; preds = %.lr.ph.preheader.4
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !16
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !16 ; 2 uses
  %i.en = icmp slt i32 %i.em, %.pre77.4
  %spec.select.prol.4 = select i1 %i.en, i32 5, i32 4 ; 2 uses
  %i.eo = tail call i32 @llvm.smin.i32(i32 %i.em, i32 %.pre77.4)
  br label %.lr.ph.prol.loopexit.4

.lr.ph.prol.loopexit.4:                           ; preds = %.lr.ph.prol.4, %.lr.ph.preheader.4
  %spec.select.lcssa.unr.4 = phi i32 [ poison, %.lr.ph.preheader.4 ], [ %spec.select.prol.4, %.lr.ph.prol.4 ]
  %.unr.4 = phi i32 [ %.pre77.4, %.lr.ph.preheader.4 ], [ %i.eo, %.lr.ph.prol.4 ]
  %indvars.iv67.unr.4 = phi i64 [ 5, %.lr.ph.preheader.4 ], [ 6, %.lr.ph.prol.4 ]
  %.064.unr.4 = phi i32 [ 4, %.lr.ph.preheader.4 ], [ %spec.select.prol.4, %.lr.ph.prol.4 ]
  %i.ep = icmp eq i64 %wide.trip.count, 6
  br i1 %i.ep, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.prol.loopexit.4, %.lr.ph.4
  %i.eq = phi i32 [ %i.fg, %.lr.ph.4 ], [ %.unr.4, %.lr.ph.prol.loopexit.4 ] ; 2 uses
  %indvars.iv67.4 = phi i64 [ %indvars.iv.next68.1.4, %.lr.ph.4 ], [ %indvars.iv67.unr.4, %.lr.ph.prol.loopexit.4 ] ; 4 uses
  %.064.4 = phi i32 [ %spec.select.1.4, %.lr.ph.4 ], [ %.064.unr.4, %.lr.ph.prol.loopexit.4 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv67.4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !16
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !16 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, %i.eq
  %i.ex = trunc nuw nsw i64 %indvars.iv67.4 to i32
  %spec.select.4 = select i1 %i.ew, i32 %i.ex, i32 %.064.4
  %indvars.iv.next68.4 = add nuw nsw i64 %indvars.iv67.4, 1 ; 2 uses
  %i.ey = tail call i32 @llvm.smin.i32(i32 %i.ev, i32 %i.eq) ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next68.4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !16
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !16 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, %i.ey
  %i.ff = trunc nuw nsw i64 %indvars.iv.next68.4 to i32
  %spec.select.1.4 = select i1 %i.fe, i32 %i.ff, i32 %spec.select.4 ; 2 uses
  %indvars.iv.next68.1.4 = add nuw nsw i64 %indvars.iv67.4, 2 ; 2 uses
  %exitcond.not.1.4 = icmp eq i64 %indvars.iv.next68.1.4, %wide.trip.count
  %i.fg = tail call i32 @llvm.smin.i32(i32 %i.fd, i32 %i.ey)
  br i1 %exitcond.not.1.4, label %._crit_edge.4, label %.lr.ph.4, !llvm.loop !41

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.lr.ph.prol.loopexit.4
  %spec.select.lcssa.4 = phi i32 [ %spec.select.lcssa.unr.4, %.lr.ph.prol.loopexit.4 ], [ %spec.select.1.4, %.lr.ph.4 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = sext i32 %spec.select.lcssa.4 to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !16
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !16
  store i32 %.pre.4, ptr %i.fj, align 4, !tbaa !16
  %exitcond74.not.4 = icmp eq i64 %wide.trip.count73, 5
  br i1 %exitcond74.not.4, label %.loopexit, label %.lr.ph.preheader.5

.lr.ph.preheader.5:                               ; preds = %._crit_edge.4
  %.phi.trans.insert.5 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre.5 = load i32, ptr %.phi.trans.insert.5, align 4, !tbaa !16 ; 2 uses
  %.phi.trans.insert75.5 = sext i32 %.pre.5 to i64
  %.phi.trans.insert76.5 = getelementptr inbounds [4 x i8], ptr %3, i64 %.phi.trans.insert75.5
  %.pre77.5 = load i32, ptr %.phi.trans.insert76.5, align 4, !tbaa !16 ; 3 uses
  %i.fl = and i64 %i.c, 4
  %lcmp.mod.5.not = icmp eq i64 %i.fl, 0
  br i1 %lcmp.mod.5.not, label %.lr.ph.prol.loopexit.5, label %.lr.ph.prol.5

.lr.ph.prol.5:                                    ; preds = %.lr.ph.preheader.5
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !16
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !16 ; 2 uses
  %i.fr = icmp slt i32 %i.fq, %.pre77.5
  %spec.select.prol.5 = select i1 %i.fr, i32 6, i32 5 ; 2 uses
  %i.fs = tail call i32 @llvm.smin.i32(i32 %i.fq, i32 %.pre77.5)
  br label %.lr.ph.prol.loopexit.5

.lr.ph.prol.loopexit.5:                           ; preds = %.lr.ph.prol.5, %.lr.ph.preheader.5
  %spec.select.lcssa.unr.5 = phi i32 [ poison, %.lr.ph.preheader.5 ], [ %spec.select.prol.5, %.lr.ph.prol.5 ]
  %.unr.5 = phi i32 [ %.pre77.5, %.lr.ph.preheader.5 ], [ %i.fs, %.lr.ph.prol.5 ]
  %indvars.iv67.unr.5 = phi i64 [ 6, %.lr.ph.preheader.5 ], [ 7, %.lr.ph.prol.5 ]
  %.064.unr.5 = phi i32 [ 5, %.lr.ph.preheader.5 ], [ %spec.select.prol.5, %.lr.ph.prol.5 ]
  %i.ft = icmp eq i64 %wide.trip.count, 7
  br i1 %i.ft, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.prol.loopexit.5, %.lr.ph.5
  %i.fu = phi i32 [ %i.gk, %.lr.ph.5 ], [ %.unr.5, %.lr.ph.prol.loopexit.5 ] ; 2 uses
  %indvars.iv67.5 = phi i64 [ %indvars.iv.next68.1.5, %.lr.ph.5 ], [ %indvars.iv67.unr.5, %.lr.ph.prol.loopexit.5 ] ; 4 uses
  %.064.5 = phi i32 [ %spec.select.1.5, %.lr.ph.5 ], [ %.064.unr.5, %.lr.ph.prol.loopexit.5 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv67.5
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !16
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !16 ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %i.fu
  %i.gb = trunc nuw nsw i64 %indvars.iv67.5 to i32
  %spec.select.5 = select i1 %i.ga, i32 %i.gb, i32 %.064.5
  %indvars.iv.next68.5 = add nuw nsw i64 %indvars.iv67.5, 1 ; 2 uses
  %i.gc = tail call i32 @llvm.smin.i32(i32 %i.fz, i32 %i.fu) ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next68.5
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !16
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !16 ; 2 uses
  %i.gi = icmp slt i32 %i.gh, %i.gc
  %i.gj = trunc nuw nsw i64 %indvars.iv.next68.5 to i32
  %spec.select.1.5 = select i1 %i.gi, i32 %i.gj, i32 %spec.select.5 ; 2 uses
  %indvars.iv.next68.1.5 = add nuw nsw i64 %indvars.iv67.5, 2 ; 2 uses
  %exitcond.not.1.5 = icmp eq i64 %indvars.iv.next68.1.5, %wide.trip.count
  %i.gk = tail call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.gc)
  br i1 %exitcond.not.1.5, label %._crit_edge.5, label %.lr.ph.5, !llvm.loop !41

._crit_edge.5:                                    ; preds = %.lr.ph.5, %.lr.ph.prol.loopexit.5
  %spec.select.lcssa.5 = phi i32 [ %spec.select.lcssa.unr.5, %.lr.ph.prol.loopexit.5 ], [ %spec.select.1.5, %.lr.ph.5 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gm = sext i32 %spec.select.lcssa.5 to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !16
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !16
  store i32 %.pre.5, ptr %i.gn, align 4, !tbaa !16
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.gp = lshr i64 %i.c, 3
  %i.gq = and i64 %i.gp, 2147483647               ; 3 uses
  %.idx = shl nuw nsw i64 %i.gq, 2                ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 8 uses
  tail call void @Abc_SortCost2_rec(ptr noundef %0, ptr noundef %i.gr, ptr noundef %2, ptr noundef %3)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gq
  tail call void @Abc_SortCost2_rec(ptr noundef %i.gr, ptr noundef %1, ptr noundef %i.gs, ptr noundef %3)
  %i.gt = icmp ne i64 %i.gq, 0
  %i.gu = icmp ult ptr %i.gr, %1
  %i.gv = and i1 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph.i, label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.j, %bb.e
  %.036.lcssa.i = phi ptr [ %i.gr, %bb.e ], [ %.137.i, %bb.j ] ; 5 uses
  %.033.lcssa.i = phi ptr [ %2, %bb.e ], [ %.134.i, %bb.j ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.e ], [ %.1.i, %bb.j ] ; 5 uses
  %.036.lcssa.i96 = ptrtoaddr ptr %.036.lcssa.i to i64 ; 2 uses
  %i.gw = icmp ult ptr %.0.lcssa.i, %i.gr
  br i1 %i.gw, label %.lr.ph49.i.preheader, label %.preheader.i

.lr.ph49.i.preheader:                             ; preds = %.preheader41.i
  %.033.lcssa.i88 = ptrtoaddr ptr %.0.lcssa.i to i64 ; 2 uses
  %.0.lcssa.i87 = ptrtoaddr ptr %.033.lcssa.i to i64
  %i.gx = add i64 %.idx, %i.b
  %i.gy = xor i64 %.033.lcssa.i88, -1
  %i.gz = add i64 %i.gx, %i.gy                    ; 2 uses
  %i.ha = lshr i64 %i.gz, 2
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gz, 44
  %i.hc = sub i64 %.033.lcssa.i88, %.0.lcssa.i87
  %diff.check = icmp ugt i64 %i.hc, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph49.i.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.i.preheader
  %n.vec = and i64 %i.hb, 9223372036854775800     ; 3 uses
  %i.hd = shl i64 %n.vec, 2                       ; 2 uses
  %i.he = getelementptr i8, ptr %.0.lcssa.i, i64 %i.hd
  %i.hf = getelementptr i8, ptr %.033.lcssa.i, i64 %i.hd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.hg ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.033.lcssa.i, i64 %i.hg ; 2 uses
  %i.hh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !16
  %wide.load90 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !16
  %i.hi = getelementptr i8, ptr %next.gep89, i64 16
  store <4 x i32> %wide.load, ptr %next.gep89, align 4, !tbaa !16
  store <4 x i32> %wide.load90, ptr %i.hi, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph49.i.preheader117

.lr.ph49.i.preheader117:                          ; preds = %.lr.ph49.i.preheader, %middle.block
  %.248.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph49.i.preheader ], [ %i.he, %middle.block ]
  %.23547.i.ph = phi ptr [ %.033.lcssa.i, %.lr.ph49.i.preheader ], [ %i.hf, %middle.block ]
  br label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.j
  %.044.i = phi ptr [ %.1.i, %bb.j ], [ %0, %bb.e ] ; 4 uses
  %.03343.i = phi ptr [ %.134.i, %bb.j ], [ %2, %bb.e ] ; 5 uses
  %.03642.i = phi ptr [ %.137.i, %bb.j ], [ %i.gr, %bb.e ] ; 5 uses
  %i.hk = load i32, ptr %.044.i, align 4, !tbaa !16 ; 3 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !16 ; 2 uses
  %i.ho = load i32, ptr %.03642.i, align 4, !tbaa !16 ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !16 ; 2 uses
  %i.hs = icmp eq i32 %i.hn, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.03343.i, i64 4 ; 3 uses
  br i1 %i.hs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.044.i, i64 4
  store i32 %i.hk, ptr %.03343.i, align 4, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %.03642.i, i64 4
  %i.hw = load i32, ptr %.03642.i, align 4, !tbaa !16
  %i.hx = getelementptr inbounds nuw i8, ptr %.03343.i, i64 8
  store i32 %i.hw, ptr %i.ht, align 4, !tbaa !16
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph.i
  %i.hy = icmp slt i32 %i.hn, %i.hr
  br i1 %i.hy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hz = getelementptr inbounds nuw i8, ptr %.044.i, i64 4
  store i32 %i.hk, ptr %.03343.i, align 4, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ia = getelementptr inbounds nuw i8, ptr %.03642.i, i64 4
  store i32 %i.ho, ptr %.03343.i, align 4, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.137.i = phi ptr [ %i.hv, %bb.f ], [ %.03642.i, %bb.h ], [ %i.ia, %bb.i ] ; 3 uses
  %.134.i = phi ptr [ %i.hx, %bb.f ], [ %i.ht, %bb.h ], [ %i.ht, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.hu, %bb.f ], [ %i.hz, %bb.h ], [ %.044.i, %bb.i ] ; 3 uses
  %i.ib = icmp ult ptr %.1.i, %i.gr
  %i.ic = icmp ult ptr %.137.i, %1
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %.lr.ph.i, label %.preheader41.i, !llvm.loop !1

.preheader.i:                                     ; preds = %.lr.ph49.i, %middle.block, %.preheader41.i
  %.235.lcssa.i = phi ptr [ %.033.lcssa.i, %.preheader41.i ], [ %i.hf, %middle.block ], [ %i.it, %.lr.ph49.i ] ; 4 uses
  %i.ie = icmp ult ptr %.036.lcssa.i, %1
  br i1 %i.ie, label %.lr.ph53.i.preheader, label %Abc_SortMergeCost2.exit

.lr.ph53.i.preheader:                             ; preds = %.preheader.i
  %.235.lcssa.i97 = ptrtoaddr ptr %.235.lcssa.i to i64
  %i.if = xor i64 %.036.lcssa.i96, -1
  %i.ig = add i64 %i.if, %i.a                     ; 2 uses
  %i.ih = lshr i64 %i.ig, 2
  %i.ii = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %min.iters.check99 = icmp ult i64 %i.ig, 44
  %i.ij = sub i64 %.036.lcssa.i96, %.235.lcssa.i97
  %diff.check101 = icmp ugt i64 %i.ij, -32
  %or.cond115 = select i1 %min.iters.check99, i1 true, i1 %diff.check101
  br i1 %or.cond115, label %.lr.ph53.i.preheader116, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph53.i.preheader
  %n.vec103 = and i64 %i.ii, 9223372036854775800  ; 3 uses
  %i.ik = shl i64 %n.vec103, 2                    ; 2 uses
  %i.il = getelementptr i8, ptr %.235.lcssa.i, i64 %i.ik
  %i.im = getelementptr i8, ptr %.036.lcssa.i, i64 %i.ik
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next110, %vector.body104 ] ; 2 uses
  %i.in = shl i64 %index105, 2                    ; 2 uses
  %next.gep106 = getelementptr i8, ptr %.235.lcssa.i, i64 %i.in ; 2 uses
  %next.gep107 = getelementptr i8, ptr %.036.lcssa.i, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load108 = load <4 x i32>, ptr %next.gep107, align 4, !tbaa !16
  %wide.load109 = load <4 x i32>, ptr %i.io, align 4, !tbaa !16
  %i.ip = getelementptr i8, ptr %next.gep106, i64 16
  store <4 x i32> %wide.load108, ptr %next.gep106, align 4, !tbaa !16
  store <4 x i32> %wide.load109, ptr %i.ip, align 4, !tbaa !16
  %index.next110 = add nuw i64 %index105, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.iq, label %middle.block111, label %vector.body104, !llvm.loop !43

middle.block111:                                  ; preds = %vector.body104
  %cmp.n112 = icmp eq i64 %i.ii, %n.vec103
  br i1 %cmp.n112, label %Abc_SortMergeCost2.exit, label %.lr.ph53.i.preheader116

.lr.ph53.i.preheader116:                          ; preds = %.lr.ph53.i.preheader, %middle.block111
  %.352.i.ph = phi ptr [ %.235.lcssa.i, %.lr.ph53.i.preheader ], [ %i.il, %middle.block111 ]
  %.23851.i.ph = phi ptr [ %.036.lcssa.i, %.lr.ph53.i.preheader ], [ %i.im, %middle.block111 ]
  br label %.lr.ph53.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.preheader117, %.lr.ph49.i
  %.248.i = phi ptr [ %i.ir, %.lr.ph49.i ], [ %.248.i.ph, %.lr.ph49.i.preheader117 ] ; 2 uses
  %.23547.i = phi ptr [ %i.it, %.lr.ph49.i ], [ %.23547.i.ph, %.lr.ph49.i.preheader117 ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.248.i, i64 4 ; 2 uses
  %i.is = load i32, ptr %.248.i, align 4, !tbaa !16
  %i.it = getelementptr inbounds nuw i8, ptr %.23547.i, i64 4 ; 2 uses
  store i32 %i.is, ptr %.23547.i, align 4, !tbaa !16
  %i.iu = icmp ult ptr %i.ir, %i.gr
  br i1 %i.iu, label %.lr.ph49.i, label %.preheader.i, !llvm.loop !44

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader116, %.lr.ph53.i
  %.352.i = phi ptr [ %i.ix, %.lr.ph53.i ], [ %.352.i.ph, %.lr.ph53.i.preheader116 ] ; 2 uses
  %.23851.i = phi ptr [ %i.iv, %.lr.ph53.i ], [ %.23851.i.ph, %.lr.ph53.i.preheader116 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.23851.i, i64 4 ; 2 uses
  %i.iw = load i32, ptr %.23851.i, align 4, !tbaa !16
  %i.ix = getelementptr inbounds nuw i8, ptr %.352.i, i64 4
  store i32 %i.iw, ptr %.352.i, align 4, !tbaa !16
  %i.iy = icmp ult ptr %i.iv, %1
  br i1 %i.iy, label %.lr.ph53.i, label %Abc_SortMergeCost2.exit, !llvm.loop !45

Abc_SortMergeCost2.exit:                          ; preds = %.lr.ph53.i, %middle.block111, %.preheader.i
  %i.iz = and i64 %i.c, 8589934588
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %2, i64 %i.iz, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %._crit_edge.5, %.preheader, %bb.c, %bb.b, %Abc_SortMergeCost2.exit, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_MergeSortCost2(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #21 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  tail call void @Abc_SortCost2_rec(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.d, ptr noundef %2)
  tail call void @free(ptr noundef %i.d) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_SortMergeCost2Reverse(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp ult ptr %0, %1
  %i.d = icmp ult ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader41

.preheader41:                                     ; preds = %bb.f, %bb.a
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %.137, %bb.f ] ; 5 uses
  %.033.lcssa = phi ptr [ %4, %bb.a ], [ %.134, %bb.f ] ; 5 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.f ] ; 5 uses
  %.036.lcssa72 = ptrtoaddr ptr %.036.lcssa to i64 ; 2 uses
  %i.f = icmp ult ptr %.0.lcssa, %1
  br i1 %i.f, label %.lr.ph49.preheader, label %.preheader

.lr.ph49.preheader:                               ; preds = %.preheader41
  %.033.lcssa64 = ptrtoaddr ptr %.0.lcssa to i64  ; 2 uses
  %.0.lcssa63 = ptrtoaddr ptr %.033.lcssa to i64
  %i.g = xor i64 %.033.lcssa64, -1
  %i.h = add i64 %i.g, %i.b                       ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 44
  %i.k = sub i64 %.033.lcssa64, %.0.lcssa63
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph49.preheader93, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.preheader
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %i.l = shl i64 %n.vec, 2                        ; 2 uses
  %i.m = getelementptr i8, ptr %.0.lcssa, i64 %i.l
  %i.n = getelementptr i8, ptr %.033.lcssa, i64 %i.l ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.o ; 2 uses
  %next.gep65 = getelementptr i8, ptr %.033.lcssa, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !16
  %wide.load66 = load <4 x i32>, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load, ptr %next.gep65, align 4, !tbaa !16
  store <4 x i32> %wide.load66, ptr %i.q, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph49.preheader93

.lr.ph49.preheader93:                             ; preds = %.lr.ph49.preheader, %middle.block
  %.248.ph = phi ptr [ %.0.lcssa, %.lr.ph49.preheader ], [ %i.m, %middle.block ]
  %.23547.ph = phi ptr [ %.033.lcssa, %.lr.ph49.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph49

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.044 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 4 uses
  %.03343 = phi ptr [ %.134, %bb.f ], [ %4, %bb.a ] ; 5 uses
  %.03642 = phi ptr [ %.137, %bb.f ], [ %2, %bb.a ] ; 5 uses
  %i.s = load i32, ptr %.044, align 4, !tbaa !16  ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %5, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16   ; 2 uses
  %i.w = load i32, ptr %.03642, align 4, !tbaa !16 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %5, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16   ; 2 uses
  %i.aa = icmp eq i32 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.03343, i64 4 ; 3 uses
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.044, i64 4
  store i32 %i.s, ptr %.03343, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.03642, i64 4
  %i.ae = load i32, ptr %.03642, align 4, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %.03343, i64 8
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.ag = icmp sgt i32 %i.v, %i.z
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.044, i64 4
  store i32 %i.s, ptr %.03343, align 4, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.03642, i64 4
  store i32 %i.w, ptr %.03343, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.137 = phi ptr [ %i.ad, %bb.b ], [ %.03642, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %.134 = phi ptr [ %i.af, %bb.b ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.ac, %bb.b ], [ %i.ah, %bb.d ], [ %.044, %bb.e ] ; 3 uses
  %i.aj = icmp ult ptr %.1, %1
  %i.ak = icmp ult ptr %.137, %3
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph, label %.preheader41, !llvm.loop !2

.preheader:                                       ; preds = %.lr.ph49, %middle.block, %.preheader41
  %.235.lcssa = phi ptr [ %.033.lcssa, %.preheader41 ], [ %i.n, %middle.block ], [ %i.bb, %.lr.ph49 ] ; 4 uses
  %i.am = icmp ult ptr %.036.lcssa, %3
  br i1 %i.am, label %.lr.ph53.preheader, label %._crit_edge

.lr.ph53.preheader:                               ; preds = %.preheader
  %.235.lcssa73 = ptrtoaddr ptr %.235.lcssa to i64
  %i.an = xor i64 %.036.lcssa72, -1
  %i.ao = add i64 %i.an, %i.a                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check75 = icmp ult i64 %i.ao, 44
  %i.ar = sub i64 %.036.lcssa72, %.235.lcssa73
  %diff.check77 = icmp ugt i64 %i.ar, -32
  %or.cond91 = select i1 %min.iters.check75, i1 true, i1 %diff.check77
  br i1 %or.cond91, label %.lr.ph53.preheader92, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph53.preheader
  %n.vec79 = and i64 %i.aq, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec79, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %.235.lcssa, i64 %i.as
  %i.au = getelementptr i8, ptr %.036.lcssa, i64 %i.as
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next86, %vector.body80 ] ; 2 uses
  %i.av = shl i64 %index81, 2                     ; 2 uses
  %next.gep82 = getelementptr i8, ptr %.235.lcssa, i64 %i.av ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.036.lcssa, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load84 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !16
  %wide.load85 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !16
  %i.ax = getelementptr i8, ptr %next.gep82, i64 16
  store <4 x i32> %wide.load84, ptr %next.gep82, align 4, !tbaa !16
  store <4 x i32> %wide.load85, ptr %i.ax, align 4, !tbaa !16
  %index.next86 = add nuw i64 %index81, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.ay, label %middle.block87, label %vector.body80, !llvm.loop !47

middle.block87:                                   ; preds = %vector.body80
  %cmp.n88 = icmp eq i64 %i.aq, %n.vec79
  br i1 %cmp.n88, label %._crit_edge, label %.lr.ph53.preheader92

.lr.ph53.preheader92:                             ; preds = %.lr.ph53.preheader, %middle.block87
  %.352.ph = phi ptr [ %.235.lcssa, %.lr.ph53.preheader ], [ %i.at, %middle.block87 ]
  %.23851.ph = phi ptr [ %.036.lcssa, %.lr.ph53.preheader ], [ %i.au, %middle.block87 ]
  br label %.lr.ph53

.lr.ph49:                                         ; preds = %.lr.ph49.preheader93, %.lr.ph49
  %.248 = phi ptr [ %i.az, %.lr.ph49 ], [ %.248.ph, %.lr.ph49.preheader93 ] ; 2 uses
  %.23547 = phi ptr [ %i.bb, %.lr.ph49 ], [ %.23547.ph, %.lr.ph49.preheader93 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.248, i64 4 ; 2 uses
  %i.ba = load i32, ptr %.248, align 4, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.23547, i64 4 ; 2 uses
  store i32 %i.ba, ptr %.23547, align 4, !tbaa !16
  %i.bc = icmp ult ptr %i.az, %1
  br i1 %i.bc, label %.lr.ph49, label %.preheader, !llvm.loop !48

.lr.ph53:                                         ; preds = %.lr.ph53.preheader92, %.lr.ph53
  %.352 = phi ptr [ %i.bf, %.lr.ph53 ], [ %.352.ph, %.lr.ph53.preheader92 ] ; 2 uses
  %.23851 = phi ptr [ %i.bd, %.lr.ph53 ], [ %.23851.ph, %.lr.ph53.preheader92 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.23851, i64 4 ; 2 uses
  %i.be = load i32, ptr %.23851, align 4, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %.352, i64 4
  store i32 %i.be, ptr %.352, align 4, !tbaa !16
  %i.bg = icmp ult ptr %i.bd, %3
  br i1 %i.bg, label %.lr.ph53, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph53, %middle.block87, %.preheader
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_SortCost2Reverse_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = lshr exact i64 %i.c, 2                   ; 3 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  switch i32 %i.e, label %bb.d [
    i32 1, label %.loopexit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %3, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = icmp slt i32 %i.i, %i.n
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.j, align 4, !tbaa !16
  store i32 %i.k, ptr %0, align 4, !tbaa !16
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.p = icmp slt i32 %i.e, 8
  br i1 %i.p, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.q = icmp sgt i32 %i.e, 1
  br i1 %i.q, label %.lr.ph66.preheader, label %.loopexit

.lr.ph66.preheader:                               ; preds = %.preheader
  %i.r = add nuw nsw i64 %i.d, 4294967295
  %wide.trip.count73 = and i64 %i.r, 4294967295   ; 5 uses
  %wide.trip.count = and i64 %i.d, 2147483647     ; 12 uses
  %.pre = load i32, ptr %0, align 4, !tbaa !16    ; 2 uses
  %.phi.trans.insert75 = sext i32 %.pre to i64
end_hunk_1
begin_hunk_2_@Abc_SortCost2Reverse_rec:bb.a
  %spec.select.lcssa.unr.3 = phi i32 [ poison, %.lr.ph.preheader.3 ], [ %spec.select.prol.3, %.lr.ph.prol.3 ]
  %.unr.3 = phi i32 [ %.pre77.3, %.lr.ph.preheader.3 ], [ %i.dk, %.lr.ph.prol.3 ]
  %indvars.iv67.unr.3 = phi i64 [ 4, %.lr.ph.preheader.3 ], [ 5, %.lr.ph.prol.3 ]
  %.064.unr.3 = phi i32 [ 3, %.lr.ph.preheader.3 ], [ %spec.select.prol.3, %.lr.ph.prol.3 ]
  %i.dl = icmp eq i64 %wide.trip.count, 5
  br i1 %i.dl, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.prol.loopexit.3, %.lr.ph.3
  %i.dm = phi i32 [ %i.ec, %.lr.ph.3 ], [ %.unr.3, %.lr.ph.prol.loopexit.3 ] ; 2 uses
  %indvars.iv67.3 = phi i64 [ %indvars.iv.next68.1.3, %.lr.ph.3 ], [ %indvars.iv67.unr.3, %.lr.ph.prol.loopexit.3 ] ; 4 uses
  %.064.3 = phi i32 [ %spec.select.1.3, %.lr.ph.3 ], [ %.064.unr.3, %.lr.ph.prol.loopexit.3 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv67.3
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !16
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !16 ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, %i.dm
  %i.dt = trunc nuw nsw i64 %indvars.iv67.3 to i32
  %spec.select.3 = select i1 %i.ds, i32 %i.dt, i32 %.064.3
  %indvars.iv.next68.3 = add nuw nsw i64 %indvars.iv67.3, 1 ; 2 uses
  %i.du = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 %i.dm) ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next68.3
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !16
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, %i.du
  %i.eb = trunc nuw nsw i64 %indvars.iv.next68.3 to i32
  %spec.select.1.3 = select i1 %i.ea, i32 %i.eb, i32 %spec.select.3 ; 2 uses
  %indvars.iv.next68.1.3 = add nuw nsw i64 %indvars.iv67.3, 2 ; 2 uses
  %exitcond.not.1.3 = icmp eq i64 %indvars.iv.next68.1.3, %wide.trip.count
  %i.ec = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 %i.du)
  br i1 %exitcond.not.1.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !50

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.lr.ph.prol.loopexit.3
  %spec.select.lcssa.3 = phi i32 [ %spec.select.lcssa.unr.3, %.lr.ph.prol.loopexit.3 ], [ %spec.select.1.3, %.lr.ph.3 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ee = sext i32 %spec.select.lcssa.3 to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !16
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !16
  store i32 %.pre.3, ptr %i.ef, align 4, !tbaa !16
  %exitcond74.not.3 = icmp eq i64 %wide.trip.count73, 4
  br i1 %exitcond74.not.3, label %.loopexit, label %.lr.ph.preheader.4

.lr.ph.preheader.4:                               ; preds = %._crit_edge.3
  %.phi.trans.insert.4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.4 = load i32, ptr %.phi.trans.insert.4, align 4, !tbaa !16 ; 2 uses
  %.phi.trans.insert75.4 = sext i32 %.pre.4 to i64
  %.phi.trans.insert76.4 = getelementptr inbounds [4 x i8], ptr %3, i64 %.phi.trans.insert75.4
  %.pre77.4 = load i32, ptr %.phi.trans.insert76.4, align 4, !tbaa !16 ; 3 uses
  %i.eh = and i64 %i.c, 4
  %lcmp.mod.4.not.not = icmp eq i64 %i.eh, 0
  br i1 %lcmp.mod.4.not.not, label %.lr.ph.prol.4, label %.lr.ph.prol.loopexit.4

.lr.ph.prol.4:                                    ; preds = %.lr.ph.preheader.4
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !16
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !16 ; 2 uses
  %i.en = icmp sgt i32 %i.em, %.pre77.4
  %spec.select.prol.4 = select i1 %i.en, i32 5, i32 4 ; 2 uses
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.em, i32 %.pre77.4)
  br label %.lr.ph.prol.loopexit.4

.lr.ph.prol.loopexit.4:                           ; preds = %.lr.ph.prol.4, %.lr.ph.preheader.4
  %spec.select.lcssa.unr.4 = phi i32 [ poison, %.lr.ph.preheader.4 ], [ %spec.select.prol.4, %.lr.ph.prol.4 ]
  %.unr.4 = phi i32 [ %.pre77.4, %.lr.ph.preheader.4 ], [ %i.eo, %.lr.ph.prol.4 ]
  %indvars.iv67.unr.4 = phi i64 [ 5, %.lr.ph.preheader.4 ], [ 6, %.lr.ph.prol.4 ]
  %.064.unr.4 = phi i32 [ 4, %.lr.ph.preheader.4 ], [ %spec.select.prol.4, %.lr.ph.prol.4 ]
  %i.ep = icmp eq i64 %wide.trip.count, 6
  br i1 %i.ep, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.prol.loopexit.4, %.lr.ph.4
  %i.eq = phi i32 [ %i.fg, %.lr.ph.4 ], [ %.unr.4, %.lr.ph.prol.loopexit.4 ] ; 2 uses
  %indvars.iv67.4 = phi i64 [ %indvars.iv.next68.1.4, %.lr.ph.4 ], [ %indvars.iv67.unr.4, %.lr.ph.prol.loopexit.4 ] ; 4 uses
  %.064.4 = phi i32 [ %spec.select.1.4, %.lr.ph.4 ], [ %.064.unr.4, %.lr.ph.prol.loopexit.4 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv67.4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !16
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !16 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, %i.eq
  %i.ex = trunc nuw nsw i64 %indvars.iv67.4 to i32
  %spec.select.4 = select i1 %i.ew, i32 %i.ex, i32 %.064.4
  %indvars.iv.next68.4 = add nuw nsw i64 %indvars.iv67.4, 1 ; 2 uses
  %i.ey = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 %i.eq) ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next68.4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !16
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !16 ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, %i.ey
  %i.ff = trunc nuw nsw i64 %indvars.iv.next68.4 to i32
  %spec.select.1.4 = select i1 %i.fe, i32 %i.ff, i32 %spec.select.4 ; 2 uses
  %indvars.iv.next68.1.4 = add nuw nsw i64 %indvars.iv67.4, 2 ; 2 uses
  %exitcond.not.1.4 = icmp eq i64 %indvars.iv.next68.1.4, %wide.trip.count
  %i.fg = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 %i.ey)
  br i1 %exitcond.not.1.4, label %._crit_edge.4, label %.lr.ph.4, !llvm.loop !50

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.lr.ph.prol.loopexit.4
  %spec.select.lcssa.4 = phi i32 [ %spec.select.lcssa.unr.4, %.lr.ph.prol.loopexit.4 ], [ %spec.select.1.4, %.lr.ph.4 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = sext i32 %spec.select.lcssa.4 to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !16
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !16
  store i32 %.pre.4, ptr %i.fj, align 4, !tbaa !16
  %exitcond74.not.4 = icmp eq i64 %wide.trip.count73, 5
  br i1 %exitcond74.not.4, label %.loopexit, label %.lr.ph.preheader.5

.lr.ph.preheader.5:                               ; preds = %._crit_edge.4
  %.phi.trans.insert.5 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre.5 = load i32, ptr %.phi.trans.insert.5, align 4, !tbaa !16 ; 2 uses
  %.phi.trans.insert75.5 = sext i32 %.pre.5 to i64
  %.phi.trans.insert76.5 = getelementptr inbounds [4 x i8], ptr %3, i64 %.phi.trans.insert75.5
  %.pre77.5 = load i32, ptr %.phi.trans.insert76.5, align 4, !tbaa !16 ; 3 uses
  %i.fl = and i64 %i.c, 4
  %lcmp.mod.5.not = icmp eq i64 %i.fl, 0
  br i1 %lcmp.mod.5.not, label %.lr.ph.prol.loopexit.5, label %.lr.ph.prol.5

.lr.ph.prol.5:                                    ; preds = %.lr.ph.preheader.5
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !16
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !16 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, %.pre77.5
  %spec.select.prol.5 = select i1 %i.fr, i32 6, i32 5 ; 2 uses
  %i.fs = tail call i32 @llvm.smax.i32(i32 %i.fq, i32 %.pre77.5)
  br label %.lr.ph.prol.loopexit.5

.lr.ph.prol.loopexit.5:                           ; preds = %.lr.ph.prol.5, %.lr.ph.preheader.5
  %spec.select.lcssa.unr.5 = phi i32 [ poison, %.lr.ph.preheader.5 ], [ %spec.select.prol.5, %.lr.ph.prol.5 ]
  %.unr.5 = phi i32 [ %.pre77.5, %.lr.ph.preheader.5 ], [ %i.fs, %.lr.ph.prol.5 ]
  %indvars.iv67.unr.5 = phi i64 [ 6, %.lr.ph.preheader.5 ], [ 7, %.lr.ph.prol.5 ]
  %.064.unr.5 = phi i32 [ 5, %.lr.ph.preheader.5 ], [ %spec.select.prol.5, %.lr.ph.prol.5 ]
  %i.ft = icmp eq i64 %wide.trip.count, 7
  br i1 %i.ft, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.prol.loopexit.5, %.lr.ph.5
  %i.fu = phi i32 [ %i.gk, %.lr.ph.5 ], [ %.unr.5, %.lr.ph.prol.loopexit.5 ] ; 2 uses
  %indvars.iv67.5 = phi i64 [ %indvars.iv.next68.1.5, %.lr.ph.5 ], [ %indvars.iv67.unr.5, %.lr.ph.prol.loopexit.5 ] ; 4 uses
  %.064.5 = phi i32 [ %spec.select.1.5, %.lr.ph.5 ], [ %.064.unr.5, %.lr.ph.prol.loopexit.5 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv67.5
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !16
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !16 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, %i.fu
  %i.gb = trunc nuw nsw i64 %indvars.iv67.5 to i32
  %spec.select.5 = select i1 %i.ga, i32 %i.gb, i32 %.064.5
  %indvars.iv.next68.5 = add nuw nsw i64 %indvars.iv67.5, 1 ; 2 uses
  %i.gc = tail call i32 @llvm.smax.i32(i32 %i.fz, i32 %i.fu) ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next68.5
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !16
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !16 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, %i.gc
  %i.gj = trunc nuw nsw i64 %indvars.iv.next68.5 to i32
  %spec.select.1.5 = select i1 %i.gi, i32 %i.gj, i32 %spec.select.5 ; 2 uses
  %indvars.iv.next68.1.5 = add nuw nsw i64 %indvars.iv67.5, 2 ; 2 uses
  %exitcond.not.1.5 = icmp eq i64 %indvars.iv.next68.1.5, %wide.trip.count
  %i.gk = tail call i32 @llvm.smax.i32(i32 %i.gh, i32 %i.gc)
  br i1 %exitcond.not.1.5, label %._crit_edge.5, label %.lr.ph.5, !llvm.loop !50

._crit_edge.5:                                    ; preds = %.lr.ph.5, %.lr.ph.prol.loopexit.5
  %spec.select.lcssa.5 = phi i32 [ %spec.select.lcssa.unr.5, %.lr.ph.prol.loopexit.5 ], [ %spec.select.1.5, %.lr.ph.5 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gm = sext i32 %spec.select.lcssa.5 to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !16
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !16
  store i32 %.pre.5, ptr %i.gn, align 4, !tbaa !16
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.gp = lshr i64 %i.c, 3
  %i.gq = and i64 %i.gp, 2147483647               ; 3 uses
  %.idx = shl nuw nsw i64 %i.gq, 2                ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 8 uses
  tail call void @Abc_SortCost2Reverse_rec(ptr noundef %0, ptr noundef %i.gr, ptr noundef %2, ptr noundef %3)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gq
  tail call void @Abc_SortCost2Reverse_rec(ptr noundef %i.gr, ptr noundef %1, ptr noundef %i.gs, ptr noundef %3)
  %i.gt = icmp ne i64 %i.gq, 0
  %i.gu = icmp ult ptr %i.gr, %1
  %i.gv = and i1 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph.i, label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.j, %bb.e
  %.036.lcssa.i = phi ptr [ %i.gr, %bb.e ], [ %.137.i, %bb.j ] ; 5 uses
  %.033.lcssa.i = phi ptr [ %2, %bb.e ], [ %.134.i, %bb.j ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.e ], [ %.1.i, %bb.j ] ; 5 uses
  %.036.lcssa.i96 = ptrtoaddr ptr %.036.lcssa.i to i64 ; 2 uses
  %i.gw = icmp ult ptr %.0.lcssa.i, %i.gr
  br i1 %i.gw, label %.lr.ph49.i.preheader, label %.preheader.i

.lr.ph49.i.preheader:                             ; preds = %.preheader41.i
  %.033.lcssa.i88 = ptrtoaddr ptr %.0.lcssa.i to i64 ; 2 uses
  %.0.lcssa.i87 = ptrtoaddr ptr %.033.lcssa.i to i64
  %i.gx = add i64 %.idx, %i.b
  %i.gy = xor i64 %.033.lcssa.i88, -1
  %i.gz = add i64 %i.gx, %i.gy                    ; 2 uses
  %i.ha = lshr i64 %i.gz, 2
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gz, 44
  %i.hc = sub i64 %.033.lcssa.i88, %.0.lcssa.i87
  %diff.check = icmp ugt i64 %i.hc, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph49.i.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.i.preheader
  %n.vec = and i64 %i.hb, 9223372036854775800     ; 3 uses
  %i.hd = shl i64 %n.vec, 2                       ; 2 uses
  %i.he = getelementptr i8, ptr %.0.lcssa.i, i64 %i.hd
  %i.hf = getelementptr i8, ptr %.033.lcssa.i, i64 %i.hd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.hg ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.033.lcssa.i, i64 %i.hg ; 2 uses
  %i.hh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !16
  %wide.load90 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !16
  %i.hi = getelementptr i8, ptr %next.gep89, i64 16
  store <4 x i32> %wide.load, ptr %next.gep89, align 4, !tbaa !16
  store <4 x i32> %wide.load90, ptr %i.hi, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph49.i.preheader117

.lr.ph49.i.preheader117:                          ; preds = %.lr.ph49.i.preheader, %middle.block
  %.248.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph49.i.preheader ], [ %i.he, %middle.block ]
  %.23547.i.ph = phi ptr [ %.033.lcssa.i, %.lr.ph49.i.preheader ], [ %i.hf, %middle.block ]
  br label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.j
  %.044.i = phi ptr [ %.1.i, %bb.j ], [ %0, %bb.e ] ; 4 uses
  %.03343.i = phi ptr [ %.134.i, %bb.j ], [ %2, %bb.e ] ; 5 uses
  %.03642.i = phi ptr [ %.137.i, %bb.j ], [ %i.gr, %bb.e ] ; 5 uses
  %i.hk = load i32, ptr %.044.i, align 4, !tbaa !16 ; 3 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !16 ; 2 uses
  %i.ho = load i32, ptr %.03642.i, align 4, !tbaa !16 ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !16 ; 2 uses
  %i.hs = icmp eq i32 %i.hn, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.03343.i, i64 4 ; 3 uses
  br i1 %i.hs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.044.i, i64 4
  store i32 %i.hk, ptr %.03343.i, align 4, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %.03642.i, i64 4
  %i.hw = load i32, ptr %.03642.i, align 4, !tbaa !16
  %i.hx = getelementptr inbounds nuw i8, ptr %.03343.i, i64 8
  store i32 %i.hw, ptr %i.ht, align 4, !tbaa !16
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph.i
  %i.hy = icmp sgt i32 %i.hn, %i.hr
  br i1 %i.hy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hz = getelementptr inbounds nuw i8, ptr %.044.i, i64 4
  store i32 %i.hk, ptr %.03343.i, align 4, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ia = getelementptr inbounds nuw i8, ptr %.03642.i, i64 4
  store i32 %i.ho, ptr %.03343.i, align 4, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.137.i = phi ptr [ %i.hv, %bb.f ], [ %.03642.i, %bb.h ], [ %i.ia, %bb.i ] ; 3 uses
  %.134.i = phi ptr [ %i.hx, %bb.f ], [ %i.ht, %bb.h ], [ %i.ht, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.hu, %bb.f ], [ %i.hz, %bb.h ], [ %.044.i, %bb.i ] ; 3 uses
  %i.ib = icmp ult ptr %.1.i, %i.gr
  %i.ic = icmp ult ptr %.137.i, %1
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %.lr.ph.i, label %.preheader41.i, !llvm.loop !2

.preheader.i:                                     ; preds = %.lr.ph49.i, %middle.block, %.preheader41.i
  %.235.lcssa.i = phi ptr [ %.033.lcssa.i, %.preheader41.i ], [ %i.hf, %middle.block ], [ %i.it, %.lr.ph49.i ] ; 4 uses
  %i.ie = icmp ult ptr %.036.lcssa.i, %1
  br i1 %i.ie, label %.lr.ph53.i.preheader, label %Abc_SortMergeCost2Reverse.exit

.lr.ph53.i.preheader:                             ; preds = %.preheader.i
  %.235.lcssa.i97 = ptrtoaddr ptr %.235.lcssa.i to i64
  %i.if = xor i64 %.036.lcssa.i96, -1
  %i.ig = add i64 %i.if, %i.a                     ; 2 uses
  %i.ih = lshr i64 %i.ig, 2
  %i.ii = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %min.iters.check99 = icmp ult i64 %i.ig, 44
  %i.ij = sub i64 %.036.lcssa.i96, %.235.lcssa.i97
  %diff.check101 = icmp ugt i64 %i.ij, -32
  %or.cond115 = select i1 %min.iters.check99, i1 true, i1 %diff.check101
  br i1 %or.cond115, label %.lr.ph53.i.preheader116, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph53.i.preheader
  %n.vec103 = and i64 %i.ii, 9223372036854775800  ; 3 uses
  %i.ik = shl i64 %n.vec103, 2                    ; 2 uses
  %i.il = getelementptr i8, ptr %.235.lcssa.i, i64 %i.ik
  %i.im = getelementptr i8, ptr %.036.lcssa.i, i64 %i.ik
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next110, %vector.body104 ] ; 2 uses
  %i.in = shl i64 %index105, 2                    ; 2 uses
  %next.gep106 = getelementptr i8, ptr %.235.lcssa.i, i64 %i.in ; 2 uses
  %next.gep107 = getelementptr i8, ptr %.036.lcssa.i, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load108 = load <4 x i32>, ptr %next.gep107, align 4, !tbaa !16
  %wide.load109 = load <4 x i32>, ptr %i.io, align 4, !tbaa !16
  %i.ip = getelementptr i8, ptr %next.gep106, i64 16
  store <4 x i32> %wide.load108, ptr %next.gep106, align 4, !tbaa !16
  store <4 x i32> %wide.load109, ptr %i.ip, align 4, !tbaa !16
  %index.next110 = add nuw i64 %index105, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.iq, label %middle.block111, label %vector.body104, !llvm.loop !52

middle.block111:                                  ; preds = %vector.body104
  %cmp.n112 = icmp eq i64 %i.ii, %n.vec103
  br i1 %cmp.n112, label %Abc_SortMergeCost2Reverse.exit, label %.lr.ph53.i.preheader116

.lr.ph53.i.preheader116:                          ; preds = %.lr.ph53.i.preheader, %middle.block111
  %.352.i.ph = phi ptr [ %.235.lcssa.i, %.lr.ph53.i.preheader ], [ %i.il, %middle.block111 ]
  %.23851.i.ph = phi ptr [ %.036.lcssa.i, %.lr.ph53.i.preheader ], [ %i.im, %middle.block111 ]
  br label %.lr.ph53.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.preheader117, %.lr.ph49.i
  %.248.i = phi ptr [ %i.ir, %.lr.ph49.i ], [ %.248.i.ph, %.lr.ph49.i.preheader117 ] ; 2 uses
  %.23547.i = phi ptr [ %i.it, %.lr.ph49.i ], [ %.23547.i.ph, %.lr.ph49.i.preheader117 ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.248.i, i64 4 ; 2 uses
  %i.is = load i32, ptr %.248.i, align 4, !tbaa !16
  %i.it = getelementptr inbounds nuw i8, ptr %.23547.i, i64 4 ; 2 uses
  store i32 %i.is, ptr %.23547.i, align 4, !tbaa !16
  %i.iu = icmp ult ptr %i.ir, %i.gr
  br i1 %i.iu, label %.lr.ph49.i, label %.preheader.i, !llvm.loop !53

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader116, %.lr.ph53.i
  %.352.i = phi ptr [ %i.ix, %.lr.ph53.i ], [ %.352.i.ph, %.lr.ph53.i.preheader116 ] ; 2 uses
  %.23851.i = phi ptr [ %i.iv, %.lr.ph53.i ], [ %.23851.i.ph, %.lr.ph53.i.preheader116 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.23851.i, i64 4 ; 2 uses
  %i.iw = load i32, ptr %.23851.i, align 4, !tbaa !16
  %i.ix = getelementptr inbounds nuw i8, ptr %.352.i, i64 4
  store i32 %i.iw, ptr %.352.i, align 4, !tbaa !16
  %i.iy = icmp ult ptr %i.iv, %1
  br i1 %i.iy, label %.lr.ph53.i, label %Abc_SortMergeCost2Reverse.exit, !llvm.loop !54

Abc_SortMergeCost2Reverse.exit:                   ; preds = %.lr.ph53.i, %middle.block111, %.preheader.i
  %i.iz = and i64 %i.c, 8589934588
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %2, i64 %i.iz, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %._crit_edge.5, %.preheader, %bb.c, %bb.b, %Abc_SortMergeCost2Reverse.exit, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_MergeSortCost2Reverse(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #21 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  tail call void @Abc_SortCost2Reverse_rec(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.d, ptr noundef %2)
  tail call void @free(ptr noundef %i.d) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_MergeSortCostMerge(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp ult ptr %0, %1
  %i.d = icmp ult ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader49

.preheader49:                                     ; preds = %bb.f, %bb.a
  %.044.lcssa = phi ptr [ %2, %bb.a ], [ %.145, %bb.f ] ; 9 uses
  %.041.lcssa = phi ptr [ %0, %bb.a ], [ %.142, %bb.f ] ; 9 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %.1, %bb.f ] ; 8 uses
  %.044.lcssa87 = ptrtoaddr ptr %.044.lcssa to i64
  %i.f = icmp ult ptr %.041.lcssa, %1
  br i1 %i.f, label %.lr.ph57.preheader, label %.preheader

.lr.ph57.preheader:                               ; preds = %.preheader49
  %.041.lcssa71 = ptrtoaddr ptr %.041.lcssa to i64
  %i.g = xor i64 %.041.lcssa71, -1
end_hunk_2
