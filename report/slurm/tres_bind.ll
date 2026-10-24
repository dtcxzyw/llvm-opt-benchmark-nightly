Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/tres_bind?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"gres/\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"verbose,\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"per_task:\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"closest\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"map_gpu:\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"map:\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"mask_gpu:\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mask:\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"single:\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Failed to validate %s, offending character is %c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @tres_bind_verify_cmdline(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr %0, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @xstrdup(ptr noundef nonnull %0) #7 ; 2 uses
  store ptr %i.r, ptr %i.n, align 8
  %i.s = call ptr @strtok_r(ptr noundef %i.r, ptr noundef nonnull @.str, ptr noundef nonnull %i.m) #7 ; 2 uses
  %.not47 = icmp eq ptr %i.s, null
  br i1 %.not47, label %_valid_shared_gres_bind.exit.thread28, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_valid_shared_gres_bind.exit.thread
  %.01348 = phi ptr [ %i.dh, %_valid_shared_gres_bind.exit.thread ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.01348, i32 noundef 58) #8 ; 3 uses
  %.not17 = icmp eq ptr %i.t, null
  br i1 %.not17, label %_valid_shared_gres_bind.exit.thread28, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.t, align 1
  %i.u = call i32 @xstrncmp(ptr noundef nonnull %.01348, ptr noundef nonnull @.str.1, i64 noundef 5) #7
  %.not18 = icmp eq i32 %i.u, 0
  br i1 %.not18, label %bb.e, label %_valid_shared_gres_bind.exit.thread28

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01348, i64 5
  %i.x = call zeroext i1 @gres_is_shared_name(ptr noundef nonnull %i.w) #7
  %i.y = call i32 @strncasecmp(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.2, i64 noundef 8) #8
  %.not.i = icmp eq i32 %i.y, 0
  %spec.select.idx.i = select i1 %.not.i, i64 8, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select.idx.i ; 17 uses
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = call i32 @xstrncasecmp(ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.3, i64 noundef 4) #7
  %.not6.i = icmp eq i32 %i.z, 0
  br i1 %.not6.i, label %_valid_shared_gres_bind.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = call i32 @xstrncasecmp(ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.4, i64 noundef 9) #7
  %.not7.i = icmp eq i32 %i.aa, 0
  br i1 %.not7.i, label %_valid_shared_gres_bind.exit, label %_valid_shared_gres_bind.exit.thread28

_valid_shared_gres_bind.exit:                     ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 9
  %i.ac = call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.ab, ptr noundef null, i32 noundef 0) #7
  %or.cond.i.i = icmp ult i64 %i.ac, 9223372036854775807
  br i1 %or.cond.i.i, label %_valid_shared_gres_bind.exit.thread, label %_valid_shared_gres_bind.exit.thread28

bb.h:                                             ; preds = %bb.e
  %i.ad = call i32 @xstrncasecmp(ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.5, i64 noundef 7) #7
  %.not17.i = icmp eq i32 %i.ad, 0
  br i1 %.not17.i, label %_valid_shared_gres_bind.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call i32 @xstrncasecmp(ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.6, i64 noundef 8) #7
  %.not18.i = icmp eq i32 %i.ae, 0
  br i1 %.not18.i, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  store ptr null, ptr %i.l, align 8
  %i.ag = call ptr @xstrdup(ptr noundef nonnull %i.af) #7 ; 2 uses
  store ptr %i.ag, ptr %i.j, align 8
  %i.ah = call ptr @strtok_r(ptr noundef %i.ag, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.l) #7 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.ah, null
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph51.split.i.i

.lr.ph51.split.i.i:                               ; preds = %bb.j, %bb.o
  %.03250.i.i = phi ptr [ %i.au, %bb.o ], [ %i.ah, %bb.j ] ; 4 uses
  %i.ai = load i8, ptr %.03250.i.i, align 1       ; 2 uses
  %.not3947.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not3947.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph51.split.i.i, %bb.k
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.k ], [ 0, %.lr.ph51.split.i.i ]
  %i.aj = phi i8 [ %i.am, %bb.k ], [ %i.ai, %.lr.ph51.split.i.i ] ; 2 uses
  %1 = sext i8 %i.aj to i32                       ; 2 uses
  %2 = add nsw i32 %1, -48
  %isdigit80.i = icmp ult i32 %2, 10
  %.not41.i.i = icmp eq i8 %i.aj, 42
  %or.cond.i = or i1 %.not41.i.i, %isdigit80.i
  br i1 %or.cond.i, label %bb.k, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, ptr noundef nonnull %.03250.i.i, i32 noundef %1) #7 ; 0 uses
  br label %_valid_num_list.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03250.i.i, i64 %indvars.iv.next.i.i
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %.not39.i.i = icmp eq i8 %i.am, 0
  br i1 %.not39.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !8

.critedge.i.i:                                    ; preds = %bb.k, %.lr.ph51.split.i.i
  %i.an = call i64 @strtol(ptr noundef nonnull %.03250.i.i, ptr noundef nonnull %i.k, i32 noundef 10) #7
  %or.cond.i.i25 = icmp ugt i64 %i.an, 9223372036854775806
  br i1 %or.cond.i.i25, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %.critedge.i.i
  %i.ao = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1
  switch i8 %i.ap, label %._crit_edge.i.i [
    i8 42, label %bb.m
    i8 0, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = call i64 @strtol(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.k, i32 noundef 0) #7
  %or.cond3.i.i = icmp ugt i64 %i.ar, 9223372036854775806
  br i1 %or.cond3.i.i, label %._crit_edge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.k, align 8
  %i.at = load i8, ptr %i.as, align 1
  %.not44.i.i = icmp eq i8 %i.at, 0
  br i1 %.not44.i.i, label %bb.o, label %._crit_edge.i.i

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.au = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.l) #7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph51.split.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %.critedge.i.i, %bb.j
  %.031.i.i = phi i32 [ 0, %bb.j ], [ -1, %.critedge.i.i ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.l ], [ 0, %bb.o ]
  call void @slurm_xfree(ptr noundef nonnull %i.j) #7
  br label %_valid_num_list.exit.i

_valid_num_list.exit.i:                           ; preds = %._crit_edge.i.i, %.split.us.i.i
  %.2.i.i = phi i32 [ %.031.i.i, %._crit_edge.i.i ], [ -1, %.split.us.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  br label %_valid_gres_bind.exit

bb.p:                                             ; preds = %bb.i
  %i.av = call i32 @xstrncasecmp(ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.7, i64 noundef 4) #7
  %.not19.i = icmp eq i32 %i.av, 0
  br i1 %.not19.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store ptr null, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  store ptr null, ptr %i.i, align 8
  %i.ax = call ptr @xstrdup(ptr noundef nonnull %i.aw) #7 ; 2 uses
  store ptr %i.ax, ptr %i.g, align 8
  %i.ay = call ptr @strtok_r(ptr noundef %i.ax, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.i) #7 ; 2 uses
  %.not49.i25.i = icmp eq ptr %i.ay, null
  br i1 %.not49.i25.i, label %._crit_edge.i38.i, label %.lr.ph51.split.i27.i

.lr.ph51.split.i27.i:                             ; preds = %bb.q, %bb.v
  %.03250.i28.i = phi ptr [ %i.bl, %bb.v ], [ %i.ay, %bb.q ] ; 4 uses
  %i.az = load i8, ptr %.03250.i28.i, align 1     ; 2 uses
  %.not3947.i29.i = icmp eq i8 %i.az, 0
  br i1 %.not3947.i29.i, label %.critedge.i35.i, label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph51.split.i27.i, %bb.r
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i33.i, %bb.r ], [ 0, %.lr.ph51.split.i27.i ]
  %i.ba = phi i8 [ %i.bd, %bb.r ], [ %i.az, %.lr.ph51.split.i27.i ] ; 2 uses
  %3 = sext i8 %i.ba to i32                       ; 2 uses
  %4 = add nsw i32 %3, -48
  %isdigit.i = icmp ult i32 %4, 10
  %.not41.i43.i = icmp eq i8 %i.ba, 42
  %or.cond121.i = or i1 %.not41.i43.i, %isdigit.i
  br i1 %or.cond121.i, label %bb.r, label %.split.us.i44.i

.split.us.i44.i:                                  ; preds = %.lr.ph.i30.i
  %i.bb = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, ptr noundef nonnull %.03250.i28.i, i32 noundef %3) #7 ; 0 uses
  br label %_valid_num_list.exit45.i

bb.r:                                             ; preds = %.lr.ph.i30.i
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03250.i28.i, i64 %indvars.iv.next.i33.i
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %.not39.i34.i = icmp eq i8 %i.bd, 0
  br i1 %.not39.i34.i, label %.critedge.i35.i, label %.lr.ph.i30.i, !llvm.loop !8

.critedge.i35.i:                                  ; preds = %bb.r, %.lr.ph51.split.i27.i
  %i.be = call i64 @strtol(ptr noundef nonnull %.03250.i28.i, ptr noundef nonnull %i.h, i32 noundef 10) #7
  %or.cond.i36.i = icmp ugt i64 %i.be, 9223372036854775806
  br i1 %or.cond.i36.i, label %._crit_edge.i38.i, label %bb.s

bb.s:                                             ; preds = %.critedge.i35.i
  %i.bf = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1
  switch i8 %i.bg, label %._crit_edge.i38.i [
    i8 42, label %bb.t
    i8 0, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bi = call i64 @strtol(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.h, i32 noundef 0) #7
  %or.cond3.i41.i = icmp ugt i64 %i.bi, 9223372036854775806
  br i1 %or.cond3.i41.i, label %._crit_edge.i38.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %i.h, align 8
  %i.bk = load i8, ptr %i.bj, align 1
  %.not44.i42.i = icmp eq i8 %i.bk, 0
  br i1 %.not44.i42.i, label %bb.v, label %._crit_edge.i38.i

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.bl = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.i) #7 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.bl, null
  br i1 %.not.i37.i, label %._crit_edge.i38.i, label %.lr.ph51.split.i27.i, !llvm.loop !9

._crit_edge.i38.i:                                ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %.critedge.i35.i, %bb.q
  %.031.i39.i = phi i32 [ 0, %bb.q ], [ -1, %.critedge.i35.i ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.s ], [ 0, %bb.v ]
  call void @slurm_xfree(ptr noundef nonnull %i.g) #7
  br label %_valid_num_list.exit45.i

_valid_num_list.exit45.i:                         ; preds = %._crit_edge.i38.i, %.split.us.i44.i
  %.2.i40.i = phi i32 [ %.031.i39.i, %._crit_edge.i38.i ], [ -1, %.split.us.i44.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  br label %_valid_gres_bind.exit

bb.w:                                             ; preds = %bb.p
  %i.bm = call i32 @xstrncasecmp(ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.8, i64 noundef 9) #7
  %.not20.i = icmp eq i32 %i.bm, 0
  br i1 %.not20.i, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store ptr null, ptr %i.f, align 8
  %i.bo = call ptr @xstrdup(ptr noundef nonnull %i.bn) #7 ; 2 uses
  store ptr %i.bo, ptr %i.d, align 8
  %i.bp = call ptr @strtok_r(ptr noundef %i.bo, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.f) #7 ; 2 uses
  %.not49.i46.i = icmp eq ptr %i.bp, null
  br i1 %.not49.i46.i, label %._crit_edge.i48.i, label %.lr.ph51.split.us.i.i

.lr.ph51.split.us.i.i:                            ; preds = %bb.x, %bb.ac
  %.03250.us.i.i = phi ptr [ %i.ce, %bb.ac ], [ %i.bp, %bb.x ] ; 2 uses
  %i.bq = call i32 @xstrncmp(ptr noundef nonnull %.03250.us.i.i, ptr noundef nonnull @.str.12, i64 noundef 2) #7
  %.not38.us.i.i = icmp eq i32 %i.bq, 0
  %spec.select46.idx.us.i.i = select i1 %.not38.us.i.i, i64 2, i64 0
  %spec.select46.us.i.i = getelementptr inbounds nuw i8, ptr %.03250.us.i.i, i64 %spec.select46.idx.us.i.i ; 4 uses
  %i.br = load i8, ptr %spec.select46.us.i.i, align 1 ; 2 uses
  %.not3947.us.i.i = icmp eq i8 %i.br, 0
  br i1 %.not3947.us.i.i, label %.critedge.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph51.split.us.i.i, %bb.y
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i, %bb.y ], [ 0, %.lr.ph51.split.us.i.i ]
  %i.bs = phi i8 [ %i.bw, %bb.y ], [ %i.br, %.lr.ph51.split.us.i.i ] ; 2 uses
  %i.bt = sext i8 %i.bs to i32                    ; 2 uses
  %i.bu = call i32 @isxdigit(i32 noundef %i.bt) #7, !callees !10, !inline_history !11
  %.not40.us.i.i = icmp ne i32 %i.bu, 0
  %.not41.us.i.i = icmp eq i8 %i.bs, 42
  %or.cond122.i = or i1 %.not41.us.i.i, %.not40.us.i.i
  br i1 %or.cond122.i, label %bb.y, label %.split.us.i51.i

bb.y:                                             ; preds = %.lr.ph.us.i.i
  %indvars.iv.next72.i.i = add nuw nsw i64 %indvars.iv71.i.i, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select46.us.i.i, i64 %indvars.iv.next72.i.i
  %i.bw = load i8, ptr %i.bv, align 1             ; 2 uses
  %.not39.us.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not39.us.i.i, label %.critedge.us.i.i, label %.lr.ph.us.i.i, !llvm.loop !8

.critedge.us.i.i:                                 ; preds = %bb.y, %.lr.ph51.split.us.i.i
  %i.bx = call i64 @strtol(ptr noundef nonnull %spec.select46.us.i.i, ptr noundef nonnull %i.e, i32 noundef 16) #7
  %or.cond.us.i.i = icmp ugt i64 %i.bx, 9223372036854775806
  br i1 %or.cond.us.i.i, label %._crit_edge.i48.i, label %bb.z

bb.z:                                             ; preds = %.critedge.us.i.i
  %i.by = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  switch i8 %i.bz, label %._crit_edge.i48.i [
    i8 42, label %bb.aa
    i8 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cb = call i64 @strtol(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.e, i32 noundef 0) #7
  %or.cond3.us.i.i = icmp ugt i64 %i.cb, 9223372036854775806
  br i1 %or.cond3.us.i.i, label %._crit_edge.i48.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load ptr, ptr %i.e, align 8
  %i.cd = load i8, ptr %i.cc, align 1
  %.not44.us.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not44.us.i.i, label %bb.ac, label %._crit_edge.i48.i

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.ce = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.f) #7 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.us.i.i, label %._crit_edge.i48.i, label %.lr.ph51.split.us.i.i, !llvm.loop !9

.split.us.i51.i:                                  ; preds = %.lr.ph.us.i.i
  %i.cf = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, ptr noundef nonnull %spec.select46.us.i.i, i32 noundef %i.bt) #7 ; 0 uses
  br label %_valid_num_list.exit52.i

._crit_edge.i48.i:                                ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %.critedge.us.i.i, %bb.x
  %.031.i49.i = phi i32 [ 0, %bb.x ], [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %.critedge.us.i.i ], [ 0, %bb.ac ]
  call void @slurm_xfree(ptr noundef nonnull %i.d) #7
  br label %_valid_num_list.exit52.i

_valid_num_list.exit52.i:                         ; preds = %._crit_edge.i48.i, %.split.us.i51.i
  %.2.i50.i = phi i32 [ %.031.i49.i, %._crit_edge.i48.i ], [ -1, %.split.us.i51.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %_valid_gres_bind.exit

bb.ad:                                            ; preds = %bb.w
  %i.cg = call i32 @xstrncasecmp(ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.9, i64 noundef 5) #7
  %.not21.i = icmp eq i32 %i.cg, 0
  br i1 %.not21.i, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8
  %i.ci = call ptr @xstrdup(ptr noundef nonnull %i.ch) #7 ; 2 uses
  store ptr %i.ci, ptr %i.a, align 8
  %i.cj = call ptr @strtok_r(ptr noundef %i.ci, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.c) #7 ; 2 uses
  %.not49.i53.i = icmp eq ptr %i.cj, null
  br i1 %.not49.i53.i, label %._crit_edge.i69.i, label %.lr.ph51.split.us.i55.i

.lr.ph51.split.us.i55.i:                          ; preds = %bb.ae, %bb.aj
  %.03250.us.i56.i = phi ptr [ %i.cy, %bb.aj ], [ %i.cj, %bb.ae ] ; 2 uses
  %i.ck = call i32 @xstrncmp(ptr noundef nonnull %.03250.us.i56.i, ptr noundef nonnull @.str.12, i64 noundef 2) #7
  %.not38.us.i57.i = icmp eq i32 %i.ck, 0
  %spec.select46.idx.us.i58.i = select i1 %.not38.us.i57.i, i64 2, i64 0
  %spec.select46.us.i59.i = getelementptr inbounds nuw i8, ptr %.03250.us.i56.i, i64 %spec.select46.idx.us.i58.i ; 4 uses
  %i.cl = load i8, ptr %spec.select46.us.i59.i, align 1 ; 2 uses
  %.not3947.us.i60.i = icmp eq i8 %i.cl, 0
  br i1 %.not3947.us.i60.i, label %.critedge.us.i66.i, label %.lr.ph.us.i61.i

.lr.ph.us.i61.i:                                  ; preds = %.lr.ph51.split.us.i55.i, %bb.af
  %indvars.iv71.i62.i = phi i64 [ %indvars.iv.next72.i64.i, %bb.af ], [ 0, %.lr.ph51.split.us.i55.i ]
  %i.cm = phi i8 [ %i.cq, %bb.af ], [ %i.cl, %.lr.ph51.split.us.i55.i ] ; 2 uses
  %i.cn = sext i8 %i.cm to i32                    ; 2 uses
  %i.co = call i32 @isxdigit(i32 noundef %i.cn) #7, !callees !10, !inline_history !11
  %.not40.us.i63.i = icmp ne i32 %i.co, 0
  %.not41.us.i74.i = icmp eq i8 %i.cm, 42
  %or.cond123.i = or i1 %.not41.us.i74.i, %.not40.us.i63.i
  br i1 %or.cond123.i, label %bb.af, label %.split.us.i75.i

bb.af:                                            ; preds = %.lr.ph.us.i61.i
  %indvars.iv.next72.i64.i = add nuw nsw i64 %indvars.iv71.i62.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %spec.select46.us.i59.i, i64 %indvars.iv.next72.i64.i
  %i.cq = load i8, ptr %i.cp, align 1             ; 2 uses
  %.not39.us.i65.i = icmp eq i8 %i.cq, 0
  br i1 %.not39.us.i65.i, label %.critedge.us.i66.i, label %.lr.ph.us.i61.i, !llvm.loop !8

.critedge.us.i66.i:                               ; preds = %bb.af, %.lr.ph51.split.us.i55.i
  %i.cr = call i64 @strtol(ptr noundef nonnull %spec.select46.us.i59.i, ptr noundef nonnull %i.b, i32 noundef 16) #7
  %or.cond.us.i67.i = icmp ugt i64 %i.cr, 9223372036854775806
  br i1 %or.cond.us.i67.i, label %._crit_edge.i69.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge.us.i66.i
  %i.cs = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1
  switch i8 %i.ct, label %._crit_edge.i69.i [
    i8 42, label %bb.ah
    i8 0, label %bb.aj
  ]

end_hunk_0
