Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/readNODE?download=true
inline.NumInlined: 70
inline.NumDeleted: 53
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl8readNODEIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_15PlainObjectBaseIT_EERNSB_IT0_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"readNODE: IOError: %s could not be opened...\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"readNODE: Error: incorrect header in %s...\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"readNODE: Error: %d attributes found in %s. Attributes are not supported...\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"readNODE Error: bad index (%d) in %s...\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%lf%n\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"readNODE Error: bad coordinates (%d) in %s...\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"readNODE Error: bad boundary markers (%d) in %s...\0A\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl8readNODEIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_15PlainObjectBaseIT_EERNSB_IT0_EE(ptr noundef align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !25
  %i.i = tail call noalias ptr @fopen(ptr noundef %i.h, ptr noundef nonnull @.str) ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.l = load ptr, ptr %0, align 8, !tbaa !25
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.3, ptr noundef %i.l) #7 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br label %.backedge92

.backedge92:                                      ; preds = %.backedge92.backedge, %bb.c
  %i.n = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 2048, ptr noundef nonnull %i.i) ; 0 uses
  %i.o = load i8, ptr %i.a, align 16, !tbaa !28
  switch i8 %i.o, label %bb.d [
    i8 35, label %.backedge92.backedge
    i8 10, label %.backedge92.backedge
  ]

.backedge92.backedge:                             ; preds = %.backedge92, %.backedge92
  br label %.backedge92

bb.d:                                             ; preds = %.backedge92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.p = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #8
  %.not = icmp eq i32 %i.p, 4
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.r = load ptr, ptr %0, align 8, !tbaa !25
  %i.s = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.5, ptr noundef %i.r) #7 ; 0 uses
  %i.t = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.d, align 4, !tbaa !29   ; 2 uses
  %.not58 = icmp eq i32 %i.u, 0
  br i1 %.not58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.w = load ptr, ptr %0, align 8, !tbaa !25
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.6, i32 noundef %i.u, ptr noundef %i.w) #7 ; 0 uses
  %i.y = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.b, align 4, !tbaa !29   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !29  ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = icmp eq i32 %i.z, 0
  %i.ae = icmp eq i32 %i.ab, 0
  %or.cond.i.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = sdiv i64 9223372036854775807, %i.ac
  %i.ag = icmp slt i64 %i.af, %i.aa
  br i1 %i.ag, label %bb.j, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ah, align 8, !tbaa !12
  call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.h, %bb.i
  %i.ai = mul nsw i64 %i.ac, %i.aa
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ai, i64 noundef %i.aa, i64 noundef %i.ac)
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !29
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ak, i64 noundef %i.ak, i64 noundef 1)
  %i.al = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 2048, ptr noundef nonnull %i.i)
  %.not597788 = icmp eq ptr %i.al, null
  br i1 %.not597788, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.045.ph90 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %4, %.outer ] ; 2 uses
  %.047.ph89 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.an, %.outer ]
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %.backedge
  %.04778 = phi i32 [ %.047.ph89, %.lr.ph ], [ %i.an, %.backedge ]
  %i.an = add nsw i32 %.04778, 1                  ; 4 uses
  %i.ao = load i8, ptr %i.a, align 16, !tbaa !28
  switch i8 %i.ao, label %bb.l [
    i8 35, label %.backedge
    i8 10, label %.backedge
  ]

.backedge:                                        ; preds = %bb.k, %bb.k
  %i.ap = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 2048, ptr noundef nonnull %i.i)
  %.not59 = icmp eq ptr %i.ap, null
  br i1 %.not59, label %.outer._crit_edge, label %bb.k

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %3 = zext nneg i32 %.045.ph90 to i64            ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %3
  %i.as = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.f) #8
  %.not60 = icmp eq i32 %i.as, 1
  br i1 %.not60, label %bb.m, label %.critedge67

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.f, align 4, !tbaa !29
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !29
  %.not6279 = icmp sgt i32 %i.aw, 0
  br i1 %.not6279, label %.lr.ph83, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.n, %bb.m
  %.044.lcssa = phi ptr [ %i.av, %bb.m ], [ %i.bg, %bb.n ]
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !29
  %.not6484 = icmp sgt i32 %i.ax, 0
  br i1 %.not6484, label %.lr.ph87, label %.outer

.lr.ph83:                                         ; preds = %bb.m, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.04480 = phi ptr [ %i.bg, %bb.n ], [ %i.av, %bb.m ] ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !18
  %i.az = load i64, ptr %i.am, align 8, !tbaa !19
  %i.ba = mul nsw i64 %i.az, %indvars.iv
  %i.bb = getelementptr [8 x i8], ptr %i.ay, i64 %3
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.04480, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.f) #8
  %.not61 = icmp eq i32 %i.bd, 1
  br i1 %.not61, label %bb.n, label %.critedge67

bb.n:                                             ; preds = %.lr.ph83
  %i.be = load i32, ptr %i.f, align 4, !tbaa !29
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %.04480, i64 %i.bf ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !29
  %i.bi = sext i32 %i.bh to i64
  %.not62 = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %.not62, label %.lr.ph83, label %.critedge.preheader, !llvm.loop !20

.lr.ph87:                                         ; preds = %.critedge.preheader, %.critedge
  %.086 = phi i32 [ %i.br, %.critedge ], [ 0, %.critedge.preheader ]
  %.185 = phi ptr [ %i.bq, %.critedge ], [ %.044.lcssa, %.critedge.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.bj = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.185, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #8
  %.not63 = icmp eq i32 %i.bj, 1
  br i1 %.not63, label %.critedge, label %.thread71

.thread71:                                        ; preds = %.lr.ph87
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bl = load ptr, ptr %0, align 8, !tbaa !25
  %i.bm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.11, i32 noundef %i.an, ptr noundef %i.bl) #7 ; 0 uses
  %i.bn = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.o

.critedge:                                        ; preds = %.lr.ph87
  %i.bo = load i32, ptr %i.f, align 4, !tbaa !29
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %.185, i64 %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %i.br = add nuw nsw i32 %.086, 1                ; 2 uses
  %i.bs = load i32, ptr %i.e, align 4, !tbaa !29
  %.not64 = icmp slt i32 %i.br, %i.bs
  br i1 %.not64, label %.lr.ph87, label %.outer, !llvm.loop !21

.outer:                                           ; preds = %.critedge, %.critedge.preheader
  %4 = add nuw nsw i32 %.045.ph90, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  %i.bt = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 2048, ptr noundef nonnull %i.i)
  %.not5977 = icmp eq ptr %i.bt, null
  br i1 %.not5977, label %.outer._crit_edge, label %.lr.ph

.outer._crit_edge:                                ; preds = %.outer, %.backedge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.bu = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.o

.critedge67:                                      ; preds = %bb.l, %.lr.ph83
  %.str.10.sink = phi ptr [ @.str.10, %.lr.ph83 ], [ @.str.8, %bb.l ]
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bw = load ptr, ptr %0, align 8, !tbaa !25
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull %.str.10.sink, i32 noundef %i.an, ptr noundef %i.bw) #7 ; 0 uses
  %i.by = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.o

bb.o:                                             ; preds = %.thread71, %.outer._crit_edge, %.critedge67, %bb.g, %bb.e
  %.7 = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ false, %.critedge67 ], [ false, %.thread71 ], [ true, %.outer._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  %.8 = phi i1 [ false, %bb.b ], [ %.7, %bb.o ]
  ret i1 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.f) #8
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  store i64 %3, ptr %i.c, align 8, !tbaa !31
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.f) #8
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  store i64 %3, ptr %i.c, align 8, !tbaa !33
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"vtable pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !13, i64 0, !10, i64 8, !10, i64 16}
end_hunk_0
