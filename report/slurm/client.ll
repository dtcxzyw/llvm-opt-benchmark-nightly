Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/client?download=true
inline.NumInlined: 32
inline.NumDeleted: 3
begin_hunk_0_@slurm_get_log_level
declare i32 @slurm_get_log_level() local_unnamed_addr #3

declare void @slurm_log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @client_req_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 168, ptr noundef nonnull @__func__.client_req_init) #11 ; 17 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %1, ptr %i.c, align 8
  store i32 %0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i32 0, ptr %i.d, align 4
  %i.e = tail call i32 @slurm_xstrncmp(ptr noundef %1, ptr noundef nonnull @.str.51, i64 noundef 5) #11
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @.str.52, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 10, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 10, ptr %i.h, align 1
  br label %_parse_cmd.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = tail call i32 @slurm_xstrncmp(ptr noundef %i.i, ptr noundef nonnull @.str.53, i64 noundef 4) #11
  %.not45.i = icmp eq i32 %i.j, 0
  br i1 %.not45.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.54) #11 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.55, ptr noundef %i.l) #11 ; 0 uses
  br label %_parse_cmd.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load i32, ptr @pmi_version, align 4      ; 2 uses
  %i.r = icmp ne i32 %i.q, 1
  %i.s = load i32, ptr @pmi_subversion, align 4   ; 2 uses
  %i.t = icmp ne i32 %i.s, 1
  %.not55.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %.not55.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 32, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 10, ptr %i.v, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 4, %bb.f ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1
  switch i8 %i.x, label %bb.h [
    i8 32, label %.critedge.loopexit69.i
    i8 10, label %.critedge.loopexit69.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.b, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.i, %i.z
  br i1 %i.aa, label %bb.i, label %.critedge.loopexit69.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.g, !llvm.loop !12

bb.j:                                             ; preds = %bb.e
  %i.ab = icmp ne i32 %i.q, 2
  %i.ac = icmp ne i32 %i.s, 0
  %.not58.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %.not58.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 59, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 59, ptr %i.ae, align 1
  %i.af = load i8, ptr %i.o, align 1
  %.not4860.i = icmp eq i8 %i.af, 59
  br i1 %.not4860.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ag = load i32, ptr %i.b, align 8             ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 4) ; 3 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %exitcond.not.i3 = icmp slt i32 %i.ag, 5
  br i1 %exitcond.not.i3, label %.critedge.i, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.l
  %indvars.iv66.i4 = phi i64 [ %indvars.iv.next67.i, %bb.l ], [ 4, %.lr.ph.i ]
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i4, 1 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next67.i
  %i.ai = load i8, ptr %i.ah, align 1
  %.not48.i = icmp eq i8 %i.ai, 59
  br i1 %.not48.i, label %.critedge.loopexit.split.loop.exit.i, label %bb.l, !llvm.loop !13

.critedge.loopexit.split.loop.exit.i:             ; preds = %.lr.ph
  %indvars.le.i = trunc i64 %indvars.iv.next67.i to i32
  br label %.critedge.i

.critedge.loopexit69.i:                           ; preds = %bb.h, %bb.g, %bb.g
  %i.aj = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.i, %.critedge.loopexit69.i, %.critedge.loopexit.split.loop.exit.i, %bb.k, %bb.j
  %.2.i = phi i32 [ %i.aj, %.critedge.loopexit69.i ], [ 4, %bb.j ], [ 4, %bb.k ], [ %indvars.le.i, %.critedge.loopexit.split.loop.exit.i ], [ %smax.i, %.lr.ph.i ], [ %smax.i, %bb.l ] ; 3 uses
  %i.ak = load i32, ptr %i.b, align 8
  %.not52.i = icmp slt i32 %.2.i, %i.ak
  br i1 %.not52.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  %i.al = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.56) #11 ; 0 uses
  br label %_parse_cmd.exit

bb.n:                                             ; preds = %.critedge.i
  %i.am = zext nneg i32 %.2.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.am
  store i8 0, ptr %i.an, align 1
  %i.ao = add nuw nsw i32 %.2.i, 1
  store i32 %i.ao, ptr %i.d, align 4
  br label %_parse_cmd.exit.thread

_parse_cmd.exit:                                  ; preds = %bb.m, %bb.d
  call void @slurm_xfree(ptr noundef nonnull %i.a) #11
  %.pre = load ptr, ptr %i.a, align 8
  br label %_parse_cmd.exit.thread

_parse_cmd.exit.thread:                           ; preds = %bb.b, %bb.n, %_parse_cmd.exit
  %i.ap = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.n ], [ %.pre, %_parse_cmd.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define dso_local void @client_req_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @slurm_xfree(ptr noundef nonnull %i.c) #11
  call void @slurm_xfree(ptr noundef nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @client_req_parse_body(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph73, %bb.p
  %i.k = phi i32 [ %i.c, %.lr.ph73 ], [ %i.bn, %bb.p ] ; 2 uses
  %.05272 = phi i32 [ %i.b, %.lr.ph73 ], [ %i.aq, %bb.p ] ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.m = sext i32 %.05272 to i64                  ; 2 uses
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv79.in = phi i32 [ %indvars.iv79, %bb.c ], [ %.05272, %bb.b ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %indvars.iv79 = add i32 %indvars.iv79.in, 1     ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1
  %.not = icmp ne i8 %i.p, 61
  %i.q = icmp slt i64 %indvars.iv, %i.n
  %or.cond = and i1 %i.q, %.not
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %or.cond, label %bb.c, label %.critedge, !llvm.loop !14

.critedge:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %i.m ; 3 uses
  %i.s = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.not55 = icmp sgt i32 %i.k, %i.s
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.t = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.4, ptr noundef %i.r) #11 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %.critedge
  %i.u = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv
  store i8 0, ptr %i.u, align 1
  %i.v = add nsw i32 %i.s, 1                      ; 3 uses
  %i.w = tail call i32 @slurm_get_log_level() #11
  %i.x = icmp sgt i32 %i.w, 6
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.client_req_parse_body, ptr noundef nonnull %i.r) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.z = sext i32 %i.v to i64                     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = load i8, ptr %i.g, align 8              ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1             ; 2 uses
  %.not5663 = icmp eq i8 %i.ac, %i.ab
  br i1 %.not5663, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ad = load i8, ptr %i.f, align 1
  %1 = sext i32 %indvars.iv79 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv81 = phi i64 [ %1, %.lr.ph ], [ %indvars.iv.next82, %bb.j ] ; 6 uses
  %i.ae = phi i8 [ %i.ac, %.lr.ph ], [ %i.ak, %bb.j ]
  %.264 = phi i32 [ %i.v, %.lr.ph ], [ %i.ai, %bb.j ]
  %.not57 = icmp eq i8 %i.ae, %i.ad
  br i1 %.not57, label %.critedge2.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %0, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv81, %i.ag
  br i1 %i.ah, label %bb.j, label %.critedge2.loopexit.split.loop.exit101

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 3 uses
  %i.ai = add nsw i32 %.264, 1                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %indvars.iv.next82
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %.not56 = icmp eq i8 %i.ak, %i.ab
  br i1 %.not56, label %.critedge2, label %bb.h, !llvm.loop !15

.critedge2.loopexit.split.loop.exit:              ; preds = %bb.h
  %i.al = trunc nsw i64 %indvars.iv81 to i32
  br label %.critedge2

.critedge2.loopexit.split.loop.exit101:           ; preds = %bb.i
  %i.am = trunc nsw i64 %indvars.iv81 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %.critedge2.loopexit.split.loop.exit, %.critedge2.loopexit.split.loop.exit101, %bb.g
  %.lcssa = phi i64 [ %i.z, %bb.g ], [ %indvars.iv81, %.critedge2.loopexit.split.loop.exit101 ], [ %indvars.iv81, %.critedge2.loopexit.split.loop.exit ], [ %indvars.iv.next82, %bb.j ]
  %.2.lcssa = phi i32 [ %i.v, %bb.g ], [ %i.am, %.critedge2.loopexit.split.loop.exit101 ], [ %i.al, %.critedge2.loopexit.split.loop.exit ], [ %i.ai, %bb.j ] ; 2 uses
  %i.an = load i32, ptr %0, align 8
  %.not58 = icmp slt i32 %.2.lcssa, %i.an
  br i1 %.not58, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge2
  %i.ao = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.6) #11 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %.critedge2
  %i.ap = getelementptr inbounds i8, ptr %i.y, i64 %.lcssa
  store i8 0, ptr %i.ap, align 1
  %i.aq = add nsw i32 %.2.lcssa, 1                ; 2 uses
  %i.ar = tail call i32 @slurm_get_log_level() #11
  %i.as = icmp sgt i32 %i.ar, 6
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 7, ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.client_req_parse_body, ptr noundef nonnull %i.aa) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = load i32, ptr %i.h, align 4
  %i.au = shl i32 %i.at, 1                        ; 2 uses
  %i.av = add i32 %i.au, 4
  %i.aw = load i32, ptr %i.i, align 8             ; 2 uses
  %i.ax = icmp ugt i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = add i32 %i.aw, 32                       ; 2 uses
  store i32 %i.ay, ptr %i.i, align 8
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef %i.ba, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 242, ptr noundef nonnull @__func__.client_req_parse_body) #11 ; 0 uses
  %.pre = load i32, ptr %i.h, align 4
  %.pre83 = shl i32 %.pre, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi = phi i32 [ %.pre83, %bb.o ], [ %i.au, %bb.n ]
  %i.bc = load ptr, ptr %i.j, align 8
  %i.bd = zext i32 %.pre-phi to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  store ptr %i.r, ptr %i.be, align 8
  %i.bf = load ptr, ptr %i.j, align 8
  %i.bg = load i32, ptr %i.h, align 4
  %i.bh = shl i32 %i.bg, 1
  %i.bi = or disjoint i32 %i.bh, 1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bj
  store ptr %i.aa, ptr %i.bk, align 8
  %i.bl = load i32, ptr %i.h, align 4
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.h, align 4
  %i.bn = load i32, ptr %0, align 8               ; 2 uses
  %i.bo = icmp slt i32 %i.aq, %i.bn
  br i1 %i.bo, label %bb.b, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.p, %bb.a, %bb.k, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.k ], [ 0, %bb.a ], [ 0, %bb.p ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = shl i32 %i.bs, 1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bu
  store ptr null, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %i.bp, align 8
  %i.bx = load i32, ptr %i.br, align 4
  %i.by = shl i32 %i.bx, 1
  %i.bz = or disjoint i32 %i.by, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca
  store ptr null, ptr %i.cb, align 8
  ret i32 %.0
}

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @client_req_parse_spawn_req(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ult i32 %i.b, 5
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.8) #11 ; 0 uses
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @spawn_req_new() #11       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 22 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @slurm_xstrcmp(ptr noundef %i.h, ptr noundef nonnull @.str.9) #11
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.10) #11 ; 0 uses
  br label %bb.aw

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #11, !inline_history !0 ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  store i32 %i.o, ptr %i.p, align 8
  %i.q = and i64 %i.n, 4294967295
  %i.r = tail call ptr @slurm_xcalloc(i64 noundef %i.q, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 280, ptr noundef nonnull @__func__.client_req_parse_spawn_req) #11
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 @slurm_xstrcmp(ptr noundef %i.v, ptr noundef nonnull @.str.11) #11
  %.not152 = icmp eq i32 %i.w, 0
  br i1 %.not152, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.12) #11 ; 0 uses
  br label %bb.aw

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.aa, ptr noundef null, i32 noundef 10) #11, !inline_history !0 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 4 uses
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = add i32 %i.ae, -2
  %i.ag = shl i32 %i.ac, 1
  %i.ah = load i32, ptr %i.p, align 8
  %i.ai = mul i32 %i.ah, 3
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = icmp ult i32 %i.af, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.8) #11 ; 0 uses
  br label %bb.aw

bb.i:                                             ; preds = %bb.g
  %i.am = and i64 %i.ab, 4294967295
  %i.an = tail call ptr @slurm_xcalloc(i64 noundef %i.am, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 295, ptr noundef nonnull @__func__.client_req_parse_spawn_req) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = load i32, ptr %i.ad, align 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = tail call ptr @slurm_xcalloc(i64 noundef %i.aq, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 296, ptr noundef nonnull @__func__.client_req_parse_spawn_req) #11
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = load i32, ptr %i.ad, align 4
  %.not204 = icmp eq i32 %i.at, 0
  br i1 %.not204, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %bb.o
  %i.au = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.i
  %.0.lcssa = phi i32 [ 2, %bb.i ], [ %i.au, %.preheader.loopexit ]
  %i.av = load i32, ptr %i.p, align 8
end_hunk_0
