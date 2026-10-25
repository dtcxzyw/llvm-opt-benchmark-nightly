Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/xsched?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"xsched.c\00", align 1
@__func__.task_cpuset_to_str = private unnamed_addr constant [19 x i8] c"task_cpuset_to_str\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"%s: Hex string is too large to convert to cpu_set_t (length %d, max_cpus %zu)\00", align 1
@__func__.task_str_to_cpuset = private unnamed_addr constant [19 x i8] c"task_str_to_cpuset\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"sched_setaffinity(%d,%zu,0x%s) failed: %m\00", align 1
@xgetaffinity.max_cpus = internal unnamed_addr global i64 1024, align 8
@__func__.xgetaffinity = private unnamed_addr constant [13 x i8] c"xgetaffinity\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"sched_getaffinity(%d,%zu) failed with status %d\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"sched_getaffinity(%d) = 0x%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @xcpuset_alloc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xgetaffinity(i32 noundef 0) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.d, i1 false)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @xgetaffinity(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %.pre = load i64, ptr @xgetaffinity.max_cpus, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ %i.x, %bb.d ], [ %.pre, %bb.a ]
  %i.d = add i64 %i.c, 63
  %i.e = lshr i64 %i.d, 3
  %i.f = and i64 %i.e, 2305843009213693944
  %i.g = add nuw nsw i64 %i.f, 16
  %i.h = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.g, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @__func__.xgetaffinity) #7 ; 0 uses
  %i.i = load i64, ptr @xgetaffinity.max_cpus, align 8 ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = add i64 %i.i, 63
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 2305843009213693944
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.o, align 8
  %i.p = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.p, align 4
  %i.q = load i64, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = call i32 @sched_getaffinity(i32 noundef %0, i64 noundef %i.q, ptr noundef nonnull %i.r) #7 ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.p, align 4
  %i.v = icmp eq i32 %i.u, 22
  br i1 %i.v, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr @xgetaffinity.max_cpus, align 8
  %i.x = shl i64 %i.w, 1                          ; 2 uses
  store i64 %i.x, ptr @xgetaffinity.max_cpus, align 8
  br label %bb.b, !llvm.loop !9

bb.e:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %bb.e
  %i.y = call i32 @get_log_level() #7
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.thread
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %0, i64 noundef %i.ac, i32 noundef %i.s) #7
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ad = call i32 @get_log_level() #7
  %i.ae = icmp sgt i32 %i.ad, 6
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = call ptr @task_cpuset_to_str(ptr noundef %i.af) ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  %i.ah = call i32 @get_log_level() #7
  %i.ai = icmp sgt i32 %i.ah, 6
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.5, i32 noundef %0, ptr noundef %i.ag) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @slurm_xfree(ptr noundef nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %.thread, %bb.f
  %i.aj = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @task_cpuset_to_str(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = lshr i64 %i.a, 2
  %i.c = add nuw nsw i64 %i.b, 1
  %i.d = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.c, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @__func__.task_cpuset_to_str) #7 ; 3 uses
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %.076 = add i32 %i.f, -4                        ; 2 uses
  %i.g = icmp sgt i32 %.076, -1
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = zext nneg i32 %.076 to i64
  %i.k = and i64 %i.e, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv82 = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next83, %bb.j ] ; 4 uses
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %.04478 = phi i1 [ true, %.lr.ph ], [ %1, %bb.j ]
  %.04577 = phi ptr [ %i.d, %.lr.ph ], [ %.146, %bb.j ] ; 3 uses
  %i.l = lshr i64 %indvars.iv, 3
  %i.m = load i64, ptr %i.h, align 8              ; 4 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i64 %indvars.iv, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %indvars.iv, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.fr = freeze i64 %i.t
  %i.u = icmp eq i64 %.fr, 0
  br i1 %i.u, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.v = phi i8 [ 0, %.thread ], [ 1, %bb.c ]     ; 2 uses
  %i.w = add i64 %indvars.iv82, 4294967293        ; 2 uses
  %i.x = and i64 %i.w, 4294967295                 ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = icmp ult i64 %i.y, %i.m
  br i1 %i.z, label %bb.e, label %.thread60

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i64 %i.x, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.w, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ac, %i.ae
  %.fr73 = freeze i64 %i.af
  %i.ag = icmp eq i64 %.fr73, 0
  %i.ah = or disjoint i8 %i.v, 2
  br i1 %i.ag, label %.thread60, label %bb.f

.thread60:                                        ; preds = %bb.d, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread60
  %i.ai = phi i8 [ %i.v, %.thread60 ], [ %i.ah, %bb.e ] ; 2 uses
  %i.aj = add i64 %indvars.iv82, 4294967294       ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = icmp ult i64 %i.al, %i.m
  br i1 %i.am, label %bb.g, label %.thread64

bb.g:                                             ; preds = %bb.f
  %i.an = lshr i64 %i.ak, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.aj, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ap, %i.ar
  %.fr74 = freeze i64 %i.as
  %i.at = icmp eq i64 %.fr74, 0
  %i.au = or i8 %i.ai, 4
  br i1 %i.at, label %.thread64, label %bb.h

.thread64:                                        ; preds = %bb.f, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread64
  %i.av = phi i8 [ %i.ai, %.thread64 ], [ %i.au, %bb.g ] ; 3 uses
  %i.aw = add i64 %indvars.iv82, 4294967295       ; 2 uses
  %i.ax = and i64 %i.aw, 4294967295               ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = icmp ult i64 %i.ay, %i.m
  br i1 %i.az, label %bb.i, label %.thread68

bb.i:                                             ; preds = %bb.h
  %i.ba = lshr i64 %i.ax, 6
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.aw, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.bc, %i.be
  %.fr75 = freeze i64 %i.bf
  %i.bg = icmp eq i64 %.fr75, 0
  %i.bh = or i8 %i.av, 8
  br i1 %i.bg, label %.thread68, label %.thread71

.thread68:                                        ; preds = %bb.h, %bb.i
  %i.bi = icmp eq i8 %i.av, 0
  %or.cond.not = select i1 %.04478, i1 %i.bi, i1 false
  br i1 %or.cond.not, label %bb.j, label %.thread71

.thread71:                                        ; preds = %bb.i, %.thread68
  %i.bj = phi i8 [ %i.av, %.thread68 ], [ %i.bh, %bb.i ]
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = tail call i32 @slurm_hex_to_char(i32 noundef %i.bk) #7
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.04577, i64 1
  store i8 %i.bm, ptr %.04577, align 1
  br label %bb.j

bb.j:                                             ; preds = %.thread68, %.thread71
  %.146 = phi ptr [ %i.bn, %.thread71 ], [ %.04577, %.thread68 ] ; 2 uses
  %1 = phi i1 [ false, %.thread71 ], [ true, %.thread68 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %i.bo = icmp sgt i64 %indvars.iv, 3
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -4
  br i1 %i.bo, label %bb.b, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.j
  br i1 %1, label %._crit_edge.thread, label %bb.k

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.045.lcssa86 = phi ptr [ %.146, %._crit_edge ], [ %i.d, %bb.a ]
  store i8 48, ptr %.045.lcssa86, align 1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret ptr %i.d
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @slurm_hex_to_char(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @task_str_to_cpuset(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 4 uses
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = icmp sgt i32 %i.c, 1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %0, align 1
  %i.h = icmp ne i16 %i.g, 30768
  %i.i = zext i1 %i.h to i32
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = add nsw i32 %i.c, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.037 = phi i32 [ %i.c, %bb.b ], [ %i.k, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %.036 = phi ptr [ %0, %bb.b ], [ %i.j, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.l = tail call ptr @xgetaffinity(i32 noundef 0) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.o, i1 false)
  store ptr %i.l, ptr %i.a, align 8
  %i.p = shl nsw i32 %.037, 2
  %i.q = sext i32 %i.p to i64
  %i.r = load i64, ptr %i.l, align 8              ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.03854 = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  %.not4655 = icmp ult ptr %.03854, %.036
  br i1 %.not4655, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.task_str_to_cpuset, i32 noundef %.037, i64 noundef %i.r) #7 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  br label %bb.s

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.preheader ] ; 13 uses
  %.03857 = phi ptr [ %.038, %bb.r ], [ %.03854, %.preheader ] ; 2 uses
  %i.u = load i8, ptr %.03857, align 1
  %i.v = sext i8 %i.u to i32
  %i.w = tail call i32 @slurm_char_to_hex(i32 noundef %i.v) #7 ; 5 uses
  %.mask = and i32 %i.w, 255
  %i.x = icmp eq i32 %.mask, 255
  br i1 %i.x, label %.thread, label %bb.f

.thread:                                          ; preds = %.lr.ph
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.y = and i32 %i.w, 1
  %.not47 = icmp eq i32 %i.y, 0
  br i1 %.not47, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = lshr i64 %indvars.iv, 3
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ult i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = and i64 %indvars.iv, 60
  %i.af = shl nuw nsw i64 1, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ah = lshr i64 %indvars.iv, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = or i64 %i.aj, %i.af
  store i64 %i.ak, ptr %i.ai, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.al = and i32 %i.w, 2
  %.not48 = icmp eq i32 %i.al, 0
  br i1 %.not48, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i64 %indvars.iv, 3
  %i.an = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp ult i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = and i64 %indvars.iv, 60
  %i.as = shl nuw nsw i64 2, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = lshr i64 %indvars.iv, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = or i64 %i.aw, %i.as
  store i64 %i.ax, ptr %i.av, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ay = and i32 %i.w, 4
  %.not49 = icmp eq i32 %i.ay, 0
  br i1 %.not49, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = lshr i64 %indvars.iv, 3
  %i.ba = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp ult i64 %i.az, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = and i64 %indvars.iv, 60
  %i.bf = shl nuw nsw i64 4, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bh = lshr i64 %indvars.iv, 6
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = or i64 %i.bj, %i.bf
  store i64 %i.bk, ptr %i.bi, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bl = and i32 %i.w, 8
  %.not50 = icmp eq i32 %i.bl, 0
  br i1 %.not50, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = lshr i64 %indvars.iv, 3
  %i.bn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = and i64 %indvars.iv, 60
  %i.bs = shl nuw i64 8, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bu = lshr i64 %indvars.iv, 6
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = or i64 %i.bw, %i.bs
  store i64 %i.bx, ptr %i.bv, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %.038 = getelementptr inbounds i8, ptr %.03857, i64 -1 ; 2 uses
  %.not46 = icmp ult ptr %.038, %.036
  br i1 %.not46, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.r, %.preheader, %.thread
  %i.by = load ptr, ptr %i.a, align 8
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.by, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #3

declare i32 @slurm_char_to_hex(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
end_hunk_0
