Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mpistubs?download=true
inline.NumInlined: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Init(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Finalize() local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Abort(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @hypre_MPI_Wtime() local_unnamed_addr #0 {
bb.a:
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @hypre_MPI_Wtick() local_unnamed_addr #0 {
bb.a:
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Barrier(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Comm_create(i32 noundef %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Comm_dup(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_MPI_Comm_size(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #1 {
bb.a:
  store i32 1, ptr %1, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_MPI_Comm_rank(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #1 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Comm_free(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Comm_group(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Group_incl(i32 noundef %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Group_free(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Address(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Get_count(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Alltoall(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_MPI_Allgather(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 3 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader27
    i32 2, label %.preheader29
  ]

.preheader29:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader29
  %wide.trip.count = zext nneg i32 %1 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.d = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check53 = icmp ult i32 %1, 32
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !8
  %wide.load54 = load <16 x i8>, ptr %i.g, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %wide.load, ptr %i.h, align 1, !tbaa !8
  store <16 x i8> %wide.load54, ptr %i.i, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index56
  %wide.load57 = load <4 x i8>, ptr %i.k, align 1, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %index56
  store <4 x i8> %wide.load57, ptr %i.l, align 1, !tbaa !8
  %index.next58 = add nuw i64 %index56, 4         ; 2 uses
  %i.m = icmp eq i64 %index.next58, %n.vec55
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %n.vec55, %wide.trip.count
  br i1 %cmp.n59, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec55, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.prol
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !18

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.loopexit, label %.lr.ph

.preheader27:                                     ; preds = %bb.a
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %.lr.ph33.preheader, label %.loopexit

.lr.ph33.preheader:                               ; preds = %.preheader27
  %wide.trip.count42 = zext nneg i32 %1 to i64    ; 5 uses
  %min.iters.check62 = icmp ult i32 %1, 8
  %i.t = sub i64 %i.a, %i.b
  %diff.check61 = icmp ugt i64 %i.t, -32
  %or.cond87 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond87, label %.lr.ph33.preheader90, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph33.preheader
  %n.vec64 = and i64 %wide.trip.count42, 2147483644 ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next69, %vector.body65 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index66 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load67 = load <2 x double>, ptr %i.u, align 8, !tbaa !15
  %wide.load68 = load <2 x double>, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index66 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %wide.load67, ptr %i.w, align 8, !tbaa !15
  store <2 x double> %wide.load68, ptr %i.x, align 8, !tbaa !15
  %index.next69 = add nuw i64 %index66, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next69, %n.vec64
  br i1 %i.y, label %middle.block70, label %vector.body65, !llvm.loop !19

middle.block70:                                   ; preds = %vector.body65
  %cmp.n71 = icmp eq i64 %n.vec64, %wide.trip.count42
  br i1 %cmp.n71, label %.loopexit, label %.lr.ph33.preheader90

.lr.ph33.preheader90:                             ; preds = %.lr.ph33.preheader, %middle.block70
  %indvars.iv39.ph = phi i64 [ 0, %.lr.ph33.preheader ], [ %n.vec64, %middle.block70 ] ; 3 uses
  %xtraiter93 = and i64 %wide.trip.count42, 3     ; 2 uses
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader90, %.lr.ph33.prol
  %indvars.iv39.prol = phi i64 [ %indvars.iv.next40.prol, %.lr.ph33.prol ], [ %indvars.iv39.ph, %.lr.ph33.preheader90 ] ; 3 uses
  %prol.iter95 = phi i64 [ %prol.iter95.next, %.lr.ph33.prol ], [ 0, %.lr.ph33.preheader90 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39.prol
  %i.aa = load double, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39.prol
  store double %i.aa, ptr %i.ab, align 8, !tbaa !15
  %indvars.iv.next40.prol = add nuw nsw i64 %indvars.iv39.prol, 1 ; 2 uses
  %prol.iter95.next = add i64 %prol.iter95, 1     ; 2 uses
  %prol.iter95.cmp.not = icmp eq i64 %prol.iter95.next, %xtraiter93
  br i1 %prol.iter95.cmp.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol, !llvm.loop !20

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol, %.lr.ph33.preheader90
  %indvars.iv39.unr = phi i64 [ %indvars.iv39.ph, %.lr.ph33.preheader90 ], [ %indvars.iv.next40.prol, %.lr.ph33.prol ]
  %i.ac = sub nsw i64 %indvars.iv39.ph, %wide.trip.count42
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.loopexit, label %.lr.ph33

.preheader:                                       ; preds = %bb.a
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %.lr.ph35.preheader, label %.loopexit

.lr.ph35.preheader:                               ; preds = %.preheader
  %wide.trip.count47 = zext nneg i32 %1 to i64    ; 5 uses
  %min.iters.check76 = icmp ult i32 %1, 8
  %i.af = sub i64 %i.a, %i.b
  %diff.check74 = icmp ugt i64 %i.af, -32
  %or.cond88 = or i1 %min.iters.check76, %diff.check74
  br i1 %or.cond88, label %.lr.ph35.preheader89, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph35.preheader
  %n.vec78 = and i64 %wide.trip.count47, 2147483640 ; 3 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next83, %vector.body79 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load81 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !7
  %wide.load82 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index80 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load81, ptr %i.ai, align 4, !tbaa !7
  store <4 x i32> %wide.load82, ptr %i.aj, align 4, !tbaa !7
  %index.next83 = add nuw i64 %index80, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.ak, label %middle.block84, label %vector.body79, !llvm.loop !21

middle.block84:                                   ; preds = %vector.body79
  %cmp.n85 = icmp eq i64 %n.vec78, %wide.trip.count47
  br i1 %cmp.n85, label %.loopexit, label %.lr.ph35.preheader89

.lr.ph35.preheader89:                             ; preds = %.lr.ph35.preheader, %middle.block84
  %indvars.iv44.ph = phi i64 [ 0, %.lr.ph35.preheader ], [ %n.vec78, %middle.block84 ] ; 3 uses
  %xtraiter96 = and i64 %wide.trip.count47, 3     ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph35.prol.loopexit, label %.lr.ph35.prol

.lr.ph35.prol:                                    ; preds = %.lr.ph35.preheader89, %.lr.ph35.prol
  %indvars.iv44.prol = phi i64 [ %indvars.iv.next45.prol, %.lr.ph35.prol ], [ %indvars.iv44.ph, %.lr.ph35.preheader89 ] ; 3 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %.lr.ph35.prol ], [ 0, %.lr.ph35.preheader89 ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44.prol
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  %indvars.iv.next45.prol = add nuw nsw i64 %indvars.iv44.prol, 1 ; 2 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %.lr.ph35.prol.loopexit, label %.lr.ph35.prol, !llvm.loop !22

.lr.ph35.prol.loopexit:                           ; preds = %.lr.ph35.prol, %.lr.ph35.preheader89
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %.lr.ph35.preheader89 ], [ %indvars.iv.next45.prol, %.lr.ph35.prol ]
  %i.ao = sub nsw i64 %indvars.iv44.ph, %wide.trip.count47
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.prol.loopexit, %.lr.ph35
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.3, %.lr.ph35 ], [ %indvars.iv44.unr, %.lr.ph35.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45
  store i32 %i.au, ptr %i.av, align 4, !tbaa !7
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.1
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !7
  %indvars.iv.next45.2 = add nuw nsw i64 %indvars.iv44, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.2
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.2
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !7
  %indvars.iv.next45.3 = add nuw nsw i64 %indvars.iv44, 4 ; 2 uses
  %exitcond48.not.3 = icmp eq i64 %indvars.iv.next45.3, %wide.trip.count47
  br i1 %exitcond48.not.3, label %.loopexit, label %.lr.ph35, !llvm.loop !23

.lr.ph33:                                         ; preds = %.lr.ph33.prol.loopexit, %.lr.ph33
  %indvars.iv39 = phi i64 [ %indvars.iv.next40.3, %.lr.ph33 ], [ %indvars.iv39.unr, %.lr.ph33.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39
  store double %i.bd, ptr %i.be, align 8, !tbaa !15
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40
  store double %i.bg, ptr %i.bh, align 8, !tbaa !15
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.1
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.1
  store double %i.bj, ptr %i.bk, align 8, !tbaa !15
  %indvars.iv.next40.2 = add nuw nsw i64 %indvars.iv39, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.2
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.2
  store double %i.bm, ptr %i.bn, align 8, !tbaa !15
  %indvars.iv.next40.3 = add nuw nsw i64 %indvars.iv39, 4 ; 2 uses
  %exitcond43.not.3 = icmp eq i64 %indvars.iv.next40.3, %wide.trip.count42
  br i1 %exitcond43.not.3, label %.loopexit, label %.lr.ph33, !llvm.loop !24

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph33.prol.loopexit, %.lr.ph33, %.lr.ph35.prol.loopexit, %.lr.ph35, %middle.block, %vec.epilog.middle.block, %middle.block70, %middle.block84, %.preheader29, %.preheader27, %.preheader, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_MPI_Allgatherv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 3 uses
  switch i32 %2, label %hypre_MPI_Allgather.exit [
    i32 1, label %.preheader.i
    i32 0, label %.preheader27.i
    i32 2, label %.preheader29.i
  ]

.preheader29.i:                                   ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %iter.check, label %hypre_MPI_Allgather.exit

iter.check:                                       ; preds = %.preheader29.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.d = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %1, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !8
  %wide.load15 = load <16 x i8>, ptr %i.g, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %wide.load, ptr %i.h, align 1, !tbaa !8
  store <16 x i8> %wide.load15, ptr %i.i, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %hypre_MPI_Allgather.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.k, align 1, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %index17
  store <4 x i8> %wide.load18, ptr %i.l, align 1, !tbaa !8
  %index.next19 = add nuw i64 %index17, 4         ; 2 uses
  %i.m = icmp eq i64 %index.next19, %n.vec16
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec16, %wide.trip.count.i
  br i1 %cmp.n20, label %hypre_MPI_Allgather.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.prol
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i.prol
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !28

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.q = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %hypre_MPI_Allgather.exit, label %.lr.ph.i

.preheader27.i:                                   ; preds = %bb.a
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %.lr.ph33.preheader.i, label %hypre_MPI_Allgather.exit

.lr.ph33.preheader.i:                             ; preds = %.preheader27.i
  %wide.trip.count42.i = zext nneg i32 %1 to i64  ; 5 uses
  %min.iters.check23 = icmp ult i32 %1, 8
  %i.t = sub i64 %i.a, %i.b
  %diff.check22 = icmp ugt i64 %i.t, -32
  %or.cond48 = or i1 %min.iters.check23, %diff.check22
  br i1 %or.cond48, label %.lr.ph33.i.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph33.preheader.i
  %n.vec25 = and i64 %wide.trip.count42.i, 2147483644 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next30, %vector.body26 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index27 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load28 = load <2 x double>, ptr %i.u, align 8, !tbaa !15
  %wide.load29 = load <2 x double>, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %wide.load28, ptr %i.w, align 8, !tbaa !15
  store <2 x double> %wide.load29, ptr %i.x, align 8, !tbaa !15
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.y, label %middle.block31, label %vector.body26, !llvm.loop !29

middle.block31:                                   ; preds = %vector.body26
  %cmp.n32 = icmp eq i64 %n.vec25, %wide.trip.count42.i
  br i1 %cmp.n32, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i.preheader

.lr.ph33.i.preheader:                             ; preds = %.lr.ph33.preheader.i, %middle.block31
  %indvars.iv39.i.ph = phi i64 [ 0, %.lr.ph33.preheader.i ], [ %n.vec25, %middle.block31 ] ; 3 uses
  %xtraiter52 = and i64 %wide.trip.count42.i, 3   ; 2 uses
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol

.lr.ph33.i.prol:                                  ; preds = %.lr.ph33.i.preheader, %.lr.ph33.i.prol
  %indvars.iv39.i.prol = phi i64 [ %indvars.iv.next40.i.prol, %.lr.ph33.i.prol ], [ %indvars.iv39.i.ph, %.lr.ph33.i.preheader ] ; 3 uses
  %prol.iter54 = phi i64 [ %prol.iter54.next, %.lr.ph33.i.prol ], [ 0, %.lr.ph33.i.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39.i.prol
  %i.aa = load double, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39.i.prol
  store double %i.aa, ptr %i.ab, align 8, !tbaa !15
  %indvars.iv.next40.i.prol = add nuw nsw i64 %indvars.iv39.i.prol, 1 ; 2 uses
  %prol.iter54.next = add i64 %prol.iter54, 1     ; 2 uses
  %prol.iter54.cmp.not = icmp eq i64 %prol.iter54.next, %xtraiter52
  br i1 %prol.iter54.cmp.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol, !llvm.loop !30

.lr.ph33.i.prol.loopexit:                         ; preds = %.lr.ph33.i.prol, %.lr.ph33.i.preheader
  %indvars.iv39.i.unr = phi i64 [ %indvars.iv39.i.ph, %.lr.ph33.i.preheader ], [ %indvars.iv.next40.i.prol, %.lr.ph33.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv39.i.ph, %wide.trip.count42.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i

.preheader.i:                                     ; preds = %bb.a
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %.lr.ph35.preheader.i, label %hypre_MPI_Allgather.exit

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count47.i = zext nneg i32 %1 to i64  ; 5 uses
  %min.iters.check37 = icmp ult i32 %1, 8
  %i.af = sub i64 %i.a, %i.b
  %diff.check35 = icmp ugt i64 %i.af, -32
  %or.cond49 = or i1 %min.iters.check37, %diff.check35
  br i1 %or.cond49, label %.lr.ph35.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph35.preheader.i
  %n.vec39 = and i64 %wide.trip.count47.i, 2147483640 ; 3 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph38
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next44, %vector.body40 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load42 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !7
  %wide.load43 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index41 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load42, ptr %i.ai, align 4, !tbaa !7
  store <4 x i32> %wide.load43, ptr %i.aj, align 4, !tbaa !7
  %index.next44 = add nuw i64 %index41, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.ak, label %middle.block45, label %vector.body40, !llvm.loop !31

middle.block45:                                   ; preds = %vector.body40
  %cmp.n46 = icmp eq i64 %n.vec39, %wide.trip.count47.i
  br i1 %cmp.n46, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.lr.ph35.preheader.i, %middle.block45
  %indvars.iv44.i.ph = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %n.vec39, %middle.block45 ] ; 3 uses
  %xtraiter55 = and i64 %wide.trip.count47.i, 3   ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol

.lr.ph35.i.prol:                                  ; preds = %.lr.ph35.i.preheader, %.lr.ph35.i.prol
  %indvars.iv44.i.prol = phi i64 [ %indvars.iv.next45.i.prol, %.lr.ph35.i.prol ], [ %indvars.iv44.i.ph, %.lr.ph35.i.preheader ] ; 3 uses
  %prol.iter57 = phi i64 [ %prol.iter57.next, %.lr.ph35.i.prol ], [ 0, %.lr.ph35.i.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44.i.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44.i.prol
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  %indvars.iv.next45.i.prol = add nuw nsw i64 %indvars.iv44.i.prol, 1 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol, !llvm.loop !32

.lr.ph35.i.prol.loopexit:                         ; preds = %.lr.ph35.i.prol, %.lr.ph35.i.preheader
  %indvars.iv44.i.unr = phi i64 [ %indvars.iv44.i.ph, %.lr.ph35.i.preheader ], [ %indvars.iv.next45.i.prol, %.lr.ph35.i.prol ]
  %i.ao = sub nsw i64 %indvars.iv44.i.ph, %wide.trip.count47.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.prol.loopexit, %.lr.ph35.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i.3, %.lr.ph35.i ], [ %indvars.iv44.i.unr, %.lr.ph35.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !7
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i.1
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !7
  %indvars.iv.next45.i.2 = add nuw nsw i64 %indvars.iv44.i, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i.2
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i.2
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !7
  %indvars.iv.next45.i.3 = add nuw nsw i64 %indvars.iv44.i, 4 ; 2 uses
  %exitcond48.not.i.3 = icmp eq i64 %indvars.iv.next45.i.3, %wide.trip.count47.i
  br i1 %exitcond48.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i, !llvm.loop !33

.lr.ph33.i:                                       ; preds = %.lr.ph33.i.prol.loopexit, %.lr.ph33.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i.3, %.lr.ph33.i ], [ %indvars.iv39.i.unr, %.lr.ph33.i.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39.i
  store double %i.bd, ptr %i.be, align 8, !tbaa !15
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i
  store double %i.bg, ptr %i.bh, align 8, !tbaa !15
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i.1
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i.1
  store double %i.bj, ptr %i.bk, align 8, !tbaa !15
  %indvars.iv.next40.i.2 = add nuw nsw i64 %indvars.iv39.i, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i.2
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i.2
  store double %i.bm, ptr %i.bn, align 8, !tbaa !15
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %exitcond43.not.i.3 = icmp eq i64 %indvars.iv.next40.i.3, %wide.trip.count42.i
  br i1 %exitcond43.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i, !llvm.loop !34

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i.1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !8
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i.2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph.i, !llvm.loop !35

hypre_MPI_Allgather.exit:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph33.i.prol.loopexit, %.lr.ph33.i, %.lr.ph35.i.prol.loopexit, %.lr.ph35.i, %middle.block, %vec.epilog.middle.block, %middle.block31, %middle.block45, %bb.a, %.preheader29.i, %.preheader27.i, %.preheader.i
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_MPI_Gather(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 3 uses
  switch i32 %2, label %hypre_MPI_Allgather.exit [
    i32 1, label %.preheader.i
    i32 0, label %.preheader27.i
    i32 2, label %.preheader29.i
  ]

.preheader29.i:                                   ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %iter.check, label %hypre_MPI_Allgather.exit

iter.check:                                       ; preds = %.preheader29.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.d = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %1, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !8
  %wide.load15 = load <16 x i8>, ptr %i.g, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %wide.load, ptr %i.h, align 1, !tbaa !8
  store <16 x i8> %wide.load15, ptr %i.i, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %hypre_MPI_Allgather.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.k, align 1, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %index17
  store <4 x i8> %wide.load18, ptr %i.l, align 1, !tbaa !8
  %index.next19 = add nuw i64 %index17, 4         ; 2 uses
  %i.m = icmp eq i64 %index.next19, %n.vec16
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec16, %wide.trip.count.i
  br i1 %cmp.n20, label %hypre_MPI_Allgather.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.prol
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i.prol
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !38

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.q = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %hypre_MPI_Allgather.exit, label %.lr.ph.i

.preheader27.i:                                   ; preds = %bb.a
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %.lr.ph33.preheader.i, label %hypre_MPI_Allgather.exit

.lr.ph33.preheader.i:                             ; preds = %.preheader27.i
  %wide.trip.count42.i = zext nneg i32 %1 to i64  ; 5 uses
  %min.iters.check23 = icmp ult i32 %1, 8
  %i.t = sub i64 %i.a, %i.b
  %diff.check22 = icmp ugt i64 %i.t, -32
  %or.cond48 = or i1 %min.iters.check23, %diff.check22
  br i1 %or.cond48, label %.lr.ph33.i.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph33.preheader.i
  %n.vec25 = and i64 %wide.trip.count42.i, 2147483644 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next30, %vector.body26 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index27 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load28 = load <2 x double>, ptr %i.u, align 8, !tbaa !15
  %wide.load29 = load <2 x double>, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %wide.load28, ptr %i.w, align 8, !tbaa !15
  store <2 x double> %wide.load29, ptr %i.x, align 8, !tbaa !15
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.y, label %middle.block31, label %vector.body26, !llvm.loop !39

middle.block31:                                   ; preds = %vector.body26
  %cmp.n32 = icmp eq i64 %n.vec25, %wide.trip.count42.i
  br i1 %cmp.n32, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i.preheader

.lr.ph33.i.preheader:                             ; preds = %.lr.ph33.preheader.i, %middle.block31
  %indvars.iv39.i.ph = phi i64 [ 0, %.lr.ph33.preheader.i ], [ %n.vec25, %middle.block31 ] ; 3 uses
  %xtraiter52 = and i64 %wide.trip.count42.i, 3   ; 2 uses
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol

.lr.ph33.i.prol:                                  ; preds = %.lr.ph33.i.preheader, %.lr.ph33.i.prol
  %indvars.iv39.i.prol = phi i64 [ %indvars.iv.next40.i.prol, %.lr.ph33.i.prol ], [ %indvars.iv39.i.ph, %.lr.ph33.i.preheader ] ; 3 uses
  %prol.iter54 = phi i64 [ %prol.iter54.next, %.lr.ph33.i.prol ], [ 0, %.lr.ph33.i.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39.i.prol
  %i.aa = load double, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39.i.prol
  store double %i.aa, ptr %i.ab, align 8, !tbaa !15
  %indvars.iv.next40.i.prol = add nuw nsw i64 %indvars.iv39.i.prol, 1 ; 2 uses
  %prol.iter54.next = add i64 %prol.iter54, 1     ; 2 uses
  %prol.iter54.cmp.not = icmp eq i64 %prol.iter54.next, %xtraiter52
  br i1 %prol.iter54.cmp.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol, !llvm.loop !40

.lr.ph33.i.prol.loopexit:                         ; preds = %.lr.ph33.i.prol, %.lr.ph33.i.preheader
  %indvars.iv39.i.unr = phi i64 [ %indvars.iv39.i.ph, %.lr.ph33.i.preheader ], [ %indvars.iv.next40.i.prol, %.lr.ph33.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv39.i.ph, %wide.trip.count42.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i

.preheader.i:                                     ; preds = %bb.a
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %.lr.ph35.preheader.i, label %hypre_MPI_Allgather.exit

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count47.i = zext nneg i32 %1 to i64  ; 5 uses
  %min.iters.check37 = icmp ult i32 %1, 8
  %i.af = sub i64 %i.a, %i.b
  %diff.check35 = icmp ugt i64 %i.af, -32
  %or.cond49 = or i1 %min.iters.check37, %diff.check35
  br i1 %or.cond49, label %.lr.ph35.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph35.preheader.i
  %n.vec39 = and i64 %wide.trip.count47.i, 2147483640 ; 3 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph38
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next44, %vector.body40 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load42 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !7
  %wide.load43 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index41 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load42, ptr %i.ai, align 4, !tbaa !7
  store <4 x i32> %wide.load43, ptr %i.aj, align 4, !tbaa !7
  %index.next44 = add nuw i64 %index41, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.ak, label %middle.block45, label %vector.body40, !llvm.loop !41

middle.block45:                                   ; preds = %vector.body40
  %cmp.n46 = icmp eq i64 %n.vec39, %wide.trip.count47.i
  br i1 %cmp.n46, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.lr.ph35.preheader.i, %middle.block45
  %indvars.iv44.i.ph = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %n.vec39, %middle.block45 ] ; 3 uses
  %xtraiter55 = and i64 %wide.trip.count47.i, 3   ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol

.lr.ph35.i.prol:                                  ; preds = %.lr.ph35.i.preheader, %.lr.ph35.i.prol
  %indvars.iv44.i.prol = phi i64 [ %indvars.iv.next45.i.prol, %.lr.ph35.i.prol ], [ %indvars.iv44.i.ph, %.lr.ph35.i.preheader ] ; 3 uses
  %prol.iter57 = phi i64 [ %prol.iter57.next, %.lr.ph35.i.prol ], [ 0, %.lr.ph35.i.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44.i.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44.i.prol
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  %indvars.iv.next45.i.prol = add nuw nsw i64 %indvars.iv44.i.prol, 1 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol, !llvm.loop !42

.lr.ph35.i.prol.loopexit:                         ; preds = %.lr.ph35.i.prol, %.lr.ph35.i.preheader
  %indvars.iv44.i.unr = phi i64 [ %indvars.iv44.i.ph, %.lr.ph35.i.preheader ], [ %indvars.iv.next45.i.prol, %.lr.ph35.i.prol ]
  %i.ao = sub nsw i64 %indvars.iv44.i.ph, %wide.trip.count47.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.prol.loopexit, %.lr.ph35.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i.3, %.lr.ph35.i ], [ %indvars.iv44.i.unr, %.lr.ph35.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !7
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i.1
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !7
  %indvars.iv.next45.i.2 = add nuw nsw i64 %indvars.iv44.i, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i.2
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i.2
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !7
  %indvars.iv.next45.i.3 = add nuw nsw i64 %indvars.iv44.i, 4 ; 2 uses
  %exitcond48.not.i.3 = icmp eq i64 %indvars.iv.next45.i.3, %wide.trip.count47.i
  br i1 %exitcond48.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i, !llvm.loop !43

.lr.ph33.i:                                       ; preds = %.lr.ph33.i.prol.loopexit, %.lr.ph33.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i.3, %.lr.ph33.i ], [ %indvars.iv39.i.unr, %.lr.ph33.i.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39.i
  store double %i.bd, ptr %i.be, align 8, !tbaa !15
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i
  store double %i.bg, ptr %i.bh, align 8, !tbaa !15
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i.1
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i.1
  store double %i.bj, ptr %i.bk, align 8, !tbaa !15
  %indvars.iv.next40.i.2 = add nuw nsw i64 %indvars.iv39.i, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i.2
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i.2
  store double %i.bm, ptr %i.bn, align 8, !tbaa !15
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %exitcond43.not.i.3 = icmp eq i64 %indvars.iv.next40.i.3, %wide.trip.count42.i
  br i1 %exitcond43.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i, !llvm.loop !44

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i.1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !8
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i.2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph.i, !llvm.loop !45

hypre_MPI_Allgather.exit:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph33.i.prol.loopexit, %.lr.ph33.i, %.lr.ph35.i.prol.loopexit, %.lr.ph35.i, %middle.block, %vec.epilog.middle.block, %middle.block31, %middle.block45, %bb.a, %.preheader29.i, %.preheader27.i, %.preheader.i
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_MPI_Scatter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 3 uses
  switch i32 %2, label %hypre_MPI_Allgather.exit [
    i32 1, label %.preheader.i
    i32 0, label %.preheader27.i
    i32 2, label %.preheader29.i
  ]

.preheader29.i:                                   ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %iter.check, label %hypre_MPI_Allgather.exit

iter.check:                                       ; preds = %.preheader29.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.d = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %1, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !8
  %wide.load15 = load <16 x i8>, ptr %i.g, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> %wide.load, ptr %i.h, align 1, !tbaa !8
  store <16 x i8> %wide.load15, ptr %i.i, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %hypre_MPI_Allgather.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.k, align 1, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %index17
  store <4 x i8> %wide.load18, ptr %i.l, align 1, !tbaa !8
  %index.next19 = add nuw i64 %index17, 4         ; 2 uses
  %i.m = icmp eq i64 %index.next19, %n.vec16
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec16, %wide.trip.count.i
  br i1 %cmp.n20, label %hypre_MPI_Allgather.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.prol
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i.prol
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !48

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.q = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %hypre_MPI_Allgather.exit, label %.lr.ph.i

.preheader27.i:                                   ; preds = %bb.a
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %.lr.ph33.preheader.i, label %hypre_MPI_Allgather.exit

.lr.ph33.preheader.i:                             ; preds = %.preheader27.i
  %wide.trip.count42.i = zext nneg i32 %1 to i64  ; 5 uses
  %min.iters.check23 = icmp ult i32 %1, 8
  %i.t = sub i64 %i.a, %i.b
  %diff.check22 = icmp ugt i64 %i.t, -32
  %or.cond48 = or i1 %min.iters.check23, %diff.check22
  br i1 %or.cond48, label %.lr.ph33.i.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph33.preheader.i
  %n.vec25 = and i64 %wide.trip.count42.i, 2147483644 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next30, %vector.body26 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index27 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load28 = load <2 x double>, ptr %i.u, align 8, !tbaa !15
  %wide.load29 = load <2 x double>, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %wide.load28, ptr %i.w, align 8, !tbaa !15
  store <2 x double> %wide.load29, ptr %i.x, align 8, !tbaa !15
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.y, label %middle.block31, label %vector.body26, !llvm.loop !49

middle.block31:                                   ; preds = %vector.body26
  %cmp.n32 = icmp eq i64 %n.vec25, %wide.trip.count42.i
  br i1 %cmp.n32, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i.preheader

.lr.ph33.i.preheader:                             ; preds = %.lr.ph33.preheader.i, %middle.block31
  %indvars.iv39.i.ph = phi i64 [ 0, %.lr.ph33.preheader.i ], [ %n.vec25, %middle.block31 ] ; 3 uses
  %xtraiter52 = and i64 %wide.trip.count42.i, 3   ; 2 uses
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol

.lr.ph33.i.prol:                                  ; preds = %.lr.ph33.i.preheader, %.lr.ph33.i.prol
  %indvars.iv39.i.prol = phi i64 [ %indvars.iv.next40.i.prol, %.lr.ph33.i.prol ], [ %indvars.iv39.i.ph, %.lr.ph33.i.preheader ] ; 3 uses
  %prol.iter54 = phi i64 [ %prol.iter54.next, %.lr.ph33.i.prol ], [ 0, %.lr.ph33.i.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39.i.prol
  %i.aa = load double, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39.i.prol
  store double %i.aa, ptr %i.ab, align 8, !tbaa !15
  %indvars.iv.next40.i.prol = add nuw nsw i64 %indvars.iv39.i.prol, 1 ; 2 uses
  %prol.iter54.next = add i64 %prol.iter54, 1     ; 2 uses
  %prol.iter54.cmp.not = icmp eq i64 %prol.iter54.next, %xtraiter52
  br i1 %prol.iter54.cmp.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol, !llvm.loop !50

.lr.ph33.i.prol.loopexit:                         ; preds = %.lr.ph33.i.prol, %.lr.ph33.i.preheader
  %indvars.iv39.i.unr = phi i64 [ %indvars.iv39.i.ph, %.lr.ph33.i.preheader ], [ %indvars.iv.next40.i.prol, %.lr.ph33.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv39.i.ph, %wide.trip.count42.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i

.preheader.i:                                     ; preds = %bb.a
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %.lr.ph35.preheader.i, label %hypre_MPI_Allgather.exit

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count47.i = zext nneg i32 %1 to i64  ; 5 uses
  %min.iters.check37 = icmp ult i32 %1, 8
  %i.af = sub i64 %i.a, %i.b
  %diff.check35 = icmp ugt i64 %i.af, -32
  %or.cond49 = or i1 %min.iters.check37, %diff.check35
  br i1 %or.cond49, label %.lr.ph35.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph35.preheader.i
  %n.vec39 = and i64 %wide.trip.count47.i, 2147483640 ; 3 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph38
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next44, %vector.body40 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load42 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !7
  %wide.load43 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index41 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load42, ptr %i.ai, align 4, !tbaa !7
  store <4 x i32> %wide.load43, ptr %i.aj, align 4, !tbaa !7
  %index.next44 = add nuw i64 %index41, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.ak, label %middle.block45, label %vector.body40, !llvm.loop !51

middle.block45:                                   ; preds = %vector.body40
  %cmp.n46 = icmp eq i64 %n.vec39, %wide.trip.count47.i
  br i1 %cmp.n46, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.lr.ph35.preheader.i, %middle.block45
  %indvars.iv44.i.ph = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %n.vec39, %middle.block45 ] ; 3 uses
  %xtraiter55 = and i64 %wide.trip.count47.i, 3   ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol

.lr.ph35.i.prol:                                  ; preds = %.lr.ph35.i.preheader, %.lr.ph35.i.prol
  %indvars.iv44.i.prol = phi i64 [ %indvars.iv.next45.i.prol, %.lr.ph35.i.prol ], [ %indvars.iv44.i.ph, %.lr.ph35.i.preheader ] ; 3 uses
  %prol.iter57 = phi i64 [ %prol.iter57.next, %.lr.ph35.i.prol ], [ 0, %.lr.ph35.i.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44.i.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44.i.prol
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  %indvars.iv.next45.i.prol = add nuw nsw i64 %indvars.iv44.i.prol, 1 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol, !llvm.loop !52

.lr.ph35.i.prol.loopexit:                         ; preds = %.lr.ph35.i.prol, %.lr.ph35.i.preheader
  %indvars.iv44.i.unr = phi i64 [ %indvars.iv44.i.ph, %.lr.ph35.i.preheader ], [ %indvars.iv.next45.i.prol, %.lr.ph35.i.prol ]
  %i.ao = sub nsw i64 %indvars.iv44.i.ph, %wide.trip.count47.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.prol.loopexit, %.lr.ph35.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i.3, %.lr.ph35.i ], [ %indvars.iv44.i.unr, %.lr.ph35.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv44.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !7
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i.1
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !7
  %indvars.iv.next45.i.2 = add nuw nsw i64 %indvars.iv44.i, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next45.i.2
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next45.i.2
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !7
  %indvars.iv.next45.i.3 = add nuw nsw i64 %indvars.iv44.i, 4 ; 2 uses
  %exitcond48.not.i.3 = icmp eq i64 %indvars.iv.next45.i.3, %wide.trip.count47.i
  br i1 %exitcond48.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph35.i, !llvm.loop !53

.lr.ph33.i:                                       ; preds = %.lr.ph33.i.prol.loopexit, %.lr.ph33.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i.3, %.lr.ph33.i ], [ %indvars.iv39.i.unr, %.lr.ph33.i.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv39.i
  store double %i.bd, ptr %i.be, align 8, !tbaa !15
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i
  store double %i.bg, ptr %i.bh, align 8, !tbaa !15
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i.1
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i.1
  store double %i.bj, ptr %i.bk, align 8, !tbaa !15
  %indvars.iv.next40.i.2 = add nuw nsw i64 %indvars.iv39.i, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next40.i.2
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next40.i.2
  store double %i.bm, ptr %i.bn, align 8, !tbaa !15
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %exitcond43.not.i.3 = icmp eq i64 %indvars.iv.next40.i.3, %wide.trip.count42.i
  br i1 %exitcond43.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph33.i, !llvm.loop !54

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i.1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !8
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i.2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %hypre_MPI_Allgather.exit, label %.lr.ph.i, !llvm.loop !55

hypre_MPI_Allgather.exit:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph33.i.prol.loopexit, %.lr.ph33.i, %.lr.ph35.i.prol.loopexit, %.lr.ph35.i, %middle.block, %vec.epilog.middle.block, %middle.block31, %middle.block45, %bb.a, %.preheader29.i, %.preheader27.i, %.preheader.i
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Bcast(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Send(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Recv(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Isend(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Irecv(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Send_init(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Recv_init(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Irsend(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Startall(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Probe(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_MPI_Iprobe(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_MPI_Test(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  store i32 1, ptr %1, align 4, !tbaa !7
  ret i32 0
end_hunk_0
