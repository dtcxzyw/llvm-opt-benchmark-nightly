Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/misr?download=true
inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cells = type { i32, i32, ptr }

@reg_len = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Register too long; Max. = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"reg_len\09#_vect\09prob      #_tms\09struct\09seed1\09seed2\09seed3\09Prob same output\0A \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%d\09%d\09%.3e %d\09%s\09%d\09%d\09%d\09%.8e\0A\00", align 1
@str = private unnamed_addr constant [42 x i8] c"Structure does not match Register length:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cells, align 8              ; 7 uses
  %i.a = alloca [100 x i8], align 16              ; 9 uses
  %i.b = alloca [3 x i16], align 2                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 10, ptr @reg_len, align 4, !tbaa !4
  %i.c = icmp sgt i32 %0, 6
  br i1 %i.c, label %bb.b, label %.thread48

.thread48:                                        ; preds = %bb.a
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %scevgep, i8 48, i64 9, i1 false), !tbaa !8
  store i8 49, ptr %i.a, align 16, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 0, ptr %i.d, align 2, !tbaa !8
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.f) #15 ; 0 uses
  %.not49 = icmp eq i32 %0, 7
  br i1 %.not49, label %.thread, label %bb.c

.thread:                                          ; preds = %.thread48, %bb.b
  store i16 1, ptr %i.b, align 2, !tbaa !12
  br label %.thread39

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.i, ptr noundef nonnull @.str, ptr noundef nonnull %i.b) #15 ; 0 uses
  %.not40 = icmp eq i32 %0, 8
  br i1 %.not40, label %.thread39, label %bb.d

.thread39:                                        ; preds = %bb.c, %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.k, align 2, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.o = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.m, ptr noundef nonnull @.str, ptr noundef nonnull %i.n) #15 ; 0 uses
  %i.p = icmp samesign ugt i32 %0, 9
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.r, ptr noundef nonnull @.str, ptr noundef nonnull %i.s) #15 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.thread39, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 0, ptr %i.u, align 2, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load i32, ptr @reg_len, align 4, !tbaa !4 ; 2 uses
  %i.w = icmp sgt i32 %i.v, 100
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 100) ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.y = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #16
  %i.z = sext i32 %i.v to i64
  %.not = icmp eq i64 %i.y, %i.z
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.aa = call ptr @seed48(ptr noundef nonnull %i.b) #15 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ab = load i32, ptr @reg_len, align 4, !tbaa !4
  %.not10.i = icmp slt i32 %i.ab, 0
  br i1 %.not10.i, label %create_link_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.012.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %2, %bb.k ]
  %.0911.i = phi i32 [ %i.ag, %.lr.ph.i ], [ 0, %bb.k ] ; 2 uses
  %i.ac = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !18
  %i.ag = add nuw nsw i32 %.0911.i, 1
  %3 = load i32, ptr @reg_len, align 4, !tbaa !4
  %.not.not.i = icmp slt i32 %.0911.i, %3
  br i1 %.not.not.i, label %.lr.ph.i, label %create_link_list.exit, !llvm.loop !19

create_link_list.exit:                            ; preds = %.lr.ph.i, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

bb.l:                                             ; preds = %create_link_list.exit, %init.exit
  %.143 = phi i32 [ 0, %create_link_list.exit ], [ %i.aq, %init.exit ]
  %.03342 = phi i32 [ 0, %create_link_list.exit ], [ %i.ap, %init.exit ]
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %.not4.i = icmp eq ptr %i.ai, null
  br i1 %.not4.i, label %init.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.l, %.lr.ph.i38
  %i.aj = phi ptr [ %i.an, %.lr.ph.i38 ], [ %i.ai, %bb.l ] ; 2 uses
  %.05.i = phi ptr [ %i.aj, %.lr.ph.i38 ], [ %2, %bb.l ] ; 2 uses
  %i.ak = load i32, ptr %.05.i, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %init.exit, label %.lr.ph.i38, !llvm.loop !21

init.exit:                                        ; preds = %.lr.ph.i38, %bb.l
  %i.ao = call i32 @simulate(i32 noundef 10, ptr noundef nonnull %2, double noundef 2.500000e-01, ptr noundef nonnull %i.a)
  %i.ap = add nuw nsw i32 %i.ao, %.03342          ; 2 uses
  %i.aq = add nuw nsw i32 %.143, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, 100000
  br i1 %exitcond.not, label %bb.m, label %bb.l, !llvm.loop !22

bb.m:                                             ; preds = %init.exit
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.as = load i32, ptr @reg_len, align 4, !tbaa !4
  %i.at = load i16, ptr %i.b, align 2, !tbaa !12
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !12
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !12
  %i.ba = zext i16 %i.az to i32
  %i.bb = sub nsw i32 100000, %i.ap
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fdiv double %i.bc, 1.000000e+05
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.as, i32 noundef 10, double noundef 2.500000e-01, i32 noundef 100000, ptr noundef nonnull %i.a, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ba, double noundef %i.bd) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.h
  %.036 = phi i32 [ 2, %bb.h ], [ 0, %bb.m ], [ 4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @seed48(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define dso_local void @create_link_list(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr @reg_len, align 4, !tbaa !4
  %.not10 = icmp slt i32 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ]
  %.0911 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  store i32 1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !18
  %i.f = add nuw nsw i32 %.0911, 1
  %1 = load i32, ptr @reg_len, align 4, !tbaa !4
  %.not.not = icmp slt i32 %.0911, %1
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not4 = icmp eq ptr %i.b, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.05 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i32, ptr %.05, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %.05, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @simulate(i32 noundef %0, ptr nofree noundef captures(none) %1, double noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @reg_len, align 4, !tbaa !4 ; 3 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.preheader92.lr.ph, label %.preheader

.preheader92.lr.ph:                               ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1                     ; 2 uses
  %i.d = srem i32 %i.c, 31                        ; 2 uses
  %i.e = sdiv i32 %i.c, 31                        ; 2 uses
  %i.f = icmp sgt i32 %i.a, 31
  %i.g = icmp sgt i32 %i.d, 0
  %i.h = mul nsw i32 %i.e, 31
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %i.i = sext i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %wide.trip.count131 = zext nneg i32 %i.d to i64
  %invariant.gep139 = getelementptr i8, ptr %3, i64 %i.i
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.lr.ph, %bb.i
  %.072115 = phi i32 [ 0, %.preheader92.lr.ph ], [ %i.cr, %bb.i ]
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.preheader.loopexit:                              ; preds = %bb.i
  %.pre = load i32, ptr @reg_len, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.j = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.a, %bb.a ] ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph119.preheader, label %._crit_edge120

.lr.ph119.preheader:                              ; preds = %.preheader
  %xtraiter = and i32 %i.j, 3                     ; 3 uses
  %i.l = icmp ult i32 %i.j, 4
  br i1 %i.l, label %.lr.ph119.epil.preheader, label %.lr.ph119.preheader.new

.lr.ph119.preheader.new:                          ; preds = %.lr.ph119.preheader
  %unroll_iter = and i32 %i.j, 2147483644
  br label %.lr.ph119

.lr.ph:                                           ; preds = %.preheader92, %bb.e
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %bb.e ], [ 0, %.preheader92 ] ; 2 uses
  %.18798 = phi ptr [ %i.ah, %bb.e ], [ %1, %.preheader92 ]
  %i.m = phi <2 x i32> [ %i.u, %bb.e ], [ zeroinitializer, %.preheader92 ]
  %i.n = tail call i64 @lrand48() #15
  %i.o = mul nuw nsw i64 %indvars.iv124, 31
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.097 = phi i64 [ %i.n, %.lr.ph ], [ %i.ao, %bb.d ] ; 3 uses
  %.28893 = phi ptr [ %.18798, %.lr.ph ], [ %i.ah, %bb.d ] ; 4 uses
  %i.p = phi <2 x i32> [ %i.m, %.lr.ph ], [ %i.u, %bb.d ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.q = load i8, ptr %gep, align 1, !tbaa !8
  %i.r = icmp eq i8 %i.q, 49
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load <2 x i32>, ptr %.28893, align 8, !tbaa !4
  %i.t = add nsw <2 x i32> %i.s, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi <2 x i32> [ %i.t, %bb.c ], [ %i.p, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.28893, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = load i32, ptr %i.w, align 8, !tbaa !14
  %i.y = trunc i64 %.097 to i32
  %i.z = add i32 %i.x, %i.y
  %i.aa = and i32 %i.z, 1
  store i32 %i.aa, ptr %.28893, align 8, !tbaa !14
  %i.ab = tail call i64 @lrand48() #15
  %i.ac = srem i64 %i.ab, 1000
  %i.ad = sitofp i64 %i.ac to double
  %i.ae = fdiv double %i.ad, 1.000000e+03
  %i.af = fcmp ogt double %2, %i.ae
  %i.ag = zext i1 %i.af to i64
  %.1 = xor i64 %.097, %i.ag
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !18  ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !17
  %i.ak = trunc i64 %.1 to i32
  %i.al = add i32 %i.aj, %i.ak
  %i.am = and i32 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %.28893, i64 4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !17
  %i.ao = ashr i64 %.097, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !23

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond127.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.e, %.preheader92
  %.187.lcssa = phi ptr [ %1, %.preheader92 ], [ %i.ah, %bb.e ] ; 2 uses
  %i.ap = phi <2 x i32> [ zeroinitializer, %.preheader92 ], [ %i.u, %bb.e ] ; 2 uses
  %i.aq = tail call i64 @lrand48() #15
  br i1 %i.g, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %._crit_edge, %bb.g
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.g ], [ 0, %._crit_edge ] ; 2 uses
  %.2108 = phi i64 [ %i.bq, %bb.g ], [ %i.aq, %._crit_edge ] ; 3 uses
  %.389104 = phi ptr [ %i.bj, %bb.g ], [ %.187.lcssa, %._crit_edge ] ; 4 uses
  %i.ar = phi <2 x i32> [ %i.aw, %bb.g ], [ %i.ap, %._crit_edge ] ; 2 uses
  %gep140 = getelementptr i8, ptr %invariant.gep139, i64 %indvars.iv128
  %i.as = load i8, ptr %gep140, align 1, !tbaa !8
  %i.at = icmp eq i8 %i.as, 49
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph110
  %i.au = load <2 x i32>, ptr %.389104, align 8, !tbaa !4
  %i.av = add nsw <2 x i32> %i.au, %i.ar
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph110
  %i.aw = phi <2 x i32> [ %i.av, %bb.f ], [ %i.ar, %.lr.ph110 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.389104, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !14
  %i.ba = trunc i64 %.2108 to i32
  %i.bb = add i32 %i.az, %i.ba
  %i.bc = and i32 %i.bb, 1
  store i32 %i.bc, ptr %.389104, align 8, !tbaa !14
  %i.bd = tail call i64 @lrand48() #15
  %i.be = srem i64 %i.bd, 1000
  %i.bf = sitofp i64 %i.be to double
  %i.bg = fdiv double %i.bf, 1.000000e+03
  %i.bh = fcmp ogt double %2, %i.bg
  %i.bi = zext i1 %i.bh to i64
  %.3 = xor i64 %.2108, %i.bi
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !17
  %i.bm = trunc i64 %.3 to i32
  %i.bn = add i32 %i.bl, %i.bm
  %i.bo = and i32 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.389104, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !17
  %i.bq = ashr i64 %.2108, 1
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %._crit_edge111, label %.lr.ph110, !llvm.loop !25

._crit_edge111:                                   ; preds = %bb.g, %._crit_edge
  %.389.lcssa = phi ptr [ %.187.lcssa, %._crit_edge ], [ %i.bj, %bb.g ] ; 3 uses
  %i.br = phi <2 x i32> [ %i.ap, %._crit_edge ], [ %i.aw, %bb.g ] ; 2 uses
  %i.bs = tail call i64 @lrand48() #15            ; 2 uses
  %i.bt = load i32, ptr @reg_len, align 4, !tbaa !4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %3, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.by = icmp eq i8 %i.bx, 49
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge111
  %i.bz = load <2 x i32>, ptr %.389.lcssa, align 8, !tbaa !4
  %i.ca = add nsw <2 x i32> %i.bz, %i.br
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge111
  %i.cb = phi <2 x i32> [ %i.ca, %bb.h ], [ %i.br, %._crit_edge111 ] ; 2 uses
  %i.cc = trunc i64 %i.bs to i32
  %i.cd = extractelement <2 x i32> %i.cb, i64 0
end_hunk_0
