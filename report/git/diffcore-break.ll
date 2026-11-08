Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diffcore-break?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@diffcore_break:bb.a
  %i.ar = or i128 %i.al, %i.aq
  %i.as = icmp ne i128 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not.i.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.not.i, label %should_break.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.au = call i32 @repo_has_promisor_remote(ptr noundef %0) #8
  %.not55.i = icmp eq i32 %i.au, 0
  br i1 %.not55.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @diff_queued_diff_prefetch, ptr %i.g, align 8, !tbaa !40
  store ptr %0, ptr %i.h, align 8, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = call i32 @diff_populate_filespec(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef nonnull %2) #8
  %.not56.i = icmp eq i32 %i.av, 0
  br i1 %.not56.i, label %bb.n, label %should_break.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aw = call i32 @diff_populate_filespec(ptr noundef %0, ptr noundef nonnull %i.r, ptr noundef nonnull %2) #8
  %.not57.i = icmp eq i32 %i.aw, 0
  br i1 %.not57.i, label %bb.o, label %should_break.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !42 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !42
  %..i = call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.ba) ; 2 uses
  %i.bb = icmp ult i64 %..i, 400
  %.not58.i = icmp eq i64 %i.ay, 0
  %or.cond61.i = or i1 %.not58.i, %i.bb
  br i1 %or.cond61.i, label %should_break.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.be = call i32 @diffcore_count_changes(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.r, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not59.i = icmp eq i32 %i.be, 0
  br i1 %.not59.i, label %bb.q, label %should_break.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !42 ; 4 uses
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !43
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bg) ; 4 uses
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.bj = add i64 %i.bi, %spec.select.i
  %i.bk = icmp ult i64 %i.bh, %i.bj
  %spec.select67.i = call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 %spec.select.i)
  %i.bl = select i1 %i.bk, i64 %spec.select67.i, i64 %i.bi ; 2 uses
  %i.bm = sub nuw i64 %i.bf, %spec.select.i       ; 3 uses
  %i.bn = uitofp i64 %i.bm to double
  %i.bo = fmul nnan double %i.bn, 6.000000e+04    ; 2 uses
  %i.bp = uitofp i64 %i.bf to double
  %i.bq = fdiv double %i.bo, %i.bp
  %i.br = fptosi double %i.bq to i32              ; 4 uses
  %i.bs = icmp samesign ult i32 %spec.store.select, %i.br
  br i1 %i.bs, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = add i64 %i.bl, %i.bm
  %i.bu = uitofp i64 %i.bt to double
  %i.bv = fmul nnan double %i.bu, 6.000000e+04
  %i.bw = uitofp i64 %..i to double
  %i.bx = fdiv double %i.bv, %i.bw
  %i.by = fcmp olt double %i.bx, %i.i
  br i1 %i.by, label %should_break.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = mul i64 %i.bf, %i.j
  %i.ca = uitofp i64 %i.bz to double
  %i.cb = fcmp ogt double %i.bo, %i.ca
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cc = mul i64 %i.bl, 20                       ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.bm
  %i.ce = icmp ult i64 %i.cc, %spec.select.i
  %or.cond.i = and i1 %i.cd, %i.ce
  br i1 %or.cond.i, label %should_break.exit.thread, label %bb.u

should_break.exit.thread:                         ; preds = %bb.n, %bb.o, %bb.j, %bb.m, %bb.t, %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.pre55 = load ptr, ptr %i.m, align 8, !tbaa !24
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q, %bb.g
  %.1 = phi i32 [ 60000, %bb.g ], [ %i.br, %bb.q ], [ %i.br, %bb.t ], [ %i.br, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cf = icmp slt i32 %.1, %spec.store.select1
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !32
  %i.cj = call ptr @alloc_filespec(ptr noundef %i.ci) #8
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.cl = call ptr @diff_queue(ptr noundef nonnull %3, ptr noundef %i.ck, ptr noundef %i.cj) #8 ; 2 uses
  %i.cm = trunc i32 %.1 to i16
  %i.cn = select i1 %i.cf, i16 0, i16 %i.cm       ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i16 %i.cn, ptr %i.co, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 27 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = or i8 %i.cq, 1
  store i8 %i.cr, ptr %i.cp, align 1
  %i.cs = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !32
  %i.cv = call ptr @alloc_filespec(ptr noundef %i.cu) #8
  %i.cw = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.cx = call ptr @diff_queue(ptr noundef nonnull %3, ptr noundef %i.cv, ptr noundef %i.cw) #8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i16 %i.cn, ptr %i.cy, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 27 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = or i8 %i.da, 1
  store i8 %i.db, ptr %i.cz, align 1
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !24
  call void @diff_free_filespec_blob(ptr noundef %i.dc) #8
  %i.dd = load ptr, ptr %i.q, align 8, !tbaa !31
  call void @diff_free_filespec_blob(ptr noundef %i.dd) #8
  call void @free(ptr noundef nonnull %i.m) #8
  %i.de = load ptr, ptr @diff_queued_diff, align 8, !tbaa !17 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv
  store ptr null, ptr %i.df, align 8, !tbaa !19
  br label %bb.w

bb.v:                                             ; preds = %bb.e, %bb.e, %bb.d, %bb.d, %should_break.exit.thread, %bb.f, %bb.c, %bb.b
  %i.dg = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.d ], [ %.pre55, %should_break.exit.thread ], [ %i.n, %bb.f ], [ %i.n, %bb.c ], [ %i.n, %bb.b ]
  call void @diff_free_filespec_data(ptr noundef %i.dg) #8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31
  call void @diff_free_filespec_data(ptr noundef %i.di) #8
  call void @diff_q(ptr noundef nonnull %3, ptr noundef nonnull %i.m) #8
  %.pre = load ptr, ptr @diff_queued_diff, align 8, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dj = phi ptr [ %.pre, %bb.v ], [ %i.de, %bb.u ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !16
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next, %i.dl
  br i1 %i.dm, label %bb.b, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.w, %bb.a
  %i.dn = phi ptr [ %.pre56, %bb.a ], [ %i.dj, %bb.w ]
  call void @free(ptr noundef %i.dn) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @diff_queued_diff, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @alloc_filespec(ptr noundef) local_unnamed_addr #4

declare ptr @diff_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @diff_free_filespec_blob(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @diff_free_filespec_data(ptr noundef) local_unnamed_addr #4

declare void @diff_q(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @diffcore_merge_broken() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.diff_queue_struct, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !16 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.a, %bb.q
  %i.c = phi i32 [ %i.bk, %bb.q ], [ %i.a, %bb.a ] ; 2 uses
  %indvars.iv.a = phi i64 [ %indvars.iv.next54, %bb.q ], [ 0, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr @diff_queued_diff, align 8, !tbaa !17 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 9 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %.lr.ph44
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 27
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 1
  %.not31 = icmp eq i8 %i.i, 0
  br i1 %.not31, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.q = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.p) #9
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.c
  %i.r = add nuw nsw i64 %indvars.iv.a, 1         ; 2 uses
  %i.s = sext i32 %i.c to i64
  %i.t = icmp slt i64 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv50 = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next51, %bb.o ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv50
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 27
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 1
  %.not33 = icmp eq i8 %i.y, 0
  br i1 %.not33, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %i.ag = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.af) #9
  %.not34 = icmp eq i32 %i.ag, 0
  br i1 %.not34, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ah = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.af) #9
  %.not35 = icmp eq i32 %i.ah, 0
  br i1 %.not35, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !30
  %.not.i = icmp eq i16 %i.aj, 0                  ; 2 uses
  %spec.select.i = select i1 %.not.i, ptr %i.f, ptr %i.v ; 4 uses
  %spec.select24.i = select i1 %.not.i, ptr %i.v, ptr %i.f ; 4 uses
  %i.ak = load ptr, ptr %spec.select24.i, align 8, !tbaa !24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load i16, ptr %i.al, align 8, !tbaa !30
  %.not20.i = icmp eq i16 %i.am, 0
  br i1 %.not20.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @die(ptr noundef nonnull @.str) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select24.i, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !30
  %.not21.i = icmp eq i16 %i.aq, 0
  br i1 %.not21.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.1) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %spec.select.i, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load i16, ptr %i.as, align 8, !tbaa !30
  %.not22.i = icmp eq i16 %i.at, 0
  br i1 %.not22.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @die(ptr noundef nonnull @.str.2) #10
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !30
  %.not23.i = icmp eq i16 %i.ax, 0
  br i1 %.not23.i, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @die(ptr noundef nonnull @.str.3) #10
  unreachable

.thread:                                          ; preds = %bb.m
  %i.ay = call ptr @diff_queue(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.av) #8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i16 %i.ba, ptr %i.bb, align 8, !tbaa !33
  %i.bc = load ptr, ptr %spec.select24.i, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 76 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !46
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !31
  call void @free_filespec(ptr noundef %i.bg) #8
  %i.bh = load ptr, ptr %spec.select.i, align 8, !tbaa !24
  call void @free_filespec(ptr noundef %i.bh) #8
  call void @free(ptr noundef nonnull %spec.select24.i) #8
  call void @free(ptr noundef nonnull %spec.select.i) #8
  %i.bi = load ptr, ptr @diff_queued_diff, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv50
  store ptr null, ptr %i.bj, align 8, !tbaa !19
  br label %bb.q

bb.o:                                             ; preds = %bb.d, %bb.e, %bb.f
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.o, %.preheader
  call void @diff_q(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #8
  br label %bb.q

bb.p:                                             ; preds = %bb.c, %bb.b
  call void @diff_q(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #8
  br label %bb.q

bb.q:                                             ; preds = %.thread, %._crit_edge, %bb.p, %.lr.ph44
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !16 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next54, %i.bl
  br i1 %i.bm, label %.lr.ph44, label %._crit_edge45, !llvm.loop !45

._crit_edge45:                                    ; preds = %bb.q, %bb.a
  %i.bn = load ptr, ptr @diff_queued_diff, align 8, !tbaa !17
  call void @free(ptr noundef %i.bn) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @diff_queued_diff, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !37
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  ret void
}

declare i32 @repo_has_promisor_remote(ptr noundef) local_unnamed_addr #4

declare void @diff_queued_diff_prefetch(ptr noundef) #4

declare i32 @diff_populate_filespec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @diffcore_count_changes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #6

declare void @free_filespec(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"any p2 pointer", !12, i64 0}
!14 = !{!"p2 _ZTS13diff_filepair", !13, i64 0}
!15 = !{!"diff_queue_struct", !14, i64 0, !9, i64 8, !9, i64 12}
!16 = !{!15, !9, i64 12}
!17 = !{!15, !14, i64 0}
!18 = !{!"p1 _ZTS13diff_filepair", !12, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTS13diff_filespec", !12, i64 0}
!21 = !{!"p1 _ZTS9range_set", !12, i64 0}
!22 = !{!"short", !8, i64 0}
!23 = !{!"diff_filepair", !20, i64 0, !20, i64 8, !21, i64 16, !22, i64 24, !8, i64 26, !9, i64 27, !9, i64 27, !9, i64 27, !9, i64 27, !9, i64 27}
!24 = !{!23, !20, i64 0}
!25 = !{!"object_id", !8, i64 0, !9, i64 32}
!26 = !{!"p1 omnipotent char", !12, i64 0}
!27 = !{!"long", !8, i64 0}
!28 = !{!"p1 _ZTS15userdiff_driver", !12, i64 0}
!29 = !{!"diff_filespec", !25, i64 0, !26, i64 40, !12, i64 48, !12, i64 56, !27, i64 64, !9, i64 72, !9, i64 76, !22, i64 80, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !28, i64 88}
!30 = !{!29, !22, i64 80}
!31 = !{!23, !20, i64 8}
!32 = !{!29, !26, i64 40}
!33 = !{!23, !22, i64 24}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!14, !14, i64 0}
!36 = !{!9, !9, i64 0}
!37 = !{i64 0, i64 8, !35, i64 8, i64 4, !36, i64 12, i64 4, !36}
!38 = distinct !{!38, !34}
!39 = !{!"diff_populate_filespec_options", !9, i64 0, !9, i64 0, !12, i64 8, !12, i64 16}
!40 = !{!39, !12, i64 8}
!41 = !{!39, !12, i64 16}
!42 = !{!29, !27, i64 64}
!43 = !{!27, !27, i64 0}
!44 = distinct !{!44, !34}
!45 = distinct !{!45, !34}
!46 = !{!29, !9, i64 76}
end_hunk_0
