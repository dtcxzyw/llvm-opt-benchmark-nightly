Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/multi_prog?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@mpir_set_multi_name:bb.a

.preheader55:                                     ; preds = %._crit_edge
  %i.j = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 16384, ptr noundef nonnull %i.h)
  %.not63 = icmp eq ptr %i.j, null
  br i1 %.not63, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %.preheader55
  %i.k = add nsw i32 %0, -1                       ; 2 uses
  %.not9.i.i = icmp slt i32 %0, 1
  %zext.i = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef %1) #9 ; 0 uses
  br label %bb.af

bb.c:                                             ; preds = %.lr.ph66, %.backedge
  %.040.shrunk65 = phi i1 [ false, %.lr.ph66 ], [ %.039, %.backedge ]
  %.04164 = phi i32 [ 0, %.lr.ph66 ], [ %i.m, %.backedge ]
  %i.m = add nuw nsw i32 %.04164, 1               ; 3 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #10 ; 3 uses
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = icmp ugt i32 %i.o, 16382
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %i.m, ptr noundef %1) #9 ; 0 uses
  %i.r = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %.not51 = icmp eq i32 %i.o, 0
  br i1 %.not51, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %i.n, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = icmp eq i8 %i.v, 92
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not52 = icmp eq i32 %i.o, 1
  br i1 %.not52, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add i64 %i.n, 4294967294
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 92
  %i.ac = icmp eq i8 %i.v, 10
  %or.cond97 = and i1 %i.ab, %i.ac
  br i1 %or.cond97, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.e, %bb.h, %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.thread
  %.039 = phi i1 [ false, %.thread ], [ true, %bb.h ], [ true, %bb.f ]
  br i1 %.040.shrunk65, label %.backedge, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ad = load i8, ptr %i.b, align 16             ; 2 uses
  %cond60 = icmp eq i8 %i.ad, 0
  br i1 %cond60, label %.backedge, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader
  %i.ae = tail call ptr @__ctype_b_loc() #11      ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph62, %bb.k
  %i.ag = phi i8 [ %i.ad, %.lr.ph62 ], [ %i.am, %bb.k ] ; 2 uses
  %.04261 = phi ptr [ %i.b, %.lr.ph62 ], [ %i.al, %bb.k ] ; 2 uses
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = and i16 %i.aj, 8192
  %.not50 = icmp eq i16 %i.ak, 0
  br i1 %.not50, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.04261, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %cond = icmp eq i8 %i.am, 0
  br i1 %cond, label %.backedge, label %bb.j, !llvm.loop !13

.critedge:                                        ; preds = %bb.j
  %cond89 = icmp eq i8 %i.ag, 35
  br i1 %cond89, label %.backedge, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.an = call ptr @strtok_r(ptr noundef nonnull %.04261, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c) #9 ; 6 uses
  %i.ao = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c) #9 ; 4 uses
  %i.ap = icmp ne ptr %i.an, null
  %i.aq = icmp ne ptr %i.ao, null
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %i.m, ptr noundef %1) #9 ; 0 uses
  %i.as = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  %i.at = load i8, ptr %i.an, align 1
  %i.au = icmp eq i8 %i.at, 42
  br i1 %i.au, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %.not9.i.i, label %_set_exec_names.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %.pre18.i.i = load ptr, ptr @MPIR_proctable, align 8
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.r, %.lr.ph.i.i
  %i.ay = phi ptr [ %.pre18.i.i, %.lr.ph.i.i ], [ %i.be, %bb.r ] ; 2 uses
  %indvars.iv13.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next14.i.i, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %indvars.iv13.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.us.i.i
  %i.bd = call ptr @xstrdup(ptr noundef nonnull %i.ao) #9
  store ptr %i.bd, ptr %i.ba, align 8
  %.pre.i.i = load ptr, ptr @MPIR_proctable, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.us.i.i
  %i.be = phi ptr [ %i.ay, %.lr.ph.split.us.i.i ], [ %.pre.i.i, %bb.q ]
  %indvars.iv.next14.i.i = add nuw nsw i64 %indvars.iv13.i.i, 1 ; 2 uses
  %i.bf = icmp eq i64 %indvars.iv.next14.i.i, %zext.i
  br i1 %i.bf, label %_set_exec_names.exit, label %.lr.ph.split.us.i.i, !llvm.loop !14

bb.s:                                             ; preds = %bb.o, %bb.n
  store ptr %i.an, ptr %i.a, align 8
  br i1 %i.d, label %.lr.ph.i, label %_set_exec_names.exit

.lr.ph.i:                                         ; preds = %bb.s, %bb.ad
  %i.bg = phi ptr [ %i.cx, %bb.ad ], [ %i.an, %bb.s ] ; 2 uses
  %.046.i = phi i32 [ %i.cy, %bb.ad ], [ 0, %bb.s ]
  %i.bh = load ptr, ptr %i.ae, align 8
  %i.bi = load i8, ptr %i.bg, align 1
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = and i16 %i.bl, 2048
  %.not.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.bn = call i64 @strtol(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, i32 noundef 10) #9
  %i.bo = trunc i64 %i.bn to i32                  ; 3 uses
  %i.bp = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1
  switch i8 %i.bq, label %bb.ae [
    i8 44, label %bb.u
    i8 0, label %bb.u
    i8 45, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.br = call i32 @llvm.smax.i32(i32 %i.bo, i32 0) ; 2 uses
  %i.bs = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.bo) ; 2 uses
  %.not9.i33.i = icmp sgt i32 %i.br, %i.bs
  br i1 %.not9.i33.i, label %_set_range.exit35.i, label %.lr.ph.i34.i

.lr.ph.i34.i:                                     ; preds = %bb.u
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = add nuw nsw i32 %i.bs, 1
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.x, %.lr.ph.i34.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.x ], [ %i.bt, %.lr.ph.i34.i ] ; 3 uses
  %i.bv = load ptr, ptr @MPIR_proctable, align 8
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %indvars.iv.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.split.i.i
  %i.ca = call ptr @xstrdup(ptr noundef nonnull %i.ao) #9
  store ptr %i.ca, ptr %i.bx, align 8
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.split.i.i
  %i.cb = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.cc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, i32 noundef %i.cb) #9 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.bu, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %_set_range.exit35.i, label %.lr.ph.split.i.i, !llvm.loop !14

bb.y:                                             ; preds = %bb.t
  %i.cd = call i32 @llvm.smax.i32(i32 %i.bo, i32 0) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.cf = call i64 @strtol(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.a, i32 noundef 10) #9
  %i.cg = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1
  switch i8 %i.ch, label %bb.ae [
    i8 44, label %bb.z
    i8 0, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.ci = trunc i64 %i.cf to i32
  %i.cj = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.ci) ; 2 uses
  %.not9.i36.i = icmp sgt i32 %i.cd, %i.cj
  br i1 %.not9.i36.i, label %_set_range.exit35.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %bb.z
  %i.ck = zext nneg i32 %i.cd to i64
  %i.cl = add nuw nsw i32 %i.cj, 1
  br label %.lr.ph.split.i38.i

.lr.ph.split.i38.i:                               ; preds = %bb.ac, %.lr.ph.i37.i
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i, %bb.ac ], [ %i.ck, %.lr.ph.i37.i ] ; 3 uses
  %i.cm = load ptr, ptr @MPIR_proctable, align 8
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %indvars.iv.i39.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.i38.i
  %i.cr = call ptr @xstrdup(ptr noundef nonnull %i.ao) #9
  store ptr %i.cr, ptr %i.co, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i38.i
  %i.cs = trunc nuw nsw i64 %indvars.iv.i39.i to i32
  %i.ct = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, i32 noundef %i.cs) #9 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %lftr.wideiv.i41.i = trunc i64 %indvars.iv.next.i40.i to i32
  %exitcond.not.i42.i = icmp eq i32 %i.cl, %lftr.wideiv.i41.i
  br i1 %exitcond.not.i42.i, label %_set_range.exit35.i, label %.lr.ph.split.i38.i, !llvm.loop !14

_set_range.exit35.i:                              ; preds = %bb.ac, %bb.x, %bb.z, %bb.u
  %i.cu = phi ptr [ %i.bp, %bb.x ], [ %i.bp, %bb.u ], [ %i.cg, %bb.z ], [ %i.cg, %bb.ac ] ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %_set_exec_names.exit, label %bb.ad

bb.ad:                                            ; preds = %_set_range.exit35.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 2 uses
  store ptr %i.cx, ptr %i.a, align 8
  %i.cy = add nuw nsw i32 %.046.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cy, %0
  br i1 %exitcond.not.i, label %_set_exec_names.exit, label %.lr.ph.i, !llvm.loop !15

bb.ae:                                            ; preds = %bb.y, %bb.t, %.lr.ph.i
  %i.cz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.an) #9 ; 0 uses
  br label %_set_exec_names.exit

_set_exec_names.exit:                             ; preds = %_set_range.exit35.i, %bb.ad, %bb.r, %bb.p, %bb.s, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %.critedge, %.preheader, %_set_exec_names.exit, %bb.i
  %i.da = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 16384, ptr noundef nonnull %i.h)
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %._crit_edge67, label %bb.c, !llvm.loop !16

._crit_edge67:                                    ; preds = %.backedge, %.preheader55
  %i.db = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge67, %bb.m, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.m ], [ 0, %._crit_edge67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @mpir_init(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  store i32 %0, ptr @MPIR_proctable_size, align 4
  %i.a = sext i32 %0 to i64
  %i.b = mul nsw i64 %i.a, 24
  %i.c = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.b, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 197, ptr noundef nonnull @__func__.mpir_init) #9 ; 2 uses
  store ptr %i.c, ptr @MPIR_proctable, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.6) #9 ; 0 uses
  %i.f = load i32, ptr @error_exit, align 4
  tail call void @exit(i32 noundef %i.f) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @mpir_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @MPIR_proctable_size, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr @MPIR_proctable, align 8
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv
  tail call void @slurm_xfree(ptr noundef %i.d) #9
  %i.e = load ptr, ptr @MPIR_proctable, align 8
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.g) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr @MPIR_proctable_size, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @slurm_xfree(ptr noundef nonnull @MPIR_proctable) #9
  ret void
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @mpir_set_executable_names(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, -2
  %spec.store.select = select i1 %i.a, i32 0, i32 %1 ; 3 uses
  %i.b = add i32 %spec.store.select, %2           ; 2 uses
  %i.c = icmp ult i32 %spec.store.select, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %spec.store.select to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.e = tail call ptr @xstrdup(ptr noundef %0) #9
  %i.f = load ptr, ptr @MPIR_proctable, align 8
  %i.g = getelementptr inbounds [24 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = trunc nsw i64 %indvars.iv.next to i32
  %i.j = icmp ugt i32 %i.b, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @mpir_dump_proctable() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @MPIR_proctable_size, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr @MPIR_proctable, align 8
  %i.d = tail call i32 @get_log_level() #9
  %i.e = icmp sgt i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %i.l, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %i.k) #9
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr @MPIR_proctable_size, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

declare i32 @get_log_level() local_unnamed_addr #3

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @verify_multi_name(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@verify_multi_name:bb.a
bb.w:                                             ; preds = %.critedge.i
  switch i8 %.lcssa.i, label %bb.ad [
    i8 0, label %bb.x
    i8 45, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bw = call i64 @strtol(ptr noundef nonnull captures(none) %.03353.i, ptr noundef null, i32 noundef 10) #9, !inline_history !22
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 1 ; 2 uses
  %i.bz = load ptr, ptr %i.ao, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.1.i = phi ptr [ %i.by, %bb.y ], [ %i.cf, %bb.z ] ; 2 uses
  %i.ca = load i8, ptr %.1.i, align 1             ; 2 uses
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = and i16 %i.cd, 2048
  %.not39.i = icmp eq i16 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br i1 %.not39.i, label %bb.aa, label %bb.z, !llvm.loop !23

bb.aa:                                            ; preds = %bb.z
  %.not40.i = icmp eq i8 %i.ca, 0
  br i1 %.not40.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.16) #9 ; 0 uses
  br label %_validate_ranks.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.ch = call i64 @strtol(ptr noundef nonnull captures(none) %.03353.i, ptr noundef null, i32 noundef 10) #9, !inline_history !22
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = call i64 @strtol(ptr noundef nonnull captures(none) %i.by, ptr noundef null, i32 noundef 10) #9, !inline_history !22
  %i.ck = trunc i64 %i.cj to i32
  br label %bb.ae

bb.ad:                                            ; preds = %bb.w
  %i.cl = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.17, ptr noundef nonnull %.03353.i) #9 ; 0 uses
  br label %_validate_ranks.exit.thread

bb.ae:                                            ; preds = %bb.ac, %bb.x
  %.031.i = phi i32 [ %i.bx, %bb.x ], [ %i.ci, %bb.ac ]
  %.0.i = phi i32 [ %i.bx, %bb.x ], [ %i.ck, %bb.ac ]
  %i.cm = call fastcc i32 @_update_task_mask(i32 noundef %.031.i, i32 noundef %.0.i, ptr noundef %1, ptr noundef nonnull %i.e, i1 noundef zeroext false)
  %.not41.i = icmp eq i32 %i.cm, 0
  br i1 %.not41.i, label %bb.af, label %_validate_ranks.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.cn = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %_validate_ranks.exit.thread71, label %.lr.ph54.i, !llvm.loop !24

_validate_ranks.exit.thread:                      ; preds = %bb.ae, %bb.v, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit78

_validate_ranks.exit.thread71:                    ; preds = %bb.af, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ag

_validate_ranks.exit:                             ; preds = %bb.r
  %i.co = load i32, ptr %i.f, align 8
  %i.cp = add nsw i32 %i.co, -1
  store i8 1, ptr %i.t, align 4
  store i1 true, ptr @_validate_ranks.has_asterisk, align 1
  %i.cq = load ptr, ptr %i.j, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 148 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = call fastcc i32 @_update_task_mask(i32 noundef 0, i32 noundef %i.cp, ptr noundef %1, ptr noundef nonnull %i.e, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not65 = icmp eq i32 %i.cu, 0
  br i1 %.not65, label %bb.ag, label %.loopexit78

.loopexit78:                                      ; preds = %_validate_ranks.exit, %_validate_ranks.exit.thread
  %i.cv = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %i.x, ptr noundef %0) #9 ; 0 uses
  br label %.loopexit

bb.ag:                                            ; preds = %_validate_ranks.exit.thread71, %_validate_ranks.exit
  %i.cw = load ptr, ptr %i.j, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 240
  %i.cy = load i8, ptr %i.cx, align 8, !range !10, !noundef !11
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.da = load ptr, ptr %i.u, align 8
  %i.db = call ptr @search_path(ptr noundef %i.da, ptr noundef nonnull %i.ay, i1 noundef zeroext true, i32 noundef 1, i1 noundef zeroext true) #9 ; 2 uses
  store ptr %i.db, ptr %i.d, align 8
  %.not66 = icmp eq ptr %i.db, null
  br i1 %.not66, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %i.x, ptr noundef %0, ptr noundef nonnull %i.ay) #9 ; 0 uses
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  call void @slurm_xfree(ptr noundef nonnull %i.d) #9
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %.critedge, %.preheader76, %bb.aj, %bb.l
  %i.dd = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 16384, ptr noundef nonnull %i.m)
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %.preheader, label %bb.f, !llvm.loop !25

.lr.ph108:                                        ; preds = %.preheader, %bb.al
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.al ], [ 0, %.preheader ] ; 3 uses
  %i.de = load ptr, ptr %i.e, align 8
  %i.df = call i32 @slurm_bit_test(ptr noundef %i.de, i64 noundef %indvars.iv) #9
  %.not62 = icmp eq i32 %i.df, 0
  br i1 %.not62, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph108
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.11, ptr noundef %0, i32 noundef %i.dg) #9 ; 0 uses
  br label %.loopexit

bb.al:                                            ; preds = %.lr.ph108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = load i32, ptr %i.f, align 8
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %.lr.ph108, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %bb.al, %.preheader, %bb.ak, %bb.ai, %.loopexit78, %bb.p, %bb.g
  %.050 = phi i32 [ -1, %bb.g ], [ -1, %.loopexit78 ], [ -1, %bb.ai ], [ -1, %bb.p ], [ -1, %bb.ak ], [ 0, %.preheader ], [ 0, %bb.al ] ; 2 uses
  %i.dl = call i32 @fclose(ptr noundef nonnull %i.m) ; 0 uses
  %i.dm = load ptr, ptr %i.e, align 8
  %.not67 = icmp eq ptr %i.dm, null
  br i1 %.not67, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.loopexit
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #9
  br label %bb.an

bb.an:                                            ; preds = %.loopexit, %bb.am, %bb.d, %bb.b
  %.054 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %.050, %bb.am ], [ %.050, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.054
}

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #3

declare ptr @search_path(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_update_task_mask(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.18, i32 noundef %0, i32 noundef %1) #9 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.19, i32 noundef %0) #9 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %.not30 = icmp slt i32 %1, %i.f
  br i1 %.not30, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  %.not = xor i1 %i.i, true
  %.b = load i1, ptr @_update_task_mask.i_set_ntasks, align 1
  %or.cond = select i1 %.not, i1 true, i1 %.b
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.20, i32 noundef %1) #9 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.k = add nuw nsw i32 %1, 1                    ; 2 uses
  store i32 %i.k, ptr %i.e, align 8
  store i8 1, ptr %i.g, align 4
  store i1 true, ptr @_update_task_mask.i_set_ntasks, align 1
  %i.l = sext i32 %i.k to i64
  %i.m = tail call ptr @slurm_bit_realloc(ptr noundef nonnull %3, i64 noundef %i.l) #9 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %i.n = zext nneg i32 %0 to i64                  ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.j ], [ %i.n, %.lr.ph ] ; 4 uses
  %i.o = load ptr, ptr %3, align 8
  %i.p = tail call i32 @slurm_bit_test(ptr noundef %i.o, i64 noundef %indvars.iv40) #9
  %.not32.us = icmp eq i32 %i.p, 0
  br i1 %.not32.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.q = load ptr, ptr %3, align 8
  tail call void @bit_set(ptr noundef %i.q, i64 noundef %indvars.iv40) #9
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us, %bb.i
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %i.r = trunc nuw i64 %indvars.iv40 to i32
  %.not31.us.not = icmp sgt i32 %1, %i.r
  br i1 %.not31.us.not, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !27

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %i.n, %.lr.ph ] ; 5 uses
  %i.s = load ptr, ptr %3, align 8
  %i.t = tail call i32 @slurm_bit_test(ptr noundef %i.s, i64 noundef %indvars.iv) #9
  %.not32 = icmp eq i32 %i.t, 0
  br i1 %.not32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.21, i32 noundef %i.u) #9 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %.lr.ph.split
  %i.w = load ptr, ptr %3, align 8
  tail call void @bit_set(ptr noundef %i.w, i64 noundef %indvars.iv) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.x = trunc nuw i64 %indvars.iv to i32
  %.not31.not = icmp sgt i32 %1, %i.x
  br i1 %.not31.not, label %.lr.ph.split, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %bb.l, %bb.j, %bb.k, %bb.g, %bb.d, %bb.b
  %.026 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.k ], [ -1, %bb.g ], [ 0, %bb.j ], [ 0, %bb.l ]
  ret i32 %.026
}

declare ptr @slurm_bit_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !8, !9}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8, !9}
!22 = distinct !{null}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !8, !9}
end_hunk_1
